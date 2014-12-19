-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-12-2014 a las 01:53:38
-- Versión del servidor: 5.5.40-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `walterpenaloza`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE IF NOT EXISTS `componentes` (
  `id_com` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `campobd` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `campoid` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `campotitulo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `campopalabras` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `campodescrip` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `rutaimagen` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `campoimagen` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `menu_admin` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `html_admin` longtext COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'luisgago@lagc-peru.com',
  `fecha` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_com`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`id_com`, `url`, `archivo`, `campobd`, `campoid`, `campotitulo`, `campopalabras`, `campodescrip`, `rutaimagen`, `campoimagen`, `nombre`, `descripcion`, `menu_admin`, `html_admin`, `email`, `fecha`, `visible`) VALUES
(1, 'usuarios', 'inicio', 'usuarios', 'id', 'usuarios', 'apellidos', 'apellidos', '', '', 'Personal', 'Configura las cuentas de usuarios que podran acceder a lagc.', 'Agregar>agregar|Importar>importar|Exportar>exportar', '', 'luisgago@lagc-peru.com', '1297122217', 1),
(2, 'inicio', 'index', '', '', '', '', '', '', '', 'Inicio', 'Inicio del Administrador', '', '', 'luisgago@lagc-peru.com', '1297124224', 1),
(3, 'sedes', 'inicio', '', '', '', '', '', '', '', 'Sedes', '̧ Sede o Lugar de trabajo', 'Agregar>agregar', '', 'luisgago@lagc-peru.com', '1297122217', 1),
(4, 'cursos', 'inicio', '', '', '', '', '', '', '', 'Cursos', 'Cursos', 'Crear curso>agregar|Asignar Curso>asignar|Buscar Personal>buscar', '', 'luisgago@lagc-peru.com', '1297122217', 1),
(5, 'examenes', 'inicio', '', '', '', '', '', '', '', 'Examenes Medicos', 'Creacion de Perfiles Medicos', 'Crear exámen>agregar|Crear clinica>agregarclinica|Asignar Perfil>asignar|Buscar personal>buscar', '', 'luisgago@lagc-peru.com', '1297122217', 1),
(6, 'seguro', 'inicio', '', '', '', '', '', '', '', 'Seguro de Riesgo', '', 'Crear seguro>agregar|Asignar seguro>asignar|Buscar personal>buscar', '', 'luisgago@lagc-peru.com', '1297122217', 1),
(7, 'asistencia', 'inicio', '', '', '', '', '', '', '', 'Asistencia', '', 'Ver por usuario>buscar|Exportar todo>exportar|Hace 1 días>exportar1dias|Hace 1 Semana>exportar7dias|Hace 15 días>exportar15dias|Hace 1 Mes>exportar1mes', '', 'luisgago@lagc-peru.com', '1297122217', 1),
(8, 'reporte', 'inicio', '', '', '', '', '', '', '', 'Reportes', '', '', '', 'luisgago@lagc-peru.com', '1297122217', 1),
(9, 'configuracion', 'inicio', '', '', '', '', '', '', '', 'Config', 'Configuración de la APP', '', '', 'luisgago@lagc-peru.com', '1297122217', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_asistencia`
--

CREATE TABLE IF NOT EXISTS `com_asistencia` (
  `id_asis` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `apellidop` varchar(50) NOT NULL,
  `apellidom` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dni` varchar(10) NOT NULL,
  `ensa` varchar(10) NOT NULL COMMENT 'Entrada/Salida',
  `sede` varchar(100) NOT NULL,
  `sede_id` int(11) NOT NULL,
  `fecha` varchar(12) NOT NULL,
  PRIMARY KEY (`id_asis`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `com_asistencia`
--

INSERT INTO `com_asistencia` (`id_asis`, `id_user`, `apellidop`, `apellidom`, `nombre`, `dni`, `ensa`, `sede`, `sede_id`, `fecha`) VALUES
(2, 1, 'Gago', 'Casas', 'Luis', '70332193', 'Salida', 'Arequipa', 1, '1406516714'),
(3, 1, 'Gago', 'Casas', 'Luis', '70332193', 'Entrada', 'Arequipa', 1, '1405826436'),
(4, 1, 'Gago', 'Casas', 'Luis', '70332193', 'Entrada', 'Cusco', 3, '2014-07-05'),
(5, 2, 'Apaza', 'Calisaya', 'José Luis', '3534534', 'Salida', 'Ica', 4, '2014-07-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_cursos`
--

CREATE TABLE IF NOT EXISTS `com_cursos` (
  `curso_id` int(11) NOT NULL AUTO_INCREMENT,
  `curso_nombre` varchar(200) NOT NULL,
  `sede_id` varchar(100) NOT NULL COMMENT 'ID de sede',
  PRIMARY KEY (`curso_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `com_cursos`
--

INSERT INTO `com_cursos` (`curso_id`, `curso_nombre`, `sede_id`) VALUES
(1, 'Primer curso 1', '2'),
(2, 'Segundo curso', '1'),
(3, 'Cuarto curso1', '1'),
(4, 'Quechua', '3'),
(5, 'Mate', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_curso_asignar`
--

CREATE TABLE IF NOT EXISTS `com_curso_asignar` (
  `id_asig_curso` int(11) NOT NULL AUTO_INCREMENT,
  `id_curso` int(11) NOT NULL COMMENT 'ID Curso',
  `id_usuario` int(11) NOT NULL,
  `fechainicio` varchar(12) NOT NULL,
  `fechafin` varchar(12) NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL COMMENT 'Activo/Desactivado',
  PRIMARY KEY (`id_asig_curso`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `com_curso_asignar`
--

INSERT INTO `com_curso_asignar` (`id_asig_curso`, `id_curso`, `id_usuario`, `fechainicio`, `fechafin`, `archivo`, `activo`) VALUES
(1, 3, 2, '2014-06-03', '2014-06-04', '2_3_jose-luisapazacalisaya.jpeg', 1),
(2, 4, 2, '2014-07-15', '', '', 1),
(3, 1, 2, '2014-07-15', '2014-07-15', '', 0),
(5, 2, 2, '2014-07-16', '2014-07-17', '2_2_jose-luisapazacalisaya.jpeg', 1),
(12, 3, 1, '2014-07-05', '2014-07-06', '1_3_luisgagocasas.jpeg', 1),
(11, 2, 1, '2014-07-20', '2014-07-21', '1_2_luisgagocasas.jpeg', 1),
(10, 1, 1, '2014-07-04', '2014-07-05', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_examenes`
--

CREATE TABLE IF NOT EXISTS `com_examenes` (
  `examen_id` int(11) NOT NULL AUTO_INCREMENT,
  `examen_nombre` varchar(200) NOT NULL,
  `id_clinica` int(11) NOT NULL,
  `sede_id` varchar(100) NOT NULL COMMENT 'ID de sede',
  PRIMARY KEY (`examen_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `com_examenes`
--

INSERT INTO `com_examenes` (`examen_id`, `examen_nombre`, `id_clinica`, `sede_id`) VALUES
(1, 'Perfil 1', 1, '2'),
(2, 'Perfil  2', 2, '1'),
(3, 'Perfil 3', 3, '1'),
(4, 'Perfil 3', 1, '3'),
(5, 'Perfil 4', 2, '4'),
(6, 'Perfil Aqui', 1, '1'),
(7, 'Exámen 1', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_examen_asignar`
--

CREATE TABLE IF NOT EXISTS `com_examen_asignar` (
  `id_asig_examen` int(11) NOT NULL AUTO_INCREMENT,
  `id_examen` int(11) NOT NULL COMMENT 'ID Curso',
  `id_usuario` int(11) NOT NULL,
  `fechainicio` varchar(12) NOT NULL,
  `fechafin` varchar(12) NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL COMMENT 'Activo/Desactivado',
  PRIMARY KEY (`id_asig_examen`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `com_examen_asignar`
--

INSERT INTO `com_examen_asignar` (`id_asig_examen`, `id_examen`, `id_usuario`, `fechainicio`, `fechafin`, `archivo`, `activo`) VALUES
(1, 2, 2, '2014-07-10', '2014-07-11', '2_2_jose-luisapazacalisaya.jpeg', 1),
(2, 3, 2, '', '', '2_3_jose-luisapazacalisaya.jpeg', 1),
(3, 1, 2, '2014-07-01', '2014-07-02', '2_1_jose-luisapazacalisaya.jpeg', 1),
(4, 1, 1, '2014-07-15', '2014-07-16', '', 1),
(5, 2, 1, '2014-07-01', '2014-07-04', '', 1),
(6, 3, 1, '2014-07-02', '2014-07-05', '', 1),
(7, 6, 1, '2014-07-03', '2014-07-06', '', 1),
(8, 2, 9, '2014-07-15', '', '', 1),
(9, 3, 9, '2014-07-16', '', '', 0),
(10, 6, 9, '2014-07-17', '', '', 1),
(11, 7, 1, '2014-07-10', '2014-07-15', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_examen_clinica`
--

CREATE TABLE IF NOT EXISTS `com_examen_clinica` (
  `id_clinica` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_clinica`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `com_examen_clinica`
--

INSERT INTO `com_examen_clinica` (`id_clinica`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Primera clinica', 'direc. clinica', '3242343'),
(2, 'Segunda Clinica', 'direc. segunda clinica', '2353523'),
(3, 'Clinica Arequipa', 'dirección su Casa', '34233');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_sedes`
--

CREATE TABLE IF NOT EXISTS `com_sedes` (
  `sede_id` int(11) NOT NULL AUTO_INCREMENT,
  `sede_nombre` varchar(200) NOT NULL,
  `sede_ncontrato` varchar(100) NOT NULL,
  `sede_codigo` varchar(100) NOT NULL,
  `sede_estado` int(1) NOT NULL,
  PRIMARY KEY (`sede_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `com_sedes`
--

INSERT INTO `com_sedes` (`sede_id`, `sede_nombre`, `sede_ncontrato`, `sede_codigo`, `sede_estado`) VALUES
(1, 'Arequipa', '23423', '4234', 1),
(2, 'Lima', '123', '456', 1),
(3, 'Cusco', '675', '8700', 1),
(4, 'Ica', '23423', '423423', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_seguros`
--

CREATE TABLE IF NOT EXISTS `com_seguros` (
  `seguro_id` int(11) NOT NULL AUTO_INCREMENT,
  `seguro_nombre` varchar(200) NOT NULL,
  `sede_id` varchar(100) NOT NULL COMMENT 'ID de sede',
  PRIMARY KEY (`seguro_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `com_seguros`
--

INSERT INTO `com_seguros` (`seguro_id`, `seguro_nombre`, `sede_id`) VALUES
(1, 'Clinica 1', '2'),
(2, 'Clinica 2', '1'),
(3, 'Clinica 3', '1'),
(4, 'Clinica 3', '3'),
(5, 'Clinica 4', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_seguro_asignar`
--

CREATE TABLE IF NOT EXISTS `com_seguro_asignar` (
  `id_asig_seguro` int(11) NOT NULL AUTO_INCREMENT,
  `id_seguro` int(11) NOT NULL COMMENT 'IDseguro',
  `id_usuario` int(11) NOT NULL,
  `fechainicio` varchar(12) NOT NULL,
  `fechafin` varchar(12) NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL COMMENT 'Activo/Desactivado',
  PRIMARY KEY (`id_asig_seguro`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `com_seguro_asignar`
--

INSERT INTO `com_seguro_asignar` (`id_asig_seguro`, `id_seguro`, `id_usuario`, `fechainicio`, `fechafin`, `archivo`, `activo`) VALUES
(1, 2, 2, '2014-07-02', '2014-07-03', '', 1),
(2, 3, 2, '2014-07-03', '2014-07-04', '2_3_jose-luisapazacalisaya.jpeg', 1),
(3, 1, 2, '', '2014-07-11', '2_1_jose-luisapazacalisaya.jpeg', 1),
(4, 2, 1, '2014-07-04', '2014-07-05', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE IF NOT EXISTS `configuracion` (
  `nombreapp` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ruc` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `logo` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`nombreapp`, `correo`, `direccion`, `telefono`, `ruc`, `logo`) VALUES
('Walter Peñaloza', 'luisgago@lagc-peru.com', 'Mi Casa LL-14', '', '1234342342311', 'logo.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `nombre`, `nivel`) VALUES
(1, 'Asistente de RRHH', 2),
(2, 'Planner', 2),
(3, 'Operario', 4),
(4, 'Supervisor de campo', 3),
(5, 'Dios', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Encriptado con md5',
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `apellidop` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `apellidom` varchar(200) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Apellido Materno',
  `permisos` int(1) NOT NULL DEFAULT '3',
  `nivel` int(11) NOT NULL DEFAULT '4' COMMENT 'Permisos de Usuarios | 1,2,3,4',
  `creadoel` varchar(11) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Cuando se creo',
  `ascreated` int(1) NOT NULL COMMENT 'Como se creo el registro 0>formulario 1>Importado',
  `modificadoel` varchar(11) COLLATE utf8_spanish_ci NOT NULL COMMENT 'cuando se modifico',
  `imagen` varchar(100) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Imagen de Perfil',
  `dni` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` varchar(100) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Codigo Manual de la EMPRESA',
  `cargo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fechanacimiento` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `departamento` int(5) NOT NULL,
  `celular` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `fechaingresoempresa` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `gsanguineo` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Grupo sanguíneo',
  `estado` int(1) NOT NULL DEFAULT '1' COMMENT 'estado del personal',
  `genero` int(1) NOT NULL COMMENT 'sexo 1=hombre, 0=mujer',
  `comentario` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'Comentario del personal <> opcional',
  `sede_id` varchar(15) COLLATE utf8_spanish_ci NOT NULL COMMENT 'ID''s de sedes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=67 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `email`, `nombres`, `apellidop`, `apellidom`, `permisos`, `nivel`, `creadoel`, `ascreated`, `modificadoel`, `imagen`, `dni`, `codigo`, `cargo`, `fechanacimiento`, `departamento`, `celular`, `fechaingresoempresa`, `gsanguineo`, `estado`, `genero`, `comentario`, `sede_id`) VALUES
(1, 'luisgago', '938b4bc0ed0c9a281e9dc30273240fef', 'luisgago@maestro21.com', 'Luis', 'Gago', 'Casas', 5, 1, '', 0, '1406586427', '1_luisgagocasas.png', '70332193', '', '', '1989-12-30', 4, '', '2014-07-27', '', 1, 1, '', '1|2|3'),
(2, 'admin', '93cbf3bc98f93c74031c78d6bf59236f', 'admin@maestro21.com', 'Admin', 'Maestro', '21', 5, 1, '', 0, '1406496878', '2_jose-luisapaza-calisaya.jpeg', '3534534', '', '', '2014-07-26', 4, '', '2014-07-27', '', 1, 1, 'comentario aqui', '1|2|3|4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
