<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RenameCamposTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
        Schema::table('usuarios', function ($table) {
            $table->renameColumn('name', 'nombres');
            $table->renameColumn('email', 'email');
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('usuarios', function ($table) {
            $table->renameColumn('email','email');
            $table->renameColumn('nombres','name');
        });
    }
}
