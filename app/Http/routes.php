<?php

use App\Categorias;
use App\Marcas;
use App\Ubicacion;

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'UsuarioController@inicio');

Route::get('info', function () {
	return view('info');
});

Route::get('contacto', function () {
	return view('contacto');
});

Route::get('productos', function () {
	return view('productos');
});

