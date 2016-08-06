<!DOCTYPE html>
<html>
<head>

<!-- Latest compiled and minified CSS -->

<link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
<!--<link href="{{asset('css/heroic-features.css')}}" rel="stylesheet"> -->
<link href="{{asset('css/modern-business.css')}}" rel="stylesheet">

<!-- styles -->
<link href="{{asset('css/styles.css')}}" rel="stylesheet">
<link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">


	<title></title>
</head>


<body>
	<nav class="navbar navbar-inverse" role="navigation">
	  <div class="container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="{{asset('/')}}">Tienda</a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	    <!--
	      <form class="navbar-form navbar-right" role="search">
	        <div class="form-group">
	          <input type="text" class="form-control" placeholder="¿Que buscas?">
	        </div>
	        <button type="submit" class="btn btn-default">Esto!</button>
	      </form>
		-->
	      
	      <ul class="nav navbar-nav">
	      	<!--
	        <li><a href="{{asset('info')}}">Quienes somos</a></li>
	        <li><a href="{{asset('productos')}}">Productos</a></li>
	        <li><a href="{{asset('contacto')}}">Contacto</a></li>
	        -->
	        <!--
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="#">Action</a></li>
	            <li><a href="#">Another action</a></li>
	            <li><a href="#">Something else here</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="#">Separated link</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="#">One more separated link</a></li>
	          </ul>
	        </li>
	        -->
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <!--
	        <li><a href="#">Registrate</a></li>
	        -->
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Mi cuenta <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="#">Action</a></li>
	            <li><a href="#">Another action</a></li>
	            <li><a href="#">Something else here</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="#">Separated link</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
</nav>

<div class="page-content">
    	<div class="row">
		  <div class="col-md-3">
		  	@include('Admin.menu')
		  </div>
		  <div class="col-md-9">
		  	@yield('cuerpo')
		  </div>

	


<!-- jQuery -->

	
	<link href="{{asset('vendors/datatables/dataTables.bootstrap.css')}}" rel="stylesheet" media="screen">
    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('vendors/datatables/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('vendors/datatables/dataTables.bootstrap.js')}}"></script>
    <script src="{{asset('js/custom.js')}}"></script>
    <script src="{{asset('js/tables.js')}}"></script>
	<script src="{{asset('js/ajaxtienda.js')}}"></script>

    

    <!-- Bootstrap Core JavaScript -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->



    
    <!-- jQuery UI -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->


    <!-- Script to Activate the Carousel -->
    

</body>
</html>