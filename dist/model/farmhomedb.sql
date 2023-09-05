-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2023 a las 14:23:42
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
(8, 'jennyfer sanchez', 'jenny1234', '12345', 'note@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registrouser`
--
ALTER TABLE `registrouser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registrouser`
--
ALTER TABLE `registrouser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
