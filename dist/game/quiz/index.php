<?php

session_start();
include("admin/funciones.php");

aumentarVisita();

$categorias =  obtenerCategorias();

if (isset($_GET['idCategoria'])) {
    session_start();
    $_SESSION['usuario'] = "usuario";
    $_SESSION['idCategoria'] = $_GET['idCategoria'];
    header("Location: jugar.php");
}

$userName = $_SESSION['userName'];

if (isset($_SESSION['userName'])) {

?>

    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="estilo.css">
        <title>FarmHome</title>
    </head>

    <body>
        <a href="/farmhome/dist/main/main.php">
            <!--  <img style="width: 200px;" src="../img/icon_home.gif" alt="Inicio">-->
            <h2 style="position:absolute; left:70px;">Inicio</h2>
        </a>
        <div class="container" id="cantainer">
            <div class="left">
                <div class="logo">
                    FarmHome
                </div>
                <h2>PON A PRUEBA TUS CONOCIMIENTOS!!</h2>
            </div>
            <div class="right">
                <h3>Elige una categoría</h3>
                <div class="categorias">
                    <?php while ($cat = mysqli_fetch_assoc($categorias)) : ?>
                        <div class="categoria">
                            <form action="<?php echo $_SERVER['PHP_SELF'] ?>" id="<?php echo $cat['tema'] ?>">
                                <input type="hidden" name="idCategoria" value="<?php echo $cat['tema'] ?>">
                                <a href="javascript:{}" onclick="document.getElementById(<?php echo $cat['tema'] ?>).submit(); return false;">
                                    <?php echo obtenerNombreTema($cat['tema']) ?>
                                </a>
                            </form>
                        </div>
                    <?php endwhile ?>
                </div>
            </div>
        </div>
    </body>

    </html>
<?php
} else {

    header('Location: /FarmHome/dist/login/login.php');
}

?>