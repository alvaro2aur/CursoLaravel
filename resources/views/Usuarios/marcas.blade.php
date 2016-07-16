<div class="list-group">
	<a href="#" class="list-group-item active">
	Marcas
	</a>	
		@for($i=0;$i<7;$i++)
			<a href="#" class="list-group-item">{{$marcas[$i] -> nombre}}</a>
		@endfor
		<a href="#" class="list-group-item">Mas...</a>

<!--
		@foreach($marcas as $marca)
			<a href="#" class="list-group-item">{{$marca -> nombre}}</a>
		@endforeach
-->
		
</div>