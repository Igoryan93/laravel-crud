<?php

use Illuminate\Http\Request;

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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::resource('users', 'Api\UsersController');

Route::resource('orders', 'Api\OrdersController')->except([
    'create', 'edit', 'show', 'store', 'update', 'destroy'
]);
Route::resource('orders_total', 'Api\OrdersTotalController')->except([
    'create', 'edit', 'show', 'store', 'update', 'destroy'
]);

