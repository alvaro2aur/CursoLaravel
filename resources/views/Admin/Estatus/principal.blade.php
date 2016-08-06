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
  <div id="buscar" class="input-group">
    <span class="input-group-addon" id="basic-addon1">@</span>
    <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
  </div>
  <div id="table">
		<table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Nombre</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
      	@foreach($estatus as $estatu)
      		<tr>
	          <td>{{$estatu->id}}</td>
	          <td>{{$estatu->nombre}}</td>
	          <td>
	          	<a id="{{$estatu->id}}" href="#" class="editar btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-pencil"></a>
              {!!Form::open(['route'=>['admin.estatus.destroy',$estatu->id],'method'=>'DELETE'])!!}
              <!--
              <a href="{{route('admin.estatus.edit', $estatu->id)}}" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></a>
	          	{!!Form::open(['route'=>['admin.estatus.destroy',$estatu->id],'method'=>'DELETE'])!!}
	          	-->
              <button type="submit" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove-circle"></button>{!!Form::close()!!}
	          	<a id="{{$estatu->id}}" href="#" class="ver btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open"></a>
	          </td>
	        </tr>
	    @endforeach
      </tbody>
    </table>
  </div>
    <a href="#" class="crear btn btn-success">Crear </a>
    <!--
    <a href="{{asset('admin/estatus/create')}}" class="btn btn-success">Crear </a>
    -->
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Estatus</h4>
      </div>
      <div id="estatusshow" class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<!--{{route('admin.estatus.show', $estatu->id)}}-->

@yield('form')

@endsection
