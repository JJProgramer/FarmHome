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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer">
        <link href="https://icons8.com/icons/set/home">
        <link rel="stylesheet" href="./estilo.css">
        <link rel="icon" href="../../img/icon.ico" type="image/x-icon">
        <title>FarmHome</title>
    </head>

    <body>
        <div class="nombre-pagina">
            <a id="inicio" href="../../main/main.php">
                <ion-icon id="cloud" name="leaf"></ion-icon>
                <span>FarmHome</span>
            </a>
        </div>
        <div class="container" id="container">
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
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    </html>
<?php
} else {

    header('Location: ../../login/login.php');
}

?>
<!-- puta-->