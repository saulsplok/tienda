-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2016 a las 06:40:10
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cariitocompras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `Id` int(11) NOT NULL,
  `numeroventa` int(11) DEFAULT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imagen` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `precio` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cantidad` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `subtotal` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`Id`, `numeroventa`, `nombre`, `imagen`, `precio`, `cantidad`, `subtotal`) VALUES
(1, 1, 'balo nike', 'balonike.jpg', '200', '1', '200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `descripcion` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imagen` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(1, 'teni adida', 'blanco', 'adidablanco.jpg', 700),
(2, 'balo nike', 'balon chido', 'balonike.jpg', 200),
(3, 'chamarra nike', 'buena chamarra', 'chamarranike.jpg', 900),
(4, 'computadora', 'computadora gris', 'computadora.jpg', 4500),
(5, 'leggins nike', 'increible color negro', 'legginsnike.jpg', 1200),
(6, 'pans nike', 'pans colo gris', 'pansnike.jpg', 1110),
(7, 'tacon nike', 'tacones nike color rosa', 'taconnike.jpg', 1400),
(8, 'teni nike ', 'teni color naranja', 'teninaranja.jpg', 800),
(9, 'lente', 'lentes de sol', 'lente.jpg', 250),
(10, 'short nike', 'buen color', 'short.jpg', 190);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Apellido` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Usuario` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Password` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Imagen` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Nivel` varchar(15) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Apellido`, `Usuario`, `Password`, `Imagen`, `Nivel`) VALUES
(1, 'Saul', 'Splok', 'SaulSplok', '123', 'imagen.jpg', 'admin'),
(2, 'usuario', 'uno', 'user', '123', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
