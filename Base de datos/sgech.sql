-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-12-2021 a las 23:28:39
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgech`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afp`
--

DROP TABLE IF EXISTS `afp`;
CREATE TABLE IF NOT EXISTS `afp` (
  `ID_AFP` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_AFP` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_AFP`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `afp`
--

INSERT INTO `afp` (`ID_AFP`, `NOM_AFP`, `CONDICION`, `USUARIO_SESSION`, `FECHA_REGISTRO`) VALUES
(1, 'CAPITAL', NULL, NULL, NULL),
(2, 'CAPITAL', NULL, NULL, NULL),
(3, 'CUPRUM', NULL, NULL, NULL),
(4, 'HABITAT', NULL, NULL, NULL),
(5, 'MODELO', NULL, NULL, NULL),
(6, 'PROVIDA', NULL, NULL, NULL),
(7, 'PLANVITAL', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anexo_contrato`
--

DROP TABLE IF EXISTS `anexo_contrato`;
CREATE TABLE IF NOT EXISTS `anexo_contrato` (
  `ID_ANEXO_CONTRATO` varchar(20) NOT NULL,
  `ID_CONTRATO_EMPLEADO` varchar(20) NOT NULL,
  `ID_ANEXO` int(11) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `CAUSAL` varchar(20) DEFAULT NULL,
  `FECHA_INICIO_ANEXO` date DEFAULT NULL,
  `FECHA_TERMINO_ANEXO` date DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_ANEXO_CONTRATO`),
  KEY `FK_RELATIONSHIP_64` (`ID_CONTRATO_EMPLEADO`),
  KEY `FK_RELATIONSHIP_73` (`ID_ANEXO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

DROP TABLE IF EXISTS `banco`;
CREATE TABLE IF NOT EXISTS `banco` (
  `ID_BANCO` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_BANCO` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_BANCO`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`ID_BANCO`, `NOM_BANCO`, `CONDICION`, `USUARIO_SESSION`, `FECHA_REGISTRO`) VALUES
(1, 'Banco Bice', NULL, NULL, NULL),
(2, 'Banco Bice', NULL, NULL, NULL),
(3, 'Banco Consorcio', NULL, NULL, NULL),
(4, 'Banco Credito e Inversiones BCI', NULL, NULL, NULL),
(5, 'Banco de Chile', NULL, NULL, NULL),
(6, 'Banco Estado', NULL, NULL, NULL),
(7, 'Banco Falabella', NULL, NULL, NULL),
(8, 'Banco Internacional', NULL, NULL, NULL),
(9, 'Banco Itaú', NULL, NULL, NULL),
(10, 'Banco Paris', NULL, NULL, NULL),
(11, 'Banco Penta', NULL, NULL, NULL),
(12, 'Banco Ripley', NULL, NULL, NULL),
(13, 'Banco Santander', NULL, NULL, NULL),
(14, 'Banco Security', NULL, NULL, NULL),
(15, 'BBVA Chile', NULL, NULL, NULL),
(16, 'Corpbanca', NULL, NULL, NULL),
(17, 'Deutsche Bank (Chile)', NULL, NULL, NULL),
(18, 'HSBC Bank', NULL, NULL, NULL),
(19, 'Rabobank Chile', NULL, NULL, NULL),
(20, 'Scotiabank', NULL, NULL, NULL),
(21, 'The Royal Bank of Scotland (Chile)', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `causas_finiquitos`
--

DROP TABLE IF EXISTS `causas_finiquitos`;
CREATE TABLE IF NOT EXISTS `causas_finiquitos` (
  `ID_CAUSA` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_CAUSA` varchar(220) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_CAUSA`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `causas_finiquitos`
--

INSERT INTO `causas_finiquitos` (`ID_CAUSA`, `NOM_CAUSA`, `CONDICION`, `OBSERVACIONES`, `USUARIO_SESSION`, `FECHA_REGISTRO`) VALUES
(1, ' 1.1 Mutuo acuerdo.', NULL, NULL, NULL, NULL),
(2, ' 1.2 Por renuncia.', NULL, NULL, NULL, NULL),
(3, ' 1.3 Por muerte.', NULL, NULL, NULL, NULL),
(4, ' 1.4 Vencimiento del plazo convenido en el contrato.', NULL, NULL, NULL, NULL),
(5, ' 1.5 Conclusión del trabajo o servicio que dio origen al contrato.', NULL, NULL, NULL, NULL),
(6, ' 1.6 Caso fortuito o fuerza mayor.', NULL, NULL, NULL, NULL),
(7, ' 1.7 Falta de probidad del trabajador en el desempeño de sus funciones.', NULL, NULL, NULL, NULL),
(8, ' 1.8 Vías de hecho.', NULL, NULL, NULL, NULL),
(9, ' 1.9 Injurias.', NULL, NULL, NULL, NULL),
(10, ' 1.10 Conducta inmoral del trabajador.', NULL, NULL, NULL, NULL),
(11, ' 1.11 Por negociaciones del trabajador dentro del giro del negocio de la empresa.', NULL, NULL, NULL, NULL),
(12, ' 1.12 No concurrencia del trabajador a sus labores durante 2 días seguidos, 2 lunes en el mes, o un total de 3 días en el mes.', NULL, NULL, NULL, NULL),
(13, ' 1.13 Inasistencia injustificada o sin aviso previo de parte un trabajador que tuviese a su cargo una actividad, faena o máquina cuyo abandono o paralización signifique una perturbación grave en la marcha de la obra.', NULL, NULL, NULL, NULL),
(14, ' 1.14 Abandono del trabajo.', NULL, NULL, NULL, NULL),
(15, ' 1.15 Actos, omisiones o imprudencias temerarias que afecten a la seguridad o al funcionamiento del establecimiento o los trabajadores.', NULL, NULL, NULL, NULL),
(16, ' 1.16 El perjuicio material causado intencionalmente en las instalaciones, maquinarias, herramientas, útiles de trabajo, productos o mercaderías.', NULL, NULL, NULL, NULL),
(17, ' 1.17 Incumplimiento grave de las obligaciones que impone el contrato.', NULL, NULL, NULL, NULL),
(18, ' 1.18 Las necesidades de la empresa, establecimiento o servicio.', NULL, NULL, NULL, NULL),
(19, ' 1.19 Desahucio escrito del empleador a puestos de confianza, generalmente los gerentes,  y trabajadores de casa particular.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `causa_anexo_contrato`
--

DROP TABLE IF EXISTS `causa_anexo_contrato`;
CREATE TABLE IF NOT EXISTS `causa_anexo_contrato` (
  `ID_ANEXO` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_ANEXO` varchar(100) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_ANEXO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

DROP TABLE IF EXISTS `comuna`;
CREATE TABLE IF NOT EXISTS `comuna` (
  `ID_COMUNA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PROVINCIA` int(11) NOT NULL,
  `NOMBRE_COMUNA` varchar(30) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_COMUNA`),
  KEY `FK_RELATIONSHIP_22` (`ID_PROVINCIA`)
) ENGINE=MyISAM AUTO_INCREMENT=347 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`ID_COMUNA`, `ID_PROVINCIA`, `NOMBRE_COMUNA`, `CONDICION`, `USUARIO_SESSION`, `FECHA_REGISTRO`) VALUES
(1, 1, 'Arica', NULL, NULL, NULL),
(2, 1, 'Camarones', NULL, NULL, NULL),
(3, 2, 'General Lagos', NULL, NULL, NULL),
(4, 2, 'Putre', NULL, NULL, NULL),
(5, 3, 'Alto Hospicio', NULL, NULL, NULL),
(6, 3, 'Iquique', NULL, NULL, NULL),
(7, 4, 'Camiña', NULL, NULL, NULL),
(8, 4, 'Colchane', NULL, NULL, NULL),
(9, 4, 'Huara', NULL, NULL, NULL),
(10, 4, 'Pica', NULL, NULL, NULL),
(11, 4, 'Pozo Almonte', NULL, NULL, NULL),
(12, 5, 'Antofagasta', NULL, NULL, NULL),
(13, 5, 'Mejillones', NULL, NULL, NULL),
(14, 5, 'Sierra Gorda', NULL, NULL, NULL),
(15, 5, 'Taltal', NULL, NULL, NULL),
(16, 6, 'Calama', NULL, NULL, NULL),
(17, 6, 'Ollague', NULL, NULL, NULL),
(18, 6, 'San Pedro de Atacama', NULL, NULL, NULL),
(19, 7, 'María Elena', NULL, NULL, NULL),
(20, 7, 'Tocopilla', NULL, NULL, NULL),
(21, 8, 'Chañaral', NULL, NULL, NULL),
(22, 8, 'Diego de Almagro', NULL, NULL, NULL),
(23, 9, 'Caldera', NULL, NULL, NULL),
(24, 9, 'Copiapó', NULL, NULL, NULL),
(25, 9, 'Tierra Amarilla', NULL, NULL, NULL),
(26, 10, 'Alto del Carmen', NULL, NULL, NULL),
(27, 10, 'Freirina', NULL, NULL, NULL),
(28, 10, 'Huasco', NULL, NULL, NULL),
(29, 10, 'Vallenar', NULL, NULL, NULL),
(30, 11, 'Canela', NULL, NULL, NULL),
(31, 11, 'Illapel', NULL, NULL, NULL),
(32, 11, 'Los Vilos', NULL, NULL, NULL),
(33, 11, 'Salamanca', NULL, NULL, NULL),
(34, 12, 'Andacollo', NULL, NULL, NULL),
(35, 12, 'Coquimbo', NULL, NULL, NULL),
(36, 12, 'La Higuera', NULL, NULL, NULL),
(37, 12, 'La Serena', NULL, NULL, NULL),
(38, 12, 'Paihuaco', NULL, NULL, NULL),
(39, 12, 'Vicuña', NULL, NULL, NULL),
(40, 13, 'Combarbalá', NULL, NULL, NULL),
(41, 13, 'Monte Patria', NULL, NULL, NULL),
(42, 13, 'Ovalle', NULL, NULL, NULL),
(43, 13, 'Punitaqui', NULL, NULL, NULL),
(44, 13, 'Río Hurtado', NULL, NULL, NULL),
(45, 14, 'Isla de Pascua', NULL, NULL, NULL),
(46, 15, 'Calle Larga', NULL, NULL, NULL),
(47, 15, 'Los Andes', NULL, NULL, NULL),
(48, 15, 'Rinconada', NULL, NULL, NULL),
(49, 15, 'San Esteban', NULL, NULL, NULL),
(50, 16, 'La Ligua', NULL, NULL, NULL),
(51, 16, 'Papudo', NULL, NULL, NULL),
(52, 16, 'Petorca', NULL, NULL, NULL),
(53, 16, 'Zapallar', NULL, NULL, NULL),
(54, 17, 'Hijuelas', NULL, NULL, NULL),
(55, 17, 'La Calera', NULL, NULL, NULL),
(56, 17, 'La Cruz', NULL, NULL, NULL),
(57, 17, 'Limache', NULL, NULL, NULL),
(58, 17, 'Nogales', NULL, NULL, NULL),
(59, 17, 'Olmué', NULL, NULL, NULL),
(60, 17, 'Quillota', NULL, NULL, NULL),
(61, 18, 'Algarrobo', NULL, NULL, NULL),
(62, 18, 'Cartagena', NULL, NULL, NULL),
(63, 18, 'El Quisco', NULL, NULL, NULL),
(64, 18, 'El Tabo', NULL, NULL, NULL),
(65, 18, 'San Antonio', NULL, NULL, NULL),
(66, 18, 'Santo Domingo', NULL, NULL, NULL),
(67, 19, 'Catemu', NULL, NULL, NULL),
(68, 19, 'Llaillay', NULL, NULL, NULL),
(69, 19, 'Panquehue', NULL, NULL, NULL),
(70, 19, 'Putaendo', NULL, NULL, NULL),
(71, 19, 'San Felipe', NULL, NULL, NULL),
(72, 19, 'Santa María', NULL, NULL, NULL),
(73, 20, 'Casablanca', NULL, NULL, NULL),
(74, 20, 'Concón', NULL, NULL, NULL),
(75, 20, 'Juan Fernández', NULL, NULL, NULL),
(76, 20, 'Puchuncaví', NULL, NULL, NULL),
(77, 20, 'Quilpué', NULL, NULL, NULL),
(78, 20, 'Quintero', NULL, NULL, NULL),
(79, 20, 'Valparaíso', NULL, NULL, NULL),
(80, 20, 'Villa Alemana', NULL, NULL, NULL),
(81, 20, 'Viña del Mar', NULL, NULL, NULL),
(82, 21, 'Colina', NULL, NULL, NULL),
(83, 21, 'Lampa', NULL, NULL, NULL),
(84, 21, 'Tiltil', NULL, NULL, NULL),
(85, 22, 'Pirque', NULL, NULL, NULL),
(86, 22, 'Puente Alto', NULL, NULL, NULL),
(87, 22, 'San José de Maipo', NULL, NULL, NULL),
(88, 23, 'Buin', NULL, NULL, NULL),
(89, 23, 'Calera de Tango', NULL, NULL, NULL),
(90, 23, 'Paine', NULL, NULL, NULL),
(91, 23, 'San Bernardo', NULL, NULL, NULL),
(92, 24, 'Alhué', NULL, NULL, NULL),
(93, 24, 'Curacaví', NULL, NULL, NULL),
(94, 24, 'María Pinto', NULL, NULL, NULL),
(95, 24, 'Melipilla', NULL, NULL, NULL),
(96, 24, 'San Pedro', NULL, NULL, NULL),
(97, 25, 'Cerrillos', NULL, NULL, NULL),
(98, 25, 'Cerro Navia', NULL, NULL, NULL),
(99, 25, 'Conchalí', NULL, NULL, NULL),
(100, 25, 'El Bosque', NULL, NULL, NULL),
(101, 25, 'Estación Central', NULL, NULL, NULL),
(102, 25, 'Huechuraba', NULL, NULL, NULL),
(103, 25, 'Independencia', NULL, NULL, NULL),
(104, 25, 'La Cisterna', NULL, NULL, NULL),
(105, 25, 'La Granja', NULL, NULL, NULL),
(106, 25, 'La Florida', NULL, NULL, NULL),
(107, 25, 'La Pintana', NULL, NULL, NULL),
(108, 25, 'La Reina', NULL, NULL, NULL),
(109, 25, 'Las Condes', NULL, NULL, NULL),
(110, 25, 'Lo Barnechea', NULL, NULL, NULL),
(111, 25, 'Lo Espejo', NULL, NULL, NULL),
(112, 25, 'Lo Prado', NULL, NULL, NULL),
(113, 25, 'Macul', NULL, NULL, NULL),
(114, 25, 'Maipú', NULL, NULL, NULL),
(115, 25, 'Ñuñoa', NULL, NULL, NULL),
(116, 25, 'Pedro Aguirre Cerda', NULL, NULL, NULL),
(117, 25, 'Peñalolén', NULL, NULL, NULL),
(118, 25, 'Providencia', NULL, NULL, NULL),
(119, 25, 'Pudahuel', NULL, NULL, NULL),
(120, 25, 'Quilicura', NULL, NULL, NULL),
(121, 25, 'Quinta Normal', NULL, NULL, NULL),
(122, 25, 'Recoleta', NULL, NULL, NULL),
(123, 25, 'Renca', NULL, NULL, NULL),
(124, 25, 'San Miguel', NULL, NULL, NULL),
(125, 25, 'San Joaquín', NULL, NULL, NULL),
(126, 25, 'San Ramón', NULL, NULL, NULL),
(127, 25, 'Santiago', NULL, NULL, NULL),
(128, 25, 'Vitacura', NULL, NULL, NULL),
(129, 26, 'El Monte', NULL, NULL, NULL),
(130, 26, 'Isla de Maipo', NULL, NULL, NULL),
(131, 26, 'Padre Hurtado', NULL, NULL, NULL),
(132, 26, 'Peñaflor', NULL, NULL, NULL),
(133, 26, 'Talagante', NULL, NULL, NULL),
(134, 27, 'Codegua', NULL, NULL, NULL),
(135, 27, 'Coínco', NULL, NULL, NULL),
(136, 27, 'Coltauco', NULL, NULL, NULL),
(137, 27, 'Doñihue', NULL, NULL, NULL),
(138, 27, 'Graneros', NULL, NULL, NULL),
(139, 27, 'Las Cabras', NULL, NULL, NULL),
(140, 27, 'Machalí', NULL, NULL, NULL),
(141, 27, 'Malloa', NULL, NULL, NULL),
(142, 27, 'Mostazal', NULL, NULL, NULL),
(143, 27, 'Olivar', NULL, NULL, NULL),
(144, 27, 'Peumo', NULL, NULL, NULL),
(145, 27, 'Pichidegua', NULL, NULL, NULL),
(146, 27, 'Quinta de Tilcoco', NULL, NULL, NULL),
(147, 27, 'Rancagua', NULL, NULL, NULL),
(148, 27, 'Rengo', NULL, NULL, NULL),
(149, 27, 'Requínoa', NULL, NULL, NULL),
(150, 27, 'San Vicente de Tagua Tagua', NULL, NULL, NULL),
(151, 28, 'La Estrella', NULL, NULL, NULL),
(152, 28, 'Litueche', NULL, NULL, NULL),
(153, 28, 'Marchihue', NULL, NULL, NULL),
(154, 28, 'Navidad', NULL, NULL, NULL),
(155, 28, 'Peredones', NULL, NULL, NULL),
(156, 28, 'Pichilemu', NULL, NULL, NULL),
(157, 29, 'Chépica', NULL, NULL, NULL),
(158, 29, 'Chimbarongo', NULL, NULL, NULL),
(159, 29, 'Lolol', NULL, NULL, NULL),
(160, 29, 'Nancagua', NULL, NULL, NULL),
(161, 29, 'Palmilla', NULL, NULL, NULL),
(162, 29, 'Peralillo', NULL, NULL, NULL),
(163, 29, 'Placilla', NULL, NULL, NULL),
(164, 29, 'Pumanque', NULL, NULL, NULL),
(165, 29, 'San Fernando', NULL, NULL, NULL),
(166, 29, 'Santa Cruz', NULL, NULL, NULL),
(167, 30, 'Cauquenes', NULL, NULL, NULL),
(168, 30, 'Chanco', NULL, NULL, NULL),
(169, 30, 'Pelluhue', NULL, NULL, NULL),
(170, 31, 'Curicó', NULL, NULL, NULL),
(171, 31, 'Hualañé', NULL, NULL, NULL),
(172, 31, 'Licantén', NULL, NULL, NULL),
(173, 31, 'Molina', NULL, NULL, NULL),
(174, 31, 'Rauco', NULL, NULL, NULL),
(175, 31, 'Romeral', NULL, NULL, NULL),
(176, 31, 'Sagrada Familia', NULL, NULL, NULL),
(177, 31, 'Teno', NULL, NULL, NULL),
(178, 31, 'Vichuquén', NULL, NULL, NULL),
(179, 32, 'Colbún', NULL, NULL, NULL),
(180, 32, 'Linares', NULL, NULL, NULL),
(181, 32, 'Longaví', NULL, NULL, NULL),
(182, 32, 'Parral', NULL, NULL, NULL),
(183, 32, 'Retiro', NULL, NULL, NULL),
(184, 32, 'San Javier', NULL, NULL, NULL),
(185, 32, 'Villa Alegre', NULL, NULL, NULL),
(186, 32, 'Yerbas Buenas', NULL, NULL, NULL),
(187, 33, 'Constitución', NULL, NULL, NULL),
(188, 33, 'Curepto', NULL, NULL, NULL),
(189, 33, 'Empedrado', NULL, NULL, NULL),
(190, 33, 'Maule', NULL, NULL, NULL),
(191, 33, 'Pelarco', NULL, NULL, NULL),
(192, 33, 'Pencahue', NULL, NULL, NULL),
(193, 33, 'Río Claro', NULL, NULL, NULL),
(194, 33, 'San Clemente', NULL, NULL, NULL),
(195, 33, 'San Rafael', NULL, NULL, NULL),
(196, 33, 'Talca', NULL, NULL, NULL),
(197, 34, 'Arauco', NULL, NULL, NULL),
(198, 34, 'Cañete', NULL, NULL, NULL),
(199, 34, 'Contulmo', NULL, NULL, NULL),
(200, 34, 'Curanilahue', NULL, NULL, NULL),
(201, 34, 'Lebu', NULL, NULL, NULL),
(202, 34, 'Los Álamos', NULL, NULL, NULL),
(203, 34, 'Tirúa', NULL, NULL, NULL),
(204, 35, 'Alto Biobío', NULL, NULL, NULL),
(205, 35, 'Antuco', NULL, NULL, NULL),
(206, 35, 'Cabrero', NULL, NULL, NULL),
(207, 35, 'Laja', NULL, NULL, NULL),
(208, 35, 'Los Ángeles', NULL, NULL, NULL),
(209, 35, 'Mulchén', NULL, NULL, NULL),
(210, 35, 'Nacimiento', NULL, NULL, NULL),
(211, 35, 'Negrete', NULL, NULL, NULL),
(212, 35, 'Quilaco', NULL, NULL, NULL),
(213, 35, 'Quilleco', NULL, NULL, NULL),
(214, 35, 'San Rosendo', NULL, NULL, NULL),
(215, 35, 'Santa Bárbara', NULL, NULL, NULL),
(216, 35, 'Tucapel', NULL, NULL, NULL),
(217, 35, 'Yumbel', NULL, NULL, NULL),
(218, 36, 'Chiguayante', NULL, NULL, NULL),
(219, 36, 'Concepción', NULL, NULL, NULL),
(220, 36, 'Coronel', NULL, NULL, NULL),
(221, 36, 'Florida', NULL, NULL, NULL),
(222, 36, 'Hualpén', NULL, NULL, NULL),
(223, 36, 'Hualqui', NULL, NULL, NULL),
(224, 36, 'Lota', NULL, NULL, NULL),
(225, 36, 'Penco', NULL, NULL, NULL),
(226, 36, 'San Pedro de La Paz', NULL, NULL, NULL),
(227, 36, 'Santa Juana', NULL, NULL, NULL),
(228, 36, 'Talcahuano', NULL, NULL, NULL),
(229, 36, 'Tomé', NULL, NULL, NULL),
(230, 37, 'Bulnes', NULL, NULL, NULL),
(231, 37, 'Chillán', NULL, NULL, NULL),
(232, 37, 'Chillán Viejo', NULL, NULL, NULL),
(233, 37, 'Cobquecura', NULL, NULL, NULL),
(234, 37, 'Coelemu', NULL, NULL, NULL),
(235, 37, 'Coihueco', NULL, NULL, NULL),
(236, 37, 'El Carmen', NULL, NULL, NULL),
(237, 37, 'Ninhue', NULL, NULL, NULL),
(238, 37, 'Ñiquen', NULL, NULL, NULL),
(239, 37, 'Pemuco', NULL, NULL, NULL),
(240, 37, 'Pinto', NULL, NULL, NULL),
(241, 37, 'Portezuelo', NULL, NULL, NULL),
(242, 37, 'Quillón', NULL, NULL, NULL),
(243, 37, 'Quirihue', NULL, NULL, NULL),
(244, 37, 'Ránquil', NULL, NULL, NULL),
(245, 37, 'San Carlos', NULL, NULL, NULL),
(246, 37, 'San Fabián', NULL, NULL, NULL),
(247, 37, 'San Ignacio', NULL, NULL, NULL),
(248, 37, 'San Nicolás', NULL, NULL, NULL),
(249, 37, 'Treguaco', NULL, NULL, NULL),
(250, 37, 'Yungay', NULL, NULL, NULL),
(251, 38, 'Carahue', NULL, NULL, NULL),
(252, 38, 'Cholchol', NULL, NULL, NULL),
(253, 38, 'Cunco', NULL, NULL, NULL),
(254, 38, 'Curarrehue', NULL, NULL, NULL),
(255, 38, 'Freire', NULL, NULL, NULL),
(256, 38, 'Galvarino', NULL, NULL, NULL),
(257, 38, 'Gorbea', NULL, NULL, NULL),
(258, 38, 'Lautaro', NULL, NULL, NULL),
(259, 38, 'Loncoche', NULL, NULL, NULL),
(260, 38, 'Melipeuco', NULL, NULL, NULL),
(261, 38, 'Nueva Imperial', NULL, NULL, NULL),
(262, 38, 'Padre Las Casas', NULL, NULL, NULL),
(263, 38, 'Perquenco', NULL, NULL, NULL),
(264, 38, 'Pitrufquén', NULL, NULL, NULL),
(265, 38, 'Pucón', NULL, NULL, NULL),
(266, 38, 'Saavedra', NULL, NULL, NULL),
(267, 38, 'Temuco', NULL, NULL, NULL),
(268, 38, 'Teodoro Schmidt', NULL, NULL, NULL),
(269, 38, 'Toltén', NULL, NULL, NULL),
(270, 38, 'Vilcún', NULL, NULL, NULL),
(271, 38, 'Villarrica', NULL, NULL, NULL),
(272, 39, 'Angol', NULL, NULL, NULL),
(273, 39, 'Collipulli', NULL, NULL, NULL),
(274, 39, 'Curacautín', NULL, NULL, NULL),
(275, 39, 'Ercilla', NULL, NULL, NULL),
(276, 39, 'Lonquimay', NULL, NULL, NULL),
(277, 39, 'Los Sauces', NULL, NULL, NULL),
(278, 39, 'Lumaco', NULL, NULL, NULL),
(279, 39, 'Purén', NULL, NULL, NULL),
(280, 39, 'Renaico', NULL, NULL, NULL),
(281, 39, 'Traiguén', NULL, NULL, NULL),
(282, 39, 'Victoria', NULL, NULL, NULL),
(283, 40, 'Corral', NULL, NULL, NULL),
(284, 40, 'Lanco', NULL, NULL, NULL),
(285, 40, 'Los Lagos', NULL, NULL, NULL),
(286, 40, 'Máfil', NULL, NULL, NULL),
(287, 40, 'Mariquina', NULL, NULL, NULL),
(288, 40, 'Paillaco', NULL, NULL, NULL),
(289, 40, 'Panguipulli', NULL, NULL, NULL),
(290, 40, 'Valdivia', NULL, NULL, NULL),
(291, 41, 'Futrono', NULL, NULL, NULL),
(292, 41, 'La Unión', NULL, NULL, NULL),
(293, 41, 'Lago Ranco', NULL, NULL, NULL),
(294, 41, 'Río Bueno', NULL, NULL, NULL),
(295, 42, 'Ancud', NULL, NULL, NULL),
(296, 42, 'Castro', NULL, NULL, NULL),
(297, 42, 'Chonchi', NULL, NULL, NULL),
(298, 42, 'Curaco de Vélez', NULL, NULL, NULL),
(299, 42, 'Dalcahue', NULL, NULL, NULL),
(300, 42, 'Puqueldón', NULL, NULL, NULL),
(301, 42, 'Queilén', NULL, NULL, NULL),
(302, 42, 'Quemchi', NULL, NULL, NULL),
(303, 42, 'Quellón', NULL, NULL, NULL),
(304, 42, 'Quinchao', NULL, NULL, NULL),
(305, 43, 'Calbuco', NULL, NULL, NULL),
(306, 43, 'Cochamó', NULL, NULL, NULL),
(307, 43, 'Fresia', NULL, NULL, NULL),
(308, 43, 'Frutillar', NULL, NULL, NULL),
(309, 43, 'Llanquihue', NULL, NULL, NULL),
(310, 43, 'Los Muermos', NULL, NULL, NULL),
(311, 43, 'Maullín', NULL, NULL, NULL),
(312, 43, 'Puerto Montt', NULL, NULL, NULL),
(313, 43, 'Puerto Varas', NULL, NULL, NULL),
(314, 44, 'Osorno', NULL, NULL, NULL),
(315, 44, 'Puero Octay', NULL, NULL, NULL),
(316, 44, 'Purranque', NULL, NULL, NULL),
(317, 44, 'Puyehue', NULL, NULL, NULL),
(318, 44, 'Río Negro', NULL, NULL, NULL),
(319, 44, 'San Juan de la Costa', NULL, NULL, NULL),
(320, 44, 'San Pablo', NULL, NULL, NULL),
(321, 45, 'Chaitén', NULL, NULL, NULL),
(322, 45, 'Futaleufú', NULL, NULL, NULL),
(323, 45, 'Hualaihué', NULL, NULL, NULL),
(324, 45, 'Palena', NULL, NULL, NULL),
(325, 46, 'Aisén', NULL, NULL, NULL),
(326, 46, 'Cisnes', NULL, NULL, NULL),
(327, 46, 'Guaitecas', NULL, NULL, NULL),
(328, 47, 'Cochrane', NULL, NULL, NULL),
(329, 47, 'Ohiggins', NULL, NULL, NULL),
(330, 47, 'Tortel', NULL, NULL, NULL),
(331, 48, 'Coihaique', NULL, NULL, NULL),
(332, 48, 'Lago Verde', NULL, NULL, NULL),
(333, 49, 'Chile Chico', NULL, NULL, NULL),
(334, 49, 'Río Ibáñez', NULL, NULL, NULL),
(335, 50, 'Antártica', NULL, NULL, NULL),
(336, 50, 'Cabo de Hornos', NULL, NULL, NULL),
(337, 51, 'Laguna Blanca', NULL, NULL, NULL),
(338, 51, 'Punta Arenas', NULL, NULL, NULL),
(339, 51, 'Río Verde', NULL, NULL, NULL),
(340, 51, 'San Gregorio', NULL, NULL, NULL),
(341, 52, 'Porvenir', NULL, NULL, NULL),
(342, 52, 'Primavera', NULL, NULL, NULL),
(343, 52, 'Timaukel', NULL, NULL, NULL),
(344, 53, 'Natales', NULL, NULL, NULL),
(345, 53, 'Torres del Paine', NULL, NULL, NULL),
(346, 16, 'Cabildo', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `ID_CONTACTO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PARENTESCO` int(11) DEFAULT NULL,
  `RUT_EMPLEADO` varchar(9) DEFAULT NULL,
  `NOM_CONTACTO` varchar(50) DEFAULT NULL,
  `APE_PAT_CONTACTO` varchar(50) DEFAULT NULL,
  `APE_MAT_CONTACTO` varchar(50) DEFAULT NULL,
  `FONO_CONTACTO` varchar(16) DEFAULT NULL,
  `FONO2_CONTACTO` varchar(16) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_CONTACTO`),
  KEY `FK_RELATIONSHIP_28` (`RUT_EMPLEADO`),
  KEY `FK_RELATIONSHIP_65` (`ID_PARENTESCO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos_empleados`
--

DROP TABLE IF EXISTS `contratos_empleados`;
CREATE TABLE IF NOT EXISTS `contratos_empleados` (
  `ID_CONTRATO_EMPLEADO` varchar(20) NOT NULL,
  `RUT_EMPLEADO` varchar(9) DEFAULT NULL,
  `RUT_EMPRESA` varchar(9) NOT NULL,
  `ID_CONTRATO_OBRA` varchar(20) DEFAULT NULL,
  `FECHA_INI_CONTRATO` date DEFAULT NULL,
  `FECHA_TER_CONTRATO` date DEFAULT NULL,
  `CARGO_CONTRATO` varchar(50) DEFAULT NULL,
  `TURNO_CONTRATO` varchar(40) DEFAULT NULL,
  `NOM_AFP` varchar(50) DEFAULT NULL,
  `NOM_SALUD` varchar(50) DEFAULT NULL,
  `PLAN_SALUD` varchar(6) DEFAULT NULL,
  `SUELDO_CONTRATO` decimal(8,0) DEFAULT NULL,
  `BONO_1` decimal(8,0) DEFAULT NULL,
  `BONO_2` decimal(8,0) DEFAULT NULL,
  `BONO_3` decimal(8,0) DEFAULT NULL,
  `OBS_CONTRATO` varchar(100) DEFAULT NULL,
  `NIC` varchar(10) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_CONTRATO_EMPLEADO`),
  KEY `FK_RELATIONSHIP_58` (`RUT_EMPLEADO`),
  KEY `FK_RELATIONSHIP_59` (`RUT_EMPRESA`),
  KEY `FK_RELATIONSHIP_60` (`ID_CONTRATO_OBRA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato_obra`
--

DROP TABLE IF EXISTS `contrato_obra`;
CREATE TABLE IF NOT EXISTS `contrato_obra` (
  `ID_CONTRATO_OBRA` varchar(20) NOT NULL,
  `ID_FAENA` int(11) NOT NULL,
  `NOM_CONTRATO` varchar(50) DEFAULT NULL,
  `DETALLE_CONTRATO` text,
  `FECHA_INICIO_CONTRATO` date DEFAULT NULL,
  `FECHA_TERMINO_CONTRATO` date DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `NIC` varchar(10) DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_CONTRATO_OBRA`),
  KEY `FK_RELATIONSHIP_26` (`ID_FAENA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_empleado`
--

DROP TABLE IF EXISTS `cuenta_empleado`;
CREATE TABLE IF NOT EXISTS `cuenta_empleado` (
  `ID_CUENTA_EMPLEADO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_BANCO` int(11) NOT NULL,
  `RUT_EMPLEADO` varchar(9) NOT NULL,
  `NUM_CUENTA` varchar(50) NOT NULL,
  `TIPO_CUENTA` varchar(50) NOT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_CUENTA_EMPLEADO`),
  KEY `FK_RELATIONSHIP_41` (`RUT_EMPLEADO`),
  KEY `FK_TIENE` (`ID_BANCO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

DROP TABLE IF EXISTS `curso`;
CREATE TABLE IF NOT EXISTS `curso` (
  `ID_CURSO` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_CURSO` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_CURSO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_historia`
--

DROP TABLE IF EXISTS `curso_historia`;
CREATE TABLE IF NOT EXISTS `curso_historia` (
  `ID_CURSO_HISTORIA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CURSO` int(11) DEFAULT NULL,
  `RUT_EMPLEADO` varchar(9) DEFAULT NULL,
  `NOM_IMPARTE_CURSO` varchar(50) DEFAULT NULL,
  `DIR_CURSO` varchar(200) DEFAULT NULL,
  `FECHA_APRO_CURSO` date DEFAULT NULL,
  `FECHA_VEN_CURSO` date DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_CURSO_HISTORIA`),
  KEY `FK_RELATIONSHIP_34` (`ID_CURSO`),
  KEY `FK_RELATIONSHIP_35` (`RUT_EMPLEADO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

DROP TABLE IF EXISTS `direccion`;
CREATE TABLE IF NOT EXISTS `direccion` (
  `ID_DIRECCION` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PROVINCIA` int(11) NOT NULL,
  `ID_REGION` int(11) NOT NULL,
  `RUT_EMPLEADO` varchar(9) NOT NULL,
  `ID_COMUNA` int(11) NOT NULL,
  `NOM_CALLE` varchar(50) NOT NULL,
  `NUM_CASA` varchar(10) DEFAULT NULL,
  `NUM_DEPTO` varchar(10) DEFAULT NULL,
  `NUM_BLOCK` varchar(10) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_DIRECCION`),
  KEY `FK_RELATIONSHIP_39` (`RUT_EMPLEADO`),
  KEY `FK_RELATIONSHIP_40` (`ID_COMUNA`),
  KEY `FK_RELATIONSHIP_46` (`ID_PROVINCIA`),
  KEY `FK_RELATIONSHIP_47` (`ID_REGION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `RUT_EMPLEADO` varchar(9) NOT NULL,
  `ID_E_CIVIL` int(11) NOT NULL,
  `ID_SEX` int(11) NOT NULL,
  `ID_NACIONALIDAD` int(11) NOT NULL,
  `IDROL` int(11) DEFAULT NULL,
  `ID_AFP` int(11) DEFAULT NULL,
  `ID_ESPECIALIDAD` int(11) NOT NULL,
  `NOM1_EMPLEADO` varchar(50) DEFAULT NULL,
  `NOM2_EMPLEADO` varchar(50) DEFAULT NULL,
  `APE_PAT_EMPLEADO` varchar(50) DEFAULT NULL,
  `APE_MAT_EMPLEADO` varchar(50) DEFAULT NULL,
  `FONO_EMPLEADO` varchar(16) DEFAULT NULL,
  `CELU_EMPLEADO` varchar(16) DEFAULT NULL,
  `CELU2_EMPLEADO` varchar(16) DEFAULT NULL,
  `EMAIL_EMPLEADO` varchar(50) DEFAULT NULL,
  `FECH_NAC_EMPLEADO` date DEFAULT NULL,
  `CLAVE_EMPLEADO` varchar(50) DEFAULT NULL,
  `OBS_EMPLEADO` varchar(200) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`RUT_EMPLEADO`),
  KEY `FK_RELATIONSHIP_15` (`ID_AFP`),
  KEY `FK_RELATIONSHIP_18` (`ID_ESPECIALIDAD`),
  KEY `FK_RELATIONSHIP_23` (`IDROL`),
  KEY `FK_RELATIONSHIP_24` (`ID_NACIONALIDAD`),
  KEY `FK_RELATIONSHIP_30` (`ID_SEX`),
  KEY `FK_RELATIONSHIP_67` (`ID_E_CIVIL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `RUT_EMPRESA` varchar(9) NOT NULL,
  `ID_COMUNA` int(11) DEFAULT NULL,
  `NOM_EMPRESA` varchar(100) DEFAULT NULL,
  `DIR_EMPRESA` varchar(100) DEFAULT NULL,
  `GIRO_EMPRESA` varchar(100) DEFAULT NULL,
  `R_LEGAL` varchar(50) DEFAULT NULL,
  `RUT_RLEGAL` decimal(9,0) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RUT_EMPRESA`),
  KEY `FK_RELATIONSHIP_57` (`ID_COMUNA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epp`
--

DROP TABLE IF EXISTS `epp`;
CREATE TABLE IF NOT EXISTS `epp` (
  `ID_EPP` int(11) NOT NULL,
  `NOM_EPP` varchar(50) NOT NULL,
  `CONDICION` tinyint(1) NOT NULL,
  `USUARIO_SESSION` varchar(9) NOT NULL,
  `FECHA_REGISTRO` date NOT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_EPP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epp_empleado`
--

DROP TABLE IF EXISTS `epp_empleado`;
CREATE TABLE IF NOT EXISTS `epp_empleado` (
  `ID_EPP_EMPLEADO` int(11) NOT NULL,
  `RUT_EMPLEADO` varchar(9) DEFAULT NULL,
  `ID_TIPO_EPP` int(11) DEFAULT NULL,
  `FECHA_ENTREGA_EPP` date DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_EPP_EMPLEADO`),
  KEY `FK_RELATIONSHIP_43` (`ID_TIPO_EPP`),
  KEY `FK_RELATIONSHIP_44` (`RUT_EMPLEADO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
CREATE TABLE IF NOT EXISTS `especialidad` (
  `ID_ESPECIALIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_ESPECIALIDAD` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_ESPECIALIDAD`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`ID_ESPECIALIDAD`, `NOM_ESPECIALIDAD`, `CONDICION`, `USUARIO_SESSION`, `FECHA_REGISTRO`, `OBSERVACIONES`) VALUES
(1, 'ALARIFE', 1, NULL, NULL, NULL),
(2, 'ADMINISTRATIVO RRHH', 0, NULL, NULL, NULL),
(3, 'ADMINISTRADOR DE CONTRATO', 0, NULL, NULL, NULL),
(4, 'ASISTENTE PLANIFICACION', 0, NULL, NULL, NULL),
(5, 'ASISTENTE PREVENCION DE RIESGOS', 0, NULL, NULL, NULL),
(6, 'ASISTENTE RR.HH', 0, NULL, NULL, NULL),
(7, 'BODEGUERO', 0, NULL, NULL, NULL),
(8, 'CAMPAMENTERO', 0, NULL, NULL, NULL),
(9, 'CAPATAZ ANDAMIO', 1, NULL, NULL, NULL),
(10, 'CAPATAZ ESTRUCTURAL', 1, NULL, NULL, NULL),
(11, 'CAPATAZ MECANICO', 1, NULL, NULL, NULL),
(12, 'CAPATAZ OO.CC', 1, NULL, NULL, NULL),
(13, 'CAPATAZ PIPING', 1, NULL, NULL, NULL),
(14, 'CHOFER DE SERVICIO', 1, NULL, NULL, NULL),
(15, 'CONTROL DE DOCUMENTOS', 0, NULL, NULL, NULL),
(16, 'ELECTRICO MANTENCIÓN', 1, NULL, NULL, NULL),
(17, 'INFORMATICO', 0, NULL, NULL, NULL),
(18, 'INSPECTOR DE CALIDAD ELECTRICO', 0, NULL, NULL, NULL),
(19, 'INSPECTOR DE CALIDAD ESTRUCTURA', 0, NULL, NULL, NULL),
(20, 'INSPECTOR DE CALIDAD MECANICO', 0, NULL, NULL, NULL),
(21, 'INSPECTOR DE CALIDAD OO.CC', 0, NULL, NULL, NULL),
(22, 'INSPECTOR DE CALIDAD PIPING', 0, NULL, NULL, NULL),
(23, 'JEFE ADQUISICIONES', 0, NULL, NULL, NULL),
(24, 'JEFE AREA', 0, NULL, NULL, NULL),
(25, 'JEFE DE COSTOS', 0, NULL, NULL, NULL),
(26, 'JEFE DE LOGISTICA', 0, NULL, NULL, NULL),
(27, 'JEFE DE OF TECNICA', 0, NULL, NULL, NULL),
(28, 'JEFE DE PATIO', 0, NULL, NULL, NULL),
(29, 'JEFE DE PLANIFICION', 0, NULL, NULL, NULL),
(30, 'JEFE DE PREVENCION DE RIESGOS', 0, NULL, NULL, NULL),
(31, 'JEFE DE RRHH', 0, NULL, NULL, NULL),
(32, 'JEFE DE TERRENO', 0, NULL, NULL, NULL),
(33, 'JEFE DE TOPOGRAFIA', 0, NULL, NULL, NULL),
(34, 'LOGISTICA', 0, NULL, NULL, NULL),
(35, 'M1 ANDAMIO', 1, NULL, NULL, NULL),
(36, 'M1 ELECTRICO', 1, NULL, NULL, NULL),
(37, 'M1 ESTRUCTURAL', 1, NULL, NULL, NULL),
(38, 'M1 MECANICO', 1, NULL, NULL, NULL),
(39, 'M1 OO.CC', 1, NULL, NULL, NULL),
(40, 'M1 PIPING', 1, NULL, NULL, NULL),
(41, 'M2 ANDAMIO', 1, NULL, NULL, NULL),
(42, 'M2 ELECTRICO', 1, NULL, NULL, NULL),
(43, 'M2 ESTRUCTURAL', 1, NULL, NULL, NULL),
(44, 'M2 MECANICO', 1, NULL, NULL, NULL),
(45, 'M2 OO.CC', 1, NULL, NULL, NULL),
(46, 'M2 PIPING', 1, NULL, NULL, NULL),
(47, 'MM ANDAMIO', 1, NULL, NULL, NULL),
(48, 'MM CAPATAZ ELECTRICO', 1, NULL, NULL, NULL),
(49, 'MM ELECTRICO', 1, NULL, NULL, NULL),
(50, 'MM ESTRUCTURAL', 1, NULL, NULL, NULL),
(51, 'MM MECANIC0', 1, NULL, NULL, NULL),
(52, 'MM OO.CC', 1, NULL, NULL, NULL),
(53, 'MM PIPING', 1, NULL, NULL, NULL),
(54, 'OP BULLDOZER', 1, NULL, NULL, NULL),
(55, 'OP CARGADOR FRONTAL', 1, NULL, NULL, NULL),
(56, 'OP DE ALGIBE', 1, NULL, NULL, NULL),
(57, 'OP DE BUS', 0, NULL, NULL, NULL),
(58, 'OP DE CAMIÓN COMBUSTIBLE', 0, NULL, NULL, NULL),
(59, 'OP DE CAMIÓN PLUMA', 0, NULL, NULL, NULL),
(60, 'OP DE CAMIÓN RAMPLA', 0, NULL, NULL, NULL),
(61, 'OP DE CAMIÓN TOLVA', 0, NULL, NULL, NULL),
(62, 'OP MOTONIVELADORA', 0, NULL, NULL, NULL),
(63, 'OP RETROEXCAVADORA', 0, NULL, NULL, NULL),
(64, 'OP RODILLO', 0, NULL, NULL, NULL),
(65, 'OP ROTOMARTILLO', 0, NULL, NULL, NULL),
(66, 'OXIGENISTA', 1, NULL, NULL, NULL),
(67, 'PLANIFICADOR', 0, NULL, NULL, NULL),
(68, 'PREVENCIONISTA DE RIESGOS', 0, NULL, NULL, NULL),
(69, 'SOLDADOR HDPE', 1, NULL, NULL, NULL),
(70, 'SOLDADOR PIPING', 1, NULL, NULL, NULL),
(71, 'SOLDADOR PLANCHA', 1, NULL, NULL, NULL),
(72, 'SOLDADOR TITANIO', 1, NULL, NULL, NULL),
(73, 'SUPERVISOR ANDAMIO', 0, NULL, NULL, NULL),
(74, 'SUPERVISOR ELECTRICO', 0, NULL, NULL, NULL),
(75, 'SUPERVISOR ESTRUCTURAL', 0, NULL, NULL, NULL),
(76, 'SUPERVISOR MECANICO', 0, NULL, NULL, NULL),
(77, 'SUPERVISOR OO.CC', 0, NULL, NULL, NULL),
(78, 'TOPOGRAFO', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

DROP TABLE IF EXISTS `estado_civil`;
CREATE TABLE IF NOT EXISTS `estado_civil` (
  `ID_E_CIVIL` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_E_CIVIL` varchar(15) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_E_CIVIL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
CREATE TABLE IF NOT EXISTS `evaluacion` (
  `ID_EVALUA` int(11) NOT NULL,
  `NOM_EVALUA` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_EVALUA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

DROP TABLE IF EXISTS `examen`;
CREATE TABLE IF NOT EXISTS `examen` (
  `ID_EXAMEN` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_EXAMEN` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_EXAMEN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faena`
--

DROP TABLE IF EXISTS `faena`;
CREATE TABLE IF NOT EXISTS `faena` (
  `ID_FAENA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_COMUNA` int(11) NOT NULL,
  `NOM_FAENA` varchar(30) DEFAULT NULL,
  `COMUNA` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_FAENA`),
  KEY `FK_RELATIONSHIP_45` (`ID_COMUNA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `finiquito_empleado`
--

DROP TABLE IF EXISTS `finiquito_empleado`;
CREATE TABLE IF NOT EXISTS `finiquito_empleado` (
  `ID_FINIQUITO` varchar(20) NOT NULL,
  `ID_CAUSA` int(11) DEFAULT NULL,
  `ID_CONTRATO_EMPLEADO` varchar(20) DEFAULT NULL,
  `FECHA_INI_CONTRATO` date DEFAULT NULL,
  `FECHA_TER_CONTRATO` date DEFAULT NULL,
  `FECHA_FINIQUITO` date NOT NULL,
  `CARGO_CONTRATO` varchar(50) DEFAULT NULL,
  `TURNO_CONTRATO` varchar(40) DEFAULT NULL,
  `NOM_AFP` varchar(50) DEFAULT NULL,
  `NOM_SALUD` varchar(50) DEFAULT NULL,
  `PLAN_SALUD` varchar(6) DEFAULT NULL,
  `SUELDO_CONTRATO` decimal(8,0) DEFAULT NULL,
  `BONO_1` decimal(8,0) DEFAULT NULL,
  `BONO_2` decimal(8,0) DEFAULT NULL,
  `BONO_3` decimal(8,0) DEFAULT NULL,
  `OBS_CONTRATO` varchar(100) DEFAULT NULL,
  `OBS_FINIQUITO` varchar(200) DEFAULT NULL,
  `NIC` varchar(10) DEFAULT NULL,
  `CAUSA_FINIQUITO` varchar(200) NOT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_FINIQUITO`),
  KEY `FK_RELATIONSHIP_71` (`ID_CAUSA`),
  KEY `FK_RELATIONSHIP_72` (`ID_CONTRATO_EMPLEADO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

DROP TABLE IF EXISTS `foto`;
CREATE TABLE IF NOT EXISTS `foto` (
  `ID_FOTO` int(11) NOT NULL AUTO_INCREMENT,
  `RUT_EMPLEADO` varchar(9) NOT NULL,
  `FOTO` longblob,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_FOTO`),
  KEY `FK_RELATIONSHIP_25` (`RUT_EMPLEADO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_evaluacion`
--

DROP TABLE IF EXISTS `historia_evaluacion`;
CREATE TABLE IF NOT EXISTS `historia_evaluacion` (
  `ID_HISTORIA_EVALUACION` int(11) NOT NULL AUTO_INCREMENT,
  `RUT_EMPLEADO` varchar(9) DEFAULT NULL,
  `ID_EVALUA` int(11) DEFAULT NULL,
  `FECHA_EVALUA` date DEFAULT NULL,
  `NOTA_FINAL` decimal(8,0) DEFAULT NULL,
  `OBSERVACIONES_EVALUA` varchar(200) DEFAULT NULL,
  `RUT_EVALUADOR` varchar(9) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_HISTORIA_EVALUACION`),
  KEY `FK_RELATIONSHIP_33` (`ID_EVALUA`),
  KEY `FK_RELATIONSHIP_36` (`RUT_EMPLEADO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_examen`
--

DROP TABLE IF EXISTS `historia_examen`;
CREATE TABLE IF NOT EXISTS `historia_examen` (
  `ID_HISTORIA_EXAMEN` int(11) NOT NULL AUTO_INCREMENT,
  `RUT_EMPLEADO` varchar(9) DEFAULT NULL,
  `ID_EXAMEN` int(11) DEFAULT NULL,
  `NOM_IMPARTE_EXAMEN` varchar(50) DEFAULT NULL,
  `DIR_EXAMEN` varchar(50) DEFAULT NULL,
  `FECHA_APRO_EXAMEN` date DEFAULT NULL,
  `FECHA_VEN_EXAMEN` date DEFAULT NULL,
  `FECHA_EXAMEN` date DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_HISTORIA_EXAMEN`),
  KEY `FK_RELATIONSHIP_31` (`ID_EXAMEN`),
  KEY `FK_RELATIONSHIP_32` (`RUT_EMPLEADO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospedaje`
--

DROP TABLE IF EXISTS `hospedaje`;
CREATE TABLE IF NOT EXISTS `hospedaje` (
  `ID_HOSPEDAJE` int(11) NOT NULL,
  `ID_COMUNA` int(11) NOT NULL,
  `ID_PROVINCIA` int(11) NOT NULL,
  `ID_REGION` int(11) NOT NULL,
  `NOM_HOSPEDAJE` varchar(50) DEFAULT NULL,
  `DIR_HOSPEDAJE` varchar(50) DEFAULT NULL,
  `FONO_HOSPEDAJE` decimal(18,0) DEFAULT NULL,
  `NUM_HABITA_HOSPEDA` decimal(6,0) DEFAULT NULL,
  `CONDICION` tinyint(1) NOT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_HOSPEDAJE`),
  KEY `FK_RELATIONSHIP_49` (`ID_COMUNA`),
  KEY `FK_RELATIONSHIP_50` (`ID_PROVINCIA`),
  KEY `FK_RELATIONSHIP_51` (`ID_REGION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

DROP TABLE IF EXISTS `nacionalidad`;
CREATE TABLE IF NOT EXISTS `nacionalidad` (
  `ID_NACIONALIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_NACIONALIDAD` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_NACIONALIDAD`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`ID_NACIONALIDAD`, `NOM_NACIONALIDAD`, `CONDICION`, `USUARIO_SESSION`, `FECHA_REGISTRO`, `OBSERVACIONES`) VALUES
(1, 'Chile', NULL, NULL, NULL, NULL),
(2, 'Afganistán', NULL, NULL, NULL, NULL),
(3, 'Albania', NULL, NULL, NULL, NULL),
(4, 'Alemania', NULL, NULL, NULL, NULL),
(5, 'Andorra', NULL, NULL, NULL, NULL),
(6, 'Angola', NULL, NULL, NULL, NULL),
(7, 'Antigua y Barbuda', NULL, NULL, NULL, NULL),
(8, 'Arabia Saudita', NULL, NULL, NULL, NULL),
(9, 'Argelia', NULL, NULL, NULL, NULL),
(10, 'Argentina', NULL, NULL, NULL, NULL),
(11, 'Armenia', NULL, NULL, NULL, NULL),
(12, 'Australia', NULL, NULL, NULL, NULL),
(13, 'Austria', NULL, NULL, NULL, NULL),
(14, 'Azerbaiyán', NULL, NULL, NULL, NULL),
(15, 'Bahamas', NULL, NULL, NULL, NULL),
(16, 'Bangladés', NULL, NULL, NULL, NULL),
(17, 'Barbados', NULL, NULL, NULL, NULL),
(18, 'Baréin', NULL, NULL, NULL, NULL),
(19, 'Bélgica', NULL, NULL, NULL, NULL),
(20, 'Belice', NULL, NULL, NULL, NULL),
(21, 'Benín', NULL, NULL, NULL, NULL),
(22, 'Bielorrusia', NULL, NULL, NULL, NULL),
(23, 'Birmania', NULL, NULL, NULL, NULL),
(24, 'Bolivia', NULL, NULL, NULL, NULL),
(25, 'Bosnia-Herzegovina', NULL, NULL, NULL, NULL),
(26, 'Botsuana', NULL, NULL, NULL, NULL),
(27, 'Brasil', NULL, NULL, NULL, NULL),
(28, 'Brunéi', NULL, NULL, NULL, NULL),
(29, 'Bulgaria', NULL, NULL, NULL, NULL),
(30, 'Burkina Faso', NULL, NULL, NULL, NULL),
(31, 'Burundi', NULL, NULL, NULL, NULL),
(32, 'Bután', NULL, NULL, NULL, NULL),
(33, 'Cabo Verde', NULL, NULL, NULL, NULL),
(34, 'Camboya', NULL, NULL, NULL, NULL),
(35, 'Camerún', NULL, NULL, NULL, NULL),
(36, 'Canadá', NULL, NULL, NULL, NULL),
(37, 'Catar', NULL, NULL, NULL, NULL),
(38, 'Chad', NULL, NULL, NULL, NULL),
(39, 'China', NULL, NULL, NULL, NULL),
(40, 'Chipre', NULL, NULL, NULL, NULL),
(41, 'Colombia', NULL, NULL, NULL, NULL),
(42, 'Comoras', NULL, NULL, NULL, NULL),
(43, 'Congo', NULL, NULL, NULL, NULL),
(44, 'Corea del Norte', NULL, NULL, NULL, NULL),
(45, 'Corea del Sur', NULL, NULL, NULL, NULL),
(46, 'Costa de Marfil', NULL, NULL, NULL, NULL),
(47, 'Costa Rica', NULL, NULL, NULL, NULL),
(48, 'Croacia', NULL, NULL, NULL, NULL),
(49, 'Cuba', NULL, NULL, NULL, NULL),
(50, 'Dinamarca', NULL, NULL, NULL, NULL),
(51, 'Dominica', NULL, NULL, NULL, NULL),
(52, 'Ecuador', NULL, NULL, NULL, NULL),
(53, 'Egipto', NULL, NULL, NULL, NULL),
(54, 'El Salvador', NULL, NULL, NULL, NULL),
(55, 'Emiratos Árabes Unidos', NULL, NULL, NULL, NULL),
(56, 'Eritrea', NULL, NULL, NULL, NULL),
(57, 'Eslovaquia', NULL, NULL, NULL, NULL),
(58, 'Eslovenia', NULL, NULL, NULL, NULL),
(59, 'España', NULL, NULL, NULL, NULL),
(60, 'Estados Unidos', NULL, NULL, NULL, NULL),
(61, 'Estonia', NULL, NULL, NULL, NULL),
(62, 'Etiopía', NULL, NULL, NULL, NULL),
(63, 'Filipinas', NULL, NULL, NULL, NULL),
(64, 'Finlandia', NULL, NULL, NULL, NULL),
(65, 'Fiyi', NULL, NULL, NULL, NULL),
(66, 'Francia', NULL, NULL, NULL, NULL),
(67, 'Gabón', NULL, NULL, NULL, NULL),
(68, 'Gambia', NULL, NULL, NULL, NULL),
(69, 'Georgia', NULL, NULL, NULL, NULL),
(70, 'Ghana', NULL, NULL, NULL, NULL),
(71, 'Granada', NULL, NULL, NULL, NULL),
(72, 'Grecia', NULL, NULL, NULL, NULL),
(73, 'Guatemala', NULL, NULL, NULL, NULL),
(74, 'Guinea', NULL, NULL, NULL, NULL),
(75, 'Guinea Ecuatorial', NULL, NULL, NULL, NULL),
(76, 'Guinea-Bisáu', NULL, NULL, NULL, NULL),
(77, 'Guyana', NULL, NULL, NULL, NULL),
(78, 'Haití', NULL, NULL, NULL, NULL),
(79, 'Honduras', NULL, NULL, NULL, NULL),
(80, 'Hungría', NULL, NULL, NULL, NULL),
(81, 'India', NULL, NULL, NULL, NULL),
(82, 'Indonesia', NULL, NULL, NULL, NULL),
(83, 'Irak', NULL, NULL, NULL, NULL),
(84, 'Irán', NULL, NULL, NULL, NULL),
(85, 'Irlanda', NULL, NULL, NULL, NULL),
(86, 'Islandia', NULL, NULL, NULL, NULL),
(87, 'Islas Marshall', NULL, NULL, NULL, NULL),
(88, 'Islas Salomón', NULL, NULL, NULL, NULL),
(89, 'Israel', NULL, NULL, NULL, NULL),
(90, 'Italia', NULL, NULL, NULL, NULL),
(91, 'Jamaica', NULL, NULL, NULL, NULL),
(92, 'Japón', NULL, NULL, NULL, NULL),
(93, 'Jordania', NULL, NULL, NULL, NULL),
(94, 'Kazajistán', NULL, NULL, NULL, NULL),
(95, 'Kenia', NULL, NULL, NULL, NULL),
(96, 'Kirguistán', NULL, NULL, NULL, NULL),
(97, 'Kiribati', NULL, NULL, NULL, NULL),
(98, 'Kosovo', NULL, NULL, NULL, NULL),
(99, 'Kuwait', NULL, NULL, NULL, NULL),
(100, 'Laos', NULL, NULL, NULL, NULL),
(101, 'Lesoto', NULL, NULL, NULL, NULL),
(102, 'Letonia', NULL, NULL, NULL, NULL),
(103, 'Líbano', NULL, NULL, NULL, NULL),
(104, 'Liberia', NULL, NULL, NULL, NULL),
(105, 'Libia', NULL, NULL, NULL, NULL),
(106, 'Liechtenstein', NULL, NULL, NULL, NULL),
(107, 'Lituania', NULL, NULL, NULL, NULL),
(108, 'Luxemburgo', NULL, NULL, NULL, NULL),
(109, 'Macedonia', NULL, NULL, NULL, NULL),
(110, 'Madagascar', NULL, NULL, NULL, NULL),
(111, 'Malasia', NULL, NULL, NULL, NULL),
(112, 'Malaui', NULL, NULL, NULL, NULL),
(113, 'Maldivas', NULL, NULL, NULL, NULL),
(114, 'Malí', NULL, NULL, NULL, NULL),
(115, 'Malta', NULL, NULL, NULL, NULL),
(116, 'Marruecos', NULL, NULL, NULL, NULL),
(117, 'Mauricio', NULL, NULL, NULL, NULL),
(118, 'Mauritania', NULL, NULL, NULL, NULL),
(119, 'México', NULL, NULL, NULL, NULL),
(120, 'Micronesia', NULL, NULL, NULL, NULL),
(121, 'Moldavia', NULL, NULL, NULL, NULL),
(122, 'Mónaco', NULL, NULL, NULL, NULL),
(123, 'Mongolia', NULL, NULL, NULL, NULL),
(124, 'Montenegro', NULL, NULL, NULL, NULL),
(125, 'Mozambique', NULL, NULL, NULL, NULL),
(126, 'Namibia', NULL, NULL, NULL, NULL),
(127, 'Nauru', NULL, NULL, NULL, NULL),
(128, 'Nepal', NULL, NULL, NULL, NULL),
(129, 'Nicaragua', NULL, NULL, NULL, NULL),
(130, 'Níger', NULL, NULL, NULL, NULL),
(131, 'Nigeria', NULL, NULL, NULL, NULL),
(132, 'Noruega', NULL, NULL, NULL, NULL),
(133, 'Nueva Zelanda', NULL, NULL, NULL, NULL),
(134, 'Omán', NULL, NULL, NULL, NULL),
(135, 'Países Bajos', NULL, NULL, NULL, NULL),
(136, 'Pakistán', NULL, NULL, NULL, NULL),
(137, 'Palaos', NULL, NULL, NULL, NULL),
(138, 'Palestina', NULL, NULL, NULL, NULL),
(139, 'Panamá', NULL, NULL, NULL, NULL),
(140, 'Papúa Nueva Guinea', NULL, NULL, NULL, NULL),
(141, 'Paraguay', NULL, NULL, NULL, NULL),
(142, 'Perú', NULL, NULL, NULL, NULL),
(143, 'Polonia', NULL, NULL, NULL, NULL),
(144, 'Portugal', NULL, NULL, NULL, NULL),
(145, 'Reino Unido', NULL, NULL, NULL, NULL),
(146, 'República Centroafricana', NULL, NULL, NULL, NULL),
(147, 'República Checa', NULL, NULL, NULL, NULL),
(148, 'República Democrática del Congo', NULL, NULL, NULL, NULL),
(149, 'República Dominicana', NULL, NULL, NULL, NULL),
(150, 'Ruanda', NULL, NULL, NULL, NULL),
(151, 'Rumania', NULL, NULL, NULL, NULL),
(152, 'Rusia', NULL, NULL, NULL, NULL),
(153, 'Samoa', NULL, NULL, NULL, NULL),
(154, 'San Cristóbal y Nieves', NULL, NULL, NULL, NULL),
(155, 'San Marino', NULL, NULL, NULL, NULL),
(156, 'San Vicente y las Granadinas', NULL, NULL, NULL, NULL),
(157, 'Santa Lucía', NULL, NULL, NULL, NULL),
(158, 'Santo Tomé y Príncipe', NULL, NULL, NULL, NULL),
(159, 'Senegal', NULL, NULL, NULL, NULL),
(160, 'Serbia', NULL, NULL, NULL, NULL),
(161, 'Seychelles', NULL, NULL, NULL, NULL),
(162, 'Sierra Leona', NULL, NULL, NULL, NULL),
(163, 'Singapur', NULL, NULL, NULL, NULL),
(164, 'Siria', NULL, NULL, NULL, NULL),
(165, 'Somalia', NULL, NULL, NULL, NULL),
(166, 'Sri Lanka', NULL, NULL, NULL, NULL),
(167, 'Suazilandia', NULL, NULL, NULL, NULL),
(168, 'Sudáfrica', NULL, NULL, NULL, NULL),
(169, 'Sudán', NULL, NULL, NULL, NULL),
(170, 'Sudán del Sur', NULL, NULL, NULL, NULL),
(171, 'Suecia', NULL, NULL, NULL, NULL),
(172, 'Suiza', NULL, NULL, NULL, NULL),
(173, 'Surinam', NULL, NULL, NULL, NULL),
(174, 'Tailandia', NULL, NULL, NULL, NULL),
(175, 'Taiwán', NULL, NULL, NULL, NULL),
(176, 'Tanzania', NULL, NULL, NULL, NULL),
(177, 'Tayikistán', NULL, NULL, NULL, NULL),
(178, 'Timor Oriental', NULL, NULL, NULL, NULL),
(179, 'Togo', NULL, NULL, NULL, NULL),
(180, 'Tonga', NULL, NULL, NULL, NULL),
(181, 'Trinidad y Tobago', NULL, NULL, NULL, NULL),
(182, 'Túnez', NULL, NULL, NULL, NULL),
(183, 'Turkmenistán', NULL, NULL, NULL, NULL),
(184, 'Turquía', NULL, NULL, NULL, NULL),
(185, 'Tuvalu', NULL, NULL, NULL, NULL),
(186, 'Ucrania', NULL, NULL, NULL, NULL),
(187, 'Uganda', NULL, NULL, NULL, NULL),
(188, 'Uruguay', NULL, NULL, NULL, NULL),
(189, 'Uzbekistán', NULL, NULL, NULL, NULL),
(190, 'Vanuatu', NULL, NULL, NULL, NULL),
(191, 'Vaticano', NULL, NULL, NULL, NULL),
(192, 'Venezuela', NULL, NULL, NULL, NULL),
(193, 'Vietnam', NULL, NULL, NULL, NULL),
(194, 'Yemen', NULL, NULL, NULL, NULL),
(195, 'Yibuti', NULL, NULL, NULL, NULL),
(196, 'Zambia', NULL, NULL, NULL, NULL),
(197, 'Zimbabue', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parentesco`
--

DROP TABLE IF EXISTS `parentesco`;
CREATE TABLE IF NOT EXISTS `parentesco` (
  `ID_PARENTESCO` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_PARENTESCO` varchar(20) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_PARENTESCO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajes`
--

DROP TABLE IF EXISTS `pasajes`;
CREATE TABLE IF NOT EXISTS `pasajes` (
  `ID_PASAJE` int(11) NOT NULL AUTO_INCREMENT,
  `RUT_EMPLEADO` varchar(9) DEFAULT NULL,
  `FECHA_PASAJE` datetime DEFAULT NULL,
  `TIPO_PASAJE` char(20) DEFAULT NULL,
  `ORIGEN_PASAJE` varchar(20) DEFAULT NULL,
  `DESTINO_PASAJE` varchar(20) DEFAULT NULL,
  `CODIGO_PASAJE` varchar(10) NOT NULL,
  `HORA_PASAJE` time DEFAULT NULL,
  `PROVEEDOR` varchar(20) DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_PASAJE`),
  KEY `FK_RELATIONSHIP_68` (`RUT_EMPLEADO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_salud`
--

DROP TABLE IF EXISTS `plan_salud`;
CREATE TABLE IF NOT EXISTS `plan_salud` (
  `ID_PLAN_SALUD` int(11) NOT NULL AUTO_INCREMENT,
  `RUT_EMPLEADO` varchar(9) DEFAULT NULL,
  `ID_SALUD` int(11) DEFAULT NULL,
  `PLAN_PACTADO` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_PLAN_SALUD`),
  KEY `FK_RELATIONSHIP_37` (`RUT_EMPLEADO`),
  KEY `FK_RELATIONSHIP_38` (`ID_SALUD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulante`
--

DROP TABLE IF EXISTS `postulante`;
CREATE TABLE IF NOT EXISTS `postulante` (
  `RUT_POSTULANTE` varchar(9) NOT NULL,
  `ID_REGION` int(11) NOT NULL,
  `ID_PROVINCIA` int(11) NOT NULL,
  `ID_SEX` int(11) NOT NULL,
  `ID_COMUNA` int(11) NOT NULL,
  `ID_NACIONALIDAD` int(11) NOT NULL,
  `ID_ESPECIALIDAD` int(11) NOT NULL,
  `NOM1_POSTULANTE` varchar(50) NOT NULL,
  `NOM2_POSTULANTE` varchar(50) DEFAULT NULL,
  `APE_PAT_POSTULANTE` varchar(50) NOT NULL,
  `APE_MAT_POSTULANTE` varchar(50) DEFAULT NULL,
  `FONO_POSTULANTE` varchar(16) DEFAULT NULL,
  `CEL_POSTULANTE` varchar(16) NOT NULL,
  `EMAIL_POSTULANTE` varchar(50) DEFAULT NULL,
  `CLAVE_POSTULANTE` varchar(30) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RUT_POSTULANTE`),
  KEY `FK_RELATIONSHIP_48` (`ID_ESPECIALIDAD`),
  KEY `FK_RELATIONSHIP_52` (`ID_COMUNA`),
  KEY `FK_RELATIONSHIP_53` (`ID_PROVINCIA`),
  KEY `FK_RELATIONSHIP_54` (`ID_REGION`),
  KEY `FK_RELATIONSHIP_62` (`ID_NACIONALIDAD`),
  KEY `FK_RELATIONSHIP_63` (`ID_SEX`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

DROP TABLE IF EXISTS `provincia`;
CREATE TABLE IF NOT EXISTS `provincia` (
  `ID_PROVINCIA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_REGION` int(11) NOT NULL,
  `NOM_PROVINCIA` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_PROVINCIA`),
  KEY `FK_RELATIONSHIP_21` (`ID_REGION`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`ID_PROVINCIA`, `ID_REGION`, `NOM_PROVINCIA`, `CONDICION`, `USUARIO_SESSION`, `FECHA_REGISTRO`, `OBSERVACIONES`) VALUES
(1, 1, 'Arica', NULL, NULL, NULL, NULL),
(2, 1, 'Parinacota', NULL, NULL, NULL, NULL),
(3, 2, 'Iquique', NULL, NULL, NULL, NULL),
(4, 2, 'El Tamarugal', NULL, NULL, NULL, NULL),
(5, 3, 'Antofagasta', NULL, NULL, NULL, NULL),
(6, 3, 'El Loa', NULL, NULL, NULL, NULL),
(7, 3, 'Tocopilla', NULL, NULL, NULL, NULL),
(8, 4, 'Chañaral', NULL, NULL, NULL, NULL),
(9, 4, 'Copiapó', NULL, NULL, NULL, NULL),
(10, 4, 'Huasco', NULL, NULL, NULL, NULL),
(11, 5, 'Choapa', NULL, NULL, NULL, NULL),
(12, 5, 'Elqui', NULL, NULL, NULL, NULL),
(13, 5, 'Limarí', NULL, NULL, NULL, NULL),
(14, 6, 'Isla de Pascua', NULL, NULL, NULL, NULL),
(15, 6, 'Los Andes', NULL, NULL, NULL, NULL),
(16, 6, 'Petorca', NULL, NULL, NULL, NULL),
(17, 6, 'Quillota', NULL, NULL, NULL, NULL),
(18, 6, 'San Antonio', NULL, NULL, NULL, NULL),
(19, 6, 'San Felipe de Aconcagua', NULL, NULL, NULL, NULL),
(20, 6, 'Valparaiso', NULL, NULL, NULL, NULL),
(21, 7, 'Chacabuco', NULL, NULL, NULL, NULL),
(22, 7, 'Cordillera', NULL, NULL, NULL, NULL),
(23, 7, 'Maipo', NULL, NULL, NULL, NULL),
(24, 7, 'Melipilla', NULL, NULL, NULL, NULL),
(25, 7, 'Santiago', NULL, NULL, NULL, NULL),
(26, 7, 'Talagante', NULL, NULL, NULL, NULL),
(27, 8, 'Cachapoal', NULL, NULL, NULL, NULL),
(28, 8, 'Cardenal Caro', NULL, NULL, NULL, NULL),
(29, 8, 'Colchagua', NULL, NULL, NULL, NULL),
(30, 9, 'Cauquenes', NULL, NULL, NULL, NULL),
(31, 9, 'Curicó', NULL, NULL, NULL, NULL),
(32, 9, 'Linares', NULL, NULL, NULL, NULL),
(33, 9, 'Talca', NULL, NULL, NULL, NULL),
(34, 10, 'Arauco', NULL, NULL, NULL, NULL),
(35, 10, 'Bio Bío', NULL, NULL, NULL, NULL),
(36, 10, 'Concepción', NULL, NULL, NULL, NULL),
(37, 10, 'Ñuble', NULL, NULL, NULL, NULL),
(38, 11, 'Cautín', NULL, NULL, NULL, NULL),
(39, 11, 'Malleco', NULL, NULL, NULL, NULL),
(40, 12, 'Valdivia', NULL, NULL, NULL, NULL),
(41, 12, 'Ranco', NULL, NULL, NULL, NULL),
(42, 13, 'Chiloé', NULL, NULL, NULL, NULL),
(43, 13, 'Llanquihue', NULL, NULL, NULL, NULL),
(44, 13, 'Osorno', NULL, NULL, NULL, NULL),
(45, 13, 'Palena', NULL, NULL, NULL, NULL),
(46, 14, 'Aisén', NULL, NULL, NULL, NULL),
(47, 14, 'Capitán Prat', NULL, NULL, NULL, NULL),
(48, 14, 'Coihaique', NULL, NULL, NULL, NULL),
(49, 14, 'General Carrera', NULL, NULL, NULL, NULL),
(50, 15, 'Antártica Chilena', NULL, NULL, NULL, NULL),
(51, 15, 'Magallanes', NULL, NULL, NULL, NULL),
(52, 15, 'Tierra del Fuego', NULL, NULL, NULL, NULL),
(53, 15, 'Última Esperanza', NULL, NULL, NULL, NULL),
(54, 6, 'Marga Marga', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `ID_REGION` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_REGION` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_REGION`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`ID_REGION`, `NOM_REGION`, `CONDICION`, `USUARIO_SESSION`, `FECHA_REGISTRO`, `OBSERVACIONES`) VALUES
(1, 'Arica y Parinacota XV', NULL, NULL, NULL, NULL),
(2, 'Tarapacá I', NULL, NULL, NULL, NULL),
(3, 'Antofagasta II', NULL, NULL, NULL, NULL),
(4, 'Atacama III', NULL, NULL, NULL, NULL),
(5, 'Coquimbo IV', NULL, NULL, NULL, NULL),
(6, 'Valparaiso V', NULL, NULL, NULL, NULL),
(7, 'Metropolitana de Santiago RM', NULL, NULL, NULL, NULL),
(8, 'Libertador General Bernardo OHiggins VI', NULL, NULL, NULL, NULL),
(9, 'Maule VII', NULL, NULL, NULL, NULL),
(10, 'Biobío VIII', NULL, NULL, NULL, NULL),
(11, 'La Araucanía IX', NULL, NULL, NULL, NULL),
(12, 'Los Ríos XIV', NULL, NULL, NULL, NULL),
(13, 'Los Lagos X', NULL, NULL, NULL, NULL),
(14, 'Aisén del General Carlos Ibáñez del Campo XI', NULL, NULL, NULL, NULL),
(15, 'Magallanes y de la Antártica Chilena XII', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `IDROL` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDROL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salud`
--

DROP TABLE IF EXISTS `salud`;
CREATE TABLE IF NOT EXISTS `salud` (
  `ID_SALUD` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_SALUD` varchar(50) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_SALUD`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salud`
--

INSERT INTO `salud` (`ID_SALUD`, `NOM_SALUD`, `CONDICION`, `USUARIO_SESSION`, `FECHA_REGISTRO`, `OBSERVACIONES`) VALUES
(1, 'FONASA', NULL, NULL, NULL, NULL),
(2, 'COLMENA GOLDEN CROSS S.A.', NULL, NULL, NULL, NULL),
(3, 'CONSALUD S.A.', NULL, NULL, NULL, NULL),
(4, 'CRUZ BLANCA S.A.', NULL, NULL, NULL, NULL),
(5, 'NUEVA MASVIDA S.A.', NULL, NULL, NULL, NULL),
(6, 'VIDA TRES S.A.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

DROP TABLE IF EXISTS `sexo`;
CREATE TABLE IF NOT EXISTS `sexo` (
  `ID_SEX` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_SEX` varchar(10) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_SEX`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cargo`
--

DROP TABLE IF EXISTS `tipo_cargo`;
CREATE TABLE IF NOT EXISTS `tipo_cargo` (
  `ID_TIPO_CARGO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CONTRATO_OBRA` varchar(20) DEFAULT NULL,
  `NOM_CARGO` varchar(50) DEFAULT NULL,
  `SUELDO_CONTRATO` decimal(8,0) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_TIPO_CARGO`),
  KEY `FK_RELATIONSHIP_13` (`ID_CONTRATO_OBRA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_epp`
--

DROP TABLE IF EXISTS `tipo_epp`;
CREATE TABLE IF NOT EXISTS `tipo_epp` (
  `ID_TIPO_EPP` int(11) NOT NULL AUTO_INCREMENT,
  `ID_EPP` int(11) DEFAULT NULL,
  `TALLA_TIPO_EPP` varchar(10) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_TIPO_EPP`),
  KEY `FK_RELATIONSHIP_42` (`ID_EPP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_turno`
--

DROP TABLE IF EXISTS `tipo_turno`;
CREATE TABLE IF NOT EXISTS `tipo_turno` (
  `ID_TIPO_TURNO` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_TIPO_TURNO` varchar(30) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_TIPO_TURNO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

DROP TABLE IF EXISTS `turno`;
CREATE TABLE IF NOT EXISTS `turno` (
  `ID_TURNO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CONTRATO_OBRA` varchar(20) DEFAULT NULL,
  `ID_TIPO_TURNO` int(11) DEFAULT NULL,
  `NOM_TURNO` varchar(40) DEFAULT NULL,
  `CONDICION` tinyint(1) DEFAULT NULL,
  `USUARIO_SESSION` varchar(9) DEFAULT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_TURNO`),
  KEY `FK_RELATIONSHIP_61` (`ID_CONTRATO_OBRA`),
  KEY `FK_RELATIONSHIP_66` (`ID_TIPO_TURNO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
