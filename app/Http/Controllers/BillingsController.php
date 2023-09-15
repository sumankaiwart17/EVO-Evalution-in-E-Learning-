<?php

namespace App\Http\Controllers;

use App\Models\UserPayment;
use Illuminate\Http\Request;

class BillingsController extends Controller
{
    
    public function index(Request $request) {
        $user = auth()->user() ;
        return view("payment-method",compact('user')) ;
    
    }

    public function defaultPaymentMethod(Request $request) {

        $user = auth()->user() ;

        return view('default-payment-method' , [

            'intent' => $user->createSetupIntent() 

        ] ) ;
    }

    public function updateDefaultPaymentMethod(Request $request){
        

        $user = auth()->user() ;
        
        $user->updateDefaultPaymentMethod($request->identifier) ;

        // auth()->logout() ;
        
        // dispatch event to setup database 
        // things to consider , if user is changing the card then won`t need to setup db again 
        // event(new EventsNewCustomerRegisterEvent($user));

        return $user ;
    }

    public function history(Request $request) {
        $payments = auth()->user()->payments ;
        return view('billing-history',compact('payments'));
    }
}
