<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Estatus;
use App\TipoUsuario;
use App\Ubicacion;
use App\Usuarios;

class UsuariosTableSeeder extends Seeder
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
        		'email' => $faker->unique()->email,
        		'password' => bcrypt($faker->unique()->password),
        		'apellido' => $faker->lastname,
        		'telefono' => $faker->unique()->phoneNumber,
        		'idestatus' => $faker->randomElement($estatus),
        		'idtipousuario' => $faker->randomElement($tipousuario),
        		'idubicacion' => $faker->randomElement($ubicacion),
        		'descripcion' => $faker->text($maxNbChars = 200),
                ]);
        }

        Usuarios::create([
                'nombre' => $faker->firstname,
                'email' => "zxc@zxc.com",
                'password' => bcrypt('123123'),
                'apellido' => $faker->lastname,
                'telefono' => $faker->unique()->phoneNumber,
                'idestatus' => $faker->randomElement($estatus),
                'idtipousuario' => $faker->randomElement($tipousuario),
                'idubicacion' => $faker->randomElement($ubicacion),
                'descripcion' => $faker->text($maxNbChars = 200),
                ]);

    }
}
