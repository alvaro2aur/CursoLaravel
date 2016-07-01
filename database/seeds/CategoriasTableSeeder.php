<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Categorias;
use App\Estatus;

class CategoriasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categorias=array(
            'Accesorios para vehiculos',
        	'Computación',
        	'Videojuegos',
        	'Camaras y accesorios',
        	'Celulares y accesorios',
        	'Eletrodomestiscos',
        	'Ropa',
        	'Joyeria'
        );

        $faker = Faker::create();
        $estatus = Estatus::lists('id')->all();
        for ($i=0; $i < count($categorias) ; $i++) {
            Categorias::create([
                'nombre'=> $categorias[$i],
                'idestatus'=> $faker->randomElement($estatus),
                ]);
        }
    }
}
