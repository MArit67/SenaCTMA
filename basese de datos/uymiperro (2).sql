-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-11-2024 a las 01:21:20
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uymiperro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adopcion/mascotas`
--

CREATE TABLE `adopcion/mascotas` (
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` int(11) NOT NULL,
  `lugar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lug_de_adop` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adopta`
--

CREATE TABLE `adopta` (
  `codigo` int(11) NOT NULL,
  `fecha` int(11) NOT NULL,
  `id_animal` int(11) NOT NULL,
  `id:usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fundacion`
--

CREATE TABLE `fundacion` (
  `codigo` int(11) NOT NULL,
  `nombre_fundacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `ubicacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fundacion`
--

INSERT INTO `fundacion` (`codigo`, `nombre_fundacion`, `telefono`, `ubicacion`, `correo`) VALUES
(28, 'amigos buscan su hogar', 2147483647, 'cra 20 98.25', 'alexafi|@gmail.com'),
(29, 'Patas amigables', 2147483647, 'cra 20 98.25', 'emmanuel9ofnx@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `id_animal` int(11) NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `raza` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `color` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fundacion` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `num_fundacion` bigint(100) NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`id_animal`, `nombre`, `descripcion`, `raza`, `color`, `fundacion`, `num_fundacion`, `imagen`) VALUES
(39, 'Niña', 'Gsto, 2 años, rescatado', 'Persa', 'blanco', 'amigos buscan su hogar', 3126779249, 'uploads/persa.jpg'),
(40, 'Paco', '1 año, rescatado, jugueton ', 'Yorki', 'cafe', 'amigos buscan su hogar', 3126779249, 'uploads/perro.jpg'),
(41, 'Princesa', 'gata,esterilizada,amigable', 'Criolla', 'negro', 'patas amigables', 3114097002, 'uploads/negro.jpg'),
(42, 'Pelado', 'Gato egipcio, leucemia', 'Egipcio', 'gris', 'amigos buscan su hogar', 3126779249, 'uploads/pelado.jpg'),
(43, 'Mailo', 'gruñon pero tierno', 'Buldog', 'negro y blanco', 'patas amigables', 3126779249, 'uploads/buldog.jpg'),
(44, 'Nico', 'La mejor compañia, rescatado', 'French poodle', 'blanco', 'patas amigables', 3136778278, 'uploads/french.jpg'),
(45, 'moiso', 'Rescatado, 2 años,  leucemia', 'criollo', 'Naranja', 'amigos buscan su hogar', 31628638737, 'uploads/naranja.jpg'),
(46, 'Manchado', '4 años, en albergue, alegre', 'criollo', 'Negro- cafe', 'patas amigables', 31345657265, 'uploads/manchado.jpg'),
(47, 'Bravo', 'Agresivo por maltrato', 'rottweiler', 'negro', 'amigos buscan su hogar', 314256257657, 'uploads/bravo.jpg'),
(48, 'Dacota', 'jugueton, alegre, cria de doberman', 'Doberman', 'negro', 'patas amigables', 31567276628, 'uploads/doberman.jpg'),
(49, 'Chandosa', 'Rescatada, 8 años, alegre', 'criollo', 'cafe', 'patas amigables', 3178788658, 'uploads/criollo.jpg'),
(51, 'WOWF', 'gruñon pero tierno, recien nacido', 'Salchicha', 'negro', 'amigos buscan su hogar', 31463478765, 'uploads/salchi.jpg'),
(52, 'Mozart', 'cachorro, mimado y cariñoso', 'criollo', 'blanco y cafe', 'patas amigables', 3235546798, 'uploads/criollo2.jpg'),
(53, 'Malaga', 'adoptada,5 años, cariñosa', 'criollo', 'negro', 'amigos buscan su hogar', 31345665785, 'uploads/malaga.jpg'),
(54, 'ZAHARA', 'gruñona,1 año', 'criolla', 'gris', 'patas amigables', 31434665687, 'uploads/criollo3.jpg!d'),
(56, 'Onix', 'Amistoso, Timido', 'criollo', 'Negro', 'amigos buscan su hogar', 3456346354, 'uploads/pruaba5.jpg'),
(57, 'lulu', 'perro', 'Salchicha', 'negro', 'patas amigables', 3225440630, 'uploads/prueba1.jpg'),
(58, 'bigotes', 'gato', 'persa', 'gris con blanco', 'patas amigables', 3193995733, 'uploads/pruaba5.jpg'),
(59, 'muñeca', 'perro ', 'cocker', 'cafe', 'amigos buscan su hogar', 3006674640, 'uploads/prueba3.jpg'),
(60, 'jaime', 'amigable 3 años', 'criollo', 'gris', 'amigos buscan su hogar', 3332345674, 'uploads/naranja.jpg'),
(61, 'lupita', 'mona, no tenia ojo ', 'criolla', 'mona', 'amigos buscan su hogar', 324576324, 'uploads/malaga.jpg'),
(63, 'princesa', 'amigable', 'criollo', 'cafe', 'patas amigables', 3234533244, 'uploads/bravo.jpg'),
(64, 'tini', 'amigable', 'pomerania lulú', 'blanco', 'amigos buscan su hogar', 32245654355, 'uploads/naranja.jpg'),
(66, 'Zeus', 'loco', 'criollo', 'negro', 'patas amigables', 322443454, 'uploads/french.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `sesion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `sesion`) VALUES
(1, 'admin', './admin/'),
(2, 'adoptante', './adoptante/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `contrasena` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `direccion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rol_id` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `nacimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `numero`, `contrasena`, `direccion`, `rol_id`, `cedula`, `nacimiento`) VALUES
(29, 'sofia botero fernandez', 'sofia@gmail.com', 2147483647, 'sofia123', 'cra 30 sur', 2, 1022004144, 2000),
(30, 'Alexa Duque Guzman', 'alexa@gmail.com', 2147483647, 'ale123', 'cra 50 norte', 1, 43745724, 2001),
(31, '', '', 0, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunacion`
--

CREATE TABLE `vacunacion` (
  `codigo` int(11) NOT NULL,
  `id` int(50) NOT NULL,
  `nombre` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vacunacion`
--

INSERT INTO `vacunacion` (`codigo`, `id`, `nombre`, `fecha`) VALUES
(19, 39, 'rabia', '2024-11-13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adopcion/mascotas`
--
ALTER TABLE `adopcion/mascotas`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `adopta`
--
ALTER TABLE `adopta`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `fundacion`
--
ALTER TABLE `fundacion`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id_animal`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `vacunacion`
--
ALTER TABLE `vacunacion`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fundacion`
--
ALTER TABLE `fundacion`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `vacunacion`
--
ALTER TABLE `vacunacion`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
