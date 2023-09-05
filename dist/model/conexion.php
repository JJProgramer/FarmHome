<?php 
$contrasena = "";
$usuario    = "root";
$nombre_bd  = "farmhomedb";

try {
	$conn = mysqli_connect('localhost','root','','farmhomedb');} catch (Exception $e) {
	echo "Hay algún problema con la conexión: ".$e->getMessage();
}
?>