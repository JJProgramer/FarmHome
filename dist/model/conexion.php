<?php 
$contrasena = "242004Santi";
$usuario    = "u985211323_Admin";
$nombre_bd  = "u985211323_farmhomedb";

try {
	$conn = mysqli_connect('localhost','u985211323_Admin','242004Santi','u985211323_farmhomedb');} catch (Exception $e) {
	echo "Hay algún problema con la conexión: ".$e->getMessage();
}
$tabla_db1 = "registrouser"; 

?>