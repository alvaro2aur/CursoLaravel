<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Estatus;
use App\Tipoproducto;



class TipoProductoTableSeeder extends Seeder
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
            Tipoproducto::create([
                'nombre'=>$faker->unique()->company,
                'idestatus'=> $faker->randomElement($estatus),
            ]); 
        }
    }
}
