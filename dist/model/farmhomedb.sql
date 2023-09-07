-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2023 a las 04:15:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmhomedb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `totalPreguntas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `usuario`, `password`, `totalPreguntas`) VALUES
(1, 'admin', 'admin', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `id` int(11) NOT NULL,
  `visitas` int(11) NOT NULL,
  `respondidas` int(11) NOT NULL,
  `completados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadisticas`
--

INSERT INTO `estadisticas` (`id`, `visitas`, `respondidas`, `completados`) VALUES
(1, 57, 52, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `mun_id` int(11) NOT NULL,
  `mun_nombre` varchar(20) NOT NULL,
  `mun_grado` float NOT NULL,
  `mun_piso` enum('Cálido','Templado','Frío','Muy frío') NOT NULL,
  `mun_altitud` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`mun_id`, `mun_nombre`, `mun_grado`, `mun_piso`, `mun_altitud`, `reg_id`) VALUES
(1, 'Mosquera', 13.5, 'Templado', 2516, 1),
(2, 'Funza', 14.3, 'Templado', 2529, 1),
(3, 'Villeta', 20.4, 'Cálido', 845, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio-planta`
--

CREATE TABLE `municipio-planta` (
  `municipio_mun_id` int(11) NOT NULL,
  `planta_pla_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipio-planta`
--

INSERT INTO `municipio-planta` (`municipio_mun_id`, `planta_pla_id`) VALUES
(1, 2),
(2, 2),
(3, 1),
(3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planta`
--

CREATE TABLE `planta` (
  `pla_id` int(11) NOT NULL,
  `pla_nombre` varchar(20) NOT NULL,
  `pla_tipo` varchar(20) NOT NULL,
  `pla_color` varchar(20) NOT NULL,
  `pla_img` varchar(20) DEFAULT NULL,
  `pla_info` varchar(200) NOT NULL,
  `pla_href` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planta`
--

INSERT INTO `planta` (`pla_id`, `pla_nombre`, `pla_tipo`, `pla_color`, `pla_img`, `pla_info`, `pla_href`) VALUES
(1, 'Coco', 'Palmera', 'café', 'coco.jpg', 'El coco es una fruta obtenida principalmente de la especie tropical cocotero (Cocos nucifera), la palmera más cultivada a nivel mundial. El coco es una drupa, una fruta con una capa exterior gruesa (e', ''),
(2, 'manzana', 'Rosácea', 'rojo', 'manzana.jpg', 'El manzano es una especie de árbol frutal de la familia Rosaceae, cultivado por su fruto, la manzana. Su nombre científico es Malus domestica. Es un árbol de mediano tamaño, inerme, caducifolio, de co', ''),
(3, 'Mangífera', 'Anacardiacea', 'Amarillo', 'mango.jpg', 'La mangifera es un género de plantas que pertenece a la familia de las anacardiáceas. Este género contiene alrededor de 69 especies, siendo la más conocida el mango común (Mangifera indica). El mango ', 'https://co.siembraco.com/MANGO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `tema` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `opcion_a` text NOT NULL,
  `opcion_b` text NOT NULL,
  `opcion_c` text NOT NULL,
  `correcta` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `tema`, `pregunta`, `opcion_a`, `opcion_b`, `opcion_c`, `correcta`) VALUES
(1, 1, '¿Cuál es uno de los principales objetivos de la fertilización en la agricultura?', ' Mejorar la calidad del suelo.', 'Reducir la cantidad de agua utilizada.', 'Reducir la cantidad de agua utilizada.', 'B'),
(2, 1, '¿Qué práctica agrícola implica rotar cultivos en un mismo campo durante diferentes estaciones?', 'Monocultivo.', 'Riego por goteo.', 'Rotación de cultivos.', 'C'),
(3, 1, '¿Qué tipo de suelo retiene más agua y nutrientes?', 'Suelo arcilloso.', 'Suelo arenoso.', 'Suelo pedregoso.', 'A'),
(4, 1, '¿Qué se entiende por pH del suelo?', 'La cantidad total de agua presente en el suelo.', 'La acidez o alcalinidad del suelo.', 'La temperatura promedio del suelo.', 'B'),
(5, 1, '¿Cuál de las siguientes plagas afecta principalmente a los cultivos de maíz?', 'Ácaros.', 'Orugas.', 'Pulgones.', 'B'),
(6, 1, '¿Qué técnica agrícola se utiliza para mejorar la estructura del suelo y aumentar la aireación de las raíces?', 'Labranza mínima.', 'Monocultivo.', 'Uso de herbicidas.', 'A'),
(7, 1, '¿Qué elemento es esencial para el proceso de fotosíntesis en las plantas?', 'Oxígeno.', 'Dióxido de carbono (CO2).', 'Nitrógeno.', 'B'),
(8, 1, '¿Cuál es el propósito principal de la poda en la agricultura?', 'Mejorar la calidad del suelo.', 'Controlar las plagas.', 'Regular el crecimiento de las plantas.', 'C'),
(9, 1, '¿Qué tipo de agricultura se caracteriza por utilizar métodos naturales y orgánicos sin el uso de productos químicos sintéticos?', 'Agricultura convencional.', 'Agricultura orgánica.', 'Agricultura hidropónica.', 'B'),
(10, 1, '¿Cuál es el cultivo más ampliamente cultivado en todo el mundo?', 'Trigo.', 'Maíz.', 'Arroz.', 'C'),
(11, 2, '¿Qué estudio se enfoca en el análisis y la predicción del clima?', 'Meteorología.', 'Geología.', 'Oceanografía.', 'A'),
(12, 2, '¿Qué fenómeno climático se caracteriza por temperaturas más cálidas de lo normal en el océano Pacífico tropical?', 'Efecto invernadero.', 'El Niño.', 'La Niña.', 'B'),
(13, 2, '¿Qué instrumento se utiliza para medir la dirección del viento?', 'Anemómetro.', 'Baretómetro.', 'Veleta.', 'C'),
(14, 2, '¿Qué nombre recibe la línea imaginaria que divide la Tierra en hemisferio norte y hemisferio sur?', 'Ecuador.', ' Meridiano de Greenwich.', 'Trópico de Cáncer.', 'A'),
(15, 2, ' ¿Qué término se utiliza para describir una región con una temperatura media anual superior a 25 grados Celsius y una alta humedad?', 'Clima árido.', 'Clima tropical.', 'Clima polar.', 'B'),
(16, 2, '¿Cuál es el nombre del instrumento utilizado para medir la presión atmosférica?', 'Termómetro.', 'Pluviómetro.', 'Barómetro.', 'C'),
(17, 2, '¿Qué término se refiere a la cantidad de agua en forma de vapor en la atmósfera?', 'Precipitación.', 'Humedad.', 'Evaporación.', 'B'),
(18, 2, '¿Qué proceso meteorológico es responsable de la formación de nubes y precipitación?', 'Condensación.', 'Evaporación.', 'Radiación solar.', 'A'),
(19, 2, '¿Qué tipo de clima es ideal para el cultivo de cactus y suculentas?', 'Clima tropical.', 'Clima templado.', ' Clima árido y seco.', 'C'),
(20, 2, '¿Por qué es importante conocer la zona de resistencia de las plantas al seleccionarlas para un jardín?', 'Para determinar cuánto riego necesitan.', 'Para saber si sobrevivirán en las condiciones climáticas locales.', ' Para decidir su disposición en el jardín.', 'B'),
(21, 3, '¿Qué es la agricultura sostenible?', 'Un método agrícola que utiliza productos químicos intensivos.', 'Un enfoque agrícola que busca maximizar las ganancias a corto plazo.', 'Un sistema agrícola que busca mantener la productividad a largo plazo sin agotar los recursos naturales.', 'C'),
(22, 3, '¿Cuál es uno de los principios fundamentales de la agricultura sostenible?', 'Diversificar cultivos y prácticas agrícolas.', 'Uso excesivo de pesticidas.', 'Maximizar el monocultivo.', 'A'),
(23, 3, '¿Qué objetivo persigue la rotación de cultivos en la agricultura sostenible?', 'Aumentar la dependencia de fertilizantes químicos.', 'Reducir la biodiversidad.', 'Mejorar la salud del suelo y prevenir plagas.', 'C'),
(24, 3, '¿Qué práctica agrícola sostenible implica el uso de organismos vivos para controlar plagas?', 'Uso de fertilizantes químicos.', 'Agricultura de conservación.', 'Control biológico de plagas.', 'C'),
(25, 3, '¿Por qué es importante la gestión adecuada del agua en la agricultura?', 'Para aumentar el desperdicio de agua.', 'Para conservar este recurso vital y reducir la contaminación.', 'Para acelerar la erosión del suelo.', 'B'),
(26, 3, '¿Qué técnica agrícola sostenible implica la cría de peces en conjunto con cultivos agrícolas?', 'Agricultura de conservación.', 'Acuaponía.', 'Rotación de cultivos.', 'B'),
(27, 3, ' ¿Cuál es uno de los beneficios sociales de la agricultura sostenible?', 'Mayor dependencia de la agricultura industrial.', 'Mayor acceso a alimentos frescos y saludables en las comunidades locales.', 'Mayor uso de pesticidas y fertilizantes químicos.', 'B'),
(28, 3, '¿Qué se entiende por \"agricultura urbana\" y cómo contribuye a la sostenibilidad?', 'Cultivar solo en áreas rurales y no en áreas urbanas.', 'Cultivar alimentos en áreas urbanas para reducir la huella ecológica y aumentar la disponibilidad de alimentos locales.', 'No tiene ningún impacto en la sostenibilidad.', 'B'),
(29, 3, '¿Cuál es la importancia de la diversificación de cultivos en la agricultura?', 'Reducir la producción de alimentos.', 'Aumentar la dependencia de pesticidas.', 'Mejorar la estabilidad del sistema agrícola y reducir el riesgo de enfermedades de las plantas.', 'C'),
(30, 3, '¿Cuál es el propósito de la agroforestería en la agricultura sostenible?', 'Plantar solo árboles para la madera.', 'Integrar árboles en sistemas agrícolas para beneficios mutuos.', 'Eliminar árboles de las áreas agrícolas.', 'B'),
(31, 4, '¿Qué es la economía agrícola?', 'El estudio de la economía en general.', 'El análisis de la producción y distribución de bienes y servicios en el sector agrícola.', 'La gestión de recursos naturales en el sector industrial.', 'B'),
(32, 4, '¿Qué concepto se refiere a la relación entre la cantidad producida y los costos asociados en la agricultura?', 'Inflación.', 'Rendimiento económico.', 'Tasas de interés.', 'B'),
(33, 4, '¿Qué factores económicos pueden influir en los precios de los productos agrícolas?', 'Los patrones climáticos.', 'La oferta y la demanda.', 'Las prácticas de cultivo.', 'B'),
(34, 4, '¿Qué se entiende por \"agricultura de subsistencia\"?', ' La agricultura que produce grandes excedentes para la exportación.', ' La agricultura destinada a la producción de alimentos solo para el consumo familiar.', 'La agricultura que utiliza tecnología avanzada en la producción de alimentos.', 'B'),
(35, 4, '¿Cuál es uno de los principales desafíos económicos para los agricultores en el mercado global?', 'La falta de tecnología agrícola.', 'La variabilidad climática.', 'La competencia internacional y las fluctuaciones de precios.', 'C'),
(36, 4, '¿Qué medida económica se utiliza para evaluar la eficiencia en la producción agrícola?', ' El PIB agrícola.', 'El costo total de producción.', 'El rendimiento por hectárea.', 'C'),
(37, 4, '¿Cuál es el concepto de \"valor agregado\" en la agricultura?', 'El costo de producción de un cultivo.', 'El precio de mercado de los productos agrícolas.', 'La diferencia entre el valor de los productos agrícolas y los costos de producción.', 'C'),
(38, 4, '¿Qué efecto económico puede tener una disminución en la producción de alimentos en un país?', 'Reducción de la inflación.', 'Aumento de los precios de los alimentos.', 'Estabilidad en el mercado alimentario.', 'B'),
(39, 4, '¿Cuál es uno de los principales factores que influyen en la rentabilidad de una explotación agrícola?', 'El tamaño de la explotación.', 'El clima local.', 'La ubicación geográfica.', 'A'),
(40, 4, '¿Cuál es el objetivo principal de la agricultura de contrato?', 'Establecer precios fijos para los productos agrícolas.', 'Garantizar un mercado seguro para los agricultores al firmar acuerdos con compradores antes de la siembra.', 'Eliminar la necesidad de comercializar productos agrícolas.', 'B'),
(41, 5, '¿Qué se entiende por \"plagas\" en la agricultura?', 'Insectos, enfermedades y malas hierbas.', 'Animales de granja.', 'Cosechas saludables.', 'A'),
(42, 5, '¿Cuál es uno de los métodos de control de plagas más amigables con el medio ambiente?', 'Insectos que ayudan a controlar las plagas.', 'Insectos que causan daño a los cultivos.', 'Insectos que son indiferentes a los cultivos.', 'B'),
(43, 5, '¿Qué es un ejemplo de control físico de plagas?', 'Uso de pesticidas químicos.', 'Uso de trampas para insectos.', 'Uso de insecticidas naturales.', 'B'),
(44, 5, '¿Qué se entiende por \"resistencia a plaguicidas\"?', 'La inmunidad natural de las plantas a las plagas.', 'La capacidad de las plagas para sobrevivir a la exposición repetida a un plaguicida.', 'La eliminación total de plagas en un cultivo.', 'B'),
(45, 5, '¿Cuál es una práctica común de control de enfermedades en la agricultura?', 'Uso de herbicidas.', ' Uso de fungicidas.', 'Uso de insecticidas.', 'B'),
(46, 5, '¿Qué es la \"selección de hospederos\" en el manejo de plagas?', 'La práctica de eliminar todos los cultivos hospederos.', 'La elección cuidadosa de cultivos que sean resistentes a las plagas.', 'La selección de pesticidas para el control de plagas.', 'B'),
(47, 5, '¿Cuál es uno de los objetivos principales del control integrado de plagas (CIP)?', 'Eliminar todas las plagas en un cultivo.', 'Utilizar solo pesticidas químicos.', 'Reducir las poblaciones de plagas a niveles económica y ecológicamente justificables.', 'C'),
(48, 5, '¿Qué método de control de plagas utiliza feromonas para confundir a los insectos machos y evitar que se reproduzcan?', 'Control biológico.', 'Trampas de luz.', 'Confusión sexual.', 'C'),
(49, 5, '¿Cuál es uno de los efectos negativos del uso excesivo de pesticidas químicos en la agricultura?', 'Aumento de la población de plagas.', 'Contaminación del suelo y el agua.', 'Mejora de la salud de los cultivos.', 'C'),
(50, 5, '¿Cuál es un método de control cultural de plagas?', 'Uso de pesticidas químicos.', 'Rotación de cultivos.', 'Liberación de insectos depredadores.', 'B'),
(51, 7, '¿Qué es Agrotech?', 'Un tipo de cultivo.', 'La tecnología aplicada a la agricultura.', 'Un nuevo tipo de insecticida.', 'B'),
(52, 7, '¿Cuál es uno de los objetivos de Agrotech?', 'Reducir la producción agrícola.', 'Mejorar la eficiencia y la sostenibilidad de la agricultura.', 'Incrementar el uso de pesticidas químicos.', 'B'),
(53, 7, '¿Qué tecnología Agrotech se utiliza para monitorear y gestionar cultivos de forma remota?', 'Drones.', 'Tractores.', 'Abonadoras.', 'A'),
(54, 7, '¿Qué tipo de sensores se utilizan en la agricultura de precisión?', 'Sensores de temperatura.', 'Sensores de humedad del suelo.', 'Sensores de música.', 'B'),
(55, 7, '¿Cuál es una ventaja clave de la agricultura de precisión en Agrotech?', 'Aumento del desperdicio de recursos.', 'Mejora en la eficiencia de la utilización de recursos como agua y fertilizantes.', 'Reducción de la rentabilidad de los cultivos.', 'B'),
(56, 7, '¿Cuál es uno de los beneficios de la agricultura vertical en Agrotech?', 'Mayor espacio en el campo.', 'Mayor productividad en un espacio reducido.', 'Mayor necesidad de tierra agrícola.', 'B'),
(57, 7, '¿Cuál es el propósito de los sistemas de información geográfica (SIG) en Agrotech?', 'Registrar recetas de cocina.', 'Controlar el tráfico en las carreteras.', 'Analizar datos espaciales para tomar decisiones agrícolas informadas.', 'C'),
(58, 7, '¿Qué es la \"agricultura 4.0\" en el contexto de Agrotech?', 'Una nueva generación de agricultura altamente tecnológica e interconectada.', 'La agricultura tradicional sin tecnología.', 'Una técnica de cultivo antigua.', 'A'),
(59, 7, '¿Qué tecnología Agrotech se utiliza para el monitoreo de animales de granja como vacas o aves?', 'Sensores de temperatura.', 'Radios FM.', 'Collares inteligentes.', 'C'),
(60, 7, '¿Qué tecnología Agrotech se utiliza para la gestión de flotas de vehículos agrícolas?', 'GPS.', 'Teléfonos móviles.', 'Linternas.', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `reg_id` int(11) NOT NULL,
  `reg_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`reg_id`, `reg_nombre`) VALUES
(1, 'Cundinamarca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrouser`
--

CREATE TABLE `registrouser` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registrouser`
--

INSERT INTO `registrouser` (`id`, `name`, `userName`, `password`, `email`) VALUES
(2, 'santiago', 'santi', '1234', 'josesantiagosuarezperez@gmail.'),
(3, 'santiago', 'santi', '1234', 'josesantiagosuarezperez@gmail.'),
(4, 'Juan Jimenez', 'Juan23', '1234', 'note@gmail.com'),
(5, 'Pepe Ramirez', 'Pepe2345', '1234', 'rr2345@gmail.com'),
(6, 'edward', 'thiago12', '12345', 'santiagomendez@gmail.com'),
(7, 'edward', 'thiago12', '12345', 'santiagomendez@gmail.com'),
(8, 'jennyfer sanchez', 'jenny1234', '12345', 'note@gmail.com'),
(9, 'ElHugoMaria', 'Huginho', '1234', 'hugomariasenior@gamil.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `nombre`) VALUES
(1, 'Agronomía'),
(2, 'Climatología'),
(3, 'Agricultura sostenible'),
(4, 'Economía agrícola'),
(5, 'Manejo de Plagas y Enfermedades'),
(7, 'AgroTech');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`mun_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indices de la tabla `municipio-planta`
--
ALTER TABLE `municipio-planta`
  ADD KEY `mun_id` (`municipio_mun_id`),
  ADD KEY `pla_id` (`planta_pla_id`);

--
-- Indices de la tabla `planta`
--
ALTER TABLE `planta`
  ADD PRIMARY KEY (`pla_id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indices de la tabla `registrouser`
--
ALTER TABLE `registrouser`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `mun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `planta`
--
ALTER TABLE `planta`
  MODIFY `pla_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registrouser`
--
ALTER TABLE `registrouser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `region` (`reg_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipio-planta`
--
ALTER TABLE `municipio-planta`
  ADD CONSTRAINT `municipio-planta_ibfk_1` FOREIGN KEY (`municipio_mun_id`) REFERENCES `municipio` (`mun_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `municipio-planta_ibfk_2` FOREIGN KEY (`planta_pla_id`) REFERENCES `planta` (`pla_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
