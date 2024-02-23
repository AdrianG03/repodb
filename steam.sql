-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mariadb
-- Tiempo de generación: 23-02-2024 a las 03:11:12
-- Versión del servidor: 11.2.3-MariaDB-1:11.2.3+maria~ubu2204
-- Versión de PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `steam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `idJuego` varchar(30) NOT NULL,
  `idUsuario` varchar(30) NOT NULL,
  `fechaAd` date NOT NULL,
  `horas` double NOT NULL,
  `clasificacion` varchar(50) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`idJuego`, `idUsuario`, `fechaAd`, `horas`, `clasificacion`, `estado`) VALUES
('101', '1', '2023-01-01', 10.5, 'E10+', 'Activo'),
('102', '2', '2022-05-15', 20.2, 'M', 'Activo'),
('103', '3', '2023-11-30', 15.75, 'T', 'Inactivo'),
('104', '4', '2021-03-20', 5.3, 'E', 'Activo'),
('105', '5', '2024-02-10', 30.1, 'E10+', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idObjeto` varchar(30) NOT NULL,
  `idUsuario` varchar(30) NOT NULL,
  `nombreO` varchar(50) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idObjeto`, `idUsuario`, `nombreO`, `tipo`, `estado`) VALUES
('201', '1', 'Objeto1', 'Consumible', 'Nuevo'),
('202', '2', 'Objeto2', 'Equipamiento', 'Usado'),
('203', '3', 'Objeto3', 'Arma', 'Nuevo'),
('204', '4', 'Objeto4', 'Consumible', 'Usado'),
('205', '5', 'Objeto5', 'Armadura', 'Nuevo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `idJuego` varchar(30) NOT NULL,
  `nombreJ` varchar(50) NOT NULL,
  `precio` int(10) NOT NULL,
  `class` varchar(50) NOT NULL,
  `dev` varchar(50) NOT NULL,
  `anio` varchar(4) NOT NULL,
  `editor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`idJuego`, `nombreJ`, `precio`, `class`, `dev`, `anio`, `editor`) VALUES
('101', 'Juego1', 20, 'Aventura', 'Desarrollador1', '2020', 'Editor1'),
('102', 'Juego2', 30, 'Acción', 'Desarrollador2', '2019', 'Editor2'),
('103', 'Juego3', 25, 'Estrategia', 'Desarrollador3', '2021', 'Editor3'),
('104', 'Juego4', 15, 'Simulación', 'Desarrollador4', '2018', 'Editor4'),
('105', 'Juego5', 40, 'RPG', 'Desarrollador5', '2017', 'Editor5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` varchar(30) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `edad` int(3) NOT NULL,
  `region` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nickname`, `edad`, `region`, `telefono`, `correo`) VALUES
('1', 'usuario1', 25, 'América', '1234567890', 'usuario1@example.com'),
('2', 'usuario2', 30, 'Europa', '0987654321', 'usuario2@example.com'),
('3', 'usuario3', 22, 'Asia', '1357924680', 'usuario3@example.com'),
('4', 'usuario4', 28, 'África', '2468013579', 'usuario4@example.com'),
('5', 'usuario5', 35, 'Oceanía', '9876543210', 'usuario5@example.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idJuego` (`idJuego`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idObjeto`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`idJuego`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD CONSTRAINT `biblioteca_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `biblioteca_ibfk_2` FOREIGN KEY (`idJuego`) REFERENCES `juego` (`idJuego`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
