-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2015 a las 12:41:33
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `distribuidora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `Codigo_de_cliente` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Codigo_Postal` char(5) NOT NULL,
  `Provincia` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Codigo_de_cliente`, `Nombre`, `Direccion`, `Codigo_Postal`, `Provincia`, `Telefono`) VALUES
('C01', 'El Corte Inglés', 'C/ Preciados', '28002', 'Madrid', '13212234'),
('C02', 'Galerías Preciados', 'Parquesur', '28915', 'Madrid', '15485632'),
('C03', 'Alcampo', 'C/ Lago', '08843', 'Barcelona', '34587550'),
('C04', 'Continente', 'C/ Santander', '14567', 'Valencia', '64005231'),
('C05', 'Pryca', 'Crta. Andalucía', '28135', 'Madrid', '13256523'),
('C06', 'Mercadona', 'C/ Camino Viejo', '28845', 'Madrid', '14456002'),
('C07', 'Alcosto', 'C/ Unamuno', '14652', 'Valencia', '64403210'),
('C08', 'Hipercor', 'C/ Ulises', '08001', 'Barcelona', '34536320'),
('C09', 'Yumbo', 'C/ Carretas', '14321', 'Valencia', '65002336'),
('C10', 'El Corte Inglés', 'C/ Goya', '28003', 'Madrid', '15689292'),
('C11', 'Hipercor', 'San José de Valderas', '28465', 'Madrid', '14586985'),
('C12', 'Mercadona', 'C/ Fuensanta', '08080', 'Barcelona', '36658956');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `Codigo_de_empleado` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Codigo_Postal` char(5) NOT NULL,
  `Provincia` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Fijo` tinyint(1) NOT NULL DEFAULT '0',
  `Salario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`Codigo_de_empleado`, `Nombre`, `Apellidos`, `Direccion`, `Codigo_Postal`, `Provincia`, `Telefono`, `Fijo`, `Salario`) VALUES
('E01', 'Juan', 'García', 'C/ Mayor, 4', '004', 'Madrid', '4568978', 1, 665),
('E02', 'Pedro', 'López', 'C /Luna, 4', '035', 'Madrid', '4563210', 1, 905),
('E03', 'Luisa', 'Fernández', 'C/ Sal, 3', '063', 'Madrid', '2010035', 0, 845),
('E04', 'Gerardo', 'Morales', 'C/ Pez, 2', '104', 'Madrid', '5462300', 1, 1145),
('E05', 'Oscar', 'González', 'C/ Rioja, 3', '986', 'Madrid', '2546631', 0, 1205),
('E06', 'Javier', 'Martínez', 'C/ Alcarria, 4', '564', 'Madrid', '5420010', 0, 905),
('E07', 'Jesús', 'Lorca', 'C/ Mancha, 3', '013', 'Madrid', '6685623', 1, 1085),
('E08', 'Susana', 'Buendía', 'C/ Europa, 4', '005', 'Madrid', '6885420', 1, 1270),
('E09', 'Luis', 'Simón', 'C/ Valeriano, 3', '010', 'Madrid', '6845720', 0, 905);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE IF NOT EXISTS `libros` (
  `Codigo_de_libro` varchar(50) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Autor` varchar(50) NOT NULL,
  `Editorial` varchar(50) NOT NULL,
  `Precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`Codigo_de_libro`, `Titulo`, `Autor`, `Editorial`, `Precio`) VALUES
('L01', 'Los pilares de la tierra', 'Ken Follett', 'Planeta', 5.4),
('L02', 'Cien años de soledad', 'Gabriel García Márquez', 'Cátedra', 9),
('L03', 'Las inquietudes de Santi Andia', 'Pío Baroja', 'Salvat', 9.65),
('L04', 'Malena es un nombre de Tango', 'Almudena Grandes', 'Salvat', 10.8),
('L05', 'Mas allá del Jardín', 'Antonio Gala', 'Planeta', 7.5),
('L06', 'La Busca', 'Pío Baroja', 'Cátedra', 6),
('L07', 'El Padrino', 'Umberto Eco', 'Salvat', 7.8),
('L08', 'El capitán Alatriste', 'Arturo Pérez Reverte', 'Cátedra', 9),
('L09', 'Relato de un naúfrago', 'Gabriel García Márquez', 'Planeta', 5.4),
('L10', 'Tuareg', 'Alberto Vázquez Figueroa', 'Planeta', 7.5),
('L11', 'La sombra del ciprés es alargada', 'Miguel Delibes', 'Salvat', 6.65),
('L12', 'La Celestina', 'Fernando Rojas', 'Planeta', 6),
('L13', 'Misterio de la Cripta embrujada', 'Eduardo Mendoza', 'Salvat', 7.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `Numero_de_Pedido` varchar(50) NOT NULL,
  `Fecha_de_pedido` datetime NOT NULL,
  `Fecha_de_entrega` datetime NOT NULL,
  `Plazo_de_pago` int(11) NOT NULL,
  `Codigo_de_cliente` varchar(50) NOT NULL,
  `Codigo_de_empleado` varchar(50) NOT NULL,
  `Codigo_de_libro` varchar(50) NOT NULL,
  `Unidades` int(11) NOT NULL,
  `Descuento` float NOT NULL,
  `Observaciones` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Numero_de_Pedido`, `Fecha_de_pedido`, `Fecha_de_entrega`, `Plazo_de_pago`, `Codigo_de_cliente`, `Codigo_de_empleado`, `Codigo_de_libro`, `Unidades`, `Descuento`, `Observaciones`) VALUES
('P001', '1996-07-17 00:00:00', '1996-08-01 00:00:00', 0, 'C01', 'E02', 'L01', 15, 0.15, 'Entregar por las mañanas'),
('P002', '1996-06-22 00:00:00', '1996-08-05 00:00:00', 0, 'C03', 'E01', 'L02', 25, 0.15, ''),
('P003', '1996-07-17 00:00:00', '1996-08-02 00:00:00', 60, 'C06', 'E05', 'L04', 18, 0.15, 'Llamar antes de entregar'),
('P004', '1996-12-25 00:00:00', '1997-01-01 00:00:00', 0, 'C08', 'E06', 'L09', 36, 0.15, ''),
('P005', '1996-03-24 00:00:00', '1996-05-01 00:00:00', 90, 'C02', 'E02', 'L02', 51, 0.25, 'Llamar antes de entregar'),
('P006', '1996-06-22 00:00:00', '1996-08-10 00:00:00', 60, 'C05', 'E01', 'L06', 42, 0.25, ''),
('P007', '1996-03-03 00:00:00', '1996-05-02 00:00:00', 90, 'C03', 'E05', 'L05', 53, 0.25, 'Entregar a la nueve de la mañana'),
('P008', '1996-07-17 00:00:00', '1996-08-02 00:00:00', 60, 'C05', 'E04', 'L02', 50, 0.25, ''),
('P009', '1996-10-11 00:00:00', '1996-11-01 00:00:00', 0, 'C04', 'E06', 'L03', 67, 0.25, ''),
('P010', '1996-10-09 00:00:00', '1996-11-02 00:00:00', 9, 'C02', 'E07', 'L04', 42, 0.25, 'Llevar las facturas'),
('P011', '1996-02-20 00:00:00', '1996-05-01 00:00:00', 0, 'C01', 'E03', 'L03', 19, 0.15, ''),
('P012', '1996-01-18 00:00:00', '1996-05-03 00:00:00', 60, 'C04', 'E04', 'L04', 50, 0.25, 'Entregar solamente en el almacén'),
('P013', '1996-03-28 00:00:00', '1996-05-04 00:00:00', 60, 'C06', 'E01', 'L10', 40, 0.15, ''),
('P014', '1996-06-22 00:00:00', '1996-08-26 00:00:00', 0, 'C12', 'E05', 'L04', 50, 0.15, ''),
('P015', '1996-02-18 00:00:00', '1996-05-24 00:00:00', 90, 'C12', 'E03', 'L05', 21, 0.25, 'Llamar antes de entregar');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
