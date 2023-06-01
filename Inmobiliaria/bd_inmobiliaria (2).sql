-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2023 a las 01:27:36
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `nombre_ciudad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `id_pais`, `nombre_ciudad`) VALUES
(1, 1, 'Bogota'),
(2, 1, 'Medellin'),
(3, 1, 'Cartagena'),
(4, 1, 'Melgar'),
(5, 1, 'Santa Marta'),
(6, 1, 'Ibague'),
(7, 1, 'Bucaramanga'),
(8, 1, 'Girardot');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `propiedad1` int(11) DEFAULT NULL,
  `propiedad2` int(11) DEFAULT NULL,
  `propiedad3` int(11) DEFAULT NULL,
  `propiedad4` int(11) DEFAULT NULL,
  `propiedad5` int(11) DEFAULT NULL,
  `propiedad6` int(11) DEFAULT NULL,
  `oficina_central` varchar(400) DEFAULT NULL,
  `telefono1` varchar(100) DEFAULT NULL,
  `telefono2` varchar(100) DEFAULT NULL,
  `email_contacto` varchar(100) DEFAULT NULL,
  `horarios` varchar(200) DEFAULT NULL,
  `mapa` varchar(300) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `tipo_visualizacion_propiedades` varchar(1) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email_administrador` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `propiedad1`, `propiedad2`, `propiedad3`, `propiedad4`, `propiedad5`, `propiedad6`, `oficina_central`, `telefono1`, `telefono2`, `email_contacto`, `horarios`, `mapa`, `facebook`, `twitter`, `tipo_visualizacion_propiedades`, `user`, `password`, `email_administrador`) VALUES
(1, 0, 0, 0, 0, 0, 0, 'Oficina Central Sede Barranquilla', '3053027955', '3162754213', 'daniel.delgado2000@hotmail.com', 'Horario de Oficina', 'mapa', '', '', 'f', 'admin', '1234', 'kte.vargas1102@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `id_propiedad` int(11) NOT NULL,
  `nombre_foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `id_propiedad`, `nombre_foto`) VALUES
(2, 1, 'f5da7ff6aa17072d409b234ad0232098d701e3d3.jpg'),
(4, 2, 'b1e518421300633b61a48b500184f2a34de6ec05.jpg'),
(5, 3, 'f5d4b0a58cb7061775b24bd4b242c48374ae155c.jpg'),
(6, 4, '885425c0a465642bceab62b4df52f47f452bffe5.jpg'),
(7, 5, 'f85095743c50692e62f27ab8f77ff701bf77ece7.jpg'),
(8, 6, '6bca5382ebd9c0dd736a655ea74bd6a8b58e19bd.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `nombre_pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre_pais`) VALUES
(1, 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `id` int(11) NOT NULL,
  `fecha_alta` date NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `tipo` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `ubicacion` varchar(200) NOT NULL,
  `habitaciones` varchar(2) NOT NULL,
  `banios` varchar(2) NOT NULL,
  `pisos` varchar(1) NOT NULL,
  `garage` varchar(2) NOT NULL,
  `dimensiones` varchar(50) NOT NULL,
  `precio` int(15) NOT NULL,
  `moneda` varchar(5) NOT NULL,
  `url_foto_principal` varchar(200) NOT NULL,
  `pais` int(11) NOT NULL,
  `ciudad` int(11) NOT NULL,
  `propietario` varchar(100) NOT NULL,
  `telefono_propietario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`id`, `fecha_alta`, `titulo`, `descripcion`, `tipo`, `estado`, `ubicacion`, `habitaciones`, `banios`, `pisos`, `garage`, `dimensiones`, `precio`, `moneda`, `url_foto_principal`, `pais`, `ciudad`, `propietario`, `telefono_propietario`) VALUES
(1, '2023-05-25', 'Habitacion', 'Ubicacion Kennedy, servicios incluido amoblado con cocina, para pareja sin niños y sin mascotas.', 5, 'Alquiler', 'Kennedy', '1', '1', '7', 'No', '10 metros', 235000, '$', 'fotos/1/Habitacion002.jpg', 1, 1, 'Juan Carlos Estriba', '3164568456'),
(2, '2023-05-25', 'Casa', 'Casa familiar , con cocina integral, ', 1, 'venta', 'Usaquen', '4', '2', '3', 'Si', '140', 840000000, '$', 'fotos/2/Casa002.jpg', 1, 1, 'Pedro Andres Escaramuza', '3145678765'),
(3, '2023-05-31', 'Finca', 'Finca de 5 hectáreas para pasar un tiempo agradable en familia en medio de un clima cálido en medio de la naturaleza, con amplias zonas verdes', 3, 'Alquiler', 'Melgar', '4', '2', '2', 'Si', '5 Hectareas', 2500000, '$', 'fotos/3/alquiler_de_finca_privada_en_girardot_8850072662723879847.jpg', 1, 4, 'Fernando Manjarres', '3157896485'),
(4, '2023-05-31', 'Apartamento', 'Como apartamento con amplias zonas comunes', 2, 'venta', 'Rodadero', '2', '1', '8', 'Si', '34', 2000000000, '$', 'fotos/4/D_NQ_NP_887048-MCO51507899570_092022-W.jpg', 1, 5, 'Roberto Angulo', '3157841475'),
(5, '2023-05-31', 'Lote', 'Lote para construcción o plantación', 6, 'Venta', 'Estadio', '0', '0', '0', 'No', '125 metros cuadrados', 235000000, '$', 'fotos/5/vendo-lote-en-calambeo-14865271800.jpg', 1, 6, 'Francy Campos', '3198654749'),
(6, '2023-05-31', 'ApartaEstudio', 'Apartaestudio amoblado, con vista al centro de Medellin', 4, 'Alquiler', 'Poblado', '1', '1', '1', 'Si', '30 metros cuadrados', 1800000, '$', 'fotos/6/292134428.jpg', 1, 2, 'Clara Bonilla', '3224885555');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nombre_tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre_tipo`) VALUES
(1, 'Casa'),
(2, 'Apartamento'),
(3, 'Finca'),
(4, 'Apartaestudio'),
(5, 'Habitacion'),
(6, 'Lote');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
