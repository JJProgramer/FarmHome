<?php
include('../model/conexion.php');

    $provincia = $_POST['provincia'];
    $filtro = "SELECT mun_id, mun_nombre, prov_id FROM municipio WHERE prov_id = '$provincia'";
    $resultado = mysqli_query($conn, $filtro);

        $cadena = "<label>Municipio</label> 
                    <select id='lista2' name='lista2'>";
        
        while ($ver = mysqli_fetch_row($resultado)) {
            $cadena = $cadena . '<option value=' . $ver[0] . '>' . utf8_encode($ver[1]) . '</option>';
        }

        echo  $cadena . "</select>";

?>
