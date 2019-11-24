-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2019 a las 13:14:58
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `testcalculado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_restaurant`
--

CREATE TABLE `tb_restaurant` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Latitud` varchar(15) NOT NULL,
  `Longitud` varchar(15) NOT NULL,
  `Tipo_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_restaurant`
--

INSERT INTO `tb_restaurant` (`Id`, `Name`, `Latitud`, `Longitud`, `Tipo_Id`) VALUES
(1, 'Oishii resutoran', '4.674074', '-74.047538', 1),
(2, 'Kashmiri Aloo Dum', '4.697280', '-74.073054', 2),
(3, 'Nuestra Pizza', '4.616441', '-74.103437', 3),
(4, 'Tallarini', '4.738209', '-74.089064', 4),
(5, 'Rapidisimos', '4.669713', '-74.118897', 3),
(6, 'Badam Barfi', '4.714520', '-74.033823', 5),
(7, 'La Changua de doña Esther', '4.699771', '-74.113041', 6),
(8, 'Hamburguesas El Loko', '4.619961', '-74.110921', 3),
(9, 'El Osobuco de Pedro', '4.703483', '-74.032329', 7),
(10, 'El Bagre Elegante', '4.679945', '-74.053856', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo`
--

CREATE TABLE `tb_tipo` (
  `Id` int(11) NOT NULL,
  `Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_tipo`
--

INSERT INTO `tb_tipo` (`Id`, `Name`) VALUES
(1, 'Japonesa'),
(2, 'Hindú'),
(3, 'Rapida'),
(4, 'Italiana'),
(5, 'Vegana'),
(6, 'Tipica Col'),
(7, 'Carnes'),
(8, 'Pescadería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_user`
--

CREATE TABLE `tb_user` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `User` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_user`
--

INSERT INTO `tb_user` (`Id`, `Name`, `User`, `Password`) VALUES
(1, 'Laura', 'paprika', 'paprika'),
(2, 'Lau', 'etnacorc', 'etnacorc'),
(3, 'Erick', 'Loko', 'Loko'),
(4, 'Daniel', 'Dann', 'Specter'),
(5, 'Melissa', 'Melissan', 'cancan'),
(6, 'Andres', 'Nato', 'cascas'),
(7, 'Julian', 'Jul', 'bububu'),
(8, 'Leidy', 'Lady', 'lalala'),
(9, 'Murilo', 'Oliveira', 'lalala'),
(10, 'Lucas', 'Costa', 'brbrbr'),
(11, 'Luana', 'Luna', 'lelele'),
(12, 'Carlos', 'Rocha', 'rororo'),
(13, 'Julian', 'Carvalho', 'pepeep'),
(14, 'Thiago', 'Rocha', 'limlim'),
(15, 'Sousa', 'Oliv', 'vivivi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_userscore`
--

CREATE TABLE `tb_userscore` (
  `Id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Restaurant_id` int(11) NOT NULL,
  `Score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_userscore`
--

INSERT INTO `tb_userscore` (`Id`, `User_id`, `Restaurant_id`, `Score`) VALUES
(1, 1, 1, 4),
(2, 2, 1, 3),
(3, 1, 1, 5),
(4, 3, 1, 2),
(5, 3, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_restaurant`
--
ALTER TABLE `tb_restaurant`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Tipo` (`Tipo_Id`);

--
-- Indices de la tabla `tb_tipo`
--
ALTER TABLE `tb_tipo`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tb_userscore`
--
ALTER TABLE `tb_userscore`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Tb_User` (`User_id`),
  ADD KEY `fk_Restaurant` (`Restaurant_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_restaurant`
--
ALTER TABLE `tb_restaurant`
  ADD CONSTRAINT `fk_Tipo` FOREIGN KEY (`Tipo_Id`) REFERENCES `tb_tipo` (`Id`);

--
-- Filtros para la tabla `tb_userscore`
--
ALTER TABLE `tb_userscore`
  ADD CONSTRAINT `Tb_User` FOREIGN KEY (`User_id`) REFERENCES `tb_user` (`Id`),
  ADD CONSTRAINT `fk_Restaurant` FOREIGN KEY (`Restaurant_id`) REFERENCES `tb_restaurant` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
