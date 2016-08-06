$('.ver').click(
	function(){
		$id=this.id;
		$ruta="http://localhost:8000/admin/estatus/"+$id;
		$.get($ruta, function(markup){
			$('#estatusshow').html(markup);
		});
	})

$('.editar').click(
	function(){
		$id=this.id;
		$ruta="http://localhost:8000/admin/estatus/" + $id + "/edit"; 
		$.get($ruta, function(markup){
			$('#estatusshow').html(markup);
		});
	})

$('.crear').click(
	function(){
		$id=this.id;
		$ruta="http://localhost:8000/admin/create"; 
		$.get($ruta, function(markup){
			$('#estatusshow').html(markup);
		});
	})

$('#buscar').keydowns(
	function(){
		var keydowns=$('#buscar').val();
		if(keydowns.lenght>0){
			$ruta="http://localhost:8000/searchestatus";
			$post($ruta,{keywords:keywords},function(markup){
				$('#tabla').html(markup);
			});

		}
		}
);
	