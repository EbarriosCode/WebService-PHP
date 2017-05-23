-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2017 a las 21:15:26
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `i_wish`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meta`
--

CREATE TABLE `meta` (
  `idMeta` int(3) NOT NULL,
  `titulo` varchar(56) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `prioridad` enum('Alta','Media','Baja','') COLLATE utf8_spanish_ci DEFAULT 'Alta',
  `fechaLim` date NOT NULL,
  `categoria` enum('Salud','Finanzas','Espiritual','Profesional','Material') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Finanzas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `meta`
--

INSERT INTO `meta` (`idMeta`, `titulo`, `descripcion`, `prioridad`, `fechaLim`, `categoria`) VALUES
(1, 'Comprar Mazda 6', 'Deseo adquirir un auto mazda 6 para mi desplazamiento en la ciudad. Debo investigar cómo conseguir mas fuentes de ingresos', 'Media', '2015-11-20', 'Material'),
(2, 'Obtener mi título de ingeniería de sistemas', 'Ya solo faltan 2 semestres para terminar mi carrera de ingeniería. Debo prepararme al máximo para desarrollar mi tesis de grado', 'Alta', '2016-06-17', 'Profesional'),
(3, 'Conquistar a Natasha', 'Natasha es la mujer de vida. Tengo que decírselo antes de que acabe el semestre', 'Alta', '2015-05-25', 'Espiritual'),
(4, 'Tener un peso de 70kg', 'Actualmente peso 92kg y estoy en sobrepeso. Sin embargo voy a seguir una rutina de ejercicios y un régimen alimenticio', 'Baja', '2016-05-13', 'Salud'),
(5, 'Incrementar un 30% mis ingresos', 'Conseguiré una fuente de ingresos alternativa que representen un 30% de los ingresos que recibo actualmente.', 'Media', '2015-10-13', 'Finanzas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `meta`
--
ALTER TABLE `meta`
  ADD PRIMARY KEY (`idMeta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `meta`
--
ALTER TABLE `meta`
  MODIFY `idMeta` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
