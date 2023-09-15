<?php

namespace App\Http\Controllers;

use App\Events\NewCustomerRegisterEvent as EventsNewCustomerRegisterEvent;
use App\Models\User ;
use App\Models\Pricing ;
use App\Providers\NewCustomerRegisterEvent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use stdClass;

class UserRegistrationController extends Controller
{
    //
    public function index(Request $request){
        $plans = \App\Models\Pricing::all() ;
        
        $data = [] ;
        
        foreach($plans as $plan){
            
            $data[$plan->id] = $plan->name ; 
        }
        $default_plan = $plans->first()->id ;
        //  dd($plans) ;
        //  dd($data) ;
        return view('register',compact(["data","default_plan"]));
  
    }

     function store(Request $request) {

         $request->validate([
            'email' => 'required|unique:users|email' ,
            'password' => 'required|min:6' ,
            'prefix' => 'required|regex:/^[a-zA-Z0-9]+$/u|unique:users,name' ,
            
         ]);
         
        // $user = new User;
        // $user->name = $request->prefix ;
        // $user->email = $request->email ;
        // $user->password = bcrypt( $request->password) ;
        $user = \App\Models\User::create([
            'name'  => $request->prefix ,
            'email' => $request->email ,
            'password' => bcrypt( $request->password) ,
            'password_2' => sha1( $request->password) ,
        ]);    

        $user->save();
         $user_id = $user->id ;
         return  view("register-detail", compact("user_id"));

        
        // $user->sendEmailVerificationNotification();
        // Log::debug("email sent");    

        if($user){
            // trigger event for db and doamin create 
            event(new EventsNewCustomerRegisterEvent($user));
            $user_id = $user->id ;
            return  view("register-detail", compact("user_id"));
        }else {
            return "something went wrong" ;
        }
    }


    function detail(Request $request){
         return  view("register-detail");  
    }


    function saveDetail(Request $request){

        // $request->validate([
        //     'first_name' => 'required|unique:users' ,
        //     'last_name' => 'required' ,
        //     'address' => 'required' ,
        //     'house' => 'required' ,
        //     'city' =>'required' ,
        //     'region' => 'required',
        //     'postal_code' => 'required',
        //     'phone' =>'required' ,
        //     'website_link' =>'required' ,
            
            
        //  ]);
         
         $detail = \App\Models\UserDetail::create($request->all());
         return view('registration-complete');
    }
}
