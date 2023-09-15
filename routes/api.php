<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TestController ;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::get('/test',[TestController::class,'index']);
Route::get('/test2',[TestController::class,'index2']);

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
//  sms and call route 
// Route::post()


// Route::post('/demo','App\Http\Controllers\demoController@demo');
// Route::post('/register','App\Http\Controllers\UserRegistrationController@store');
// Route::post('/register/detail','App\Http\Controllers\UserRegistrationController@store');