<?php

/** @var \Laravel\Lumen\Routing\Router $router */

use App\Http\Controllers\ProductController;

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix' => 'api'], function () use ($router) {
    $router->post('/login', 'AuthController@login');
    $router->post('/register', 'AuthController@register');
    $router->group(['middleware' => 'auth'], function () use ($router){
        $router->group(['prefix'=>'product'], function () use ($router){
            $router->get('/', 'ProductController@index');
            $router->post('/', 'ProductController@store');
            $router->put('/{id}', 'ProductController@update');
            $router->delete('/{id}', 'ProductController@destroy');
        });
        $router->group(['prefix'=>'user-detail'], function () use ($router){
            $router->get('/', 'UserDetailController@index');
            $router->post('/', 'UserDetailController@store');
            $router->put('/{id}', 'UserDetailController@update');
            $router->delete('/{id}', 'UserDetailController@destroy');
        });
        $router->group(['prefix'=>'bill'], function () use ($router){
            $router->get('/', 'BillController@index');
            $router->post('/', 'BillController@store');
            $router->put('/{id}', 'BillController@update');
            $router->delete('/{id}', 'BillController@destroy');
        });
        $router->group(['prefix'=>'bill-detail'], function () use ($router){
            $router->get('/', 'BillDetailController@index');
            $router->post('/', 'BillDetailController@store');
            $router->put('/{id}', 'BillDetailController@update');
            $router->delete('/{id}', 'BillDetailController@destroy');
        });
        $router->group(['prefix'=>'image'], function () use ($router){
            $router->get('/', 'ImageController@index');
            $router->post('/', 'ImageController@store');
            $router->put('/{id}', 'ImageController@update');
            $router->delete('/{id}', 'ImageController@destroy');
        });
        $router->group(['prefix'=>'list-address'], function () use ($router){
            $router->get('/', 'ListAddressController@index');
            $router->post('/', 'ListAddressController@store');
            $router->put('/{id}', 'ListAddressController@update');
            $router->delete('/{id}', 'ListAddressController@destroy');
        });
        $router->group(['prefix'=>'product-detail'], function () use ($router){
            $router->get('/', 'ProductDetailController@index');
            $router->post('/', 'ProductDetailController@store');
            $router->put('/{id}', 'ProductDetailController@update');
            $router->delete('/{id}', 'ProductDetailController@destroy');
        });
        $router->group(['prefix'=>'review'], function () use ($router){
            $router->get('/', 'ReviewController@index');
            $router->post('/', 'ReviewController@store');
            $router->put('/{id}', 'ReviewController@update');
            $router->delete('/{id}', 'ReviewController@destroy');
        });
    });
});
