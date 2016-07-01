-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-07-2016 a las 01:41:45
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idestatus` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`, `idestatus`) VALUES
(1260, 'Accesorios para vehiculos', '2016-07-02 03:10:32', '2016-07-02 03:10:32', 2),
(1261, 'Computación', '2016-07-02 03:10:32', '2016-07-02 03:10:32', 2),
(1262, 'Videojuegos', '2016-07-02 03:10:32', '2016-07-02 03:10:32', 1),
(1263, 'Camaras y accesorios', '2016-07-02 03:10:33', '2016-07-02 03:10:33', 2),
(1264, 'Celulares y accesorios', '2016-07-02 03:10:33', '2016-07-02 03:10:33', 2),
(1265, 'Eletrodomestiscos', '2016-07-02 03:10:33', '2016-07-02 03:10:33', 1),
(1266, 'Ropa', '2016-07-02 03:10:33', '2016-07-02 03:10:33', 2),
(1267, 'Joyeria', '2016-07-02 03:10:33', '2016-07-02 03:10:33', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Activo', '2016-06-27 07:19:54', '2016-06-27 07:19:54'),
(2, 'Inactivo', '2016-06-27 07:19:54', '2016-06-27 07:19:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idestatus` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`, `created_at`, `updated_at`, `idestatus`) VALUES
(151, 'Feeney Group', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 2),
(152, 'Carroll, Mraz and Smitham', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 1),
(153, 'Krajcik, Flatley and Kiehn', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 2),
(154, 'Nikolaus, Batz and Gutmann', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 1),
(155, 'King-Emmerich', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 1),
(156, 'Cronin-Rutherford', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 1),
(157, 'Kertzmann-Rolfson', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 2),
(158, 'Kozey, Homenick and Mayer', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 1),
(159, 'Fritsch, Schroeder and Durgan', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 2),
(160, 'Huel, Weimann and Zieme', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 2),
(161, 'Bogan Inc', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 1),
(162, 'Jenkins, Langosh and Swift', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 1),
(163, 'Crona, Lockman and Waters', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 1),
(164, 'Lind and Sons', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 1),
(165, 'Schmitt, Greenfelder and Kling', '2016-07-02 03:11:09', '2016-07-02 03:11:09', 2),
(166, 'Rowe, Glover and Emmerich', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 2),
(167, 'Lind-Botsford', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 2),
(168, 'Terry-Lindgren', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 1),
(169, 'Frami, Bruen and Senger', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 2),
(170, 'Wyman Inc', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 1),
(171, 'Ratke, Steuber and Kilback', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 1),
(172, 'Crist, Graham and Labadie', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 2),
(173, 'McLaughlin-Walker', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 1),
(174, 'Frami-Stanton', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 1),
(175, 'Hagenes-Abbott', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 2),
(176, 'Goyette Group', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 1),
(177, 'Grimes-Stehr', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 2),
(178, 'Blanda and Sons', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 2),
(179, 'Jakubowski, Gorczany and Gottlieb', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 1),
(180, 'Raynor, Leffler and Thompson', '2016-07-02 03:11:10', '2016-07-02 03:11:10', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_15_022119_create_estatus_table', 2),
('2016_06_15_030655_create_ubicacion_table', 2),
('2016_06_16_004457_create_tipousuario_table', 2),
('2016_06_16_004822_create_categorias_table', 2),
('2016_06_16_004835_create_marcas_table', 2),
('2016_06_16_004852_create_tiposproductos_table', 2),
('2016_06_16_010111_add_campos_to_users_table', 3),
('2016_06_19_235329_rename_tablas_table', 4),
('2016_06_19_235524_rename_campos_table', 4),
('2016_06_20_002748_create_productos_table', 5),
('2016_06_20_005258_rename_tablatipoproducto_table', 5),
('2016_06_20_005723_create_productosfotos_table', 6),
('2016_06_20_030040_rename_campo_nombres_on_usuarios_table', 6),
('2016_06_27_033315_uptadate_ForeignKeyOfidestatusOnUbicacion_table', 7),
('2016_06_28_004631_rename_campo_tipoususario_table', 8),
('2016_07_01_213907_add_campo_on_categorias_table', 9),
('2016_07_01_231728_rename_campodescription_table', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idestatus` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `idcategorias` int(10) UNSIGNED NOT NULL,
  `idmarcas` int(10) UNSIGNED NOT NULL,
  `idtiposproductos` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productosfotos`
--

CREATE TABLE `productosfotos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idproductos` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE `tipoproducto` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idestatus` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipoproducto`
--

INSERT INTO `tipoproducto` (`id`, `nombre`, `created_at`, `updated_at`, `idestatus`) VALUES
(7, 'Stamm PLC', '2016-07-02 03:14:44', '2016-07-02 03:14:44', 1),
(8, 'Nicolas Inc', '2016-07-02 03:14:44', '2016-07-02 03:14:44', 1),
(9, 'Bashirian, Walker and Thompson', '2016-07-02 03:14:44', '2016-07-02 03:14:44', 1),
(10, 'Johnson, Rau and Little', '2016-07-02 03:14:44', '2016-07-02 03:14:44', 1),
(11, 'Reinger, Dickens and Schumm', '2016-07-02 03:14:44', '2016-07-02 03:14:44', 1),
(12, 'Kling, O''Kon and Gutkowski', '2016-07-02 03:14:44', '2016-07-02 03:14:44', 1),
(13, 'Buckridge Inc', '2016-07-02 03:14:44', '2016-07-02 03:14:44', 2),
(14, 'Hilll, Toy and Emard', '2016-07-02 03:14:44', '2016-07-02 03:14:44', 1),
(15, 'Moen-Bashirian', '2016-07-02 03:14:44', '2016-07-02 03:14:44', 1),
(16, 'Torp, Legros and Kub', '2016-07-02 03:14:44', '2016-07-02 03:14:44', 2),
(17, 'Kuphal-Feeney', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 1),
(18, 'Nader LLC', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 1),
(19, 'Simonis PLC', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 2),
(20, 'Sporer Inc', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 2),
(21, 'Upton, Wunsch and Robel', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 2),
(22, 'Rowe-Windler', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 2),
(23, 'Tremblay PLC', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 1),
(24, 'Kerluke, Jones and Christiansen', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 2),
(25, 'Treutel-Hackett', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 1),
(26, 'Olson and Sons', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 2),
(27, 'Nienow-Hammes', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 2),
(28, 'Smitham-Romaguera', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 1),
(29, 'Willms, Aufderhar and Maggio', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 1),
(30, 'Hartmann-Langosh', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 1),
(31, 'Ferry, Metz and Buckridge', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 2),
(32, 'Ryan and Sons', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 2),
(33, 'Nicolas-Lesch', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 1),
(34, 'Stanton-Breitenberg', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 2),
(35, 'Dicki, Mueller and Kris', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 1),
(36, 'Kuhn, Ullrich and Abernathy', '2016-07-02 03:14:45', '2016-07-02 03:14:45', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(5, 'Administrador', NULL, NULL),
(6, 'Usuario', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `idestatus` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id`, `idestatus`, `nombre`, `created_at`, `updated_at`) VALUES
(2, 2, 'Kentucky', '2016-06-27 07:47:40', '2016-06-27 07:47:40'),
(3, 2, 'Connecticut', '2016-06-27 07:47:40', '2016-06-27 07:47:40'),
(4, 2, 'Connecticut', '2016-06-27 07:47:40', '2016-06-27 07:47:40'),
(5, 1, 'Montana', '2016-06-27 07:47:40', '2016-06-27 07:47:40'),
(6, 2, 'District of Columbia', '2016-06-27 07:47:40', '2016-06-27 07:47:40'),
(7, 2, 'Nebraska', '2016-06-27 07:47:40', '2016-06-27 07:47:40'),
(8, 2, 'Indiana', '2016-06-27 07:47:40', '2016-06-27 07:47:40'),
(9, 1, 'Georgia', '2016-06-27 07:47:40', '2016-06-27 07:47:40'),
(10, 1, 'Alaska', '2016-06-27 07:47:40', '2016-06-27 07:47:40'),
(11, 1, 'Kansas', '2016-06-27 07:47:40', '2016-06-27 07:47:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idestatus` int(10) UNSIGNED NOT NULL,
  `idtipousuario` int(10) UNSIGNED NOT NULL,
  `idubicacion` int(10) UNSIGNED NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `password`, `remember_token`, `created_at`, `updated_at`, `idestatus`, `idtipousuario`, `idubicacion`, `apellido`, `telefono`, `descripcion`) VALUES
(31, 'Dedric', 'aletha83@gmail.com', 'eIOojhLM$Cq''<gz', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 6, 5, 'Denesik', '1-826-782-6580', 'Voluptates voluptas quisquam accusamus qui. Animi dolorem ut hic perspiciatis rerum quo. Error ipsam maiores modi non ad ullam enim. Quibusdam a eos facilis voluptatem fugit et sit.'),
(32, 'Vella', 'ashlynn.douglas@yundt.org', 'jlru][U2e$,[,Vs/>y', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 5, 10, 'Kovacek', '+1.510.416.8979', 'Ratione fuga expedita nobis dolorem. Magni et incidunt suscipit reiciendis. Ut enim officia provident consequatur explicabo quia dolore.'),
(33, 'Vivien', 'sherwood83@jacobi.biz', 'w9=QD1X!0Via', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 2, 5, 2, 'Osinski', '(261) 841-1397 x8741', 'Expedita est mollitia consequatur sit odit vel. Sequi est debitis aliquid accusantium pariatur voluptas iste. Et minus deleniti consequuntur sunt iste aut qui dolores.'),
(34, 'Orval', 'hmoore@gmail.com', 'qjOF#?w8R#', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 6, 3, 'Hammes', '536.741.9973', 'Quisquam veniam nulla sed libero at reiciendis nostrum quasi. Et praesentium aut possimus harum sunt facilis at. Perferendis quia velit et.'),
(35, 'Mike', 'mekhi.bartell@hotmail.com', 'UcnM=zzZYRHipePpx_vf', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 5, 5, 'Bartell', '(870) 363-6006 x802', 'Ipsum culpa totam commodi facere voluptatem recusandae. Eveniet fuga aut ut omnis. Dolores molestiae aut voluptate quae sint pariatur sapiente.'),
(36, 'Carmen', 'ernesto.moen@beier.com', 'ZFJDJ8~y;(TA$r!|', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 6, 4, 'Klein', '860-781-7447 x36608', 'Pariatur dolor deserunt et est. Esse nihil qui sed. Quod eos voluptates aut. Repudiandae ut est est alias.'),
(37, 'Noah', 'zkshlerin@leannon.net', '!6Sd3wUA;O!', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 2, 6, 5, 'Hyatt', '370.712.4366 x31158', 'Quis accusamus rerum vitae praesentium nesciunt repudiandae harum. Quasi optio numquam dolore omnis. Aut voluptate necessitatibus veritatis ut.'),
(38, 'Madelynn', 'gebert@yahoo.com', 'Bba=CzpqzT5l/5pBtWXZ', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 6, 5, 'Larson', '(353) 584-6027 x075', 'Vero eum occaecati cumque quis sit in. Ab qui amet labore ullam eum. Fuga et blanditiis dolor reiciendis.'),
(39, 'David', 'mackenzie.lowe@lowe.net', '{7)h7A0Sx^Y*.f>;vv{', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 5, 5, 'Pacocha', '1-710-652-8177 x50412', 'Est dolor omnis qui itaque id qui non voluptas. Illo aut at reprehenderit eum rerum impedit veritatis. Eaque ex odit iste a.'),
(40, 'Hilbert', 'rodger57@hotmail.com', 'H0SA;/e_0`', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 2, 6, 5, 'Hessel', '482.361.1390', 'Aut consequatur quibusdam dolorem. Sequi nostrum hic repudiandae occaecati. Expedita totam error quae porro earum rem. Dolor animi ea qui voluptatem odio. Dolorem quos corporis at.'),
(41, 'Cody', 'strosin.sydni@hotmail.com', 'po8pBUS_Tx)G', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 2, 6, 8, 'Kirlin', '1-447-808-4322 x103', 'Error modi corrupti molestias quasi quaerat. Hic veritatis atque est adipisci cum incidunt. Rerum praesentium qui omnis nemo qui quia nulla. Incidunt sint non impedit facilis.'),
(42, 'Lina', 'eliane26@quigley.com', 'BGi9k3yojV,', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 6, 3, 'Schmeler', '(884) 676-0495 x429', 'Aspernatur nulla assumenda inventore et. At omnis vero vitae voluptatem suscipit numquam. Suscipit aut quo consequatur sit alias quia.'),
(43, 'Idell', 'pasquale.dietrich@gmail.com', '.<icQ`rt\\P2B:BU', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 6, 3, 'Streich', '1-262-297-0410', 'Beatae reprehenderit tempora aperiam nihil ipsum. Voluptatem aut magni enim quasi quis reprehenderit dicta. Velit cupiditate corporis nam rem.'),
(44, 'Jeremie', 'esmeralda.mraz@gmail.com', 'Oc%Sk&nK\\"PE\\U2-#j0', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 6, 8, 'Littel', '+19705284279', 'Quis cum dolorem id molestias distinctio in reiciendis architecto. Sed est aut eaque non enim fugiat accusantium. Reiciendis magnam labore iure non sed. Vel aliquam quia aut autem ea.'),
(45, 'Olaf', 'zoconnell@gmail.com', '''ctyLS[+d#A[,A&^sx', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 5, 9, 'Pollich', '557.835.3615', 'Quis iure magni et autem laudantium. Voluptatibus laudantium reprehenderit corrupti libero. Sequi delectus vel voluptatibus adipisci aliquid vitae voluptatem.'),
(46, 'Shakira', 'windler.mackenzie@gmail.com', '4AS:~/wmn_6K)AGe', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 1, 5, 10, 'Turner', '1-956-760-1144', 'Rerum dolorum aut inventore et. Deleniti placeat optio cupiditate quo. Quos explicabo autem ratione nostrum incidunt.'),
(47, 'Ricardo', 'urban67@yahoo.com', 'DTV]DW/J];l\\^uVt', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 2, 6, 5, 'Quigley', '810.783.9799 x610', 'Ratione ad quasi sit facere et. Alias ab et eaque excepturi molestias. Est voluptate veniam minima consequuntur beatae.'),
(48, 'Mackenzie', 'robel.julia@dibbert.info', '[f_6+5i[H%M&X~,Iyu@^', NULL, '2016-07-02 03:23:16', '2016-07-02 03:23:16', 2, 6, 7, 'Schumm', '1-618-904-3849 x741', 'Aut dolor corporis et molestias et dolor. Neque aut dignissimos cum vel. Dolore laboriosam est labore asperiores.'),
(49, 'Janet', 'oswaldo32@torphy.com', 'eNI1&VRyVn,$7~', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 1, 6, 8, 'Dach', '(893) 519-9618', 'Quisquam quia ipsa et in. Omnis neque molestias et ullam nemo ullam ut. Sed eum eveniet nam ducimus ea veniam. Error voluptatum culpa id qui.'),
(50, 'Jakob', 'toy.sim@hotmail.com', 'V;~\\(UJk70', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 1, 5, 5, 'Thiel', '+1 (812) 932-7683', 'Eum aut explicabo et hic minima magnam. Qui nobis qui soluta. Expedita excepturi vel excepturi voluptatibus molestiae aperiam. Fugiat tempora officia qui.'),
(51, 'Kailee', 'etha32@gmail.com', 'Pxw:{UGy"cXAKJHl', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 2, 5, 9, 'Hayes', '+1 (813) 422-9697', 'Vero ullam est veritatis tempore eius ad. Et aut est voluptatum temporibus. Quia dolore quibusdam provident voluptates. Saepe eum velit sed occaecati vel reiciendis.'),
(52, 'Karelle', 'dock.kunze@frami.com', '-!"3@V', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 1, 6, 6, 'Kuhn', '675.554.6050', 'Sed nulla quisquam et ut qui. Voluptate et consectetur soluta eligendi rerum sit. Eum quia suscipit officiis omnis laudantium quam corporis.'),
(53, 'Georgiana', 'raphaelle.huel@altenwerth.com', '2|''+p+e54bIT{ei', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 2, 6, 3, 'Bernhard', '793.747.3125', 'Non qui corrupti esse doloremque quia aut. Qui perferendis iure voluptatem. Hic aliquid tempora ad est.'),
(54, 'Elta', 'sheridan11@yahoo.com', '^;gTveAv[', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 2, 6, 7, 'Leuschke', '276.931.7087', 'Repudiandae exercitationem laudantium dignissimos. Error sequi placeat aut assumenda. Iure et officiis possimus voluptas quis cupiditate.'),
(55, 'Twila', 'cassin.geovanni@gmail.com', 'JNsqeV_&', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 2, 5, 8, 'Robel', '+1-915-343-5332', 'Ut omnis odit ea. Praesentium quod suscipit optio quibusdam voluptatum et. Ut ut totam quia quos. Est eligendi ipsum perspiciatis velit vero.'),
(56, 'Paula', 'lisa.harvey@roob.com', 'ol$$jIt4[!"kSntK9F', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 1, 5, 8, 'Lynch', '205-985-0389 x6326', 'Corporis quaerat debitis odio iusto sunt sit eaque quis. Repudiandae magnam illo accusamus rerum ut. Non ducimus sapiente totam animi. Qui libero labore dicta ut commodi.'),
(57, 'Jacey', 'gerlach.blanche@gmail.com', '3(/.<I0', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 2, 6, 9, 'Willms', '893.221.5747', 'Unde ipsum unde facilis. Aliquam at repellat omnis hic natus est. Sint voluptatem enim non dolorem ea.'),
(58, 'Astrid', 'araynor@gmail.com', '3NHhRTZL?r$}n%$6', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 1, 5, 4, 'Bradtke', '520-367-8892', 'Modi quas atque eligendi consectetur. Quis maiores voluptate rerum et a officiis. Nemo consectetur sed voluptatem dolorem deserunt in.'),
(59, 'Hester', 'kiarra.goldner@kling.com', 'a:8''c.++YwdnK', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 1, 6, 2, 'Morar', '593-885-6026', 'Dolorum similique eaque cumque distinctio omnis ut consequuntur. Repellendus iure non dolor occaecati deserunt. Et et inventore quam magni. Voluptatem qui et vel eaque ipsam.'),
(60, 'Jerel', 'colt08@crooks.info', 'zwJ<]W/E''hF;DdiM', NULL, '2016-07-02 03:23:17', '2016-07-02 03:23:17', 1, 5, 6, 'Klocko', '1-840-570-2924 x9162', 'Facere minima quia repellat. Tempora est itaque esse voluptas et laudantium minima.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorias_idestatus_foreign` (`idestatus`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marcas_idestatus_foreign` (`idestatus`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_idestatus_foreign` (`idestatus`),
  ADD KEY `productos_idusuario_foreign` (`idusuario`),
  ADD KEY `productos_idcategorias_foreign` (`idcategorias`),
  ADD KEY `productos_idmarcas_foreign` (`idmarcas`),
  ADD KEY `productos_idtiposproductos_foreign` (`idtiposproductos`);

--
-- Indices de la tabla `productosfotos`
--
ALTER TABLE `productosfotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productosfotos_idproductos_foreign` (`idproductos`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipoproducto_idestatus_foreign` (`idestatus`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ubicacion_idestatus_foreign` (`idestatus`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`correo`),
  ADD KEY `users_idestatus_foreign` (`idestatus`),
  ADD KEY `users_idtipoususario_foreign` (`idtipousuario`),
  ADD KEY `users_idubicacion_foreign` (`idubicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1268;
--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productosfotos`
--
ALTER TABLE `productosfotos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `categorias_idestatus_foreign` FOREIGN KEY (`idestatus`) REFERENCES `estatus` (`id`);

--
-- Filtros para la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD CONSTRAINT `marcas_idestatus_foreign` FOREIGN KEY (`idestatus`) REFERENCES `estatus` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_idcategorias_foreign` FOREIGN KEY (`idcategorias`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `productos_idestatus_foreign` FOREIGN KEY (`idestatus`) REFERENCES `estatus` (`id`),
  ADD CONSTRAINT `productos_idmarcas_foreign` FOREIGN KEY (`idmarcas`) REFERENCES `marcas` (`id`),
  ADD CONSTRAINT `productos_idtiposproductos_foreign` FOREIGN KEY (`idtiposproductos`) REFERENCES `tipoproducto` (`id`),
  ADD CONSTRAINT `productos_idusuario_foreign` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productosfotos`
--
ALTER TABLE `productosfotos`
  ADD CONSTRAINT `productosfotos_idproductos_foreign` FOREIGN KEY (`idproductos`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  ADD CONSTRAINT `tipoproducto_idestatus_foreign` FOREIGN KEY (`idestatus`) REFERENCES `estatus` (`id`);

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `ubicacion_idestatus_foreign` FOREIGN KEY (`idestatus`) REFERENCES `estatus` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `users_idestatus_foreign` FOREIGN KEY (`idestatus`) REFERENCES `estatus` (`id`),
  ADD CONSTRAINT `users_idtipoususario_foreign` FOREIGN KEY (`idtipousuario`) REFERENCES `tipousuario` (`id`),
  ADD CONSTRAINT `users_idubicacion_foreign` FOREIGN KEY (`idubicacion`) REFERENCES `ubicacion` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
