<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Estatus;
use App\Marcas;

class MarcasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
    	$faker=Faker::create();
        $estatus=Estatus::lists('id')->all();
        for($i=0; $i<30;$i++){
	        Marcas::create([
	        	'nombre'=>$faker->unique()->company,
                'idestatus'=> $faker->randomElement($estatus),
	        ]);	
    	}
        
    }
}
