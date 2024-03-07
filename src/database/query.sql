-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mariadb
-- Tiempo de generación: 23-02-2024 a las 03:11:12
-- Versión del servidor: 11.2.3-MariaDB-1:11.2.3+maria~ubu2204
-- Versión de PHP: 8.2.8
CREATE DATABASE epicgames;
use epicgames;
--
-- Base de datos: `epicgames`
--

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

-- Volcado de datos para la tabla `juego`
--

/* INSERT INTO `juego` (`idJuego`, `nombreJ`, `precio`, `class`, `dev`, `anio`, `editor`) VALUES
('101', 'Skyrim', 20, 'Aventura', 'Bethesda', '2020', 'Bethesda Softworks'),
('102', 'GTA V', 30, 'Acción', 'Rockstar Games', '2019', 'Rockstar North'),
('103', 'Fortnite', 25, 'Estrategia', 'Epic Games', '2021', 'Epic'),
('104', 'Realm Royale', 15, 'Simulación', 'Guevaru Games', '2018', 'JuanSal Games'),
('105', 'The Witcher 3', 40, 'RPG', 'CD Projekt', '2017', 'Warner B');
 */
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

/* INSERT INTO `usuario` (`idUsuario`, `nickname`, `edad`, `region`, `telefono`, `correo`) VALUES
('1', 'inexx', 25, 'América', '7350986543', 'inexx777@gmail.com'),
('2', 'tizoc', 30, 'Europa', '7351238905', 'tizsalas@gmail.com'),
('3', 'Beban', 22, 'Asia', '7359830476', 'bebardo@gmail.com'),
('4', 'E12', 28, 'África', '7356783546', 'papitas32@gmail.com'),
('5', 'CalvoYT', 23, 'Oceanía', '7351241139', 'vegetta777@gmail.com'); */

--
-- Índices para tablas volcadas
--
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

SELECT * FROM juego;
