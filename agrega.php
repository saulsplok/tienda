<?php
    
require("conexion.php");
$nombre = $_POST['nombre'];
$app = $_POST['app'];

$user = $_POST['user'];
$contrasena = $_POST['pass'];


if ($nombre=="" || $app=="" || $user=="" ||$contrasena=="")
{
	echo '<script language="javascript">alert("Rellena Todos los Campos...!");
location.href = "registro.html";</script>';
}
else
{
$consulta="SELECT * FROM usuarios WHERE Nombre='$nombre'";
  $result=mysql_query($consulta, $con) or die (mysql_error());
         $num_rows = mysql_num_rows($result);
if($num_rows>0){
echo '<script language="javascript">alert("Este Usuario Ya fue Registrado");
location.href = "registro.html";</script>';

}else{

mysql_query("INSERT into usuarios(Nombre,Apellido,Usuario,Password) values ('$nombre','$app','$user','$contrasena')", $con)or die(mysql_error());

echo '<script language="javascript">alert("Operacion Exitosa...!");
location.href = "login.php";</script>';
}
}
?>
