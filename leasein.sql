-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2021 a las 05:23:47
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `leasein`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arrendamiento`
--

CREATE TABLE `arrendamiento` (
  `idArrendamiento` int(10) NOT NULL,
  `idUsuario` int(10) DEFAULT NULL,
  `idCliente` int(10) DEFAULT NULL,
  `idProducto` int(10) DEFAULT NULL,
  `idFactura` int(10) DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `totalArrendamiento` int(10) DEFAULT NULL,
  `fechaArrendamiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `arrendamiento`
--

INSERT INTO `arrendamiento` (`idArrendamiento`, `idUsuario`, `idCliente`, `idProducto`, `idFactura`, `periodo`, `totalArrendamiento`, `fechaArrendamiento`) VALUES
(1, 1, 1, 1, 1, '12 MESES', 2000, '2021-04-30'),
(2, 2, 2, 2, 2, '24 MESES', 5000, '2021-04-30'),
(3, 3, 3, 3, 3, '12 MESES', 2000, '2021-04-30'),
(4, 4, 4, 4, 4, '8 MESES', 1000, '2021-04-30'),
(5, 5, 5, 5, 5, '24 MESES', 2000, '2021-04-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(10) NOT NULL,
  `nombreCategoria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nombreCategoria`) VALUES
(1, 'EQUIPO DE ESCRITORIO'),
(2, 'EQUIPO PORTATIL'),
(3, 'TABLETS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(10) NOT NULL,
  `dniCliente` int(8) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `telefono` int(10) DEFAULT NULL,
  `idDireccion` int(10) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `dniCliente`, `nombres`, `correo`, `telefono`, `idDireccion`, `fechaNacimiento`, `fechaIngreso`) VALUES
(1, 45678954, 'LETICIA DELGADO', 'LETI94@GMAIL.COM', 987654321, 1, '1994-05-29', '2021-04-29'),
(2, 65498778, 'JUAN BATISTA', 'JUAN94@GMAIL.COM', 987456123, 2, '1995-09-11', '2021-04-30'),
(3, 96385241, 'GIULIANA SANTOS', 'GIUL94@GMAIL.COM', 945987321, 3, '1990-10-05', '2021-04-30'),
(4, 74185236, 'KATHERIN PALACIOS', 'KATH94@GMAIL.COM', 951753852, 4, '1990-08-05', '2021-04-30'),
(5, 72938146, 'ANTHONY QUISPE', 'ANTH94@GMAIL.COM', 908004006, 5, '1990-01-15', '2021-04-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoproducto`
--

CREATE TABLE `estadoproducto` (
  `idEstadoProducto` int(10) NOT NULL,
  `estadoProducto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadoproducto`
--

INSERT INTO `estadoproducto` (`idEstadoProducto`, `estadoProducto`) VALUES
(1, 'ALMACEN'),
(2, 'ALQUILER'),
(3, 'DISPONIBLE'),
(4, 'MALOGRADO'),
(5, 'MANTENIMIENTO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadousuario`
--

CREATE TABLE `estadousuario` (
  `idEstadoUsuario` int(10) NOT NULL,
  `nombreEstadoUsuario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadousuario`
--

INSERT INTO `estadousuario` (`idEstadoUsuario`, `nombreEstadoUsuario`) VALUES
(1, 'ACTIVO'),
(2, 'DESACTIVADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(10) NOT NULL,
  `factura` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idFactura`, `factura`) VALUES
(1, 'F-001'),
(2, 'F-002'),
(3, 'F-003'),
(4, 'F-004'),
(5, 'F-005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `idItem` int(10) NOT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`idItem`, `marca`, `modelo`, `color`, `imagen`, `descripcion`) VALUES
(1, 'LENOVO', '20RBS45Q00', 'NEGRO', NULL, 'ThinkPad E14 - Black (Intel)-8GBRam-2gbGrafica-1TbHDD-500gbSD-8va'),
(2, 'HP', 'ba1011la', 'NEGRO', NULL, 'HP ENVY Laptop 13-ba1011la-negro(Intel)-16GbRam-W10-1GBGrafica-250gbSD-10ma'),
(3, 'APPLE', 'Ipad Apple 8TH', 'BLANCO', NULL, 'Tablet Ipad Apple 8TH Generaci¢n, pantalla de retina 10.2\", capacidad 128GB, c mara 1.2MP/8MP, color Silver'),
(4, 'DELL', 'Dell 15.6\" XPS 15', 'NEGRO', NULL, '8GB DDR4 RAM | 256GB M.2-2.5 GHz Intel Core i5-10300H Quad-Core'),
(5, 'LENOVO', '20RBS45Q00', 'GRIS', NULL, 'ThinkPad E14 - GRIS (Intel)-8GBRam-2gbGrafica-1TbHDD-500gbSD-10ma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `idPerfil` int(10) NOT NULL,
  `nombrePerfil` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`idPerfil`, `nombrePerfil`) VALUES
(1, 'ADMINISTRADOR'),
(2, 'VENDEDOR'),
(3, 'ESPECIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(10) NOT NULL,
  `codigoProducto` int(15) DEFAULT NULL,
  `nombreProducto` varchar(45) DEFAULT NULL,
  `stock` varchar(45) DEFAULT NULL,
  `idCategoria` int(10) DEFAULT NULL,
  `idItem` int(10) DEFAULT NULL,
  `precio` int(10) DEFAULT NULL,
  `idEstadoProducto` int(10) DEFAULT NULL,
  `idFactura` int(10) DEFAULT NULL,
  `fechaRegistro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `codigoProducto`, `nombreProducto`, `stock`, `idCategoria`, `idItem`, `precio`, `idEstadoProducto`, `idFactura`, `fechaRegistro`) VALUES
(1, 1, 'LENOVO', '20', 1, 1, 100, 1, 1, '2021-04-30'),
(2, 2, 'HP', '30', 1, 2, 200, 1, 2, '2021-04-30'),
(3, 3, 'APPLE', '20', 3, 3, 300, 2, 3, '2021-04-30'),
(4, 4, 'DELL', '5', 2, 4, 400, 3, 4, '2021-04-30'),
(5, 5, 'LENOVO', '5', 1, 5, 500, 4, 5, '2021-04-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) NOT NULL,
  `dni` int(8) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `idPerfil` int(10) DEFAULT NULL,
  `login` date DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `dni`, `nombres`, `idPerfil`, `login`, `foto`, `estado`) VALUES
(1, 10101020, 'YURI GONZALES', 1, '2021-04-21', NULL, '1'),
(2, 20203010, 'LEA MACIEL', 2, '2021-04-22', NULL, '1'),
(3, 15462634, 'CARLOS PEREZ', 3, '2021-04-26', NULL, '1'),
(4, 21523645, 'MAURO PINO', 2, '2021-04-29', NULL, '1'),
(5, 85653212, 'SUSAN LARA', 3, '2021-04-30', NULL, '2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arrendamiento`
--
ALTER TABLE `arrendamiento`
  ADD PRIMARY KEY (`idArrendamiento`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `estadoproducto`
--
ALTER TABLE `estadoproducto`
  ADD PRIMARY KEY (`idEstadoProducto`);

--
-- Indices de la tabla `estadousuario`
--
ALTER TABLE `estadousuario`
  ADD PRIMARY KEY (`idEstadoUsuario`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`idItem`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`idPerfil`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arrendamiento`
--
ALTER TABLE `arrendamiento`
  MODIFY `idArrendamiento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estadoproducto`
--
ALTER TABLE `estadoproducto`
  MODIFY `idEstadoProducto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estadousuario`
--
ALTER TABLE `estadousuario`
  MODIFY `idEstadoUsuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idFactura` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `idItem` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `idPerfil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
