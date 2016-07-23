@extends('Admin.index')
@section('cuerpo')

@if(isset($edit))
{!!Form::model($edit,['route'=>['admin.estatus.update', $edit->id],'method'=>'patch'])!!}
@else
{!! Form::open(array('method' => 'post', 'route' => 'admin.estatus.store' )) !!}
@endif



<div class="content-box-large">
	<div class="panel-heading">
		<div class="panel-title">Nuevo estatus</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					{!!Form::label('nombre','Nombre',array('class'=>'col-sm-2 control-label'))!!}
					<div class="col-sm-10">
						{!!Form::text('nombre', null, array('class'=>'form-control','placeholder'=>'Nombre'))!!}
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						{!! Form::submit('Aceptar',['class' => 'btn btn-primary'])!!}
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
{!! Form::close() !!}



@endsection