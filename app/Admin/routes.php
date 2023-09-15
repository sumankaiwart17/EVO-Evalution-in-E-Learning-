<?php

use Illuminate\Routing\Router;


Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('pricings', PricingController::class);
    $router->resource('users', UserController::class);
    $router->resource('blocked-ip', BlockIPController::class);
    $router->resource('billings', BillingController::class);
    $router->resource('history/call', CallHistoryController::class);
    $router->resource('history/sms', SmsHistoryController::class);
    $router->resource('subdomains', SubDomainController::class);
    $router->resource('subdoms', SubDomController::class);
    // $router->resource('history/sms', BillingController::class);
    // $router->get('/test','TestController@index')->name('test');
    $router->get('/test',function(){
        return "ok";
    });
    $router->get('auth/login','AuthController@handelGetLogin');
    $router->post('auth/login','AuthController@handelPostLogin');
   
    
});
