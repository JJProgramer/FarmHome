<?php
include("../model/conexion.php");

$name = "";
$userName = "";
$password = "";
$email = "";

if (isset($_POST['btn_registrar'])) {
    $name = $_POST['name'];
    $userName = $_POST['userName'];
    $password = $_POST['password'];
    $email = $_POST['email'];

    if ($name == "" || $userName == "" || $password == "" || $email == "") {
?>
        <script>
            alert("Llena todos los campos");
        </script>
    <?php

    } else {
        mysqli_query($conn, "INSERT INTO registrouser ( name, userName, password, email) 
                        values ('$name','$userName','$password','$email')");
    ?>
        <script>
            alert("¡Te has registrado satisfactoriamente!");
        </script>
    <?php
    }
}
?>