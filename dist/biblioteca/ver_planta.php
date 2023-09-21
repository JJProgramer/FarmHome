<?php
include('../model/conexion.php');
?>
<!DOCTYPE html>
<html>

<head>
    <title>Info</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: rgba(0, 0, 0, 0.7);
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: auto;
        }

        .popup {
            background-color: white;
            max-width: 80%;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .popup h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .popup p {
            font-size: 16px;
        }

        .close-button {
            display: block;
            margin-top: 10px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        .close-button:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div class="popup">

        <?php

        if (isset($_GET['id']) && is_numeric($_GET['id'])) {
            $planta_id = $_GET['id'];

            $consulta = "SELECT * FROM planta WHERE pla_id = $planta_id";
            $resultado = mysqli_query($conn, $consulta);

            if ($resultado && mysqli_num_rows($resultado) > 0) {
                $planta = mysqli_fetch_assoc($resultado);
                echo '<h3>' . $planta['pla_nombre'] . '</h3>';
                echo '<p>' . $planta['pla_info'] . '</p>';
                echo '<p>' . $planta['pla_uso'] . '</p>';
                echo '<p>' . $planta['pla_siembra'] . '</p>';
                echo '<p>' . $planta['pla_cosecha'] . '</p>';
            } else {
                echo 'Planta no encontrada';
            }
        } else {
            echo 'ID de planta no válido';
        }
        ?>
        <a href="./library.php" class="close-button" onclick="window.close();">Cerrar</a>
    </div>
</body>

</html>