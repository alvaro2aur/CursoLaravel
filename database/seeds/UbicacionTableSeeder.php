<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Ubicacion;
use App\Estatus;

class UbicacionTableSeeder extends Seeder
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
        for ($i=0; $i < 10 ; $i++) {
        	$ubicacion = Ubicacion::create([
        		'nombre'=> $faker->state,
        		'idestatus'=> $faker->randomElement($estatus),
        		]);
        }
    }
}
