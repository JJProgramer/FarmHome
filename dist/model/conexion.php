
<!--$server ="localhost";
$contrasena = "Juanes2004";
$usuario    = "u985211323_admin";
$nombre_bd  = "u985211323_farmhomedb";



try {
	$conn = mysqli_connect($server, $usuario, $contrasena, $nombre_bd);
} catch (Exception $e) {
	echo "Hay algún problema con la conexión: " . $e->getMessage();
} -->
<?php




$contrasena = "";
$usuario    = "root";
$nombre_bd  = "farmhomedb";

$tabla_db1 = "registrouser"; 
try {
	$conn = new mysqli('localhost','root','','farmhomedb');} catch (Exception $e) {
	echo "Hay algún problema con la conexión: ".$e->getMessage();
}

?>