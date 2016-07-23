@extends('Admin.index')
@section('cuerpo')
<div class="content-box-large">
	<div class="panel-heading">
	<div class="panel-title">Estatus</div>
	
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
          <th></th>
        </tr>
      </thead>
      <tbody>
      	@foreach($categorias as $categoria)
      		<tr>
	          <td>{{$categoria->id}}</td>
	          <td>{{$categoria->nombre}}</td>
	          <td>
	          	<a href="{{route('admin.categorias.edit', $categoria->id)}}" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></a>
	          	{!!Form::open(['route'=>['admin.categorias.destroy',$categoria->id],'method'=>'DELETE'])!!}
	          	<button type="submit" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove-circle"></button>{!!Form::close()!!}
	          </td>
	        </tr>
	    @endforeach
      </tbody>
    </table>
    <a href="{{asset('admin/estatus/create')}}" class="btn btn-success">Crear </a>
	</div>
</div>

@yield('form')

@endsection