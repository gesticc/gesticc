-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08-05-2014 a les 17:12:50
-- Versió del servidor: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gesticc2`
--
CREATE DATABASE IF NOT EXISTS `gesticc2` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `gesticc2`;

-- --------------------------------------------------------

--
-- Estructura de la taula `adreca`
--
-- Creació: 07-05-2014 a les 15:28:47
--

DROP TABLE IF EXISTS `adreca`;
CREATE TABLE IF NOT EXISTS `adreca` (
  `adr_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `adr_adreca` varchar(512) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom del carrer, poligon, placa... aixi com el numero associat',
  `adr_pob_id` int(12) NOT NULL COMMENT 'Poblacio',
  PRIMARY KEY (`adr_id`),
  KEY `adr_pob_id` (`adr_pob_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula d''adreces' AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `adreca`:
--   `adr_pob_id`
--       `poblacio` -> `pob_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `adreca_contacte`
--
-- Creació: 07-05-2014 a les 15:28:48
--

DROP TABLE IF EXISTS `adreca_contacte`;
CREATE TABLE IF NOT EXISTS `adreca_contacte` (
  `aco_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau primaria',
  `aco_adr_id` int(12) NOT NULL COMMENT 'Clau identificadora adreca',
  `aco_con_id` int(12) NOT NULL COMMENT 'Clau identificadora contacte',
  PRIMARY KEY (`aco_id`),
  KEY `aco_adr_id` (`aco_adr_id`),
  KEY `aco_con_id` (`aco_con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `adreca_contacte`:
--   `aco_con_id`
--       `contacte` -> `con_id`
--   `aco_adr_id`
--       `adreca` -> `adr_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `categoria`
--
-- Creació: 07-05-2014 a les 15:28:48
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `cat_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Identificador categoria',
  `cat_nom` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom de la categoria del subjecte',
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_nom` (`cat_nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula de categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `comarca`
--
-- Creació: 07-05-2014 a les 15:28:49
--

DROP TABLE IF EXISTS `comarca`;
CREATE TABLE IF NOT EXISTS `comarca` (
  `com_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `com_nom` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom de la comraca',
  PRIMARY KEY (`com_id`),
  KEY `com_id` (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula de comarques' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `comentari`
--
-- Creació: 07-05-2014 a les 15:28:49
--

DROP TABLE IF EXISTS `comentari`;
CREATE TABLE IF NOT EXISTS `comentari` (
  `cmt_id` int(12) NOT NULL AUTO_INCREMENT,
  `cmt_descripcio` varchar(2000) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`cmt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula de comentaris' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `contacte`
--
-- Creació: 07-05-2014 a les 15:28:50
--

DROP TABLE IF EXISTS `contacte`;
CREATE TABLE IF NOT EXISTS `contacte` (
  `con_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `con_nom` varchar(128) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Nom del contacte',
  `con_telefon` varchar(128) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Numero de telefon',
  `con_mobil` varchar(128) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Numero de mobil',
  `con_fax` varchar(128) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Numero de fax',
  `con_email` varchar(128) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Adreca electronica',
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula de contactes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `dades_personals_empresa`
--
-- Creació: 07-05-2014 a les 15:28:50
--

DROP TABLE IF EXISTS `dades_personals_empresa`;
CREATE TABLE IF NOT EXISTS `dades_personals_empresa` (
  `dem_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `dem_nom` varchar(256) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom empresa personal',
  `dem_nif` varchar(9) COLLATE utf8_spanish_ci NOT NULL COMMENT 'NIF empresa personal',
  `dem_adreca` varchar(256) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Adreca empresa',
  `dem_codi_postal` varchar(8) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Codi postal empresa',
  `dem_poblacio` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Poblacio empresa',
  `dem_provincia` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Provincia empresa',
  `dem_pais` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Pais empresa',
  `dem_mail` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Mail empresa',
  `dem_telefon` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Telefon empresa',
  `dem_fax` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Fax empresa',
  PRIMARY KEY (`dem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula dades personals empresa' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `empresa`
--
-- Creació: 07-05-2014 a les 15:28:51
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `emp_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `emp_rao_social` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Rao social de l''''empresa',
  `emp_web` varchar(128) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Url de la web de l''empresa',
  `emp_sub_id` int(12) NOT NULL COMMENT 'Subjecte amb les dades de l''empresa',
  `emp_cmt_id` int(12) DEFAULT NULL COMMENT 'Comentari associat',
  PRIMARY KEY (`emp_id`),
  KEY `emp_sub_id` (`emp_sub_id`),
  KEY `emp_cmt_id` (`emp_cmt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula d''empreses' AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `empresa`:
--   `emp_cmt_id`
--       `comentari` -> `cmt_id`
--   `emp_sub_id`
--       `subjecte` -> `sub_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `factura`
--
-- Creació: 07-05-2014 a les 15:28:52
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE IF NOT EXISTS `factura` (
  `fac_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `fac_data` date NOT NULL COMMENT 'Data factura',
  `fac_sub_id` int(12) NOT NULL COMMENT 'Subjecte al qual pertany la factura',
  `fac_dem_id` int(12) NOT NULL COMMENT 'Dades personals de l''empresa',
  `fac_preu_total` decimal(12,2) NOT NULL COMMENT 'Preu total de la factura',
  `fac_pagat` tinyint(1) NOT NULL COMMENT 'Boolea per saber si esta pagada o no, si no ho esta es podra modificar la factura',
  `fac_modificable` tinyint(1) NOT NULL COMMENT 'Factura modificable o no',
  `fac_tfa_id` int(12) NOT NULL COMMENT 'Tipus de factura que es',
  PRIMARY KEY (`fac_id`),
  KEY `fac_cli_id` (`fac_sub_id`),
  KEY `fac_dem` (`fac_dem_id`),
  KEY `fac_tfa_id` (`fac_tfa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula factures' AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `factura`:
--   `fac_tfa_id`
--       `tipus_factura` -> `tfa_id`
--   `fac_dem_id`
--       `dades_personals_empresa` -> `dem_id`
--   `fac_sub_id`
--       `subjecte` -> `sub_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `factura_detall`
--
-- Creació: 07-05-2014 a les 15:28:53
--

DROP TABLE IF EXISTS `factura_detall`;
CREATE TABLE IF NOT EXISTS `factura_detall` (
  `fad_fac_id` int(12) NOT NULL,
  `fad_pro_id` int(12) NOT NULL,
  `fad_quantitat` int(12) NOT NULL,
  `fad_preu_total_productes` decimal(12,2) NOT NULL,
  KEY `fad_fac_id` (`fad_fac_id`),
  KEY `fad_pro_id` (`fad_pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula detall factura';

--
-- RELACIONS DE LA TAULA `factura_detall`:
--   `fad_fac_id`
--       `factura` -> `fac_id`
--   `fad_pro_id`
--       `producte` -> `pro_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `familia`
--
-- Creació: 07-05-2014 a les 17:32:49
--

DROP TABLE IF EXISTS `familia`;
CREATE TABLE IF NOT EXISTS `familia` (
  `fam_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `fam_nom` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom familia',
  `fam_id_pare` int(12) NOT NULL COMMENT 'Identificador de la familia a la que pertany la subfamilia actual',
  PRIMARY KEY (`fam_id`),
  UNIQUE KEY `fam_nom` (`fam_nom`),
  KEY `fam_id_pare` (`fam_id_pare`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula families' AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `familia`:
--   `fam_id_pare`
--       `familia` -> `fam_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `marca`
--
-- Creació: 07-05-2014 a les 15:28:54
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `mar_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `mar_nom` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom de la marca',
  PRIMARY KEY (`mar_id`),
  UNIQUE KEY `mar_nom` (`mar_nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula marques' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `pais`
--
-- Creació: 07-05-2014 a les 15:28:55
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `pss_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `pss_nom` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom del pais',
  PRIMARY KEY (`pss_id`),
  KEY `pss_id` (`pss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula de paisos' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `permis`
--
-- Creació: 07-05-2014 a les 15:28:55
--

DROP TABLE IF EXISTS `permis`;
CREATE TABLE IF NOT EXISTS `permis` (
  `prm_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `prm_nom` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom permis',
  `prn_descripcio` varchar(256) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Descripcio del permis',
  PRIMARY KEY (`prm_id`),
  UNIQUE KEY `prm_nom` (`prm_nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula de permisos' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `persona`
--
-- Creació: 07-05-2014 a les 15:28:56
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `per_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `per_cognoms` varchar(256) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Cognoms de la persona',
  `per_sub_id` int(12) NOT NULL COMMENT 'Subjecte amb les dades de la persona',
  `per_cmt_id` int(12) DEFAULT NULL COMMENT 'Comentari associat',
  PRIMARY KEY (`per_id`),
  KEY `per_sub_id` (`per_sub_id`),
  KEY `per_cmt_id` (`per_cmt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula de persones' AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `persona`:
--   `per_cmt_id`
--       `comentari` -> `cmt_id`
--   `per_sub_id`
--       `subjecte` -> `sub_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `poblacio`
--
-- Creació: 07-05-2014 a les 15:28:57
--

DROP TABLE IF EXISTS `poblacio`;
CREATE TABLE IF NOT EXISTS `poblacio` (
  `pob_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `pob_nom` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom de la poblacio',
  `pob_codi_postal` varchar(8) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Codi postal de la poblacio',
  `pob_prv_id` int(12) DEFAULT NULL COMMENT 'Provincia a la que pertany aquesta poblacio',
  `pob_com_id` int(12) DEFAULT NULL COMMENT 'Comarca a la que pertany aquesta poblacio',
  `pob_pss_id` int(12) DEFAULT NULL COMMENT 'Pais al que pertany aquesta poblacio',
  PRIMARY KEY (`pob_id`),
  KEY `pob_prv_id` (`pob_prv_id`),
  KEY `pob_com_id` (`pob_com_id`),
  KEY `pob_pss_id` (`pob_pss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula de poblacions' AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `poblacio`:
--   `pob_com_id`
--       `comarca` -> `com_id`
--   `pob_prv_id`
--       `provincia` -> `prv_id`
--   `pob_pss_id`
--       `pais` -> `pss_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `producte`
--
-- Creació: 07-05-2014 a les 17:30:04
--

DROP TABLE IF EXISTS `producte`;
CREATE TABLE IF NOT EXISTS `producte` (
  `pro_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `pro_nom` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom producte',
  `pro_mar_id` int(12) NOT NULL COMMENT 'Marca a la que pertany producte',
  `pro_model` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Model del producte',
  `pro_sfm_id` int(12) NOT NULL COMMENT 'Subfamilia a la que pertany el producte',
  `pro_preu` decimal(12,2) NOT NULL COMMENT 'Preu del producte',
  `pro_stock` int(12) NOT NULL COMMENT 'Stock del producte',
  PRIMARY KEY (`pro_id`),
  KEY `pro_mar_id` (`pro_mar_id`),
  KEY `pro_sfm_id` (`pro_sfm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `producte`:
--   `pro_sfm_id`
--       `familia` -> `fam_id`
--   `pro_mar_id`
--       `marca` -> `mar_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `provincia`
--
-- Creació: 07-05-2014 a les 15:28:59
--

DROP TABLE IF EXISTS `provincia`;
CREATE TABLE IF NOT EXISTS `provincia` (
  `prv_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `prv_nom` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom de la provincia',
  PRIMARY KEY (`prv_id`),
  KEY `prv_id` (`prv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula de provincies' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `rol`
--
-- Creació: 07-05-2014 a les 15:28:59
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `rol_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `rol_nom` varchar(128) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom del rol',
  `rol_descripcio` varchar(256) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Descripcio del rol',
  PRIMARY KEY (`rol_id`),
  UNIQUE KEY `rol_nom` (`rol_nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taul de rols' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `rol_permis`
--
-- Creació: 07-05-2014 a les 15:29:00
--

DROP TABLE IF EXISTS `rol_permis`;
CREATE TABLE IF NOT EXISTS `rol_permis` (
  `rpr_rol_id` int(12) NOT NULL,
  `rpr_prm_id` int(12) NOT NULL,
  KEY `rpr_rol_id` (`rpr_rol_id`,`rpr_prm_id`),
  KEY `rpr_prm_id` (`rpr_prm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula rol-permis';

--
-- RELACIONS DE LA TAULA `rol_permis`:
--   `rpr_prm_id`
--       `permis` -> `prm_id`
--   `rpr_rol_id`
--       `rol` -> `rol_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `subjecte`
--
-- Creació: 07-05-2014 a les 15:29:02
--

DROP TABLE IF EXISTS `subjecte`;
CREATE TABLE IF NOT EXISTS `subjecte` (
  `sub_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `sub_nif` varchar(9) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Numero d''''identificacio de la persona o empresa',
  `sub_nom` varchar(256) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nom de la persona o empresa',
  `sub_data_baixa_mailing` date DEFAULT NULL COMMENT 'Data en que s''ha donat de baixa el mailing postal',
  `sub_data_baixa_general` date NOT NULL COMMENT 'Data de baixa general',
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `subjecte_adreca`
--
-- Creació: 07-05-2014 a les 15:29:02
--

DROP TABLE IF EXISTS `subjecte_adreca`;
CREATE TABLE IF NOT EXISTS `subjecte_adreca` (
  `sad_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau primaria',
  `sad_sub_id` int(12) NOT NULL COMMENT 'Clau identificadora subjecte',
  `sad_adr_id` int(12) NOT NULL COMMENT 'Clau identificadora adreca',
  PRIMARY KEY (`sad_id`),
  KEY `sad_sub_id` (`sad_sub_id`),
  KEY `sad_adr_id` (`sad_adr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `subjecte_adreca`:
--   `sad_adr_id`
--       `adreca` -> `adr_id`
--   `sad_sub_id`
--       `subjecte` -> `sub_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `subjecte_categoria`
--
-- Creació: 07-05-2014 a les 15:29:03
--

DROP TABLE IF EXISTS `subjecte_categoria`;
CREATE TABLE IF NOT EXISTS `subjecte_categoria` (
  `sbc_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau primària',
  `sbc_sub_id` int(12) NOT NULL COMMENT 'Identificador subjecte',
  `sbc_cat_id` int(12) NOT NULL COMMENT 'Identificador categoria',
  PRIMARY KEY (`sbc_id`),
  KEY `sbc_sub_id` (`sbc_sub_id`,`sbc_cat_id`),
  KEY `sbc_cat_id` (`sbc_cat_id`),
  KEY `sbc_sub_id_2` (`sbc_sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula subjecte categoria' AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `subjecte_categoria`:
--   `sbc_cat_id`
--       `categoria` -> `cat_id`
--   `sbc_sub_id`
--       `subjecte` -> `sub_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `tipus_factura`
--
-- Creació: 07-05-2014 a les 15:29:04
--

DROP TABLE IF EXISTS `tipus_factura`;
CREATE TABLE IF NOT EXISTS `tipus_factura` (
  `tfa_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau primaria',
  `tfa_descripcio` varchar(256) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Descripcio tipus de factura',
  PRIMARY KEY (`tfa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `tramesa`
--
-- Creació: 07-05-2014 a les 15:29:04
--

DROP TABLE IF EXISTS `tramesa`;
CREATE TABLE IF NOT EXISTS `tramesa` (
  `tra_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `tra_data` date DEFAULT NULL COMMENT 'Data en que s''ha creat la tramesa',
  `tra_titol` varchar(512) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Titol de la tramesa',
  `tra_cmt_id` int(12) DEFAULT NULL COMMENT 'Comentari',
  `tra_assumpte` varchar(256) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Assumpte de la tramesa',
  `tra_contingut` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'Contingut de la tramesa',
  PRIMARY KEY (`tra_id`),
  KEY `tra_cmt_id` (`tra_cmt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula de trameses' AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `tramesa`:
--   `tra_cmt_id`
--       `comentari` -> `cmt_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `tramesa_contacte`
--
-- Creació: 07-05-2014 a les 15:29:04
--

DROP TABLE IF EXISTS `tramesa_contacte`;
CREATE TABLE IF NOT EXISTS `tramesa_contacte` (
  `tco_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau primaria',
  `tco_tra_id` int(12) NOT NULL COMMENT 'Clau identificadora tramesa',
  `tco_con_id` int(12) NOT NULL COMMENT 'Clau identificadora contacte',
  PRIMARY KEY (`tco_id`),
  KEY `tco_tra_id` (`tco_tra_id`),
  KEY `tco_con_id` (`tco_con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

--
-- RELACIONS DE LA TAULA `tramesa_contacte`:
--   `tco_con_id`
--       `contacte` -> `con_id`
--   `tco_tra_id`
--       `tramesa` -> `tra_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `usuari`
--
-- Creació: 07-05-2014 a les 15:29:05
--

DROP TABLE IF EXISTS `usuari`;
CREATE TABLE IF NOT EXISTS `usuari` (
  `usu_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Clau principal',
  `usu_nom` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Nom usuari',
  `usu_contrassenya` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Contrassenya usuari',
  `usu_ultima_connexio` date DEFAULT NULL COMMENT 'Data última entrada de l''usuari',
  `usu_bloquejat` tinyint(1) DEFAULT NULL COMMENT 'Booleà usuari bloquejat',
  PRIMARY KEY (`usu_id`),
  UNIQUE KEY `usu_nom` (`usu_nom`),
  UNIQUE KEY `usu_nom_2` (`usu_nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula d''usuaris' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de la taula `usuari_permis`
--
-- Creació: 07-05-2014 a les 15:29:06
--

DROP TABLE IF EXISTS `usuari_permis`;
CREATE TABLE IF NOT EXISTS `usuari_permis` (
  `upr_usu_id` int(12) NOT NULL,
  `upr_prm_id` int(12) NOT NULL,
  KEY `upr_prm_id` (`upr_prm_id`),
  KEY `upr_usr_id` (`upr_usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula usuari-permis';

--
-- RELACIONS DE LA TAULA `usuari_permis`:
--   `upr_prm_id`
--       `permis` -> `prm_id`
--   `upr_usu_id`
--       `usuari` -> `usu_id`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `usuari_rol`
--
-- Creació: 07-05-2014 a les 15:29:07
--

DROP TABLE IF EXISTS `usuari_rol`;
CREATE TABLE IF NOT EXISTS `usuari_rol` (
  `uro_usu_id` int(12) NOT NULL,
  `uro_rol_id` int(12) NOT NULL,
  KEY `uro_usu_id` (`uro_usu_id`),
  KEY `uro_rol_id` (`uro_rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Taula usuari-rol';

--
-- RELACIONS DE LA TAULA `usuari_rol`:
--   `uro_rol_id`
--       `rol` -> `rol_id`
--   `uro_usu_id`
--       `usuari` -> `usu_id`
--

--
-- Restriccions per taules bolcades
--

--
-- Restriccions per la taula `adreca`
--
ALTER TABLE `adreca`
  ADD CONSTRAINT `adreca_pob_id_fk` FOREIGN KEY (`adr_pob_id`) REFERENCES `poblacio` (`pob_id`);

--
-- Restriccions per la taula `adreca_contacte`
--
ALTER TABLE `adreca_contacte`
  ADD CONSTRAINT `adreca_contacte_con_id_fk` FOREIGN KEY (`aco_con_id`) REFERENCES `contacte` (`con_id`),
  ADD CONSTRAINT `adreca_contacte_adr_id_fk` FOREIGN KEY (`aco_adr_id`) REFERENCES `adreca` (`adr_id`);

--
-- Restriccions per la taula `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_cmt_id_fk` FOREIGN KEY (`emp_cmt_id`) REFERENCES `comentari` (`cmt_id`),
  ADD CONSTRAINT `empresa_sub_id_fk` FOREIGN KEY (`emp_sub_id`) REFERENCES `subjecte` (`sub_id`);

--
-- Restriccions per la taula `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_tfa_id_fk` FOREIGN KEY (`fac_tfa_id`) REFERENCES `tipus_factura` (`tfa_id`),
  ADD CONSTRAINT `factura_dem_id_fk` FOREIGN KEY (`fac_dem_id`) REFERENCES `dades_personals_empresa` (`dem_id`),
  ADD CONSTRAINT `factura_sub_id_fk` FOREIGN KEY (`fac_sub_id`) REFERENCES `subjecte` (`sub_id`);

--
-- Restriccions per la taula `factura_detall`
--
ALTER TABLE `factura_detall`
  ADD CONSTRAINT `factura_detall_fac_id_fk` FOREIGN KEY (`fad_fac_id`) REFERENCES `factura` (`fac_id`),
  ADD CONSTRAINT `factura_detall_pro_id_fk` FOREIGN KEY (`fad_pro_id`) REFERENCES `producte` (`pro_id`);

--
-- Restriccions per la taula `familia`
--
ALTER TABLE `familia`
  ADD CONSTRAINT `familia_id_fk` FOREIGN KEY (`fam_id_pare`) REFERENCES `familia` (`fam_id`);

--
-- Restriccions per la taula `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_cmt_id_fk` FOREIGN KEY (`per_cmt_id`) REFERENCES `comentari` (`cmt_id`),
  ADD CONSTRAINT `persona_sub_id_fk` FOREIGN KEY (`per_sub_id`) REFERENCES `subjecte` (`sub_id`);

--
-- Restriccions per la taula `poblacio`
--
ALTER TABLE `poblacio`
  ADD CONSTRAINT `poblacio_com_id_fk` FOREIGN KEY (`pob_com_id`) REFERENCES `comarca` (`com_id`),
  ADD CONSTRAINT `poblacio_prv_id_fk` FOREIGN KEY (`pob_prv_id`) REFERENCES `provincia` (`prv_id`),
  ADD CONSTRAINT `poblacio_pss_id_fk` FOREIGN KEY (`pob_pss_id`) REFERENCES `pais` (`pss_id`);

--
-- Restriccions per la taula `producte`
--
ALTER TABLE `producte`
  ADD CONSTRAINT `producte_fam_id_fk` FOREIGN KEY (`pro_sfm_id`) REFERENCES `familia` (`fam_id`),
  ADD CONSTRAINT `producte_mar_id_fk` FOREIGN KEY (`pro_mar_id`) REFERENCES `marca` (`mar_id`);

--
-- Restriccions per la taula `rol_permis`
--
ALTER TABLE `rol_permis`
  ADD CONSTRAINT `rol_permis_prm_id_fk` FOREIGN KEY (`rpr_prm_id`) REFERENCES `permis` (`prm_id`),
  ADD CONSTRAINT `rol_permis_rol_id_fk` FOREIGN KEY (`rpr_rol_id`) REFERENCES `rol` (`rol_id`);

--
-- Restriccions per la taula `subjecte_adreca`
--
ALTER TABLE `subjecte_adreca`
  ADD CONSTRAINT `subjecte_adreca_sad_adr_id_fk` FOREIGN KEY (`sad_adr_id`) REFERENCES `adreca` (`adr_id`),
  ADD CONSTRAINT `subjecte_adreca_sad_sub_id_fk` FOREIGN KEY (`sad_sub_id`) REFERENCES `subjecte` (`sub_id`);

--
-- Restriccions per la taula `subjecte_categoria`
--
ALTER TABLE `subjecte_categoria`
  ADD CONSTRAINT `subjecte_categoria_cat_id_fk` FOREIGN KEY (`sbc_cat_id`) REFERENCES `categoria` (`cat_id`),
  ADD CONSTRAINT `subjecte_categoria_sub_id_fk` FOREIGN KEY (`sbc_sub_id`) REFERENCES `subjecte` (`sub_id`);

--
-- Restriccions per la taula `tramesa`
--
ALTER TABLE `tramesa`
  ADD CONSTRAINT `tramesa_cmt_id_fk` FOREIGN KEY (`tra_cmt_id`) REFERENCES `comentari` (`cmt_id`);

--
-- Restriccions per la taula `tramesa_contacte`
--
ALTER TABLE `tramesa_contacte`
  ADD CONSTRAINT `tramesa_contacte_con_id_fk` FOREIGN KEY (`tco_con_id`) REFERENCES `contacte` (`con_id`),
  ADD CONSTRAINT `tramesa_contacte_tra_id_fk` FOREIGN KEY (`tco_tra_id`) REFERENCES `tramesa` (`tra_id`);

--
-- Restriccions per la taula `usuari_permis`
--
ALTER TABLE `usuari_permis`
  ADD CONSTRAINT `usuari_permis_prm_id_fk` FOREIGN KEY (`upr_prm_id`) REFERENCES `permis` (`prm_id`),
  ADD CONSTRAINT `usuari_permis_usu_id_fk` FOREIGN KEY (`upr_usu_id`) REFERENCES `usuari` (`usu_id`);

--
-- Restriccions per la taula `usuari_rol`
--
ALTER TABLE `usuari_rol`
  ADD CONSTRAINT `usuari_rol_rol_id_fk` FOREIGN KEY (`uro_rol_id`) REFERENCES `rol` (`rol_id`),
  ADD CONSTRAINT `usuari_rol_usu_id_fk` FOREIGN KEY (`uro_usu_id`) REFERENCES `usuari` (`usu_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
