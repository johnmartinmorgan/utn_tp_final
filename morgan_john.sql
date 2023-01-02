-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-01-2023 a las 00:28:13
-- Versión del servidor: 10.3.37-MariaDB-cll-lve
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `morganya_morgan_john`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apuntes`
--

CREATE TABLE `apuntes` (
  `id_apunte` int(11) NOT NULL,
  `nombre_apunte` int(11) NOT NULL,
  `autor_apunte` int(11) DEFAULT NULL,
  `archivo_apunte` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id_area` int(11) NOT NULL,
  `area` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id_area`, `area`) VALUES
(1, 'Fundamentos téoricos de la Bibliotecología y la Ciencia de la Información'),
(2, 'Procesamiento de la información'),
(3, 'Recursos y servicios de información'),
(4, 'Tecnología de la información'),
(5, 'Gestión de unidades de información'),
(6, 'Investigación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL,
  `apellido_autor` varchar(256) NOT NULL,
  `nombre_autor` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id_docente` int(11) NOT NULL,
  `apellido_docente` varchar(256) NOT NULL,
  `nombre_docente` varchar(256) NOT NULL,
  `contacto_docente` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id_docente`, `apellido_docente`, `nombre_docente`, `contacto_docente`) VALUES
(1, 'Luirette', 'Carlos Daniel', 'luirette@gmail.com '),
(2, 'Mancini', 'Ignacio', 'mancini@gmail.com '),
(4, 'Valinoti', 'Beatriz Cecilia', 'valinoti@gmail.com'),
(5, 'Silva', 'Carmen Leonilda', 'silva@gmail.com'),
(6, 'Ferreyra', 'Diego', 'ferreyra@gmail.com'),
(7, 'Fernández Zelcer', 'Federico', 'zelcer@gmail.com'),
(8, 'García', 'Irma Luz', 'garcia@gmail.com'),
(9, 'Portugal', 'Mercedes', 'portugal@gmail.com'),
(10, 'Crea', 'Claudia', 'crea@gmail.com'),
(13, 'López', 'Ramiro', 'lopez@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `materia` varchar(256) NOT NULL,
  `area_materia` int(11) DEFAULT NULL,
  `orientacion_materia` int(11) DEFAULT NULL,
  `cuatrimestre_materia` varchar(256) DEFAULT NULL,
  `regimen_materia` varchar(256) DEFAULT NULL,
  `opt_oblig` varchar(256) DEFAULT NULL,
  `descripcion_materia` varchar(256) DEFAULT NULL,
  `titular_materia` int(11) DEFAULT NULL,
  `jtp_materia` int(11) DEFAULT NULL,
  `contacto_materia` varchar(256) DEFAULT NULL,
  `programa_materia` varchar(256) DEFAULT NULL,
  `fecha_programa` int(11) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orientaciones`
--

CREATE TABLE `orientaciones` (
  `id_orientacion` int(11) NOT NULL,
  `orientacion` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orientaciones`
--

INSERT INTO `orientaciones` (`id_orientacion`, `orientacion`) VALUES
(1, 'Archivología'),
(2, 'Gestión de unidades de información'),
(3, 'Preservación y conservación'),
(4, 'Recursos y servicios de información'),
(5, 'Tecnología de la información'),
(6, 'Procesamiento de la información');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apuntes`
--
ALTER TABLE `apuntes`
  ADD PRIMARY KEY (`id_apunte`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id_docente`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `orientaciones`
--
ALTER TABLE `orientaciones`
  ADD PRIMARY KEY (`id_orientacion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apuntes`
--
ALTER TABLE `apuntes`
  MODIFY `id_apunte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `apuntes`
--
ALTER TABLE `apuntes`
  ADD CONSTRAINT `apuntes_ibfk_1` FOREIGN KEY (`id_apunte`) REFERENCES `autores` (`id_autor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
