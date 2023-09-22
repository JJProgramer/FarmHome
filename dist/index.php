<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FarmHome</title>
    <link rel="icon" href="img/icon.ico" type="image/x-icon">
    <link rel="stylesheet" href="styles/styleLanding.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
</head>

<body>
   



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
            <button class="boton">
                <a href="login/login.php">
                    <h2>Login</h2>
                </a>
            </button>
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
                        <a class="page-scroll" href="#about">
                            <ion-icon name="star-outline"></ion-icon>
                            <span>Acerca de:</span>
                        </a>
                    </li>
                    <li>
                        <a class="page-scroll" href="./calculadora/calculadora.php">
                            <ion-icon name="document-text-outline"></ion-icon>
                            <span>Herramientas</span>
                        </a>
                    </li>
                    <li>
                        <a class="page-scroll" href="./biblioteca/library.php">
                            <ion-icon name="document-text-outline"></ion-icon>
                            <span>Biblioteca</span>
                        </a>
                    </li>
                    <li>
                        <a class="page-scroll" href="./game/quiz/index.php">
                            <ion-icon name="bookmark-outline"></ion-icon>
                            <span>Aprende</span>
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

            <div class="usuario">
                <a href="login/login.php">
                    <img src="img/user1.png" alt="">
                    <div class="info-usuario">
                        <div class="nombre-email">
                            <span class="nombre">No has<br> iniciado Sesion </span>

                        </div>
                        <ion-icon name="ellipsis-vertical-outline"></ion-icon>
                    </div>
                </a>
            </div>
        </div>

    </div>

    <main>
        <!--
        <section id="hojas">
            <div class="leaves">
                <div class="set">
                    <div><img src="img/leaves/leaf3.png"></div>
                    <div><img src="img/leaves/leaf3.png"></div>
                    <div><img src="img/leaves/leaf3.png"></div>
                    <div><img src="img/leaves/leaf3.png"></div>
                    <div><img src="img/leaves/leaf3.png"></div>
                    <div><img src="img/leaves/leaf3.png"></div>
                    <div><img src="img/leaves/leaf3.png"></div>
                    <div><img src="img/leaves/leaf3.png"></div>
                    <div><img src="img/leaves/imagen1.png"></div>
                    <div><img src="img/leaves/imagen1.png"></div>
                    <div><img src="img/leaves/imagen1.png"></div>
                    <div><img src="img/leaves/imagen2.png"></div>
                    <div><img src="img/leaves/imagen2.png"></div>
                    <div><img src="img/leaves/imagen2.png"></div>
                    <div><img src="img/leaves/imagen3.png"></div>
                    <div><img src="img/leaves/imagen3.png"></div>
                </div>
        </section>
        -->
        <header>
            <div class="container">
                <div class="intro-text">
                    <div class="intro-lead-in">Bienvenido</div>
                    <div class="intro-heading">Potenciando la agricultura urbana a través de software inteligente</div>
                </div>
            </div>
        </header>
        <!-- Acerca de -->
        <section id="about">
            <div class="custom-row">
                <h1>Servicios</h1>
            </div>
            <div class="custom-row">
                <div class="custom-col">
                    <span class="fa-stack fa-4x">
                        <ion-icon id="cloud" name="leaf"></ion-icon>
                    </span>
                    <p class="text-muted">Información precisa sobre plantas compatibles en cada zona, considerando
                        clima, suelo y condiciones locales.</p>
                    <a href="#ex1" rel="modal:open"><img src="img/modal1.jpg" class="imgModal"></a>
                </div>
                <div class="custom-col">
                    <span class="fa-stack fa-4x">
                        <ion-icon id="cloud" name="leaf"></ion-icon>
                    </span>
                    <p class="text-muted">Herramientas de medición y diseño del espacio de cultivo para optimizar el uso
                        del espacio disponible.</p>
                    <a href="#ex2" rel="modal:open"><img src="img/modal2.jpeg" class="imgModal"></a>
                </div>
                <div class="custom-col">
                    <span class="fa-stack fa-4x">
                        <ion-icon id="cloud" name="leaf"></ion-icon>
                    </span>
                    <p class="text-muted">Sistema de recomendaciones inteligente para seleccionar combinaciones de
                        plantas.</p>
                    <a href="#ex3" rel="modal:open"><img src="img/modal3.png" class="imgModal"></a>
                </div>
            </div>

            <!-- Modal-->

            <div id="ex1" class="modal info-modal">
                <h2>Aprendizaje</h2>
                <div>
                    <img src="img/modal1.jpg" alt="200px">
                </div>
                <p>FamHome ofrece a sus usuarios un apartado donde podran aprender diversos conceptos de plantas de la
                    region o provincia donde se encuentran ubicados</p>
                <P>Para reforzar ese aprendizaje obtenido gracias a una biblioteca botanica virtual, te pondremos a
                    prueba mediante un juego quiz.
                    Si quieres disfrutar de este apartado ve a iniciar sesion.
                </P>
                <a class="cerrar" href="#" rel="modal:close">Cerrar Ventana</a>
            </div>

            <div id="ex2" class="modal info-modal">
                <h2>Calculadora</h2>
                <div>
                    <img src="img/modal2.jpeg" alt="200px">
                </div>
                <p>¿Necesitas realizar calculos aritmeticos y de convercion de unidades?</p>
                <P>En FarmHome podras realizar conversiones de unidades para saber con exactitud las medidas de tu
                    entorno.</P>
                <a class="cerrar" href="#" rel="modal:close">Cerrar Ventana</a>
            </div>

            <div id="ex3" class="modal info-modal">
                <h2>Simulador</h2>
                <div>
                    <img src="img/modal3.png" alt="200px">
                </div>
                <p>Brindamos a nuestros usuarios un apartado donde podran simular la siembra de algunas plantas y el
                    tiempo estimado para realizar la cosecha. </p>
                <P>Diviertete con tu siembra para que la proyectes en la vida real.</P>
                <a class="cerrar" href="#" rel="modal:close">Cerrar Ventana</a>
            </div>
        </section>

        <!--Carrusel de imgs-->
        <section id="carrusel">
            <div class="custom-row">
                <h1>Plantas</h1>
            </div>
            <div class="carrusel">
                <div class="carrusel-items">
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta1.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta2.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta3.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta4.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta5.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta6.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta1.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta2.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta3.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta4.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta5.jpg" alt="" />
                    </div>
                    <div class="carrusel-item">
                        <img src="img/carrusel/planta6.jpg" alt="" />
                    </div>
                </div>
            </div>
        </section>



        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
        <script src="scripts/menuLateral.js"></script>

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
        include('template/footer.php')
            ?>
</body>

</html>