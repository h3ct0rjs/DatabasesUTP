-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Base de datos: `h3ct0rjs`
--
-- --------------------------------------------------------

--
-- Test SQL using a graphical interface.
--

CREATE TABLE `clients` (
  `Cedula` varchar(16) COLLATE utf8_bin NOT NULL COMMENT 'Identificacion',
  `PrimerNombre` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'Primer Nombre del Cliente',
  `SegundoNombre` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'Segundo Apellido del Cliente',
  `PrimerApellido` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'Primer Apellido Cliente',
  `SegundoApellido` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'Segundo Apellido Cliente',
  `Fecha_nac` date NOT NULL COMMENT 'Fecha de Nacimiento',
  `Ciudad` text COLLATE utf8_bin NOT NULL COMMENT 'Ciudad de Residencia',
  `Celular` varchar(14) COLLATE utf8_bin NOT NULL,
  `Salario` decimal(8,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`Cedula`, `PrimerNombre`, `SegundoNombre`, `PrimerApellido`, `SegundoApellido`, `Fecha_nac`, `Ciudad`, `Celular`, `Salario`) VALUES
('110165369', 'Juan ', 'Andres', 'Jimenez', 'Kornam', '2017-03-07', 'Pereira', '0573108941057', '1300000'),
('45456', 'Juan ', 'Andres', 'Jimenez', 'Kornam', '2017-03-07', 'Pereira', '0573108941057', '1300000'),
('968798789', 'Crisnayler ', '', 'Jimenez', 'Kornam', '2017-03-07', 'Pereira', '0573108941057', '1300000'),
('99999', 'Juan ', 'Andres', 'Jimenez', 'Kornam', '2017-03-07', 'Pereira', '0573108941057', '1300000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`Cedula`),
  ADD KEY `Apellido` (`PrimerApellido`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
