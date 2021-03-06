<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Marcas extends Model
{
    protected $table = 'marcas';
    protected $fillable = ['nombre'];

    public function estatus(){
    	return $this->belongsTo('App\Estatus', 'idestatus');
    }
}
