<?php

use Illuminate\Database\Seeder;

class TipoUsuarioTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        DB::table('tipousuario')->insert([
        	[
        	'nombre' => 'Administrador'
        	],
        	[
        	'nombre' => 'Usuario'
        	]
        ]);

        /*
        DB::table('tipousuario')->insert([
            'nombre' => 'Usuario',
        ]);
        */
    }
}
