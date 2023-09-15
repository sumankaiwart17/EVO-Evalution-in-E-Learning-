<?php

use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes(['verify' => true]);
// Auth::routes();

// Route::get('email/verify', 'App\Http\Controllers\Auth\VerificationController@show')->name('verification.notice');
// Route::get('email/verify/{id}', 'App\Http\Controllers\Auth\VerificationController@verify')->name('verification.verify');
// Route::get('email/resend', 'Auth\VerificationController@resend')->name('verification.resend');




Route::get('/',function(){

    return view("index");
});
Route::prefix('register/')->group(function(){

    Route::get('form','App\Http\Controllers\UserRegistrationController@index')->name('basic-registration');
    Route::get('form/detail','App\Http\Controllers\UserRegistrationController@detail')->name('detail-registration');

});
Route::prefix("/user")->group(function(){
    Route::get('/confrm', 'App\Http\Controllers\HomeController@confirm')->name("confirm-mail");
});

// for submit urls 
// Route::post('/register','App\Http\Controllers\UserRegistrationController@store');
Route::post('/register','App\Http\Controllers\UserRegistrationController@store')->name('submit-registration');
Route::post('/register/detail','App\Http\Controllers\UserRegistrationController@saveDetail');


 

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::prefix('billings')->middleware(['auth'])->group(function(){

      Route::get('/default-method','App\Http\Controllers\BillingsController@defaultPaymentMethod')->name('billing-default-method') ;
      Route::get('/status','App\Http\Controllers\BillingsController@index')->name('billing-status');
      Route::get('/history','App\Http\Controllers\BillingsController@history')->name('billing-history');
});

Route::middleware('auth')->post('/update-default-pay-method', 'App\Http\Controllers\BillingsController@updateDefaultPaymentMethod');
Route::get('/payment/test','App\Http\Controllers\BillingsController@index')->middleware('auth');
Route::get('/test/test','App\Http\Controllers\Auth\VerificationController@verify');
// Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Route::get('/subcription-check/{domain}',function($domain){
//     $sub_domain_name = explode('.',$domain)[0];
//     if($sub_domain_name=='mediaidbd' || $domain=='mediaidbd.com'){
//         return 1;
//     }else{
//        return 0; 
//     }
    
// });
Route::get('/subcription-check/{domain}/{ip}','App\Http\Controllers\SubscriptionController@check');
Route::get('/resolve-prefix/{domain}','App\Http\Controllers\SubscriptionController@resolveDomain');
Route::get('/error-page/{slug}',function($slug){
    return view("error-page",compact('slug'));
});
Route::get('/ip-block',function(){

    return view("ip-block");
});


Route::get('/subscription-end',function(){

    return view("subscription-end");
});
Route::get('/privacy-policy',function(){

    return view("privacy-policy");
});

Route::get('/register',function(){
    return redirect('/register/form');
});

Route::get('rtr/test',function(){
    $exitCode = Artisan::call('route:clear');
    $exitCode = Artisan::call('config:clear');
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('storage:link');
    return "all ok " ;
});
 
// Route::get('manage-domain',function(){
//     return view('domains');
// })->name('manage-domain');

Route::prefix('domain')->group(function(){
    Route::get('/','App\Http\Controllers\UserDomainController@index')->name('manage-domain');
    Route::post('/','App\Http\Controllers\UserDomainController@add');
    Route::delete('/{id}','App\Http\Controllers\UserDomainController@remove');
});


Route::get('/adminLogin','App\Http\Controllers\AdminController@index');
Route::post('adminLogin','App\Http\Controllers\AdminController@display');  

Route::get('lang/{lang}', ['as' => 'lang.switch', 'uses' => 'App\Http\Controllers\LanguageControllerNew@switchLang']);

Route::get('/subdomain','App\Http\Controllers\SubDomainController@index')->name('manage-subdomain');

Route::post('/subdomain','App\Http\Controllers\SubDomainController_old@store')->name('submit-subdomain');

Route::get('/subDomains','App\Http\Controllers\SubDomainController@Accept');

Route::get('/Activate/{id}','App\Http\Controllers\SubDomainController@Active');

Route::post('/Check_subdomain','App\Http\Controllers\SubDomainController@store');

Route::get('pricing',function(){
    return view('pricings');
});

Route::get('/subscription',function(){
    return view('subscription');
});

Route::get('/stripe', 'App\Http\Controllers\StripeController@index');

Route::post('/stripe', 'App\Http\Controllers\StripeController@stripePyament')->name("stripe.post");

Route::get('checkout','App\Http\Controllers\CheckoutController@checkout')->middleware(['auth']);
Route::post('checkout','App\Http\Controllers\CheckoutController@afterpayment')->name('checkout.credit-card');

Route::get('/lmscheck', 'App\Http\Controllers\demoController@test');

 
Route::get('/lms',function(){
   $data= session()->get('username');
 
    return Redirect::to('http://localhost/Academy-LMS/');
    // return redirect('Academy-LMS/Academy-LMS/application/view/frontend/index.php');
});