<?php
include('../model/conexion.php');

if (isset($_POST['provincia']) && isset($_POST['municipio'])) {
    $provincia_id = $_POST['provincia'];
    $municipio_id = $_POST['municipio'];

    if (!empty($provincia_id)) {
        $sql = "SELECT DISTINCT pla_id, pla_nombre, pla_img
            FROM planta
            INNER JOIN municipio_planta mp ON pla_id = planta_pla_id
            WHERE municipio_mun_id = $municipio_id";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            $output = "";
            while ($row = $result->fetch_assoc()) {
                $output .= "<div class=' card' >";
                $output .= "<a href='ver_planta.php?id=" . $row['pla_id'] . "'>";
                $output .= "<h2 style='text-align: center';>" . $row['pla_nombre'] . "</h2>";
                $output .= "<img src='./imagenes/" . $row['pla_img'] . "' alt='Da click en la imagen' >Ver mas</a>";
                $output .= "</div>";
            }
            echo $output;
        } else {
            echo "No se encontraron plantas en este municipio.";
        }
    } else {
        echo "Seleccione una provincia y un Municipio para ver las plantas.";
    }
} else {
    echo "No se enviaron datos de busqueda correctos";
}
?>