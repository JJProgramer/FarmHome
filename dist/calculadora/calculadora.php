<?php

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
        <link rel="stylesheet" href="../styles/styleCalculadora.css">
    </head>

    <body>
        <!-- Menu *************-->
        <div>
            <div class="menu">
                <ion-icon name="menu-outline"></ion-icon>
                <ion-icon name="close-outline"></ion-icon>
            </div>

            <div class="barra-lateral">
                <div>
                    <div class="nombre-pagina">
                        <ion-icon id="cloud" name="leaf"></ion-icon>
                        <a href="../main/main.php"><span>FarmHome</span></a>
                    </div>
                </div>

                <nav class="navegacion navbar navbar-default navbar-fixed-top navbar-shrink">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a id="inbox" href="#">
                                    <ion-icon name="calculator"></ion-icon>
                                    <span>Herramientas</span>
                                </a>
                            </li>
                            <li>
                                <a class="page-scroll" href="../biblioteca/library.php">
                                    <ion-icon name="file-tray-stacked-outline"></ion-icon>
                                    <span>Biblioteca</span>
                                </a>
                            </li>
                            <li>
                                <a class="page-scroll" href="../game/quiz/index.php">
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
        <!-- Menu *************-->
        <main>

            <header>
                <div class="container">
                    <div class="intro-text">
                        <div class="intro-lead-in">HERRAMIENTAS</div>
                    </div>
                </div>
            </header>
            <!-- Acerca de -->
            <h1>CONVERTIDOR DE UNIDADES</h1>
            <section id="about">
                <div id="container2">
                    <select class="form-control" name="unidades" id="tipoUnidad"><!-- Selecciona el tipo de unidad que se va a emplear para la conversion -->
                        <option value="Longitud">Longitud</option>
                        <option value="Masa">Masa</option>
                        <option value="Velocidad">Velocidad</option>
                        <option value="Temperatura">Temperatura</option>
                        <option value="Tiempo">Tiempo</option>
                    </select>
                </div>
                <div id="container3" class="form-inline">
                    <div id="container4">
                        <div class="valueContainer">
                            <div id="unidad1" class="unitSelect">
                                <select name="Longitud" id="select1" class="selectBox form-control">
                                    <!--La lista 1 de las medidas para seleccionar -->
                                    <option value="metros">Metros(m)</option>
                                    <option value="pies">Pies(ft)</option>
                                    <option value="millas">Millas(M)</option>
                                    <option value="pulgadas">Pulgadas(plg)</option>
                                    <option value="kilometros">Kilometros(Km)</option>
                                    <option value="milimetros">Millimetros(mm)</option>
                                    <option value="micrometros">Micrometros(μm)</option>
                                    <option value="nanometros">Nanometros(nm)</option>
                                    <option value="centimetros">Centimetros(cm)</option>
                                </select>
                            </div>
                            <input type="text" id="value1" class="form-control"></input>
                            <!--Escribir e valor que se va a convertir -->
                        </div>
                        <span class="valueContainer" id="equalSign">=</span> <!--signo igual -->
                        <div class="valueContainer">
                            <div id="unidad2" class="unitSelect">
                                <select name="Longitud" id="select2" class="selectBox form-control">
                                    <!--La lista 2 de las medidas para seleccionar-->
                                    <option value="Metros">Metros(m)</option>
                                    <option value="Pies">Pies(ft)</option>
                                    <option value="Millas">Millas(M)</option>
                                    <option value="Pulgadas">Pulgadas(plg)</option>
                                    <option value="Kilometros">Kilometros(Km)</option>
                                    <option value="Millimetros">Millimetros(mm)</option>
                                    <option value="Micrometros">Micrometros(μm)</option>
                                    <option value="Nanometros">Nanometros(nm)</option>
                                    <option value="Centimetros">Centimetros(cm)</option>
                                </select>
                            </div>
                            <input type="text" id="value2" class="form-control"></input>
                        </div>
                    </div>
                </div>
                <!-- partial -->
                <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
                <script src="../scripts/convertidor.js"></script>
            </section>

            <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
            <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
            <script src="../scripts/escritor.js"></script>
            <script src="../scripts/menuLateral.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <script src="../scripts/alertas.js"></script>

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