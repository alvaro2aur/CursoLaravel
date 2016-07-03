<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

use App\Estatus;
use App\Usuarios;
use App\Categorias;
use App\Marcas;
use App\Tipoproducto;
use App\Productos;

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
        $usuarios = Usuarios::lists('id')->all();
        $categorias = Categorias::lists('id')->all();
        $marcas = Marcas::lists('id')->all();
        $tiposproductos = Tipoproducto::lists('id')->all();
        
        for ($i=0; $i < 25 ; $i++) { 
        	Productos::create([
        		'idestatus' => $faker->randomElement($estatus),
                'idusuario' => $faker->randomElement($usuarios),
                'idcategorias' => $faker->randomElement($categorias),
                'idmarcas' => $faker->randomElement($marcas),
                'idtiposproductos' => $faker->randomElement($tiposproductos),
                'nombre' => $faker->word,
                'cantidad' => $faker->randomNumber(2),
                'precio' => $faker->randomFloat($nbMaxDecimals = 2, $min = 0, $max = NULL),
        		'descripcion' => $faker->text($maxNbChars = 50),
                ]);
        }
    }
}
