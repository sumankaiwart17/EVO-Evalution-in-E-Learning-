<?php 
namespace App\Helpers ;
use DB ;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Artisan;
use App\Models\User ;
use App\Models\UserPayment ;
use Exception;
use Illuminate\Support\Carbon ;
use App\Models\Pricing ;

class UserPaymentHelper {
    // calculate bill and store in user_payments table 
    // if stripe successed then update table and store user_payments and status to 1  
    public static function pay(User $user) {
        $bill = 0 ;

        // check if has already paid
        $date  = Carbon::now()->subMonth() ;
        $count = UserPayment::where('user_id',$user->id)
                              ->where('status',1)
                              ->whereMonth('payment_of',$date->month)   
                              ->whereYear('payment_of',$date->year)->count()  ; 
        if($count) return  ;   
        // connect to customer db 
        $db_name = "masudpag_".$user->name ;     

        $main_db = Config::get("database.connections.mysql.database") ; //,"saas_1"

        Config::set("database.connections.mysql.database",$db_name) ; //, set new db dynamically 

        DB::connection("mysql")->reconnect() ;
        // my quesry starts hear
        // count user every day of month 
            // get all the days of a month 
        $month = Carbon::now()->subMonth(); // last monthe
        $start = Carbon::parse($month)->startOfMonth();
        $end = Carbon::parse($month)->endOfMonth();

        $dates = [];
        $counts = [] ;
        while ($start->lte($end)) {
            $dates[] = $start->copy();
            $start->addDay();
            $counts[] = User::whereDate('email_verified_at',$start)->count() ;
        }
        // bill every day with count * plan_billing then add all up == final bill  
        // count user for all the dates 
        // SINGLE_COUNT -> FUNCTION -> BILL 
        // query end     
        Config::set("database.connections.mysql.database",$main_db) ; //,"saas_1"
        DB::connection("mysql")->reconnect() ;

        // calculate $bill 
        $bill = 0 ;
        foreach($counts as $count){
            $package_cost = Pricing::where('user_limit','>=',$count)->first()->daily_cost;
            $bill = $bill + $package_cost * $count * 100 ; // doller -> cent 
        }
        // return $bill ;//= 200 ;

        $payment = UserPayment::where('user_id',$user->id)
        ->where('status',0)
        ->whereMonth('payment_of',$date->month)   
        ->whereYear('payment_of',$date->year)  ;

        if($payment->count() == 0){

            $user_payment = UserPayment::create( [
                'user_id' => $user->id ,
                // 'stripe_payment_id' => $payment_id ,
                'amount' => $bill ,
                'payment_of' => Carbon::now()->subMonth()->format('y-m-d') , 
            ] );

        }else {

            $user_payment = $payment->first() ; 
        }

        // check if user has a default payment method 
        if(!$user->hasDefaultPaymentMethod()) 
          throw new Exception('no default payment method found') ;
        // defuct $bill from user account in stripe (one time payment )
       
        $payment_method_id = $user->defaultPaymentMethod()->id ;
        $payment_id = $user->charge($bill,$payment_method_id)->id ;
        $user_payment->update([
            'stripe_payment_id' => $payment_id ,
            'status' => 1 ,
        ]) ;

        return $user_payment ;
    }


    // will charge active users 
    // if payment fails for a user account will be disabled 

    public static function chargeUsers() {
     
        $users = User::where('is_disabled',0)->get() ; // has to be active users 
        
        // bulk 
        foreach($users as $user) {

            try{
    
                UserPaymentHelper::pay($user) ;

            }catch(\Exception $e) {
                echo $e->getMessage() .'\n';
                // if fails disable user account and mark due 
                $user->update(['payment_block' => 1]);
            }
        }
    } 
    
    // reasons for account being diabled 
    // 1.email not varified 
    // 2.credit card confirmed 
    // 3.bill not paid 
    // 4.super admin disabled the use account  
    // 5.ip is banned 

    public static function test() {

        $month = Carbon::now();//->subMonth();
        $start = Carbon::parse($month)->startOfMonth();
        $end = Carbon::parse($month)->endOfMonth();

        $dates = [];
        $counts = [] ;
        while ($start->lte($end)) {
            $dates[] = $start->copy();
            $start->addDay();
            // echo print_r($start) ;
            $counts[] = User::whereDate('email_verified_at',$start)->count() ;
        }

        // echo "<pre>", print_r($dates), "</pre>";
        echo "<pre>", print_r($counts), "</pre>";
    }



}