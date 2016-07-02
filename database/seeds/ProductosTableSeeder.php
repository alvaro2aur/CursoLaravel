<?php

use Illuminate\Database\Seeder;

class ProductosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $estatus = Estatus::lists('id')->all();
        $tipousuario = TipoUsuario::lists('id')->all();
        $ubicacion = Ubicacion::lists('id')->all();

        for ($i=0; $i < 30 ; $i++) { 
        	Usuarios::create([
        		'nombre' => $faker->firstname,
        		'correo' => $faker->unique()->email,
        		'password' => $faker->unique()->password,
        		'apellido' => $faker->lastname,
        		'telefono' => $faker->unique()->phoneNumber,
        		'idestatus' => $faker->randomElement($estatus),
        		'idtipousuario' => $faker->randomElement($tipousuario),
        		'idubicacion' => $faker->randomElement($ubicacion),
        		'descripcion' => $faker->text($maxNbChars = 200),
                ]);
        }
    }
}
