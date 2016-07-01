<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
        Schema::create('productos', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idestatus')->unsigned();
            $table->foreign('idestatus')->references('id')->on('estatus');
            $table->integer('idusuario')->unsigned();
            $table->foreign('idusuario')->references('id')->on('usuarios');
            $table->integer('idcategorias')->unsigned();
            $table->foreign('idcategorias')->references('id')->on('categorias');
            $table->integer('idmarcas')->unsigned();
            $table->foreign('idmarcas')->references('id')->on('marcas');
            $table->integer('idtiposproductos')->unsigned();
            $table->foreign('idtiposproductos')->references('id')->on('tiposproductos');
            $table->string('nombre');
            $table->integer('cantidad');
            $table->double('precio');
            $table->string('descripcion');
            $table->timestamps();
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('productos');
    }
}
