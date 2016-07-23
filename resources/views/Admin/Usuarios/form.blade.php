@extends('Admin.index')
@section('cuerpo')

<!--
{!! Form::open(array('method' => 'post', 'route' => 'admin.usuarios.store' )) !!}

<div>
	{!!Form::label('nombre','Nombre')!!}
	{!!Form::text('nombre', null, array('class'=>'form-control','placeholder'=>'Nombre'))!!}
</div>
	

<div>
	{!!Form::label('apellido','Apellido')!!}
	{!!Form::text('apellido', null, array('class'=>'form-control','placeholder'=>'Apellido'))!!}
</div>

<div>
	{!!Form::label('telefono','Telefono')!!}
	{!!Form::text('telefono', null, array('class'=>'form-control','placeholder'=>'Telefono'))!!}
</div>

<div>
	{!!Form::label('correo','Correo')!!}
	{!!Form::text('correo', null, array('class'=>'form-control','placeholder'=>'Correo'))!!}
</div>

<div>
	{!!Form::label('password','Password')!!}
	{!!Form::text('password', null, array('class'=>'form-control','placeholder'=>'Password'))!!}
</div>

<div>
	{!!Form::label('descripcion','Descripcion')!!}
	{!!Form::text('descripcion', null, array('class'=>'form-control','placeholder'=>'Descripcion'))!!}
</div>
	{!! Form::submit('Aceptar',['class' => 'btn btn-primary'])!!}

{!! Form::close() !!}
-->

{!! Form::open(array('method' => 'post', 'route' => 'admin.usuarios.store' )) !!}

<div class="content-box-large">
	<div class="panel-heading">
		<div class="panel-title">Nuevo usuario</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					{!!Form::label('nombre','Nombre',array('class'=>'col-sm-2 control-label'))!!}
					<div class="col-sm-10">
						{!!Form::text('nombre', null, array('class'=>'form-control','placeholder'=>'Nombre'))!!}
					</div>
				</div>
				<div class="form-group">
					{!!Form::label('apellido','Apellido',array('class'=>'col-sm-2 control-label'))!!}
					<div class="col-sm-10">
						{!!Form::text('apellido', null, array('class'=>'form-control','placeholder'=>'Apellido'))!!}
					</div>
				</div>
				<div class="form-group">
					{!!Form::label('telefono','Telefono',array('class'=>'col-sm-2 control-label'))!!}
					<div class="col-sm-10">
						{!!Form::text('telefono', null, array('class'=>'form-control','placeholder'=>'Telefono'))!!}
					</div>
				</div>
				<div class="form-group">
					{!!Form::label('correo','Correo',array('class'=>'col-sm-2 control-label'))!!}
					<div class="col-sm-10">
						{!!Form::text('correo', null, array('class'=>'form-control','placeholder'=>'Correo'))!!}
					</div>
				</div>
				<div class="form-group">
					{!!Form::label('password','Password',array('class'=>'col-sm-2 control-label'))!!}
					<div class="col-sm-10">
						{!!Form::text('password', null, array('class'=>'form-control','placeholder'=>'Password'))!!}
					</div>
				</div>
				<div class="form-group">
					{!!Form::label('descripcion','Descripcion',array('class'=>'col-sm-2 control-label'))!!}
					<div class="col-sm-10">
						{!!Form::text('descripcion', null, array('class'=>'form-control','placeholder'=>'Descripcion'))!!}
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