<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCampoOnCategoriasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('categorias', function ($table) {
            $table->integer('idestatus')->unsigned();
            $table->foreign('idestatus')->references('id')->on('estatus');
        });
        Schema::table('marcas', function ($table) {
            $table->integer('idestatus')->unsigned();
            $table->foreign('idestatus')->references('id')->on('estatus');
        });
        Schema::table('tipoproducto', function ($table) {
            $table->integer('idestatus')->unsigned();
            $table->foreign('idestatus')->references('id')->on('estatus');
        });
        Schema::table('usuarios', function ($table) {
            $table->String('description');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('categorias', function ($table) {
            $table->dropForeign('categorias_idestatus_foreign');
            $table->dropcolumn('idestatus');
        });
        
        Schema::table('marcas', function ($table) {
            $table->dropForeign('marcas_idestatus_foreign');
            $table->dropcolumn('idestatus');
        });
        
        Schema::table('tipoproducto', function ($table) {
            $table->dropForeign('tipoproducto_idestatus_foreign');
            $table->dropcolumn('idestatus');
        });

        Schema::table('usuarios', function ($table) {
            $table->dropcolumn('description');
        });
    }
}
