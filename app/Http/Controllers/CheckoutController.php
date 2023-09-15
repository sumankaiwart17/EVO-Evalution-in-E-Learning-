<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CheckoutController extends Controller
{
    public function checkout() 
    {   
        // Enter Your Stripe Secret
        \Stripe\Stripe::setApiKey('sk_test_51LQFgvGFEiacH5eYtjyoAcpA5WIDZtaJTJr5hfmL54h8y6tiq0I2nNIkCgYNPloPKAOw5vQvrdiWARZfr3h8hm1Y00sRzxLee5');

        		
		$amount = 100;
		$amount *= 100;
        $amount = (int) $amount;
        
        $payment_intent = \Stripe\PaymentIntent::create([
			'description' => 'Stripe Test Payment',
			'amount' => $amount,
			'currency' => 'AED',
			'description' => 'Payment From All About Laravel',
			'payment_method_types' => ['card'],
		]);
		$intent = $payment_intent->client_secret;

		return view('checkout.credit-card',compact('intent'));

    }

    public function afterPayment()
    {
        // $display = 'Payment Received, Thanks you for using our services.';
        return view('billing-history');//,compact('display'));
        // echo 'Payment Received, Thanks you for using our services.';
    }
}
