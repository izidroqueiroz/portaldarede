-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2013 at 05:21 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a7759666_vpol`
--

-- --------------------------------------------------------

--
-- Table structure for table `15m_foros`
--

CREATE TABLE IF NOT EXISTS `15m_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_escribir_msg` varchar(255) DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `15m_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `15m_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `15m_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2807 ;

--
-- Dumping data for table `15m_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `15m_foros_msg`
--

CREATE TABLE IF NOT EXISTS `15m_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26998 ;

--
-- Dumping data for table `15m_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `25s_foros`
--

CREATE TABLE IF NOT EXISTS `25s_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `25s_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `25s_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `25s_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=239 ;

--
-- Dumping data for table `25s_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `25s_foros_msg`
--

CREATE TABLE IF NOT EXISTS `25s_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1698 ;

--
-- Dumping data for table `25s_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE IF NOT EXISTS `api` (
  `api_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_ID` varchar(255) DEFAULT NULL,
  `pais` varchar(30) DEFAULT NULL,
  `tipo` enum('facebook','twitter') DEFAULT 'facebook',
  `estado` enum('activo','inactivo') DEFAULT 'activo',
  `nombre` varchar(255) DEFAULT NULL,
  `linea_editorial` text,
  `url` varchar(255) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `acceso_escribir` text,
  `acceso_borrador` text,
  `clave` text,
  `num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`api_ID`),
  KEY `pais` (`pais`),
  KEY `estado` (`estado`),
  KEY `tipo` (`tipo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `api`
--


-- --------------------------------------------------------

--
-- Table structure for table `api_posts`
--

CREATE TABLE IF NOT EXISTS `api_posts` (
  `post_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(255) DEFAULT NULL,
  `api_ID` mediumint(9) unsigned DEFAULT NULL,
  `estado` enum('publicado','cron','borrado','pendiente') NOT NULL DEFAULT 'pendiente',
  `mensaje_ID` varchar(900) DEFAULT NULL,
  `pendiente_user_ID` mediumint(8) unsigned DEFAULT NULL,
  `publicado_user_ID` mediumint(9) unsigned DEFAULT NULL,
  `borrado_user_ID` mediumint(8) unsigned DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_cron` datetime DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `picture` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`post_ID`),
  KEY `pais` (`pais`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `api_posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `atlantis_foros`
--

CREATE TABLE IF NOT EXISTS `atlantis_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `url` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(255) NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(255) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `atlantis_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `atlantis_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `atlantis_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1025 ;

--
-- Dumping data for table `atlantis_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `atlantis_foros_msg`
--

CREATE TABLE IF NOT EXISTS `atlantis_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8723 ;

--
-- Dumping data for table `atlantis_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

CREATE TABLE IF NOT EXISTS `cargos` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `cargo_ID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `asigna` smallint(5) NOT NULL DEFAULT '7',
  `nombre` varchar(32) NOT NULL DEFAULT '',
  `nombre_extra` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nivel` tinyint(3) NOT NULL DEFAULT '1',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `salario` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `autocargo` enum('true','false') CHARACTER SET utf8 NOT NULL DEFAULT 'false',
  `elecciones` datetime DEFAULT NULL,
  `elecciones_electos` tinyint(3) unsigned DEFAULT NULL,
  `elecciones_cada` smallint(5) unsigned DEFAULT NULL,
  `elecciones_durante` tinyint(3) unsigned DEFAULT NULL,
  `elecciones_votan` varchar(999) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `nivel` (`nivel`),
  KEY `nombre` (`nombre`),
  KEY `asigna` (`asigna`),
  KEY `cargo_ID` (`cargo_ID`),
  KEY `pais` (`pais`),
  KEY `elecciones` (`elecciones`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=548 ;

--
-- Dumping data for table `cargos`
--

INSERT INTO `cargos` VALUES(543, 'prorede', 6, 0, 'Coordinador', '', 100, 0, 0, 'false', '2013-04-02 09:00:00', 7, 14, 2, 'ciudadanos');
INSERT INTO `cargos` VALUES(544, 'prorede', 13, 6, 'Moderador', '', 50, 0, 0, 'true', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cargos` VALUES(547, 'prorede', 36, 6, 'Secretário', '', 5, 0, 0, 'true', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cargos_users`
--

CREATE TABLE IF NOT EXISTS `cargos_users` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `cargo_ID` smallint(5) NOT NULL DEFAULT '0',
  `pais` varchar(30) DEFAULT NULL,
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cargo` enum('true','false') NOT NULL DEFAULT 'false',
  `aprobado` enum('ok','no') NOT NULL DEFAULT 'ok',
  `nota` decimal(3,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`ID`),
  KEY `cargo` (`cargo`),
  KEY `user_ID` (`user_ID`),
  KEY `cargo_ID` (`cargo_ID`),
  KEY `aprobado` (`aprobado`),
  KEY `pais` (`pais`),
  KEY `nota` (`nota`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12379 ;

--
-- Dumping data for table `cargos_users`
--

INSERT INTO `cargos_users` VALUES(12372, 13, 'prorede', 220515, '0000-00-00 00:00:00', 'true', 'ok', 10.0);
INSERT INTO `cargos_users` VALUES(12373, 6, 'prorede', 1, '0000-00-00 00:00:00', 'true', 'ok', 99.9);
INSERT INTO `cargos_users` VALUES(12375, 6, 'prorede', 220514, '2013-03-30 20:37:41', 'false', 'ok', 10.0);
INSERT INTO `cargos_users` VALUES(12376, 13, 'prorede', 220514, '2013-03-30 20:37:59', 'false', 'ok', 10.0);
INSERT INTO `cargos_users` VALUES(12377, 36, 'prorede', 1, '2013-03-30 23:43:47', 'false', 'no', 10.0);
INSERT INTO `cargos_users` VALUES(12378, 36, 'prorede', 220514, '2013-03-31 19:56:15', 'true', 'ok', 10.0);

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE IF NOT EXISTS `cat` (
  `ID` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `url` varchar(80) NOT NULL DEFAULT '',
  `nombre` varchar(80) NOT NULL DEFAULT '',
  `num` smallint(6) unsigned NOT NULL DEFAULT '0',
  `nivel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tipo` enum('empresas','docs','cargos') NOT NULL DEFAULT 'docs',
  `orden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `url` (`url`,`nivel`,`tipo`,`orden`,`nombre`,`num`),
  KEY `tipo` (`tipo`),
  KEY `orden` (`orden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` VALUES(105, 'prorede', '', 'Teste', 0, 0, 'docs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE IF NOT EXISTS `chats` (
  `chat_ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `estado` enum('activo','bloqueado','en_proceso','expirado','borrado') NOT NULL DEFAULT 'en_proceso',
  `pais` varchar(30) DEFAULT NULL,
  `url` varchar(90) NOT NULL,
  `titulo` varchar(90) NOT NULL,
  `user_ID` mediumint(8) unsigned NOT NULL,
  `admin` varchar(900) NOT NULL DEFAULT '',
  `acceso_leer` varchar(30) NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(30) DEFAULT 'ciudadanos_global',
  `acceso_escribir_ex` varchar(30) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) DEFAULT '',
  `acceso_cfg_escribir` varchar(900) DEFAULT '',
  `acceso_cfg_escribir_ex` varchar(900) NOT NULL DEFAULT '',
  `fecha_creacion` datetime NOT NULL,
  `fecha_last` datetime NOT NULL,
  `dias_expira` smallint(5) unsigned DEFAULT NULL,
  `url_externa` varchar(500) DEFAULT NULL,
  `stats_visitas` int(12) unsigned NOT NULL DEFAULT '0',
  `stats_msgs` int(12) unsigned NOT NULL DEFAULT '0',
  `GMT` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`chat_ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`),
  KEY `pais` (`pais`(1)),
  KEY `acceso_leer` (`acceso_leer`),
  KEY `acceso_escribir` (`acceso_escribir`),
  KEY `acceso_cfg_leer` (`acceso_cfg_leer`(333)),
  KEY `acceso_cfg_escribir` (`acceso_cfg_escribir`(333)),
  KEY `stats_msgs` (`stats_msgs`),
  KEY `fecha_last` (`fecha_last`),
  KEY `acceso_escribir_ex` (`acceso_escribir_ex`),
  KEY `acceso_cfg_escribir_ex` (`acceso_cfg_escribir_ex`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=695 ;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` VALUES(692, 'activo', 'teste', 'teste', 'Plaza de teste', 0, '', 'anonimos', 'ciudadanos_global', 'ciudadanos_global', '', '', '', '2013-03-17 01:20:52', '2013-03-28 01:40:39', NULL, NULL, 18, 0, 1);
INSERT INTO `chats` VALUES(693, 'activo', 'prorede', 'prorede', 'Chat prorede', 0, '', 'ciudadanos', 'ciudadanos', 'ciudadanos_global', '', '', '', '2013-03-23 20:19:09', '2013-04-23 22:02:42', NULL, NULL, 318, 0, 1);
INSERT INTO `chats` VALUES(694, 'activo', 'Presid', 'presid', 'Plaza de Presid', 0, '', 'anonimos', 'ciudadanos_global', 'ciudadanos_global', '', '', '', '2013-03-28 04:01:46', '2013-03-28 04:14:15', NULL, NULL, 8, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chats_msg`
--

CREATE TABLE IF NOT EXISTS `chats_msg` (
  `msg_ID` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `chat_ID` smallint(5) unsigned NOT NULL,
  `nick` varchar(32) NOT NULL,
  `msg` varchar(900) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_ID` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `tipo` enum('m','p','e','c') NOT NULL DEFAULT 'm',
  `IP` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`msg_ID`),
  KEY `chat_ID` (`chat_ID`),
  KEY `nick` (`nick`),
  KEY `time` (`time`),
  KEY `cargo` (`cargo`),
  KEY `user_ID` (`user_ID`),
  KEY `tipo` (`tipo`),
  KEY `msg` (`msg`(333)),
  KEY `IP` (`IP`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4378043 ;

--
-- Dumping data for table `chats_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `dato` varchar(100) NOT NULL DEFAULT '',
  `valor` text NOT NULL,
  `autoload` enum('si','no') NOT NULL DEFAULT 'si',
  PRIMARY KEY (`ID`),
  KEY `dato` (`dato`),
  KEY `autoload` (`autoload`),
  KEY `pais` (`pais`),
  KEY `valor` (`valor`(255))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=806 ;

--
-- Dumping data for table `config`
--

INSERT INTO `config` VALUES(755, 'www', 'lang', 'pt_BR', 'si');
INSERT INTO `config` VALUES(756, 'prorede', 'PAIS', 'prorede', 'si');
INSERT INTO `config` VALUES(757, 'prorede', 'pais_des', 'Projeto #rede', 'si');
INSERT INTO `config` VALUES(758, 'prorede', 'tipo', 'plataforma', 'no');
INSERT INTO `config` VALUES(759, 'prorede', 'timezone', 'Europe/Madrid', 'si');
INSERT INTO `config` VALUES(760, 'prorede', 'bg_color', '#eeeeee', 'si');
INSERT INTO `config` VALUES(761, 'prorede', 'ECONOMIA', 'false', 'si');
INSERT INTO `config` VALUES(762, 'prorede', 'ASAMBLEA', 'true', 'si');
INSERT INTO `config` VALUES(763, 'prorede', 'lang', 'pt_BR', 'si');
INSERT INTO `config` VALUES(764, 'prorede', 'bg', 'verde23.jpg', 'si');
INSERT INTO `config` VALUES(765, 'prorede', 'defcon', '5', 'si');
INSERT INTO `config` VALUES(766, 'prorede', 'info_documentos', '1', 'si');
INSERT INTO `config` VALUES(767, 'prorede', 'info_censo', '0', 'si');
INSERT INTO `config` VALUES(768, 'prorede', 'info_partidos', '0', 'si');
INSERT INTO `config` VALUES(769, 'prorede', 'info_consultas', '0', 'si');
INSERT INTO `config` VALUES(770, 'prorede', 'palabras', '-1:docs.google.com/spreadsheet/ccc?key=0AprufJ0tZYgEdEliRW9DWGs5ZXVNdFVXSXIyU1paR2c#gid=6:Planilha Proj Rede;-1::;-1::;-1::;-1::;-1::;-1::;-1::;-1::;::', 'si');
INSERT INTO `config` VALUES(771, 'prorede', 'palabras_num', '8', 'no');
INSERT INTO `config` VALUES(772, 'prorede', 'palabra_gob', '', 'si');
INSERT INTO `config` VALUES(773, 'prorede', 'examen_repe', '86400', 'no');
INSERT INTO `config` VALUES(774, 'prorede', 'chat_diasexpira', '16', 'no');
INSERT INTO `config` VALUES(775, 'prorede', 'examenes_exp', '15', 'no');
INSERT INTO `config` VALUES(776, 'prorede', 'socios_estado', 'false', 'si');
INSERT INTO `config` VALUES(777, 'prorede', 'socios_ID', '', 'no');
INSERT INTO `config` VALUES(778, 'prorede', 'socios_descripcion', '', 'no');
INSERT INTO `config` VALUES(779, 'prorede', 'socios_responsable', '', 'no');
INSERT INTO `config` VALUES(780, 'prorede', 'acceso', 'votacion_borrador;ciudadanos:|sondeo;ciudadanos:|referendum;ciudadanos:|parlamento;:|kick;cargo:6 13|kick_quitar;cargo:6 13|foro_borrar;ciudadanos:|control_gobierno;cargo:6|control_sancion;:|control_grupos;ciudadanos:|control_cargos;cargo:6|examenes_decano;cargo:6|examenes_profesor;cargo:6|crear_partido;cargo:6|control_socios;cargo:6|api_borrador;ciudadanos:|control_docs;cargo:6', 'si');

-- --------------------------------------------------------

--
-- Table structure for table `cuentas`
--

CREATE TABLE IF NOT EXISTS `cuentas` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `nombre` varchar(25) CHARACTER SET utf8 NOT NULL,
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `pols` int(10) NOT NULL DEFAULT '0',
  `nivel` tinyint(3) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exenta_impuestos` tinyint(1) NOT NULL DEFAULT '0',
  `gobierno` enum('true','false') CHARACTER SET utf8 DEFAULT 'false',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `user_ID` (`user_ID`),
  KEY `nivel` (`nivel`),
  KEY `pais` (`pais`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=559 ;

--
-- Dumping data for table `cuentas`
--


-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE IF NOT EXISTS `docs` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `text` longtext CHARACTER SET utf8 NOT NULL,
  `text_backup` longtext CHARACTER SET utf8 NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `estado` enum('ok','del','borrador') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `cat_ID` tinyint(3) NOT NULL DEFAULT '0',
  `acceso_leer` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT 'privado',
  `acceso_cfg_leer` varchar(800) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(800) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `version` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `pad_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `estado` (`estado`),
  KEY `cat_ID` (`cat_ID`),
  KEY `url` (`url`),
  KEY `pais` (`pais`),
  KEY `time_last` (`time_last`),
  KEY `time` (`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1509 ;

--
-- Dumping data for table `docs`
--

INSERT INTO `docs` VALUES(1506, 'prorede', 'teste', 'Teste', '', '', '2013-03-28 01:56:21', '2013-03-28 02:01:39', 'del', 105, 'privado', 'privado', 'izidro', 'izidro', 5, '1506.833058');
INSERT INTO `docs` VALUES(1507, 'prorede', 'planilha-planejamento', 'planilha Planejamento', '', '', '2013-03-30 20:34:46', '2013-03-30 20:34:46', 'del', 105, 'privado', 'privado', 'seiji', 'seiji', 0, '1507.135995');
INSERT INTO `docs` VALUES(1508, 'prorede', 'comprovante-de-votacao-seiji', 'Comprovante de votação Seiji', '', '', '2013-04-03 02:33:22', '2013-04-03 02:33:22', 'ok', 105, 'privado', 'privado', 'seiji', 'seiji', 0, '1508.887286');

-- --------------------------------------------------------

--
-- Table structure for table `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `url` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nombre` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `descripcion` text CHARACTER SET utf8 NOT NULL,
  `web` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_ID` tinyint(3) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pv` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`,`cat_ID`),
  KEY `cat_ID` (`cat_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=772 ;

--
-- Dumping data for table `empresas`
--


-- --------------------------------------------------------

--
-- Table structure for table `empresas_acciones`
--

CREATE TABLE IF NOT EXISTS `empresas_acciones` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_empresa` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `pais` varchar(30) DEFAULT NULL,
  `nick` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `num_acciones` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `empresas_acciones`
--


-- --------------------------------------------------------

--
-- Table structure for table `etsiit_foros`
--

CREATE TABLE IF NOT EXISTS `etsiit_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'ciudadanos',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos',
  `acceso_cfg_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `etsiit_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `etsiit_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `etsiit_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `etsiit_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `etsiit_foros_msg`
--

CREATE TABLE IF NOT EXISTS `etsiit_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `etsiit_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `examenes`
--

CREATE TABLE IF NOT EXISTS `examenes` (
  `ID` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cargo_ID` smallint(5) NOT NULL DEFAULT '0',
  `nota` varchar(5) NOT NULL DEFAULT '5',
  `num_preguntas` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ID_old` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `titulo` (`titulo`),
  KEY `nota` (`nota`),
  KEY `pais` (`pais`),
  KEY `cargo_ID` (`cargo_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=442 ;

--
-- Dumping data for table `examenes`
--

INSERT INTO `examenes` VALUES(435, 'teste', 'Coordinador', NULL, 0, '2013-03-17 01:20:52', 6, '5', 1, NULL);
INSERT INTO `examenes` VALUES(436, 'teste', 'Moderador', NULL, 0, '2013-03-17 01:20:52', 13, '5', 1, NULL);
INSERT INTO `examenes` VALUES(437, 'prorede', 'Coordinador', NULL, 0, '2013-03-23 20:19:09', 6, '5', 1, NULL);
INSERT INTO `examenes` VALUES(438, 'prorede', 'Moderador', NULL, 0, '2013-03-23 20:19:09', 13, '5', 1, NULL);
INSERT INTO `examenes` VALUES(439, 'Presid', 'Presidente', NULL, 0, '2013-03-28 04:01:46', 7, '5', 1, NULL);
INSERT INTO `examenes` VALUES(440, 'Presid', 'Moderador', NULL, 0, '2013-03-28 04:01:46', 13, '5', 1, NULL);
INSERT INTO `examenes` VALUES(441, 'prorede', 'Secretário', 'Teste para ser Secretário', 0, '2013-03-30 23:25:58', 36, '0', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `examenes_preg`
--

CREATE TABLE IF NOT EXISTS `examenes_preg` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `examen_ID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pregunta` text NOT NULL,
  `respuestas` text NOT NULL,
  `tiempo` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `pais` (`pais`),
  KEY `examen_ID` (`examen_ID`),
  KEY `user_ID` (`user_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3378 ;

--
-- Dumping data for table `examenes_preg`
--

INSERT INTO `examenes_preg` VALUES(3374, 'teste', 0, 0, '2013-03-17 01:20:52', 'Quieres ser candidato de este cargo', 'SI|NO', '15');
INSERT INTO `examenes_preg` VALUES(3375, 'prorede', 0, 0, '2013-03-23 20:19:09', 'Quieres ser candidato de este cargo', 'SI|NO', '15');
INSERT INTO `examenes_preg` VALUES(3376, 'Presid', 0, 0, '2013-03-28 04:01:46', 'Quieres ser candidato de este cargo', 'SI|NO', '15');
INSERT INTO `examenes_preg` VALUES(3377, 'prorede', 441, 1, '2013-03-30 23:27:54', 'Você quer ser Secretário', 'Sim|Não', '60');

-- --------------------------------------------------------

--
-- Table structure for table `expulsiones`
--

CREATE TABLE IF NOT EXISTS `expulsiones` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `autor` mediumint(8) NOT NULL DEFAULT '0',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `razon` varchar(150) NOT NULL,
  `estado` enum('activo','inactivo','expulsado','cancelado','indultado') NOT NULL DEFAULT 'activo',
  `tiempo` varchar(20) NOT NULL DEFAULT '0',
  `IP` varchar(12) NOT NULL DEFAULT '0',
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '12',
  `motivo` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_ID` (`user_ID`),
  KEY `estado` (`estado`),
  KEY `IP` (`IP`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1478 ;

--
-- Dumping data for table `expulsiones`
--


-- --------------------------------------------------------

--
-- Table structure for table `fcsm_foros`
--

CREATE TABLE IF NOT EXISTS `fcsm_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `fcsm_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `fcsm_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `fcsm_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=554 ;

--
-- Dumping data for table `fcsm_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `fcsm_foros_msg`
--

CREATE TABLE IF NOT EXISTS `fcsm_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5284 ;

--
-- Dumping data for table `fcsm_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `foros`
--

CREATE TABLE IF NOT EXISTS `foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) NOT NULL DEFAULT 'ciudadanos',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos',
  `acceso_cfg_leer` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

--
-- Dumping data for table `foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `foros_items`
--

CREATE TABLE IF NOT EXISTS `foros_items` (
  `item_ID` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(255) DEFAULT NULL,
  `estado` enum('ok','borrado','cerrado') NOT NULL DEFAULT 'ok',
  `foro_ID` mediumint(9) unsigned DEFAULT NULL,
  `hilo_ID` mediumint(8) DEFAULT NULL,
  `parent_ID` mediumint(8) unsigned DEFAULT NULL,
  `nivel` tinyint(3) unsigned DEFAULT '1',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `nick` varchar(20) DEFAULT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `url_old` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

--
-- Dumping data for table `foros_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `grupos`
--

CREATE TABLE IF NOT EXISTS `grupos` (
  `grupo_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL DEFAULT '',
  `num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`grupo_ID`),
  KEY `num` (`num`),
  KEY `pais` (`pais`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=346 ;

--
-- Dumping data for table `grupos`
--

INSERT INTO `grupos` VALUES(343, 'prorede', 'GT Portal', 3);
INSERT INTO `grupos` VALUES(344, 'prorede', 'GT Estatuto', 1);
INSERT INTO `grupos` VALUES(345, 'prorede', 'GT Campanha', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hechos`
--

CREATE TABLE IF NOT EXISTS `hechos` (
  `ID` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `time` date NOT NULL,
  `nick` varchar(14) CHARACTER SET utf8 NOT NULL DEFAULT 'GONZO',
  `texto` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `estado` enum('ok','del') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `time` (`time`,`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=346 ;

--
-- Dumping data for table `hechos`
--


-- --------------------------------------------------------

--
-- Table structure for table `hispania_foros`
--

CREATE TABLE IF NOT EXISTS `hispania_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` mediumint(9) unsigned DEFAULT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(255) NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(255) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_escribir_msg` varchar(255) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `hispania_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `hispania_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `hispania_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` mediumint(9) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5341 ;

--
-- Dumping data for table `hispania_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `hispania_foros_msg`
--

CREATE TABLE IF NOT EXISTS `hispania_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` mediumint(9) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43523 ;

--
-- Dumping data for table `hispania_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `kicks`
--

CREATE TABLE IF NOT EXISTS `kicks` (
  `ID` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `user_ID` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `autor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `razon` varchar(160) NOT NULL DEFAULT '',
  `estado` enum('activo','inactivo','expulsado','cancelado') NOT NULL DEFAULT 'activo',
  `tiempo` varchar(20) NOT NULL DEFAULT '0',
  `IP` varchar(12) NOT NULL DEFAULT '0',
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `motivo` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `pais` (`pais`,`user_ID`,`estado`,`expire`),
  KEY `estado` (`estado`),
  KEY `user_ID` (`user_ID`),
  KEY `IP` (`IP`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=651 ;

--
-- Dumping data for table `kicks`
--


-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nick` varchar(20) NOT NULL DEFAULT '',
  `accion` text NOT NULL,
  `accion_a` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `pais` (`pais`),
  KEY `user_ID` (`user_ID`),
  KEY `time` (`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37767 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` VALUES(37682, 'teste', '2013-03-20 00:43:01', 220515, 'teste', 'Votación: borrador creado <a href="/votacion/3440">#3440</a>', 'votacion');
INSERT INTO `log` VALUES(37683, 'teste', '2013-03-23 19:22:03', 1, 'izidro', 'Rechaza ciudadanía', 'rechazar-ciudadania');
INSERT INTO `log` VALUES(37684, 'teste', '2013-03-23 20:25:50', 220515, 'teste', 'Rechaza ciudadanía', 'rechazar-ciudadania');
INSERT INTO `log` VALUES(37685, 'prorede', '2013-03-27 00:48:44', 220515, 'teste', 'Votación: borrador creado <a href="/votacion/3441">#3441</a>', 'votacion');
INSERT INTO `log` VALUES(37686, 'prorede', '2013-03-27 00:49:21', 220515, 'teste', 'Votación: borrador editado <a href="/votacion/3441">#3441</a> (sondeo)', 'votacion');
INSERT INTO `log` VALUES(37687, 'teste', '2013-03-28 01:40:59', 1, 'izidro', 'Rechaza ciudadanía', 'rechazar-ciudadania');
INSERT INTO `log` VALUES(37688, 'prorede', '2013-03-28 01:56:21', 1, 'izidro', 'Documento creado: <a href="/doc/teste">Teste</a>', 'crear-documento');
INSERT INTO `log` VALUES(37689, 'prorede', '2013-03-28 03:43:47', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3441">#3441</a> (sondeo)', 'votacion');
INSERT INTO `log` VALUES(37690, 'prorede', '2013-03-28 03:44:50', 1, 'izidro', 'Votación: borrador creado <a href="/votacion/3442">#3442</a>', 'votacion');
INSERT INTO `log` VALUES(37691, 'prorede', '2013-03-29 13:36:43', 220515, 'teste', 'Votación: borrador editado <a href="/votacion/3442">#3442</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37692, 'prorede', '2013-03-29 16:19:16', 220516, 'testepr', 'Votación: borrador editado <a href="/votacion/3442">#3442</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37693, 'prorede', '2013-03-29 16:42:10', 1, 'izidro', 'Votación: borrador creado <a href="/votacion/3443">#3443</a>', 'votacion');
INSERT INTO `log` VALUES(37694, 'prorede', '2013-03-29 18:29:06', 1, 'izidro', 'Votación: borrador creado <a href="/votacion/3444">#3444</a>', 'votacion');
INSERT INTO `log` VALUES(37695, 'prorede', '2013-03-30 00:38:29', 1, 'izidro', 'Votación: borrador creado <a href="/votacion/3445">#3445</a>', 'votacion');
INSERT INTO `log` VALUES(37696, 'prorede', '2013-03-30 01:27:54', 1, 'izidro', 'Gobierno configuración: principal', 'gobierno');
INSERT INTO `log` VALUES(37697, 'prorede', '2013-03-30 01:28:27', 1, 'izidro', 'Gobierno configuración: principal', 'gobierno');
INSERT INTO `log` VALUES(37698, 'prorede', '2013-03-30 01:44:25', 1, 'izidro', 'Gobierno configuración: principal', 'gobierno');
INSERT INTO `log` VALUES(37699, 'prorede', '2013-03-30 01:46:05', 1, 'izidro', 'Gobierno configuración: foro Teste', 'gobierno');
INSERT INTO `log` VALUES(37700, 'prorede', '2013-03-30 01:46:30', 1, 'izidro', 'Gobierno configuración: foro', 'gobierno');
INSERT INTO `log` VALUES(37701, 'prorede', '2013-03-30 01:46:35', 1, 'izidro', 'Gobierno configuración: foro', 'gobierno');
INSERT INTO `log` VALUES(37702, 'prorede', '2013-03-30 01:47:38', 1, 'izidro', 'Gobierno configuración: foro', 'gobierno');
INSERT INTO `log` VALUES(37703, 'prorede', '2013-03-30 01:48:01', 1, 'izidro', 'Gobierno configuración: foro', 'gobierno');
INSERT INTO `log` VALUES(37704, 'prorede', '2013-03-30 01:48:49', 1, 'izidro', 'Gobierno configuración: foro', 'gobierno');
INSERT INTO `log` VALUES(37705, 'prorede', '2013-03-30 01:53:03', 1, 'izidro', 'Gobierno configuración: foro', 'gobierno');
INSERT INTO `log` VALUES(37706, 'prorede', '2013-03-30 01:55:20', 1, 'izidro', 'Gobierno configuración: foro', 'gobierno');
INSERT INTO `log` VALUES(37707, 'prorede', '2013-03-30 02:39:25', 1, 'izidro', 'Gobierno configuración: foro', 'gobierno');
INSERT INTO `log` VALUES(37708, 'prorede', '2013-03-30 02:39:39', 1, 'izidro', 'Gobierno configuración: foro', 'gobierno');
INSERT INTO `log` VALUES(37709, 'prorede', '2013-03-30 02:43:23', 220515, 'teste', 'Votación: borrador creado <a href="/votacion/3446">#3446</a>', 'votacion');
INSERT INTO `log` VALUES(37710, 'prorede', '2013-03-30 02:44:35', 1, 'izidro', 'Votación: iniciada <a href="/votacion/3446">#3446</a>', 'votacion');
INSERT INTO `log` VALUES(37711, 'prorede', '2013-03-30 02:56:41', 1, 'izidro', 'Gobierno configuración: notificación creada (Teste)', 'gobierno');
INSERT INTO `log` VALUES(37712, 'prorede', '2013-03-30 02:58:36', 220515, 'teste', 'Candidatura retirada al cargo #6', 'examenes');
INSERT INTO `log` VALUES(37713, 'prorede', '2013-03-30 03:01:42', 1, 'izidro', 'Documento eliminado <a href="/doc/teste">#1506</a>', 'eliminar-documento');
INSERT INTO `log` VALUES(37714, 'prorede', '2013-03-30 04:36:29', 1, 'izidro', 'Gobierno configuración: privilegios', 'gobierno');
INSERT INTO `log` VALUES(37715, 'prorede', '2013-03-30 04:36:55', 1, 'izidro', 'Gobierno configuración: privilegios', 'gobierno');
INSERT INTO `log` VALUES(37716, 'prorede', '2013-03-30 04:38:36', 220515, 'teste', 'Votación: borrador creado <a href="/votacion/3447">#3447</a>', 'votacion');
INSERT INTO `log` VALUES(37717, 'prorede', '2013-03-30 04:38:45', 220515, 'teste', 'Votación: iniciada <a href="/votacion/3447">#3447</a>', 'votacion');
INSERT INTO `log` VALUES(37718, 'prorede', '2013-03-30 14:19:36', 1, 'izidro', 'Foro hilo eliminado #1', 'foro');
INSERT INTO `log` VALUES(37719, 'prorede', '2013-03-30 14:19:53', 1, 'izidro', 'Foro hilo eliminado #3', 'foro');
INSERT INTO `log` VALUES(37720, 'prorede', '2013-03-30 14:20:07', 1, 'izidro', 'Gobierno configuración: foro eliminado #2', 'gobierno');
INSERT INTO `log` VALUES(37721, 'prorede', '2013-03-30 14:20:10', 1, 'izidro', 'Gobierno configuración: foro', 'gobierno');
INSERT INTO `log` VALUES(37722, 'prorede', '2013-03-30 14:20:58', 220515, 'teste', 'Foro hilo eliminado #2', 'foro');
INSERT INTO `log` VALUES(37723, 'prorede', '2013-03-30 17:04:48', 220518, 'barretto', 'Foro mensaje editado #5', 'foro');
INSERT INTO `log` VALUES(37724, 'prorede', '2013-03-30 19:11:21', 1, 'izidro', 'Gobierno configuración: notificación eliminada #288475', 'gobierno');
INSERT INTO `log` VALUES(37725, 'prorede', '2013-03-30 20:22:21', 1, 'izidro', 'Foro <em>mensaje</em> enviado a la papelera por moderación #6/', 'foro');
INSERT INTO `log` VALUES(37726, 'prorede', '2013-03-30 20:22:33', 220514, 'Seiji', 'Foro mensaje editado #7', 'foro');
INSERT INTO `log` VALUES(37727, 'prorede', '2013-03-30 20:34:46', 220514, 'Seiji', 'Documento creado: <a href="/doc/planilha-planejamento">planilha Planejamento</a>', 'crear-documento');
INSERT INTO `log` VALUES(37728, 'prorede', '2013-03-30 21:09:34', 220514, 'Seiji', 'Foro mensaje editado #7', 'foro');
INSERT INTO `log` VALUES(37729, 'prorede', '2013-03-30 21:27:12', 1, 'izidro', 'Votación: cancelada <a href="/votacion/3445">#3445</a>', 'votacion');
INSERT INTO `log` VALUES(37730, 'prorede', '2013-03-30 21:31:58', 1, 'izidro', 'Votación: borrador creado <a href="/votacion/3448">#3448</a>', 'votacion');
INSERT INTO `log` VALUES(37731, 'prorede', '2013-03-30 21:34:06', 1, 'izidro', 'Votación: borrador creado <a href="/votacion/3449">#3449</a>', 'votacion');
INSERT INTO `log` VALUES(37732, 'prorede', '2013-03-30 21:34:30', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3448">#3448</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37733, 'prorede', '2013-03-30 21:35:00', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3448">#3448</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37734, 'prorede', '2013-03-30 21:35:19', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3449">#3449</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37735, 'prorede', '2013-03-30 21:37:37', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3448">#3448</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37736, 'prorede', '2013-03-30 21:38:19', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3448">#3448</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37737, 'PAIS', '2013-03-30 21:42:56', 220515, 'teste', 'Eliminación de usuario permanente y voluntaria.', 'borrar-usuario');
INSERT INTO `log` VALUES(37738, 'PAIS', '2013-03-30 21:43:50', 220516, 'testepr', 'Eliminación de usuario permanente y voluntaria.', 'borrar-usuario');
INSERT INTO `log` VALUES(37739, 'PAIS', '2013-03-30 21:44:27', 220517, 'vpol', 'Eliminación de usuario permanente y voluntaria.', 'borrar-usuario');
INSERT INTO `log` VALUES(37740, 'prorede', '2013-03-30 21:46:50', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3449">#3449</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37741, 'prorede', '2013-03-30 21:48:01', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3448">#3448</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37742, 'prorede', '2013-03-30 21:48:45', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3448">#3448</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37743, 'prorede', '2013-03-30 21:49:11', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3449">#3449</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37744, 'prorede', '2013-03-30 21:59:57', 220514, 'Seiji', 'Votación: iniciada <a href="/votacion/3449">#3449</a>', 'votacion');
INSERT INTO `log` VALUES(37745, 'prorede', '2013-03-30 22:00:27', 220514, 'Seiji', 'Votación: iniciada <a href="/votacion/3448">#3448</a>', 'votacion');
INSERT INTO `log` VALUES(37746, 'prorede', '2013-03-30 23:19:21', 1, 'izidro', 'Enlace editado #0', 'mercado');
INSERT INTO `log` VALUES(37747, 'prorede', '2013-03-30 23:20:44', 1, 'izidro', 'Enlace editado #0', 'mercado');
INSERT INTO `log` VALUES(37748, 'prorede', '2013-03-30 23:28:20', 1, 'izidro', 'Examen editado #441', 'examenes');
INSERT INTO `log` VALUES(37749, 'prorede', '2013-03-30 23:43:47', 1, 'izidro', 'Cargo Secretário asignado a @izidro por VirtualPol', 'cargo');
INSERT INTO `log` VALUES(37750, 'prorede', '2013-03-30 23:43:58', 1, 'izidro', 'Cargo  quitado a @izidro por @izidro', 'cargo');
INSERT INTO `log` VALUES(37751, 'prorede', '2013-03-31 19:56:15', 220514, 'Seiji', 'Cargo Secretário asignado a @Seiji por VirtualPol', 'cargo');
INSERT INTO `log` VALUES(37752, 'prorede', '2013-04-02 16:26:57', 220521, 'anarosa200', 'Foro mensaje editado #9', 'foro');
INSERT INTO `log` VALUES(37753, 'prorede', '2013-04-02 18:09:49', 1, 'izidro', 'Foro mensaje editado #11', 'foro');
INSERT INTO `log` VALUES(37754, 'prorede', '2013-04-03 02:32:58', 220514, 'Seiji', 'Documento eliminado <a href="/doc/planilha-planejamento">#1507</a>', 'eliminar-documento');
INSERT INTO `log` VALUES(37755, 'prorede', '2013-04-03 02:33:22', 220514, 'Seiji', 'Documento creado: <a href="/doc/comprovante-de-votacao-seiji">Comprovante de votação Seiji</a>', 'crear-documento');
INSERT INTO `log` VALUES(37756, 'prorede', '2013-04-04 03:08:09', 1, 'izidro', 'Gobierno configuración: notificación creada (Atenção para quem não votou! Faltam 2 dias! :-))', 'gobierno');
INSERT INTO `log` VALUES(37757, 'prorede', '2013-04-05 23:37:33', 220514, 'Seiji', 'Foro <em>mensaje</em> enviado a la papelera por moderación #7/', 'foro');
INSERT INTO `log` VALUES(37758, 'prorede', '2013-04-05 23:37:51', 220514, 'Seiji', 'Foro mensaje restaurado desde la papelera por moderación #6', 'foro');
INSERT INTO `log` VALUES(37759, 'prorede', '2013-04-05 23:38:51', 220514, 'Seiji', 'Foro <em>mensaje</em> enviado a la papelera por moderación #6/', 'foro');
INSERT INTO `log` VALUES(37760, 'prorede', '2013-04-05 23:39:07', 220514, 'Seiji', 'Foro mensaje eliminado #13', 'foro');
INSERT INTO `log` VALUES(37761, 'prorede', '2013-04-06 07:24:38', 220514, 'Seiji', 'Votación: borrador editado <a href="/votacion/3448">#3448</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37762, 'prorede', '2013-04-06 07:25:18', 220514, 'Seiji', 'Votación: borrador editado <a href="/votacion/3449">#3449</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37763, 'prorede', '2013-04-06 13:44:22', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3448">#3448</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37764, 'prorede', '2013-04-06 13:44:55', 1, 'izidro', 'Votación: borrador editado <a href="/votacion/3449">#3449</a> (referendum)', 'votacion');
INSERT INTO `log` VALUES(37765, 'prorede', '2013-04-06 13:45:11', 1, 'izidro', 'Votación: iniciada <a href="/votacion/3448">#3448</a>', 'votacion');
INSERT INTO `log` VALUES(37766, 'prorede', '2013-04-06 13:45:29', 1, 'izidro', 'Votación: iniciada <a href="/votacion/3449">#3449</a>', 'votacion');

-- --------------------------------------------------------

--
-- Table structure for table `mapa`
--

CREATE TABLE IF NOT EXISTS `mapa` (
  `ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `pos_x` tinyint(2) NOT NULL DEFAULT '1',
  `pos_y` tinyint(2) NOT NULL DEFAULT '1',
  `size_x` tinyint(2) NOT NULL DEFAULT '1',
  `size_y` tinyint(2) NOT NULL DEFAULT '1',
  `user_ID` mediumint(8) NOT NULL DEFAULT '1',
  `nick` varchar(255) DEFAULT NULL,
  `link` varchar(90) NOT NULL DEFAULT '',
  `text` varchar(90) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pols` mediumint(8) NOT NULL DEFAULT '0',
  `color` char(3) NOT NULL DEFAULT '',
  `estado` enum('p','v','e') NOT NULL DEFAULT 'p',
  `superficie` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `mapa`
--


-- --------------------------------------------------------

--
-- Table structure for table `mensajes`
--

CREATE TABLE IF NOT EXISTS `mensajes` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `envia_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recibe_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `leido` enum('0','1') NOT NULL DEFAULT '0',
  `cargo` smallint(5) NOT NULL DEFAULT '0',
  `recibe_masivo` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `envia_ID` (`envia_ID`),
  KEY `recibe_ID` (`recibe_ID`),
  KEY `leido` (`leido`),
  KEY `time` (`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=254922 ;

--
-- Dumping data for table `mensajes`
--

INSERT INTO `mensajes` VALUES(254901, 1, 220515, '2013-03-28 01:43:14', 'teste de mensagem', '1', 0, '');
INSERT INTO `mensajes` VALUES(254908, 220520, 1, '2013-03-31 21:53:14', 'Legal, Izidro! Consegui acessar aqui. <br />Pode deixar que não vou modificar nada sem te falar antes!<br />', '0', 0, '');
INSERT INTO `mensajes` VALUES(254903, 1, 220518, '2013-03-30 16:44:20', 'Bem-vindo ao nosso VirtualPol, Barretto!<br /><br />Abraços, Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254904, 1, 220514, '2013-03-30 23:46:13', 'Boa noite, Seiji. O cargo de Secretário foi criado! Para ser voluntário para esse cargo, basta: Democracia, Cargos, ser membro (Secretário).<br /><br />Abraços, Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254905, 1, 220514, '2013-03-30 23:47:43', 'P.S.: Quando clicar no &#34;ser membro&#34;, será realizado um &#34;exame&#34;... Basta responder Sim.', '0', 0, '');
INSERT INTO `mensajes` VALUES(254906, 220520, 1, '2013-03-31 20:47:08', 'Izidro, parece que ainda tem muito trabalho para fazer por aqui, posso ajudar?<br />Vejo que a tradução literal de cada termo gerou algumas coisas estranhas, uma revisão no Transifex ainda funcionaria?<br />E começo a estudar a parte gráfica, mas vai ser difícil trabalhar sem os arquivos que geram as páginas php, será que você poderia me disponibilizar esses?<br />Um abraço, e parabéns por ter conseguido!', '0', 0, '');
INSERT INTO `mensajes` VALUES(254909, 220521, 220523, '2013-04-02 15:57:58', 'Fradim, estou testando e estou gostando muito do progresso do nosso grupo.<br />Parabéns ', '0', 0, '');
INSERT INTO `mensajes` VALUES(254910, 220521, 220520, '2013-04-02 16:07:15', 'João Pedro,<br />Só experimentando navegar nesse ambiente.<br />Da rede para o mundo.<br />Abraços<br />Ana Rosa', '0', 0, '');
INSERT INTO `mensajes` VALUES(254911, 1, 220525, '2013-04-05 01:51:00', 'Olá! Vote para a escolha do domínio!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3449<br /><br />Abraços, Seiji e Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254912, 1, 220520, '2013-04-05 01:51:59', 'Olá! Vote para a escolha do domínio!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3449<br /><br />Abraços, Seiji e Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254913, 1, 220521, '2013-04-05 01:52:32', 'Olá! Vote para a escolha do domínio!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3449<br /><br />Abraços, Seiji e Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254914, 1, 220522, '2013-04-05 01:53:44', 'Olá! Vote para a escolha do domínio!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3449<br /><br />Abraços, Seiji e Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254915, 1, 220525, '2013-04-05 01:56:39', 'Olá! Vote também para a escolha do nome do projeto!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3448<br /><br />Abraços, Seiji e Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254916, 1, 220521, '2013-04-05 01:57:14', 'Olá! Vote também para a escolha do nome do projeto!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3448<br /><br />Abraços, Seiji e Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254917, 1, 220523, '2013-04-05 01:57:49', 'Olá! Vote também para a escolha do nome do projeto!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3448<br /><br />Abraços, Seiji e Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254918, 1, 220522, '2013-04-05 01:58:22', 'Olá! Vote também para a escolha do nome do projeto!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3448<br /><br />Abraços, Seiji e Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254919, 1, 220519, '2013-04-05 01:58:53', 'Olá! Vote também para a escolha do nome do projeto!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3448<br /><br />Abraços, Seiji e Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254920, 1, 220520, '2013-04-05 01:59:24', 'Olá! Vote também para a escolha do nome do projeto!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3448<br /><br />Abraços, Seiji e Izidro', '0', 0, '');
INSERT INTO `mensajes` VALUES(254921, 1, 220518, '2013-04-05 01:59:56', 'Olá! Vote também para a escolha do nome do projeto!<br /><br />http://prorede.virtualpol.vacau.com/votacion/3448<br /><br />Abraços, Seiji e Izidro', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mic_foros`
--

CREATE TABLE IF NOT EXISTS `mic_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(5) unsigned DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'ciudadanos',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos',
  `acceso_cfg_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`),
  KEY `time` (`time`),
  KEY `acceso_leer` (`acceso_leer`(333)),
  KEY `acceso_escribir` (`acceso_escribir`(333)),
  KEY `acceso_cfg_leer` (`acceso_cfg_leer`(333)),
  KEY `acceso_cfg_escribir` (`acceso_cfg_escribir`(333))
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `mic_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `mic_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `mic_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=447 ;

--
-- Dumping data for table `mic_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `mic_foros_msg`
--

CREATE TABLE IF NOT EXISTS `mic_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`),
  KEY `hilo_ID` (`hilo_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2297 ;

--
-- Dumping data for table `mic_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `notificaciones`
--

CREATE TABLE IF NOT EXISTS `notificaciones` (
  `noti_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `emisor` varchar(30) NOT NULL DEFAULT 'sistema',
  `visto` enum('true','false') NOT NULL DEFAULT 'false',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `texto` varchar(60) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`noti_ID`),
  KEY `time` (`time`),
  KEY `visto` (`visto`),
  KEY `user_ID` (`user_ID`),
  KEY `url` (`url`),
  KEY `texto` (`texto`),
  KEY `emisor` (`emisor`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=288528 ;

--
-- Dumping data for table `notificaciones`
--

INSERT INTO `notificaciones` VALUES(288467, '2013-03-11 00:16:35', 'sistema', 'false', 220513, 'Bienvenido!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288468, '2013-03-11 00:16:35', 'sistema', 'false', 220513, 'Sitúate en mapa de ciudadanos!', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288469, '2013-03-19 19:26:34', 'sistema', 'true', 220515, 'Bienvenido!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288470, '2013-03-19 19:26:34', 'sistema', 'true', 220515, 'Sitúate en mapa de ciudadanos!', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288471, '2013-03-27 20:43:14', 'sistema', 'true', 220515, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288472, '2013-03-27 20:44:16', 'sistema', 'true', 1, 'Mensaje privado de teste', '/msg');
INSERT INTO `notificaciones` VALUES(288473, '2013-03-27 23:09:33', 'sistema', 'true', 220516, 'Bienvenido!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288474, '2013-03-27 23:09:33', 'sistema', 'true', 220516, 'Sitúate en mapa de ciudadanos!', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288486, '2013-03-30 18:43:47', 'sistema', 'true', 1, 'Te ha sido asignado el cargo Secretário', '/cargos');
INSERT INTO `notificaciones` VALUES(288485, '2013-03-30 15:59:36', 'sistema', 'false', 220519, 'Localize-se no mapa de cidadãos', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288484, '2013-03-30 15:59:36', 'sistema', 'false', 220519, 'Bem-vindo!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288479, '2013-03-29 23:17:00', 'sistema', 'false', 220517, 'Bem-vindo!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288480, '2013-03-29 23:17:00', 'sistema', 'false', 220517, 'Localize-se no mapa de cidadãos', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288481, '2013-03-30 10:38:21', 'sistema', 'false', 220518, 'Bem-vindo!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288482, '2013-03-30 10:38:21', 'sistema', 'false', 220518, 'Localize-se no mapa de cidadãos', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288483, '2013-03-30 11:44:20', 'sistema', 'false', 220518, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288487, '2013-03-30 18:46:13', 'sistema', 'true', 220514, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288488, '2013-03-30 18:47:43', 'sistema', 'true', 220514, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288489, '2013-03-31 13:30:06', 'sistema', 'true', 220520, 'Bem-vindo!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288490, '2013-03-31 13:30:06', 'sistema', 'true', 220520, 'Localize-se no mapa de cidadãos', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288491, '2013-03-31 13:56:15', 'sistema', 'true', 220514, 'Te ha sido asignado el cargo Secretário', '/cargos');
INSERT INTO `notificaciones` VALUES(288492, '2013-03-31 14:47:08', 'sistema', 'true', 1, 'Mensaje privado de jptrrs', '/msg');
INSERT INTO `notificaciones` VALUES(288493, '2013-03-31 15:34:44', 'sistema', 'true', 220520, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288494, '2013-03-31 15:53:14', 'sistema', 'true', 1, 'Mensaje privado de jptrrs', '/msg');
INSERT INTO `notificaciones` VALUES(288495, '2013-04-01 19:53:54', 'sistema', 'true', 220521, 'Bem-vindo!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288496, '2013-04-01 19:53:54', 'sistema', 'true', 220521, 'Localize-se no mapa de cidadãos', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288497, '2013-04-01 19:55:45', 'sistema', 'false', 220522, 'Bem-vindo!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288498, '2013-04-01 19:55:45', 'sistema', 'false', 220522, 'Localize-se no mapa de cidadãos', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288499, '2013-04-01 22:06:00', 'sistema', 'true', 220523, 'Bem-vindo!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288500, '2013-04-01 22:06:00', 'sistema', 'true', 220523, 'Localize-se no mapa de cidadãos', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288501, '2013-04-02 09:57:58', 'sistema', 'false', 220523, 'Mensaje privado de anarosa200', '/msg');
INSERT INTO `notificaciones` VALUES(288502, '2013-04-02 10:07:15', 'sistema', 'false', 220520, 'Mensaje privado de anarosa200', '/msg');
INSERT INTO `notificaciones` VALUES(288503, '2013-04-02 10:26:42', 'sistema', 'false', 220524, 'Bem-vindo!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288504, '2013-04-02 10:26:42', 'sistema', 'true', 220524, 'Localize-se no mapa de cidadãos', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288505, '2013-04-02 10:45:05', 'sistema', 'false', 220525, 'Bem-vindo!', '/doc/bienvenida');
INSERT INTO `notificaciones` VALUES(288506, '2013-04-02 10:45:05', 'sistema', 'false', 220525, 'Localize-se no mapa de cidadãos', '/geolocalizacion');
INSERT INTO `notificaciones` VALUES(288507, '2013-04-03 21:08:09', 'prorede', 'true', 1, 'Atenção para quem não votou! Faltam 2 dias! :-)', '/votacion');
INSERT INTO `notificaciones` VALUES(288508, '2013-04-03 21:08:09', 'prorede', 'false', 220524, 'Atenção para quem não votou! Faltam 2 dias! :-)', '/votacion');
INSERT INTO `notificaciones` VALUES(288509, '2013-04-03 21:08:09', 'prorede', 'false', 220523, 'Atenção para quem não votou! Faltam 2 dias! :-)', '/votacion');
INSERT INTO `notificaciones` VALUES(288510, '2013-04-03 21:08:09', 'prorede', 'false', 220522, 'Atenção para quem não votou! Faltam 2 dias! :-)', '/votacion');
INSERT INTO `notificaciones` VALUES(288511, '2013-04-03 21:08:09', 'prorede', 'false', 220521, 'Atenção para quem não votou! Faltam 2 dias! :-)', '/votacion');
INSERT INTO `notificaciones` VALUES(288512, '2013-04-03 21:08:09', 'prorede', 'false', 220520, 'Atenção para quem não votou! Faltam 2 dias! :-)', '/votacion');
INSERT INTO `notificaciones` VALUES(288513, '2013-04-03 21:08:09', 'prorede', 'false', 220519, 'Atenção para quem não votou! Faltam 2 dias! :-)', '/votacion');
INSERT INTO `notificaciones` VALUES(288514, '2013-04-03 21:08:09', 'prorede', 'false', 220518, 'Atenção para quem não votou! Faltam 2 dias! :-)', '/votacion');
INSERT INTO `notificaciones` VALUES(288515, '2013-04-03 21:08:09', 'prorede', 'true', 220514, 'Atenção para quem não votou! Faltam 2 dias! :-)', '/votacion');
INSERT INTO `notificaciones` VALUES(288516, '2013-04-03 21:08:09', 'prorede', 'false', 220525, 'Atenção para quem não votou! Faltam 2 dias! :-)', '/votacion');
INSERT INTO `notificaciones` VALUES(288517, '2013-04-04 19:51:00', 'sistema', 'false', 220525, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288518, '2013-04-04 19:51:59', 'sistema', 'false', 220520, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288519, '2013-04-04 19:52:32', 'sistema', 'false', 220521, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288520, '2013-04-04 19:53:44', 'sistema', 'false', 220522, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288521, '2013-04-04 19:56:39', 'sistema', 'false', 220525, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288522, '2013-04-04 19:57:14', 'sistema', 'false', 220521, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288523, '2013-04-04 19:57:49', 'sistema', 'false', 220523, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288524, '2013-04-04 19:58:22', 'sistema', 'false', 220522, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288525, '2013-04-04 19:58:53', 'sistema', 'false', 220519, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288526, '2013-04-04 19:59:24', 'sistema', 'false', 220520, 'Mensaje privado de izidro', '/msg');
INSERT INTO `notificaciones` VALUES(288527, '2013-04-04 19:59:56', 'sistema', 'false', 220518, 'Mensaje privado de izidro', '/msg');

-- --------------------------------------------------------

--
-- Table structure for table `occupy_foros`
--

CREATE TABLE IF NOT EXISTS `occupy_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'ciudadanos',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos',
  `acceso_cfg_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `occupy_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `occupy_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `occupy_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `occupy_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `occupy_foros_msg`
--

CREATE TABLE IF NOT EXISTS `occupy_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `occupy_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `partidos`
--

CREATE TABLE IF NOT EXISTS `partidos` (
  `ID` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `ID_presidente` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fecha_creacion` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `siglas` varchar(20) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `estado` enum('ok') NOT NULL DEFAULT 'ok',
  `ID_old` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `pais` (`pais`),
  KEY `ID_presidente` (`ID_presidente`),
  KEY `siglas` (`siglas`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=135 ;

--
-- Dumping data for table `partidos`
--


-- --------------------------------------------------------

--
-- Table structure for table `partidos_listas`
--

CREATE TABLE IF NOT EXISTS `partidos_listas` (
  `ID` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `ID_partido` mediumint(8) DEFAULT '0',
  `user_ID` mediumint(9) unsigned DEFAULT '0',
  `orden` smallint(5) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ID_partido` (`ID_partido`),
  KEY `user_ID` (`user_ID`),
  KEY `orden` (`orden`),
  KEY `pais` (`pais`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `partidos_listas`
--


-- --------------------------------------------------------

--
-- Table structure for table `pcp_foros`
--

CREATE TABLE IF NOT EXISTS `pcp_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'ciudadanos',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos',
  `acceso_cfg_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `pcp_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `pcp_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `pcp_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `pcp_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `pcp_foros_msg`
--

CREATE TABLE IF NOT EXISTS `pcp_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=169 ;

--
-- Dumping data for table `pcp_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `pdi_foros`
--

CREATE TABLE IF NOT EXISTS `pdi_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'ciudadanos',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos',
  `acceso_cfg_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pdi_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `pdi_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `pdi_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pdi_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `pdi_foros_msg`
--

CREATE TABLE IF NOT EXISTS `pdi_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pdi_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `plataformas`
--

CREATE TABLE IF NOT EXISTS `plataformas` (
  `ID` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `estado` enum('pendiente','ok','no') DEFAULT 'pendiente',
  `pais` varchar(255) DEFAULT NULL,
  `asamblea` enum('true','false') DEFAULT 'false',
  `economia` enum('true','false') DEFAULT 'true',
  `user_ID` mediumint(8) unsigned DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `descripcion` text,
  `participacion` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `plataformas`
--

INSERT INTO `plataformas` VALUES(42, '', 'prorede', 'true', 'false', 1, '2013-03-23 20:18:41', 'teste', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plebiscito_foros`
--

CREATE TABLE IF NOT EXISTS `plebiscito_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `plebiscito_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `plebiscito_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `plebiscito_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `plebiscito_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `plebiscito_foros_msg`
--

CREATE TABLE IF NOT EXISTS `plebiscito_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `plebiscito_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `pol_foros`
--

CREATE TABLE IF NOT EXISTS `pol_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` varchar(255) DEFAULT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(255) NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(255) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_escribir_msg` varchar(255) DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(255) DEFAULT '',
  `limite` smallint(6) DEFAULT '10',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `pol_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `pol_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `pol_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` mediumint(9) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6185 ;

--
-- Dumping data for table `pol_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `pol_foros_msg`
--

CREATE TABLE IF NOT EXISTS `pol_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` mediumint(9) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57414 ;

--
-- Dumping data for table `pol_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `presid_foros`
--

CREATE TABLE IF NOT EXISTS `presid_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `presid_foros`
--

INSERT INTO `presid_foros` VALUES(1, NULL, 'general', 'General', '', 1, 1, 'ok', 0, 'anonimos', 'ciudadanos_global', 'ciudadanos_global', '', '', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `presid_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `presid_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `presid_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `presid_foros_msg`
--

CREATE TABLE IF NOT EXISTS `presid_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `presid_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `prorede_foros`
--

CREATE TABLE IF NOT EXISTS `prorede_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `prorede_foros`
--

INSERT INTO `prorede_foros` VALUES(1, 2, 'geral', 'Geral', '', 1, 1, 'ok', 0, 'anonimos', 'ciudadanos', 'ciudadanos_global', '', '', '', 10);
INSERT INTO `prorede_foros` VALUES(2, NULL, 'teste', 'Teste', '', 1, 10, 'eliminado', 0, 'grupos', 'grupos', 'grupos', '342', '342', '342', 8);

-- --------------------------------------------------------

--
-- Table structure for table `prorede_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `prorede_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `prorede_foros_hilos`
--

INSERT INTO `prorede_foros_hilos` VALUES(5, 1, 'modificacoes-ainda-necessarias', 220520, 'Modificações ainda necessárias.', '2013-03-31 22:04:48', '2013-04-02 18:09:11', 'Pessoal, <br />Como este portal está em estágio experimental, precisamos de nos organizar para rastrear e corrigir as falhas, bem como os aprimoramentos que venham a ser necessários. Estou abrindo este tópico para irmos listando sugestões do que precisa ser melhorado.', 0, 2, 'ok', 1, 1);
INSERT INTO `prorede_foros_hilos` VALUES(4, 1, 'qual-e-o-nome-do-projeto', 1, 'Qual é o nome do projeto?', '2013-03-30 14:19:13', '2013-04-18 19:05:54', 'Sugestão do Seiji: testar a função de debate do VirtualPol para fechar o nome do projeto.', 0, 6, 'ok', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `prorede_foros_msg`
--

CREATE TABLE IF NOT EXISTS `prorede_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `prorede_foros_msg`
--

INSERT INTO `prorede_foros_msg` VALUES(6, 4, 1, '2013-03-30 17:05:21', '[quote=barretto] A minha sugestão ao nome do projeto = pro#rede. (barretto) [/quote]<br /><br />Concordo! :-)', 0, 'borrado', '2013-04-05 23:38:51', 0, 0);
INSERT INTO `prorede_foros_msg` VALUES(5, 4, 220518, '2013-03-30 17:03:51', 'A minha sugestão ao nome do projeto = pro#rede. (barretto)', 0, 'ok', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `prorede_foros_msg` VALUES(7, 4, 220514, '2013-03-30 20:20:41', 'Domínio/Nome do Portal = www.nosdarede.com.br / ou .org.br <br /><br />Nome do Projeto = A Democracia que Queremos <br /><br />(Seiji)', 0, 'borrado', '2013-04-05 23:37:33', 1, 1);
INSERT INTO `prorede_foros_msg` VALUES(8, 4, 220519, '2013-03-30 21:05:12', 'Nome do domínio: www.portaldarede.org.br<br /><br />Nome do grupo, nome do projeto, nome da campanha: Rede de todos nós', 0, 'ok', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `prorede_foros_msg` VALUES(9, 5, 220521, '2013-04-02 16:25:14', 'Talvez devesse existir um tutorial ou alguma coisa mais clara, com setas  que indicasse o &#34;caminho&#34;, para que as pessoas se sintam mais confiantes ao votar ou realizar outras tarefas. ', 0, 'ok', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `prorede_foros_msg` VALUES(10, 4, 220521, '2013-04-02 16:32:00', 'Nome do Projeto: Democracia em rede.<br />Domínio/Nome do Portal: www.portaldarede.org.br / ou net', 0, 'ok', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `prorede_foros_msg` VALUES(11, 5, 1, '2013-04-02 18:09:11', 'Principais itens que ainda não estão funcionando: eleições e edição de documentos. E ainda há termos em espanhol no código fonte que precisam ser ajustados para permitir a tradução.', 0, 'ok', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `prorede_foros_msg` VALUES(12, 4, 220525, '2013-04-05 21:39:58', 'Minhas sugestões:<br /><br />Projeto: #redemocracia<br /><br />Campanha: A rede que queremos, a democracia que precisamos!<br /><br />Domínio: www.redemocratica.com.br - www.redemocracia.com.br - www.nosdarede.com.br (ou ainda melhor ser for .org.br)<br />', 0, 'ok', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `prorede_foros_msg` VALUES(14, 4, 220514, '2013-04-05 23:44:07', 'REDEMOCRÁTICAS = REDE + DEMOCRACIA + ÉTICA + SUSTENTABILIDADE<br /><br />Nome do Projeto = REDEMOCRÁTICAS<br /><br />Domínio = www.redemocraticas.com.br ou .org.br', 0, 'ok', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `prorede_foros_msg` VALUES(15, 4, 220525, '2013-04-18 19:05:54', 'Amigos,<br /><br />Não queria induzir nada, mas conversando com a Ana Rosa ela insistitu para que eu os informasse que o domínio ( www.redemocratica.com.br ) está registrado em meu nome pelos próximos 2 anos, o que poderia facilitar o processo (embora eu acredite que isso seria induzir o processo... rsrs)<br /><br />Abraço Fraterno,<br />Amilcar Faria.', 0, 'ok', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pujas`
--

CREATE TABLE IF NOT EXISTS `pujas` (
  `ID` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `mercado_ID` smallint(5) DEFAULT NULL,
  `user_ID` mediumint(9) unsigned DEFAULT NULL,
  `pols` mediumint(8) unsigned DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `pais` (`pais`),
  KEY `mercado_ID` (`mercado_ID`),
  KEY `user_ID` (`user_ID`),
  KEY `time` (`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=660 ;

--
-- Dumping data for table `pujas`
--


-- --------------------------------------------------------

--
-- Table structure for table `referencias`
--

CREATE TABLE IF NOT EXISTS `referencias` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `IP` varchar(10) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `pagado` enum('0','1') NOT NULL DEFAULT '0',
  `new_user_ID` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IP` (`IP`),
  KEY `user_ID` (`user_ID`),
  KEY `pagado` (`pagado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9907 ;

--
-- Dumping data for table `referencias`
--


-- --------------------------------------------------------

--
-- Table structure for table `socios`
--

CREATE TABLE IF NOT EXISTS `socios` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `time_last` datetime DEFAULT NULL,
  `estado` varchar(255) DEFAULT 'inscrito',
  `pais` varchar(255) DEFAULT NULL,
  `socio_ID` int(11) unsigned DEFAULT NULL,
  `user_ID` int(11) unsigned DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `NIF` varchar(255) DEFAULT NULL,
  `pais_politico` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `cp` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `contacto_email` varchar(255) DEFAULT NULL,
  `contacto_telefono` varchar(255) DEFAULT NULL,
  `validador_ID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `time` (`time`),
  KEY `time_last` (`time_last`),
  KEY `pais` (`pais`),
  KEY `estado` (`estado`),
  KEY `socio_ID` (`socio_ID`),
  KEY `user_ID` (`user_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `socios`
--


-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE IF NOT EXISTS `stats` (
  `stats_ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ciudadanos` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nuevos` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pols` int(10) NOT NULL DEFAULT '0',
  `pols_cuentas` int(10) NOT NULL DEFAULT '0',
  `transacciones` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hilos_msg` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pols_gobierno` int(10) NOT NULL DEFAULT '0',
  `partidos` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frase` smallint(5) unsigned NOT NULL DEFAULT '0',
  `empresas` smallint(5) unsigned NOT NULL DEFAULT '0',
  `eliminados` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mapa` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mapa_vende` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `24h` smallint(5) unsigned NOT NULL DEFAULT '0',
  `confianza` smallint(5) DEFAULT '0',
  `autentificados` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`stats_ID`),
  KEY `time` (`time`),
  KEY `pais` (`pais`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4998 ;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` VALUES(4995, 'teste', '2013-03-17 20:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `stats` VALUES(4996, 'prorede', '2013-03-23 20:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `stats` VALUES(4997, 'Presid', '2013-03-28 20:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teste_foros`
--

CREATE TABLE IF NOT EXISTS `teste_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(6) unsigned DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_cfg_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `teste_foros`
--

INSERT INTO `teste_foros` VALUES(1, NULL, 'general', 'General', '', 1, 1, 'ok', 0, 'anonimos', 'ciudadanos_global', 'ciudadanos_global', '', '', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `teste_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `teste_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `teste_foros_hilos`
--

INSERT INTO `teste_foros_hilos` VALUES(1, 1, 'teste', 220515, 'Teste', '2013-03-20 00:39:40', '2013-03-20 00:57:40', 'teste', 0, 2, 'ok', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teste_foros_msg`
--

CREATE TABLE IF NOT EXISTS `teste_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  `votos_num` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `teste_foros_msg`
--

INSERT INTO `teste_foros_msg` VALUES(1, 1, 220515, '2013-03-20 00:40:00', 'Outro teste', 0, 'ok', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `teste_foros_msg` VALUES(2, 1, 220515, '2013-03-20 00:57:40', 'Mais um teste', 0, 'ok', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transacciones`
--

CREATE TABLE IF NOT EXISTS `transacciones` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `pols` int(10) NOT NULL DEFAULT '0',
  `emisor_ID` mediumint(8) NOT NULL DEFAULT '0',
  `receptor_ID` mediumint(8) NOT NULL DEFAULT '0',
  `concepto` varchar(90) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `emisor_ID` (`emisor_ID`),
  KEY `receptor_ID` (`receptor_ID`),
  KEY `time` (`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80492 ;

--
-- Dumping data for table `transacciones`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nick` varchar(18) NOT NULL DEFAULT '',
  `lang` varchar(5) DEFAULT NULL,
  `pais` varchar(30) DEFAULT NULL,
  `estado` enum('turista','ciudadano','expulsado','validar') NOT NULL DEFAULT 'validar',
  `nivel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cargos` varchar(400) NOT NULL DEFAULT '',
  `grupos` varchar(400) NOT NULL DEFAULT '',
  `examenes` varchar(400) NOT NULL DEFAULT '',
  `voto_confianza` smallint(5) NOT NULL DEFAULT '0',
  `confianza_historico` text NOT NULL,
  `partido_afiliado` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `online` int(10) unsigned NOT NULL DEFAULT '0',
  `visitas` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `paginas` int(10) unsigned NOT NULL DEFAULT '0',
  `pols` int(10) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `fecha_registro` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fecha_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fecha_init` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rechazo_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fecha_legal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nickchange_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pass` varchar(255) NOT NULL DEFAULT '',
  `pass2` varchar(255) NOT NULL DEFAULT '',
  `api_pass` varchar(16) NOT NULL DEFAULT '0',
  `api_num` smallint(5) NOT NULL DEFAULT '0',
  `num_elec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SC` enum('true','false') NOT NULL DEFAULT 'false',
  `ser_SC` enum('true','false') NOT NULL DEFAULT 'false',
  `nota` decimal(3,1) NOT NULL DEFAULT '0.0',
  `donacion` mediumint(9) unsigned DEFAULT NULL,
  `avatar` enum('true','false') NOT NULL DEFAULT 'false',
  `IP` varchar(12) NOT NULL DEFAULT '0',
  `host` varchar(150) NOT NULL,
  `hosts` text,
  `IP_proxy` varchar(150) NOT NULL,
  `text` varchar(2300) NOT NULL DEFAULT '',
  `nav` varchar(500) NOT NULL,
  `avatar_localdir` varchar(100) NOT NULL,
  `x` decimal(10,2) DEFAULT NULL,
  `y` decimal(10,2) DEFAULT NULL,
  `socio` enum('true','false') NOT NULL DEFAULT 'false',
  `dnie` enum('true','false') DEFAULT 'false',
  `dnie_check` varchar(400) DEFAULT NULL,
  `ref` varchar(25) NOT NULL DEFAULT '',
  `ref_num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bando` varchar(255) DEFAULT NULL,
  `nota_SC` varchar(500) NOT NULL DEFAULT '',
  `traza` varchar(600) NOT NULL DEFAULT '',
  `datos` varchar(9999) NOT NULL DEFAULT '',
  `nombre` varchar(255) DEFAULT NULL,
  `temp` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `nick` (`nick`),
  KEY `pais` (`pais`),
  KEY `fecha_last` (`fecha_last`),
  KEY `estado` (`estado`),
  KEY `voto_confianza` (`voto_confianza`),
  KEY `IP` (`IP`),
  KEY `pass` (`pass`),
  KEY `cargo` (`cargo`),
  KEY `grupos` (`grupos`(333)),
  KEY `cargos` (`cargos`(333)),
  KEY `examenes` (`examenes`(333)),
  KEY `x` (`x`),
  KEY `y` (`y`),
  KEY `lang` (`lang`),
  KEY `nivel` (`nivel`),
  KEY `fecha_registro` (`fecha_registro`),
  KEY `paginas` (`paginas`),
  KEY `dnie` (`dnie`),
  KEY `temp` (`temp`),
  KEY `socio` (`socio`),
  KEY `SC` (`SC`),
  KEY `nota_SC` (`nota_SC`(333))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=220526 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'izidro', 'pt_BR', 'prorede', 'ciudadano', 100, 6, '6', '343', '', 0, '0', 0, 128245, 92, 1677, 0, 'izidro.queiroz@globo.com', '2013-03-11 05:14:36', '2013-04-23 22:04:22', '2013-04-23 22:01:35', '2013-03-28 01:40:59', '2013-03-11 05:14:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '08c89441050be183d80a5c0c0fb1e3dc', '5cd702fe0bc32a02cfa540bc97fa4918700d08c870b41281314178092632b576', 'f71f31f5a6d9', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3173026886', 'bd04cd44.virtua.com.br', NULL, '', 'Analista de sistemas, funcionário do BNDES, morador do Rio.', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7', '', -43.29, -22.94, 'false', 'false', NULL, '0', 0, NULL, '', '', '][https://mobile.twitter.com/izidroqueiroz][https://www.facebook.com/izidro.queiroz][https://plus.google.com/u/0/110190589650047867769/posts][][', 'Izidro Queiroz', NULL);
INSERT INTO `users` VALUES(220514, 'Seiji', NULL, 'prorede', 'ciudadano', 5, 36, '36', '343', '437 438', 0, '0', 0, 78413, 40, 525, 0, 'seijifujita@gmail.com', '2013-03-11 10:23:28', '2013-04-16 04:07:15', '2013-04-16 04:07:07', '0000-00-00 00:00:00', '2013-03-11 10:23:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6c010c3879861bf2b4ade71126e4753f', '5c656d8907180facb8020311d9415699575b21cfa10ba3ea38775798cca6d52f', 'e69ad36e4b80', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3179051453', '189.124.121.189', NULL, '', 'Natural de Guarulho/SP.<br />Residente em Criciúma/SC desde 1995.', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', '', -49.38, -28.68, 'false', 'false', NULL, '0', 0, NULL, '', '', '][][http://www.facebook.com/seiji.fujita.169][][][', 'Seiji', NULL);
INSERT INTO `users` VALUES(220515, 'teste', 'pt_BR', 'prorede', 'expulsado', 1, 0, '', '341 342', '438', 0, '0', 0, 21771, 24, 467, 0, 'izidro.queiroz@gmail.com', '2013-03-20 00:23:01', '2013-03-30 21:42:35', '2013-03-30 21:42:28', '2013-03-23 20:25:50', '2013-03-20 00:23:01', '2013-03-26 13:05:27', '0000-00-00 00:00:00', '80bb5af39cbeec8c7464c71695a08e97', '61f4aceeb62e8e667f5ec02730944f06ca83fbf768405188f4be1bc81b2a352b', '1175208', 0, 0, 'false', 'true', 0.0, NULL, 'false', '3171208516', 'bd04cd44.virtua.com.br', NULL, '', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', '', -43.00, -23.00, 'false', 'false', NULL, '0', 0, NULL, 'Comparte con: izidro', '', '', 'Izidro Queiroz', NULL);
INSERT INTO `users` VALUES(220516, 'testepr', 'pt_BR', 'prorede', 'expulsado', 1, 0, '', '', '', 0, '0', 0, 1009, 12, 123, 0, 'rede@virtualpol.vacau.com', '2013-03-28 04:09:11', '2013-03-30 02:48:28', '2013-03-30 02:46:17', '0000-00-00 00:00:00', '2013-03-28 04:09:11', '2013-03-29 16:02:09', '0000-00-00 00:00:00', '08c89441050be183d80a5c0c0fb1e3dc', '5cd702fe0bc32a02cfa540bc97fa4918700d08c870b41281314178092632b576', '2345436', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3171208516', 'bd04cd44.virtua.com.br', NULL, '', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', '', -36.00, -7.00, 'false', 'false', NULL, '0', 0, NULL, 'Comparte con: izidro', '', '', NULL, NULL);
INSERT INTO `users` VALUES(220517, 'vpol', NULL, 'prorede', 'expulsado', 1, 0, '', '', '', 0, '0', 0, 886, 4, 24, 0, 'virtualpol@redeecobrasil.com', '2013-03-30 04:13:34', '2013-03-30 14:17:25', '2013-03-30 14:05:59', '0000-00-00 00:00:00', '2013-03-30 04:13:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '08c89441050be183d80a5c0c0fb1e3dc', '5cd702fe0bc32a02cfa540bc97fa4918700d08c870b41281314178092632b576', '2983972e583e', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3171208516', 'bd04cd44.virtua.com.br', NULL, '', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', '', NULL, NULL, 'false', 'false', NULL, '0', 0, NULL, 'Comparte con: izidro', '', '', NULL, NULL);
INSERT INTO `users` VALUES(220518, 'barretto', 'pt_BR', 'prorede', 'ciudadano', 1, 0, '', '', '', 0, '0', 0, 1589, 4, 33, 0, 'pereirabarreto@hotmail.com', '2013-03-30 11:17:51', '2013-03-31 18:10:53', '2013-03-31 17:51:07', '0000-00-00 00:00:00', '2013-03-30 11:17:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '010e5820c2b852bb318b320543546c6e', 'b1e85374c4e41cc6ffb87764555ec8e489dff6b5391c1e73d8f65c3a7155b3f2', '403229984b42', 0, 0, 'false', 'false', 0.0, NULL, 'false', '2972872550', '179-173-170-132.user.vivozap.com.br', NULL, '', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', '', -35.00, -6.00, 'false', 'false', NULL, '0', 0, NULL, '', '', '', NULL, NULL);
INSERT INTO `users` VALUES(220519, 'Ruben_Bauer', NULL, 'prorede', 'ciudadano', 1, 0, '', '', '', 0, '0', 0, 450, 3, 34, 0, 'ruben.bauer@globo.com', '2013-03-30 20:56:57', '2013-04-05 02:54:46', '2013-04-01 16:09:20', '0000-00-00 00:00:00', '2013-03-30 20:56:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'f55cd04c70b30460d59d45b017708eea', '0fb2c038b2915f86e329a9e0b5639635b03638ccd1b84ed3e4460707041b9126', 'f30d5acddf04', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3178892325', 'mlsrj200152099p093.mls.com.br', NULL, '', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E)', '', NULL, NULL, 'false', 'false', NULL, '0', 0, NULL, '', '', '', NULL, NULL);
INSERT INTO `users` VALUES(220520, 'jptrrs', NULL, 'prorede', 'ciudadano', 1, 0, '', '', '', 0, '0', 0, 7232, 3, 112, 0, 'jaopedro@gmail.com', '2013-03-31 19:06:27', '2013-04-13 23:49:31', '2013-04-13 22:38:39', '0000-00-00 00:00:00', '2013-03-31 19:06:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '92c29c1ac4d85b45639f741599c24cd7', '0e228ff51e4b9faad11148c4ab1ede93fc339a628653241fc10f05f6c2a2018c', '09ceeebb1a4c', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3134543672', '74.160.125.189.static.impsat.net.br', NULL, '', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', '', -43.00, -19.00, 'false', 'false', NULL, '0', 0, NULL, '', '', '][https://twitter.com/jptrrs][http://www.facebook.com/jptrrs][https://plus.google.com/u/0/111114634728780745050/posts/p/pub][][', 'João Pedro Torres', NULL);
INSERT INTO `users` VALUES(220521, 'anarosa200', NULL, 'prorede', 'ciudadano', 1, 0, '', '345', '', 0, '0', 0, 6989, 6, 256, 0, 'anarosa200@gmail.com', '2013-03-31 20:35:37', '2013-04-07 04:15:51', '2013-04-07 04:08:51', '0000-00-00 00:00:00', '2013-03-31 20:35:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '790c82bbcfde722ddcda66f0b2030792', '1f2f7808fe6b9f30270c548067dad4532dc3f0c277c853cb5b1033acc132c0f1', '13bc4009d06a', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3171313332', 'bd0666b4.virtua.com.br', NULL, '', 'Nascida no interior do Maranhão, na cidade de Bacabal, filha de José Everton de Abreu e Rosanilde Carvalho de Abreu. Advogada, Administradora e Economista trabalha no Banco Central do Brasil e gosta de animais de estimação. Tem um filho de nome Rodrigo.', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)', '', -47.00, -15.00, 'false', 'false', NULL, '0', 0, NULL, 'Comparte con: anarosa200', '', 'http://anarosa200.blogspot.com][http://anarosa200][https://www.facebook.com/anarosa200][][][', 'Ana Rosa Carvalho de Abreu', NULL);
INSERT INTO `users` VALUES(220522, 'Yuri', NULL, 'prorede', 'ciudadano', 1, 0, '', '', '', 0, '0', 0, 0, 1, 13, 0, 'camarabatista@gmail.com', '2013-04-02 01:27:51', '2013-04-02 01:33:34', '2013-04-02 01:32:13', '0000-00-00 00:00:00', '2013-04-02 01:27:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'e8b9b41532cf0ec59c77575da48445cb', 'ab9221a384cb4931bbb96568de7e285834d68d736c9c606b4e14cc19a0dae611', '90a239a09688', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3375646835', 'bd04cd44.virtua.com.br', NULL, '', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', '', NULL, NULL, 'false', 'false', NULL, '0', 0, NULL, '', '', '', NULL, NULL);
INSERT INTO `users` VALUES(220523, 'fradim', NULL, 'prorede', 'ciudadano', 1, 0, '', '', '', 0, '0', 0, 0, 1, 15, 0, 'fradim@gmail.com', '2013-04-02 04:05:41', '2013-04-02 04:09:14', '2013-04-02 04:06:18', '0000-00-00 00:00:00', '2013-04-02 04:05:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1582675112feaa62511f0ec345a19e47', 'bc04d5b08312a9eb3c9941bce6f3fb15ba20376b58a30d030f270eb005e40a9c', '3eb51336b626', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3138851536', 'bb1712d0.virtua.com.br', NULL, '', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', '', -47.00, -20.00, 'false', 'false', NULL, '0', 0, NULL, '', '', '', NULL, NULL);
INSERT INTO `users` VALUES(220524, 'Fabiano_Rocha', NULL, 'prorede', 'ciudadano', 1, 0, '', '', '', 0, '0', 0, 9, 2, 18, 0, 'f78rocha@gmail.com', '2013-04-02 15:02:22', '2013-04-02 18:54:29', '2013-04-02 18:47:27', '0000-00-00 00:00:00', '2013-04-02 15:02:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '82b2dd0f1e080ac04d9856435bc846a0', '6662d7ae77c6bb6e7941d8c9f1dda09d1e11ae8451e7f872df29e2a5220f5874', '7f933338e110', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3171488888', '189.9.20.120', NULL, '171469093', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', '', -47.00, -15.00, 'false', 'false', NULL, '0', 0, NULL, '', '', '', NULL, NULL);
INSERT INTO `users` VALUES(220525, 'AmilcarFaria', 'pt_BR', 'prorede', 'ciudadano', 1, 0, '', '343 344 345', '', 0, '0', 0, 38753, 6, 84, 0, 'amilcarfaria@ig.com.br', '2013-04-02 16:37:39', '2013-04-18 19:05:55', '2013-04-18 19:01:41', '0000-00-00 00:00:00', '2013-04-02 16:37:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'eca47b9e9b053e0a48ee0c5ee2df4e15', 'a7b3e8970664bb5bb9867334c779461ab0480e34fec7a913f66859d0a2d0cad5', '6015c38dea5e', 0, 0, 'false', 'false', 0.0, NULL, 'false', '3369783310', '200-218-213-80.bcb.gov.br', NULL, '', 'Bacharel em Ciência da Computação (UFMG), pós-graduado em Informática e Educação e em Administração de Sistemas de Informação (UFLA), é servidor público federal e diretor de Programas de Controle Social do Instituto de Fiscalização e Controle (IFC), entidade que ele representa no Movimento de Combate à Corrupção Eleitoral (MCCE). É oficial da Reserva da Marinha (3a, RJ), atuou como: professor de matemática, física, ciências e informática (15a, Betim-MG); Técnico em Eletrônica (formado pelo CEFET-MG e pelo SENAI-MG); Controlador de Tráfego Aéreo (Infraero, 4a, Pampulha-MG); Auxiliar Técnico de Biblioteca (4a, Betim-MG); Taxista (2a, autônomo); Analista de Desenvolvimento de Sistemas na PGJ-MG (4a); ', 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0', '', -47.00, -15.00, 'false', 'false', NULL, '0', 0, NULL, '', '', 'http://amilcarfaria.blogspot.com.br/][https://twitter.com/AmilcarFaria][https://www.facebook.com/amilcar.faria.5][][][', 'Amilcar Faria', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_con`
--

CREATE TABLE IF NOT EXISTS `users_con` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `tipo` enum('session','login') DEFAULT 'login',
  `user_ID` mediumint(8) unsigned DEFAULT NULL,
  `IP` int(11) unsigned DEFAULT NULL,
  `IP_rango` varchar(255) DEFAULT NULL,
  `IP_rango3` varchar(20) DEFAULT NULL,
  `IP_pais` varchar(2) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `ISP` varchar(255) DEFAULT NULL,
  `proxy` varchar(255) DEFAULT NULL,
  `login_seg` smallint(5) unsigned DEFAULT NULL,
  `login_ms` smallint(5) unsigned DEFAULT NULL,
  `dispositivo` bigint(20) unsigned DEFAULT NULL,
  `nav_resolucion` varchar(255) DEFAULT NULL,
  `nav` varchar(500) DEFAULT NULL,
  `nav_so` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_ID` (`user_ID`),
  KEY `time` (`time`),
  KEY `tipo` (`tipo`),
  KEY `IP` (`IP`),
  KEY `dispositivo` (`dispositivo`),
  KEY `ISP` (`ISP`),
  KEY `host` (`host`),
  KEY `nav_resolucion` (`nav_resolucion`),
  KEY `nav` (`nav`(333)),
  KEY `nav_so` (`nav_so`),
  KEY `IP_pais` (`IP_pais`),
  KEY `IP_rango` (`IP_rango`),
  KEY `proxy` (`proxy`),
  KEY `IP_rango3` (`IP_rango3`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=263678 ;

--
-- Dumping data for table `users_con`
--

INSERT INTO `users_con` VALUES(263143, '2013-03-11 05:12:05', 'login', 220512, 3173026886, '189.32', '189.32.140', 'BR', 'bd208c46.virtua.com.br', 'Virtua BR', '', 38, 397, 13629751257400, '1920x1080 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263144, '2013-03-11 05:14:37', 'login', 220513, 3173026886, '189.32', '189.32.140', 'BR', 'bd208c46.virtua.com.br', 'Virtua BR', '', 107, 456, 13629751257400, '1920x1080 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263145, '2013-03-11 05:16:35', 'login', 220513, 3173026886, '189.32', '189.32.140', 'BR', 'bd208c46.virtua.com.br', 'Virtua BR', '', 0, 249, NULL, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263146, '2013-03-11 05:17:24', 'login', 220513, 3173026886, '189.32', '189.32.140', 'BR', 'bd208c46.virtua.com.br', 'Virtua BR', '', 12, 25, 13629751257400, '1920x1080 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263147, '2013-03-11 10:23:29', 'login', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 115, 1398, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263148, '2013-03-17 01:13:43', 'login', 220513, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 888, NULL, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263149, '2013-03-17 01:18:39', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 577, NULL, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263150, '2013-03-17 01:23:27', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 10, 615, NULL, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263151, '2013-03-20 00:17:42', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 754, NULL, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263152, '2013-03-20 00:23:02', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 91, 977, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263153, '2013-03-20 00:26:35', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 422, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263154, '2013-03-20 00:32:25', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 22, 1081, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263156, '2013-03-20 00:34:51', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 45, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263157, '2013-03-20 01:06:41', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 15, 935, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263159, '2013-03-20 01:07:27', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263160, '2013-03-23 18:43:52', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 643, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263162, '2013-03-23 18:45:11', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263163, '2013-03-23 19:01:59', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 448, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263164, '2013-03-23 19:20:28', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 14, 565, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263166, '2013-03-23 19:22:09', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263167, '2013-03-23 20:17:30', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 448, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263168, '2013-03-23 20:20:19', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 6, 679, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263169, '2013-03-23 20:20:48', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 18, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263170, '2013-03-23 20:25:20', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 6, 856, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263172, '2013-03-23 20:27:43', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 19, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263173, '2013-03-23 21:00:38', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 10, 463, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263175, '2013-03-23 21:01:05', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 13, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263176, '2013-03-24 00:33:34', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 741, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263177, '2013-03-26 12:56:55', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 759, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263179, '2013-03-26 12:57:35', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 10, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263180, '2013-03-26 13:01:36', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 14, 843, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263182, '2013-03-26 13:02:25', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 136, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263183, '2013-03-26 13:06:01', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 537, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263185, '2013-03-26 13:06:39', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263186, '2013-03-26 23:13:48', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 1398, NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br', ' ', NULL);
INSERT INTO `users_con` VALUES(263187, '2013-03-27 00:30:51', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 6, 595, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263189, '2013-03-27 00:31:25', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 95, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263190, '2013-03-28 01:24:00', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 742, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263192, '2013-03-28 01:24:31', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263193, '2013-03-28 01:40:24', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 934, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263195, '2013-03-28 01:40:39', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 13, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263197, '2013-03-28 01:41:07', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263198, '2013-03-28 01:43:41', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 682, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263200, '2013-03-28 01:43:53', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263201, '2013-03-28 01:44:41', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 7, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263203, '2013-03-28 01:44:52', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 13, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263204, '2013-03-28 02:02:23', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 704, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8 | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263205, '2013-03-28 02:04:18', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 6, 556, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8 | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263206, '2013-03-28 02:05:52', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 880, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8 | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263208, '2013-03-28 02:06:17', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 12, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8 | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263209, '2013-03-28 02:53:48', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 1353, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8 | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263211, '2013-03-28 02:54:01', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8 | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263212, '2013-03-28 03:47:31', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 12, 659, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8 | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263214, '2013-03-28 03:47:43', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 12, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8 | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263215, '2013-03-28 03:56:57', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 638, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8 | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263216, '2013-03-28 04:09:11', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 86, 678, 1, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8 | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263217, '2013-03-28 04:09:34', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br', ' ', NULL);
INSERT INTO `users_con` VALUES(263219, '2013-03-28 04:09:54', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 13, NULL, '1920x1080 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10 | pt-br | 1920x1080 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263220, '2013-03-29 13:11:49', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 45, 832, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263222, '2013-03-29 13:12:31', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 22, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263223, '2013-03-29 13:18:37', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 888, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263225, '2013-03-29 13:18:52', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 14, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263226, '2013-03-29 13:19:48', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 282, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263228, '2013-03-29 13:20:01', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 109, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263229, '2013-03-29 13:29:36', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 621, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263231, '2013-03-29 13:29:48', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263232, '2013-03-29 13:39:58', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 846, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263234, '2013-03-29 13:40:10', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263235, '2013-03-29 13:43:34', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 940, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263237, '2013-03-29 13:43:46', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 23, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263238, '2013-03-29 13:55:45', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 785, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263240, '2013-03-29 13:55:57', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 15, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263241, '2013-03-29 15:56:23', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 724, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263243, '2013-03-29 15:56:36', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 10, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263244, '2013-03-29 16:02:24', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 533, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263245, '2013-03-29 16:02:42', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 13, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263246, '2013-03-29 16:02:54', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 28, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263247, '2013-03-29 16:05:15', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 896, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263248, '2013-03-29 16:05:27', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 23, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263249, '2013-03-29 16:06:23', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 11, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263250, '2013-03-29 16:07:37', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 546, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263251, '2013-03-29 16:11:29', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 418, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263253, '2013-03-29 16:11:44', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263254, '2013-03-29 16:13:11', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 10, 533, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263256, '2013-03-29 16:13:24', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263257, '2013-03-29 16:15:07', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 995, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263259, '2013-03-29 16:15:22', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 13, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263260, '2013-03-29 16:16:33', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 600, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263262, '2013-03-29 16:16:46', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263263, '2013-03-29 16:18:04', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 588, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263265, '2013-03-29 16:18:16', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263266, '2013-03-29 16:20:09', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 613, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263268, '2013-03-29 16:20:22', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263269, '2013-03-29 16:23:57', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 6, 619, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263271, '2013-03-29 16:24:09', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 16, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263272, '2013-03-29 16:24:45', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 1010, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263274, '2013-03-29 16:24:58', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263275, '2013-03-29 16:26:17', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 931, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263276, '2013-03-29 16:26:25', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 8, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263277, '2013-03-29 16:43:49', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 808, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263279, '2013-03-29 16:44:08', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 8, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263280, '2013-03-29 16:44:56', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 306, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263282, '2013-03-29 16:45:09', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 71, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263283, '2013-03-29 16:45:47', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 282, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263285, '2013-03-29 16:45:59', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 17, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263286, '2013-03-29 16:47:05', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 502, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263288, '2013-03-29 16:47:18', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 29, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263289, '2013-03-29 18:31:25', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 718, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263290, '2013-03-29 18:31:27', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 8, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263291, '2013-03-29 18:34:05', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 10, 1199, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263292, '2013-03-29 18:34:06', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 570, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263293, '2013-03-29 18:40:38', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 6, 771, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263295, '2013-03-29 18:40:51', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 26, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263296, '2013-03-29 19:28:58', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 790, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263298, '2013-03-29 19:29:12', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 249, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263299, '2013-03-29 20:45:46', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 1205, 1179, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263300, '2013-03-30 00:33:31', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 75, 697, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263302, '2013-03-30 00:33:56', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 37, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263303, '2013-03-30 00:42:03', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 2, 771, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263305, '2013-03-30 00:42:17', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 13, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263306, '2013-03-30 01:23:05', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 14, 785, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263308, '2013-03-30 01:24:14', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 593, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263309, '2013-03-30 01:28:41', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 2, 662, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263311, '2013-03-30 01:28:58', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 8, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263312, '2013-03-30 01:43:27', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 3, 535, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263314, '2013-03-30 01:43:40', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 10, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263315, '2013-03-30 01:53:56', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 2, 807, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263317, '2013-03-30 01:54:13', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263318, '2013-03-30 02:37:38', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 2, 683, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263320, '2013-03-30 02:38:04', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263321, '2013-03-30 02:39:57', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 800, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263323, '2013-03-30 02:40:09', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 10, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263324, '2013-03-30 02:43:49', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 11, 489, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263326, '2013-03-30 02:44:01', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 34, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263327, '2013-03-30 02:46:05', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 567, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263329, '2013-03-30 02:46:18', 'session', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263330, '2013-03-30 02:48:40', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 798, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263332, '2013-03-30 02:48:53', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 21, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263333, '2013-03-30 02:49:27', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 11, 421, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263335, '2013-03-30 02:49:40', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 39, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263336, '2013-03-30 02:51:22', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 668, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263338, '2013-03-30 02:51:35', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 13, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263339, '2013-03-30 02:57:39', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 701, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263341, '2013-03-30 02:58:03', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 49, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263342, '2013-03-30 03:00:58', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 10, 1276, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263344, '2013-03-30 03:01:10', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 12, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263345, '2013-03-30 04:10:16', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 56, 696, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263346, '2013-03-30 04:13:34', 'login', 220517, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 149, 691, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263347, '2013-03-30 04:17:01', 'login', 220517, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 597, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263349, '2013-03-30 04:19:22', 'session', 220517, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263350, '2013-03-30 04:21:45', 'login', 220517, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 867, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263352, '2013-03-30 04:21:57', 'session', 220517, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263353, '2013-03-30 04:34:21', 'login', 220517, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 470, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263355, '2013-03-30 04:34:33', 'session', 220517, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263356, '2013-03-30 04:35:04', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 327, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263358, '2013-03-30 04:35:17', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 56, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263359, '2013-03-30 04:37:18', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 706, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263361, '2013-03-30 04:37:30', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 13, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263362, '2013-03-30 04:48:37', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 14, 1599, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263364, '2013-03-30 04:55:42', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 12, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263365, '2013-03-30 09:43:57', 'login', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 19, 2162, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263367, '2013-03-30 09:44:21', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 11, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263368, '2013-03-30 11:17:52', 'login', 220518, 2972872550, '177.50', '177.50.111', '??', '177.50.111.102', NULL, '', 59, 1002, 1, '1680x1050 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1680x1050 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263369, '2013-03-30 12:52:43', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 15, 700, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263371, '2013-03-30 12:53:09', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 41, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263372, '2013-03-30 13:35:08', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 6, 775, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263374, '2013-03-30 13:35:24', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 38, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263375, '2013-03-30 13:36:11', 'login', 220517, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 11, 300, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263377, '2013-03-30 14:06:06', 'session', 220517, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 85, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263378, '2013-03-30 14:17:39', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 610, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263379, '2013-03-30 14:17:47', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 71, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263380, '2013-03-30 14:20:39', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 511, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263382, '2013-03-30 14:20:51', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 43, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263383, '2013-03-30 15:38:23', 'login', 220518, 2981030830, '177.174', '177.174.235', 'BR', '177-174-235-174.user.vivozap.com.br', 'Vivozap BR', '', 0, 1545, 1, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263384, '2013-03-30 15:47:33', 'session', 220518, 2981030830, '177.174', '177.174.235', 'BR', '177.174.235.174', NULL, '', 0, 1507, 1, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263385, '2013-03-30 16:42:22', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 11, 742, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263387, '2013-03-30 16:42:38', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 64, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263388, '2013-03-30 16:47:11', 'login', 220518, 2972598674, '177.46', '177.46.65', '??', '177.46.65.146', NULL, '', 27, 1762, NULL, '1366x768 32', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1366x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263390, '2013-03-30 16:49:41', 'session', 220518, 2972598674, '177.46', '177.46.65', '??', '177.46.65.146', NULL, '', 0, 293, NULL, '1366x768 32', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1366x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263391, '2013-03-30 17:04:10', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 644, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263393, '2013-03-30 17:04:27', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 31, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263394, '2013-03-30 17:07:57', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 446, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263396, '2013-03-30 17:08:09', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 12, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263397, '2013-03-30 17:19:51', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 12, 632, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263399, '2013-03-30 17:20:03', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 25, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263400, '2013-03-30 17:29:06', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 490, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263402, '2013-03-30 17:29:18', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 12, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263403, '2013-03-30 17:29:55', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 710, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263405, '2013-03-30 17:30:12', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 33, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263407, '2013-03-30 20:14:32', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 20, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263408, '2013-03-30 20:56:58', 'login', 220519, 3178892325, '189.122', '189.122.12', 'BR', 'bd7a0c25.virtua.com.br', 'Virtua BR', '', 45, 558, 1, '1366x768 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) | pt-BR | 1366x768 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263409, '2013-03-30 20:59:37', 'login', 220519, 3178892325, '189.122', '189.122.12', 'BR', 'bd7a0c25.virtua.com.br', 'Virtua BR', '', 0, 683, 1, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) | pt-BR', ' ', NULL);
INSERT INTO `users_con` VALUES(263411, '2013-03-30 21:00:06', 'session', 220519, 3178892325, '189.122', '189.122.12', 'BR', 'bd7a0c25.virtua.com.br', 'Virtua BR', '', 0, 1581, 1, '1366x768 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) | pt-br | 1366x768 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263412, '2013-03-30 21:03:25', 'login', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 12, 1746, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263414, '2013-03-30 21:03:38', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 20, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263415, '2013-03-30 21:07:33', 'session', 220519, 3178892325, '189.122', '189.122.12', 'BR', 'bd7a0c25.virtua.com.br', 'Virtua BR', '', 0, 678, 1, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) | pt-br', ' ', NULL);
INSERT INTO `users_con` VALUES(263416, '2013-03-30 21:23:09', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 330, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263418, '2013-03-30 21:23:26', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 52, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263419, '2013-03-30 21:42:17', 'login', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 784, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263421, '2013-03-30 21:42:29', 'session', 220515, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 10, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263422, '2013-03-30 21:43:23', 'login', 220516, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 282, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263423, '2013-03-30 21:44:04', 'login', 220517, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 10, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263424, '2013-03-30 21:44:40', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 6, 32, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263426, '2013-03-30 21:45:13', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 11, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263427, '2013-03-30 22:45:14', 'login', 1, 3014001890, '179.166', '179.166.4', 'BR', '179-166-4-226.user.vivozap.com.br', 'Vivozap BR', '', 20, 634, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263429, '2013-03-30 22:45:54', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263430, '2013-03-30 23:16:15', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 541, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263432, '2013-03-30 23:16:30', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 43, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263433, '2013-03-30 23:21:33', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 6, 520, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263435, '2013-03-30 23:21:49', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263436, '2013-03-30 23:34:30', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 794, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263438, '2013-03-30 23:34:46', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 34, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263439, '2013-03-30 23:51:34', 'session', 220518, 2981029006, '177.174', '177.174.228', 'BR', '177.174.228.142', NULL, '', 0, 1046, 1, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263440, '2013-03-30 23:57:09', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 4, 875, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263442, '2013-03-30 23:59:07', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8 | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263443, '2013-03-31 13:13:27', 'login', 1, 3145128671, '187.118', '187.118.218', 'BR', 'ip-187-118-218-223.user.vivozap.com.br', 'Vivozap BR', '', 22, 434, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263445, '2013-03-31 13:13:49', 'session', 1, 3145128671, '187.118', '187.118.218', 'BR', 'ip-187-118-218-223.user.vivozap.com.br', 'Vivozap BR', '', 0, 70, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263446, '2013-03-31 15:04:42', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 13, 300, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/25.0.1364.124 Mobile/10B146 Safari/8536.25 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263448, '2013-03-31 15:04:57', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 90, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/25.0.1364.124 Mobile/10B146 Safari/8536.25 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263449, '2013-03-31 15:07:12', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 12, 369, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/25.0.1364.124 Mobile/10B146 Safari/8536.25 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263451, '2013-03-31 15:07:24', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 280, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/25.0.1364.124 Mobile/10B146 Safari/8536.25 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263452, '2013-03-31 16:42:16', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 9, 216, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263454, '2013-03-31 16:42:29', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 10, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263455, '2013-03-31 17:51:08', 'session', 220518, 3014503044, '179.173', '179.173.170', 'BR', '179-173-170-132.user.vivozap.com.br', 'Vivozap BR', '', 0, 771, 1, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263456, '2013-03-31 19:06:27', 'login', 220520, 3134543672, '186.213', '186.213.87', 'BR', '186.213.87.56.static.host.gvt.net.br', 'Gvt BR (static)', '', 35, 523, 1, '1366x768 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8,pt-BR;q=0.6,pt;q=0.4 | 1366x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263457, '2013-03-31 19:30:09', 'login', 220520, 3134543672, '186.213', '186.213.87', 'BR', '186.213.87.56.static.host.gvt.net.br', 'Gvt BR (static)', '', 0, 2399, 1, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8,pt-BR;q=0.6,pt;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263459, '2013-03-31 19:32:09', 'session', 220520, 3134543672, '186.213', '186.213.87', 'BR', '186.213.87.56.static.host.gvt.net.br', 'Gvt BR (static)', '', 0, 18, 1, '1366x768 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | en-US,en;q=0.8,pt-BR;q=0.6,pt;q=0.4 | 1366x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263460, '2013-03-31 19:54:11', 'login', 220514, 3179051385, '189.124', '189.124.121', '??', '189.124.121.121', NULL, '', 13, 1838, NULL, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263462, '2013-03-31 19:54:45', 'session', 220514, 3179051385, '189.124', '189.124.121', '??', '189.124.121.121', NULL, '', 0, 60, NULL, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263463, '2013-03-31 20:35:37', 'login', 220521, 3171313332, '189.6', '189.6.102', 'BR', 'bd0666b4.virtua.com.br', 'Virtua BR', '', 81, 508, 1, '1366x768 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR | 1366x768 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263464, '2013-03-31 21:00:27', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 648, NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br', ' ', NULL);
INSERT INTO `users_con` VALUES(263465, '2013-03-31 21:46:02', 'login', 220521, 3171313332, '189.6', '189.6.102', 'BR', 'bd0666b4.virtua.com.br', 'Virtua BR', '', 17, 468, 1, '1366x768 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR | 1366x768 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263466, '2013-03-31 21:46:12', 'session', 220521, 3171313332, '189.6', '189.6.102', 'BR', 'bd0666b4.virtua.com.br', 'Virtua BR', '', 0, 7, 1, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR', ' ', NULL);
INSERT INTO `users_con` VALUES(263467, '2013-03-31 21:52:06', 'login', 220520, 3134543672, '186.213', '186.213.87', 'BR', '186.213.87.56.static.host.gvt.net.br', 'Gvt BR (static)', '', 14, 274, 1, '1366x768 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8,pt-BR;q=0.6,pt;q=0.4 | 1366x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263469, '2013-03-31 21:52:21', 'session', 220520, 3134543672, '186.213', '186.213.87', 'BR', '186.213.87.56.static.host.gvt.net.br', 'Gvt BR (static)', '', 0, 8, 1, '1366x768 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | en-US,en;q=0.8,pt-BR;q=0.6,pt;q=0.4 | 1366x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263470, '2013-03-31 22:52:29', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 739, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263472, '2013-03-31 22:52:42', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 32, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263473, '2013-04-01 00:01:14', 'login', 1, 2980619697, '177.168', '177.168.165', '??', '177.168.165.177', NULL, '', 18, 2143, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263475, '2013-04-01 00:01:31', 'session', 1, 2980619697, '177.168', '177.168.165', '??', '177.168.165.177', NULL, '', 0, 412, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263477, '2013-04-01 03:10:10', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 77, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263479, '2013-04-01 13:23:47', 'session', 1, 2973711382, '177.63', '177.63.60', 'BR', 'ip-177-63-60-22.user.vivozap.com.br', 'Vivozap BR', '', 0, 60, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263481, '2013-04-01 14:18:33', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 83, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263482, '2013-04-01 15:45:17', 'login', 220521, 3369783310, '200.218', '200.218.208', 'BR', 'fw1.bcb.gov.br', 'Gov BR', '', 18, 613, NULL, '1440x900 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) | pt-BR | 1440x900 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263483, '2013-04-01 15:45:33', 'session', 220521, 3369783310, '200.218', '200.218.208', 'BR', 'fw1.bcb.gov.br', 'Gov BR', '', 0, 35, NULL, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) | pt-BR', ' ', NULL);
INSERT INTO `users_con` VALUES(263484, '2013-04-01 16:09:09', 'login', 220519, 2757035522, '164.85', '164.85.6', 'BR', 'inet.petrobras.com.br', 'Petrobras BR', '', 19, 495, NULL, '1024x768 32', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E) | pt-br | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263486, '2013-04-01 16:09:26', 'session', 220519, 2757035640, '164.85', '164.85.6', 'BR', 'inet.petrobras.com.br', 'Petrobras BR', '', 0, 163, NULL, '1024x768 32', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E) | pt-br | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263487, '2013-04-01 18:47:12', 'login', 1, 3371447400, '200.244', '200.244.52', 'BR', 'rj104.bndes.gov.br', 'Gov BR', '', 17, 875, NULL, '1600x900 32', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E) | pt-br | 1600x900 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263489, '2013-04-01 18:48:13', 'session', 1, 3371447400, '200.244', '200.244.52', 'BR', 'rj104.bndes.gov.br', 'Gov BR', '', 0, 945, NULL, '1600x900 32', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E) | pt-br | 1600x900 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263491, '2013-04-01 22:02:32', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 77, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263492, '2013-04-02 00:18:00', 'session', 220521, 3171313332, '189.6', '189.6.102', 'BR', 'bd0666b4.virtua.com.br', 'Virtua BR', '', 0, 1070, 1, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR', ' ', NULL);
INSERT INTO `users_con` VALUES(263493, '2013-04-02 00:27:41', 'login', 220521, 3171313332, '189.6', '189.6.102', 'BR', 'bd0666b4.virtua.com.br', 'Virtua BR', '', 17, 1597, 1, '1366x768 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR | 1366x768 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263494, '2013-04-02 01:27:52', 'login', 220522, 3375646835, '201.52', '201.52.72', 'BR', 'c9344873.virtua.com.br', 'Virtua BR', '', 25, 1327, 1, '1280x800 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4,es-419;q=0.2,es;q=0.2 | 1280x800 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263495, '2013-04-02 01:31:35', 'login', 220522, 3375646835, '201.52', '201.52.72', 'BR', 'c9344873.virtua.com.br', 'Virtua BR', '', 8, 723, 1, '1280x800 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4,es-419;q=0.2,es;q=0.2 | 1280x800 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263496, '2013-04-02 01:32:14', 'session', 220522, 3375646835, '201.52', '201.52.72', 'BR', 'c9344873.virtua.com.br', 'Virtua BR', '', 0, 876, 1, NULL, 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4,es-419;q=0.2,es;q=0.2', ' ', NULL);
INSERT INTO `users_con` VALUES(263497, '2013-04-02 01:47:50', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 17, 1342, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263499, '2013-04-02 01:48:04', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 80, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263500, '2013-04-02 01:53:56', 'login', 220521, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 1008, NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br', ' ', NULL);
INSERT INTO `users_con` VALUES(263501, '2013-04-02 01:55:46', 'login', 220522, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 667, NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br', ' ', NULL);
INSERT INTO `users_con` VALUES(263502, '2013-04-02 02:03:40', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 8, 993, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263504, '2013-04-02 02:03:57', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 9, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263506, '2013-04-02 03:20:20', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 12, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263507, '2013-04-02 04:01:40', 'login', 220521, 3171313332, '189.6', '189.6.102', 'BR', 'bd0666b4.virtua.com.br', 'Virtua BR', '', 16, 254, NULL, '1366x768 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR | 1366x768 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263508, '2013-04-02 04:02:27', 'session', 220521, 3171313332, '189.6', '189.6.102', 'BR', 'bd0666b4.virtua.com.br', 'Virtua BR', '', 0, 51, NULL, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR', ' ', NULL);
INSERT INTO `users_con` VALUES(263509, '2013-04-02 04:05:42', 'login', 220523, 3138851536, '187.23', '187.23.18', 'BR', 'bb1712d0.virtua.com.br', 'Virtua BR', '', 32, 1657, 1, '1440x900 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1440x900 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263510, '2013-04-02 04:06:00', 'login', 220523, 3138851536, '187.23', '187.23.18', 'BR', 'bb1712d0.virtua.com.br', 'Virtua BR', '', 0, 13, 1, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263511, '2013-04-02 04:06:18', 'session', 220523, 3138851536, '187.23', '187.23.18', 'BR', 'bb1712d0.virtua.com.br', 'Virtua BR', '', 0, 8, 1, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263512, '2013-04-02 04:24:26', 'login', 220521, 3171313332, '189.6', '189.6.102', 'BR', 'bd0666b4.virtua.com.br', 'Virtua BR', '', 15, 778, 1, '1366x768 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR | 1366x768 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263514, '2013-04-02 06:43:05', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 58, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263516, '2013-04-02 12:41:36', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 57, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263517, '2013-04-02 15:02:22', 'login', 220524, 3171488888, '189.9', '189.9.20', '??', '189.9.20.120', NULL, '', 30, 358, 1, '1440x900 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8 | 1440x900 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263519, '2013-04-02 15:50:16', 'session', 220521, 3369783310, '200.218', '200.218.208', 'BR', 'fw1.bcb.gov.br', 'Gov BR', '', 0, 38, NULL, '1440x900 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) | pt-br | 1440x900 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263520, '2013-04-02 16:26:42', 'login', 220524, 3171488888, '189.9', '189.9.20', '??', '189.9.20.120', NULL, '', 0, 180, 1, NULL, 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8', ' ', NULL);
INSERT INTO `users_con` VALUES(263522, '2013-04-02 16:27:01', 'session', 220524, 3171488888, '189.9', '189.9.20', '??', '189.9.20.120', NULL, '', 0, 76, 1, '1440x900 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8 | 1440x900 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263523, '2013-04-02 16:37:40', 'login', 220525, 3369783310, '200.218', '200.218.208', 'BR', 'fw1.bcb.gov.br', 'Gov BR', '', 115, 948, 1, '1440x900 24', 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0 | pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3 | 1440x900 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263524, '2013-04-02 16:45:09', 'login', 220525, 3369783310, '200.218', '200.218.208', 'BR', 'fw1.bcb.gov.br', 'Gov BR', '', 0, 2894, 1, NULL, 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0 | pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3', ' ', NULL);
INSERT INTO `users_con` VALUES(263526, '2013-04-02 16:46:24', 'session', 220525, 3369783310, '200.218', '200.218.208', 'BR', 'fw1.bcb.gov.br', 'Gov BR', '', 0, 16, 1, '1440x900 24', 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0 | pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3 | 1440x900 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263527, '2013-04-02 16:51:29', 'login', 1, 2983647996, '177.214', '177.214.218', 'BR', '177-214-218-252.user.vivozap.com.br', 'Vivozap BR', '', 15, 843, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263529, '2013-04-02 16:51:44', 'session', 1, 2983647996, '177.214', '177.214.218', 'BR', '177-214-218-252.user.vivozap.com.br', 'Vivozap BR', '', 0, 84, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263530, '2013-04-02 18:03:56', 'login', 1, 3373404776, '201.18', '201.18.18', 'BR', 'rj104.bndes.gov.br', 'Gov BR', '', 28, 1733, NULL, '1600x900 32', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E) | pt-br | 1600x900 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263532, '2013-04-02 18:05:17', 'session', 1, 3371447400, '200.244', '200.244.52', 'BR', 'rj104.bndes.gov.br', 'Gov BR', '', 0, 987, NULL, '1600x900 32', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E) | pt-br | 1600x900 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263533, '2013-04-02 18:47:07', 'login', 220524, 3171488888, '189.9', '189.9.20', '??', '189.9.20.120', NULL, '', 9, 144, NULL, '1280x1024 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1280x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263535, '2013-04-02 18:47:28', 'session', 220524, 3171488888, '189.9', '189.9.20', '??', '189.9.20.120', NULL, '', 0, 10, NULL, '1280x1024 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1280x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263537, '2013-04-02 22:30:38', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 1089, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263539, '2013-04-03 01:53:50', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 61, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263541, '2013-04-03 11:51:36', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 113, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263542, '2013-04-03 12:16:01', 'login', 1, 2973600437, '177.61', '177.61.138', 'BR', 'ip-177-61-138-181.user.vivozap.com.br', 'Vivozap BR', '', 29, 1003, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263544, '2013-04-03 12:16:16', 'session', 1, 2973600437, '177.61', '177.61.138', 'BR', 'ip-177-61-138-181.user.vivozap.com.br', 'Vivozap BR', '', 0, 53, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263545, '2013-04-03 12:20:07', 'login', 1, 2973600437, '177.61', '177.61.138', 'BR', 'ip-177-61-138-181.user.vivozap.com.br', 'Vivozap BR', '', 18, 986, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; U; Android 4.1.2; pt-br; GT-N7100 Build/JZO54K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 | pt-BR, en-US | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263547, '2013-04-03 12:20:23', 'session', 1, 2973600437, '177.61', '177.61.138', 'BR', 'ip-177-61-138-181.user.vivozap.com.br', 'Vivozap BR', '', 0, 12, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; U; Android 4.1.2; pt-br; GT-N7100 Build/JZO54K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 | pt-BR, en-US | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263548, '2013-04-03 14:56:36', 'session', 220525, 3369783310, '200.218', '200.218.208', 'BR', 'fw1.bcb.gov.br', 'Gov BR', '', 0, 1157, 1, NULL, 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0 | pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3', ' ', NULL);
INSERT INTO `users_con` VALUES(263550, '2013-04-03 19:17:59', 'session', 220525, 3369784656, '200.218', '200.218.213', 'BR', '200-218-213-80.bcb.gov.br', 'Gov BR', '', 0, 21, 1, '1440x900 24', 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0 | pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3 | 1440x900 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263552, '2013-04-03 21:38:01', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 73, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263553, '2013-04-04 02:59:26', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 792, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263555, '2013-04-04 02:59:42', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 78, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263557, '2013-04-04 04:01:37', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 70, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263558, '2013-04-04 10:09:02', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 13, 793, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263560, '2013-04-04 10:09:15', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 108, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263561, '2013-04-04 10:30:54', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 796, 13637353827900, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263562, '2013-04-04 11:35:38', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 3, 562, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263564, '2013-04-04 11:35:57', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 71, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263566, '2013-04-04 11:50:31', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 10, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263568, '2013-04-04 21:38:33', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 131, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263569, '2013-04-05 01:32:07', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 1, 288, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263571, '2013-04-05 01:32:23', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 47, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263572, '2013-04-05 02:50:20', 'login', 220519, 3365430109, '200.152', '200.152.99', 'BR', 'mlsrj200152099p093.mls.com.br', 'Mls BR', '', 15, 813, NULL, '1366x768 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) | pt-BR | 1366x768 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263574, '2013-04-05 04:10:08', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 94, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263576, '2013-04-05 12:13:15', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 55, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263577, '2013-04-05 14:54:32', 'login', 220525, 3369784656, '200.218', '200.218.213', 'BR', '200-218-213-80.bcb.gov.br', 'Gov BR', '', 16, 812, 1, '1440x900 24', 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0 | pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3 | 1440x900 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263579, '2013-04-05 14:55:22', 'session', 220525, 3369784656, '200.218', '200.218.213', 'BR', '200-218-213-80.bcb.gov.br', 'Gov BR', '', 0, 28, 1, '1440x900 24', 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0 | pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3 | 1440x900 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263581, '2013-04-05 22:51:10', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 129, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263582, '2013-04-05 23:01:52', 'login', 1, 3373404776, '201.18', '201.18.18', 'BR', '201.18.18.104', NULL, '', 25, 2028, NULL, '1600x900 32', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E) | pt-br | 1600x900 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263584, '2013-04-05 23:02:08', 'session', 1, 3373404776, '201.18', '201.18.18', 'BR', 'rj104.bndes.gov.br', 'Gov BR', '', 0, 76, NULL, '1600x900 32', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E) | pt-br | 1600x900 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263586, '2013-04-06 00:26:21', 'session', 1, 2971213365, '177.25', '177.25.30', 'BR', 'ip-177-25-30-53.user.vivozap.com.br', 'Vivozap BR', '', 0, 93, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263587, '2013-04-06 02:07:00', 'session', 1, 2971213365, '177.25', '177.25.30', 'BR', 'ip-177-25-30-53.user.vivozap.com.br', 'Vivozap BR', '', 0, 1066, NULL, NULL, 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263588, '2013-04-06 02:37:59', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 13, 708, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B146 Safari/8536.25 | pt-br | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263590, '2013-04-06 02:38:13', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 62, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B146 Safari/8536.25 | pt-br | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263592, '2013-04-06 07:12:23', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 88, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263594, '2013-04-06 11:56:16', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 78, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263596, '2013-04-06 12:33:27', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 71, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263597, '2013-04-06 16:34:27', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 3, 981, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263599, '2013-04-06 16:34:42', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 67, 13637353827900, '1920x1080 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1920x1080 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263600, '2013-04-06 16:52:24', 'session', 1, 3145076419, '187.118', '187.118.14', 'BR', 'ip-187-118-14-195.user.vivozap.com.br', 'Vivozap BR', '', 0, 821, NULL, NULL, 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263602, '2013-04-06 19:14:45', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 62, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263604, '2013-04-07 04:02:41', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 246, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263605, '2013-04-07 04:08:01', 'login', 220521, 3171313332, '189.6', '189.6.102', 'BR', 'bd0666b4.virtua.com.br', 'Virtua BR', '', 15, 481, 1, '1366x768 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-BR | 1366x768 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263607, '2013-04-07 04:08:57', 'session', 220521, 3171313332, '189.6', '189.6.102', 'BR', 'bd0666b4.virtua.com.br', 'Virtua BR', '', 0, 2200, 1, '1366x768 24', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) | pt-br | 1366x768 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263609, '2013-04-07 10:33:35', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 77, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263611, '2013-04-07 13:46:18', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 96, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263612, '2013-04-07 15:07:37', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 789, NULL, NULL, 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', ' ', NULL);
INSERT INTO `users_con` VALUES(263614, '2013-04-07 15:30:29', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 13, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263615, '2013-04-08 00:24:22', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 16, 1105, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/25.0.1364.124 Mobile/10B146 Safari/8536.25 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263617, '2013-04-08 00:24:38', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 84, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/25.0.1364.124 Mobile/10B146 Safari/8536.25 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263618, '2013-04-08 00:37:33', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 15, 509, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/25.0.1364.124 Mobile/10B146 Safari/8536.25 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263620, '2013-04-08 00:37:53', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 142, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/25.0.1364.124 Mobile/10B146 Safari/8536.25 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263621, '2013-04-08 00:44:15', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 13, 605, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/25.0.1364.124 Mobile/10B146 Safari/8536.25 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263623, '2013-04-08 00:48:43', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 144, NULL, '768x1024 32', 'Mozilla/5.0 (iPad; CPU OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/25.0.1364.124 Mobile/10B146 Safari/8536.25 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 768x1024 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263625, '2013-04-08 02:52:34', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 71, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263627, '2013-04-08 11:49:19', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 42, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263628, '2013-04-08 14:43:12', 'session', 220525, 3369784656, '200.218', '200.218.213', 'BR', '200-218-213-80.bcb.gov.br', 'Gov BR', '', 0, 962, 1, NULL, 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0 | pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3', ' ', NULL);
INSERT INTO `users_con` VALUES(263630, '2013-04-08 22:53:37', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 53, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263632, '2013-04-09 03:54:24', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 37, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263634, '2013-04-09 09:37:47', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 11, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263636, '2013-04-09 21:50:14', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 10, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263638, '2013-04-10 02:29:45', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 41, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263640, '2013-04-10 05:11:40', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 11, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263642, '2013-04-10 10:53:54', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 82, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263644, '2013-04-11 01:48:09', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 33, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263646, '2013-04-11 08:47:40', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 15, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263648, '2013-04-12 01:56:19', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 10, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263649, '2013-04-13 19:16:56', 'login', 1, 3179126858, '189.125', '189.125.160', 'BR', '74.160.125.189.static.impsat.net.br', 'Impsat BR (static)', '', 9, 1664, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263651, '2013-04-13 19:17:15', 'session', 1, 3179126858, '189.125', '189.125.160', 'BR', '74.160.125.189.static.impsat.net.br', 'Impsat BR (static)', '', 0, 29, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263653, '2013-04-13 22:38:43', 'session', 220520, 3179126858, '189.125', '189.125.160', 'BR', '74.160.125.189.static.impsat.net.br', 'Impsat BR (static)', '', 0, 21, 1, '1366x768 32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31 | en-US,en;q=0.8,pt-BR;q=0.6,pt;q=0.4 | 1366x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263655, '2013-04-14 00:54:53', 'session', 1, 3179126858, '189.125', '189.125.160', 'BR', '74.160.125.189.static.impsat.net.br', 'Impsat BR (static)', '', 0, 36, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263657, '2013-04-15 04:43:30', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 46, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263659, '2013-04-15 11:16:34', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 32, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263660, '2013-04-16 02:15:09', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 6, 684, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263662, '2013-04-16 02:15:26', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 19, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263664, '2013-04-16 04:07:15', 'session', 220514, 3179051453, '189.124', '189.124.121', '??', '189.124.121.189', NULL, '', 0, 60, 13629938093300, '1024x768 32', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 1024x768 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263665, '2013-04-17 02:54:44', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 786, NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br', ' ', NULL);
INSERT INTO `users_con` VALUES(263667, '2013-04-18 19:01:46', 'session', 220525, 3369784656, '200.218', '200.218.213', 'BR', '200-218-213-80.bcb.gov.br', 'Gov BR', '', 0, 473, 1, '1440x900 24', 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0 | pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3 | 1440x900 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263668, '2013-04-20 01:55:50', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 25, 1219, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263670, '2013-04-20 01:56:05', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 32, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263672, '2013-04-20 21:44:48', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 32, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263674, '2013-04-21 00:43:48', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 26, NULL, '720x1280 32', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-N7100 Build/JZO54K) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19 | pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4 | 720x1280 32', ' ', NULL);
INSERT INTO `users_con` VALUES(263675, '2013-04-23 22:01:23', 'login', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 7, 748, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);
INSERT INTO `users_con` VALUES(263677, '2013-04-23 22:01:37', 'session', 1, 3171208516, '189.4', '189.4.205', 'BR', 'bd04cd44.virtua.com.br', 'Virtua BR', '', 0, 68, NULL, '1280x800 24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7 | pt-br | 1280x800 24', ' ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `votacion`
--

CREATE TABLE IF NOT EXISTS `votacion` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `estado` enum('ok','end','borrador') NOT NULL DEFAULT 'borrador',
  `pregunta` varchar(255) NOT NULL DEFAULT '',
  `descripcion` text NOT NULL,
  `respuestas` text NOT NULL,
  `num` smallint(5) NOT NULL DEFAULT '0',
  `num_censo` int(11) unsigned DEFAULT NULL,
  `tipo` enum('sondeo','referendum','parlamento','destituir','otorgar','cargo','elecciones') NOT NULL DEFAULT 'sondeo',
  `tipo_voto` enum('estandar','3puntos','5puntos','8puntos','multiple') NOT NULL DEFAULT 'estandar',
  `privacidad` enum('true','false') NOT NULL DEFAULT 'true',
  `aleatorio` enum('true','false') NOT NULL DEFAULT 'false',
  `ejecutar` text NOT NULL,
  `duracion` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `acceso_votar` varchar(30) NOT NULL DEFAULT 'ciudadanos_global',
  `acceso_cfg_votar` varchar(900) NOT NULL DEFAULT '',
  `acceso_ver` varchar(255) NOT NULL DEFAULT 'anonimos',
  `acceso_cfg_ver` varchar(900) NOT NULL DEFAULT '',
  `debate_url` varchar(255) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `votos_expire` smallint(5) unsigned NOT NULL DEFAULT '0',
  `respuestas_desc` text NOT NULL,
  `cargo_ID` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `pais` (`pais`),
  KEY `time_expire` (`time_expire`),
  KEY `estado` (`estado`),
  KEY `tipo` (`tipo`),
  KEY `num` (`num`),
  KEY `votos_expire` (`votos_expire`),
  KEY `time` (`time`),
  KEY `user_ID` (`user_ID`),
  KEY `pregunta` (`pregunta`),
  KEY `acceso_votar` (`acceso_votar`),
  KEY `acceso_cfg_votar` (`acceso_cfg_votar`(333)),
  KEY `acceso_ver` (`acceso_ver`),
  KEY `acceso_cfg_ver` (`acceso_cfg_ver`(333)),
  KEY `tipo_voto` (`tipo_voto`),
  KEY `privacidad` (`privacidad`),
  KEY `aleatorio` (`aleatorio`),
  KEY `num_censo` (`num_censo`),
  KEY `cargo_ID` (`cargo_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3450 ;

--
-- Dumping data for table `votacion`
--

INSERT INTO `votacion` VALUES(3440, 'teste', 'borrador', 'Ser ou não ser?', 'Hamlet', 'En Blanco|Ser|Não ser|', 0, NULL, 'sondeo', 'estandar', 'true', 'false', '', 86400, '2013-03-20 00:43:01', '2013-03-20 00:43:01', 'ciudadanos_global', '', 'anonimos', '', '', 220515, 0, '][][][', NULL);
INSERT INTO `votacion` VALUES(3441, 'prorede', 'end', 'Teste de votação', 'Isto é um teste de votação.', 'En Blanco|SIM|NÃO|', 3, NULL, 'sondeo', 'estandar', 'true', 'false', '', 86400, '2013-03-27 00:48:44', '2013-03-29 16:18:16', 'ciudadanos', '', 'anonimos', '', '', 220515, 0, '][][][', NULL);
INSERT INTO `votacion` VALUES(3442, 'prorede', 'end', 'Teste', 'Teste', 'En Blanco|SIM|NÃO|Outra opção|', 3, NULL, 'referendum', 'estandar', 'false', 'false', '', 86400, '2013-03-28 03:44:50', '2013-03-29 16:26:29', 'ciudadanos', '', 'anonimos', '', '', 1, 0, '][][][][', NULL);
INSERT INTO `votacion` VALUES(3443, 'prorede', 'end', 'Teste de votação múltipla', 'Quais opções você quer?', 'Opção A|Opção B|Opção C|', 3, NULL, 'sondeo', 'multiple', 'false', 'false', '', 86400, '2013-03-28 16:42:10', '2013-03-29 16:47:17', 'ciudadanos', '', 'anonimos', '', '', 1, 0, '][][][', NULL);
INSERT INTO `votacion` VALUES(3444, 'prorede', 'end', 'Novo teste de pesquisa', 'Teste', 'En Blanco|Sim|Não|', 1, NULL, 'sondeo', 'estandar', 'true', 'false', '', 86400, '2013-03-28 18:29:05', '2013-03-29 18:34:30', 'ciudadanos_global', '', 'anonimos', '', '', 1, 0, '][][][', NULL);
INSERT INTO `votacion` VALUES(3448, 'prorede', 'end', 'Qual é o nome do projeto?', 'Votação para escolha do nome do projeto.', 'En Blanco|pro#rede (barretto)|REDEMOCRÁTICAS  = REde + DEMOCRAcia + éTICA + Sustentabilidade (Seiji)|Rede de todos nós (Ruben)|Projeto Nós da #Rede (Ana)|#RedeSenhar (Fradim)|', 4, 10, 'referendum', 'estandar', 'false', 'false', '', 259200, '2013-04-06 13:45:11', '2013-04-10 05:18:03', 'ciudadanos', '', 'ciudadanos', '', 'https://docs.google.com/spreadsheet/ccc?key=0AprufJ0tZYgEdEliRW9DWGs5ZXVNdFVXSXIyU1paR2c&usp=sharing', 1, 0, '][][][][][][', NULL);
INSERT INTO `votacion` VALUES(3446, 'prorede', 'end', 'Mais um teste', 'Outro teste', 'En Blanco|Sim|Não|', 4, 4, 'referendum', 'estandar', 'true', 'false', '', 86400, '2013-03-30 02:44:35', '2013-03-31 13:15:01', 'ciudadanos_global', '', 'anonimos', '', '', 1, 0, '][][][', NULL);
INSERT INTO `votacion` VALUES(3447, 'prorede', 'end', 'Primeira pesquisa', 'Primeira pesquisa', 'En Blanco|Sim|Não|', 3, 5, 'sondeo', 'estandar', 'true', 'false', '', 86400, '2013-03-30 04:38:45', '2013-03-31 13:15:01', 'ciudadanos_global', '', 'anonimos', '', '', 220515, 0, '][][][', NULL);
INSERT INTO `votacion` VALUES(3449, 'prorede', 'end', 'Qual é o domínio do portal?', 'Votação para escolha do domínio do portal', 'En Blanco|www.redemocriticas.com.br / ou .org.br (Seiji)|www.portaldarede.org.br (Ruben)|', 6, 10, 'referendum', 'estandar', 'false', 'false', '', 259200, '2013-04-06 13:45:29', '2013-04-10 05:18:03', 'ciudadanos', '', 'ciudadanos', '', 'https://docs.google.com/spreadsheet/ccc?key=0AprufJ0tZYgEdEliRW9DWGs5ZXVNdFVXSXIyU1paR2c&usp=sharing', 1, 0, '][][][', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `votacion_argumentos`
--

CREATE TABLE IF NOT EXISTS `votacion_argumentos` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ref_ID` mediumint(8) unsigned DEFAULT NULL,
  `user_ID` mediumint(8) unsigned DEFAULT NULL,
  `time` datetime DEFAULT '0000-00-00 00:00:00',
  `sentido` varchar(255) NOT NULL DEFAULT '',
  `texto` varchar(900) NOT NULL DEFAULT '',
  `votos` mediumint(8) DEFAULT '0',
  `votos_num` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ref_ID` (`ref_ID`),
  KEY `user_ID` (`user_ID`),
  KEY `votos` (`votos`),
  KEY `votos_num` (`votos_num`),
  KEY `time` (`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=455 ;

--
-- Dumping data for table `votacion_argumentos`
--

INSERT INTO `votacion_argumentos` VALUES(453, 3441, 0, '2013-03-27 00:50:08', 'A favor', 'Porque sim', 1, 3);
INSERT INTO `votacion_argumentos` VALUES(454, 3447, 0, '2013-03-30 04:39:44', 'A favor', 'Porque sim.', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `votacion_votos`
--

CREATE TABLE IF NOT EXISTS `votacion_votos` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ref_ID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime DEFAULT NULL,
  `voto` varchar(300) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `validez` enum('true','false') CHARACTER SET utf8 NOT NULL DEFAULT 'true',
  `autentificado` enum('true','false') CHARACTER SET utf8 DEFAULT 'false',
  `mensaje` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `comprobante` varchar(600) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ref_ID` (`ref_ID`),
  KEY `user_ID` (`user_ID`),
  KEY `voto` (`voto`),
  KEY `validez` (`validez`),
  KEY `time` (`time`),
  KEY `autentificado` (`autentificado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183713 ;

--
-- Dumping data for table `votacion_votos`
--

INSERT INTO `votacion_votos` VALUES(183685, 3441, 220515, '2013-03-29 13:54:52', '1', 'true', 'false', '', 'fc2c82fa965573a53265c4d1fbb0e981b2710775');
INSERT INTO `votacion_votos` VALUES(183686, 3441, 1, '2013-03-29 13:56:13', '2', 'true', 'false', 'Teste de comentário', '1c6e8838585bdeec6d7e8e4ecb753dd7adb12b1c');
INSERT INTO `votacion_votos` VALUES(183687, 3441, 220516, '2013-03-29 16:12:03', '0', 'true', 'false', '', '69f5a24c68ad50e5d61dd2d77ce11437e91d60c9');
INSERT INTO `votacion_votos` VALUES(183688, 3442, 1, '2013-03-29 16:20:38', '1', 'true', 'false', '', '65529fffce6e72ffbb75928d35e755092ccbd2fe');
INSERT INTO `votacion_votos` VALUES(183689, 3442, 220515, '2013-03-29 16:24:20', '1', 'true', 'false', '', 'ded02e4d7e2a9b8ffead6194058a13e1abbcf3ae');
INSERT INTO `votacion_votos` VALUES(183690, 3442, 220516, '2013-03-29 16:25:07', '1', 'true', 'false', '', '70b9c356a29afc15fcbc3cc0a30137e2fff4f766');
INSERT INTO `votacion_votos` VALUES(183691, 3443, 1, '2013-03-29 16:44:21', '1 1 2', 'true', 'false', '', '63692fbaf883032dd58b64c577871cda32ef33b1');
INSERT INTO `votacion_votos` VALUES(183692, 3443, 220515, '2013-03-29 16:45:19', '0 0 0', 'false', 'false', '', 'ccaed8c258820a55abcfaee05b352e717e4c1fde');
INSERT INTO `votacion_votos` VALUES(183693, 3443, 220516, '2013-03-29 16:46:10', '1 2 2', 'true', 'false', '', '181ed2c774b1e494d3befafcc4df00b78eaf0241');
INSERT INTO `votacion_votos` VALUES(183694, 3444, 1, '2013-03-29 18:31:49', '1', 'true', 'false', '', 'e02e04b3761e297e04fedc0bafd8763c8033d3ec');
INSERT INTO `votacion_votos` VALUES(183703, 3449, 220514, '2013-03-30 22:00:11', '1', 'true', 'false', '', '5f9199c8b8e694bdbd7aaad32296b6c89d46f6b3');
INSERT INTO `votacion_votos` VALUES(183696, 3446, 1, '2013-03-30 02:44:52', '0', 'true', 'false', '', 'bfc49842498423cc55a26b51b0b084f6cffbc769');
INSERT INTO `votacion_votos` VALUES(183697, 3446, 220516, '2013-03-30 02:46:28', '0', 'true', 'false', '', '586a720f4c4b0c5177188014754888579a96f156');
INSERT INTO `votacion_votos` VALUES(183698, 3446, 220515, '2013-03-30 02:49:46', '1', 'true', 'false', '', 'cc14f0135b3ae9cbb209a8ca9d55230f568b629c');
INSERT INTO `votacion_votos` VALUES(183699, 3447, 220515, '2013-03-30 04:39:01', '1', 'true', 'false', '', '6cf626aad3ab7ddf78d4c198f7b80d332a376b93');
INSERT INTO `votacion_votos` VALUES(183700, 3447, 1, '2013-03-30 04:56:08', '1', 'true', 'false', '', 'ee9821b9a9b40bd392c05e6d53ec3ffc38e48e53');
INSERT INTO `votacion_votos` VALUES(183701, 3447, 220514, '2013-03-30 09:46:00', '2', 'true', 'false', '', '330fab6bd1f28748adf0a7c7cfa712205a1ec065');
INSERT INTO `votacion_votos` VALUES(183702, 3446, 220514, '2013-03-30 20:23:52', '0', 'true', 'false', 'Teste de voto Seiji', '7506ace81dc81189e0bd613f4e9a372147ff4582');
INSERT INTO `votacion_votos` VALUES(183704, 3448, 220514, '2013-03-30 22:00:40', '2', 'true', 'false', '', 'e05673be4d3093c82bea9d68a971e5c9a1c5fe42');
INSERT INTO `votacion_votos` VALUES(183705, 3449, 1, '2013-03-30 22:48:08', '1', 'true', 'false', '', 'e73ecd4df9688529ea95d6d9d2a9486708123b10');
INSERT INTO `votacion_votos` VALUES(183706, 3448, 1, '2013-03-30 22:49:27', '4', 'true', 'false', '', '29da862afa525c5a37bb01f5aec3144823da8fcd');
INSERT INTO `votacion_votos` VALUES(183707, 3449, 220518, '2013-03-30 23:57:45', '2', 'true', 'false', '', '3ccd9645fd5d9c559e88bb85e30239e205545b60');
INSERT INTO `votacion_votos` VALUES(183708, 3449, 220519, '2013-04-01 16:12:04', '2', 'true', 'false', '', '746e5674f534035966f4a68a9020dd41adf109cd');
INSERT INTO `votacion_votos` VALUES(183709, 3449, 220523, '2013-04-02 04:07:12', '1', 'true', 'false', '', '23174d90192d5f684252ba6e997e2182c92fa90a');
INSERT INTO `votacion_votos` VALUES(183710, 3448, 220524, '2013-04-02 18:47:53', '4', 'true', 'false', '', '0281dad6c68b6c2a40dae37d82ba228ee1762124');
INSERT INTO `votacion_votos` VALUES(183711, 3449, 220524, '2013-04-02 18:48:09', '1', 'true', 'false', '', '00c90e62903b8f706ea0522b41ee5fdc9bf91eee');
INSERT INTO `votacion_votos` VALUES(183712, 3448, 220519, '2013-04-05 02:54:29', '4', 'true', 'false', 'Para nome da campanha eu defendo &#34;Rede de Todos Nós&#34;', '7fb52c0655e9b3696dc0f5c689088ab0aec89182');

-- --------------------------------------------------------

--
-- Table structure for table `votos`
--

CREATE TABLE IF NOT EXISTS `votos` (
  `voto_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) DEFAULT NULL,
  `item_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `emisor_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `voto` tinyint(3) NOT NULL,
  `tipo` enum('confianza','hilos','msg','argumentos') CHARACTER SET utf8 NOT NULL DEFAULT 'confianza',
  `time` datetime NOT NULL,
  PRIMARY KEY (`voto_ID`),
  KEY `tipo` (`tipo`),
  KEY `emisor_ID` (`emisor_ID`),
  KEY `item_ID` (`item_ID`),
  KEY `pais` (`pais`),
  KEY `voto` (`voto`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=155169 ;

--
-- Dumping data for table `votos`
--

INSERT INTO `votos` VALUES(155123, 'all', 1, 220515, 1, 'confianza', '2013-03-20 00:40:53');
INSERT INTO `votos` VALUES(155124, 'all', 220514, 220515, 1, 'confianza', '2013-03-28 03:52:19');
INSERT INTO `votos` VALUES(155125, 'all', 220515, 1, 1, 'confianza', '2013-03-29 13:40:24');
INSERT INTO `votos` VALUES(155126, 'prorede', 453, 220515, 1, 'argumentos', '2013-03-29 13:54:50');
INSERT INTO `votos` VALUES(155127, 'prorede', 453, 1, -1, 'argumentos', '2013-03-29 13:56:12');
INSERT INTO `votos` VALUES(155128, 'prorede', 453, 220516, 1, 'argumentos', '2013-03-29 16:11:58');
INSERT INTO `votos` VALUES(155129, 'prorede', 454, 1, 1, 'argumentos', '2013-03-30 04:57:14');
INSERT INTO `votos` VALUES(155130, 'prorede', 454, 220514, 1, 'argumentos', '2013-03-30 09:45:59');
INSERT INTO `votos` VALUES(155131, 'all', 220514, 1, 1, 'confianza', '2013-03-30 12:54:03');
INSERT INTO `votos` VALUES(155132, 'prorede', 4, 220515, 1, 'hilos', '2013-03-30 14:21:21');
INSERT INTO `votos` VALUES(155133, 'all', 220518, 220515, 1, 'confianza', '2013-03-30 16:41:52');
INSERT INTO `votos` VALUES(155134, 'prorede', 5, 1, 0, 'msg', '2013-03-30 21:25:25');
INSERT INTO `votos` VALUES(155135, 'all', 220518, 1, 1, 'confianza', '2013-03-30 17:08:25');
INSERT INTO `votos` VALUES(155136, 'prorede', 4, 220514, 1, 'hilos', '2013-03-30 20:19:12');
INSERT INTO `votos` VALUES(155137, 'prorede', 5, 220514, 1, 'msg', '2013-03-30 20:19:24');
INSERT INTO `votos` VALUES(155138, 'prorede', 7, 1, 1, 'msg', '2013-03-30 21:26:24');
INSERT INTO `votos` VALUES(155139, 'all', 1, 220514, 1, 'confianza', '2013-03-30 20:25:59');
INSERT INTO `votos` VALUES(155140, 'all', 220518, 220514, 1, 'confianza', '2013-03-30 20:26:01');
INSERT INTO `votos` VALUES(155141, 'prorede', 8, 1, 1, 'msg', '2013-03-30 21:25:20');
INSERT INTO `votos` VALUES(155142, 'all', 220519, 220520, 1, 'confianza', '2013-03-31 19:40:28');
INSERT INTO `votos` VALUES(155143, 'all', 1, 220520, 1, 'confianza', '2013-03-31 19:40:35');
INSERT INTO `votos` VALUES(155144, 'all', 220519, 220514, 1, 'confianza', '2013-03-31 20:07:26');
INSERT INTO `votos` VALUES(155145, 'all', 220520, 220514, 1, 'confianza', '2013-03-31 20:07:39');
INSERT INTO `votos` VALUES(155146, 'all', 220520, 1, 1, 'confianza', '2013-03-31 21:36:33');
INSERT INTO `votos` VALUES(155147, 'all', 220519, 1, 1, 'confianza', '2013-04-01 13:25:32');
INSERT INTO `votos` VALUES(155148, 'all', 220522, 1, 1, 'confianza', '2013-04-02 02:17:12');
INSERT INTO `votos` VALUES(155149, 'all', 220521, 1, 1, 'confianza', '2013-04-02 02:17:13');
INSERT INTO `votos` VALUES(155150, 'all', 220522, 220514, 1, 'confianza', '2013-04-02 03:28:15');
INSERT INTO `votos` VALUES(155151, 'all', 220521, 220514, 1, 'confianza', '2013-04-02 03:28:24');
INSERT INTO `votos` VALUES(155152, 'all', 220523, 220514, 1, 'confianza', '2013-04-02 06:48:31');
INSERT INTO `votos` VALUES(155153, 'all', 1, 220521, 1, 'confianza', '2013-04-02 16:34:43');
INSERT INTO `votos` VALUES(155154, 'all', 220514, 220521, 1, 'confianza', '2013-04-02 16:11:06');
INSERT INTO `votos` VALUES(155155, 'all', 220518, 220521, 1, 'confianza', '2013-04-02 16:11:08');
INSERT INTO `votos` VALUES(155156, 'all', 220519, 220521, 1, 'confianza', '2013-04-02 16:11:10');
INSERT INTO `votos` VALUES(155157, 'all', 220520, 220521, 1, 'confianza', '2013-04-02 16:11:14');
INSERT INTO `votos` VALUES(155158, 'all', 220522, 220521, 1, 'confianza', '2013-04-02 16:11:19');
INSERT INTO `votos` VALUES(155159, 'all', 220523, 220521, 1, 'confianza', '2013-04-02 16:11:19');
INSERT INTO `votos` VALUES(155160, 'all', 220524, 220521, 1, 'confianza', '2013-04-02 16:34:22');
INSERT INTO `votos` VALUES(155161, 'prorede', 9, 1, 1, 'msg', '2013-04-02 16:58:25');
INSERT INTO `votos` VALUES(155162, 'prorede', 5, 1, 1, 'hilos', '2013-04-02 16:58:26');
INSERT INTO `votos` VALUES(155163, 'all', 220525, 220514, 1, 'confianza', '2013-04-02 22:40:55');
INSERT INTO `votos` VALUES(155164, 'all', 220524, 220514, 1, 'confianza', '2013-04-02 22:40:57');
INSERT INTO `votos` VALUES(155165, 'all', 220524, 1, 1, 'confianza', '2013-04-03 12:27:43');
INSERT INTO `votos` VALUES(155166, 'all', 220525, 1, 1, 'confianza', '2013-04-03 12:27:45');
INSERT INTO `votos` VALUES(155167, 'all', 220523, 1, 1, 'confianza', '2013-04-03 12:27:48');
INSERT INTO `votos` VALUES(155168, 'prorede', 14, 220525, 1, 'msg', '2013-04-08 17:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `vp_foros`
--

CREATE TABLE IF NOT EXISTS `vp_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `subforo_ID` smallint(5) unsigned DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','eliminado') CHARACTER SET utf8 NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT 'ciudadanos',
  `acceso_escribir_msg` varchar(900) NOT NULL DEFAULT 'ciudadanos',
  `acceso_cfg_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir_msg` varchar(900) NOT NULL DEFAULT '',
  `limite` tinyint(3) unsigned NOT NULL DEFAULT '8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`),
  KEY `time` (`time`),
  KEY `acceso_leer` (`acceso_leer`(333)),
  KEY `acceso_escribir` (`acceso_escribir`(333)),
  KEY `acceso_cfg_leer` (`acceso_cfg_leer`(333)),
  KEY `acceso_cfg_escribir` (`acceso_cfg_escribir`(333))
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `vp_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `vp_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `vp_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10213 ;

--
-- Dumping data for table `vp_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `vp_foros_msg`
--

CREATE TABLE IF NOT EXISTS `vp_foros_msg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`),
  KEY `hilo_ID` (`hilo_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98144 ;

--
-- Dumping data for table `vp_foros_msg`
--


-- --------------------------------------------------------

--
-- Table structure for table `vulcan_foros`
--

CREATE TABLE IF NOT EXISTS `vulcan_foros` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `url` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  `acceso` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `time` smallint(3) NOT NULL DEFAULT '20',
  `estado` enum('ok') NOT NULL DEFAULT 'ok',
  `acceso_msg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `acceso_leer` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'anonimos',
  `acceso_escribir` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'ciudadanos',
  `acceso_cfg_leer` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `acceso_cfg_escribir` varchar(900) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `vulcan_foros`
--


-- --------------------------------------------------------

--
-- Table structure for table `vulcan_foros_hilos`
--

CREATE TABLE IF NOT EXISTS `vulcan_foros_hilos` (
  `ID` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sub_ID` smallint(5) NOT NULL DEFAULT '0',
  `url` varchar(80) NOT NULL DEFAULT '',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_last` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '0',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `votos` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `sub_ID` (`sub_ID`),
  KEY `time_last` (`time_last`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=829 ;

--
-- Dumping data for table `vulcan_foros_hilos`
--


-- --------------------------------------------------------

--
-- Table structure for table `vulcan_foros_msg`
--

CREATE TABLE IF NOT EXISTS `vulcan_foros_msg` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `hilo_ID` mediumint(8) NOT NULL DEFAULT '0',
  `user_ID` mediumint(8) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `cargo` tinyint(3) NOT NULL DEFAULT '1',
  `estado` enum('ok','borrado') NOT NULL DEFAULT 'ok',
  `time2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `votos` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `foro_ID` (`hilo_ID`),
  KEY `time` (`time`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4808 ;

--
-- Dumping data for table `vulcan_foros_msg`
--

