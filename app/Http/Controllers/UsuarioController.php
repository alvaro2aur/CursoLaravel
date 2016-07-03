<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Categorias;
use App\Marcas;
use App\Ubicacion;
use App\Productos;

class UsuarioController extends Controller
{
    //
    public function inicio(){
    	$categorias = Categorias::all();
		$marcas = Marcas::all();
		$ubicaciones = Ubicacion::all();
		$productos = Productos::paginate(8);
		return view('Usuarios.inicio', compact('categorias','marcas','ubicaciones','productos'));
    }
}
