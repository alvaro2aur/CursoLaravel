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
        $faker = Faker::create();
        $estatus = Estatus::lists('id')->all();
        Tipoproducto::create([
            'nombre'=>'Usado',
            'idestatus' => $faker->randomElement($estatus),
            ]);
        Tipoproducto::create([
            'nombre'=>'Nuevo',
            'idestatus' => $faker->randomElement($estatus),
            ]);
    }
}
