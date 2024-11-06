-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2024 a las 03:34:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calzadosle`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add tennis', 7, 'add_tennis'),
(26, 'Can change tennis', 7, 'change_tennis'),
(27, 'Can delete tennis', 7, 'delete_tennis'),
(28, 'Can view tennis', 7, 'view_tennis'),
(29, 'Can add historial', 8, 'add_historial'),
(30, 'Can change historial', 8, 'change_historial'),
(31, 'Can delete historial', 8, 'delete_historial'),
(32, 'Can view historial', 8, 'view_historial'),
(33, 'Can add usuarios', 9, 'add_usuarios'),
(34, 'Can change usuarios', 9, 'change_usuarios'),
(35, 'Can delete usuarios', 9, 'delete_usuarios'),
(36, 'Can view usuarios', 9, 'view_usuarios'),
(37, 'Can add tenis', 7, 'add_tenis'),
(38, 'Can change tenis', 7, 'change_tenis'),
(39, 'Can delete tenis', 7, 'delete_tenis'),
(40, 'Can view tenis', 7, 'view_tenis'),
(41, 'Can add cantidadtallas', 10, 'add_cantidadtallas'),
(42, 'Can change cantidadtallas', 10, 'change_cantidadtallas'),
(43, 'Can delete cantidadtallas', 10, 'delete_cantidadtallas'),
(44, 'Can view cantidadtallas', 10, 'view_cantidadtallas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$Zi29rOAUEq18vZtQjQXJPa$mDWDyFzzEj9gArnlC71zwCpcIbN0TXiRtN8SA/5We5w=', '2024-05-06 01:33:28.092730', 1, 'Prueba', '', '', 'prueba@gmail.com', 1, 1, '2024-04-27 22:05:01.262379'),
(2, 'pbkdf2_sha256$720000$atnrbcRB1pRitsyoKcJthD$4PXkMYmzh6rs2i4YDp8D3/tjPcQ3zguceQwgmEVzzZg=', '2024-05-02 02:01:00.371322', 0, 'Hola', '', '', '', 0, 1, '2024-05-01 19:48:11.487338'),
(3, 'pbkdf2_sha256$720000$i69vm54S6KcbTox3A4n0GY$lxeOW7pWHNmhXgi1niZ+cJIeaxsPIpVFo9OPenvRUkg=', '2024-05-06 01:32:56.585135', 0, 'Pruebas', '', '', '', 0, 1, '2024-05-02 04:37:24.323008'),
(4, 'pbkdf2_sha256$720000$x0PkLgOn6RXb4ScdkwjvIt$FZ8KX31cNnJdpaqkLf7jRUZTSrPZo6H+9pgo0uy54Ao=', NULL, 0, 'Guayaba', '', '', '', 0, 1, '2024-05-06 01:05:57.822759');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calzadole_cantidadtallas`
--

CREATE TABLE `calzadole_cantidadtallas` (
  `id` bigint(20) NOT NULL,
  `Talla36` int(11) NOT NULL,
  `Talla37` int(11) NOT NULL,
  `Talla38` int(11) NOT NULL,
  `Talla39` int(11) NOT NULL,
  `Talla40` int(11) NOT NULL,
  `Talla41` int(11) NOT NULL,
  `Talla42` int(11) NOT NULL,
  `Talla43` int(11) NOT NULL,
  `Talla44` int(11) NOT NULL,
  `Tenis_ID_id` int(11) NOT NULL
) ;

--
-- Volcado de datos para la tabla `calzadole_cantidadtallas`
--

INSERT INTO `calzadole_cantidadtallas` (`id`, `Talla36`, `Talla37`, `Talla38`, `Talla39`, `Talla40`, `Talla41`, `Talla42`, `Talla43`, `Talla44`, `Tenis_ID_id`) VALUES
(7, 8, 6, 9, 5, 2, 8, 0, 4, 9, 3),
(10, 2, 10, 7, 9, 1, 6, 7, 6, 8, 4),
(11, 1, 7, 4, 8, 4, 1, 1, 4, 1, 5),
(12, 3, 3, 8, 3, 7, 2, 2, 8, 3, 6),
(13, 9, 2, 3, 4, 8, 6, 9, 5, 5, 7),
(14, 10, 4, 2, 3, 9, 10, 4, 8, 5, 8),
(15, 5, 8, 0, 4, 5, 4, 6, 1, 2, 9),
(16, 4, 1, 8, 0, 2, 2, 6, 6, 0, 10),
(17, 7, 9, 10, 0, 5, 3, 2, 3, 6, 11),
(18, 9, 7, 6, 10, 1, 3, 8, 5, 1, 12),
(19, 2, 0, 0, 1, 2, 1, 0, 4, 5, 13),
(20, 7, 3, 5, 10, 8, 9, 6, 7, 8, 14),
(21, 5, 9, 7, 8, 3, 2, 7, 4, 2, 15),
(22, 0, 6, 5, 8, 3, 2, 8, 10, 4, 16),
(23, 7, 6, 8, 4, 9, 2, 5, 2, 6, 17),
(24, 10, 3, 4, 7, 2, 3, 8, 1, 6, 18),
(25, 4, 0, 7, 10, 2, 8, 6, 2, 7, 19),
(26, 7, 3, 9, 9, 5, 10, 1, 10, 3, 20),
(27, 5, 2, 1, 7, 10, 1, 3, 5, 2, 21),
(28, 0, 4, 10, 7, 8, 2, 0, 1, 5, 22),
(29, 3, 8, 5, 3, 0, 9, 6, 4, 7, 23),
(30, 3, 6, 8, 1, 5, 8, 5, 7, 7, 24),
(31, 8, 1, 2, 7, 2, 0, 7, 6, 9, 25),
(32, 4, 9, 2, 10, 0, 3, 10, 7, 3, 26),
(33, 10, 2, 4, 9, 8, 2, 4, 3, 0, 27),
(34, 5, 1, 7, 4, 1, 9, 4, 7, 10, 28),
(35, 10, 7, 5, 6, 7, 3, 0, 1, 10, 29),
(36, 4, 10, 8, 3, 5, 10, 9, 6, 3, 30),
(37, 6, 7, 5, 4, 3, 1, 10, 5, 9, 31),
(38, 0, 9, 2, 8, 5, 1, 1, 7, 7, 32),
(39, 2, 5, 7, 5, 0, 6, 4, 1, 5, 33),
(40, 3, 2, 1, 9, 8, 6, 1, 5, 3, 34),
(41, 7, 8, 2, 4, 10, 3, 5, 0, 6, 35),
(42, 8, 0, 6, 9, 4, 7, 6, 1, 3, 36),
(43, 3, 3, 9, 3, 5, 5, 5, 10, 7, 37),
(44, 5, 4, 2, 5, 4, 4, 2, 3, 1, 38),
(45, 9, 3, 6, 10, 8, 0, 9, 3, 7, 39),
(46, 8, 9, 8, 4, 2, 10, 4, 3, 4, 40),
(47, 1, 1, 0, 0, 0, 0, 0, 0, 0, 41),
(48, 1, 0, 0, 0, 0, 0, 1, 1, 1, 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calzadole_historial`
--

CREATE TABLE `calzadole_historial` (
  `ID` int(11) NOT NULL,
  `Fecha` datetime(6) NOT NULL,
  `Accion` varchar(20) NOT NULL,
  `Tenis_ID` int(11) DEFAULT NULL,
  `Usuario_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calzadole_historial`
--

INSERT INTO `calzadole_historial` (`ID`, `Fecha`, `Accion`, `Tenis_ID`, `Usuario_ID`) VALUES
(24, '2024-05-01 21:59:59.948510', 'Crear', 48, 1),
(25, '2024-05-01 22:00:07.913303', 'Editar', 48, 1),
(26, '2024-05-01 22:00:10.853114', 'Eliminar', 48, 1),
(27, '2024-05-01 22:07:00.957536', 'Eliminar', 42, 1),
(28, '2024-05-02 03:02:13.409518', 'Editar', 3, 1),
(29, '2024-05-02 03:03:09.411247', 'Eliminar', 41, 1),
(30, '2024-05-02 03:03:46.063105', 'Crear', 49, 1),
(31, '2024-05-02 03:04:36.401669', 'Editar', 3, 1),
(32, '2024-05-02 04:40:09.394837', 'Editar', 3, 1),
(33, '2024-05-02 04:40:35.168722', 'Editar', 3, 3),
(34, '2024-05-02 04:40:41.123015', 'Eliminar', 49, 3),
(35, '2024-05-02 04:41:15.372054', 'Crear', 50, 3),
(36, '2024-05-02 05:42:55.653562', 'Editar', 3, 1),
(37, '2024-05-02 05:44:28.356775', 'Editar', 3, 1),
(38, '2024-05-05 21:42:05.760536', 'Crear', 44, 1),
(39, '2024-05-05 21:42:39.147850', 'Eliminar', 44, 1),
(40, '2024-05-05 21:42:42.665559', 'Eliminar', 43, 1),
(41, '2024-05-05 21:46:09.092845', 'Crear', 46, 1),
(42, '2024-05-05 21:46:12.895126', 'Eliminar', 46, 1),
(43, '2024-05-05 21:46:16.101632', 'Eliminar', 45, 1),
(44, '2024-05-05 21:47:48.342919', 'Editar', 3, 1),
(45, '2024-05-05 21:58:22.052829', 'Crear', 47, 1),
(46, '2024-05-05 21:58:43.575248', 'Eliminar', 47, 1),
(47, '2024-05-05 21:59:18.278903', 'Editar', 4, 1),
(48, '2024-05-05 22:03:16.587642', 'Editar', 4, 1),
(49, '2024-05-05 22:35:55.386930', 'Editar', 4, 1),
(50, '2024-05-05 22:35:59.112236', 'Editar', 5, 1),
(51, '2024-05-05 22:37:53.597458', 'Editar', 5, 1),
(52, '2024-05-05 22:44:10.495220', 'Editar', 3, 1),
(53, '2024-05-05 22:50:59.922591', 'Editar', 3, 1),
(54, '2024-05-05 22:52:46.085955', 'Editar', 3, 1),
(55, '2024-05-05 23:07:41.822759', 'Editar', 3, 1),
(56, '2024-05-05 23:08:16.128355', 'Crear', 48, 1),
(57, '2024-05-05 23:08:19.822042', 'Eliminar', 48, 1),
(58, '2024-05-05 23:09:06.552179', 'Editar', 3, 1),
(59, '2024-05-06 00:07:21.148113', 'Editar', 3, 1),
(60, '2024-05-06 00:11:51.560545', 'Editar', 3, 1),
(61, '2024-05-06 00:20:57.747643', 'Editar', 4, 1),
(62, '2024-05-06 00:21:07.939242', 'Editar', 5, 1),
(63, '2024-05-06 00:21:14.114252', 'Editar', 6, 1),
(64, '2024-05-06 00:21:24.921961', 'Editar', 7, 1),
(65, '2024-05-06 00:21:49.528661', 'Editar', 7, 1),
(66, '2024-05-06 01:02:19.629500', 'Editar', 41, 1),
(67, '2024-05-06 01:02:36.128204', 'Editar', 42, 1),
(68, '2024-05-06 01:03:20.510168', 'Crear', 49, 1),
(69, '2024-05-06 01:03:26.120047', 'Eliminar', 49, 1),
(70, '2024-05-06 01:03:43.666253', 'Editar', 3, 1),
(71, '2024-05-06 01:05:02.080033', 'Crear', 50, 3),
(72, '2024-05-06 01:05:35.888775', 'Eliminar', 50, 1),
(73, '2024-05-06 01:31:12.882335', 'Crear', 51, 1),
(74, '2024-05-06 01:31:56.905728', 'Editar', 51, 1),
(75, '2024-05-06 01:32:00.441762', 'Eliminar', 51, 1),
(76, '2024-05-06 01:33:15.392983', 'Crear', 52, 3),
(77, '2024-05-06 01:33:31.794902', 'Eliminar', 52, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calzadole_tenis`
--

CREATE TABLE `calzadole_tenis` (
  `Imagen` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Estilo` varchar(50) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Precio_unitario` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calzadole_tenis`
--

INSERT INTO `calzadole_tenis` (`Imagen`, `ID`, `Marca`, `Estilo`, `Color`, `Precio_unitario`) VALUES
('imagenes/1.png', 3, 'ADIDAS', 'AXZ REMISE', 'BLANCO*BEIS', 80000),
('imagenes/2.jpg', 4, 'ADIDAS', 'BELER', 'BLANCO*AZUL CELESTE', 115000),
('imagenes/3.jpg', 5, 'ADIDAS', 'BELER', 'BLANCO*AZUL*ROJO', 115000),
('imagenes/4.jpg', 6, 'ADIDAS', 'BELER', 'BLANCO*FUSCIA*AMARILLO', 115000),
('imagenes/5.jpg', 7, 'ADIDAS', 'BELER', 'BLANCO*PLATA', 115000),
('imagenes/6.jpg', 8, 'ADIDAS', 'BELER', 'NEBRO*VERDE', 115000),
('imagenes/7.png', 9, 'ADIDAS', 'BELER', 'NEGRO*BLANCO*SUELA GOMA', 115000),
('imagenes/8.jpg', 10, 'ADIDAS', 'BELER', 'ROSADO', 100000),
('imagenes/9.jpg', 11, 'ADIDAS', 'BRAND', 'BLANCO*MORADO*VERDE', 130000),
('imagenes/10.jpg', 12, 'ADIDAS', 'BRAND', 'BLANCO*NEGRO', 100000),
('imagenes/11.jpg', 13, 'ADIDAS', 'CAMPUS', 'BEIGE', 100000),
('imagenes/12.jpg', 14, 'ADIDAS', 'CAMPUS', 'BLA*NEG', 100000),
('imagenes/13.jpg', 15, 'ADIDAS', 'CHINAX', 'BLA*AZU*ROJO', 120000),
('imagenes/14.jpg', 16, 'ADIDAS', 'COUNTRY', 'BLANCO*VERDE', 120000),
('imagenes/15.png', 17, 'ADIDAS', 'FASHION', 'NEGRO', 100000),
('imagenes/16.jpg', 18, 'ADIDAS', 'FORUM 2', 'BLANCO*AMARILLO*AZUL W', 100000),
('imagenes/17.png', 19, 'ADIDAS', 'FORUM 2', 'BLANCO*NEGRO*ROJO', 100000),
('imagenes/18.jpg', 20, 'ADIDAS', 'FORUM 2', 'BLANCO*ROSA', 100000),
('imagenes/19.png', 21, 'ADIDAS', 'FORUM 2', 'NEGRO TODO', 100000),
('imagenes/20.jpg', 22, 'ADIDAS', 'FORUM 2', 'ROSADO', 100000),
('imagenes/21.jpg', 23, 'ADIDAS', 'FORUM 2', 'VERDE CLARO*VERDE', 100000),
('imagenes/22.jpg', 24, 'NIKE', 'AIR CUSHLON', 'AZUL CLA*ROSA*BLA', 125000),
('imagenes/23.jpg', 25, 'NIKE', 'AIR CUSHLON', 'BLA*MOR', 125000),
('imagenes/24.jpg', 26, 'NIKE', 'AIR CUSHLON', 'BLAN*ROSA', 125000),
('imagenes/25.png', 27, 'NIKE', 'AIR CUSHLON', 'NEG*BLA', 130000),
('imagenes/26.png', 28, 'NIKE', 'AIR CUSHLON', 'NEG*BLA', 130000),
('imagenes/27.jpg', 29, 'NIKE', 'AIR CUSHLON', 'NEG*BLA*FUCS', 130000),
('imagenes/28.jpg', 30, 'NIKE', 'AIR CUSHLON', 'NEGRO CHULO BLA', 130000),
('imagenes/29.jpg', 31, 'NIKE', 'AIR CUSHLON', 'NEGRO SUELA NJA', 130000),
('imagenes/30.jpg', 32, 'NIKE', 'AIR CUSHLON', 'ROSA*VINO', 130000),
('imagenes/31.jpg', 33, 'NIKE', 'AIR MAX 270', 'NEG*BLA', 115000),
('imagenes/32.jpg', 34, 'NIKE', 'AIR MAX 270', 'NEGRO T', 115000),
('imagenes/33.jpg', 35, 'NIKE', 'AIR MAX BLISS', 'BLAN*PLATA', 125000),
('imagenes/34.jpg', 36, 'NIKE', 'AIR MX 270', 'NEG*BLAN', 125000),
('imagenes/35.png', 37, 'NIKE', 'AIR MX 270', 'NEG*BLAN', 125000),
('imagenes/36.jpg', 38, 'NIKE', 'AIR MX 270', 'NEGRO T', 125000),
('imagenes/37.png', 39, 'NIKE', 'AIR ZOOM 022', 'BLANCO*NEGRO H', 95000),
('imagenes/38.jpg', 40, 'NIKE', 'AIR ZOOM X', 'AZUL*FUSCIA', 115000),
('imagenes/39.png', 41, 'NIKE', 'AIR ZOOM X', 'BLANCO*MORADO', 115000),
('imagenes/40.png', 42, 'NIKE', 'AIR ZOOM X', 'BLANCO*NEGRO H', 115000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-27 22:12:21.602367', '2', 'tennis object (2)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-04-27 22:12:29.425297', '2', 'tennis object (2)', 2, '[]', 7, 1),
(3, '2024-04-28 00:47:40.314713', '3', 'tennis object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-04-28 00:48:32.031691', '4', 'tennis object (4)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-04-28 00:48:58.590629', '5', 'tennis object (5)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-04-28 00:49:28.184696', '6', 'tennis object (6)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-04-28 00:49:55.377613', '7', 'tennis object (7)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2024-04-28 00:50:26.926698', '8', 'tennis object (8)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2024-04-28 00:50:53.775890', '9', 'tennis object (9)', 1, '[{\"added\": {}}]', 7, 1),
(10, '2024-04-28 00:51:27.060508', '10', 'tennis object (10)', 1, '[{\"added\": {}}]', 7, 1),
(11, '2024-04-28 00:51:56.035778', '11', 'tennis object (11)', 1, '[{\"added\": {}}]', 7, 1),
(12, '2024-04-28 00:52:22.037755', '12', 'tennis object (12)', 1, '[{\"added\": {}}]', 7, 1),
(13, '2024-04-28 00:52:44.382589', '13', 'tennis object (13)', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-04-28 00:53:16.883907', '14', 'tennis object (14)', 1, '[{\"added\": {}}]', 7, 1),
(15, '2024-04-28 00:54:33.346861', '15', 'tennis object (15)', 1, '[{\"added\": {}}]', 7, 1),
(16, '2024-04-28 00:55:25.894761', '16', 'tennis object (16)', 1, '[{\"added\": {}}]', 7, 1),
(17, '2024-04-28 00:55:51.801749', '17', 'tennis object (17)', 1, '[{\"added\": {}}]', 7, 1),
(18, '2024-04-28 00:56:20.875633', '18', 'tennis object (18)', 1, '[{\"added\": {}}]', 7, 1),
(19, '2024-04-28 00:57:20.880836', '19', 'tennis object (19)', 1, '[{\"added\": {}}]', 7, 1),
(20, '2024-04-28 00:57:51.478634', '20', 'tennis object (20)', 1, '[{\"added\": {}}]', 7, 1),
(21, '2024-04-28 00:58:19.685567', '21', 'tennis object (21)', 1, '[{\"added\": {}}]', 7, 1),
(22, '2024-04-28 00:58:42.551582', '22', 'tennis object (22)', 1, '[{\"added\": {}}]', 7, 1),
(23, '2024-04-28 00:59:17.383733', '23', 'tennis object (23)', 1, '[{\"added\": {}}]', 7, 1),
(24, '2024-04-28 00:59:45.649073', '24', 'tennis object (24)', 1, '[{\"added\": {}}]', 7, 1),
(25, '2024-04-28 01:00:10.622908', '25', 'tennis object (25)', 1, '[{\"added\": {}}]', 7, 1),
(26, '2024-04-28 01:00:48.929850', '26', 'tennis object (26)', 1, '[{\"added\": {}}]', 7, 1),
(27, '2024-04-28 01:01:12.151738', '27', 'tennis object (27)', 1, '[{\"added\": {}}]', 7, 1),
(28, '2024-04-28 01:01:49.268721', '28', 'tennis object (28)', 1, '[{\"added\": {}}]', 7, 1),
(29, '2024-04-28 01:02:28.836725', '29', 'tennis object (29)', 1, '[{\"added\": {}}]', 7, 1),
(30, '2024-04-28 01:02:56.190814', '30', 'tennis object (30)', 1, '[{\"added\": {}}]', 7, 1),
(31, '2024-04-28 01:03:46.137622', '31', 'tennis object (31)', 1, '[{\"added\": {}}]', 7, 1),
(32, '2024-04-28 01:04:16.000709', '32', 'tennis object (32)', 1, '[{\"added\": {}}]', 7, 1),
(33, '2024-04-28 01:04:55.112693', '33', 'tennis object (33)', 1, '[{\"added\": {}}]', 7, 1),
(34, '2024-04-28 01:05:23.048136', '34', 'tennis object (34)', 1, '[{\"added\": {}}]', 7, 1),
(35, '2024-04-28 01:06:12.994684', '35', 'tennis object (35)', 1, '[{\"added\": {}}]', 7, 1),
(36, '2024-04-28 01:07:17.226749', '36', 'tennis object (36)', 1, '[{\"added\": {}}]', 7, 1),
(37, '2024-04-28 01:07:42.000706', '37', 'tennis object (37)', 1, '[{\"added\": {}}]', 7, 1),
(38, '2024-04-28 01:08:05.114701', '38', 'tennis object (38)', 1, '[{\"added\": {}}]', 7, 1),
(39, '2024-04-28 01:08:25.296708', '39', 'tennis object (39)', 1, '[{\"added\": {}}]', 7, 1),
(40, '2024-04-28 01:08:55.670741', '40', 'tennis object (40)', 1, '[{\"added\": {}}]', 7, 1),
(41, '2024-04-28 01:09:20.668725', '41', 'tennis object (41)', 1, '[{\"added\": {}}]', 7, 1),
(42, '2024-04-28 01:09:41.359683', '42', 'tennis object (42)', 1, '[{\"added\": {}}]', 7, 1),
(43, '2024-05-01 19:04:04.097823', '1', 'ID:1 - Usuario:Prueba - Rol:Admin', 1, '[{\"added\": {}}]', 9, 1),
(44, '2024-05-01 19:48:12.577321', '2', 'Hola', 1, '[{\"added\": {}}]', 4, 1),
(45, '2024-05-02 00:19:56.837593', '2', 'Hola', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'CalzadoLE', 'cantidadtallas'),
(8, 'CalzadoLE', 'historial'),
(7, 'CalzadoLE', 'tenis'),
(9, 'CalzadoLE', 'usuarios'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'CalzadoLE', '0001_initial', '2024-04-27 18:35:16.975797'),
(2, 'contenttypes', '0001_initial', '2024-04-27 18:35:17.975534'),
(3, 'auth', '0001_initial', '2024-04-27 18:35:29.806053'),
(4, 'admin', '0001_initial', '2024-04-27 18:35:31.781924'),
(5, 'admin', '0002_logentry_remove_auto_add', '2024-04-27 18:35:31.856175'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-27 18:35:31.920979'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-04-27 18:35:32.634231'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-04-27 18:35:34.972920'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-04-27 18:35:35.147056'),
(10, 'auth', '0004_alter_user_username_opts', '2024-04-27 18:35:35.189177'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-04-27 18:35:35.846666'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-04-27 18:35:35.915482'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-04-27 18:35:35.963354'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-04-27 18:35:36.083488'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-04-27 18:35:36.217168'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-04-27 18:35:36.400238'),
(17, 'auth', '0011_update_proxy_permissions', '2024-04-27 18:35:36.480289'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-04-27 18:35:36.600488'),
(19, 'sessions', '0001_initial', '2024-04-27 18:35:37.199353'),
(20, 'CalzadoLE', '0002_delete_tennis', '2024-04-28 22:08:45.590512'),
(21, 'CalzadoLE', '0003_initial', '2024-04-28 22:56:04.711456'),
(22, 'CalzadoLE', '0004_historial', '2024-05-01 16:53:29.565091'),
(23, 'CalzadoLE', '0005_usuarios', '2024-05-01 17:03:19.601600'),
(24, 'CalzadoLE', '0006_historial_id_tennis_alter_historial_accion_and_more', '2024-05-01 18:24:10.149236'),
(25, 'CalzadoLE', '0007_alter_historial_usuario_alter_usuarios_usuario', '2024-05-01 19:49:21.858598'),
(26, 'CalzadoLE', '0008_rename_id_tennis_historial_tennis', '2024-05-01 19:56:41.182929'),
(27, 'CalzadoLE', '0009_alter_historial_tennis_alter_historial_usuario', '2024-05-01 20:27:52.303830'),
(28, 'CalzadoLE', '0010_alter_historial_tennis_alter_historial_usuario', '2024-05-01 21:04:47.791853'),
(29, 'CalzadoLE', '0011_remove_historial_tennis_remove_historial_usuario_and_more', '2024-05-01 21:15:18.617540'),
(30, 'CalzadoLE', '0012_alter_historial_tennis_id_alter_historial_usuario_id', '2024-05-01 21:27:42.351620'),
(31, 'CalzadoLE', '0013_rename_tennis_tenis_and_more', '2024-05-01 21:38:54.636149'),
(32, 'CalzadoLE', '0002_cantidadtallas_and_more', '2024-05-05 21:00:18.864807'),
(33, 'CalzadoLE', '0003_alter_cantidadtallas_talla36_and_more', '2024-05-05 22:35:48.823604'),
(34, 'CalzadoLE', '0004_alter_cantidadtallas_tenis_id', '2024-05-05 22:43:06.632656'),
(35, 'CalzadoLE', '0005_alter_cantidadtallas_talla36_and_more', '2024-05-05 22:55:20.671364');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('66v1uw7rcdfce69qvkbsw30kedqbanea', '.eJxVjDkOwjAUBe_iGlne41DScwbrb8EBlEhxUiHuDpFSQPtm5r1UgW2tZWuylJHVWVl1-t0Q6CHTDvgO023WNE_rMqLeFX3Qpq8zy_NyuH8HFVr91n2QnKMbkC1Em2HwYgaTApCPCW3PGI11HXEUQyERdezAo--SYM6-V-8P6CU3_g:1s3nEO:-KRZ1lUieDC1updybrKvUA_WqU46l3ROm6byElpQVcE', '2024-05-20 01:33:28.133920'),
('nmtcvoaigqcykwz3jvfvurqd2s2ameee', '.eJxVjDkOwjAUBe_iGlne41DScwbrb8EBlEhxUiHuDpFSQPtm5r1UgW2tZWuylJHVWVl1-t0Q6CHTDvgO023WNE_rMqLeFX3Qpq8zy_NyuH8HFVr91n2QnKMbkC1Em2HwYgaTApCPCW3PGI11HXEUQyERdezAo--SYM6-V-8P6CU3_g:1s1DZ6:XLKVhKlv3ort0TQEqM9cQzta1cx6wg3REInCJfzgoj8', '2024-05-12 23:04:12.970997'),
('vx2eujt0dirwzxdh265bw3vnjwy8jgnn', '.eJxVjDkOwjAUBe_iGlne41DScwbrb8EBlEhxUiHuDpFSQPtm5r1UgW2tZWuylJHVWVl1-t0Q6CHTDvgO023WNE_rMqLeFX3Qpq8zy_NyuH8HFVr91n2QnKMbkC1Em2HwYgaTApCPCW3PGI11HXEUQyERdezAo--SYM6-V-8P6CU3_g:1s2PEY:PXRd1XHqPIAbDB1xDeiBl6ZwQtemAB0918lJGj9e-6Y', '2024-05-16 05:43:54.925626'),
('we1l3xvyqgsf1cudbnw0b71y55fdp85a', '.eJxVjDkOwjAUBe_iGlne41DScwbrb8EBlEhxUiHuDpFSQPtm5r1UgW2tZWuylJHVWVl1-t0Q6CHTDvgO023WNE_rMqLeFX3Qpq8zy_NyuH8HFVr91n2QnKMbkC1Em2HwYgaTApCPCW3PGI11HXEUQyERdezAo--SYM6-V-8P6CU3_g:1s2KBy:uB6kiJrBAVVqzSKrQQBcU-8wByRU-Eags-Ko6o-38P0', '2024-05-16 00:20:54.300832'),
('zu07c70b2ova6eq54brfrw2efabvhi0n', '.eJxVjDkOwjAUBe_iGlne41DScwbrb8EBlEhxUiHuDpFSQPtm5r1UgW2tZWuylJHVWVl1-t0Q6CHTDvgO023WNE_rMqLeFX3Qpq8zy_NyuH8HFVr91n2QnKMbkC1Em2HwYgaTApCPCW3PGI11HXEUQyERdezAo--SYM6-V-8P6CU3_g:1s2P8U:S2ZNi3daohpfOOiCbjwjgZshCllNmofumVhC68LJNYg', '2024-05-16 05:37:38.026283');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `calzadole_cantidadtallas`
--
ALTER TABLE `calzadole_cantidadtallas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CalzadoLE_cantidadtallas_Tenis_ID_id_3aa28514_uniq` (`Tenis_ID_id`);

--
-- Indices de la tabla `calzadole_historial`
--
ALTER TABLE `calzadole_historial`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `calzadole_tenis`
--
ALTER TABLE `calzadole_tenis`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calzadole_cantidadtallas`
--
ALTER TABLE `calzadole_cantidadtallas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calzadole_historial`
--
ALTER TABLE `calzadole_historial`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `calzadole_tenis`
--
ALTER TABLE `calzadole_tenis`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `calzadole_cantidadtallas`
--
ALTER TABLE `calzadole_cantidadtallas`
  ADD CONSTRAINT `CalzadoLE_cantidadta_Tenis_ID_id_3aa28514_fk_CalzadoLE` FOREIGN KEY (`Tenis_ID_id`) REFERENCES `calzadole_tenis` (`ID`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
