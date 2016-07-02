<div class="list-group">
	<a href="#" class="list-group-item active">
	Marcas
	</a>
		@foreach($marcas as $marca)
			<a href="#" class="list-group-item">{{$marca -> nombre}}</a>
		@endforeach

</div>