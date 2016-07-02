<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Productos;

class Categorias extends Model
{
    protected $table = 'categorias';
    protected $fillable = ['nombre'];

    public function productos(){
    	return $this->hasMany(Productos::class, 'idcategorias','id');
    }
}
