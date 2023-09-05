<?php include('../model/conexion.php');

$buscardor = mysqli_query($conn, "SELECT * FROM planta WHERE pla_nombre LIKE LOWER('%" . $_POST["buscar"] . "%') OR pla_color LIKE LOWER ('%" . $_POST["buscar"] . "%') ");
$numero = mysqli_num_rows($buscardor); ?>

<center>
    <h3 class="text-muted">Resultados encontrados (
        <?php echo $numero; ?>):
    </h3>
    <?php while ($resultado = mysqli_fetch_assoc($buscardor)) { ?>
        <a class="pltBuscada" href="#" data-alert="Las hojas son unos órganos verdes que salen del tallo y que poseen funciones básicas para la planta, como son: Realizar la fotosíntesis, respiran y producen los alimentos. La respiración se produce durante el día y la noche; para ello, las plantas toman el oxígeno del aire y desprenden dióxido de carbono.  ">
            <h3><strong>
                    <?php echo $resultado['pla_nombre']; ?>
                </strong></h3>
            <div class="pltImg">
                <img src="imagenes/<?php echo $resultado['pla_img']; ?>" data-target="pltInfo"
                    class="card-img-top imagen-clickable" alt="...">
                <h3 class="pltInfo"><strong>
                        <?php echo $resultado['pla_info']; ?>
                    </strong></h3>
            </div>
        <?php } ?>
    </a>
</center>
<!-- 
<area shape="RECTANGLE" coords="119,119, 190, 144" href="#about" alt="HOJAS"
                        
                </map>