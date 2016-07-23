@extends('Admin.index')
@section('cuerpo')



<div class="content-box-large">
	<div class="panel-heading">
	<div class="panel-title">Productos</div>
	
	<div class="panel-options">
		<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
		<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
	</div>
</div>
	<div class="panel-body">
		<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
      <thead>
        <tr>
          <th>#</th>
          <th>Nombre</th>
          <th>Cantidad</th>
          <th>Precio</th>
          <th>Descripcion</th>
          <th>Estatus</th>
          <th>Usuario</th>
          <th>Categoria</th>
          <th>Marca</th>
          <th>Tipo</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
      	@foreach($productos as $producto)
      		<tr>
	          <td>{{$producto->id}}</td>
	          <td>{{$producto->nombre}}</td>
	          <td>{{$producto->cantidad}}</td>
	          <td>${{$producto->precio}}</td>
	          <td>{{ str_limit($producto->descripcion, 10) }}</td>
	          <td>{{$producto->idestatus}}</td>
	          <td>{{$producto->idusuario}}</td>
	          <td>{{$producto->idcategorias}}</td>
	          <td>{{$producto->idmarcas}}</td>
	          <td>{{$producto->idtiposproductos}}</td>
	          <td>
	          	<button type="button" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></button> 
	          	<button type="button" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove-circle"></button></td>
	          </td>
	        </tr>
	    @endforeach
      </tbody>
    </table>
    <a href="{{asset('admin/usuarios/create')}}" class="btn btn-success">Crear </a>
	</div>
</div>

@endsection