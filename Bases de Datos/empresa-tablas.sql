-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2020 a las 11:39:45
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: empresa
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla departamento
--

CREATE TABLE departamento (
  deptNum int(2) NOT NULL,
  deptNombre varchar(15) DEFAULT NULL,
  deptLocalidad varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla departamento
--

INSERT INTO departamento (deptNum, deptNombre, deptLocalidad) VALUES
(3, 'Contabilidad', 'Barcelona'),
(4, 'Recursos humano', 'Sevilla'),
(6, 'Marketing', 'Madrid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla empleados
--

CREATE TABLE empleados (
  emplNum int(4) NOT NULL,
  emplNombre varchar(50) DEFAULT NULL,
  emplPuesto varchar(15) DEFAULT NULL,
  emplDeptNum int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla empleados
--

INSERT INTO empleados (emplNum, emplNombre, emplPuesto, emplDeptNum) VALUES
(8, 'Olga Seosa', 'Compras', 3),
(15, 'Pere Gil', 'Comercial', 6),
(22, 'Armando Bronca', 'Seguridad', 4),
(27, 'Aitor Menta', 'Contable', 3),
(45, 'Encarna Vales', 'Formación', 4),
(134, 'Txema Foro', 'Publicista', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla departamento
--
ALTER TABLE departamento
  ADD PRIMARY KEY (deptNum);

--
-- Indices de la tabla empleados
--
ALTER TABLE empleados
  ADD PRIMARY KEY (emplNum);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
