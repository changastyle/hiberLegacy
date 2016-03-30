-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-03-2016 a las 18:01:05
-- Versión del servidor: 5.5.47-0+deb8u1
-- Versión de PHP: 5.6.17-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `hiberlegacy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Promociones`
--

CREATE TABLE IF NOT EXISTS `Promociones` (
`id` int(11) NOT NULL,
  `desde` date NOT NULL,
  `hasta` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Promociones`
--

INSERT INTO `Promociones` (`id`, `desde`, `hasta`) VALUES
(1, '2016-03-30', '2016-03-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reserva`
--

CREATE TABLE IF NOT EXISTS `Reserva` (
`id` int(11) NOT NULL,
  `fechaDeReserva` date NOT NULL,
  `usuario` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Venta`
--

CREATE TABLE IF NOT EXISTS `Venta` (
`id` int(11) NOT NULL,
  `fechaDeCompra` date NOT NULL,
  `precio` double NOT NULL,
  `producto` varchar(120) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Venta`
--

INSERT INTO `Venta` (`id`, `fechaDeCompra`, `precio`, `producto`, `cantidad`) VALUES
(1, '2016-03-30', 23.4, 'pepino', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Promociones`
--
ALTER TABLE `Promociones`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Reserva`
--
ALTER TABLE `Reserva`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Venta`
--
ALTER TABLE `Venta`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Promociones`
--
ALTER TABLE `Promociones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `Reserva`
--
ALTER TABLE `Reserva`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Venta`
--
ALTER TABLE `Venta`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
