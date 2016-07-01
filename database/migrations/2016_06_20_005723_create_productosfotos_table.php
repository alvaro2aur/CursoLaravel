<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductosfotosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
        Schema::create('productosfotos', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idproductos')->unsigned();
            $table->foreign('idproductos')->references('id')->on('productos');
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
        Schema::drop('productosfotos');
    }
}
