-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2020 a las 00:00:50
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(3, 'Aros Lacoste', '2020-06-01 02:49:39'),
(4, 'Lente Policarbonato', '2020-06-01 02:49:18'),
(5, 'Lente Cristal ', '2020-06-01 02:49:27'),
(6, 'Aros Hugo Boss', '2020-06-01 02:50:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(13, 'Consumidor Final', 10000000, 'comfinal@hotmail.com', '(502) 854-3215', '2nd Calle 8-40 Zona 1', '2000-02-01', 17, '2020-06-02 10:42:17', '2020-06-02 21:08:17'),
(14, 'Baudilio Diaz Sales', 2147483647, 'nose@gmail.com', '(502) 3333-3333', 'Huehuetenango', '1900-03-31', 0, '0000-00-00 00:00:00', '2020-06-05 21:59:27'),
(15, 'Alejandro Maldonado', 2147483647, 'gama@gmail.com', '(502) 9999-9999', 'Ciudad', '1999-11-11', 0, '0000-00-00 00:00:00', '2020-06-05 22:00:05'),
(16, 'Byron Figueroa', 2147483647, 'gama2@gmail.com', '(502) 2222-2222', 'Ciudad', '1999-09-09', 0, '0000-00-00 00:00:00', '2020-06-05 22:00:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_Estado` int(11) NOT NULL,
  `nombre_Estado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_Estado`, `nombre_Estado`) VALUES
(1, 'Completado'),
(2, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(62, 3, '2002', 'Aros Azul Marino Lacoste edicion 3b', 'vistas/img/productos/2002/255.jpg', 24, 300, 420, 1, '2020-06-02 20:55:55'),
(63, 3, '2003', 'Aros cafés  Lacoste edicion 3c', 'vistas/img/productos/2003/988.jpg', 19, 250, 350, 3, '2020-06-02 21:08:17'),
(64, 3, '2001', 'Aros Celeste Lacoste edicion 3x', 'vistas/img/productos/2001/695.jpg', 24, 330, 462, 2, '2020-06-02 21:01:09'),
(65, 4, '1001', 'Lente de policarbonato antireflejo', 'vistas/img/productos/1001/895.jpg', 18, 600, 840, 3, '2020-06-02 16:42:17'),
(66, 4, '1002', 'Lente de policarbonato estandar', 'vistas/img/productos/1002/151.jpg', 18, 200, 280, 2, '2020-06-02 21:01:03'),
(67, 5, '8001', 'Lente de cristal estandar', 'vistas/img/productos/8001/233.jpg', 17, 200, 280, 5, '2020-06-02 20:58:37'),
(68, 6, '5000', 'Lentes Hugo Boss edicion MM', 'vistas/img/productos/5000/291.jpg', 16, 700, 980, 4, '2020-06-02 20:58:37'),
(69, 6, '5001', 'Lentes Hugo Boss edicion Honoris', 'vistas/img/productos/5001/545.jpg', 6, 1200, 1680, 2, '2020-06-02 20:55:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/956.jpg', 1, '2020-06-05 14:24:47', '2020-06-05 20:24:47'),
(60, 'Cristian Camposeco', 'cristo', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/cristo/521.jpg', 1, '2020-06-05 14:59:30', '2020-06-05 20:59:30'),
(61, 'Rony Baran', 'rony', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '2020-06-05 14:46:41', '2020-06-05 20:46:41'),
(62, 'Bryan Herrera', 'bryan', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Especial', '', 1, '2020-06-05 14:26:00', '2020-06-05 20:26:01'),
(63, 'Benjamin Grajeda', 'mincho', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/mincho/970.jpg', 1, '2020-06-05 14:58:19', '2020-06-05 20:58:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `anticipo` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `id_Estado` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `anticipo`, `neto`, `total`, `metodo_pago`, `id_Estado`, `fecha`) VALUES
(39, 10008, 13, 1, '[{\"id\":\"63\",\"descripcion\":\"Aros cafés  Lacoste edicion 3c\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"350\",\"total\":\"350\"}]', 0, 350, 350, 'Efectivo', 1, '2020-06-01 23:48:26'),
(41, 10010, 13, 1, '[{\"id\":\"65\",\"descripcion\":\"Lente de policarbonato antireflejo\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"840\",\"total\":\"840\"}]', 0, 840, 840, 'Efectivo', 1, '2020-06-01 23:54:19'),
(42, 10011, 13, 1, '[{\"id\":\"67\",\"descripcion\":\"Lente de cristal estandar\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"280\",\"total\":\"280\"}]', 200, 280, 80, 'Efectivo', 2, '2020-06-01 23:54:39'),
(43, 10012, 13, 1, '[{\"id\":\"67\",\"descripcion\":\"Lente de cristal estandar\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"280\",\"total\":\"280\"}]', 0, 280, 280, 'Efectivo', 1, '2020-06-01 23:59:22'),
(44, 10013, 13, 1, '[{\"id\":\"66\",\"descripcion\":\"Lente de policarbonato estandar\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"280\",\"total\":\"280\"}]', 0, 280, 280, 'Efectivo', 1, '2020-06-02 00:05:05'),
(45, 10014, 13, 1, '[{\"id\":\"62\",\"descripcion\":\"Aros Azul Marino Lacoste edicion 3b\",\"cantidad\":\"1\",\"stock\":\"23\",\"precio\":\"420\",\"total\":\"420\"}]', 300, 420, 120, 'Efectivo', 2, '2020-06-02 00:05:33'),
(46, 10015, 13, 1, '[{\"id\":\"68\",\"descripcion\":\"Lentes Hugo Boss edicion MM\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"980\",\"total\":\"980\"}]', 800, 980, 180, 'Efectivo', 2, '2020-06-02 00:27:22'),
(47, 10016, 13, 1, '[{\"id\":\"68\",\"descripcion\":\"Lentes Hugo Boss edicion MM\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"980\",\"total\":\"980\"}]', 0, 980, 980, 'Efectivo', 1, '2020-06-02 00:27:40'),
(48, 10017, 13, 1, '[{\"id\":\"64\",\"descripcion\":\"Aros Celeste Lacoste edicion 3x\",\"cantidad\":\"1\",\"stock\":\"22\",\"precio\":\"462\",\"total\":\"462\"}]', 400, 462, 62, 'Efectivo', 2, '2020-06-02 00:30:43'),
(49, 10018, 13, 1, '[{\"id\":\"65\",\"descripcion\":\"Lente de policarbonato antireflejo\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"840\",\"total\":\"840\"},{\"id\":\"66\",\"descripcion\":\"Lente de policarbonato estandar\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"280\",\"total\":\"280\"}]', 0, 1120, 1120, 'Efectivo', 1, '2020-06-02 16:42:17'),
(50, 10004, 4, 1, '[{\"id\":\"69\",\"descripcion\":\"Lentes Hugo Boss edicion Honoris\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"1680\",\"total\":\"1680\"},{\"id\":\"70\",\"descripcion\":\"Lente de policarbonato antireflejo hd\",\"cantidad\":\"1\",\"stock\":\"44\",\"precio\":\"840\",\"total\":\"840\"}]', 0, 2520, 2520, 'Efectivo', 1, '2020-06-02 16:53:43'),
(51, 10005, 9, 1, '[{\"id\":\"69\",\"descripcion\":\"Lentes Hugo Boss edicion Honoris\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"1680\",\"total\":\"1680\"},{\"id\":\"68\",\"descripcion\":\"Lentes Hugo Boss edicion MM\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"980\",\"total\":\"980\"}]', 1000, 2660, 1660, 'Efectivo', 2, '2020-06-02 20:55:13'),
(52, 10006, 11, 1, '[{\"id\":\"68\",\"descripcion\":\"Lentes Hugo Boss edicion MM\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"980\",\"total\":\"980\"},{\"id\":\"67\",\"descripcion\":\"Lente de cristal estandar\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"280\",\"total\":\"280\"}]', 500, 1260, 760, 'Efectivo', 2, '2020-06-02 20:58:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_Estado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Estado` (`id_Estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_Estado`) REFERENCES `estado` (`id_Estado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
