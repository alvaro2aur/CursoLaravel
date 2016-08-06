<?php

use App\Categorias;
use App\Marcas;
use App\Ubicacion;
use App\Estatus;



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

//Route::get('estatus', 'EstatusController@index');

Route::resource('admin/estatus', 'EstatusController');

Route::resource('admin/usuarios', 'UsuarioSController');

Route::resource('admin/tipousuarios', 'TipousuarioController');

Route::resource('admin/marcas', 'MarcasController');

Route::resource('admin/categorias', 'CategoriasController');

Route::resource('admin/productos', 'ProductosController');

Route::resource('admin/tipoproductos', 'TipoproductosController');

Route::resource('admin/ubicacion', 'UbicacionController');

Route::post('searchestatus', array('use'=>'EstatusController@buscar');


Route::get('info', function () {
	return view('info');
});

Route::get('contacto', function () {
	return view('contacto');
});

Route::get('productos', function () {
	return view('productos');
});

Route::get('prueba', function () {
	$productos = App\Productos::all();
	foreach ($productos as $producto) {
		//$estatus = Estatus::find($producto->idestatus);
		echo $producto->nombre . "el estatus es: " . $producto->estatus->nombre . "<br />";
	}
	
});

Route::group(['middleware' => 'auth', 'prefix' => 'admin'], function() {
	Route::get('/', function () {
		return view('Admin.principal');
	});
	Route::resource('estatus', 'EstatusController');
	Route::resource('usuarios', 'UsuarioSController');
	Route::resource('productos', 'ProductosController');
});

Route::auth();

Route::get('/home', 'HomeController@index');
