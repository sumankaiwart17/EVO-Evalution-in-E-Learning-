<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User ;

 class demoController extends Controller
{
    //
    function demo(Request $request){
        // return $request ;
        $request->validate([
            'email' => 'required' ,
            'password' => 'required' ,
            'prefix' => 'required' ,
        ]);
        $user = new User;
        $user->name = $request->prefix ;
        $user->email = $request->email ;
        $user->password = bcrypt( $request->password) ;
        $user->save();
        return $user ;
    }

    function test(){
        return redirect('https://demo.creativeitem.com/academy/login');   
    }   

    function save(Request $request){
        return "save" ;    
    } 
}
