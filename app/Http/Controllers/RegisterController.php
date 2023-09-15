<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RegisterController extends Controller
{
    //

    public function index(Request $request){
        return view('register');
    }

    public function detail(Request $request){
        return "ok" ;
    }

    public function detail2(Request $request){
        return "ok" ;
    }
}
