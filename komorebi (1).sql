-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-09-2023 a las 13:59:29
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `komorebi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(150) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Refrigerados', '2023-09-01 12:19:32'),
(2, 'Snacks y pasabocas', '2023-09-01 12:19:43'),
(3, 'Cuidado Personal', '2023-09-01 12:19:50'),
(4, 'Aseo del hogar', '2023-09-01 12:19:57'),
(5, 'Granos', '2023-09-01 12:20:12'),
(6, 'Despensa', '2023-09-01 12:20:18'),
(7, 'Bebidas', '2023-09-01 12:20:26'),
(8, 'Promociones', '2023-09-01 13:35:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `cliente` varchar(150) NOT NULL,
  `email` varchar(155) NOT NULL,
  `numcel` varchar(155) NOT NULL,
  `genero` varchar(155) NOT NULL,
  `fecnac` varchar(155) NOT NULL,
  `user` varchar(155) NOT NULL,
  `pass` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `cliente`, `email`, `numcel`, `genero`, `fecnac`, `user`, `pass`) VALUES
(1, 'Juan Pablo Herrera', 'jpherrera63@misena.edu.co', '3133215141', 'Masculino', '2023-08-17', 'jpherrera', 'alejo123'),
(2, 'jhan35', 'jhan@gmail.com', '3215458887', 'Masculino', '2023-08-17', 'jhan', '123456789'),
(3, 'tatiana pechene', 'tatiana@gmail.com', '3210325698', 'Masculino', '2023-08-08', 'tatiana5', '123456789'),
(4, 'Jhan Franco Diaz Nuñez', 'jhanfrancoo123@gmail.com', '3225136051', 'Femenino', '2003-03-23', 'Jhan35', '3208836534'),
(6, 'juan', 'juan123@gmail.com', '3208836534', 'Masculino', '2000-03-28', 'juan23', '12345'),
(7, 'Jhan Franco diaz', 'jhanfrancoo123@gmail.com', '3225136051', 'Masculino', '2004-03-23', 'frann', '3208836534');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `facid` int(11) NOT NULL,
  `facidper` int(11) NOT NULL,
  `facname` varchar(255) NOT NULL,
  `facsurname` varchar(255) NOT NULL,
  `facnameprod` varchar(255) NOT NULL,
  `facnumprod` varchar(255) NOT NULL,
  `facvaltotfac` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `producto` varchar(250) NOT NULL,
  `existencia` int(11) NOT NULL,
  `minimo` varchar(50) NOT NULL,
  `venta` float NOT NULL,
  `compra` int(11) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `codigo`, `imagen`, `producto`, `existencia`, `minimo`, `venta`, `compra`, `unidad`, `id_categoria`, `fecha`) VALUES
(1, '01', 'arroz.jpg', 'Arroz Florhuila ', 24, '1 Und x 500 gr', 3400, 2800, 'Gr', 8, '2023-09-01 13:37:19'),
(2, '02', 'descarga (2).jpg', 'Coca cola', 24, '1 Und x1000 ml', 3200, 2400, 'Ml', 8, '2023-09-06 16:03:42'),
(3, '09', 'fabuloso.jpg', 'fabuloso', 6, '1 Und x1000 ml', 4556, 4566, 'Ml', 8, '2023-09-06 16:37:51'),
(4, '03', 'milo.jpg', 'galletas milo', 24, '1 Und x 450 gr', 2000, 1000, 'Gr', 8, '2023-09-06 16:37:05'),
(5, '05', 'javondove.jpg', 'Jabon Dove', 20, '1 Und x 250 gr', 3100, 2500, 'Gr', 8, '2023-09-06 16:37:16'),
(6, '06', 'detodito rojo.jpg', 'Detodito', 12, '1 Und x 80 gr', 2000, 1500, 'Gr', 8, '2023-09-04 23:11:54'),
(7, '08', 'carne.jpg', 'Carne res', 50, '1 Und x 500 gr', 12000, 10000, 'Gr', 8, '2023-09-06 16:37:43'),
(8, '10', 'club colombia.jpg', 'Cervesa Club ', 24, '6 Und x 330 ml', 14000, 14000, 'Ml', 8, '2023-09-04 23:13:58'),
(9, '11', 'javon protex.jpg', 'Jabon Protex', 12, '3 Und x 1300 gr', 5400, 4500, 'Gr', 8, '2023-09-05 12:26:30'),
(10, '12', 'agua cristal.jpg', 'Agua Cristal', 24, '1 Und x1000 ml', 1500, 1200, 'Ml', 8, '2023-09-06 16:38:01'),
(11, '13', 'gatorade naranja.jpg', 'gatorade', 12, '1 Und x1000 ml', 3200, 2600, 'Ml', 8, '2023-09-06 16:38:13'),
(12, '14', 'bretaña.jpg', 'Bretaña', 12, '1 Und x1000 ml', 3000, 2500, 'Ml', 8, '2023-09-06 16:38:27'),
(14, '15', 'sevenup.jpg', 'Seven Up', 24, '1 Und x1000 ml', 3800, 3200, 'Ml', 7, '2023-09-01 12:29:05'),
(15, '16', 'arveja.png', 'Arbeja', 12, '1 Und x 500 gr', 3400, 2800, 'Gr', 5, '2023-08-28 16:47:41'),
(17, '18', '04160-SAL-REFISAL-X-500-GR.jpg', 'Sal Refisal', 24, '1 Und x 500 gr', 4200, 3500, 'Lb', 6, '2023-09-01 12:34:53'),
(18, '19', 'colombiana.jpg', 'Colombiana', 15, '1 Und x1000 ml', 4200, 3400, 'Ml', 8, '2023-09-01 13:36:21'),
(19, '20', 'huevos.jpg', 'Huevos AA', 12, 'Panal x 30 Und', 16000, 13000, 'Gr', 8, '2023-09-01 13:40:58'),
(20, '21', 'papel.jpg', 'Papel Hiegienico', 24, 'Pack X12 Und', 15990, 14900, 'Kg', 8, '2023-09-01 13:42:58'),
(21, '22', 'aceite.jpg', 'Aceite Bon LIfe', 25, '1 Und x2000 ml', 18999, 15990, 'Ml', 6, '2023-09-05 13:59:02'),
(22, '23', '166703609-ucrania-kiev-febrero-23-202-un-paquete-de-6-vacío-de-cerveza-corona-extra-aislado-sobre-fondo.jpg', 'Cerveza Corona', 16, 'sixpack X6 Und', 18000, 15800, 'Ml', 7, '2023-09-05 04:18:09'),
(23, '24', 'pngtree-budweiser-six-pack-side-view-adolphus-busch-product-white-photo-image_38198978.jpg', 'Cerveza Budweiser', 16, 'sixpack X6 Und', 17500, 14800, 'Ml', 7, '2023-09-05 04:19:49'),
(24, '25', '0000756_ron-viejo-de-caldas-3-anos-750-cc_550-e1530677335168.jpeg', 'Ron Viejo de Caldas', 2, '1Und X 450ml', 25000, 21000, 'Ml', 7, '2023-09-05 04:22:17'),
(25, '26', 'AGUARDIENTE-DOBLE-ANIS-SIN-AZU_F.png', 'Aguardiente Doble Anis', 24, '1Und X 450ml', 23000, 20000, 'Ml', 7, '2023-09-05 04:23:35'),
(26, '27', 'descarga (9).jpeg', 'Aguardiente Antiqueño', 12, '1Und X 450ml', 25000, 22500, 'Ml', 7, '2023-09-05 04:25:03'),
(27, '28', 'bc98c876-4706-4a55-b3e5-e42337d6509a.jpg', 'Mister Tea', 24, '1Und X500ml', 3200, 2500, 'Ml', 7, '2023-09-05 04:27:15'),
(28, '29', 'bebida-aguah2olimonata-600ml_00.jpg', 'H2O', 15, '1Und X500ml', 3200, 2500, 'Ml', 8, '2023-09-06 16:38:38'),
(29, '30', 'istockphoto-458669887-612x612.jpg', 'Sprite', 18, '1Und X1000ml', 6800, 5400, 'Ml', 7, '2023-09-05 04:29:48'),
(30, '31', 'descarga (8).jpeg', 'Zucaritas', 15, '1Und X500gr', 6500, 4500, 'Gr', 8, '2023-09-06 16:38:55'),
(31, '32', '701675.jpg', 'Frosties', 22, '1Und X500gr', 6700, 4800, 'Gr', 5, '2023-09-05 04:33:19'),
(32, '33', '00120634001380____2__600x600.jpg', 'Avena Quaker', 24, '1Und X500gr', 5600, 4200, 'Gr', 5, '2023-09-05 04:35:54'),
(33, '34', '774-7704269100701.jpg', 'Maiz Pira', 22, '1 Und x 500 gr', 4700, 3600, 'Gr', 5, '2023-09-05 11:25:02'),
(34, '35', '91xKFxpA2zL._AC_SL1500_.jpg', 'kellogs', 24, '1 Und x 300 gr', 4500, 3800, 'Gr', 5, '2023-09-05 11:26:38'),
(35, '36', '1307409.jpg', 'Frijoles', 12, '1 Und x 500 gr', 3500, 2800, 'Gr', 5, '2023-09-05 11:29:40'),
(36, '37', '7701008001909.jpg', 'Frijol Palomito', 12, '1 Und x 500 gr', 3800, 3200, 'Gr', 5, '2023-09-05 11:31:00'),
(37, '38', '7702231000516.jpg', 'Arroz Integral', 24, '1 Und x 500 gr', 5800, 5200, 'Gr', 5, '2023-09-05 11:32:29'),
(38, '39', '31-01.jpg', 'Toallas de Cocina', 12, '1 Und x50 hojas', 5400, 4600, 'Gr', 4, '2023-09-05 11:37:01'),
(39, '40', '011034-1.jpg', 'Escoba pelo de angel', 12, '1 und (no incluye palo)', 5800, 4500, 'Gr', 4, '2023-09-05 11:39:16'),
(40, '41', '0504422.jpg', 'Limpido Blancox', 12, '1 Und x3800 ml', 20500, 18000, 'Ml', 4, '2023-09-05 11:41:54'),
(41, '42', '0504431.jpg', 'Limpido Clorox ', 12, '1 Und x3800 ml', 22500, 19800, 'Ml', 4, '2023-09-05 11:43:00'),
(42, '43', '72315252-viejo-recogedor-de-polvo-plástico-negro-aislado-en-el-fondo-blanco.jpg', 'Recogedor', 12, '1 und (incluye palo)', 6800, 5600, 'Gr', 8, '2023-09-06 16:39:05'),
(43, '44', 'depositphotos_395745308-stock-photo-scotch-brite-isolated-on-white.jpg', 'Esponjas', 24, 'Pack X3 Und', 5600, 4600, 'Gr', 4, '2023-09-05 11:45:25'),
(44, '45', 'descarga (5).jpeg', 'Jabon Rey', 24, '1 Und x 300 gr', 2800, 2200, 'Gr', 4, '2023-09-05 11:46:27'),
(45, '46', 'descarga (6).jpeg', 'Jabon LavaLoza ', 12, '1 Und x 350 gr', 5600, 4800, 'Gr', 4, '2023-09-05 11:47:55'),
(46, '47', 'descarga (7).jpeg', 'Jabon Ariel', 12, '1 Und x 1000 gr', 20500, 18500, 'Gr', 4, '2023-09-05 11:50:01'),
(47, '48', 'images (4).jpeg', 'Jabon de manos(Natural Felling)', 12, '1 Und x350 ml', 6200, 5500, 'Ml', 4, '2023-09-05 11:52:27'),
(48, '49', 'Limpia-Pisos-Fabuloso-Lavanda-1Lt.jpg', 'Fabuloso', 12, '1 Und x1000 ml', 7800, 6800, 'Ml', 4, '2023-09-05 11:53:29'),
(49, '50', '-MVgQmuVKIf8W6WPH4BN.jpg', 'Crema Dental Bucarine', 12, '1 Und x 180 gr', 4900, 3800, 'Gr', 3, '2023-09-05 11:54:39'),
(50, '51', 'Suavizante-AROMATEL-floral-x1800-ml_119550.jpg', 'Aromatel', 12, '1 Und x1300 ml', 14800, 11990, 'Ml', 4, '2023-09-05 11:56:25'),
(51, '52', 'Trapero-Microfibra-Blanco.jpg', 'Trapeador', 12, '1 und (no incluye palo)', 7400, 5600, 'Gr', 8, '2023-09-07 13:37:45'),
(52, '53', 'pack_x_3_jabones_jbaby_origi_x16x110_f_v2.png', 'Jabon Jhonsons', 12, '3 Und x 100 gr', 8600, 6700, 'Gr', 3, '2023-09-05 12:00:44'),
(53, '54', 'images (5).jpeg', 'Cuchillas Afeitadoras', 12, 'x2 Und  ', 6900, 5990, 'Gr', 3, '2023-09-05 12:03:04'),
(54, '55', 'descarga (3).jpeg', 'Desodorante Speed Stick', 12, '1 Und x120 gr', 7400, 6500, 'Gr', 3, '2023-09-05 12:05:20'),
(55, '56', 'descarga (2).jpeg', 'Desodorante Gilette', 12, '1 Und x 80 gr', 7200, 5800, 'Gr', 3, '2023-09-05 12:27:57'),
(56, '57', 'CR-LUBRIDERM-REPARACION-INTENSIVA.jpg', 'Crema Corporal', 14, '1 Und x300 ml', 14800, 12500, 'Ml', 3, '2023-09-05 12:08:31'),
(57, '59', 'cepillo-dientes-colgate-15326.png', 'Cepillo dental', 12, '1 Und x 25 gr', 3400, 2600, 'Gr', 3, '2023-09-05 12:09:31'),
(58, '60', '125280-650240035401.jpg', 'Jabon Asepxia', 12, '1 Und x100 gr', 9700, 8900, 'Gr', 3, '2023-09-05 12:11:19'),
(59, '61', '5ba1cf9f-1bcb-4572-85bd-9dcff710fb84.jpg', 'Nachos', 24, '1 Und x 120 gr', 4600, 3400, 'Gr', 2, '2023-09-05 12:17:12'),
(60, '62', '5f62afab681ee.jpeg', 'Pony Malta mini', 24, '6 Und x200 ml', 9600, 8400, 'Ml', 2, '2023-09-05 12:19:27'),
(61, '63', '09f093e7-fd34-4a20-889c-6d91e7967149.jpg', 'Cocosette', 24, '8 Und X400 gr', 9500, 8400, 'Gr', 2, '2023-09-05 12:21:19'),
(62, '64', '17fd1180e09701e295fa43e5ea0a802e7e719102_Cookies_326699_03.jpg', 'Galletas Saltin Noel', 12, 'Pack X12 Und (1075 gr)', 14600, 12500, 'Gr', 2, '2023-09-05 12:23:12'),
(63, '65', '81WS5p9E1rL._SL1500_.jpg', 'Quinoa', 12, '1 Und x10 lb', 23600, 22500, 'Lb', 2, '2023-09-05 12:30:08'),
(64, '66', '889a154d819ae3ff01d9c4f4e94546b6-product.jpg', 'Mani La Especial', 12, '1 Und x 420 gr', 8200, 7600, 'Gr', 2, '2023-09-05 12:31:29'),
(65, '67', '1510.jpg', 'Doritos Flaming hot', 24, '1 Und x 100 gr', 2900, 2400, 'Gr', 2, '2023-09-05 12:32:34'),
(66, '68', '40017039 Ducales 294g20220804153958.jpg', 'galletas Ducales', 12, 'Pack X3 tacos(470 gr)', 7900, 6700, 'Gr', 2, '2023-09-05 12:41:29'),
(67, '69', '16226880175U8ApJ4B.jpg', 'Papas Naturales Margarita', 12, '1 Und x 120 gr', 2000, 1400, 'Gr', 2, '2023-09-05 12:42:44'),
(68, '70', 'bolsa-de-cheetos-flaming-caliente-snack-crujiente-r2tcmj.jpg', 'Cheetos Flaming Hot', 12, '1 Und x 240 gr', 2800, 1800, 'Gr', 2, '2023-09-05 12:44:13'),
(69, '71', 'detodito azul.jpg', 'Detodito Natural', 12, '1 Und x 45 gr', 2800, 2500, 'Gr', 2, '2023-09-05 12:46:23'),
(70, '72', 'detodito rojo.jpg', 'Detodito Picante', 12, '1 Und x 45 gr', 3200, 2400, 'Gr', 2, '2023-09-05 12:47:30'),
(71, '73', 'descarga (1).jpeg', 'Detodito Amarillo', 12, '1 Und x 45 gr', 3200, 2400, 'Gr', 2, '2023-09-05 12:49:39'),
(72, '74', 'images (3).jpeg', 'Doritos ', 12, '1 Und x 120 gr', 2900, 2400, 'Gr', 2, '2023-09-05 12:51:06'),
(73, '75', 'chocolate-jet-leche-paquete-x-24-unidades-x-6-gramos.jpg', 'Chocolatinas Jet', 24, 'Pack X12 Und (144 gr)', 12600, 11500, 'Gr', 2, '2023-09-05 12:52:59'),
(74, '76', 'irvine-california-30-de-abril-de-2019-un-paquete-de-galletas-oreo-de-nabisco-milks-cookie-favorita-2b2dkk7.jpg', 'Galletas Oreo', 12, 'Pack X10 Und (475 gr)', 13600, 12500, 'Gr', 2, '2023-09-05 12:55:21'),
(75, '77', 'unnamed.jpg', 'Papas Margarita (pollo)', 12, '1 Und x 80 gr', 2500, 1800, 'Gr', 2, '2023-09-05 12:57:57'),
(76, '78', '12793633-rodajas-de-salmón-fresco-en-el-fondo-blanco.jpg', 'Filete de Salmon', 12, '1 Und x 250 gr', 9200, 8500, 'Gr', 8, '2023-09-05 13:59:22'),
(77, '79', '7701101247266-1.jpg', 'Salchicha Ranchera', 12, 'Pack X14 Und (480 gr)', 14700, 13600, 'Gr', 1, '2023-09-05 13:02:46'),
(78, '80', '7702001151516_IT_1x520.jpeg', 'Yogurd Griedo Alpina', 12, '1 Und x150 gr', 5300, 4500, 'Gr', 1, '2023-09-05 13:04:34'),
(79, '81', '7708687437623.webp', 'Chorisos las Brisas', 12, '10 Und x 480 gr', 15800, 14600, 'Gr', 1, '2023-09-05 13:05:31'),
(80, '82', 'pierna-de-pollo-cruda-o-palillo-de-tambor-aislado-sobre-fondo-blanco-con-profundidad-de-campo-completa-vista-superior-colocacion-plana-2m21nhe.jpg', 'Pollo ', 24, '1 Und x 500 gr', 5800, 4600, 'Gr', 1, '2023-09-05 13:06:52'),
(81, '83', 'vv (1).jpg', 'yogurd YOGO YOGO', 12, '1 Und x 1000 gr', 9600, 8500, 'Gr', 1, '2023-09-05 13:19:05'),
(82, '84', 'descarga.jpeg', 'Jamon Pietran', 12, '1 Und x 450 gr', 9500, 8600, 'Gr', 1, '2023-09-05 13:21:10'),
(83, '85', '1f8567ed383cd5b1b014bacbec01e85cd0fdf4a8_Milk_459613_01.jpg', 'leche Alqueria', 12, '1 Und x1000 ml', 5800, 4600, 'Ml', 1, '2023-09-05 13:22:39'),
(84, '86', 'CAFÉ-JUAN-VALDEZ-50G.jpg', 'Cafe Juan Valdez', 12, '1 Und x 50 gr', 4200, 3500, 'Gr', 8, '2023-09-08 11:19:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordendeentrega`
--

CREATE TABLE `ordendeentrega` (
  `ordid` int(11) NOT NULL,
  `ordprod` varchar(255) NOT NULL,
  `ordUdM` varchar(255) NOT NULL,
  `ordcantprod` varchar(255) NOT NULL,
  `ordvalpag` float NOT NULL,
  `ordestpag` varchar(255) NOT NULL,
  `ordnamecli` varchar(255) NOT NULL,
  `ordsurnamecli` varchar(255) NOT NULL,
  `ordnumcel` varchar(255) NOT NULL,
  `ordaddrescli` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE `parametros` (
  `tarifaiva1` double NOT NULL,
  `tarifaiva2` double NOT NULL,
  `tarifaiva3` double NOT NULL,
  `fecexp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `pedid` int(11) NOT NULL,
  `pedimg` blob NOT NULL,
  `pednameprod` varchar(255) NOT NULL,
  `pedcant` varchar(255) NOT NULL,
  `pedvaltotal` varchar(255) NOT NULL,
  `pedcantprod` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_vendidos`
--

CREATE TABLE `productos_vendidos` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(50) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `r_social` varchar(250) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `nit` int(50) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `name`, `r_social`, `direccion`, `telefono`, `nit`, `correo`, `fecha`) VALUES
(13, 'cocacola', 'pepsico', 'Medellin-Col', '3225136098', 2147483647, 'pepsico@gmail.com', '2023-09-01 12:09:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `rolidrol` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `rolidper` int(11) NOT NULL,
  `rolname` varchar(255) NOT NULL,
  `rolsurname` varchar(255) NOT NULL,
  `roladdres` varchar(255) NOT NULL,
  `rolemail` varchar(255) NOT NULL,
  `rolpass` varchar(50) NOT NULL,
  `rolnumper` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`rolidrol`, `rol`, `rolidper`, `rolname`, `rolsurname`, `roladdres`, `rolemail`, `rolpass`, `rolnumper`) VALUES
(0, '', 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `correo`, `telefono`, `password`, `fecha`, `id_rol`) VALUES
(5, 'Administrador', 'admin@softcodepm.com', '45354356', '$2y$05$Lu7WwzfDYDplQCiyfePEHu.qd171Bo7CAJHbqsqlYWldMITAVffu6', '2023-09-04 12:20:06', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userxrol`
--

CREATE TABLE `userxrol` (
  `rol_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `total` float NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `pago` float NOT NULL,
  `cambio` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`facid`),
  ADD KEY `facidper` (`facidper`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordendeentrega`
--
ALTER TABLE `ordendeentrega`
  ADD PRIMARY KEY (`ordid`);

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`tarifaiva1`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`pedid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`rolidper`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userxrol`
--
ALTER TABLE `userxrol`
  ADD KEY `rol_id` (`rol_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `facid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `pedid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`facidper`) REFERENCES `rol` (`rolidper`);

--
-- Filtros para la tabla `userxrol`
--
ALTER TABLE `userxrol`
  ADD CONSTRAINT `userxrol_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`rolidper`),
  ADD CONSTRAINT `userxrol_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
