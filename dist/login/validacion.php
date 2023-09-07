<?php
    include('../model/conexion.php');
    session_start();

    $userName = $_POST['userName'];
    $password = $_POST['password'];

    // Validar si los campos están vacíos
    if(empty($userName) || empty($password)) {
        header("Location:../login/login.php?error=empty");
        exit();
    } else {
        $sql = "SELECT * FROM registrouser WHERE userName = '$userName' AND password = '$password'";
        $resultado = $conexion->query($sql);

        $row = $resultado->fetch_assoc();

        // Validar si los campos están correctos para iniciar
        if($row['userName'] == $userName && $row['password'] == $password ){
            $_SESSION['userName'] = $userName;
            header("Location:../main/main.php");
        } else {
            header("Location:../login/login.php?error=invalid");
            exit();
        }
    }
?>

