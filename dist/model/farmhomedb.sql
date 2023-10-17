-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2023 a las 17:16:21
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
(1, 'admin', 'admin', 4);

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
(1, 115, 64, 10);

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
  `prov_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`mun_id`, `mun_nombre`, `mun_grado`, `mun_piso`, `mun_altitud`, `prov_id`) VALUES
(1, 'Mosquera', 13.5, 'Templado', 2516, 2),
(2, 'Funza', 14.3, 'Templado', 2529, 2),
(3, 'Villeta', 20.4, 'Cálido', 845, 1),
(4, 'Bojaca', 16.4, 'Templado', 2598, 2),
(5, 'La Peña', 22.6, 'Cálido', 1254, 1);

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
(1, 3),
(1,12),
(1,5),
(1,8),
(1,16),
(2, 3),
(2, 5),
(2, 12),
(3,3),
(3,12),
(3,5),
(3,2),
(3,4),
(3,6),
(3,7),
(3,8),
(3,16),
(4,3),
(4,5),
(4,4),
(4,7),
(4,13),
(4,16);

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
  `pla_info` varchar(1000) NOT NULL,
  `pla_uso` varchar(1000) NOT NULL,
  `pla_siembra` varchar(3000) NOT NULL,
  `pla_cosecha` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planta`
--

INSERT INTO `planta` (`pla_id`, `pla_nombre`, `pla_tipo`, `pla_color`, `pla_img`, `pla_info`, `pla_uso`, `pla_siembra`, `pla_cosecha`) VALUES
(1, 'Palmera', 'Palmera', 'café', 'coco.jpg', 'La palmera es una familia de plantas conocida como Arecaceae o Palmae. Estas plantas son ampliamente reconocidas por su apariencia característica, con un solo tronco largo y delgado coronado por un conjunto de hojas en forma de plumas o abanicos. Las palmas son un grupo diverso que incluye una gran variedad de especies, muchas de las cuales se encuentran en regiones tropicales y subtropicales de todo el mundo.', 'Las palmeras tienen una gran importancia económica y cultural en muchas partes del mundo. Sus frutos, como el coco, las fechas y las palmas aceiteras, son valiosos alimentos y fuentes de aceite. Las hojas de palma se utilizan para tejer cestas, techos, sombreros y otros productos artesanales. Además, las palmas ornamentales se plantan en jardines y paisajes por su belleza.', 'Para sembrar palmeras, primero debes elegir la especie adecuada según el clima de tu región, ya que la mayoría de las palmeras prosperan en climas cálidos y tropicales, aunque algunas toleran climas subtropicales o templados. Asegúrate de que el suelo sea bien drenado y ligeramente ácido a alcalino, y enriquece el suelo con materia orgánica como compost. Al plantar, excava un hoyo amplio, coloca la palma de manera que quede al nivel del suelo circundante y riega bien. Mantén un programa de riego regular, evitando el encharcamiento, y considera el uso de fertilizantes específicos para palmeras. La poda de hojas muertas es importante, y protege las palmas del frío extremo si tu zona es propensa a heladas. Asegúrate de investigar las necesidades específicas de la especie de palma que deseas plantar y adapta el proceso según las condiciones locales.', 'La cosecha de productos de palma, como los cocos, dátiles o aceite de palma, es un proceso crítico que involucra la recolección de frutos maduros. Los cocos, por ejemplo, se cosechan cuando cambian de color de verde a marrón, utilizando varas largas con cuchillas para cortar los cocos de los árboles y recogerlos con cuidado del suelo. En el caso de los dátiles, la cosecha se realiza cuando están en su punto máximo de dulzura y se retiran manualmente de las palmas datileras con la ayuda de escaleras o herramientas de recolección. Por otro lado, la cosecha del aceite de palma involucra la recolección de racimos de frutas maduras, que se cortan de las palmas aceiteras y se procesan en instalaciones de extracción de aceite. Es crucial llevar a cabo estas actividades de manera responsable y sostenible para garantizar la calidad del producto y minimizar el impacto ambiental y social asociado.'),
(2, 'Manzano', 'Rosaceae', 'rojo', 'manzano.jpg', ' El manzano es un árbol caducifolio que puede variar en tamaño, desde unos pocos metros hasta alrededor de 12 metros de altura, dependiendo de la variedad y las condiciones de cultivo. Sus hojas son ovaladas y dentadas, y pueden tener diferentes tonos de verde. Hay innumerables variedades de manzanos en todo el mundo, cada una con sus propias características de sabor y apariencia. Algunas variedades populares incluyen la Golden Delicious, Red Delicious, Granny Smith, Fuji, Gala, y muchas otras.', ' Las manzanas se consumen frescas como fruta, pero también se utilizan para hacer jugos, salsas, compotas, pasteles, tartas, sidra y muchos otros productos. Son una fuente de nutrientes como la vitamina C y fibra dietética.', 'Los manzanos, árboles frutales pertenecientes al género Malus, requieren condiciones específicas para un cultivo exitoso. Para su plantación, es crucial seleccionar una zona con inviernos fríos y veranos moderados, ya que necesitan un período de frío para florecer adecuadamente. Los manzanos prefieren suelos bien drenados, profundos y con un pH ligeramente ácido a neutro, en el rango de 6.0 a 7.0. Antes de plantar, prepara el suelo mejorando su drenaje y ajustando el pH si es necesario. Durante el proceso de plantación, asegúrate de dejar suficiente espacio entre los árboles y considera la polinización cruzada plantando variedades compatibles. El cuidado continuo, la poda anual y el control de plagas son esenciales para el desarrollo saludable de los manzanos, aunque puede llevar tiempo antes de que comiencen a producir frutas de manera significativa.', 'La cosecha de manzanas es una etapa crítica en la producción de estos árboles frutales. Se realiza generalmente en otoño, cuando las manzanas están maduras. Para determinar si una manzana está lista para la cosecha, se considera su color, firmeza y sabor. La mayoría de las manzanas se cosechan cuando su color es brillante y uniforme, y cuando se separan fácilmente del árbol con un ligero giro. Es importante manejar las manzanas con cuidado para evitar daños y magulladuras. Se pueden cosechar a mano o mediante el uso de herramientas como escaleras y recolectores de frutas. Una vez cosechadas, las manzanas se almacenan en condiciones adecuadas, como bajas temperaturas y alta humedad, para prolongar su vida útil y mantener su calidad. La cosecha de manzanas es un proceso esencial en la producción de frutas frescas y productos derivados, como jugos, compotas y pasteles.'),
(3, 'Mango', 'Anacardiacea', 'amarillo', 'mango.jpg', 'El mango es un árbol frutal que puede crecer hasta alturas de 10 a 40 metros, dependiendo de la variedad. Sus hojas son de color verde oscuro y brillante, y las flores son pequeñas y fragantes. El mango es una fruta de forma ovalada, con una piel exterior que puede variar en color desde verde a amarillo, naranja, rojo o incluso morado, según la variedad y su estado de madurez. La pulpa es jugosa, de color amarillo o naranja y tiene un sabor dulce y tropical.', 'Los mangos se consumen frescos como fruta, pero también se utilizan en una variedad de platos y bebidas, como ensaladas de frutas, batidos, salsas agridulces, chutneys y postres. También se pueden secar para hacer mango deshidratado.', 'La siembra del árbol de mango implica seleccionar un sitio con suelo bien drenado y exposición solar adecuada. Se recomienda plantar un árbol joven en un hoyo de al menos 1 metro de profundidad y ancho, incorporando materia orgánica al suelo. Asegurar un riego constante durante los primeros años y realizar podas de formación para fortalecer la estructura. El árbol de mango es sensible a las heladas y necesita protección en climas fríos. Además, es importante tener en cuenta las variedades de mango más adecuadas para la región y considerar la distancia de plantación adecuada para un crecimiento saludable. El mango puede empezar a dar frutos entre 2 y 4 años después de la siembra y requiere cuidados regulares, como fertilización y control de plagas, para un óptimo rendimiento.', 'La cosecha del árbol de mango se realiza cuando los frutos alcanzan la madurez adecuada, lo que generalmente se reconoce por su cambio de color y aroma fragante. Para cosecharlos, se utiliza una escalera y una vara de cosecha o simplemente se recogen a mano si están al alcance. Es importante tener cuidado al manejar los mangos para evitar dañarlos. Después de la cosecha, se deben almacenar en un lugar fresco y seco para prolongar su vida útil. Los mangos son frutas climatéricas, lo que significa que pueden seguir madurando después de la cosecha, por lo que es esencial controlar su estado de madurez para evitar la sobre maduración. La temporada de cosecha varía según la región, pero suele ser en los meses de primavera y verano.'),
(6,'Ají','Capsicum','rojo','aji.jpg','El ají es el fruto de varias especies de plantas del género Capsicum. Estas plantas pertenecen a la familia Solanaceae y son originarias de América, aunque se han difundido por todo el mundo. Los ajíes varían en sabor y nivel de picante, desde suaves hasta extremadamente picantes.','Uso del ají: El ají se utiliza principalmente en la cocina como condimento para añadir sabor y picante a los alimentos. Algunos usos comunes incluyen: Salsa picante: Los ajíes se utilizan para hacer salsas picantes, como el conocido "salsa de ají" o "salsa de chiles". Aderezo y condimento: Los ajíes frescos, secos o en polvo se utilizan para dar sabor a una amplia variedad de platos, como guisos, sopas, salsas, carnes, pescados y más. Conservación: Los ajíes también se pueden encurtir o secar para su uso posterior.','Siembra del ají: El ají se cultiva a partir de semillas y, a menudo, se inicia en interiores antes de trasplantar las plántulas al exterior. Sigue estos pasos para sembrar ají: Inicio en interiores: Comienza a sembrar las semillas de ají en macetas o bandejas de semillero en un lugar cálido y bien iluminado unas 8-10 semanas antes de la última helada en tu área. Cuidado de las plántulas: Mantén las plántulas húmedas, y trasplántalas al jardín o en macetas más grandes cuando tengan al menos 15 cm de altura y hayan pasado las heladas. Espaciado: Planta las plántulas en el jardín con un espacio de alrededor de 45-60 cm entre ellas.','Cosecha del ají: La cosecha del ají se realiza cuando los frutos han alcanzado el tamaño y el grado de madurez deseado. Los ajíes pueden ser cosechados en diferentes etapas de madurez, dependiendo de tus preferencias de sabor y picante. Para cosecharlos, sigue estos pasos: Cosecha a medida que maduran: Puedes cosechar ajíes verdes o esperar a que cambien de color a medida que maduran. Los ajíes rojos suelen ser más picantes que los verdes. Cosecha con tijeras o tijeras de podar: Corta los ajíes con cuidado para evitar dañar el arbusto. Los frutos maduros son más fáciles de cosechar y suelen desprenderse con un ligero tirón. Cosecha de manera regular: Para fomentar la producción continua, cosecha los ajíes de manera regular a medida que maduran. El ají es una planta resistente y fácil de cultivar en climas cálidos o en macetas. Asegúrate de proporcionarle agua adecuada y protección contra plagas para obtener una cosecha saludable')
(7,'Ajo','Alliaceae','blanco','ajo.jpg',' El ajo, científicamente conocido como Allium sativum, es una planta bulbosa de la familia Alliaceae. Se cultiva principalmente por sus bulbos, que consisten en dientes individuales, y se utiliza tanto como alimento como con fines medicinales.','Uso del ajo: El ajo tiene una amplia variedad de usos en la cocina y la medicina. Algunos de los usos más comunes incluyen:Condimento: El ajo se utiliza para dar sabor a una gran cantidad de platos, desde salsas y sopas hasta carnes y verduras. Propiedades medicinales: El ajo se ha asociado con numerosos beneficios para la salud, como la reducción del colesterol, la mejora del sistema inmunológico y propiedades antioxidantes. Repelente de plagas: El ajo también se utiliza en jardinería como repelente natural de plagas. ','Siembra del ajo: El ajo se cultiva a partir de bulbos que se plantan en el suelo. Aquí tienes los pasos para sembrar ajo: Selección de bulbos: Compra bulbos de ajo de buena calidad de una tienda de jardinería o supermercado. Asegúrate de que los bulbos estén sanos y no tengan daños ni signos de enfermedad. Preparación del suelo: El ajo prefiere un suelo bien drenado y fértil. Antes de la siembra, puedes enriquecer el suelo con compost o materia orgánica. Plantación: Separa los dientes de ajo del bulbo principal y planta cada diente a una profundidad de aproximadamente 2-5 cm, con la punta hacia arriba. Deja un espacio de unos 10-15 cm entre cada diente. Espaciado: Deja un espacio de unos 15-20 cm entre cada fila de dientes de ajo.','Cosecha del ajo: El ajo se cosecha cuando las hojas comienzan a marchitarse y ponerse amarillas, generalmente en verano, unos 9 meses después de la siembra. Para cosecharlo, sigue estos pasos: Excavación: Con una horquilla o pala, excava cuidadosamente alrededor del bulbo para aflojar la tierra. Limpieza: Sacude la tierra suelta y luego cuelga los bulbos en un lugar cálido y bien ventilado para secarlos. Este proceso de secado se conoce como curado y puede durar varias semanas. Almacenamiento: Una vez que los bulbos estén completamente secos, quita el exceso de tallo y almacénalos en un lugar fresco y seco. Los bulbos de ajo pueden durar meses si se almacenan adecuadamente. El ajo es una planta fácil de cultivar y puede ser una adición sabrosa y saludable a tu jardín y a tus comidas'),
(8,'Albahaca','Lamiaceae','verde','albahaca.jpg',' La albahaca, conocida científicamente como Ocimum basilicum, es una planta herbácea que pertenece a la familia de las Lamiaceae. Es originaria de la India y se ha cultivado en todo el mundo por su sabor y aroma únicos.','Uso de la albahaca: La albahaca se utiliza principalmente como hierba aromática en la cocina, pero también se le atribuyen propiedades medicinales y se utiliza en la aromaterapia. Algunos de los usos más comunes de la albahaca incluyen: Cocina: La albahaca se utiliza fresca o seca para dar sabor a una variedad de platos, como pasta, pizzas, ensaladas, salsas y sopas. Medicina tradicional: La albahaca se ha utilizado en la medicina tradicional para aliviar dolores de cabeza, trastornos digestivos y como un agente antiinflamatorio. Aromaterapia: El aceite esencial de albahaca se utiliza en la aromaterapia por su aroma relajante y revitalizante.','Siembra de la albahaca: La albahaca se cultiva fácilmente a partir de semillas o de esquejes. Aquí tienes los pasos para sembrar albahaca a partir de semillas: Selección de semillas: Compra semillas de albahaca de una tienda de jardinería confiable o de un vivero. Preparación del suelo: La albahaca prefiere un suelo bien drenado y rico en materia orgánica. Puedes enriquecer el suelo con compost antes de la siembra. Siembra de semillas: Siembra las semillas en filas a una profundidad de unos 0.5 cm a 1 cm, y luego cúbrelas con tierra. Deja un espacio de unos 20-30 cm entre las filas. Riego: Mantén el suelo húmedo, pero no empapado, durante el proceso de germinación y después.','Cosecha de la albahaca: La albahaca se puede cosechar cuando las hojas son lo suficientemente grandes para su uso. Aquí tienes algunos consejos para la cosecha de la albahaca: Cosecha regular: Recoge las hojas de albahaca de manera regular, comenzando por las hojas más grandes en la parte superior de la planta. Esto promoverá un crecimiento continuo. Cosecha antes de la floración: La albahaca tiende a volverse leñosa y perder calidad de sabor después de la floración. Para obtener la mejor calidad, cosecha antes de que aparezcan las flores. Corte o pellizco: Puedes cortar o pellizcar las hojas de albahaca, según tu preferencia. Si cortas, hazlo justo por encima de un par de hojas en un nodo de la planta. La albahaca es una hierba de fácil cultivo en climas cálidos y se adapta bien a macetas y jardines. Mantén el suelo húmedo y proporciona luz solar adecuada para obtener una cosecha saludable de albahaca fresca y fragante'),
(9,'Algodón','Malvaceae','blanco','algodon.jpg',' El algodón es una planta de la familia Malvaceae, científicamente conocida como Gossypium. Es apreciada por las fibras suaves y esponjosas que recubren las semillas en sus cápsulas, y estas fibras son la principal materia prima para la fabricación de textiles como algodón, ropa y productos de uso doméstico.','Uso del algodón: El algodón se utiliza principalmente en la industria textil para producir una amplia gama de productos, como ropa, sábanas, toallas, telas para muebles y más. Además, el aceite de algodón se extrae de las semillas y se utiliza en la cocina y en productos cosméticos y farmacéuticos.','Siembra del algodón: La siembra del algodón es un proceso agrícola que requiere condiciones específicas y cuidado. Aquí tienes los pasos clave para sembrar algodón: Selección de semillas: Elige semillas de algodón de alta calidad adaptadas a tu región y clima. Las variedades de algodón pueden variar según las condiciones locales. Preparación del suelo: El suelo debe estar bien drenado, suelto y rico en nutrientes. Se para y se prepara antes de la siembra. Época de siembra: La época de siembra varía según la región, pero generalmente se siembra en primavera cuando el suelo se ha calentado lo suficiente. Siembra de las semillas: Las semillas de algodón se siembran en surcos a una profundidad de aproximadamente 2 a 3 cm y se dejan suficiente espacio entre las filas para permitir el crecimiento de las plantas.','Cosecha del algodón: La cosecha del algodón se lleva a cabo cuando las cápsulas que contienen las fibras han madurado. Aquí tienes los pasos básicos para cosechar algodón: Madurez de las cápsulas: Las cápsulas de algodón maduran después de unos 5 meses desde la siembra. Cuando están listas, se vuelven de color marrón claro y se abren. Mecanización: La cosecha del algodón suele realizarse de manera mecanizada con cosechadoras de algodón que recolectan las cápsulas. Procesamiento: Después de la cosecha, las cápsulas se envían a una planta de procesamiento donde se separan las fibras de algodón de las semillas y otros materiales no deseados. Almacenamiento y comercialización: Las fibras de algodón limpias se empacan y almacenan en módulos o fardos antes de ser vendidas a la industria textil. La industria del algodón es un componente importante de la economía global, y el cultivo del algodón es una actividad agrícola clave en muchas partes del mundo'),
(10,'Amapola','Papaveraceae','amarilla','amapola.jpg',' La amapola, o Papaver somniferum, es una planta anual que pertenece a la familia Papaveraceae. Es conocida por sus flores vibrantes y sus cápsulas que contienen semillas y látex. Además, la amapola es la planta de la que se obtiene el opio, una sustancia utilizada en la producción de analgésicos y narcóticos.','Uso de la amapola: La amapola tiene varios usos y partes que son aprovechadas: Semillas de amapola: Las semillas de amapola son comestibles y se utilizan en panadería y repostería para decorar panes, pasteles y otros productos horneados. Tienen un sabor suave y una textura crujiente. Látex de amapola: El látex de amapola se utiliza para producir opio, que a su vez se emplea en la fabricación de analgésicos y narcóticos, como la morfina y la heroína. Esta parte de la planta es altamente regulada y controlada debido a su potencial adictivo y peligrosidad.','Siembra de la amapola: Si deseas sembrar amapolas en tu jardín, aquí tienes algunos pasos para hacerlo: Época de siembra: La amapola se siembra generalmente en primavera u otoño, dependiendo de la variedad y el clima de tu región. Preparación del suelo: Elige un lugar soleado con suelo bien drenado. Afloja el suelo y elimina las malezas antes de sembrar. Siembra de semillas: Las semillas de amapola son muy pequeñas, por lo que se deben sembrar en la superficie del suelo. Presiona suavemente las semillas en el suelo, pero no las cubras con tierra. Mantén el suelo húmedo durante la germinación.','Cosecha de la amapola: La cosecha de la amapola puede variar según el propósito. Aquí te doy algunas indicaciones: Para semillas: Las semillas de amapola se cosechan cuando las cápsulas estén secas y marrones. Corta las cápsulas y saca las semillas. Para látex: Si estás interesado en el látex, debes hacer una incisión en la cápsula inmadura para recolectar el látex blanco. Sin embargo, ten en cuenta que el cultivo y cosecha de látex de amapola suelen estar regulados y pueden ser ilegales en muchas áreas debido a su potencial de abuso y riesgos asociados con drogas.Es importante destacar que el cultivo de la amapola con el propósito de obtener opio o látex suele estar restringido y regulado debido a sus implicaciones legales y de salud. Antes de intentar cultivar amapolas, asegúrate de conocer y cumplir con las leyes y regulaciones locales aplicables.'),
(11,'Aníz','Apiaceae','canela','aniz.jpg','El anís (Pimpinella anisum) es una planta herbácea anual perteneciente a la familia Apiaceae. Es nativo de la región mediterránea y se cultiva por sus semillas, que tienen un sabor y aroma dulces, parecidos al hinojo y al regaliz.','Uso del anís: El anís se utiliza en la cocina, en la fabricación de licores y con fines medicinales. Algunos de los usos comunes incluyen:Culinario: Las semillas de anís se utilizan para aromatizar panes, galletas, pasteles y otros productos de repostería. También se emplean en la preparación de bebidas como el anís estrellado, el ouzo y el raki.Licor y aceite esencial: El anís se utiliza en la fabricación de licores como el anís dulce y el anís seco. Además, se extrae aceite esencial de anís para su uso en perfumes y aromaterapia.Propiedades medicinales: El anís se utiliza en remedios caseros para aliviar trastornos digestivos, tos y problemas respiratorios, entre otros.','Siembra del anís: El anís se cultiva a partir de semillas. Aquí tienes los pasos para sembrar anís: Selección de semillas: Elige semillas de anís de buena calidad de una tienda de jardinería o un proveedor confiable. Asegúrate de que las semillas estén frescas y sin daños. Preparación del suelo: El anís prefiere suelos bien drenados y fértiles. Puedes mejorar el suelo agregando compost o materia orgánica. Siembra: Siembra las semillas de anís a una profundidad de unos 1-2 cm en surcos espaciados aproximadamente a 20-30 cm. Deja un espacio de 5-10 cm entre cada planta. Riego: Riega las semillas después de la siembra y mantén el suelo húmedo durante el proceso de germinación.','Cosecha del anís: El anís se cosecha cuando las semillas están maduras y las cabezas florales comienzan a secarse, generalmente al final del verano o principios del otoño. Para cosechar el anís, sigue estos pasos: Corte: Corta las cabezas de las plantas de anís cuando las semillas estén maduras y las cabezas estén secas. Puedes hacerlo con tijeras de podar o simplemente cortar las cabezas de las plantas. Secado: Deja las cabezas secas en un lugar cálido y bien ventilado para que las semillas terminen de secarse completamente. Almacenamiento: Almacena las semillas secas en un lugar fresco y oscuro en un recipiente hermético. El cultivo del anís es relativamente sencillo y puede ser una adición sabrosa y aromática a tu jardín y a tu cocina. Además, las semillas de anís tienen una serie de usos en la cocina y en la medicina natural.'),
(12,'Banano','Musáceas','amarillo','banano.jpg','El banano es una fruta tropical perteneciente a la familia de las Musáceas y al género Musa. Es una planta de gran tamaño con hojas grandes y frutos alargados y curvos que se agrupan en racimos. Existen varias variedades de banano, como el banano común (Musa sapientum) y el plátano (Musa paradisiaca), que se diferencian por su sabor y uso.','Uso del banano: El banano se consume principalmente como fruta fresca, pero también tiene diversos usos en la cocina. Algunos de los usos comunes incluyen: Consumo fresco: Se come crudo como una fruta deliciosa y nutritiva. Postres: Se utiliza en la preparación de batidos, pasteles, muffins, pan de plátano y helados. Cocina salada: En algunas cocinas, los plátanos verdes se utilizan para hacer platos como tostones (plátanos fritos), patacones y tajadas (plátanos maduros fritos). Mermeladas y conservas: También se utilizan para hacer mermeladas, jaleas y chutneys','Siembra del banano: Los bananos se propagan a través de rizomas o bulbos llamados "cormos". Aquí tienes los pasos para cultivar bananos: Selección de cormos: Elige cormos sanos de una planta madre establecida. Cada cormo debe tener un brote. Plantación: Planta los cormos en un suelo bien drenado y rico en materia orgánica. Deja suficiente espacio entre las plantas, ya que los bananos crecen en grupos llamados "matas" o "cepas". La profundidad a la que se plantan los cormos puede variar, pero generalmente se dejan al nivel del suelo. Riego: Los bananos requieren riego regular para mantener el suelo húmedo, pero no anegado.','Cosecha del banano: Los bananos se cosechan cuando están maduros y listos para comer. Aquí tienes algunos consejos para la cosecha de bananos:Indicadores de madurez: Los bananos maduros tienen una cáscara amarilla o amarillo brillante, y las puntas deben estar redondeadas. Algunas variedades pueden tener ligeras manchas marrones en la piel. Corte o corte a mano: Puedes cortar racimos enteros con un cuchillo afilado o, en algunos casos, puedes torcerlos suavemente para desprenderlos de la planta.Cosecha antes de que maduren por completo: Si planeas transportar los bananos a largas distancias, es aconsejable cosecharlos cuando aún estén un poco verdes y permitir que maduren en un lugar más conveniente. Es importante señalar que la planta del banano puede dar frutos una vez en su vida, y después de la cosecha, un brote secundario (hija) se convierte en la nueva planta productora de bananos. La producción de bananos requiere un clima tropical o subtropical adecuado para su crecimiento'),
(13,'Berenjena','Solanáceas','morada','berenjena.jpg','La berenjena es una planta de la familia de las solanáceas que produce frutos de forma alargada, generalmente de color púrpura oscuro, aunque existen variedades de diferentes colores y formas. Es una hortaliza versátil en la cocina y se consume en una variedad de platos.','Uso de la berenjena: La berenjena se utiliza de diversas maneras en la cocina y es un ingrediente común en muchas culturas culinarias. Algunos de los usos comunes incluyen: Plato principal: Se puede utilizar como plato principal en preparaciones como berenjenas rellenas, moussaka o berenjenas a la parmesana. Asado o a la parrilla: Las berenjenas se pueden asar o cocinar a la parrilla, sirviéndolas como guarnición o como ingrediente en salsas y ensaladas. Salsa: La berenjena se puede usar para hacer salsas como la baba ganoush en la cocina mediterránea. Fritura: Las berenjenas también se pueden freír para preparar platos fritos crujientes.','Siembra de la berenjena: La berenjena se cultiva a partir de semillas y se desarrolla en un proceso que puede requerir paciencia. Sigue estos pasos para sembrar berenjena: Siembra en interiores: Comienza a sembrar las semillas en macetas o bandejas de semillero dentro de casa aproximadamente 8-10 semanas antes de la fecha estimada de la última helada en tu área. Germinación: Las semillas de berenjena pueden tardar en germinar, por lo que es importante proporcionarles un ambiente cálido y bien iluminado. Trasplante al jardín: Trasplanta las plántulas al jardín cuando tengan al menos 15-20 cm de altura y hayan pasado las últimas heladas de primavera.','Cosecha de la berenjena: La berenjena se cosecha cuando los frutos alcanzan un tamaño adecuado y antes de que maduren demasiado. Sigue estos pasos para cosechar berenjena: Cosecha a mano: Utiliza tijeras o un cuchillo para cortar los frutos de la planta. Evita tirar de ellos para no dañar la planta. Momento de la cosecha: La berenjena se cosecha cuando los frutos son de tamaño adecuado, generalmente antes de que alcancen 20-25 cm de largo y antes de que la piel se vuelva dura o brillante. Cosecha continua: A medida que vayas cosechando, la planta de berenjena continuará produciendo nuevos frutos, lo que te permitirá cosechar durante toda la temporada de crecimiento. La berenjena es una hortaliza que puede ser cultivada con éxito en climas cálidos y templados. Proporciona suficiente agua y cuidado para protegerla de plagas y enfermedades para lograr una cosecha saludable.'),
(14,'Brócoli','Crucífera','verde','brocoli.jpg','El brócoli, cuyo nombre científico es Brassica oleracea var. italica, es una verdura crucífera de color verde oscuro. Se caracteriza por su forma de ramillete con cabezas florales y tallos comestibles.','Uso del brócoli: El brócoli es una verdura muy versátil en la cocina y se puede utilizar de diversas maneras, incluyendo: Cocido al vapor o hervido: Se puede cocinar y servir como guarnición, ya sea solo o con salsas. En ensaladas: Se puede consumir crudo en ensaladas. En sopas y guisos: El brócoli se utiliza en sopas, guisos y platos de cacerola. Asado o salteado: Se puede asar o saltear con otros vegetales y aceite de oliva para resaltar su sabor.','Siembra del brócoli: El brócoli se cultiva a partir de semillas. Aquí tienes los pasos para sembrar brócoli: Época de siembra: El brócoli se puede sembrar en dos temporadas: primavera y otoño. En primavera, siembra las semillas al comienzo del año y, en otoño, siembra a mediados del verano. Preparación del suelo: Elige un lugar con suelo bien drenado y rico en materia orgánica. Puedes enmendar el suelo con compost antes de sembrar. Siembra de semillas: Siembra las semillas de brócoli a una profundidad de unos 0.5 cm en surcos o en hoyos individuales con un espaciado de unos 30 cm entre las plantas. Mantén el suelo húmedo pero no empapado. Trasplante: Después de que las plántulas tengan alrededor de 4-6 semanas y tengan varias hojas verdaderas, puedes trasplantarlas al jardín o en macetas más grandes. ','Cosecha del brócoli: La cosecha del brócoli se realiza cuando las cabezas florales están bien formadas pero antes de que las flores comiencen a abrirse. Aquí tienes algunos consejos para cosechar brócoli: Cosecha de la cabeza principal: Corta la cabeza principal de brócoli con un cuchillo afilado, dejando un pequeño tallo. La cabeza central se corta cuando tiene un tamaño adecuado, generalmente antes de que las flores comiencen a abrirse. Cosecha secundaria: Después de cortar la cabeza principal, la planta suele seguir produciendo brotes laterales más pequeños que también se pueden cosechar. Cosecha antes de que suba la temperatura: En climas cálidos, es importante cosechar antes de que haga demasiado calor, ya que el brócoli puede volverse amargo y desarrollar flores en climas calurosos. El brócoli es una verdura saludable y sabrosa que se puede cultivar en una amplia variedad de climas. Asegúrate de proporcionar el cuidado adecuado, como riego y protección contra plagas, para obtener una cosecha exitosa'),
(15,'Cacao','Theobroma','cafe','cacao.jpg','El cacao es el nombre de la planta y de sus frutos, que se utilizan para producir el cacao en polvo y la manteca de cacao, ingredientes fundamentales en la elaboración del chocolate. El nombre científico del cacao es Theobroma cacao.','Uso del cacao: El cacao se utiliza principalmente en la fabricación de chocolate, pero también tiene otros usos. Algunos de los usos comunes del cacao incluyen: Chocolate: El cacao es el ingrediente principal en la elaboración del chocolate, que puede ser oscuro, con leche o blanco. Bebidas calientes: El cacao en polvo se utiliza para preparar bebidas calientes de chocolate. Manteca de cacao: La manteca de cacao se utiliza en la industria alimentaria y cosmética para hacer productos como cremas y bálsamos labiales.','Siembra del cacao: El cacao se cultiva a partir de semillas que se encuentran en el interior de los frutos del cacao. Aquí tienes los pasos para sembrar cacao:Recolección de semillas: Extrae las semillas de los frutos maduros del cacao, que son las almendras dentro del cacao. Preparación de las semillas: Lava y seca las semillas y luego déjalas remojar en agua durante varios días para eliminar la pulpa que las rodea. Germinación: Planta las semillas en un sustrato adecuado en un lugar cálido y sombreado. La germinación puede tomar varias semanas.Trasplante: Cuando las plántulas tengan el tamaño adecuado, trasplántalas al campo en un lugar sombreado.','Cosecha del cacao: La cosecha del cacao se realiza cuando los frutos están maduros. Aquí algunos consejos para la cosecha del cacao: Madurez de los frutos: Los frutos del cacao están listos para la cosecha cuando cambian de verde a amarillo o naranja y se tornan suaves al tacto. Recolección: Los frutos se cosechan cortándolos del árbol con un cuchillo o una herramienta adecuada. Fermentación y secado: Después de la cosecha, los granos de cacao se deben fermentar y secar para desarrollar su sabor y calidad antes de ser procesados para hacer chocolate. La producción de cacao es una tarea que requiere cuidado y atención, ya que el cacao es susceptible a enfermedades y plagas. Se cultiva principalmente en regiones tropicales y subtropicales y desempeña un papel importante en la economía y la industria alimentaria a nivel mundial.'),
(16,'Café','Arbustivo','cafe','cafe.jpg',' La planta de café es un arbusto o pequeño árbol que produce granos de café, que son las semillas contenidas en el fruto del café. Las variedades más comunes son el café arábica (Coffea arabica) y el café robusta (Coffea canephora). El café es una de las bebidas más consumidas en el mundo y se obtiene a través de la molienda y preparación de los granos de café.','Uso del café: El café es apreciado por su sabor y aroma distintivos y su contenido de cafeína. Se consume en diversas formas, principalmente como bebida caliente o fría. Algunos usos y preparaciones comunes del café incluyen: Café negro: Preparado a partir de granos de café molidos y agua caliente. Puede ser servido solo o con azúcar y/o crema. Espresso: Un tipo de café concentrado preparado mediante la extracción de agua caliente a presión a través de granos de café finamente molidos. Café con leche: Café mezclado con leche caliente, a menudo servido con espuma de leche. Café frío: Café enfriado y servido con hielo.Otros productos: Los granos de café también se utilizan en la fabricación de productos como chocolates, helados y licores con sabor a café','Siembra de la planta de café: La planta de café se cultiva a partir de semillas que se encuentran en el interior de los frutos maduros. Aquí tienes los pasos para sembrar café: Selección de semillas: Recolecta frutos de café maduros de plantas saludables. Extrae las semillas, que se encuentran en el interior de los frutos. Preparación del suelo: Planta las semillas en un sustrato adecuado en una maceta o vivero. La mezcla de suelo debe ser bien drenada y rica en materia orgánica. Germinación y trasplante: Las semillas de café pueden tardar varias semanas en germinar. Una vez que las plántulas tengan un tamaño adecuado, pueden ser trasplantadas al campo o al lugar definitivo de cultivo.','Cosecha de la planta de café: La cosecha del café es una parte crucial del proceso de producción. Aquí tienes cómo se lleva a cabo: Cosecha manual: Los granos de café se cosechan manualmente de los arbustos. Esto se hace típicamente cuando los frutos están maduros y adquieren un color rojo brillante. Despulpado: Después de la cosecha, se extraen los granos de café de los frutos maduros. Secado: Los granos de café se secan al sol o en secadoras especiales hasta que alcancen un nivel de humedad adecuado para su almacenamiento. Tostado y molienda: Los granos de café secos se tuestan y luego se muelen para producir el café que se consume. La producción de café es un proceso que requiere tiempo, cuidado y atención a cada detalle, desde la siembra y el cultivo hasta la cosecha y el procesamiento de los granos. El sabor y la calidad del café dependen en gran medida de la variedad de café, el clima y el método de cultivo.');

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
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `prov_id` int(11) NOT NULL,
  `prov_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`prov_id`, `prov_nombre`) VALUES
(1, 'Gualiva'),
(2, 'Sabana Occidental');

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
(9, 'ElHugoMaria', 'Huginho', '1234', 'hugomariasenior@gamil.com'),
(10, 'Pepe Pérez', 'Ppz1', '1234', 'pepep@gmail.com'),
(11, 'santiago', 'Sa1', '123456', 'IVANPUTO@INTERNATIONALWELCOMS.');

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
  ADD KEY `prov_id` (`prov_id`);

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
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`prov_id`);

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
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `registrouser`
--
ALTER TABLE `registrouser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`prov_id`) REFERENCES `provincia` (`prov_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
