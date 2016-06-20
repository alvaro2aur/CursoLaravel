<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCamposToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
        Schema::table('users', function ($table) {
            $table->integer('idestatus')->unsigned();
            $table->foreign('idestatus')->references('id')->on('estatus');
            $table->integer('idtipoususario')->unsigned();
            $table->foreign('idtipoususario')->references('id')->on('tipoususario');
            $table->integer('idubicacion')->unsigned();
            $table->foreign('idubicacion')->references('id')->on('ubicacion');
            $table->string('apellido');
            $table->string('telefono');
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        
        Schema::table('users', function ($table) {
            $table->dropForeign('users_idestatus_foreign');
            $table->dropcolumn('idestatus');
            $table->dropForeign('users_idtipoususario_foreign');
            $table->dropcolumn('idtipoususario');
            $table->dropForeign('users_idubicacion_foreign');
            $table->dropcolumn('idubicacion');
            $table->dropcolumn('apellido');
            $table->dropcolumn('telefono');
        });
        
    }
}
