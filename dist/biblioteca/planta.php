<?php
include('../model/conexion.php');
$query = "select * from planta";
$resultado = mysqli_query($conn, $query);
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
                    <ion-icon id="cloud" name="cloud-outline"></ion-icon>
                    <span>⠀FarmHome</span>
                </div>
                <button class="boton">
                    <a href="../login/login.php"><span>Login</span></a>
                </button>
            </div>
            <nav class="navegacion navbar navbar-default navbar-fixed-top navbar-shrink">
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a id="page-scroll" href="#">
                                <ion-icon name="home-outline"></ion-icon>
                                <span class="algo">Biblioteca</span>
                            </a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#">
                                <ion-icon name="document-text-outline"></ion-icon>
                                <span>Herramientas</span>
                            </a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#" target="_blank">
                                <ion-icon name="bookmark-outline"></ion-icon>
                                <span>Aprende</span>
                            </a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#" target="_blank">
                                <ion-icon name="bookmark-outline"></ion-icon>
                                <span>Simulador</span>
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
                    <a href="../login/login.php">
                        <img src="../img/user1.png" alt="">
                        <div class="info-usuario">
                            <div class="nombre-email">
                                <span class="nombre">user</span>
                                <span class="email">root@gmail.com</span>
                            </div>
                            <ion-icon name="ellipsis-vertical-outline"></ion-icon>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- FIN MENÚ *********************************-->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Biblioteca</div>
            </div>
        </div>
    </header>
    <div class="container mt-5">
        <div class="col-12">
            <div class="custom-row">
                <label>Planta a buscar: </label>
                <input onkeyup="buscar_ahora($('#buscar_1').val());" type="text" id="buscar_1" name="buscar_1">
            </div>
            <div class="card col-12 mt-5">
                <div class="card-body">
                    <div id="datos_buscador" class="container pl-5 pr-5"></div>
                </div>
            </div>

        </div>
    </div>

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
        //   buscar_ahora();
    </script>
    <section>
        <div class="custom-row">
            <div class="custom-col">
                <?php foreach ($resultado as $recorrer) { ?>
                    <a href="ex<?php foreach($numero as $i){ echo $i;} ?>"  rel="modal:open"><img src="imagenes/<?php echo $recorrer['pla_img']; ?>" class="imgModal"></a>
                <?php } ?>
            </div>
        </div>
        <section>
        <?php foreach ($resultado as $recorrer) { ?>
            <div id="ex<?php foreach($numero as $i){ echo $i;} ?>" class="modal info-modal">
                    <h5><strong><?php echo $recorrer['pla_nombre']; ?></strong></h5>
                    <div>
                        <img src="imagenes/<?php echo $recorrer['pla_img']; ?>" class="card-img-top" alt="...">
                    </div>
                    <h5><strong><?php echo $recorrer['pla_info']; ?></strong></h5>
                    <a href="#" rel="modal:close">Cerrar</a>
            </div>
        <?php } ?>
        </section>
<center>

</body>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script src="../scripts/menuLateral.js"></script>

<!-- Remember to include jQuery :) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>

<?php
include('../template/footer.php')
?>
</body>

</html>