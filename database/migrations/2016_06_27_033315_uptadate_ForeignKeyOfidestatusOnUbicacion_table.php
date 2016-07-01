<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UptadateForeignKeyOfidestatusOnUbicacionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ubicacion', function ($table) {
            $table->dropForeign('ubicacion_idestatus_foreign');
            $table->foreign('idestatus')->references('id')->on('estatus');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('ubicacion', function ($table) {
            $table->dropForeign('ubicacion_idestatus_foreign');
            $table->foreign('idestatus')->references('id')->on('usuarios');
        });
    }
}
