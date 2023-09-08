<?php
include('../model/conexion.php');
$query = "select * from planta";
$resultado = mysqli_query($conn, $query);
session_start();
$userName = $_SESSION['userName'];

if (isset($_SESSION['userName'])) {

?>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FarmHome</title>
        <link rel="stylesheet" href="../styles/stylelibrary.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
        <!--
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    -->
    </head>

    <body>
        <!--COMIENZO MENÚ *********************************-->
        <div>
            <div class="menu">
                <ion-icon name="menu-outline"></ion-icon>
                <ion-icon name="close-outline"></ion-icon>
            </div>

            <div class="barra-lateral">
                <div>
                    <div class="nombre-pagina">
                        <ion-icon id="cloud" name="leaf"></ion-icon>
                        <span href="../maim/main.php">FarmHome</span>
                    </div>
                </div>

                <nav class="navegacion navbar navbar-default navbar-fixed-top navbar-shrink">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a id="inbox" href="#">
                                    <ion-icon name="file-tray-stacked-outline"></ion-icon>
                                    <span>Biblioteca</span>
                                </a>
                            </li>
                            <li>
                                <a class="page-scroll" href="../calculadora/calculadora.php">
                                    <ion-icon name="calculator"></ion-icon>
                                    <span>Herramientas</span>
                                </a>
                            </li>
                            <li>
                                <a class="page-scroll" href="../game/quiz/index.php" target="#">
                                    <ion-icon name="extension-puzzle"></ion-icon>
                                    <span>Aprende</span>
                                </a>
                            </li>
                            <li>
                                <a class="page-scroll" href="#">
                                    <ion-icon name="game-controller"></ion-icon>
                                    <span>Simulador<br>de siembra</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <div>
                    <div class="linea"></div>

                    <div class="modo-oscuro">
                        <div class="info">
                            <ion-icon name="moon-outline"></ion-icon>
                            <span>Modo Oscuro</span>
                        </div>
                        <div class="switch">
                            <div class="base">
                                <div class="circulo">

                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="boton">
                        <a href="../login/cerrarSesion.php"><span>Cerrar Sesion</span></a>
                    </button>
                    <div class="usuario">
                        <img src="../img/user.png" alt="">
                        <div class="info-usuario">
                            <div class="nombre-email">
                                <span class="nombre">
                                    <?php echo "$userName" ?>
                                </span>
                                <span class="email"></span>
                            </div>
                            <ion-icon name="ellipsis-vertical-outline"></ion-icon>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- FIN MENÚ *********************************-->

        <main>
            <header>
                <div class="container">
                    <div class="intro-text">
                        <div class="intro-lead-in">Biblioteca</div>
                    </div>
                </div>
            </header>
            <section id="buscar">
                <div class="col-12">
                    <div class="custom-row">
                        <label>Planta a buscar: </label>
                        <input onkeyup="buscar_ahora($('#buscar_1').val());" type="text" id="buscar_1" name="buscar_1" placeholder="Escribe aquí">
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div id="datos_buscador"></div>
                        </div>
                    </div>
                </div>
            </section>

    </body>
    <script type="text/javascript">
        function buscar_ahora(buscar) {
            var parametros = {
                "buscar": buscar
            };
            $.ajax({
                data: parametros,
                type: 'POST',
                url: 'buscador.php',
                success: function(data) {
                    document.getElementById("datos_buscador").innerHTML = data;
                }
            });
        }
    </script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="../scripts/menuLateral.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="../scripts/alertaPlanta.js"></script>


    <!-- Remember to include jQuery :) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <!-- jQuery Modal -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>

    <?php
    include('../template/footer.php')
    ?>
    </body>

    </html>
<?php
} else {

    header('Location: /FarmHome/dist/login/login.php');
}

?>
<!-- Te amo bb que te rinda en esta mierda -->