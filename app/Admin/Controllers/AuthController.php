<?php

namespace App\Admin\Controllers;

use Encore\Admin\Controllers\AuthController as BaseAuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;
use Hash ;
use Illuminate\Support\Facades\Auth ;

class AuthController extends BaseAuthController
{

    public function handelGetLogin(Request $request) {
        // return " i am the boss now" ;
        return parent::getLogin($request);
    }

    public function handelPostLogin(Request $request) {
        // return " i am the boss now" ;


        $res = parent::postLogin($request);
        
        // login successfull 
        if( strpos($res->getTargetUrl(),"/admin/auth/login") === false ){
            
            return $res ;

        } else{

            $user = \App\Models\User::where('email','=',$request->username )->first();
            
            if($user && Hash::check($request->password , $user->password))
            {
                // $redirect_url = "https://$user->name.custom-development.xyz" ;
                Auth::login($user) ;
                $redirect_url = "/home" ;

                return Redirect::to($redirect_url) ;
            }
        }

        return $res ;

    }

    
}
