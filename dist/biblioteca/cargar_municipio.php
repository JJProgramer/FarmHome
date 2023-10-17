<?php
include('../model/conexion.php');

$provincia_id = $_POST['prov_id'];

$sql = "SELECT mun_id, mun_nombre FROM municipio WHERE prov_id = $provincia_id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<option value='" . $row['mun_id'] . "'>" . $row['mun_nombre'] . "</option>";
    }
}
?>