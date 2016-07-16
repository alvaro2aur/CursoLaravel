@extends('index')
@section('cuerpo')

@include('Usuarios.slide2')

<div class="container">
<div class="row">
	<div class="col-lg-12">
	    <h1 class="page-header">
	        ¡Encuentra lo que buscas!
	    </h1>
	</div>
	<div class="col-md-4">
		@include('Usuarios.categorias')
	</div>
	<div class="col-md-4">
		@include('Usuarios.marcas')
	</div>
	<div class="col-md-4">
		@include('Usuarios.ubicacion')
	</div>
<div class="row">
	@include('Productos.productos')				
</div>
	

</div>
</div>





@endsection