<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\BlockedIP;
use Illuminate\Http\Request;
use App\Models\UserDomain ;
class SubscriptionController extends Controller
{
    
    // email varification failed 1
    // payment method not available 2 
    // admin block 3
    // payment not successfull 4 
    public function check($domain,$ip){
        // return "ok" ;
        // if domain is custom then

        $user = '' ;
       
        if( strpos($domain,config('helpers')['saas_domain']) === false){ // custom domain 
            $cus_domain      = UserDomain::where('domain',$domain)->first();
            $user            = $cus_domain ? $cus_domain->user : '' ;
        }else{ // default domain 
            $sub_domain_name = explode('.',$domain)[0];
            $user            = User::where('name',$sub_domain_name)->first();
        }
        
        


        $user2 = '' ;//User::where('domain',$domain)->first() ;
        $BlockedIP = BlockedIP::where('ip',$ip)->first();
        // return $user ;    
        $msg = ' all ok ' ;

        $error_code = 10 ;
        
        if($user || $user2){

            if($user->email_verified_at == null){
                
                $msg = 'email not varified' ;
                
                $error_code = 1 ;
                
            }else if(!$user->hasDefaultPaymentMethod()){

                $msg = 'payment method not found ' ;

                $error_code = 2 ;
                
            }else if( $user->is_disabled){

                $msg = 'Admin has blocked user ' ;

                $error_code = 3 ;
                
            }else if( $user->payment_block) {

                $msg = 'payment error  ' ;

                $error_code = 4 ;

            }else if( $BlockedIP && $BlockedIP->ip==$ip) {

                $msg = 'ip block ' ;

                $error_code = 5 ;

            }else{
                $msg = 'Every Thing ok ' ;

                $error_code = 0 ;
            }
            return response()->json(['code' => $error_code , 'database_name' =>'saaslms_'.$user->name,'password'=>'secret!@#$','username'=>'saaslms_msherif' ]) ;
        }else{
            return response()->json(['error_code' => $error_code , 'message' => $msg ]) ;
        }
        return $error_code ;
       
        

    }
    public function resolveDomain($domain){

        $user_prefix = '' ;

        $user_domain = UserDomain::where('domain',$domain)->first() ;
        
        if($user_domain) {
            $user_prefix = $user_domain->user->name ;
        }
        // return 'resolve-domain ' . $domain ;
        return $user_prefix ;
    }
}