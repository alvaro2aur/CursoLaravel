
@foreach($productos as $producto)
<div class="col-sm-4 col-lg-4 col-md-4">
    <div class="thumbnail">
        <img src="http://placehold.it/800x500" alt="">
        <div class="caption">
            <h6 class="pull-right">${{ $producto->precio }}</h6>
            <h4><a href="#">{{ $producto->nombre }}</a></h4>
            <p>{{ str_limit($producto->descripcion, 10) }}</p>
        </div>
    </div>
    
    
</div>
<!--
<div class="col-sm-4 col-lg-4 col-md-4">
    <div class="thumbnail">
        <img src="http://placehold.it/800x500" alt="">
        <div class="caption">
            <h4 class="pull-right">$24.99</h4>
            <h3>{{$producto->nombre}}</h3>
            <p>{{$producto->descripcion}}</p>
            <p>
                <a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-default">More Info</a>
            </p>
        </div>
    </div>
</div>
-->
@endforeach


