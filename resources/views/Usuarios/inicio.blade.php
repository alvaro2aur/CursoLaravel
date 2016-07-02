@extends('index')
@section('cuerpo')

<div class="row">
	<div class="col-md-4 well">
		@include('Usuarios.categorias')
		@include('Usuarios.marcas')
		@include('Usuarios.ubicacion')
	</div>

	<div class="col-md-8 well">
		@include('Productos.productos')				
	</div>
		
</div>









@endsection