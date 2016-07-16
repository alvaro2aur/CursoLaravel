@extends('Admin.index')
@section('cuerpo')

@if(isset($edit))
{!!Form::model($edit,['route'=>['admin.estatus.update', $edit->id],'method'=>'patch'])!!}
@else
{!! Form::open(array('method' => 'post', 'route' => 'admin.estatus.store' )) !!}
@endif

<div>
	{!!Form::label('nombre','Nombre')!!}
	{!!Form::text('nombre', null, array('class'=>'form-control','placeholder'=>'Nombre'))!!}
</div>
	{!! Form::submit('Aceptar',['class' => 'btn btn-primary'])!!}

{!! Form::close() !!}



@endsection