<div class="list-group">
	<a href="#" class="list-group-item active">
	Ubicación
	</a>
		@foreach($ubicaciones as $ubicacion)
			<a href="#" class="list-group-item">
			{{$ubicacion -> nombre}}
			</a>

		@endforeach

</div>