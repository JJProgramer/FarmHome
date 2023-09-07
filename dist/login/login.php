<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FarmHome-login</title>
    <link href="https://icons8.com/icons/set/home">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../styles/styleLogin.css">
</head>

<body>
    <header>
        <div class="nombre-pagina">
            <a id="inicio" href="../landingPage/index.php">
                <ion-icon id="cloud" name="leaf"></ion-icon>
                <span>FarmHome</span>
            </a>
        </div>
        </a>
    </header>
    <main>

        <div class="contenedor__todo">
            <div class="caja__trasera">
                <div class="caja__trasera-login">
                    <h3>¿Ya tienes una cuenta?</h3>
                    <p>Inicia sesión para entrar en la página</p>
                    <button id="btn__iniciar-sesion">Iniciar Sesión</button>
                </div>
                <div class="caja__trasera-register">
                    <h3>¿Aún no tienes una cuenta?</h3>
                    <p>Regístrate para que puedas iniciar sesión</p>
                    <button id="btn__registrarse">Regístrarse</button>
                </div>
            </div>

            <!--Formulario de Login y registro-->
            <div class="contenedor__login-register">
                <!--Login-->
                <form action="validacion.php" id="form-session" method="post" class="formulario__login">
                    <h2>Iniciar Sesión</h2>
                    <input type="text" name="userName" placeholder="Nombre Usuario">
                    <input type="password" name="password" placeholder="Contraseña">
                    <input type="submit" id="enviar" class="btn_enviar" value="Iniciar" name="btn_iniciar">
                </form>

                <!--Register-->
                <form action="login.php" method="post" class="formulario__register">
                    <h2>Regístrarse</h2>
                    <input type="text" name="name" placeholder="Nombre completo">
                    <input type="text" name="email" placeholder="Correo Electronico">
                    <input type="text" name="userName" placeholder="Nombre Usuario">
                    <input type="password" name="password" placeholder="Contraseña">
                    <input type="submit" id="enviar" class="btn_enviar" value="Registar" name="btn_registrar">
                </form>
                <?php
                include("conexion.php");

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
                        echo "Los campos son obligatorios";
                    } else {

                        mysqli_query($conexion, "INSERT INTO $tabla_db1 ( name, userName, password, email) 
                        values ('$name','$userName','$password','$email')");
                    }
                    echo "REGISTRO EXITOSO";
                }
                ?>
            </div>
        </div>

    </main>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="../scripts/scriptLogin.js"></script>
</body>

</html>