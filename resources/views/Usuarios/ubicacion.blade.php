<div class="list-group">
	<a href="#" class="list-group-item active">
	Ubicación
	</a>
		@for($i=0;$i<7;$i++)
			<a href="#" class="list-group-item">{{$ubicaciones[$i] -> nombre}}</a>
		@endfor
		<a href="#" class="list-group-item">Mas...</a>
	<!--
		@foreach($ubicaciones as $ubicacion)
			<a href="#" class="list-group-item">
			{{$ubicacion -> nombre}}
			</a>

		@endforeach
	-->

</div>