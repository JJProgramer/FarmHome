<?php include('../model/conexion.php');


?>


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
                <a href="ver_planta.php?id=<?php echo $resultado['pla_id']; ?>" class="imgs imagen-clickable">
                    <img src="imagenes/<?php echo $resultado['pla_img']; ?>" class="imgs imagen-clickable" alt="...">
                </a>
            </div>
        </div>
    <?php } ?>

</div>