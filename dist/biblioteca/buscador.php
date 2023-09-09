<?php include('../model/conexion.php');

$buscador = mysqli_query($conn, "SELECT * FROM planta WHERE pla_nombre LIKE LOWER('%" . $_POST["buscar"] . "%') OR pla_color LIKE LOWER ('%" . $_POST["buscar"] . "%') ");
$numero = mysqli_num_rows($buscador); ?>


<h3 class="text-muted">Resultados encontrados (
    <?php echo $numero; ?>) :
</h3>

<div class="tarjeta">
    <?php while ($resultado = mysqli_fetch_assoc($buscador)) { ?>

        <div class="pltBuscada">
            <div class="pltNombre">
                <h3>
                    <strong>
                        <?php echo $resultado['pla_nombre']; ?>
                    </strong>
                </h3>
            </div>
            <div class="pltImg">
                <img class="imgs imagen-clickable" src="imagenes/<?php echo $resultado['pla_img']; ?>" data-info="" alt="...">
            </div>

            <div class="pltInfo">
                <h3>
                    <strong>
                        <?php echo $resultado['pla_info']; 
                        ?>
                    </strong>
                </h3>
            </div>
        </div>
    <?php } ?>
</div>
<!-- 
<area shape="RECTANGLE" coords="119,119, 190, 144" href="#about" alt="HOJAS"
                        
                </map>