<?php 

$contrasena = "Santiago2004";
$usuario    = "u985211323_Admin";
$nombre_bd  = "u985211323_farmhomedb";

$tabla_db1 = "registrouser"; 
try {
	$conn = mysqli_connect('localhost','u985211323_Admin','Santiago2004','u985211323_farmhomedb');} catch (Exception $e) {
	echo "Hay algún problema con la conexión: ".$e->getMessage();
}


?>