<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(TruncateTableSeeder::class);
        $this->call(EstatusTableSeeder::class);
        $this->call(TipoUsuarioTableSeeder::class);
        $this->call(MarcasTableSeeder::class);
        $this->call(CategoriasTableSeeder::class);
        $this->call(UbicacionTableSeeder::class);
        $this->call(UsuariosTableSeeder::class);
        $this->call(TipoProductoTableSeeder::class);

    }
}
