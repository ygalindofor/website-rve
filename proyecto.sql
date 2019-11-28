-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2018 a las 23:23:40
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `cod_alum` int(11) NOT NULL,
  `nom_alum` varchar(30) NOT NULL,
  `puntaje` double NOT NULL,
  `cod_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinador`
--

CREATE TABLE `coordinador` (
  `cod_coor` int(10) NOT NULL,
  `nom_coor` varchar(30) NOT NULL,
  `email_coor` varchar(50) NOT NULL,
  `cod_inst` int(10) DEFAULT NULL,
  `pass_coor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `coordinador`
--

INSERT INTO `coordinador` (`cod_coor`, `nom_coor`, `email_coor`, `cod_inst`, `pass_coor`) VALUES
(45, 'Natalia', 'natatri@gmail.com', 1, '564hf89'),
(89, 'Gabriel', 'gabriel3498@gmail.com', 1, '2210'),
(123, 'Sharol', 'sharol@gmail.com', 1, '355hfgd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `cod_curso` int(11) NOT NULL,
  `nom_curso` varchar(30) NOT NULL,
  `porcentaje` double NOT NULL,
  `cod_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `cod_inst` int(10) NOT NULL,
  `nom_inst` varchar(30) NOT NULL,
  `tel_inst` int(11) NOT NULL,
  `dir_inst` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`cod_inst`, `nom_inst`, `tel_inst`, `dir_inst`) VALUES
(1, 'INSTITUCIÓN EDUCATIVA LAS VILL', 7364545, 'cll 6a 13-4'),
(2, 'INSTITUCIÓN EDUCATIVA LEÓN XII', 7364665, 'cll 6b 17-4'),
(3, 'INSTITUCIÓN EDUCATIVA SAN MATE', 7677665, 'cll 6b 18-5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `cod_prof` int(10) NOT NULL,
  `nom_prof` varchar(30) NOT NULL,
  `email_prof` varchar(50) NOT NULL,
  `cod_inst` int(10) DEFAULT NULL,
  `pass_prof` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`cod_alum`),
  ADD KEY `cod_curso` (`cod_curso`);

--
-- Indices de la tabla `coordinador`
--
ALTER TABLE `coordinador`
  ADD PRIMARY KEY (`cod_coor`),
  ADD KEY `cod_inst` (`cod_inst`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cod_curso`),
  ADD KEY `fk_profesor` (`cod_prof`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`cod_inst`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`cod_prof`),
  ADD KEY `cod_inst` (`cod_inst`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`cod_curso`) REFERENCES `curso` (`cod_curso`);

--
-- Filtros para la tabla `coordinador`
--
ALTER TABLE `coordinador`
  ADD CONSTRAINT `coordinador_ibfk_1` FOREIGN KEY (`cod_inst`) REFERENCES `institucion` (`cod_inst`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `fk_profesor` FOREIGN KEY (`cod_prof`) REFERENCES `profesor` (`cod_prof`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`cod_inst`) REFERENCES `institucion` (`cod_inst`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
