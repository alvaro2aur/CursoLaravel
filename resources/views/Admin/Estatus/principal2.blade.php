<table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Nombre</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
      	@foreach($estatus as $estatu)
      		<tr>
	          <td>{{$estatu->id}}</td>
	          <td>{{$estatu->nombre}}</td>
	          <td>
	          	<a id="{{$estatu->id}}" href="#" class="editar btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-pencil"></a>
              {!!Form::open(['route'=>['admin.estatus.destroy',$estatu->id],'method'=>'DELETE'])!!}
              <!--
              <a href="{{route('admin.estatus.edit', $estatu->id)}}" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></a>
	          	{!!Form::open(['route'=>['admin.estatus.destroy',$estatu->id],'method'=>'DELETE'])!!}
	          	-->
              <button type="submit" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove-circle"></button>{!!Form::close()!!}
	          	<a id="{{$estatu->id}}" href="#" class="ver btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open"></a>
	          </td>
	        </tr>
	    @endforeach
      </tbody>
    </table>