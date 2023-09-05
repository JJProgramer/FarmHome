<?php 
	// Parametros a configurar para la conexion de la base de datos 
	$host = "localhost";   
	$basededatos = "farmhomedb";  
	$usuariodb = "root";     
	$clavedb = "";   

	//Lista de Tablas
	$tabla_db1 = "registrouser"; 	   // tabla de usuario

	//error_reporting(0); //No me muestra errores
	
	$conexion = new mysqli($host,$usuariodb,$clavedb,$basededatos);


	if ($conexion->connect_errno) {
	    echo "Nuestro sitio experimenta fallos....";
	    exit();
	}

?>