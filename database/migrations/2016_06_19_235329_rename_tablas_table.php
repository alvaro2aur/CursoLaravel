<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RenameTablasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::rename('users', 'usuarios');
        Schema::rename('tipoususario', 'tipousuario');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::rename('usuarios', 'users');
        Schema::rename('tipousuario','tipoususario');
    }
}
