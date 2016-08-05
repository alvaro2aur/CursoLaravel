<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Productos extends Model
{
    protected $table = 'productos';

    public function estatus(){
    	return $this->belongsTo('App\Estatus', 'idestatus');
    }

    public function usuario(){
    	return $this->belongsTo('App\Usuarios', 'idusuario');
    }

    public function marca(){
    	return $this->belongsTo('App\Marcas', 'idmarcas');
    }

    public function categoria(){
    	return $this->belongsTo('App\Categorias', 'idcategorias');
    }

    public function tipoproducto(){
    	return $this->belongsTo('App\Tipoproducto', 'idtiposproductos');
    }
}
