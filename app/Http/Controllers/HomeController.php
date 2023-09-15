<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $username = Auth::user()->name;
        session()->put('username',$username);
        return view('home');
    }

    public function confirm() 
    {   
        $user = auth()->user();
        // auth()->logout();
        // $user = \App\Models\User::find(88) ;
        return  view("confirm",compact('user')) ;
    }
}
