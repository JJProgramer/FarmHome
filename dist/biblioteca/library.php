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
        <link rel="icon" href="../img/icon.ico" type="image/x-icon">
        <link rel="stylesheet" href="../styles/stylelibrary.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
        <!--
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    -->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

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
                        <a class="titulo" href="../main/main.php"><span>FarmHome</span></a>
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
                                <a class="page-scroll" href="https://simulador.jjss.tech/" target="_blank">
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

            <section>

                <form method="post" action="filtro.php">
                    <label for="provincia">Provincia:</label>
                    <select name="provincia" id="provincia">
                        <option value="">Seleccione una provincia</option>
                        <?php
                        include('../model/conexion.php');

                        $sql = "SELECT prov_id, prov_nombre FROM provincia";
                        $result = $conn->query($sql);

                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo "<option value='" . $row['prov_id'] . "'>" . $row['prov_nombre'] . "</option>";
                            }
                        }
                        ?>
                    </select>

                    <label for="municipio">Municipio:</label>
                    <select name="municipio" id="municipio" disabled>
                        <option value="">Seleccione una provincia primero</option>
                    </select>

                    <input id="botonBuscar" type="submit" value="Buscar Plantas">

                </form>

                <div id="resultados">
                    <!-- Aquí se mostrarán las plantas -->
                </div>


            </section>

    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#provincia").change(function() {
                var prov_id = $(this).val();
                if (prov_id !== "") {
                    $.ajax({
                        type: "POST",
                        url: "cargar_municipio.php",
                        data: {
                            prov_id: prov_id
                        },
                        success: function(data) {
                            $("#municipio").html(data);
                            $("#municipio").prop('disabled', false);
                        }
                    });
                } else {
                    $("#municipio").html('<option value="">Seleccione una provincia primero</option>');
                    $("#municipio").prop('disabled', true);
                }
            });
        });
        $(document).ready(function() {
            $("form").submit(function(e) {
                e.preventDefault(); 

                var provincia_id = $("#provincia").val();
                var municipio_id = $("#municipio").val();

                $.ajax({// Evita el envío tradicional del formulario
                    type: "POST",
                    url: "filtro.php", // URL del archivo PHP para procesar la búsqueda
                    data: {
                        provincia: provincia_id,
                        municipio: municipio_id
                    },
                    success: function(data) {
                        $("#resultados").html(data); // Mostrar los resultados en el div "resultados"
                    }
                });
            });
        });
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
    include('../template/footerm.php')
    ?>
    </body>

    </html>
<?php
} else {

    header('Location: ../login/login.php');
}

?>