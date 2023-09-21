<?php
include('../model/conexion.php');
session_start();

if (isset($_POST['btn_iniciar'])) {
    
    if (strlen($_POST['userName']) >= 1 && strlen($_POST['password']) >= 1){
    
    $userName = trim($_POST['userName']);
    $password = trim($_POST['password']);

    $sql = "SELECT * FROM registrouser WHERE userName = '$userName' AND password = '$password'";
    $resultado = $conn->query($sql);
    $row = $resultado->fetch_assoc();

    if ($userName == $row['userName'] && $password == $row['password']) {
        $_SESSION['userName'] = $userName;

        header("Location:../main/main.php");
        exit();
    } else {
        header("Location: ../login/login.php?error=invalid");
        exit();
    }
    } else {
        ?>
            <script>
                alert("Llene todos los campos");
            </script>
        <?php
        exit();
    }
}
?>