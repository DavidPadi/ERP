-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2019 a las 12:50:20
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `briefing_tarea`
--

CREATE TABLE `briefing_tarea` (
  `id` int(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `fases` varchar(505) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `equipo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `briefing_tarea`
--

INSERT INTO `briefing_tarea` (`id`, `titulo`, `fechaentrega`, `fases`, `etiquetas`, `equipo`, `descripcion`, `adjunto`, `comentarios`, `estado`) VALUES
(1, 'briefing', '01/22/2019', 'produccion', 'briefing', '2', 'briefing', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'gg', ''),
(2, 'ejemplo', '01/27/2019', 'produccion', 'eeee', '3', 'eee', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'todo ok', ''),
(3, 'propuesta', '03/01/31', 'produccion', 'propuesta', '1', 'propuesta', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'propuesta', ''),
(4, 'propuesta', '01/04/2019', 'produccion', 'propuesta', '2', 'propuesta', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'propuesta', ''),
(5, 's', '02/08/2019', 'produccion', 'ee', '2', 'ss', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 's', 'encurso'),
(6, 's', '02/08/2019', 'produccion', 'ee', '2', 'ss', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 's', 'encurso'),
(7, 'rtr', '02/28/2019', 'produccion', 'rt', '3', 'rt', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'rt', 'encurso'),
(8, 'v', '02/08/2019', 'concurso', 'v', '5', 'v', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'v', 'encurso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campanha`
--

CREATE TABLE `campanha` (
  `id_campanha` varchar(20) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cantidad_tiendas` int(5) NOT NULL,
  `localizacion` varchar(50) NOT NULL,
  `comentarios` varchar(1000) NOT NULL,
  `interlocutor` varchar(50) NOT NULL,
  `fecha_inicio` varchar(50) NOT NULL,
  `fecha_fin` varchar(50) NOT NULL,
  `id_cliente` int(20) NOT NULL,
  `ruta` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `campanha`
--

INSERT INTO `campanha` (`id_campanha`, `estado`, `marca`, `nombre`, `cantidad_tiendas`, `localizacion`, `comentarios`, `interlocutor`, `fecha_inicio`, `fecha_fin`, `id_cliente`, `ruta`) VALUES
('111111', 'concursosolodiseño', 'supercor', 'tiendamurcia', 5, 'murcia', 'd', '5', '2018-10-21', '2018-10-27', 25, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//'),
('1134', 'concursosolodiseño', 'supercor33', 'tiendamurcia', 2, 'murcia', '333333', '22', '2018-11-03', '2018-11-04', 56, ''),
('123321', 'aceptacion', 'supercor', 'tiendahipercor', 3, 'alicante', 'esta todo correcto', 'manolo', '2018-10-24', '2018-10-26', 56, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//'),
('1443', 'concursosolodiseño', 'amstel', 'mundial', 2, 'alicante', 'eee', 'www', '2018-11-24', '2018-11-25', 25, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//'),
('166', 'concursosolodiseño', 'supercor', 'tiendamurcia', 3, 'murcia', 'sssss', 'MANZ', '2018-10-13', '2018-10-27', 25, ''),
('2133', 'propdenegada', 'supercor', 'alcampo', 33, 'linares', '1jeje', '22', '2018-10-20', '2018-10-28', 25, ''),
('32131', 'concursosolodiseño', 'ejemplo', 'tiendamurcia', 2, 'murcia', 'ejemplo', 'ejemplo', '02/20/2019', '03/04/2019', 25, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//'),
('3432', 'propuestagrafica', 'amstel', 'munidalverano', 30, 'soria', 'llevarlacon tiempo', 'antonio', '2018-11-29', '2018-11-30', 56, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//'),
('5544', 'propdenegada', 'heinken', 'heiieken en verano', 24, 'bilbao', 'jorge luis todo ok', 'jorge luis', '02/25/2019', '02/26/2019', 25, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//'),
('87', 'concursosolodiseño', 'supercor', 'bbbbbbbb', 7, 'bbbbbb', '777', '777', '2018-10-21', '2018-10-20', 25, ''),
('asdf', '34', 'safe', 'er', 3, 'ww', 'qwer3', 'eee', '2018-09-20', '2018-09-06', 25, ''),
('asdrwqf', '88', 'wer', 'yuyuy', 55, 'tytyt', 'hj', 'hj', '1998-05-15', '1998-05-15', 25, ''),
('werq85555', '88', 'wer', 'yuyuy', 55, 'tytyt', 'hj', 'hj', '1998-05-15', '1998-05-15', 56, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campanha_equipo`
--

CREATE TABLE `campanha_equipo` (
  `id` int(11) NOT NULL,
  `id_campanha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `campanha_equipo`
--

INSERT INTO `campanha_equipo` (`id`, `id_campanha`) VALUES
(31, '111111'),
(31, '111111'),
(31, '1134'),
(31, '123321'),
(31, '111111'),
(31, '1134'),
(31, '123321'),
(31, '1443'),
(32, '87'),
(33, '3432'),
(33, '87'),
(34, '3432'),
(34, '87'),
(35, '3432'),
(35, '87'),
(36, '1134'),
(36, '123321'),
(37, 'asdf'),
(38, 'asdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centros`
--

CREATE TABLE `centros` (
  `id_centro` int(11) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `cadena` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `centros` varchar(50) NOT NULL,
  `cp` int(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `enviar_doc` varchar(50) NOT NULL,
  `horario_personal_externo` varchar(50) NOT NULL,
  `horario_muelle` varchar(50) NOT NULL,
  `telefonocentro` int(30) NOT NULL,
  `patrimonio` int(30) NOT NULL,
  `seguridad` int(30) NOT NULL,
  `muelle` int(30) NOT NULL,
  `persona_contacto` varchar(50) NOT NULL,
  `responsable` varchar(30) NOT NULL,
  `telefono` int(30) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `caja_central` varchar(50) NOT NULL,
  `personal_seguridad` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `servicio` varchar(50) NOT NULL,
  `rrhh` varchar(50) NOT NULL,
  `oficina` varchar(50) NOT NULL,
  `perfumeria` varchar(50) NOT NULL,
  `liquidos` varchar(50) NOT NULL,
  `alimentacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `centros`
--

INSERT INTO `centros` (`id_centro`, `provincia`, `cadena`, `localidad`, `centros`, `cp`, `direccion`, `plataforma`, `enviar_doc`, `horario_personal_externo`, `horario_muelle`, `telefonocentro`, `patrimonio`, `seguridad`, `muelle`, `persona_contacto`, `responsable`, `telefono`, `fax`, `caja_central`, `personal_seguridad`, `email`, `servicio`, `rrhh`, `oficina`, `perfumeria`, `liquidos`, `alimentacion`) VALUES
(1, 'almeriaqqwq', 'CARREFOUR', 'CAMAS', 'CRF. CAMAS ALJARAFE', 41900, 'ejemplo', '0', '0', '6:00 h', '6:00 h ? 12:30 h.', 955, 0, 0, 955, 'Victor ', 'Patrimonio', 0, '0', '0', '0', 'victor_manuel_ortiz_chacon1@carrefour.com', '0', '0', '0', '0', 'pepe00', '0'),
(2, 'SEVILLA', 'CARREFOUR', 'DOS HERMANAS', '0', 41700, 'Ctra. A-IV, km. 555, esquina Avenida Doctor Flemin', '0', 'Jefe de Servicio', '0', '0', 954, 0, 0, 954, 'Blas Casas', 'Jefe de Servicio', 0, '0', '0', '0', '0', 'blas_casas@carrefour.com', '0', '0', '0', '0', '0'),
(3, 'murcia', 'CARREFOUR', 'dos hermanas', '0', 41900, 'Poeta Mu?oz San Rom?n, s/n', 'CTAIMA', 'Patrimonio', '6:00 h', '6:00h ? 12:30', 954349701, 0, 0, 955, 'Victor Manuel / Paco Martionez', 'Patrimonio / PGC', 0, '954 593 907', '0', '0', 'victor_manuel_ortiz_chacon@carrefour.com', '0', '0', '0', 'franscisco_martinez_cadena@carrefour.com', '0', '0'),
(4, 'jaen', 'CARREFOUR', 'ECIJA', 'C.C.N4', 41400, 'Avenida Del Genil s/n, ', '0', '0', '6:00 h', ' 6:00 - 10:45 h. ', 955, 0, 0, 0, 'Eduardo Gallego', 'PGC', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5, 'SEVILLA', 'CARREFOUR', 'sdsdsss', 'C. C. SAN  PABLO ', 41900, '0', '0', '0', '6:00 h', '6:00 h ? 12:30 h.', 955, 0, 0, 955, 'Victor ', 'Patrimonio', 0, '0', '0', '0', 'victor_manuel_ortiz_chacon@carrefour.com', '0', '0', '0', '0', '0', '0'),
(6, 'SEVILLAaa', 'CARREFOUR', 'SEVILLA', 'CRF. MACARENA ', 41020, 'Ronda Urbana Norte, s/n', '0', 'DIFICIL CONTACTAR CON ELLOS', '0', '0', 954, 0, 0, 0, '0', '0', 0, 'Jose Antonio / Carmen Fernandez / Jose Manuel Nava', '0', 'juan_ramon_henares@carrefour.com', 'juan_luis_dominguez@carrefour.com', '0', '0', '0', '0', '0', '0'),
(7, 'SEVILLA ', 'CARREFOUR', 'SAN JUAN DE AZNALFARACHE', '0', 41920, 'Carretera San Juan de Aznalfarache-Tomares, km. 1.', '0', '0', '5:45 h', '6:00 h ? 13:00 h.', 954593800, 0, 954593816, 0, 'Jefe de Patrimonio', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', 'felipe_carvajal_de_l0a_rosa@carrefour.com', '0'),
(8, 'SEVILLA', 'CARREFOUR', 'CAMAS', '0', 41900, 'Poeta Mu?oz San Rom?n s/n ', '0', '0', '6:00 h', '6:00 h a 12:30 h.', 955343222, 0, 0, 955, 'Victor ', 'Patrimonio', 0, '0', '0', '0', 'victor_manuel_ortiz_chacon@carrefour.com', '0', '0', '0', '0', '0', '0'),
(13, 'SEVILLA', 'CARREFOUR', 'CAMAS', '0', 41900, 'ejemplo', '0', '0', '6:00 h', '6:00 h ? 12:30 h.', 955, 0, 0, 955, 'Victor ', 'Patrimonio', 0, '0', '0', '0', 'victor_manuel_ortiz_chacon@carrefour.com', '0', '0', '0', '0', '0', '0'),
(14, 'SEVILLA', 'CARREFOUR', 'CAMAS', '0', 41900, 'ejemplo', '0', '0', '6:00 h', '6:00 h ? 12:30 h.', 955, 0, 0, 955, 'Victor ', 'Patrimonio', 0, '0', '0', '0', 'victor_manuel_ortiz_chacon@carrefour.com', '0', '0', '0', '0', '0', '0'),
(15, 'rfg', 'fgf', 'fgf', 'fgf', 3434, 'gfg', '0', 'fgff', '0', '0', 0, 0, 233, 0, '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(16, 'rfg', 'fgf', 'fgf', 'fgf', 3434, 'gfg', '0', 'fgff', '0', '0', 0, 0, 233, 0, '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '4545', '0'),
(17, 'rfg', 'fgf', 'fgf', 'fgf', 3434, 'gfg', '0', 'fgff', '0', '0', 0, 0, 233, 0, '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centros_equipo`
--

CREATE TABLE `centros_equipo` (
  `clave` int(11) NOT NULL,
  `id_centro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `centros_equipo`
--

INSERT INTO `centros_equipo` (`clave`, `id_centro`) VALUES
(36, 1),
(33, 3),
(34, 3),
(35, 3),
(31, 5),
(32, 6),
(37, 6),
(38, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_cliente` int(20) NOT NULL,
  `Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_cliente`, `Nombre`) VALUES
(25, 'vodafone'),
(56, 'cruzcampo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concurso_tarea`
--

CREATE TABLE `concurso_tarea` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `id_trabajadores` int(50) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `fases` varchar(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `adjunto` varchar(300) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `concurso_tarea`
--

INSERT INTO `concurso_tarea` (`id`, `titulo`, `id_trabajadores`, `fechaentrega`, `fases`, `etiquetas`, `adjunto`, `descripcion`, `comentarios`, `estado`) VALUES
(1, 'ejemplo', 2, '2019-01-31', 'concurso', 'ejemplo', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'jemelo', 'todo correcto', ''),
(2, 'ejemplo', 2, '2019-01-31', 'concurso', 'ejemplo', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'jemelo', 'todo correcto', ''),
(3, 'd', 1, '2019-01-29', 'concurso', 'dd', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'd', 'd', ''),
(4, 'ejemplo', 3, '2019-01-23', 'implantacion', 'ejemplo', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'esto es un ejemplo', 'falta llamar al gpv', 'finalizado'),
(5, 'hola', 1, '01/08/2019', 'implantacion', 'ee', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'dd', 'ddede', 'encurso'),
(6, 'g', 5, '02/01/2019', 'concurso', 'ggg', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'ggg', 'ggg', 'finalizado'),
(7, 'ddd', 3, '02/19/2019', 'concurso', 'dd', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'dd', 'dd', 'finalizado'),
(8, 'hay q hblar con gpv', 3, '02/15/2019', 'implantacion', 'sss', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'sss', 'ejemploooo', 'encurso'),
(9, 'sss', 5, '02/22/2019', 'implantacion', 'ssss', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'ddddd', 'sss', 'finalizado'),
(10, 'ffff', 5, '02/09/2019', 'concurso', 'ffff', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'ffff', 'ffff', 'finalizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email`
--

CREATE TABLE `email` (
  `cajacentral` varchar(50) NOT NULL,
  `seguridad` varchar(50) NOT NULL,
  `patrimonio` varchar(50) NOT NULL,
  `servicio` varchar(50) NOT NULL,
  `rrhh` varchar(50) NOT NULL,
  `oficina` varchar(50) NOT NULL,
  `perfumeria` varchar(50) NOT NULL,
  `liquidos` varchar(50) NOT NULL,
  `alimentacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fecha_in` varchar(50) NOT NULL,
  `fecha_fin` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`titulo`, `descripcion`, `fecha_in`, `fecha_fin`, `id`) VALUES
('EQUIPO1', 'g', '2018-10-24', '2018-10-25', 1),
('ff', 'f', '2019-03-09', '2019-03-06', 5),
('k', 'k', '2019-02-21', '2019-03-05', 8),
('k', 'k', '2019-02-21', '2019-03-05', 9),
('dd', 'd', '2019-03-09', '2019-03-06', 10),
('e', 'ee', '2019-02-21', '2019-03-05', 11),
('t', 'rrt', '2019-02-22', '2019-02-26', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiocostes_tarea`
--

CREATE TABLE `estudiocostes_tarea` (
  `id` int(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `fases` varchar(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `equipo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiocostes_tarea`
--

INSERT INTO `estudiocostes_tarea` (`id`, `titulo`, `fechaentrega`, `fases`, `etiquetas`, `equipo`, `descripcion`, `comentarios`, `adjunto`, `estado`) VALUES
(1, 'costes', '01/22/2019', 'concurso', 'costes', '2', 'costes', 'costes', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', ''),
(2, 'rrr', '02/07/2019', 'implantacion', 'rrrrrrrrr', '3', 'rrrr', 'rrr', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'encurso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fases`
--

CREATE TABLE `fases` (
  `id_fase` int(10) NOT NULL,
  `tipo` int(5) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_camp` varchar(20) NOT NULL,
  `id_tienda` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gpv`
--

CREATE TABLE `gpv` (
  `id_gpv` int(10) NOT NULL,
  `id_tienda` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` int(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `zona` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gpv`
--

INSERT INTO `gpv` (`id_gpv`, `id_tienda`, `nombre`, `telefono`, `email`, `zona`) VALUES
(1, 1234, 'joseluis', 65574748, 'agencia@pz.es', 'andaluciaoriental'),
(2, 1234, 'joseluis', 65574748, 'agencia@pz.es', 'andaluciaoriental'),
(3, 1, 'joseluis', 65574748, 'agencia@pz.es', 'andaluciaoriental'),
(4, 1234, 'jose', 6565453, 'jose@agencia.pz', 'andaluciaoriental'),
(5, 111111, 'luis', 85784, 'luis@agencia.pz', 'levante'),
(6, 1, 'pepe', 3434343, 'a.acuna@agenciapz.com', 'norte'),
(7, 123411, 'ana', 6234572, 'ana@agencia.pz', 'levante'),
(8, 444, 'pepe', 6736273, 'pepe@agencia.es', 'levante'),
(9, 1, 'ana', 7346453, 'anana@agenci.pz', 'norte'),
(10, 1, 'ana', 7346453, 'anana@agenci.pz', 'norte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `implantacion_tarea`
--

CREATE TABLE `implantacion_tarea` (
  `id` int(50) NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_trabajadores` int(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `fases` varchar(50) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `implantacion_tarea`
--

INSERT INTO `implantacion_tarea` (`id`, `adjunto`, `comentarios`, `descripcion`, `id_trabajadores`, `etiquetas`, `fases`, `fechaentrega`, `titulo`, `estado`) VALUES
(1, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'implantacion todo ok', 'implantacion todo ok', 2, 'implantacion todo ok', 'implantacion', '01/04/2019', 'implantacion todo ok', ''),
(2, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'implantacion todo ok', 'implantacion todo ok', 2, 'implantacion todo ok', 'implantacion', '01/04/2019', 'implantacion todo ok', ''),
(3, '', 'efe', 'ejemplo implatacion', 5, 'ejemplo implatacion', 'ejemplo implatacion', '02/23/2019', 'ejemplo implatacion', 'finalizado'),
(4, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'rtr', 'rtr', 3, 'rtrtr', 'concurso', '02/08/2019', 'rtrtr', 'finalizado'),
(5, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'erer', 'erer', 5, 'erer', 'concurso', '02/16/2019', 'rere', 'encurso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kit_tarea`
--

CREATE TABLE `kit_tarea` (
  `id` int(50) NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_trabajadores` int(50) NOT NULL,
  `fases` varchar(50) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `kit_tarea`
--

INSERT INTO `kit_tarea` (`id`, `adjunto`, `comentarios`, `descripcion`, `id_trabajadores`, `fases`, `fechaentrega`, `titulo`, `etiquetas`, `estado`) VALUES
(1, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'kit todo ok', 'kit todo ok', 1, 'implantacion', '01/10/2019', 'kit todo ok', 'kit todo ok', ''),
(2, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'v', 'v', 1, 'concurso', '02/08/2019', 'v', 'v', 'encurso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `Id_marca` int(50) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `id_cliente` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`id`, `nombre`, `cantidad`) VALUES
(1, 'neverA', 4),
(2, 'LIMONES', 23),
(8, 'MOSTRADOR', 2),
(9, 'neverA', 44),
(10, 'neverA', 44),
(11, 'nevera', 9),
(12, 'nevera', 9),
(13, 'nevera', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `montajes`
--

CREATE TABLE `montajes` (
  `id` int(50) NOT NULL,
  `cc` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `numero` int(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `estado_generalactivacion` varchar(50) NOT NULL,
  `zona` varchar(50) NOT NULL,
  `cadena` varchar(50) NOT NULL,
  `centro` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `detalle_exposicion` varchar(50) NOT NULL,
  `tipologia_cliente` varchar(50) NOT NULL,
  `start` varchar(50) NOT NULL,
  `end` varchar(50) NOT NULL,
  `nombre_gpv` varchar(50) NOT NULL,
  `tlfn_gpv` int(50) NOT NULL,
  `mail_gpv` varchar(50) NOT NULL,
  `comunicaciones_gpv` varchar(50) NOT NULL,
  `persona_cargo` varchar(50) NOT NULL,
  `tlfn` int(50) NOT NULL,
  `mail_centro` varchar(50) NOT NULL,
  `comunicaciones_centro` varchar(50) NOT NULL,
  `permite_promo` tinyint(1) NOT NULL,
  `hay_producto` tinyint(1) NOT NULL,
  `tv` tinyint(1) NOT NULL,
  `fechanoposible_cerrada` varchar(50) NOT NULL,
  `observaciones_planificacion` varchar(50) NOT NULL,
  `resultado_planificacion` varchar(50) NOT NULL,
  `fechacerradaconcentro` varchar(50) NOT NULL,
  `hora_implantacion` varchar(20) NOT NULL,
  `fecha_implantacion` varchar(50) NOT NULL,
  `implantado` varchar(50) NOT NULL,
  `quesehaimplantado` varchar(50) NOT NULL,
  `foto` tinyint(1) NOT NULL,
  `espacio` varchar(50) NOT NULL,
  `no_permitenimplantar` varchar(50) NOT NULL,
  `tv_nolocalizada` varchar(50) NOT NULL,
  `nohayinsuficienteproducto` varchar(50) NOT NULL,
  `numero_visitas` int(50) NOT NULL,
  `observaciones_implantacion` varchar(50) NOT NULL,
  `fecha_desmontaje` varchar(50) NOT NULL,
  `resultado_desmontaje` varchar(50) NOT NULL,
  `observaciones_desmontaje` varchar(50) NOT NULL,
  `responsable_zona` varchar(50) NOT NULL,
  `pz` varchar(50) NOT NULL,
  `subcontrata` varchar(50) NOT NULL,
  `almacen` varchar(50) NOT NULL,
  `descripcion_tarjeta` varchar(50) NOT NULL,
  `ruta` varchar(200) NOT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `montajes`
--

INSERT INTO `montajes` (`id`, `cc`, `marca`, `numero`, `title`, `estado_generalactivacion`, `zona`, `cadena`, `centro`, `descripcion`, `localidad`, `provincia`, `detalle_exposicion`, `tipologia_cliente`, `start`, `end`, `nombre_gpv`, `tlfn_gpv`, `mail_gpv`, `comunicaciones_gpv`, `persona_cargo`, `tlfn`, `mail_centro`, `comunicaciones_centro`, `permite_promo`, `hay_producto`, `tv`, `fechanoposible_cerrada`, `observaciones_planificacion`, `resultado_planificacion`, `fechacerradaconcentro`, `hora_implantacion`, `fecha_implantacion`, `implantado`, `quesehaimplantado`, `foto`, `espacio`, `no_permitenimplantar`, `tv_nolocalizada`, `nohayinsuficienteproducto`, `numero_visitas`, `observaciones_implantacion`, `fecha_desmontaje`, `resultado_desmontaje`, `observaciones_desmontaje`, `responsable_zona`, `pz`, `subcontrata`, `almacen`, `descripcion_tarjeta`, `ruta`, `color`) VALUES
(2, 33, 'CC', 28, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'HIPERCOR', 'CC SEVILLA ESTE', 'Carretera Sevilla M?laga, Km 1,', 'SEVILLA', 'SEVILLA', 'Miniespacio/cabecera/isla', 'A1', '12/20/2018', '11/22/2018', 'ANTONIO D?AZ', 616980722, 'antonio.diazm@heineken.es', '0', '0', 17, '0', '954 26 96 00', 0, 0, 0, '', '0', '0', '', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '1900-00-01', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE JOSE ALFREDO', '0', '0', '0', 'Javier Olmedo', '0', 'ejemplo', '0', '#ff8000'),
(3, 33, 'CC', 29, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'HIPERCOR', '0', 'Avenida de Andaluc?a, s/n, TB C/ MANUEL VELASCO PA', 'SEVILLA', 'SEVILLA', 'Miniespacio/cabecera/isla', 'A1', '12/18/2018', '12/27/2018', 'ANTONIO D?AZ', 616980722, 'antonio.diazm@heineken.es', '0', '0', 17, '0', '954 67 42 00', 0, 0, 0, '', '0', '0', '', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '0', '0', '0', '0', 0, '0', '0000-00-00', 'MONTADO POR IMPLEMENTADORES HESA', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', '#00ffff'),
(4, 33, 'CC', 62, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'NERVION', 'Calle Divino Redentor, 7-11', 'SEVILLA', 'SEVILLA', 'ISLA 2', 'B2', '12/19/2018', '12/22/2018', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '954 63 43 42', 0, 0, 0, '', '0', '0', '', '0', '0000-00-00', '0', '2018-06-04', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK. RESPONSABLE JAVIER', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', '#ff0000'),
(5, 33, 'CC', 63, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'JOSE LAGUILLO', 'Calle Jos? Laguillo, 12', 'SEVILLA', 'SEVILLA', 'ISLA 4', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '955 11 77 05', 0, 0, 0, '0000-00-00', '0', '0', '', '0', '0000-00-00', '0', '2018-06-08', 0, '1900-00-01', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK. RESPONSABLE FERNANDO. ', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', '#000000'),
(6, 33, 'CC', 64, 'MUNDIAL', 'CANCELADO', 'ANOCC', 'SUPERSOL', 'RINCONADA', 'Avda. de Andalucia, s/n', 'SEVILLA', 'SEVILLA', 'ISLA 4', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '955 79 12 73', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 0, '0', '0', '0', '0', 0, '0', '0000-00-00', '0', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(7, 33, 'CC', 65, 'MUNDIAL', 'CANCELADO', 'ANOCC', 'SUPERSOL', 'SALADO', 'Calle Salado, 1-3', 'SEVILLA', 'SEVILLA', 'ISLA 4', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '954 27 79 78', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 0, '0', '0', '0', '0', 0, '0', '0000-00-00', '0', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(8, 33, 'CC', 66, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'SAN JERONIMO', 'Calle Catalu?a, 3', 'SEVILLA', 'SEVILLA', 'ISLA 4', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '954 37 30 04', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '2018-06-07', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', 'VISITADO 05-06-18. EL RESPONSABLE ANTONIO NO MONTA', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(9, 33, 'CC', 67, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'CANDELARIA', 'Calle Candeleria, 26', 'SEVILLA', 'SEVILLA', 'ISLA 2', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '954 63 71 39', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '2018-06-04', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK. RESPONSABLE ANTONIO', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(10, 33, 'CC', 109, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'VENECIA', 'Calle Venecia, 19', 'SEVILLA', 'SEVILLA', 'ISLA 2', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '954 41 44 08', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '2018-05-06', 0, '0', '0', '0', '0', 0, '0', '0000-00-00', 'OK. RESPONSABLE', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(11, 33, 'CC', 110, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'DELICIAS', 'Calle Juan Nunez, 33', 'SEVILLA', 'SEVILLA', 'ISLA 4', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '954 43 51 52', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '2018-06-04', 0, '0', '0', '0', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE EULOGIO', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(12, 33, 'CC', 111, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'ESPARTINA', 'Avda. Rey de Espa?a (Ant. Crta. Sevilla)', 'ESPARTINAS', 'SEVILLA', 'ISLA 4', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '955 71 13 15', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '2018-06-06', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE DANIEL. FALTA SOBRE B2', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(13, 33, 'CC', 168, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'UTRERA', 'Avda. Juan XXIII, s/n', 'UTRERA', 'SEVILLA', 'ISLA 4', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '955 86 19 53', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '2018-06-07', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE PACO , FALTA POR LLEVAR SOBRE B2', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(14, 33, 'CC', 174, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'Serodys Alipensa', 'SEVILLA', 'Av. de Montes Sierra, 1', 'SEVILLA', 'SEVILLA', 'ISLA 4', 'CASH', '0000-00-00', '0000-00-00', '0', 0, '0', '0', '0', 0, '0', '955 02 33 11', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '2018-06-06', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE ANTONIO', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(15, 33, 'CC', 178, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'CASH SILVA', '0', 'Calle Comercio, 63,', 'LEBRIJA', 'SEVILLA', 'ISLA 4', 'CASH', '0000-00-00', '0000-00-00', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '2018-06-08', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE JOSE MARI', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(16, 33, 'CC', 179, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'HERMANOS AYALA', 'SEVILLA', 'Utrera-Sevilla Km 4 S/N', 'UTRERA', 'SEVILLA', 'ISLA 4', 'CASH', '0000-00-00', '0000-00-00', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '2018-07-06', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE D. ANTONIO PEDROSA', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(17, 33, 'CC', 183, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'CASH DIAN', 'Sevilla', 'P. I. Carretera Amarilla, Av. la Prensa, 9', 'SEVILLA', 'SEVILLA', 'ISLA 4', 'CASH', '0000-00-00', '0000-00-00', '0', 0, '0', '0', '0', 0, '0', '954 67 09 00', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '2018-06-06', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE JES?S PONCE', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(18, 33, 'CC', 185, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'CASH BAREA', 'Sevilla', 'Avenida Roberto Osborne 137', 'SEVILLA', 'SEVILLA', 'ISLA 4', 'CASH', '0000-00-00', '0000-00-00', '0', 0, '0', '0', '0', 0, '0', '954 51 73 89', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '2018-06-01', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE JUAN', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(19, 33, 'CC', 187, 'MUNDIAL', 'IMPLANTADO', 'ANOR', 'CASH BAREA', 'CASH BAREA', 'Carretera Palomares-Almensilla, Km. 1,5', 'PALOMARES', 'SEVILLA', 'ISLA 4', 'CASH', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 0, '1900-00-01', 'SI', '0', '0', 0, '0', '0000-00-00', 'Duda kit promocional', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(20, 33, 'CC', 190, 'MUNDIAL', 'CANCELADO', 'ANOCC', 'CS', '0', 'P.I.MATALLANA P-1 Y2 MANZ. 1, 2? FASE, 4? ETAPA', 'LORA DEL RIO', 'SEVILLA', 'ISLA 4', 'CASH', '0000-00-00', '0000-00-00', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 0, '0', '0', '0', '0', 0, '0', '0000-00-00', '0', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(21, 33, 'CC', 191, 'MUNDIAL', 'CANCELADO', 'ANOCC', 'CS', '0', 'P.I. CHAPARREJO, NAVE 15-16', 'ALCALA DE GUADAIRA', 'SEVILLA', 'ISLA 4', 'CASH', '0000-00-00', '0000-00-00', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 0, '0', '0', '0', '0', 0, '0', '0000-00-00', '0', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(22, 33, 'CC', 199, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'CARREFOUR', 'CAMAS', 'CL POETA MU?OZ ROMAN S/N 41900 SEVILLA', 'CAMAS', 'SEVILLA', 'PREMIUM', 'A1', '0000-00-00', '0000-00-00', 'Joaquin Carmona', 606306576, '0', '0', '0', 0, '0', '955 981 485', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '6.00H', '2018-06-06', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', '0', '0', '0', '0', 'Antonio Acuna', '0', '0', '0', ''),
(23, 33, 'CC', 200, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'CARREFOUR', 'SAN PABLO', 'AV SAN PABLO KM 535 41007 SEVILLA', 'SEVILLA', 'SEVILLA', 'PREMIUM', 'A1', '0000-00-00', '0000-00-00', 'Joaquin Carmona', 606306576, '0', '0', '0', 0, '0', '954 593 700', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '0', 'SI', '0', '0', 0, '0', '0000-00-00', '0', '0', '0', '0', 'Antonio Acuna', 'LUCERO+YAM', '0', '0', ''),
(24, 33, 'CC', 205, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'CARREFOUR', 'MACARENA', 'CL RONDA URBANA NORTE S/N 41008 SEVILLA', 'SEVILLA', 'SEVILLA', 'PREMIUM', 'A1', '0000-00-00', '0000-00-00', 'Joaquin Carmona', 606306576, '0', '0', '0', 0, '0', '954 598 534', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '1900-00-01', 'SI', '0', '0', 0, '0', '0000-00-00', '0', '0', '0', '0', 'Antonio Acuna', '0', '0', '0', ''),
(25, 33, 'CC', 208, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'CARREFOUR', 'SAN JUAN', 'CA SAN JUAN-TOMARES KM 41920 SEVILLA', 'SAN JUAN AZNALFARACHE', 'SEVILLA', 'PREMIUM', 'A1', '0000-00-00', '0000-00-00', 'Joaquin Carmona', 606306576, '0', '0', '0', 1405, '0', '954593804', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '2018-06-07', 0, '0', 'si', '0', '0', 0, '0', '0000-00-00', '0', '0', '0', '0', 'Antonio Acuna', '0', '0', '0', ''),
(26, 33, 'CC', 232, 'MUNDIAL', 'PLANIFICADO', 'ANOCC', 'CARREFOUR', 'Dos Hermanas', 'Carretera A-Iv, km 55', 'DOS HERMANAS', 'SEVILLA', '2 m?dulos zona productos andaluces', 'A1', '0000-00-00', '0000-00-00', 'Joaquin Carmona', 606306576, '0', '0', '0', 0, '0', '954 593 905', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO ', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', '0', '00/01/1900', '0', 0, '0', '0000-00-00', '0', '00/01/1900', '0', '00/01/1900', 'Javier Olmedo', '00/01/1900', '0', '0', ''),
(27, 33, 'CC', 233, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'CARREFOUR', 'Montequinto', 'Carretera De Utrera, Km. 1, Montequinto', 'MONTEQUINTO', 'SEVILLA', 'Macro pasillo central 5 m?dulos', 'A1', '0000-00-00', '0000-00-00', 'Joaquin Carmona', 606306576, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO ', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK, DEL IMPLEMENTADOR Y EL RESPONSABLE', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(28, 33, 'CC', 238, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'ALCAMPO', 'Sevilla Este', 'C/ Periodista Jose Antonio Garnendia n? 3', 'SEVILLA', 'SEVILLA', 'CABECERA + ISLA 4', 'A1', '0000-00-00', '0000-00-00', 'LOLE', 0, '0', '0', '0', 23, '0', '954 47 81 60', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '1900-00-01', 'SI', '0', '0', 0, '0', '0000-00-00', '04.06 SE MONTA PERO GPV QUIERE VARIACIONES. 05-06 ', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(29, 33, 'CC', 239, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'ALCAMPO', 'Tamarguillo', 'Av. Ronda del Tamarguillo, 27', 'SEVILLA', 'SEVILLA', '2 CABECERAS', 'A1', '0000-00-00', '0000-00-00', 'LOLE', 661872631, '0', '0', '0', 0, '0', '954 66 22 33', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', 'SI', '0', '0', 0, '0', '0000-00-00', 'VISITADO 05-06-18, NO EST? EL MATERIAL PLV, HABLAD', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(30, 33, 'CC', 241, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'EROSKI', 'OSUNA', 'Calle de Mart?n de la Jara, 0', 'OSUNA', 'SEVILLA', 'ISLA 4', 'B1', '0000-00-00', '0000-00-00', 'LOLE', 0, '0', '0', '0', 0, '0', '954 81 55 76', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK DE LA GPV', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(31, 33, 'CC', 242, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'EROSKI', 'ALCAL?', 'Parque cerro cabeza hermosa, 7.8km', 'ALCALA DE GUADAIRA', 'SEVILLA', 'ISLA 4', 'B1', '0000-00-00', '0000-00-00', 'LOLE', 0, '0', '0', '0', 0, '0', '955 62 17 87', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE RUB?N', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(32, 33, 'CC', 243, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'EROSKI', 'MOR?N', 'Av. la Asunci?n', 'MORON DE LA FRONTERA', 'SEVILLA', 'ISLA 4', 'B1', '0000-00-00', '0000-00-00', 'LOLE', 0, '0', '0', '0', 0, '0', '955 85 47 74', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', 'SI', '0', '0', 0, '0', '0000-00-00', 'OK, DEL GPV LOLE Y RESPONSABLE RA?L', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(33, 33, 'CC', 244, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'EROSKI', 'UTRERA', 'Calle Ctra. Utrera-Sevilla, 0', 'UTRERA', 'SEVILLA', 'ISLA 4', 'B1', '0000-00-00', '0000-00-00', 'LOLE', 0, '0', '0', '0', 0, '0', '955 86 52 73', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', '0', '00/01/1900', '0', 0, '0', '0000-00-00', '07.06.18 SE VISITA CENTRO Y NO HAY PLV. 14-06-18 M', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(34, 33, 'CC', 245, 'MUNDIAL', 'CANCELADO', 'ANOCC', 'EROSKI', 'LEBRIJA', 'Calle Ca?ada de Overo, 0', 'LEBRIJA', 'SEVILLA', 'ISLA 4', 'B1', '0000-00-00', '0000-00-00', 'LOLE', 0, '0', '0', '0', 0, '0', '955 97 72 00', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', '0', '00/01/1900', '0', 0, '0', '0000-00-00', '07.06.18 SE VISITA CENTRO Y NO HAY PLV', '0', '0', '0', 'Javier Olmedo', '0', '0', '0', ''),
(35, 33, 'CC', 515, 'MUNDIAL', 'INCIDENCIA EN IMPLANTACION', 'ANOCC', 'SUPERSOL', 'FELIPE II', 'Avda. Felipe II n? 12-14', 'SEVILLA', 'SEVILLA', 'ISLA 2', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', '0', '00/01/1900', '0', 0, '0', '0000-00-00', 'VISITADO PARA MONTAJE 05/06. RESPONSABLE ANTONIO, ', '00/01/1900', '0', '00/01/1900', 'Javier Olmedo', '00/01/1900', '0', '0', ''),
(36, 33, 'CC', 516, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'REINA', 'Avda. Reina Mercedes, 45', 'SEVILLA', 'SEVILLA', 'ISLA 2', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', 'SI', '00/01/1900', '0', 0, '0', '0000-00-00', 'RESPONSABLE  DANIEL NO PERMITE EL MONTAJE DE LA PA', '00/01/1900', '0', '00/01/1900', 'Javier Olmedo', '00/01/1900', '0', '0', ''),
(37, 33, 'CC', 517, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'GRECO', 'Avda. del Greco, 14', 'SEVILLA', 'SEVILLA', 'ISLA 2', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', 'SI', '00/01/1900', '0', 0, '0', '0000-00-00', '0', '00/01/1900', '0', '00/01/1900', 'Javier Olmedo', '00/01/1900', '0', '0', ''),
(38, 33, 'CC', 518, 'MUNDIAL', 'INCIDENCIA EN IMPLANTACION', 'ANOCC', 'SUPERSOL', 'PINO', 'Calle Forjadores, 8', 'SEVILLA', 'SEVILLA', 'ISLA 2', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', '0', '00/01/1900', '0', 0, '0', '0000-00-00', 'VISITADO 04-06-18, LA RESPONSABLE JESY, NO MONTA P', '00/01/1900', '0', '00/01/1900', 'Javier Olmedo', '00/01/1900', '0', '0', ''),
(39, 33, 'CC', 519, 'MUNDIAL', 'INCIDENCIA EN IMPLANTACION', 'ANOCC', 'SUPERSOL', 'EMINENCIA', 'Calle Ingeniero la Cierva s/n', 'SEVILLA', 'SEVILLA', 'ISLA 2', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', '0', '00/01/1900', '0', 0, '0', '0000-00-00', 'VISITADO 04-06-18, EL RESPONSABLE JOAQU?N, NO DEJA', '00/01/1900', '0', '00/01/1900', 'Javier Olmedo', '00/01/1900', '0', '0', ''),
(40, 33, 'CC', 520, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'M.MINA', 'Calle Marqu?s de la Mina, 8', 'SEVILLA', 'SEVILLA', 'ISLA 2', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', 'SI', '00/01/1900', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE EMILIO Y ROSA', '00/01/1900', '0', '00/01/1900', 'Javier Olmedo', '00/01/1900', '0', '0', ''),
(41, 33, 'CC', 521, 'MUNDIAL', 'IMPLANTADO', 'ANOCC', 'SUPERSOL', 'ALFALFA', 'Plaza de la Alfalfa, 4-5', 'SEVILLA', 'SEVILLA', 'ISLA 2', 'B2', '0000-00-00', '0000-00-00', 'JAVIER RODRIGUEZ', 664292688, 'javier.rodriguez4@heineken.es', '0', '0', 0, '0', '0', 0, 0, 0, '0000-00-00', '0', '0', '0000-00-00', 'OK PLANIFICADO', '0000-00-00', '0', '0000-00-00', 0, '00/01/1900', 'SI', '00/01/1900', '0', 0, '0', '0000-00-00', 'OK RESPONSABLE JOSE ANTONIO', '00/01/1900', '0', '00/01/1900', 'Javier Olmedo', '00/01/1900', '0', '0', ''),
(43, 33, 'ju', 0, 'mundial', 'PTESPLANIFICACION', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-29', '2019-01-31', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0', 'jj', '0', '', '0', '0', '0', '0', 0, '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', 'jj', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '#ff0000'),
(44, 33, 'cruzcampo', 0, 'mundial', 'PTESPLANIFICACION', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-31', '2019-01-30', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0', 'eee', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', 'eee', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//3.PNG', '#a0c03f'),
(45, 21, 'heineken', 0, 'mundial', 'PTESPLANIFICACION', '0', '0', '0', '0', '0', '0', '0', '0', '01/15/2019', '01/24/2019', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0', 'ejemplo', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', 'ejemplo', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//2.jpg', '#00ff00'),
(46, 33, 'cruzcampo', 0, 'mundial', 'SINARTESFINALES', '0', '0', '0', '0', '0', '0', '0', '0', '01/21/2019', '01/26/2019', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0', 'ee', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', 'eee', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//2.jpg', '#ff0080'),
(47, 232, '231', 0, 'tarjetamontar', 'MONTAR', '0', '0', '0', '0', '0', '0', '0', '0', '01/29/2019', '01/30/2019', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0', 'montar', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', 'montr', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//1.jpg', '#a229d6'),
(48, 33, 'cruzcampo', 0, 'ejemplo', 'SINARTESFINALES', '0', '0', '0', '0', '0', '0', '0', '0', '02/12/2019', '02/20/2019', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0', 'ejemplo', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', 'ejemplo', 'vacio', '#5089af'),
(49, 65, 'gg', 0, 'eree', 'MONTAR', '0', '0', '0', '0', '0', '0', '0', '0', '02/26/2019', '03/04/2019', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0', 'gg', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', 'ggg', 'vacio', '#ffff00'),
(50, 33, 'fff', 0, 'fff', 'SINARTESFINALES', '0', '0', '0', '0', '0', '0', '0', '0', '02/20/2019', '02/25/2019', '0', 0, '0', '0', '0', 0, '0', '0', 0, 0, 0, '0', 'fff', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', 'esto es la descripcion', 'vacio', '#ff0000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `montaje_tarea`
--

CREATE TABLE `montaje_tarea` (
  `id` int(50) NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `id_trabajadores` int(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `fases` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `montaje_tarea`
--

INSERT INTO `montaje_tarea` (`id`, `adjunto`, `fechaentrega`, `descripcion`, `comentarios`, `titulo`, `id_trabajadores`, `etiquetas`, `fases`, `estado`) VALUES
(1, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '01/11/2019', 'tareasmontaje', 'tareasmontaje', 'tareasmontaje', 1, 'tareasmontaje', 'produccion', ''),
(2, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '02/07/2019', 'y', 'y', 'y', 2, 'y', 'concurso', 'encurso'),
(3, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '02/07/2019', 'y', 'y', 'y', 2, 'y', 'concurso', 'encurso'),
(4, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '02/07/2019', 'y', 'y', 'y', 2, 'y', 'concurso', 'encurso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `plataforma` varchar(50) NOT NULL,
  `documentacion` varchar(50) NOT NULL,
  `horario_inicio_personal_externo` date NOT NULL,
  `horario_final_personal_externo` date NOT NULL,
  `horario_inicio_muelle` date NOT NULL,
  `horario_final_muelle` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_seguridad`
--

CREATE TABLE `personal_seguridad` (
  `nombre` varchar(50) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `telefono` int(20) NOT NULL,
  `fax` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postventa_tarea`
--

CREATE TABLE `postventa_tarea` (
  `id` int(11) NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `fases` varchar(50) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `id_trabajadores` int(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `postventa_tarea`
--

INSERT INTO `postventa_tarea` (`id`, `adjunto`, `fechaentrega`, `descripcion`, `etiquetas`, `fases`, `comentarios`, `titulo`, `id_trabajadores`, `estado`) VALUES
(1, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '01/18/2019', 'postventa', 'postventa', 'implantacion', 'postventa', 'postventa', 2, ''),
(3, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '02/02/2019', 'gt', 'gt', 'concurso', 'gt', 'gt', 2, 'encurso'),
(4, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '02/02/2019', 'gt', 'gt', 'concurso', 'gt', 'gt', 2, 'encurso'),
(5, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '02/02/2019', 'gt', 'gt', 'concurso', 'gt', 'gt', 2, 'encurso'),
(6, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '02/02/2019', 'gt', 'gt', 'concurso', 'gt', 'gt', 2, 'encurso'),
(7, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', '02/04/2019', 'f', 'f', 'concurso', 'f', 'f', 5, 'encurso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `produccion_tarea`
--

CREATE TABLE `produccion_tarea` (
  `id` int(50) NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_trabajadores` int(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `fases` varchar(50) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `produccion_tarea`
--

INSERT INTO `produccion_tarea` (`id`, `adjunto`, `comentarios`, `descripcion`, `id_trabajadores`, `etiquetas`, `fases`, `fechaentrega`, `titulo`, `estado`) VALUES
(1, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'produccion', 'produccion', 3, 'produccion', 'produccion', '01/25/2019', 'produccion', 'finalizado'),
(2, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'produccion todo ok con el gpv', 'produccion', 1, 'produccion', 'concurso', '01/26/2019', 'produccion', ''),
(3, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'e', 'eeee', 5, 'entr', 'concurso', '2019-02-26', 'producc34', 'finalizado'),
(5, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'e', 'eeee235235', 5, 'entr', 'concurso', '2019-02-26', 'producc4', 'finalizado'),
(6, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'ggg', 'gggg', 5, 'gggg', 'concurso', '2019-02-15', 'ggg', 'finalizado'),
(7, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'ddd', 'dd', 5, 'd', 'concurso', '2019-02-25', 'ddd', 'finalizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propuesta_tarea`
--

CREATE TABLE `propuesta_tarea` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fases` varchar(50) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `equipo` varchar(50) NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `propuesta_tarea`
--

INSERT INTO `propuesta_tarea` (`id`, `titulo`, `etiquetas`, `descripcion`, `fases`, `fechaentrega`, `comentarios`, `equipo`, `adjunto`, `estado`) VALUES
(1, 'prpouesta', 'propuesta', 'propuesta', 'produccion', '01/04/2019', 'propuesta', '2', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', ''),
(2, 'j', 'jjj', 'jjj', 'produccion', '02/01/2019', 'jjj', '3', 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'encurso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `Id_provincia` int(10) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `nombre` varchar(50) NOT NULL,
  `departamentos` varchar(50) NOT NULL,
  `tipo_proyecto` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`nombre`, `departamentos`, `tipo_proyecto`, `descripcion`, `id`) VALUES
('proyecto1', 'Montadores', 'Decoracion permanente', 'proyecto1', 11),
('proyecto2', 'Diseño', 'Campaña shopper', '23', 12),
('proyecto 3', 'Montadores', 'Campaña shopper', '23', 13),
('proyecto4', 'Montadores', 'Campaña shopper', '3', 14),
('ejemplo', 'Diseño', 'Decoracion permanente', 'ejemplo del proyecto a realizar', 15),
('ddd', 'Montadores', 'Decoracion permanente', 'ddd', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id_region` int(10) NOT NULL,
  `Nombre_region` varchar(50) NOT NULL,
  `id_provincia` int(10) NOT NULL,
  `movil` int(20) NOT NULL,
  `Nombre_encargado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_tarea`
--

CREATE TABLE `resultado_tarea` (
  `id` int(50) NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `fases` varchar(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_trabajadores` mediumint(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `resultado_tarea`
--

INSERT INTO `resultado_tarea` (`id`, `adjunto`, `comentarios`, `fases`, `etiquetas`, `fechaentrega`, `titulo`, `descripcion`, `id_trabajadores`, `estado`) VALUES
(1, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'resultadocampaña todo ok', 'produccion', 'resultadocampaña todo ok', '01/10/2019', 'resultadocampaña todo ok', 'resultadocampaña todo ok', 1, ''),
(2, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'x', 'produccion', 'x', '02/01/2019', 'x', 'x', 3, 'encurso'),
(3, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'c', 'concurso', 'c', '02/15/2019', 'c', 'c', 2, 'encurso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` int(50) NOT NULL,
  `concurso` varchar(50) NOT NULL,
  `briefing` varchar(50) NOT NULL,
  `propuesta` varchar(50) NOT NULL,
  `estudio_costes` varchar(50) NOT NULL,
  `produccion` varchar(50) NOT NULL,
  `implantacion` varchar(50) NOT NULL,
  `montajes` varchar(50) NOT NULL,
  `postventa` varchar(50) NOT NULL,
  `resultado_camp` varchar(50) NOT NULL,
  `video` varchar(50) NOT NULL,
  `kit` varchar(50) NOT NULL,
  `implantacion3` varchar(50) NOT NULL,
  `produccion1` varchar(50) NOT NULL,
  `produccion2` varchar(50) NOT NULL,
  `produccion3` varchar(50) NOT NULL,
  `implantacion2` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id`, `concurso`, `briefing`, `propuesta`, `estudio_costes`, `produccion`, `implantacion`, `montajes`, `postventa`, `resultado_camp`, `video`, `kit`, `implantacion3`, `produccion1`, `produccion2`, `produccion3`, `implantacion2`, `estado`) VALUES
(1, 'CONCURSOggg', 'Briefing', 'Propuesta diseño', 'Estudio costes', 'PRODUCCION', 'IMPLANTACION', 'Montajes', 'POSTVENTA', 'Resultado/ campaña', 'Video/ reportaje fin ', 'Kit para el cliente ', '', '', '', '', 'ddd', 'encurso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `tlf_centro` int(20) NOT NULL,
  `tlf_patrimonio` int(20) NOT NULL,
  `tlf_seguridad` int(20) NOT NULL,
  `tlf_muelle` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`tlf_centro`, `tlf_patrimonio`, `tlf_seguridad`, `tlf_muelle`) VALUES
(953599874, 953487141, 953459889, 953232000),
(111111, 333333, 22222, 44444),
(111111, 333333, 22222, 44444),
(333, 333, 333, 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipologia`
--

CREATE TABLE `tipologia` (
  `id_tipologia` int(10) NOT NULL,
  `tipo` int(5) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `id_campanha` varchar(20) NOT NULL,
  `id_tienda` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `Email` varchar(50) NOT NULL,
  `Pass` varchar(50) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Tipo` int(1) NOT NULL,
  `id_trabajadores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`Email`, `Pass`, `Nombre`, `Tipo`, `id_trabajadores`) VALUES
('admin@agenciapz.es', 'admin', 'carlos', 4, 1),
('raquel@agenciapz.es', '123', 'raquel', 2, 2),
('juanfran@agenciapz.es', '112', 'juanfran', 3, 3),
('chacon@agenciapz.es', '221', 'chacon', 1, 4),
('acuna@agenciapz.es', '2195', 'acuña', 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores_equipo`
--

CREATE TABLE `trabajadores_equipo` (
  `id` int(11) NOT NULL,
  `id_trabajadores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajadores_equipo`
--

INSERT INTO `trabajadores_equipo` (`id`, `id_trabajadores`) VALUES
(5, 3),
(6, 3),
(7, 3),
(8, 2),
(8, 3),
(9, 2),
(9, 3),
(10, 2),
(10, 3),
(11, 3),
(11, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video_tarea`
--

CREATE TABLE `video_tarea` (
  `id` int(50) NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `comentarios` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_trabajadores` int(50) NOT NULL,
  `etiquetas` varchar(50) NOT NULL,
  `fases` varchar(50) NOT NULL,
  `fechaentrega` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `video_tarea`
--

INSERT INTO `video_tarea` (`id`, `adjunto`, `comentarios`, `descripcion`, `id_trabajadores`, `etiquetas`, `fases`, `fechaentrega`, `titulo`, `estado`) VALUES
(1, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'video listo ok', 'video listo ok', 3, 'video listo ok', 'implantacion', '02/07/2019', 'video listo ok', ''),
(2, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 't', 't', 4, 't', 'concurso', '02/07/2019', 't', 'encurso'),
(3, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 't', 't', 2, 't', 'concurso', '02/05/2019', 't', 'encurso'),
(4, 'C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//', 'v', 'ev', 3, 'e', 'concurso', '02/21/2019', '7', 'encurso');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `briefing_tarea`
--
ALTER TABLE `briefing_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `campanha`
--
ALTER TABLE `campanha`
  ADD PRIMARY KEY (`id_campanha`),
  ADD KEY `rel_client_camp` (`id_cliente`);

--
-- Indices de la tabla `campanha_equipo`
--
ALTER TABLE `campanha_equipo`
  ADD KEY `rel_id_campanha` (`id_campanha`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indices de la tabla `centros`
--
ALTER TABLE `centros`
  ADD PRIMARY KEY (`id_centro`);

--
-- Indices de la tabla `centros_equipo`
--
ALTER TABLE `centros_equipo`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `rel_id_centro` (`id_centro`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Indices de la tabla `concurso_tarea`
--
ALTER TABLE `concurso_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiocostes_tarea`
--
ALTER TABLE `estudiocostes_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fases`
--
ALTER TABLE `fases`
  ADD PRIMARY KEY (`id_fase`),
  ADD KEY `rel_fase_camp` (`id_camp`),
  ADD KEY `rel_fase_tienda` (`id_tienda`);

--
-- Indices de la tabla `gpv`
--
ALTER TABLE `gpv`
  ADD PRIMARY KEY (`id_gpv`),
  ADD KEY `rel_gpv_tienda` (`id_tienda`);

--
-- Indices de la tabla `implantacion_tarea`
--
ALTER TABLE `implantacion_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `kit_tarea`
--
ALTER TABLE `kit_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`Id_marca`),
  ADD KEY `rel_marc_client` (`id_cliente`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `montajes`
--
ALTER TABLE `montajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `montaje_tarea`
--
ALTER TABLE `montaje_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postventa_tarea`
--
ALTER TABLE `postventa_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `produccion_tarea`
--
ALTER TABLE `produccion_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `propuesta_tarea`
--
ALTER TABLE `propuesta_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`Id_provincia`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_region`),
  ADD KEY `rel_reg_prov` (`id_provincia`);

--
-- Indices de la tabla `resultado_tarea`
--
ALTER TABLE `resultado_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipologia`
--
ALTER TABLE `tipologia`
  ADD PRIMARY KEY (`id_tipologia`),
  ADD KEY `rel_tipo_camp` (`id_campanha`),
  ADD KEY `rel_tipo_tienda` (`id_tienda`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`id_trabajadores`);

--
-- Indices de la tabla `trabajadores_equipo`
--
ALTER TABLE `trabajadores_equipo`
  ADD KEY `rel_id_trabajadores` (`id_trabajadores`);

--
-- Indices de la tabla `video_tarea`
--
ALTER TABLE `video_tarea`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `briefing_tarea`
--
ALTER TABLE `briefing_tarea`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `centros`
--
ALTER TABLE `centros`
  MODIFY `id_centro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `centros_equipo`
--
ALTER TABLE `centros_equipo`
  MODIFY `clave` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `concurso_tarea`
--
ALTER TABLE `concurso_tarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `estudiocostes_tarea`
--
ALTER TABLE `estudiocostes_tarea`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fases`
--
ALTER TABLE `fases`
  MODIFY `id_fase` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gpv`
--
ALTER TABLE `gpv`
  MODIFY `id_gpv` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `implantacion_tarea`
--
ALTER TABLE `implantacion_tarea`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `kit_tarea`
--
ALTER TABLE `kit_tarea`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `montajes`
--
ALTER TABLE `montajes`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `montaje_tarea`
--
ALTER TABLE `montaje_tarea`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `postventa_tarea`
--
ALTER TABLE `postventa_tarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `produccion_tarea`
--
ALTER TABLE `produccion_tarea`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `propuesta_tarea`
--
ALTER TABLE `propuesta_tarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `Id_provincia` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `id_region` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resultado_tarea`
--
ALTER TABLE `resultado_tarea`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipologia`
--
ALTER TABLE `tipologia`
  MODIFY `id_tipologia` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `id_trabajadores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `video_tarea`
--
ALTER TABLE `video_tarea`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `campanha`
--
ALTER TABLE `campanha`
  ADD CONSTRAINT `rel_client_camp` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`Id_cliente`);

--
-- Filtros para la tabla `campanha_equipo`
--
ALTER TABLE `campanha_equipo`
  ADD CONSTRAINT `rel_id` FOREIGN KEY (`id`) REFERENCES `equipo` (`id`),
  ADD CONSTRAINT `rel_id_campanha` FOREIGN KEY (`id_campanha`) REFERENCES `campanha` (`id_campanha`);

--
-- Filtros para la tabla `fases`
--
ALTER TABLE `fases`
  ADD CONSTRAINT `rel_fase_camp` FOREIGN KEY (`id_camp`) REFERENCES `campanha` (`id_campanha`),
  ADD CONSTRAINT `rel_fase_tienda` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`);

--
-- Filtros para la tabla `gpv`
--
ALTER TABLE `gpv`
  ADD CONSTRAINT `rel_gpv_tienda` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`);

--
-- Filtros para la tabla `marca`
--
ALTER TABLE `marca`
  ADD CONSTRAINT `rel_marc_client` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`Id_cliente`);

--
-- Filtros para la tabla `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `rel_reg_prov` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`Id_provincia`);

--
-- Filtros para la tabla `tipologia`
--
ALTER TABLE `tipologia`
  ADD CONSTRAINT `rel_tipo_camp` FOREIGN KEY (`id_campanha`) REFERENCES `campanha` (`id_campanha`),
  ADD CONSTRAINT `rel_tipo_tienda` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`);

--
-- Filtros para la tabla `trabajadores_equipo`
--
ALTER TABLE `trabajadores_equipo`
  ADD CONSTRAINT `rel_id_trabajadores` FOREIGN KEY (`id_trabajadores`) REFERENCES `trabajadores` (`id_trabajadores`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
