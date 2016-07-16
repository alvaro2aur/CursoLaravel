@extends('Admin.index')
@section('cuerpo')
<div class="content-box-large">
	<div class="panel-heading">
	<div class="panel-title">Usuarios</div>
	
	<div class="panel-options">
		<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
		<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
	</div>
</div>
	<div class="panel-body">
		<table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Nombre</th>
          <th>Apellido</th>
          <th>Telefono</th>
          <th>Correo</th>
          <th>Password</th>
          <th>Descripción</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
      	@foreach($usuarios as $usuario)
      		<tr>
	          <td>{{$usuario->id}}</td>
	          <td>{{$usuario->nombre}}</td>
	          <td>{{$usuario->apellido}}</td>
	          <td>{{$usuario->telefono}}</td>
	          <td>{{$usuario->correo}}</td>
	          <td>{{$usuario->password}}</td>
	          <td>{{$usuario->descripcion}}</td>
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