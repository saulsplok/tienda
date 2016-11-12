<?php
session_start();
	include "conexion.php";
	$msg=$_SESSION['Usuario'];
	if(isset($_SESSION['Usuario'])){

	}else{
		header("Location: ./index.php?Error=Acceso denegado");
	}

	?>
<!DOCTYPE html>
<html lang='es'>
<head>
	<meta charset='utf-8'/>
	<title>Usuarios</title>
	<link rel='stylesheet' type='text/css' href='./css/estilos.css'>
	<script type='text/javascript' src='http://code.jquery.com/jquery-1.10.2.min.js'></script>
	<script type='text/javascript'  href='./js/scripts.js'></script>
</head>
<body>
	<header>
		
		<a href='./carritodecompras.php' title='ver carrito de compras'>
			<img src='./imagenes/carrito.png'>
		</a>
	</header>
	<section>

	<nav class='menu2'>
	  <menu>
	    <li><a href='./'>Inicio</a></li>
	    <li><a href='#' class='selected'>

		<?php 
		include "conexion.php";
		$msg=$_SESSION['Usuario'];
		isset($_GET['id'])
			$nombre="";
			

			 $re=mysql_query("select Nombre from usuarios where id=".$msg[$i]['Id'])or die(mysql_error());
			 			while ($f=mysql_fetch_array($re)) {
							
			 				$x=$f['Nombre'];

		}
			 			$arreglo[]=array('Id'=>$_GET['id'],
							'Nombre'=>$nombre);
							
			echo $_SESSION['carrito']=$arreglo;
		
			//echo $msg[$i]['Id'];
		
		
		?>
	    </a></li>
	    <li><a href='./admin/agregarproducto.php' >Agregar</a></li>
	    <li><a href='./admin/modificar.php' >Modificar</a></li>
	    <li><a href='./login/cerrar.php'>Salir</a></li>
	  </menu>
	</nav>
	<center><h1>Últimas Compras</h1></center>
	

	
</body>
</html>