@extends('Admin.index')
@section('cuerpo')
<div class="content-box-large">
	<div class="panel-heading">
	<div class="panel-title">Marcas</div>
	
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
          <th>Estatus</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
      	@foreach($marcas as $marca)
      		<tr>
	          <td>{{$marca->id}}</td>
	          <td>{{$marca->nombre}}</td>
	          <td>{{$marca->estatus->nombre}}</td>
	          <td>
	          	<a href="{{route('admin.marcas.edit', $marca->id)}}" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></a>
	          	{!!Form::open(['route'=>['admin.marcas.destroy',$marca->id],'method'=>'DELETE'])!!}
	          	<button type="submit" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove-circle"></button>{!!Form::close()!!}
	          </td>
	        </tr>
	    @endforeach
      </tbody>
    </table>
    <a href="{{asset('admin/marcas/create')}}" class="btn btn-success">Crear </a>
	</div>
</div>

@yield('form')

@endsection