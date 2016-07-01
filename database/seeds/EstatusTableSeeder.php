<?php

use Illuminate\Database\Seeder;
use App\Estatus;

class EstatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Estatus::create([
            'nombre'=>'Activo',
            ]);
        Estatus::create([
            'nombre'=>'Inactivo',
            ]);
     }
}
