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
        <link rel="stylesheet" href="../styles/styleMain.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
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
                        <span>FarmHome</span>
                    </div>
                </div>

                <nav class="navegacion navbar navbar-default navbar-fixed-top navbar-shrink">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a id="inbox" href="#">
                                    <ion-icon name="home-outline"></ion-icon>
                                    <span>Inicio</span>
                                </a>
                            </li>
                            <li>
                                <a class="page-scroll" href="../calculadora/calculadora.php">
                                    <ion-icon name="calculator"></ion-icon>
                                    <span>Herramientas</span>
                                </a>
                            </li>
                            <li>
                                <a class="page-scroll" href="../biblioteca/library.php">
                                    <ion-icon name="document-text"></ion-icon>
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
        <!-- Menu *************-->
        <main>
            <!-- 
        <section id="hojas">
            <div class="leaves">
                <div class="set">
                    <div><img src="../img/leaves/leaf3.png"></div>
                    <div><img src="../img/leaves/leaf3.png"></div>
                    <div><img src="../img/leaves/leaf3.png"></div>
                    <div><img src="../img/leaves/leaf3.png"></div>
                    <div><img src="../img/leaves/leaf3.png"></div>
                    <div><img src="../img/leaves/leaf3.png"></div>
                    <div><img src="../img/leaves/leaf3.png"></div>
                    <div><img src="../img/leaves/leaf3.png"></div>
                    <div><img src="../img/leaves/imagen1.png"></div>
                    <div><img src="../img/leaves/imagen1.png"></div>
                    <div><img src="../img/leaves/imagen1.png"></div>
                    <div><img src="../img/leaves/imagen2.png"></div>
                    <div><img src="../img/leaves/imagen2.png"></div>
                    <div><img src="../img/leaves/imagen2.png"></div>
                    <div><img src="../img/leaves/imagen3.png"></div>
                    <div><img src="../img/leaves/imagen3.png"></div>
                </div>
        </section>-->
            <header>
                <div class="container">
                    <div class="intro-text">
                        <div class="intro-lead-in">Bienvenido
                            <?php echo "$userName" ?>
                        </div>
                        <div class="intro-heading">
                            <h3 class="titulo">Disfruta de FarmHome un sitio web donde <br> tu puedes <span
                                    class="typed"></span></h3>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Acerca de -->
            <section id="about">
                <h1>¿Cuáles son las partes principales de las plantas?</h1>
                <h3>Cóloca el cursor sobre las partes de la planta que quieres descubrir.</h3>
                <br>
                <img class="planta" src="../img/areaMapeo/plantaMap.png" alt="" usemap="#mapa">
                <map name="mapa">
                    <area shape="RECTANGLE" coords="127, 231, 314, 296" href="#about" alt="RAÍZ"
                        data-alert="La raíz es el órgano vegetativo de la planta adaptado para la absorción y conducción de agua con sales minerales. Además fija la planta al substrato y almacena sustancias de reserva elaboradas en los órganos verdes.">
                    <area shape="RECTANGLE" coords="214, 150, 222, 225" href="#about" alt="TALLO"
                        data-alert="El tallo es el eje de la parte generalmente aérea de las cormofitas y es el órgano que sostiene las hojas, flores y frutos. Sus funciones principales son las de sostén y de transporte de fotosintatos entre las raíces y las hojas.​">
                    <area shape="RECTANGLE" coords="230, 70, 252, 83" href="#about" alt="FRUTO"
                        data-alert="El fruto es la parte de las plantas que está a cargo de proteger las semillas y asegurar su dispersión. Sirve en muchas ocasiones de alimento para los seres vivos.">
                    <area shape="RECTANGLE" coords="189, 86, 208, 100" href="#about" alt="FRUTO"
                        data-alert="El fruto es la parte de las plantas que está a cargo de proteger las semillas y asegurar su dispersión. Sirve en muchas ocasiones de alimento para los seres vivos.">
                    <area shape="RECTANGLE" coords="151, 149, 168, 166" href="#about" alt="FRUTO"
                        data-alert="El fruto es la parte de las plantas que está a cargo de proteger las semillas y asegurar su dispersión. Sirve en muchas ocasiones de alimento para los seres vivos.">
                    <area shape="RECTANGLE" coords="234, 123, 265, 160" href="#about" alt="FLOR"
                        data-alert="Las flores son la parte reproductiva especial de la planta, esto quiere decir, que la planta pueda producir otras más de su especie. La función principal de la flor es de producir semillas, para poder asegurar su propagación.">
                    <area shape="RECTANGLE" coords="142, 12, 235, 62" href="#about" alt="HOJAS"
                        data-alert="Las hojas son unos órganos verdes que salen del tallo y que poseen funciones básicas para la planta, como son: Realizar la fotosíntesis, respiran y producen los alimentos. La respiración se produce durante el día y la noche; para ello, las plantas toman el oxígeno del aire y desprenden dióxido de carbono.    ">
                    <area shape="RECTANGLE" coords="119,119, 190, 144" href="#about" alt="HOJAS"
                        data-alert="Las hojas son unos órganos verdes que salen del tallo y que poseen funciones básicas para la planta, como son: Realizar la fotosíntesis, respiran y producen los alimentos. La respiración se produce durante el día y la noche; para ello, las plantas toman el oxígeno del aire y desprenden dióxido de carbono.  ">
                </map>
            </section>





            <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
            <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
            <script src="../scripts/escritor.js"></script>
            <script src="../scripts/menuLateral.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <script src="../scripts/alertas.js"></script>

            <!-- Remember to include jQuery :) -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
            <!-- jQuery Modal -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
            <script>
                const carrusel = document.querySelector(".carrusel-items");

                let maxScrollLeft = carrusel.scrollWidth - carrusel.clientWidth;
                let intervalo = null;
                let step = 1;
                const start = () => {
                    intervalo = setInterval(function () {
                        carrusel.scrollLeft = carrusel.scrollLeft + step;
                        if (carrusel.scrollLeft === maxScrollLeft) {
                            step = step * -1;
                        } else if (carrusel.scrollLeft === 0) {
                            step = step * -1;
                        }
                    }, 10);
                };

                const stop = () => {
                    clearInterval(intervalo);
                };

                carrusel.addEventListener("mouseover", () => {
                    stop();
                });

                carrusel.addEventListener("mouseout", () => {
                    start();

                });

                start();
            </script>
            <?php
            include('../template/footerm.php')
                ?>
    </body>

    </html>
    <?php
} else {

    header('Location: /FarmHome/dist/login/login.php');
}

?>