@extends('Admin.index')
@section('cuerpo')

@if(isset($edit))
{!!Form::model($edit,['route'=>['admin.marcas.update', $edit->id],'method'=>'patch'])!!}
@else
{!! Form::open(array('method' => 'post', 'route' => 'admin.marcas.store' )) !!}
@endif



<div class="content-box-large">
	<div class="panel-heading">
		<div class="panel-title">Nueva marca</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					{!!Form::label('nombre','Nombre',array('class'=>'col-sm-2 control-label'))!!}
					<div class="col-sm-10">
						{!!Form::text('nombre', null, array('class'=>'form-control','placeholder'=>'Nombre'))!!}
					</div>
				</div>
				<div class="form-group">
					{!!Form::label('nombre','Estatus',array('class'=>'col-sm-2 control-label'))!!}
					<div class="col-md-10">
						<select class="form-control" id="select-1">
							@foreach($estatus as $estatu)
								<option>{{ $estatu -> nombre }}</option>
							@endforeach
						</select>
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