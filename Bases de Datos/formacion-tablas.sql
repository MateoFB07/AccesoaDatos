-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2020 a las 11:40:05
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
-- Base de datos: formacion
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla cursos
--

CREATE TABLE cursos (
  id int(11) NOT NULL,
  profesor int(3) NOT NULL,
  nombre varchar(50) NOT NULL,
  duracion int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla cursos
--

INSERT INTO cursos (id, profesor, nombre, duracion) VALUES
(1, 1, 'Dreamweaver', 40),
(2, 2, 'Office', 20),
(3, 1, 'Office', 20),
(4, 3, 'Wordpress', 40),
(5, 4, 'MySQL', 30),
(6, 4, 'Dreamweaver', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla profesores
--

CREATE TABLE profesores (
  id int(3) NOT NULL,
  nombre varchar(50) NOT NULL,
  apellido varchar(50) NOT NULL,
  calle varchar(100) NOT NULL,
  cp char(5) NOT NULL,
  poblacion varchar(50) NOT NULL,
  nacimiento date NOT NULL,
  sexo enum('hombre','mujer') NOT NULL DEFAULT 'mujer',
  sueldo int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla profesores
--

INSERT INTO profesores (id, nombre, apellido, calle, cp, poblacion, nacimiento, sexo, sueldo) VALUES
(1, 'Juan ', 'López', 'Alamo, 35', '28001', 'Madrid', '1980-01-12', 'hombre', 1400),
(2, 'Marta', 'Pérez', 'Av. Mediterraneo, 56', '08002', 'Barcelona', '1985-05-22', 'mujer', 1800),
(3, 'Cristina', 'García', 'Valdivieso, 12', '28003', 'Madrid', '1992-07-04', 'mujer', 1000),
(4, 'Alfredo', 'Hernandez', 'Volapie, 25', '28005', 'Madrid', '1969-11-25', 'hombre', 1500),
(5, 'María Jesús', 'Muñoz', 'Paralelo, 16', '08002', 'Barcelona', '1988-01-23', 'mujer', 1700);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla cursos
--
ALTER TABLE cursos
  ADD PRIMARY KEY (id);

--
-- Indices de la tabla profesores
--
ALTER TABLE profesores
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla cursos
--
ALTER TABLE cursos
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla profesores
--
ALTER TABLE profesores
  MODIFY id int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
