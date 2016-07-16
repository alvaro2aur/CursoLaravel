@extends('Admin.index')
@section('cuerpo')

{!! Form::open(array('method' => 'post', 'route' => 'admin.usuarios.store' )) !!}

<div>
	{!!Form::label('nombre','Nombre')!!}
	{!!Form::text('nombre', null, array('class'=>'form-control','placeholder'=>'Nombre'))!!}
</div>
	{!! Form::submit('Aceptar',['class' => 'btn btn-primary'])!!}

<div>
	{!!Form::label('apellido','Apellido')!!}
	{!!Form::text('apellido', null, array('class'=>'form-control','placeholder'=>'Apellido'))!!}
</div>
	{!! Form::submit('Aceptar',['class' => 'btn btn-primary'])!!}

<div>
	{!!Form::label('telefono','Telefono')!!}
	{!!Form::text('telefono', null, array('class'=>'form-control','placeholder'=>'Telefono'))!!}
</div>
	{!! Form::submit('Aceptar',['class' => 'btn btn-primary'])!!}

<div>
	{!!Form::label('correo','Correo')!!}
	{!!Form::text('correo', null, array('class'=>'form-control','placeholder'=>'Correo'))!!}
</div>
	{!! Form::submit('Aceptar',['class' => 'btn btn-primary'])!!}

<div>
	{!!Form::label('password','Password')!!}
	{!!Form::text('password', null, array('class'=>'form-control','placeholder'=>'Password'))!!}
</div>
	{!! Form::submit('Aceptar',['class' => 'btn btn-primary'])!!}

<div>
	{!!Form::label('descripcion','Descripcion')!!}
	{!!Form::text('descripcion', null, array('class'=>'form-control','placeholder'=>'Descripcion'))!!}
</div>
	{!! Form::submit('Aceptar',['class' => 'btn btn-primary'])!!}

{!! Form::close() !!}



@endsection