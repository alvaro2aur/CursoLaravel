
<hr>

<div class="row">
    <div class="col-lg-12">
        <h3>Mas vendidos</h3>
    </div>
</div>

<div class="row text-center">
	@include('Productos.masvendidos')
</div>
<div class="row">
    <div class="col-lg-12">
        {{ $productos->render() }}
    </div>
</div>