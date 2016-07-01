-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-06-2016 a las 23:47:37
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Accesorios para vehiculos', NULL, NULL),
(2, 'Conputación', NULL, NULL),
(3, 'Videojuegos', NULL, NULL),
(4, 'Camaras y accesorios', NULL, NULL),
(5, 'Celulares y accesorios', NULL, NULL),
(6, 'Eletrodomestiscos', NULL, NULL),
(7, 'Ropa', NULL, NULL),
(8, 'Joyeria', NULL, NULL);

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
(1, 'Activo', NULL, NULL),
(2, 'Inactivo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Kiehn-Mayert', NULL, NULL),
(2, 'Hackett-Welch', NULL, NULL),
(3, 'Schmitt, Marquardt and Mohr', NULL, NULL),
(4, 'Hessel LLC', NULL, NULL),
(5, 'Welch-Denesik', NULL, NULL),
(6, 'Kuhn LLC', NULL, NULL),
(7, 'Beier-Feeney', NULL, NULL),
(8, 'Hauck PLC', NULL, NULL),
(9, 'Mohr, Schinner and Moore', NULL, NULL),
(10, 'Swift-Gulgowski', NULL, NULL),
(11, 'Kohler and Sons', NULL, NULL),
(12, 'Ernser, Rath and Hills', NULL, NULL),
(13, 'Graham, Carter and Ortiz', NULL, NULL),
(14, 'Wintheiser, Jenkins and Medhurst', NULL, NULL),
(15, 'Halvorson, Adams and Feest', NULL, NULL),
(16, 'Crooks Ltd', NULL, NULL),
(17, 'Beer Inc', NULL, NULL),
(18, 'Bosco Ltd', NULL, NULL),
(19, 'Turner Group', NULL, NULL),
(20, 'Roob, Schowalter and White', NULL, NULL),
(21, 'Wintheiser, Zboncak and Wehner', NULL, NULL),
(22, 'Morissette Ltd', NULL, NULL),
(23, 'Weimann-Ferry', NULL, NULL),
(24, 'Lueilwitz-Marvin', NULL, NULL),
(25, 'Kris-Kreiger', NULL, NULL),
(26, 'Parisian and Sons', NULL, NULL),
(27, 'Erdman Ltd', NULL, NULL),
(28, 'Beahan LLC', NULL, NULL),
(29, 'Leuschke-Price', NULL, NULL),
(30, 'Cummerata LLC', NULL, NULL);

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
('2016_06_15_022119_create_estatus_table', 1),
('2016_06_15_030655_create_ubicacion_table', 1),
('2016_06_16_004457_create_tipousuario_table', 1),
('2016_06_16_004822_create_categorias_table', 1),
('2016_06_16_004835_create_marcas_table', 1),
('2016_06_16_004852_create_tiposproductos_table', 1),
('2016_06_16_010111_add_campos_to_users_table', 1),
('2016_06_19_235329_rename_tablas_table', 1),
('2016_06_19_235524_rename_campos_table', 1),
('2016_06_20_002748_create_productos_table', 1),
('2016_06_20_005258_rename_tablatipoproducto_table', 1),
('2016_06_20_005723_create_productosfotos_table', 1),
('2016_06_20_030040_rename_campo_nombres_on_usuarios_table', 1);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'Administrador', NULL, NULL),
(2, 'Usuario', NULL, NULL);

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
  `idtipoususario` int(10) UNSIGNED NOT NULL,
  `idubicacion` int(10) UNSIGNED NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `users_idtipoususario_foreign` (`idtipoususario`),
  ADD KEY `users_idubicacion_foreign` (`idubicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

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
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `ubicacion_idestatus_foreign` FOREIGN KEY (`idestatus`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `users_idestatus_foreign` FOREIGN KEY (`idestatus`) REFERENCES `estatus` (`id`),
  ADD CONSTRAINT `users_idtipoususario_foreign` FOREIGN KEY (`idtipoususario`) REFERENCES `tipousuario` (`id`),
  ADD CONSTRAINT `users_idubicacion_foreign` FOREIGN KEY (`idubicacion`) REFERENCES `ubicacion` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
