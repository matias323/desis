-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-03-2023 a las 16:00:44
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebadesis`
--
CREATE DATABASE pruebadesis;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `app` varchar(100) NOT NULL,
  `apm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id`, `nombre`, `app`, `apm`) VALUES
(1, 'matias', 'saldias', 'acuna'),
(2, 'juan', 'gonzalez', 'gonzalez'),
(3, 'pedro', 'balmaceda', 'pascal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id`, `nombre`, `id_region`) VALUES
(1, 'PENAFLOR', 1),
(2, 'PADRE HURTADO', 1),
(3, 'ISLA DE MAIPO', 1),
(4, 'EL MONTE', 1),
(5, 'TALAGANTE', 1),
(6, 'SAN PEDRO', 1),
(7, 'MARIA PINTO', 1),
(8, 'CURACAVI', 1),
(9, 'ALHUE', 1),
(10, 'MELIPILLA', 1),
(11, 'PAINE', 1),
(12, 'CALERA DE TANGO', 1),
(13, 'BUIN', 1),
(14, 'SAN BERNARDO', 1),
(15, 'TIL TIL', 1),
(16, 'LAMPA', 1),
(17, 'COLINA', 1),
(18, 'SAN JOSE DE MAIPO', 1),
(19, 'PIRQUE', 1),
(20, 'PUENTE ALTO', 1),
(21, 'VITACURA', 1),
(22, 'SAN RAMON', 1),
(23, 'SAN MIGUEL', 1),
(24, 'SAN JOAQUIN', 1),
(25, 'RENCA', 1),
(26, 'RECOLETA', 1),
(27, 'QUINTA NORMAL', 1),
(28, 'QUILICURA', 1),
(29, 'PUDAHUEL', 1),
(30, 'PROVIDENCIA', 1),
(31, 'PENALOLEN', 1),
(32, 'PEDRO AGUIRRE CERDA', 1),
(33, 'NUNOA', 1),
(34, 'MAIPU', 1),
(35, 'MACUL', 1),
(36, 'LO PRADO', 1),
(37, 'LO ESPEJO', 1),
(38, 'LO BARNECHEA', 1),
(39, 'LAS CONDES', 1),
(40, 'LA REINA', 1),
(41, 'LA PINTANA', 1),
(42, 'LA GRANJA', 1),
(43, 'LA FLORIDA', 1),
(44, 'LA CISTERNA', 1),
(45, 'INDEPENDENCIA', 1),
(46, 'HUECHURABA', 1),
(47, 'ESTACION CENTRAL', 1),
(48, 'EL BOSQUE', 1),
(49, 'CONCHALI', 1),
(50, 'CERRO NAVIA', 1),
(51, 'CERRILLOS', 1),
(52, 'SANTIAGO', 1),
(53, 'TORRES DEL PAINE', 2),
(54, 'NATALES', 2),
(55, 'TIMAUKEL', 2),
(56, 'PRIMAVERA', 2),
(57, 'PORVENIR', 2),
(58, 'ANT?RTICA', 2),
(59, 'CABO DE HORNOS', 2),
(60, 'SAN GREGORIO', 2),
(61, 'RIO VERDE', 2),
(62, 'LAGUNA BLANCA', 2),
(63, 'PUNTA ARENAS', 2),
(64, 'RIO IBANEZ', 3),
(65, 'CHILE CHICO', 3),
(66, 'TORTEL', 3),
(67, 'O\'HIGGINS', 3),
(68, 'COYHAIQUE / COIHAIQUE', 3),
(69, 'COCHRANE', 3),
(70, 'GUAITECAS', 3),
(71, 'CISNES', 3),
(72, 'AYSEN / AISEN', 3),
(73, 'LAGO VERDE', 3),
(74, 'PALENA', 4),
(75, 'HUALAIHUE', 4),
(76, 'FUTALEUFU', 4),
(77, 'CHAITEN', 4),
(78, 'SAN PABLO', 4),
(79, 'SAN JUAN DE LA COSTA', 4),
(80, 'RIO NEGRO', 4),
(81, 'PUYEHUE', 4),
(82, 'PURRANQUE', 4),
(83, 'PUERTO OCTAY', 4),
(84, 'OSORNO', 4),
(85, 'QUINCHAO', 4),
(86, 'QUEMCHI', 4),
(87, 'QUELLON', 4),
(88, 'QUEILEN', 4),
(89, 'PUQUELDON', 4),
(90, 'DALCAHUE', 4),
(91, 'CURACO DE VELEZ', 4),
(92, 'CHONCHI', 4),
(93, 'ANCUD', 4),
(94, 'CASTRO', 4),
(95, 'PUERTO VARAS', 4),
(96, 'MAULLIN', 4),
(97, 'LLANQUIHUE', 4),
(98, 'LOS MUERMOS', 4),
(99, 'FRUTILLAR', 4),
(100, 'FRESIA', 4),
(101, 'COCHAMO', 4),
(102, 'CALBUCO', 4),
(103, 'PUERTO MONTT', 4),
(104, 'RIO BUENO', 5),
(105, 'LAGO RANCO', 5),
(106, 'FUTRONO', 5),
(107, 'LA UNION', 5),
(108, 'PANGUIPULLI', 5),
(109, 'PAILLACO', 5),
(110, 'MARIQUINA', 5),
(111, 'MAFIL', 5),
(112, 'LOS LAGOS', 5),
(113, 'LANCO', 5),
(114, 'CORRAL', 5),
(115, 'VALDIVIA', 5),
(116, 'VICTORIA', 6),
(117, 'TRAIGUEN', 6),
(118, 'RENAICO', 6),
(119, 'PUREN', 6),
(120, 'LUMACO', 6),
(121, 'LOS SAUCES', 6),
(122, 'LONQUIMAY', 6),
(123, 'CURACAUTIN', 6),
(124, 'COLLIPULLI', 6),
(125, 'ERCILLA', 6),
(126, 'ANGOL', 6),
(127, 'CHOLCHOL', 6),
(128, 'VILLARRICA', 6),
(129, 'VILCUN', 6),
(130, 'TOLTEN', 6),
(131, 'TEODORO SCHMIDT', 6),
(132, 'SAAVEDRA', 6),
(133, 'PUCON', 6),
(134, 'PITRUFQUEN', 6),
(135, 'PERQUENCO', 6),
(136, 'PADRE LAS CASAS', 6),
(137, 'NUEVA IMPERIAL', 6),
(138, 'MELIPEUCO', 6),
(139, 'LONCOCHE', 6),
(140, 'LAUTARO', 6),
(141, 'GORBEA', 6),
(142, 'GALVARINO', 6),
(143, 'FREIRE', 6),
(144, 'CURARREHUE', 6),
(145, 'CUNCO', 6),
(146, 'CARAHUE', 6),
(147, 'TEMUCO', 6),
(148, 'ALTO BIO BIO', 7),
(149, 'YUMBEL', 7),
(150, 'TUCAPEL', 7),
(151, 'SANTA BARBARA', 7),
(152, 'SAN ROSENDO', 7),
(153, 'QUILLECO', 7),
(154, 'QUILACO', 7),
(155, 'NEGRETE', 7),
(156, 'NACIMIENTO', 7),
(157, 'MULCHEN', 7),
(158, 'LAJA', 7),
(159, 'CABRERO', 7),
(160, 'ANTUCO', 7),
(161, 'LOS ANGELES', 7),
(162, 'TIRUA', 7),
(163, 'LOS ALAMOS', 7),
(164, 'CURANILAHUE', 7),
(165, 'CONTULMO', 7),
(166, 'CANETE', 7),
(167, 'ARAUCO', 7),
(168, 'LEBU', 7),
(169, 'HUALPEN', 7),
(170, 'TOME', 7),
(171, 'TALCAHUANO', 7),
(172, 'SANTA JUANA', 7),
(173, 'SAN PEDRO DE LA PAZ', 7),
(174, 'PENCO', 7),
(175, 'LOTA', 7),
(176, 'HUALQUI', 7),
(177, 'FLORIDA', 7),
(178, 'CHIGUAYANTE', 7),
(179, 'CORONEL', 7),
(180, 'CONCEPCION', 7),
(181, 'YUNGAY', 8),
(182, 'TREGUACO / TREHUACO', 8),
(183, 'SAN NICOLAS', 8),
(184, 'SAN IGNACIO', 8),
(185, 'SAN FABIAN', 8),
(186, 'SAN CARLOS', 8),
(187, 'RANQUIL', 8),
(188, 'QUIRIHUE', 8),
(189, 'QUILLON', 8),
(190, 'PORTEZUELO', 8),
(191, 'PINTO', 8),
(192, 'PEMUCO', 8),
(193, 'NIQUEN', 8),
(194, 'NINHUE', 8),
(195, 'EL CARMEN', 8),
(196, 'CHILLAN VIEJO', 8),
(197, 'COIHUECO', 8),
(198, 'COELEMU', 8),
(199, 'COBQUECURA', 8),
(200, 'BULNES', 8),
(201, 'CHILLAN', 8),
(202, 'YERBAS BUENAS', 9),
(203, 'VILLA ALEGRE', 9),
(204, 'SAN JAVIER', 9),
(205, 'RETIRO', 9),
(206, 'PARRAL', 9),
(207, 'LONGAVI', 9),
(208, 'COLBUN', 9),
(209, 'LINARES', 9),
(210, 'VICHUQUEN', 9),
(211, 'TENO', 9),
(212, 'SAGRADA FAMILIA', 9),
(213, 'ROMERAL', 9),
(214, 'RAUCO', 9),
(215, 'MOLINA', 9),
(216, 'LICANTEN', 9),
(217, 'HUALANE', 9),
(218, 'CURICO', 9),
(219, 'PELLUHUE', 9),
(220, 'CHANCO', 9),
(221, 'CAUQUENES', 9),
(222, 'SAN RAFAEL', 9),
(223, 'SAN CLEMENTE', 9),
(224, 'RIO CLARO', 9),
(225, 'PENCAHUE', 9),
(226, 'PELARCO', 9),
(227, 'MAULE', 9),
(228, 'EMPEDRADO', 9),
(229, 'CUREPTO', 9),
(230, 'CONSTITUCION', 9),
(231, 'TALCA', 9),
(232, 'SANTA CRUZ', 10),
(233, 'PUMANQUE', 10),
(234, 'PLACILLA', 10),
(235, 'PERALILLO', 10),
(236, 'PALMILLA', 10),
(237, 'NANCAGUA', 10),
(238, 'LOLOL', 10),
(239, 'CHIMBARONGO', 10),
(240, 'SAN FERNANDO', 10),
(241, 'CHEPICA', 10),
(242, 'PAREDONES', 10),
(243, 'NAVIDAD', 10),
(244, 'MARCHIHUE', 10),
(245, 'LITUECHE', 10),
(246, 'LA ESTRELLA', 10),
(247, 'PICHILEMU', 10),
(248, 'SAN VICENTE', 10),
(249, 'RENGO', 10),
(250, 'REQUINOA', 10),
(251, 'QUINTA DE TILCOCO', 10),
(252, 'PICHIDEGUA', 10),
(253, 'PEUMO', 10),
(254, 'OLIVAR', 10),
(255, 'MOSTAZAL', 10),
(256, 'MALLOA', 10),
(257, 'MACHALI', 10),
(258, 'LAS CABRAS', 10),
(259, 'GRANEROS', 10),
(260, 'DONIHUE', 10),
(261, 'COLTAUCO', 10),
(262, 'COINCO', 10),
(263, 'CODEGUA', 10),
(264, 'RANCAGUA', 10),
(265, 'OLMUE', 11),
(266, 'QUILPUE', 11),
(267, 'VILLA ALEMANA', 11),
(268, 'LIMACHE', 11),
(269, 'SANTA MARIA', 11),
(270, 'PUTAENDO', 11),
(271, 'PANQUEHUE', 11),
(272, 'CATEMU', 11),
(273, 'LLAILLAY / LLAYLLAY', 11),
(274, 'SAN FELIPE', 11),
(275, 'SANTO DOMINGO', 11),
(276, 'EL TABO', 11),
(277, 'EL QUISCO', 11),
(278, 'CARTAGENA', 11),
(279, 'ALGARROBO', 11),
(280, 'SAN ANTONIO', 11),
(281, 'NOGALES', 11),
(282, 'LA CRUZ', 11),
(283, 'HIJUELAS', 11),
(284, 'LA CALERA', 11),
(285, 'QUILLOTA', 11),
(286, 'ZAPALLAR', 11),
(287, 'PETORCA', 11),
(288, 'PAPUDO', 11),
(289, 'CABILDO', 11),
(290, 'LA LIGUA', 11),
(291, 'SAN ESTEBAN', 11),
(292, 'RINCONADA', 11),
(293, 'CALLE LARGA', 11),
(294, 'LOS ANDES', 11),
(295, 'ISLA DE PASCUA', 11),
(296, 'VINA DEL MAR', 11),
(297, 'QUINTERO', 11),
(298, 'PUCHUNCAVI', 11),
(299, 'ISLA JUAN FERNANDEZ', 11),
(300, 'CONCON', 11),
(301, 'CASABLANCA', 11),
(302, 'VALPARAISO', 11),
(303, 'RIO HURTADO', 12),
(304, 'PUNITAQUI', 12),
(305, 'MONTE PATRIA', 12),
(306, 'COMBARBALA', 12),
(307, 'OVALLE', 12),
(308, 'LOS VILOS', 12),
(309, 'SALAMANCA', 12),
(310, 'CANELA', 12),
(311, 'ILLAPEL', 12),
(312, 'VICUNA', 12),
(313, 'PAIHUANO', 12),
(314, 'LA HIGUERA', 12),
(315, 'ANDACOLLO', 12),
(316, 'COQUIMBO', 12),
(317, 'LA SERENA', 12),
(318, 'HUASCO', 13),
(319, 'FREIRINA', 13),
(320, 'ALTO DEL CARMEN', 13),
(321, 'CHANARAL', 13),
(322, 'TIERRA AMARILLA', 13),
(323, 'VALLENAR', 13),
(324, 'DIEGO DE ALMAGRO', 13),
(325, 'CALDERA', 13),
(326, 'COPIAPO', 13),
(327, 'SAN PEDRO DE ATACAMA', 14),
(328, 'SIERRA GORDA', 14),
(329, 'MEJILLONES', 14),
(330, 'MARIA ELENA', 14),
(331, 'TOCOPILLA', 14),
(332, 'OLLAG?E', 14),
(333, 'CALAMA', 14),
(334, 'TALTAL', 14),
(335, 'ANTOFAGASTA', 14),
(336, 'PICA', 15),
(337, 'HUARA', 15),
(338, 'COLCHANE', 15),
(339, 'CAMINA', 15),
(340, 'POZO ALMONTE', 15),
(341, 'IQUIQUE', 15),
(342, 'ALTO HOSPICIO', 15),
(343, 'ARICA', 16),
(344, 'GENERAL LAGOS', 16),
(345, 'PUTRE', 16),
(346, 'CAMARONES', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id`, `nombre`) VALUES
(1, 'REGION METROPOLITANA DE SANTIAGO'),
(2, 'REGION DE MAGALLANES Y DE LA ANTARTICA CHILENA'),
(3, 'REGION DE AYSEN DEL GENERAL CARLOS IBANEZ DEL CAMPO'),
(4, 'REGION DE LOS LAGOS'),
(5, 'REGION DE LOS RIOS'),
(6, 'REGION DE LA ARAUCANIA'),
(7, 'REGION DEL BIO BIO'),
(8, 'REGION DE NUBLE'),
(9, 'REGION DEL MAULE'),
(10, 'REGION DEL LIBERTADOR GENERAL BERNARDO O\'HIGGINS'),
(11, 'REGION DE VALPARAISO'),
(12, 'REGION DE COQUIMBO'),
(13, 'REGION DE ATACAMA'),
(14, 'REGION DE ANTOFAGASTA'),
(15, 'REGION DE TARAPACA'),
(16, 'REGION DE ARICA Y PARINACOTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votacion`
--

CREATE TABLE `votacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `region` int(11) NOT NULL,
  `comuna` int(11) NOT NULL,
  `candidato` int(11) NOT NULL,
  `web` int(11) NOT NULL,
  `tv` int(11) NOT NULL,
  `redes` int(11) NOT NULL,
  `amigo` int(11) NOT NULL,
  `fechaVotacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_region` (`id_region`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votacion`
--
ALTER TABLE `votacion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `votacion`
--
ALTER TABLE `votacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
