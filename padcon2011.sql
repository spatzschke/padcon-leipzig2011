-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 23. Januar 2012 um 22:48
-- Server Version: 5.1.41
-- PHP-Version: 5.3.2-1ubuntu4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `padcon2011`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `carts`
--

CREATE TABLE IF NOT EXISTS `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Angebotskörbe' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `carts`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cart_products`
--

CREATE TABLE IF NOT EXISTS `cart_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(3) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Produkt eines Warenkorbes' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `cart_products`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `catalogs`
--

CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `catalog_path` varchar(255) NOT NULL,
  `catalog_date` int(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Kataloge der Kategorien' AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `catalog_path`, `catalog_date`, `category_id`, `active`, `created`, `modified`) VALUES
(1, 'Physiotherapie und Pflege', '-', 2011, 1, 1, '2011-12-01 22:20:17', '2011-12-01 22:20:17'),
(2, 'Kranken- und Altenpflege', '-', 2011, 2, 1, '2011-12-01 22:39:15', '2011-12-01 22:39:15'),
(3, 'Intensivbereich', '-', 2011, 3, 1, '2011-12-01 23:07:13', '2011-12-01 23:07:13'),
(4, 'OP-Lagerungshilfsmittel', '-', 2011, 4, 1, '2011-12-01 23:07:34', '2011-12-01 23:07:34'),
(5, 'RÃ¶ntgen', '-', 2011, 5, 1, '2011-12-01 23:07:55', '2011-12-01 23:07:55'),
(6, 'Notfallbereich', '-', 2011, 6, 1, '2011-12-01 23:08:12', '2011-12-01 23:08:12'),
(7, 'Mutter und Kind', '-', 2011, 7, 1, '2011-12-01 23:08:28', '2011-12-01 23:08:28'),
(8, 'Funktionsdiagnostik', '-', 2011, 8, 1, '2011-12-01 23:08:45', '2011-12-01 23:08:45');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `short` varchar(20) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `color` varchar(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Produktkategorien' AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`id`, `name`, `short`, `catalog_id`, `color`, `active`, `created`, `modified`) VALUES
(1, 'Physiotherapie u. Pflege', 'physio', 0, '25408E', 1, '2011-11-04 23:52:48', '2011-11-04 23:52:56'),
(2, 'Kranken- und Altenpflege', 'pflege', 0, 'F79333', 1, '2011-11-04 23:53:28', '2011-11-04 23:53:39'),
(3, 'Intensivbereich', 'intensiv', 0, '4EB046', 1, '2011-11-04 23:54:11', '2011-11-04 23:54:11'),
(4, 'OP-Lagerungshilfsmittel', 'op', 0, 'E52925', 1, '2011-11-04 23:54:27', '2011-11-04 23:54:27'),
(5, 'RÃ¶ntgen', 'rontgen', 0, 'F0DC0F', 1, '2011-11-04 23:54:42', '2011-12-01 09:23:59'),
(6, 'Notfallbereich', 'notfall', 0, '22BECF', 1, '2011-11-04 23:54:57', '2011-11-04 23:55:02'),
(7, 'Mutter und Kind', 'baby', 0, 'F37789', 1, '2011-11-04 23:55:31', '2011-11-04 23:55:31'),
(8, 'Funktionsdiagnostik', 'funktion', 0, '99F016', 1, '2011-11-04 23:55:43', '2011-11-04 23:55:43');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(2) NOT NULL,
  `rgb` varchar(6) NOT NULL,
  `cmyk` varchar(15) NOT NULL,
  `material_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Farbe eines Materials' AUTO_INCREMENT=29 ;

--
-- Daten für Tabelle `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `rgb`, `cmyk`, `material_id`, `created`, `modified`) VALUES
(1, 'WeiÃŸ', '01', 'FFFFFF', '0,0,0,0', 4, '2011-12-10 14:41:35', '2011-12-10 14:59:33'),
(2, 'Schwarz', '02', '000000', '255,255,255,255', 4, '2011-12-10 14:41:55', '2011-12-10 14:59:40'),
(3, 'Grau', '03', '999999', '41,32,32,11', 4, '2011-12-10 14:52:41', '2011-12-10 14:59:48'),
(4, 'Braun', '04', '8f5942', '31,62,68,31', 4, '2011-12-10 14:55:54', '2011-12-10 14:59:57'),
(5, 'Blau', '05', '595f7c', '70,58,31,16', 4, '2011-12-10 14:57:23', '2011-12-10 15:00:30'),
(6, 'Rot', '06', 'b8362d', '20,88,83,11', 4, '2011-12-10 14:58:04', '2011-12-10 15:00:41'),
(7, 'Violett', '07', '804b67', '48,73,34,23', 4, '2011-12-10 15:01:24', '2011-12-10 15:01:48'),
(8, 'Pink', '08', 'cb4467', '15,84,39,4', 4, '2011-12-10 15:02:13', '2011-12-10 15:02:13'),
(9, 'Heide', '09', 'c67f8b', '20,57,31,6', 4, '2011-12-10 15:02:59', '2011-12-10 15:05:10'),
(10, 'Lila', '10', 'c67f8b', '58,72,16,2', 4, '2011-12-10 15:04:55', '2011-12-10 15:04:55'),
(11, 'TÃ¼rkis', '11', '85dbc8', '49,0,30,0', 4, '2011-12-10 15:05:43', '2011-12-10 15:05:43'),
(12, 'Gelb', '12', 'fede60', '2,11,71,0', 4, '2011-12-10 15:06:32', '2011-12-10 15:06:32'),
(13, 'Beige', '13', 'e6bf9e', '10,28,40,1', 4, '2011-12-10 15:08:51', '2011-12-10 15:08:51'),
(14, 'GrÃ¼n', '14', '6f7968', '56,37,54,24', 4, '2011-12-10 15:13:16', '2011-12-10 15:13:16'),
(15, 'Orange', '15', 'ff9e5e', '0,48,65,0', 3, '2011-12-10 15:15:21', '2011-12-10 15:15:21'),
(16, 'GrÃ¼n', '16', '47ab8c', '70,7,54,0', 3, '2011-12-10 15:16:28', '2011-12-10 15:16:28'),
(17, 'Creme', '17', 'ffdcb2', '0,17,34,0', 3, '2011-12-10 15:18:36', '2011-12-10 15:18:36'),
(18, 'Blau', '18', '4795c4', '71,30,10,1', 3, '2011-12-10 15:19:47', '2011-12-10 15:19:47'),
(19, 'Dunkelblau', '19', '485883', '80,64,26,9', 5, '2011-12-10 15:21:03', '2011-12-10 15:21:03'),
(20, 'Rot', '20', 'b9362c', '20,88,84,10', 6, '2011-12-10 15:21:55', '2011-12-10 15:21:55'),
(21, 'Blau', '21', '4795c4', '71,30,10,1', 6, '2011-12-10 15:22:37', '2011-12-10 15:22:37'),
(22, 'Orange', '22', 'ff9e5f', '0,48,64,0', 6, '2011-12-10 15:23:09', '2011-12-10 15:23:09'),
(23, 'Gelb', '23', 'fedf60', '2,11,71,0', 6, '2011-12-10 15:23:55', '2011-12-10 15:23:55'),
(24, 'Beige', '24', 'e9c5a4', '9,25,38,1', 2, '2011-12-10 15:25:31', '2011-12-10 15:25:31'),
(25, 'Schwarz', '25', '000000', '0,0,0,0', 1, '2011-12-10 15:26:18', '2011-12-10 15:26:18'),
(26, 'WeiÃŸ', '26', 'FFFFFF', '255,255,255,255', 1, '2011-12-10 15:26:44', '2011-12-10 15:26:44'),
(27, 'Grau/WeiÃŸ Dessin Prinzessin', '27', '989c98', '42,30,35,10', 1, '2011-12-10 15:28:03', '2011-12-10 15:28:03'),
(28, 'WeiÃŸ/Rot Dessin Prinzessin', '28', 'a8a2a6', '36,32,27,8', 1, '2011-12-10 15:28:53', '2011-12-10 15:28:53');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `color` int(2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Bilder der Produkte' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `images`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Materialen der Produkte' AUTO_INCREMENT=8 ;

--
-- Daten für Tabelle `materials`
--

INSERT INTO `materials` (`id`, `name`, `image_path`, `created`, `modified`) VALUES
(1, 'Baumwolle', '', '2011-11-01 23:19:43', '2011-11-01 23:20:04'),
(2, 'Frottee', '', '2011-11-01 23:19:56', '2011-11-01 23:19:56'),
(3, 'Hypro-Elastic', '', '2011-11-01 23:20:16', '2011-11-01 23:20:16'),
(4, 'Kunstleder', '', '2011-11-01 23:20:24', '2011-11-01 23:20:24'),
(5, 'PU-rutschhemmend', '', '2011-11-01 23:20:44', '2011-11-05 11:01:18'),
(6, 'PUR-Haut beschichtet', '', '2011-11-01 23:20:52', '2011-11-30 09:28:13'),
(7, '', '', '2011-11-30 09:47:07', '2011-11-30 09:47:07');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `metas`
--

CREATE TABLE IF NOT EXISTS `metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keyword` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Metadaten einer Seite' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `metas`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentParagraph` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Newseinträge der Startseite' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `news`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Angebot' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `offers`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `partner_logo` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Partner' AUTO_INCREMENT=33 ;

--
-- Daten für Tabelle `partners`
--

INSERT INTO `partners` (`id`, `partner_category_id`, `name`, `description`, `url`, `partner_logo`, `active`, `created`, `modified`) VALUES
(1, 1, 'GEFA Hygiene-Systeme GmbH & Co. KG', 'Lagerungshilfsmittel mit FÃ¼llung aus Gewebefasern, Lagerungshilfsmittel mit FÃ¼llung aus Styropor-Kugeln, GEFATEX-HygieneschutzbezÃ¼ge', 'http://gefatex.de', '-', 1, '2011-12-09 11:32:29', '2011-12-09 11:35:51'),
(2, 1, 'Theraline', 'Lagerungshilfsmittel mit FÃ¼llung aus Styropor-Kugeln', 'http://theraline.de', '-', 1, '2011-12-09 11:33:29', '2011-12-09 11:33:29'),
(3, 1, 'LÃ¼ck GmbH & Co. KG', 'Lagerungshilfsmittel mit FÃ¼llung aus LuftzellenstÃ¤bchen(Rhombo-fill), Lagerungshilfsmittel mit FÃ¼llung aus LuftzellenstÃ¤bchen mit Polsterperlen (Rhombo-med)', 'http://lueck.de/de/index.html', '-', 1, '2011-12-12 10:14:52', '2011-12-12 10:14:52'),
(4, 1, 'H. Brinkhaus GmbH & Co. KG', 'Lagerungshilfsmittel mit Polysticks (PolyetherstÃ¤bchen)', 'http://brinkhaus.de', '-', 1, '2011-12-12 10:15:45', '2011-12-12 10:15:45'),
(5, 1, 'Klaus Hock Freudenstadt', 'Lagerungshilfsmittel mit FÃ¼llung aus Sand, Lagerungshilfsmittel mit Schaumstoffkern', 'http://hock-freudenstadt.de', '-', 1, '2011-12-12 10:16:44', '2011-12-12 10:16:44'),
(6, 1, 'dr. paul koch GmbH', 'Lagerungsschienen', 'http://dr-koch.de', '-', 1, '2011-12-12 10:18:10', '2011-12-12 10:18:10'),
(7, 1, 'TEMPUR Deutschland GmbH', 'Lagerungshilfsmittel aus viskoelastischen SchÃ¤umen', 'http://tempur.de', '-', 1, '2011-12-12 10:18:55', '2011-12-12 10:18:55'),
(8, 1, 'Novacare GmbH', 'Anti Dekubitus Hilfsmittel', 'http://novacare.org', '-', 1, '2011-12-12 10:20:53', '2011-12-12 10:20:53'),
(9, 2, 'Petermann GmbH', 'Hilfsmittel fÃ¼r immobile Menschen', 'http://pm-med.de', '-', 1, '2011-12-12 10:22:00', '2011-12-12 10:22:00'),
(10, 2, 'Arjo Systeme fÃ¼r Rehabilitation GmbH', 'Hilfsmittel fÃ¼r bariatrische PflegebedÃ¼rftige, Medizinische Betten, Heben & Transfers', 'http://arjo.com/de/', '-', 1, '2011-12-12 10:24:18', '2011-12-12 10:24:18'),
(11, 3, 'K.H. Dewert GmbH', 'Praxis- und Therapieliegen fÃ¼r KrankenhÃ¤user, Ã„rzte und Therapeuten', 'http://khdewert.de/?L=0', '-', 1, '2011-12-12 10:26:25', '2011-12-12 10:26:25'),
(12, 3, 'AGA SanitÃ¤tsartikel GmbH', 'Medizinisches Mobiliar', 'http://agasan.com', '-', 1, '2011-12-12 10:27:11', '2011-12-12 10:27:11'),
(13, 3, 'Merivaara WAN GmbH', '-', 'http://wan-gmbh.de', '-', 1, '2011-12-12 10:29:26', '2011-12-12 10:29:26'),
(14, 3, ' MEYRA-ORTOPEDIA Vertriebsgesellschaft mbH', 'RollstÃ¼hle, Orthethik, Bandagen, Scooter, Reha und Pflege', 'http://meyra.de', '-', 1, '2011-12-12 10:32:01', '2011-12-12 10:32:01'),
(15, 3, 'Hanse-MEDIZINTECHNIK P. HETTMER GMBH', 'Mobilisations- und ReharollstÃ¼hle, Dekubitus- Therapie und -Prophylaxe, Duschwagen und Duschmatratzen', 'http://hanse-medizintechnik.de', '-', 1, '2011-12-12 10:33:42', '2011-12-12 10:33:42'),
(16, 3, 'Petermann GmbH', 'Hilfsmittel fÃ¼r immobile Menschen', 'http://pm-med.de', '-', 1, '2011-12-12 10:34:16', '2011-12-12 10:34:16'),
(17, 3, 'MASSUNDA Dieter WeiÃŸbach MEDIZINTECHNIK', 'Massage- und Praxisliegen', 'http://massunda.com/de/index.htm', '-', 1, '2011-12-12 10:36:43', '2011-12-12 10:36:43'),
(18, 3, 'HAEBERLE GmbH & Co. KG', 'GerÃ¤tewagensysteme', 'http://haeberle-med.de', '-', 1, '2011-12-12 10:38:05', '2011-12-12 10:38:05'),
(19, 4, 'DKG Dannewitz GmbH', 'Industrie- und Medizintechnik', 'http://dannewitz.de', '-', 1, '2011-12-12 10:39:27', '2011-12-12 10:39:27'),
(20, 4, 'MGB Endoskopische GerÃ¤te Berlin GmbH', 'KomÂ­plettÂ­lÃ¶sungen fÃ¼r die Minimal Invasive Chirurgie (MIC) - Fertigung von starren EnÂ­doskopen, Video-ObÂ­jektiven', 'http://medtecnet.de/cms/component/k2/item/3-mgb-endoskopische-gerÃ¤te-gmbh-berlin', '-', 1, '2011-12-12 10:41:39', '2011-12-12 10:41:39'),
(21, 4, 'H. Hauptner & Richard Herberholz GmbH & Co. KG', 'VeterinÃ¤rinstrumente', 'http://hauptner-herberholz.de/deutsch/index.html', '-', 1, '2011-12-12 10:43:03', '2011-12-12 10:43:03'),
(22, 4, 'METEK OHG', 'Klinikbedarf, Praxiseinrichtungen, Sonderanfertigungen fÃ¼r Rehatechnik, Equipment fÃ¼r ReinrÃ¤ume und allgemeiner Edelstahlbau', 'http://metek-edelstahl.de', '-', 1, '2011-12-12 10:47:21', '2011-12-12 10:47:21'),
(23, 4, 'TEKNO-MEDICAL', 'Instrumenten fÃ¼r die allgemeine Chirurgie, Endoskopie, Elektro Chirurgie, HNO und Dental', 'http://tekno-medical.com/Unternehmen.2.0.html', '-', 1, '2011-12-12 10:49:07', '2011-12-12 10:49:07'),
(24, 5, ' suprima GmbH', 'HÃ¼ftschutz, Inkontinenzprodukte, PflegewÃ¤sche, Bettschutz und Sitzauflagen', 'http://suprima-gmbh.de', '-', 1, '2011-12-12 10:50:46', '2011-12-12 10:50:46'),
(25, 5, 'SEGUFIX-Bandagen Das Humane System GmbH & Co. KG', 'Fixier-, Bandagen- und Transportsysteme', 'http://segufix.de/segufix/auswahl.htm', '-', 1, '2011-12-12 10:52:08', '2011-12-12 10:52:08'),
(26, 5, 'SchÃ¼rr Profi-Shoes', 'Berufs-, Pflege- und Sicherheitsschuhe', 'http://schuerr.de/xist4c/web/berufsschuhe-sicherheitsschuhe-esd_id_762_.htm', '-', 1, '2011-12-12 10:53:20', '2011-12-12 10:53:20'),
(27, 6, 'HEINE OPTOTECHNIK GmbH & Co. KG', 'Diagnostik-Instrumente', 'http://heine.com/ger/', '-', 1, '2011-12-12 10:55:14', '2011-12-12 10:55:14'),
(28, 6, 'seca GmbH & Co. KG', 'PrÃ¤zisionswaagen und MessgerÃ¤te fÃ¼r den medizinischen Bereich', 'http://seca.com/deutsch/de/startseite/', '-', 1, '2011-12-12 10:56:56', '2011-12-12 10:56:56'),
(29, 6, 'Soehnle Professional GmbH & Co. KG', 'Mess- und WÃ¤getechnik', 'http://soehnle-professional.com', '-', 1, '2011-12-12 10:58:11', '2011-12-12 10:58:11'),
(30, 6, 'ADE Medizinische Waagen', 'Waagen und MessgerÃ¤te fÃ¼r Medizin und Pflege', 'http://ade-germany.de', '-', 1, '2011-12-12 10:59:04', '2011-12-12 10:59:04'),
(31, 6, 'MELAG OHG', 'Produkte fÃ¼r die Praxishygiene: Autoklaven, Sterilgutlagerung, HeiÃŸluft-Sterilisatoren, BrutschrÃ¤nke', 'http://melag.de', '-', 1, '2011-12-12 11:02:38', '2011-12-12 11:02:38'),
(32, 6, 'Dr. Mach GmbH & Co. KG', 'OP-Lichtsysteme und RÃ¶ntgenbildbetrachter', 'http://dr-mach.de/www/cms/front_content.php?idcat=4&lang=1', '-', 1, '2011-12-12 11:06:47', '2011-12-12 11:06:47');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `partner_categories`
--

CREATE TABLE IF NOT EXISTS `partner_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `short` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Partnerkategorien' AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `partner_categories`
--

INSERT INTO `partner_categories` (`id`, `name`, `short`, `image_path`, `active`, `created`, `modified`) VALUES
(1, 'Hilfsmittel fÃ¼r Patientenlagerung ', 'lagerung', '-', 1, '2011-12-01 01:41:43', '2011-12-01 01:41:43'),
(2, 'Hilfsmittel fÃ¼r Patiententransfer ', 'transfer', '-', 1, '2011-12-01 01:41:55', '2011-12-01 01:41:55'),
(3, 'Hilfsmittel fÃ¼r den Patiententransport', 'transport', '-', 1, '2011-12-01 01:42:06', '2011-12-01 01:42:06'),
(4, 'Medizinprodukte aus Edelstahl ', 'stahl', '-', 1, '2011-12-01 01:42:15', '2011-12-01 01:42:15'),
(5, 'Medizinprodukte fÃ¼r die Pflege ', 'medizinpflege', '-', 1, '2011-12-01 01:42:25', '2011-12-01 01:42:25'),
(6, 'Medizintechnik ', 'technik', '-', 1, '2011-12-01 01:42:32', '2011-12-01 01:42:32');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `product_number` varchar(10) NOT NULL,
  `featurelist` text NOT NULL,
  `material_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `size_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `new` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Produkt' AUTO_INCREMENT=569 ;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `product_number`, `featurelist`, `material_id`, `price`, `size_id`, `active`, `new`, `created`, `modified`) VALUES
(1, 4, 'OP-Tischauflage 96', '', '00100', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 102, 8, 1, 0, '2010-02-10 09:50:47', '2011-11-07 10:11:00'),
(2, 4, 'OP-Tischauflage 190', '', '00101', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 193, 9, 1, 0, '2010-02-10 09:52:14', '2011-11-07 10:10:02'),
(3, 4, 'OP-Tischauflage fÃ¼r Extentionstisch ', '-', '00102R', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>Unterseite: PU-rutschhemmend, Farbe dunkelblau\r\n<li>mit Klettverschluss</li>\r\n', 3, 107, 10, 1, 0, '2010-02-10 09:56:13', '2011-11-07 10:12:35'),
(4, 4, 'OP-Tischauflage fÃ¼r Extentionstisch', '-', '00103R', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>Unterseite: PU-rutschhemmend, Farbe dunkelblau</li>\r\n<li>mit Klettverschluss</li>', 3, 123, 11, 1, 0, '2010-02-10 09:57:54', '2011-11-07 10:13:27'),
(5, 4, 'OP-Tischauflage, 3-teilig', '', '00110', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss und Klettfixierung</li>\r\n<li>1 Auflage MaÃŸe: 96x50x2,5cm</li>\r\n<li>2 Auflagen MaÃŸe: 84x24x2,5cm</li>', 3, 211, 109, 1, 0, '2010-05-06 10:55:16', '2011-11-07 10:22:17'),
(6, 4, 'Gyn-OP-Tischauflage', '', '00130', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 128, 12, 1, 0, '2010-02-10 10:02:03', '2011-11-07 10:22:47'),
(7, 4, 'OP-Bauchlagerungsset N, 3-teilig', '', '00141', '<li><u>Ober- und Unterteil:</u> Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>MaÃŸe: 31x50x12cm</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li><u>Knielagerungsplatte:</u> viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>MaÃŸe: 25x50x2,5cm</li>\r\n<li>mit Klettverschluss</li>', 3, 515, 109, 1, 0, '2010-02-10 10:07:22', '2011-11-07 10:30:57'),
(8, 4, 'Seitenlagerungskissen', '', '00155', '<li>viskoelastischer Schaum/Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 355, 13, 1, 0, '2010-02-10 10:10:50', '2011-11-07 10:33:03'),
(9, 4, 'Thorax-Lagerungskissen', '', '00160', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>\r\n', 3, 156, 15, 1, 0, '2010-02-10 10:12:06', '2011-11-07 12:01:32'),
(10, 4, 'Armauflage', '', '00170', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 27, 18, 1, 0, '2010-04-15 11:25:30', '2011-11-07 12:03:43'),
(11, 4, 'Armauflage F', '', '00171', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss und 1x Klettfixierung</li>', 3, 28, 18, 1, 0, '2010-02-10 10:14:45', '2011-11-07 12:07:15'),
(12, 4, 'Armauflage FF', '', '00173', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss und 2x Klettfixierung</li>', 3, 33, 18, 1, 0, '2010-05-03 10:02:35', '2011-11-07 12:07:39'),
(13, 4, 'Armauflage FL', '', '00172', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss, Klettfixierung und Lasche</li>', 3, 30, 18, 1, 0, '2010-02-10 10:17:30', '2011-11-07 12:08:08'),
(14, 4, 'Armauflage FL', '', '00175', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss, Klettfixierung und Lasche</li>', 3, 38, 19, 1, 0, '2010-02-10 10:18:54', '2011-11-07 12:08:35'),
(15, 4, 'Armauflage FFL', '', '00174', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss, 2x Klettfixierung und Lasche</li>', 3, 35, 18, 1, 0, '2010-04-15 11:26:10', '2011-11-07 12:09:12'),
(16, 4, 'Auflagen fÃ¼r GÃ¶belsche Beinhalterungen (Paar)', '', '00180', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss, Klettfixierung und Lasche</li>', 3, 80, 20, 1, 0, '2010-02-10 10:23:14', '2011-11-07 12:10:20'),
(17, 4, 'Auflagen fÃ¼r GÃ¶belsche Beinhalterungen (Paar)', '', '00181', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss, Klettfixierung und Lasche</li>', 3, 89, 21, 1, 0, '2010-02-10 10:24:38', '2011-11-07 12:11:41'),
(18, 4, 'Lagerungskissen', '', '00190', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 17, 23, 1, 0, '2010-03-29 10:23:40', '2011-11-07 12:12:30'),
(19, 4, 'Lagerungskissen', '', '00191', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 13, 26, 1, 0, '2010-03-29 10:24:11', '2011-11-07 12:13:29'),
(20, 4, 'Lagerungskissen', '', '00192', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 14, 24, 1, 0, '2010-03-29 10:24:43', '2011-11-07 12:14:00'),
(21, 4, 'Lagerungskissen', '', '00193', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 19, 27, 1, 0, '2010-03-29 10:25:40', '2011-11-07 12:14:33'),
(22, 4, 'Nacken- und Bauchlagerungskissen, elypsenfÃ¶rmig', '', '00198', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 37, 1, 0, '2010-02-12 11:49:23', '2011-11-08 11:09:10'),
(23, 4, 'Lagerungskissen oval', '', '00199', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 40, 37, 1, 0, '2010-02-12 11:52:40', '2011-11-08 11:10:19'),
(24, 4, 'Nasenkissen, klein', '', '00200', '<li>Schaumstoff RG 35/viskoelastischer Schaum</li>\r\n<li>mit Klettverschluss</li>', 3, 46, 69, 1, 0, '2010-05-06 10:55:41', '2011-11-08 11:11:25'),
(25, 4, 'Nasenkissen, groÃŸ', '', '00210', '<li>Schaumstoff RG 35/viskoelastischer Schaum</li>\r\n<li>mit Klettverschluss</li>', 3, 74, 70, 1, 0, '2010-02-12 11:54:47', '2011-11-08 11:12:06'),
(26, 4, 'Rolle', '', '00220', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 38, 1, 0, '2010-02-12 11:55:59', '2011-11-08 11:12:35'),
(27, 4, 'Rolle', '', '00221', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 12, 39, 1, 0, '2010-02-12 11:56:46', '2011-11-08 11:12:57'),
(28, 4, 'Rolle', '', '00222', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 25, 40, 1, 0, '2010-02-12 11:57:25', '2011-11-08 11:13:18'),
(29, 4, 'Rolle', '', '00223', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 31, 41, 1, 0, '2010-02-12 11:58:04', '2011-11-08 11:13:39'),
(30, 4, 'Rolle', '', '00224', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 27, 42, 1, 0, '2010-02-12 11:58:41', '2011-11-08 11:14:05'),
(31, 4, 'Halbrolle', '', '00230', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 54, 45, 1, 0, '2010-02-12 11:59:30', '2011-11-08 11:15:31'),
(32, 4, 'Halbrolle', '', '00231', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 71, 46, 1, 0, '2010-02-12 12:00:03', '2011-11-08 11:17:05'),
(33, 4, 'Dreiviertelrolle', '', '00240', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 30, 50, 1, 0, '2010-02-12 12:00:53', '2011-11-08 11:18:43'),
(34, 4, 'Dreiviertelrolle', '', '00241', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 55, 51, 1, 0, '2010-02-12 12:01:36', '2011-11-08 11:19:24'),
(35, 4, 'Dreiviertelrolle', '', '00242', '<li>viskoelastischer Schaum/Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 39, 110, 1, 0, '2010-02-12 12:02:37', '2011-11-08 11:22:57'),
(36, 4, 'Kopf- und Armlagerungskissen', '', '00250', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 47, 52, 1, 0, '2010-02-12 12:03:35', '2011-11-08 11:24:44'),
(37, 4, 'Kopf- und Armlagerungskeil', '', '00255', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 47, 52, 1, 0, '2010-02-12 12:04:29', '2011-11-08 11:26:14'),
(38, 4, 'Kopfring', '', '00260', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 46, 54, 1, 0, '2010-02-12 12:05:19', '2011-11-08 11:26:39'),
(39, 4, 'Kopfring mit Rundplatte', '', '00265', '<li>2-teilig</li>\r\n<li>Schamustoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 93, 55, 1, 0, '2010-02-12 12:07:06', '2011-11-08 11:27:36'),
(40, 4, 'Kopfring mit Rundplatte', '', '00266', '<li>2-teilig</li>\r\n<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 120, 56, 1, 0, '2010-03-04 12:32:02', '2011-11-08 11:28:24'),
(41, 4, 'OP-Kopfkissen', '', '00270', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 52, 57, 1, 0, '2010-02-12 12:09:52', '2011-11-23 09:25:58'),
(42, 4, 'OP-Kopfkissen 50', '', '00271', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 104, 58, 1, 0, '2010-02-12 12:11:00', '2011-11-23 09:26:24'),
(43, 4, 'Nacken- und Fersenkissen 25', '', '00275', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 61, 1, 0, '2010-02-12 12:12:01', '2011-11-23 09:27:09'),
(44, 4, 'Nacken- und Fersenkissen 50', '', '00276', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 83, 62, 1, 0, '2010-02-12 12:12:52', '2011-11-23 09:27:39'),
(45, 4, 'ITS-Kopfkissen', '', '00280', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 57, 64, 1, 0, '2010-02-12 12:13:38', '2011-11-23 09:29:39'),
(46, 4, 'Kopfkissen', '', '00282', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 37, 65, 1, 0, '2010-02-12 12:15:10', '2011-11-23 09:30:22'),
(47, 4, 'Kopfkissen', '', '00283', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 24, 66, 1, 0, '2010-02-12 12:16:10', '2011-11-23 09:46:09'),
(48, 4, 'Beinkissen', '', '00285', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 82, 71, 1, 0, '2010-02-12 12:17:00', '2011-11-23 09:50:01'),
(49, 4, 'Fersenpolster, klein', '', '00288', '<li>Schaumstoff RG 56 mit Mulde</li>\r\n<li>mit Klettverschluss</li>', 3, 27, 72, 1, 0, '2010-02-12 12:17:58', '2011-11-23 09:52:23'),
(50, 4, 'Fersenkissen 14', '', '00289', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 35, 73, 1, 0, '2010-02-12 12:19:01', '2011-11-23 09:52:51'),
(51, 4, 'Fersenkissen 25', '', '00290', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 74, 1, 0, '2010-02-12 12:19:54', '2011-11-23 09:53:23'),
(52, 4, 'Fersenkissen F', '', '00291', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss und Klettfixierung</li>', 3, 51, 74, 1, 0, '2010-02-12 12:20:48', '2011-11-23 09:53:58'),
(53, 4, 'Fersenkissen 50', '', '00292', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 71, 75, 1, 0, '2010-02-12 12:21:35', '2011-11-23 09:54:27'),
(54, 4, 'Fersenkissen 50ST', '', '00293', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss und Mittelsteg</li>', 3, 82, 76, 1, 0, '2010-02-12 12:22:34', '2011-11-23 09:54:56'),
(55, 4, 'BeckenstÃ¼tzenpolster', '', '00300', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss, Klettfixierung und Einstecklasche</li>', 3, 21, 81, 1, 0, '2010-02-12 12:23:56', '2011-11-23 09:55:58'),
(56, 4, 'Armmanschette', '', '00310', '<li>Schaumstoff RG 20</li>\r\n<li>mit Klettverschluss</li>', 4, 21, 77, 1, 0, '2010-02-12 12:24:53', '2011-11-23 09:56:36'),
(57, 4, 'Haltegurt', '', '00320/1', '<li>AuÃŸenseite: Starkfolie, Farbe grau</li>\r\n<li>mit Klett/Flausch</li>', 3, 21, 82, 1, 0, '2010-02-12 12:26:12', '2011-11-23 10:00:25'),
(58, 4, 'Haltegurt', '', '00320/2', '<li>AuÃŸenseite: Starkfolie, Farbe grau</li>\r\n<li>mit Klett/Flausch</li>', 3, 27, 83, 1, 0, '2010-02-12 12:27:17', '2011-11-23 10:01:07'),
(59, 4, 'Haltegurt, gepolstert', '', '00320P/1', '<li>Schaumstoff RG 30 zur Polsterung</li>\r\n<li>AuÃŸenseite: Starkfolie, Farbe grau</li>\r\n<li>mit Klett/Flausch</li>', 3, 26, 82, 1, 0, '2010-02-12 12:28:20', '2011-11-23 10:02:50'),
(60, 4, 'RÃ¼ckenstÃ¼tzkissen', '', '00330', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 64, 97, 1, 0, '2010-02-12 12:29:10', '2011-11-23 10:05:27'),
(61, 4, 'Beinhaltegurt', '', '00340', '<li>Schaumstoff RG 30</li>\r\n<li>AuÃŸenseite: Starkfolie, Farbe grau</li>\r\n<li>mit Klett/Flausch</li>', 3, 32, 84, 1, 0, '2010-02-12 12:30:49', '2011-11-23 10:06:33'),
(62, 4, 'Leder-Fixiergurt', '', '00350', '<li>gepolstert mit Schaumstoff RG 30</li>\r\n<li>Bezug PolsterhÃ¼lse: Kunstleder</li>\r\n<li>50mm Rundschnalle</li>\r\n<li>Zaumleder gewachst</li>', 4, 141, 85, 1, 0, '2010-02-12 12:32:46', '2011-11-23 10:08:24'),
(63, 4, 'Leder-Fixiergurt', '', '00351', '<li>gepolstert mit Schaumstoff RG 30</li>\r\n<li>Bezug PolsterhÃ¼lse: Kunstleder</li>\r\n<li>50mm Rundschnalle</li>\r\n<li>Zaumleder gewachst</li>', 4, 204, 86, 1, 0, '2010-02-12 12:33:51', '2011-11-23 10:09:41'),
(64, 4, 'Fixierungsgurt 65N', '', '00360N', '<li>2-teilig</li>\r\n<li>Abstandsmaterial</li>\r\n<li>mit Klett/Flausch</li>', 3, 93, 107, 1, 0, '2010-02-12 12:35:03', '2011-11-23 10:23:01'),
(65, 4, 'Fixierungsgurt 65N', '', '00361N', '<li>2-teilig</li>\r\n<li>Abstandsmaterial</li>\r\n<li>mit Klett/Flausch</li>', 3, 121, 108, 1, 0, '2010-02-12 12:35:46', '2011-11-23 10:23:46'),
(66, 4, 'Intubationskissen W, groÃŸ', '', '00370', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 91, 92, 1, 0, '2010-02-12 12:36:50', '2011-11-23 10:24:48'),
(67, 4, 'Intubationskissen W, klein', '', '00371', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 55, 93, 1, 0, '2010-02-12 12:38:36', '2011-11-23 10:25:14'),
(68, 4, 'Knie- und FuÃŸauflage', '', '00375', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 95, 95, 1, 0, '2010-02-12 12:39:44', '2011-11-23 10:26:09'),
(69, 4, 'Knie- und FuÃŸauflage', '', '00376', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 198, 96, 1, 0, '2010-02-12 12:41:03', '2011-11-23 10:26:45'),
(70, 4, 'Ulnariskissen, trapezfÃ¶rmig', '', '00400', '<li>viskoelastischer Schaum</li>\r\n<li>mit Klettfixierung</li>', 3, 32, 79, 1, 0, '2010-02-12 12:42:11', '2011-11-23 09:58:48'),
(71, 4, 'Ulnariskissen, trapezfÃ¶rmig', '', '00401', '<li>viskoelastischer Schauml</li>\r\n<li>mit Klettfixierung</li>', 3, 48, 80, 1, 0, '2010-02-12 12:43:09', '2011-11-23 09:59:29'),
(72, 4, 'Kopf-Lagerungspolster abgeschrÃ¤gt', '', '00450', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 74, 87, 1, 0, '2010-02-12 12:44:24', '2011-11-23 10:27:36'),
(73, 4, 'Lagerungspolster fÃ¼r OP-KopfstÃ¼tze', '', '00460', '<li>Schaumstoff RG 50</li>\r\n<li>Unterseite: Starkfolie, Farbe grau</li>\r\n<li>mit Einstecklasche und 2x Klettfixierung</li>', 3, 95, 88, 1, 0, '2010-02-12 12:45:58', '2011-11-23 10:30:02'),
(74, 4, 'SchulterstÃ¼tzkissen', '', '00470', '<li>Neopolen/Schaumstoff RG 50/Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 61, 94, 1, 0, '2010-02-12 12:47:25', '2011-11-23 10:31:19'),
(75, 4, 'Gesichtskissen', '', '00500', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 136, 89, 1, 0, '2010-02-12 12:48:26', '2011-11-23 10:32:03'),
(76, 4, 'Gesichtskissen 4', '', '00501', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss und 4 Ausbuchtungen</li>', 3, 141, 89, 1, 0, '2010-02-12 12:50:00', '2011-11-23 10:32:46'),
(78, 4, 'Tunnelkissen', '', '00530', '<li>Neopolen/Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 100, 98, 1, 0, '2010-02-12 12:52:06', '2011-11-23 10:34:14'),
(79, 4, 'Tunnelkissen', '', '00531', '<li>Neopolen/Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 143, 99, 1, 0, '2010-02-12 12:53:11', '2011-11-23 10:35:02'),
(80, 4, 'Kopfseitenlagerungskissen', '', '01500', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 116, 90, 1, 0, '2010-02-12 12:54:22', '2011-11-23 10:36:35'),
(81, 4, 'Kopfseitenlagerungskissen F', '', '01501', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸtverschluss</li>', 3, 104, 91, 1, 0, '2010-02-12 12:55:15', '2011-11-23 10:37:12'),
(82, 4, 'Lagerungskissen-Set, 7-teilig', '', '01090', '<li>Schaumstoff RG 30</li>\r\n<li>mit und ohne ReiÃŸverschluss</li>\r\n<li>flache Kissen sind vollstÃ¤ndig vernÃ¤ht</li>\r\n<li><u>bestehend aus:</u> 1x 20x20x5cm, 1x 20x20x10cm, 1x 35x20x10cm, 1x 35x20x3cm, 1x 35x35x3cm, 1x 50x35x3cm, 1x 50x50x3cm</li>', 4, 93, 109, 1, 0, '2010-02-12 13:00:13', '2011-11-23 10:42:24'),
(83, 4, 'Baby-Lagerungsrolle', '', '07710', '<li>Mikroperlen</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 16, 100, 1, 0, '2010-02-12 13:02:16', '2011-11-23 10:43:54'),
(84, 4, 'Baby-Lagerungsring', '', '07720', '<li>Mikroperlen</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 19, 101, 1, 0, '2010-02-12 13:03:40', '2011-11-23 10:44:35'),
(85, 4, 'Baby-Lagerungsring', '', '07721', '<li>Mikroperlen</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 25, 102, 1, 0, '2010-02-12 13:04:57', '2011-11-23 10:45:11'),
(86, 4, 'Baby-LagerungshÃ¶rnchen', '', '07730', '<li>Mikroperlen</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 17, 101, 1, 0, '2010-02-12 13:06:00', '2011-11-23 10:45:52'),
(87, 4, 'Baby-LagerungshÃ¶rnchen', '', '07731', '<li>Mikroperlen</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 23, 102, 1, 0, '2010-02-12 13:07:03', '2011-11-23 10:46:27'),
(91, 4, 'Injektionshandrolle', '', '00228', '<li>Neopolen/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 12, 43, 1, 1, '2010-02-12 13:13:47', '2011-11-08 11:14:57'),
(92, 4, 'OP-Kopfkissen N', '', '00273', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 54, 59, 1, 1, '2010-02-12 13:15:01', '2011-11-23 09:28:11'),
(93, 4, 'Armhaltemanschette', '', '00315', '<li>AuÃŸenseite: Starkfolie, Farbe grau</li>\r\n<li>mit Klett/Flausch</li>', 3, 62, 78, 1, 0, '2010-04-19 11:04:19', '2011-11-23 09:57:41'),
(94, 4, 'Kopfkissen', '', '01050', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 4, 12, 67, 1, 0, '2010-02-12 13:17:25', '2011-11-23 09:50:54'),
(95, 4, 'Kopfkissen', '', '01051', '<li>Schaumstoff RG 30l</li>\r\n<li>mit Klettverschluss</li>', 4, 15, 68, 1, 0, '2010-02-12 13:18:26', '2011-11-23 09:51:25'),
(96, 5, 'RÃ¶ntgenset, 10-teilig', '', '06000', '<li>Schaumstoff RG 30</li>\r\n<li><u>bestehend aus:</u> 1 Rundscheibe (PD 06001), 1 Ringplatte (PD 06003), 1 Rolle (PD 06004), 1 Rechteck (PD 06006), 2 Dreiecke (PD 06010), 2 Dreiecke (PD 06012), 2 Keile (PD 06016)</li>', 6, 123, 109, 1, 0, '2010-05-03 09:58:40', '2011-11-30 09:20:12'),
(97, 5, 'Rundscheibe', '', '06001', '<li>Schaumstoff RG 30</li>', 6, 13, 111, 1, 0, '2010-03-08 11:51:26', '2011-11-30 09:20:36'),
(98, 5, 'Rolle', '', '06004', '<li>Schaumstoff RG 30</li>', 6, 11, 112, 1, 0, '2010-03-08 12:01:53', '2011-11-30 09:22:39'),
(99, 5, 'Rolle', '', '06005', '<li>Schaumstoff RG 30</li>', 6, 19, 113, 1, 0, '2010-03-08 12:01:39', '2011-11-30 09:23:02'),
(100, 5, 'Rechteck', '', '06006', '<li>Schaumstoff RG 30</li>', 6, 12, 114, 1, 0, '2010-03-08 12:01:24', '2011-11-30 09:23:28'),
(101, 5, 'Rechteck', '', '06007', '<li>Schaumstoff RG 30</li>', 6, 19, 115, 1, 0, '2010-03-08 12:01:09', '2011-11-30 09:23:51'),
(102, 5, 'Rechteck', '', '06008', '<li>Schaumstoff RG 30</li>', 6, 22, 116, 1, 0, '2010-03-08 12:00:56', '2011-11-30 09:24:13'),
(103, 5, 'Dreieck', '', '06010', '<li>Schaumstoff RG 30</li>', 6, 16, 117, 1, 0, '2010-03-08 12:00:17', '2011-11-30 09:24:41'),
(104, 5, 'Dreieck', '', '06012', '<li>Schaumstoff RG 30</li>', 6, 7, 118, 1, 0, '2010-03-08 12:00:34', '2011-11-30 09:25:09'),
(105, 5, 'Keil 20Â°', '', '06016', '<li>Schaumstoff RG 30</li>', 6, 12, 119, 1, 0, '2010-03-08 11:58:54', '2011-11-30 09:25:43'),
(106, 5, 'Keil 15Â°', '', '06017', '<li>Schaumstoff RG 30</li>', 6, 15, 120, 1, 0, '2010-03-08 11:59:44', '2011-11-30 09:26:14'),
(107, 5, 'RÃ¶ntgenset, 9-teilig', '', '06020', '<li>Schaumstoff RG 30</li>\r\n<li><u>bestehend aus:</u> 1 gr. Dreieck (PD 06021), 2 mittl. Dreiecke (PD 06022), 2 kl. Dreiecke (PD 06023), 2 Keile (PD 06024), 1 Rechteck ( PD 06025), 1 Rechteck (PD 06026)</li>', 6, 122, 109, 1, 0, '2010-03-08 12:05:13', '2011-11-30 09:30:38'),
(108, 5, 'groÃŸes Dreieck', '', '06021', '<li>Schaumstoff RG 30</li>', 6, 29, 121, 1, 0, '2010-03-08 12:06:12', '2011-11-30 09:31:12'),
(109, 5, 'mittleres Dreieck', '', '06022', '<li>Schaumstoff RG 30</li>', 6, 16, 122, 1, 0, '2010-03-08 12:06:54', '2011-11-30 09:31:40'),
(110, 5, 'kleines Dreieck 45Â°, gleichschenklig', '', '06023', '<li>Schaumstoff RG 30</li>', 6, 7, 118, 1, 0, '2010-03-08 12:07:46', '2011-11-30 09:32:19'),
(111, 5, 'Keil', '', '06024', '<li>Schaumstoff RG 30</li>', 6, 12, 123, 1, 0, '2010-03-08 12:08:43', '2011-11-30 09:32:44'),
(112, 5, 'Rechteck', '', '06025', '<li>Schaumstoff RG 30</li>', 6, 9, 124, 1, 0, '2010-03-08 12:09:35', '2011-11-30 09:33:12'),
(113, 5, 'Rechteck', '', '06026', '<li>Schaumstoff RG 30</li>', 6, 12, 114, 1, 0, '2010-03-08 12:10:22', '2011-11-30 09:33:34'),
(114, 5, 'RÃ¶ntgentischauflage', '', '06142', '<li>Schaumstoff RG 40</li>\r\n<li>mit Klettverschluss</li>', 3, 103, 125, 1, 0, '2010-03-08 12:11:17', '2011-11-30 09:42:52'),
(115, 5, 'RÃ¶ntgentischauflage', '', '06143', '<li>Schaumstoff RG 40</li>\r\n<li>mit Klettverschluss</li>', 3, 112, 126, 1, 0, '2010-03-08 12:11:55', '2011-11-30 09:43:22'),
(116, 5, 'RÃ¶ntgentischauflage', '', '06145', '<li>Schaumstoff RG 40</li>\r\n<li>mit Klettverschluss</li>', 3, 130, 127, 1, 0, '2010-03-08 12:12:34', '2011-11-30 09:43:51'),
(117, 5, 'RÃ¶ntgenkopfschale', '', '06330', '<li>Schaumstoff RG 30</li>', 6, 35, 129, 1, 0, '2010-03-08 12:13:23', '2011-11-30 09:37:07'),
(118, 5, 'Nackenkissen', '', '06340', '<li>Schaumstoff RG 30</li>\r\n<li>ohne Bezug</li>', 7, 6, 130, 1, 0, '2010-03-08 12:14:30', '2011-11-30 09:47:53'),
(119, 5, 'Beinmulde', '', '06350', '<li>Schaumstoff RG 56</li>', 6, 13, 131, 1, 0, '2010-03-08 12:15:22', '2011-11-30 09:48:40'),
(120, 5, 'Beinmulde', '', '06351', '<li>Schaumstoff RG 56</li>', 6, 16, 132, 1, 0, '2010-03-08 12:16:04', '2011-11-30 09:49:05'),
(121, 5, 'Beinlagerungskissen fÃ¼r MRT', '', '06360', '<li>mit 2 Aussparungen fÃ¼r Spulen</li>\r\n<li>Schaumstoff RG 56</li>', 6, 105, 133, 1, 0, '2010-06-25 12:28:52', '2011-11-30 09:50:12'),
(122, 5, 'Beinlagerungskissen fÃ¼r MRT', '', '06361', '<li>Unterseite gewÃ¶lbt</li>\r\n<li>Schaumstoff RG 40</li>', 6, 169, 134, 1, 0, '2010-03-08 12:18:14', '2011-11-30 09:51:08'),
(123, 5, 'Stufenblock fÃ¼r HandrÃ¶ntgen', '', '06370', '<li>Schaumstoff RG 30</li>\r\n<li>ohne Bezug</li>', 7, 11, 135, 1, 0, '2010-03-08 12:19:18', '2011-11-30 09:51:55'),
(124, 5, 'Kopf-Lagerungspolster, abgeschrÃ¤gt', '', '00450', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 74, 87, 1, 0, '2010-03-08 12:20:34', '2011-11-30 09:53:28'),
(126, 7, 'Inkubatormatratze', '', '07305', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 74, 140, 1, 0, '2010-05-03 10:13:27', '2011-11-30 10:17:43'),
(127, 7, 'Wickeltischauflage, 3-seitige Aufkantung', '', '07500', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 127, 143, 1, 0, '2010-03-08 12:46:46', '2011-11-30 10:19:06'),
(128, 7, 'Sitzkissen rund', '', '01438', '<li>Schaumstoff HR 43</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 78, 147, 1, 0, '2010-05-06 10:57:26', '2011-11-30 10:20:11'),
(129, 7, 'Wickeltischauflage, 2-seitige Aufkantung', '', '07550', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 99, 144, 1, 0, '2010-04-21 09:07:35', '2011-11-30 10:20:45'),
(130, 7, 'Entbindungsmatte', '', '07600', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 168, 109, 1, 0, '2010-03-08 12:33:16', '2011-11-30 10:21:15'),
(131, 7, 'Beinhochlagerungsschiene 45Â° fÃ¼r Kinder', '', '07800', '<li>Schaumstoff RG 30</li>\r\n<li>Bezug: GEFATEX Hygiene-Schutzbezug</li>\r\n<li>Farbe: creme</li>', 7, 88, 145, 1, 0, '2010-04-19 11:05:15', '2011-11-30 10:22:38'),
(132, 7, 'Baby-Lagerungsrolle', '', '07710', '<li>Mikroperlen</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 16, 160, 1, 0, '2010-03-08 12:36:42', '2011-11-30 10:23:36'),
(133, 7, 'Baby-Lagerungsring', '', '07720', '<li>Mikroperlen</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 19, 161, 1, 0, '2010-03-08 12:38:23', '2011-11-30 10:24:02'),
(134, 7, 'Baby-Lagerungsring', '', '07721', '<li>Mikroperlen</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 25, 162, 1, 0, '2010-03-08 12:39:53', '2011-11-30 10:24:28'),
(135, 7, 'Baby-LagerungshÃ¶rnchen', '', '07730', '<li>Mikroperlen</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 17, 161, 1, 0, '2010-03-08 12:41:08', '2011-11-30 10:24:53'),
(136, 7, 'Baby-LagerungshÃ¶rnchen', '', '07731', '<li>Mikroperlen</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 23, 162, 1, 0, '2010-03-08 12:42:59', '2011-11-30 10:25:21'),
(137, 8, 'Lagerungskissen', '', '00190', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 17, 23, 1, 0, '2010-03-10 10:34:11', '2011-11-30 10:40:12'),
(138, 8, 'Lagerungskissen', '', '00191', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 13, 26, 1, 0, '2010-03-10 10:35:07', '2011-11-30 10:40:56'),
(139, 8, 'Lagerungskissen', '', '00192', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 14, 24, 1, 0, '2010-03-10 10:35:51', '2011-11-30 10:41:24'),
(140, 8, 'Lagerungskissen', '', '00193', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 19, 27, 1, 0, '2010-03-10 10:36:27', '2011-11-30 10:41:50'),
(141, 8, 'Kopf- und Armlagerungskissen', '', '00250', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 47, 52, 1, 0, '2010-03-10 10:37:34', '2011-11-30 10:42:42'),
(142, 8, 'Lagerungskeil 30Â°', '', '01440', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 36, 163, 1, 0, '2010-03-10 10:39:01', '2011-11-30 10:45:24'),
(143, 8, 'Lagerungskeil 18Â°', '', '01450', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 42, 164, 1, 0, '2010-03-10 10:39:52', '2011-11-30 10:46:03'),
(144, 8, 'Lagerungskeil 15Â°', '', '01460', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 55, 165, 1, 0, '2010-03-10 10:40:57', '2011-11-30 10:46:48'),
(145, 8, 'Rolle', '', '00220', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 38, 1, 0, '2010-03-10 10:41:47', '2011-11-30 10:49:02'),
(146, 8, 'Halbrolle', '', '00230', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 54, 45, 1, 0, '2010-03-10 10:42:26', '2011-11-30 10:49:29'),
(147, 8, 'Halbrolle', '', '00231', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 71, 46, 1, 0, '2010-03-10 10:42:55', '2011-11-30 10:49:51'),
(148, 8, 'Dreiviertelrolle', '', '00240', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 30, 50, 1, 0, '2010-03-10 10:43:36', '2011-11-30 10:50:30'),
(149, 8, 'Kopfring', '', '00260', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 46, 54, 1, 0, '2010-03-10 10:44:32', '2011-11-30 10:51:00'),
(150, 8, 'Kopfring mit Rundplatte', '', '00265', '<li><u>2-teilig</u></li>\r\n<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 93, 55, 1, 0, '2010-03-10 10:46:30', '2011-11-30 10:53:16'),
(151, 8, 'Kopflagerungskissen', '', '00270', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 52, 57, 1, 0, '2010-03-10 10:47:27', '2011-11-30 10:55:01'),
(152, 8, 'Kopflagerungskissen 50', '', '00271', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 104, 58, 1, 0, '2010-03-10 10:48:24', '2011-11-30 10:56:42'),
(153, 8, 'Nacken- und Fersenkissen 25', '', '00275', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 61, 1, 0, '2010-03-10 10:49:28', '2011-11-30 10:57:08'),
(154, 8, 'Nacken- und Fersenkissen 40', '', '00277', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 65, 63, 1, 0, '2010-03-10 10:50:30', '2011-11-30 10:57:33'),
(155, 8, 'Nacken- und Fersenkissen 40, rutschhemmend', '', '00277R', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>Unterseite: PU-rutschhemmend, Farbe dunkelblau</li>\r\n<li>mit Klettverschluss</li>', 3, 71, 63, 1, 0, '2010-03-10 10:51:37', '2011-11-30 10:58:57'),
(156, 8, 'Intensivkopfkissen', '', '00280', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 57, 64, 1, 0, '2010-03-10 10:52:44', '2011-11-30 10:59:38'),
(157, 8, 'Fersenkissen 25', '', '00290', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 74, 1, 0, '2010-03-10 10:53:29', '2011-11-30 11:00:12'),
(158, 8, 'Fersenkissen 14', '', '00289', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 35, 73, 1, 0, '2010-03-10 10:54:21', '2011-11-30 11:00:47'),
(159, 8, 'Nasenkissen, klein', '', '00200', '<li>Schaumstoff RG 35/viskoelastischer Schaum</li>\r\n<li>mit Klettverschluss</li>', 3, 46, 69, 1, 0, '2010-03-10 10:55:22', '2011-11-30 11:01:52'),
(160, 8, 'Nasenkissen, groÃŸ', '', '00210', '<li>Schaumstoff RG 35/viskoelastischer Schaum</li>\r\n<li>mit Klettverschluss</li>', 3, 74, 70, 1, 0, '2010-03-10 10:56:14', '2011-11-30 11:03:04'),
(161, 8, 'Nasenkissen Spezial', '', '00520', '<li>Schaumstoff RG 35/viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 111, 174, 1, 0, '2010-03-10 10:57:13', '2011-11-30 11:04:32'),
(162, 8, 'Gesichtskissen', '', '00500', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 136, 89, 1, 0, '2010-03-10 10:58:10', '2011-11-30 11:05:10'),
(163, 8, 'Gesichtskissen 4', '', '00501', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 141, 89, 1, 0, '2010-03-10 10:59:41', '2011-11-30 11:05:44'),
(164, 8, 'Kopfseitenlagerungskissen fÃ¼r ERCP', '', '01500', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 116, 90, 1, 0, '2010-03-10 11:00:57', '2011-11-30 11:07:01'),
(165, 8, 'Kopfkissen', '', '00282', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 37, 65, 1, 0, '2010-03-10 11:02:14', '2011-11-30 11:08:01'),
(166, 8, 'Kopfkissen', '', '00283', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 24, 30, 1, 0, '2010-03-10 11:08:23', '2011-11-30 11:11:24'),
(167, 8, 'ERCP-Auflage', '', '01510', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>\r\n<li>MaÃŸ der Aussparung: 20x30cm</li>', 3, 176, 170, 1, 0, '2010-03-10 11:09:55', '2011-11-30 11:12:31'),
(168, 8, 'MFT-Kissen', '', '01490', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 4, 37, 167, 1, 0, '2010-03-10 11:13:21', '2011-11-30 11:14:07'),
(169, 1, 'Halbrolle', '', '01000', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 12, 180, 1, 0, '2010-03-10 11:14:48', '2011-12-01 11:58:32'),
(170, 1, 'Halbrolle', '', '01001', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 16, 181, 1, 0, '2010-03-10 11:15:43', '2011-12-01 11:59:07'),
(171, 1, 'Halbrolle', '', '01002', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 15, 182, 1, 0, '2010-03-10 11:16:25', '2011-12-01 12:00:25'),
(172, 1, 'Halbrolle', '', '01003', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 19, 183, 1, 0, '2010-03-10 11:18:40', '2011-12-01 12:00:52'),
(173, 1, 'Dreiviertelrolle', '', '01010', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 14, 184, 1, 0, '2010-03-10 11:19:24', '2011-12-01 12:01:20'),
(174, 1, 'Dreiviertelrolle', '', '01011', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 17, 185, 1, 0, '2010-03-10 11:20:03', '2011-12-01 12:01:49'),
(175, 1, 'Dreiviertelrolle', '', '01012', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 25, 186, 1, 0, '2010-03-10 11:20:41', '2011-12-01 12:02:20'),
(177, 1, 'Spastikerrolle', '', '01020', '<li>Fester Kern</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 86, 194, 1, 0, '2010-03-10 11:24:35', '2011-12-01 12:03:31'),
(178, 1, 'Spastikerrolle', '', '01021', '<li>Fester Kern</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 157, 195, 1, 0, '2010-03-10 11:27:52', '2011-12-01 12:04:00'),
(179, 1, 'Spastikerrolle', '', '01022', '<li>Fester Kern</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 363, 196, 1, 0, '2010-03-10 11:29:46', '2011-12-01 12:04:30'),
(180, 1, 'Rolle', '', '01030', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 8, 178, 1, 0, '2010-03-10 11:30:34', '2011-12-01 12:05:09'),
(181, 1, 'Rolle', '', '01031', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 11, 113, 1, 0, '2010-03-10 11:31:12', '2011-12-01 12:05:39'),
(182, 1, 'Rolle', '', '01032', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 26, 179, 1, 0, '2010-03-10 11:31:46', '2011-12-01 12:06:06'),
(183, 1, 'Rolle', '', '01035', '<li>Schaumstoff RG 35</li>\r\n<li>mit Klettverschluss</li>', 3, 12, 234, 1, 0, '2010-03-10 11:33:01', '2011-12-01 12:07:57'),
(184, 1, 'Rolle', '', '01036', '<li>Schaumstoff RG 35</li>\r\n<li>mit Klettverschluss</li>', 3, 25, 235, 1, 0, '2010-03-10 11:33:38', '2011-12-01 12:08:22'),
(185, 1, 'Rolle', '', '01037', '<li>Schaumstoff VB100</li>\r\n<li>mit Klettverschluss</li>', 3, 17, 236, 1, 0, '2010-03-10 11:34:27', '2011-12-01 12:08:56'),
(186, 1, 'Beinhochlagerungskeil 45Â° einfach mit Mulde', '', '01100', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 28, 187, 1, 0, '2010-03-10 11:35:23', '2011-12-01 12:10:27'),
(187, 1, 'Beinhochlagerungskeil 45Â° einfach mit Mulde', '', '01101', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 46, 188, 1, 0, '2010-03-10 11:36:06', '2011-12-01 12:11:49'),
(188, 1, 'Beinhochlagerungskeil 45Â° doppelt mit Mulde', '', '01110', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 50, 197, 1, 0, '2010-03-10 11:36:56', '2011-12-01 12:12:37'),
(189, 1, 'Beinhochlagerungskeil 45Â° doppelt mit Mulde', '', '01111', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 67, 198, 1, 0, '2010-03-10 11:37:37', '2011-12-01 12:13:11'),
(190, 1, 'Spreizkeil', '', '01120', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 30, 199, 1, 0, '2010-03-10 11:38:20', '2011-12-01 12:13:50'),
(191, 1, 'Spreizkeil', '', '01121', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 29, 200, 1, 0, '2010-03-10 11:39:03', '2011-12-01 12:14:26'),
(192, 1, 'Spreizkeil', '', '01122', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 30, 201, 1, 0, '2010-03-10 11:39:45', '2011-12-01 12:14:59'),
(193, 1, 'Beinspreizkeil ohne Mulden', '', '01130', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 34, 202, 1, 0, '2010-03-10 11:40:40', '2011-12-01 12:15:40'),
(194, 1, 'Beinlagerungskeil mit Mulde', '', '01200', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 42, 189, 1, 0, '2010-03-10 11:42:38', '2011-12-01 12:17:01'),
(199, 1, 'Knochenkissen', '', '01305', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 12, 168, 1, 0, '2010-03-10 11:47:42', '2011-12-01 12:44:39'),
(200, 1, 'Knochenkissen', '', '01306', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 10, 169, 1, 0, '2010-03-10 11:50:32', '2011-12-01 12:45:08'),
(201, 1, 'Nasenkissen', '', '01310', '<li>Schaumstoff RG 20</li>\r\n<li>mit ReiÃŸverschluss</li>', 2, 23, 231, 1, 0, '2010-03-10 11:52:53', '2011-12-01 12:45:45'),
(202, 1, 'Venenkissen', '', '01331', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 116, 206, 1, 0, '2010-03-10 11:55:10', '2011-12-01 12:25:55'),
(203, 1, 'Stufenlagerungskissen', '', '01340', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 63, 207, 1, 0, '2010-03-10 11:55:59', '2011-12-01 12:27:09'),
(204, 1, 'Stufenlagerungskissen', '', '01341', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 104, 208, 1, 0, '2010-03-10 11:56:38', '2011-12-01 12:27:36'),
(205, 1, 'Stufenlagerungskissen', '', '01342', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 57, 209, 1, 0, '2010-03-10 11:57:19', '2011-12-01 12:28:08'),
(206, 1, 'Stufenlagerungskissen', '', '01343', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 65, 210, 1, 0, '2010-03-10 11:58:21', '2011-12-01 12:28:34'),
(207, 1, 'Stufenlagerungskissen verstellbar', '', '01350', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss und Klett/Flausch als VerstellmÃ¶glichkeit</li>', 4, 124, 211, 1, 0, '2010-03-10 12:00:49', '2011-12-01 12:29:36'),
(208, 1, 'WÃ¼rfel', '', '01370', '<li>Fester Kern</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 36, 214, 1, 0, '2010-03-10 12:01:42', '2011-12-01 12:32:54'),
(209, 1, 'WÃ¼rfel', '', '01371', '<li>Fester Kern</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 51, 215, 1, 0, '2010-03-10 12:02:25', '2011-12-01 12:33:33'),
(210, 1, 'WÃ¼rfel', '', '01372', '<li>Fester Kern</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 104, 216, 1, 0, '2010-03-10 12:03:11', '2011-12-01 12:34:05'),
(211, 1, 'Bandscheibenkissen', '', '01400', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 15, 218, 1, 0, '2010-03-10 12:03:55', '2011-12-01 12:35:29'),
(213, 1, 'Sitzkissen', '', '01420', '<li>Schaumstoff RG 40</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 20, 219, 1, 0, '2010-03-10 12:07:50', '2011-12-01 12:35:59'),
(214, 1, 'Sitzkissen', '', '01421', '<li>Schaumstoff RG 40</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 21, 220, 1, 0, '2010-03-10 12:08:38', '2011-12-01 12:36:25'),
(215, 1, 'Sitzkissen -spezial-', '', '01423', '<li>Schaumstoff VB100/viskoelastischer Schaum</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 41, 221, 1, 0, '2010-03-10 12:09:39', '2011-12-01 12:37:13'),
(216, 1, 'Sitzkeil', '', '01430', '<li>Schaumstoff VB100</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 22, 223, 1, 0, '2010-03-10 12:10:32', '2011-12-01 12:38:55'),
(217, 1, 'Sitzkeil', '', '01431', '<li>Schaumstoff VB100</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 20, 224, 1, 0, '2010-03-10 12:11:18', '2011-12-01 12:39:21'),
(218, 1, 'Sitzkeil', '', '01432', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 23, 225, 1, 0, '2010-03-10 12:11:58', '2011-12-01 12:39:46'),
(220, 1, 'Lagerungskeil 30Â°', '', '01445', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 31, 226, 1, 0, '2010-03-10 12:15:26', '2011-12-01 12:40:23'),
(221, 1, 'Lagerungskeil 30Â°', '', '01440', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 36, 227, 1, 0, '2010-03-10 12:16:11', '2011-12-01 12:40:59'),
(222, 1, 'Lagerungskeil 18Â°', '', '01450', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 42, 228, 1, 0, '2010-03-10 12:17:05', '2011-12-01 12:41:30'),
(223, 1, 'Lagerungskeil 15Â°', '', '01460', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 55, 229, 1, 0, '2010-03-10 12:17:49', '2011-12-01 12:42:00'),
(224, 1, 'Seitenlagerungskeil 30Â° links', '', '01480', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 40, 230, 1, 0, '2010-03-10 12:18:44', '2011-12-01 12:43:02'),
(225, 1, 'Seitenlagerungskeil 30Â° rechts', '', '01481', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 40, 230, 1, 0, '2010-03-10 12:19:26', '2011-12-01 12:43:34'),
(227, 1, 'Kopfseitenlagerungskissen', '', '01500', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 116, 90, 1, 0, '2010-03-10 12:21:17', '2011-12-01 12:46:37'),
(228, 1, 'Gymnastikmatte', '', '01710', '<li>Schaumstoff VB100</li>\r\n<li>Unterseite: WaffelrÃ¼cken, rutschfest</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 174, 232, 1, 0, '2010-03-10 12:22:49', '2011-12-01 12:53:58'),
(229, 1, 'Gymnastikmatte', '', '01711', '<li>Schaumstoff VB100</li>\r\n<li>Unterseite: WaffelrÃ¼cken, rutschfest</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 199, 233, 1, 0, '2010-03-10 12:23:51', '2011-12-01 12:54:45'),
(230, 1, 'Nacken- und Fersenkissen 25', '', '00275', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 61, 1, 0, '2010-03-10 12:25:35', '2011-12-01 12:48:06'),
(231, 3, 'ITS-Bauchlagerungsset spezial, 2-teilig', '', '00146', '<li>Schaumstoff RG 35/viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li>MaÃŸe Oberteil: 35x50x12cm</li>\r\n<li>MaÃŸe Unterteil: 60x50x12cm</li>', 3, 497, 109, 1, 0, '2010-03-15 10:42:32', '2011-12-02 10:07:27'),
(232, 3, 'ITS-Seitenlagerungsset 135Â°, 2-teilig', '', '00158', '<li>Schaumstoff RG 35/viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li>bestehend aus: 1 ITS-Seitenlagerungskeil (PD 00159) und 1 Nasenkissen, klein (PD 00200)</li>\r\n', 3, 182, 109, 1, 0, '2010-03-15 10:48:09', '2011-12-02 10:24:02'),
(233, 3, 'ITS-Seitenlagerungskeil', '', '00159R', '<li>Schaumstoff RG 35/viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n', 3, 136, 237, 1, 0, '2010-03-15 10:48:58', '2011-12-02 10:24:38'),
(234, 3, 'Thorax-Lagerungskissen', '', '00160', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 156, 15, 1, 0, '2010-03-15 10:49:49', '2011-12-02 10:34:08'),
(235, 3, 'Nasenkissen, klein', '', '00200', '<li>Schaumstoff RG 35/viskoelastischer Schauml</li>\r\n<li>mit Klettverschluss</li>', 3, 46, 69, 1, 0, '2010-03-15 10:51:03', '2011-12-02 10:34:25'),
(236, 3, 'Nasenkissen, groÃŸ', '', '00210', '<li>Schaumstoff RG 35/viskoelastischer Schaum</li>\r\n<li>mit Klettverschluss</li>', 3, 74, 70, 1, 0, '2010-03-15 10:51:46', '2011-12-02 10:33:48'),
(237, 3, 'Rolle', '', '00220', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 38, 1, 0, '2010-03-15 10:52:21', '2011-12-02 10:38:09'),
(238, 3, 'Rolle', '', '00221', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 12, 39, 1, 0, '2010-03-15 10:52:49', '2011-12-02 10:38:37'),
(239, 3, 'Rolle', '', '00222', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 25, 40, 1, 0, '2010-03-15 10:53:17', '2011-12-02 10:39:06'),
(240, 3, 'Rolle', '', '00223', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 31, 41, 1, 0, '2010-03-15 10:53:43', '2011-12-02 10:39:30'),
(241, 3, 'Rolle', '', '00224', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 27, 42, 1, 0, '2010-03-15 10:54:12', '2011-12-02 10:39:55'),
(242, 3, 'Halbrolle', '', '00230', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 54, 45, 1, 0, '2010-03-15 10:54:52', '2011-12-02 10:40:21'),
(243, 3, 'Halbrolle', '', '00231', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 71, 46, 1, 0, '2010-03-15 10:55:20', '2011-12-02 10:40:43'),
(244, 3, 'Dreiviertelrolle', '', '00240', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 30, 50, 1, 0, '2010-03-15 10:56:00', '2011-12-02 10:41:20'),
(245, 3, 'Dreiviertelrolle', '', '00241', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 55, 51, 1, 0, '2010-03-15 10:56:35', '2011-12-02 10:41:55'),
(246, 3, 'Kopf- und Armlagerungskissen', '', '00250', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 47, 52, 1, 0, '2010-03-15 10:57:16', '2011-12-02 10:42:30'),
(247, 3, 'Kopfring', '', '00260', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 46, 54, 1, 0, '2010-03-15 10:58:31', '2011-12-02 10:48:05'),
(248, 3, 'Kopfring mit Rundplatte', '', '00265', '<li><u>2-teilig</u></li>\r\n<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 93, 55, 1, 0, '2010-03-15 10:59:56', '2011-12-02 10:49:04'),
(250, 3, 'Nacken- und Fersenkissen 25', '', '00275', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 61, 1, 0, '2010-03-15 11:02:40', '2011-12-02 10:49:35'),
(251, 3, 'Intensiv-Kopfkissen', '', '00280', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 57, 64, 1, 0, '2010-03-15 11:04:04', '2011-12-02 10:50:02'),
(252, 3, 'Kopfkissen', '', '00282', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 37, 65, 1, 0, '2010-03-15 11:05:07', '2011-12-02 10:50:42'),
(253, 3, 'Kopfkissen', '', '00283', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 24, 66, 1, 0, '2010-03-15 11:05:57', '2011-12-02 10:51:18'),
(254, 3, 'Fersenkissen', '', '00290', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 74, 1, 0, '2010-03-15 11:06:39', '2011-12-02 10:51:46'),
(255, 3, 'RÃ¼ckenstÃ¼tzkissen', '', '00330', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 64, 97, 1, 0, '2010-03-15 11:07:38', '2011-12-02 11:06:12'),
(256, 3, 'Gesichtskissen', '', '00500', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 136, 89, 1, 0, '2010-03-15 11:08:25', '2011-12-02 11:08:00'),
(257, 3, 'Gesichtskissen 4', '', '00501', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss und 4 Ausbuchtungen</li>', 3, 141, 89, 1, 0, '2010-03-15 11:09:19', '2011-12-02 11:09:04'),
(259, 3, 'Sitzkissen mit Loch fÃ¼r Pflegestuhl vorn offen', '', '01434', '<liSchaumstoff RG 56/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 69, 238, 1, 0, '2010-03-15 11:13:02', '2011-12-02 11:10:47'),
(260, 3, 'Sitzkissen rund mit Loch', '', '01435', '<li>Schaumstoff RG 56/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 47, 240, 1, 0, '2010-03-15 11:14:16', '2011-12-02 11:11:41'),
(261, 3, 'Sitzkissen, rund', '', '01438', '<li>Schaumstoff HR 43</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 78, 241, 1, 0, '2010-03-15 11:15:19', '2011-12-02 11:12:14'),
(262, 3, 'Lagerungsschlange', '', '05020', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 66, 151, 1, 0, '2010-05-06 11:01:52', '2011-12-02 11:14:04'),
(263, 3, 'Lagerungskissen 80', '', '05040', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 38, 154, 1, 0, '2010-03-15 11:19:09', '2011-12-02 11:15:52'),
(264, 3, 'Lagerungskissen 40', '', '05060', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 18, 155, 1, 0, '2010-03-15 11:19:56', '2011-12-02 11:16:23'),
(265, 3, 'Beinlagerungskissen, gekammert', '', '05080', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 5, 53, 156, 1, 0, '2010-05-06 11:02:16', '2011-12-02 11:17:07'),
(266, 3, 'Lagerungsset, 4-teilig', '', '05100', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li><u>bestehend aus:</u> 1 Lagerungsschlange (PD 05020), 1 Lagerungskissen 80 (PD 05040), 1 Lagerungskissen 40 (PD 05060), 1 Beinlagerungskissen (PD 05080)</li>', 3, 144, 109, 1, 0, '2010-03-15 11:23:44', '2011-12-02 11:18:47'),
(268, 3, 'Matratzenauflage 2plus', '', '02120', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 224, 244, 1, 0, '2010-03-15 11:27:47', '2011-12-02 11:24:18'),
(269, 3, 'Kombinationsmatratze', '', '02100', '<li>Schaumstoff RG 40/viskoelastischer Schaum</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 186, 242, 1, 0, '2010-03-15 11:28:57', '2011-12-02 11:25:17'),
(270, 3, 'AD-Matratze F', '', '02130', '<li>Kaltschaum HR 43 flammenhemmend/viskoelastischer Schaum</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 209, 242, 1, 0, '2010-03-15 11:30:25', '2011-12-02 11:26:26'),
(271, 3, 'Matratzenauflage 2/3', '', '02110', '<li>viskoelastischer Schaum</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 157, 243, 1, 0, '2010-03-15 11:31:14', '2011-12-02 11:27:08'),
(283, 2, 'Standardmatratze', '', '02090', '<li>Schaumstoff RG 40</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 121, 242, 1, 0, '2010-03-15 11:39:31', '2011-12-05 09:16:57'),
(284, 2, 'Kombinationsmatratze', '', '02100', '<li>Schaumstoff RG 40/viskoelastischer Schaum</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 186, 242, 1, 0, '2010-03-15 11:40:04', '2011-12-05 09:17:41'),
(285, 2, 'AD-Matratze F', '', '02130', '<li>Kaltschaum HR 43/viskoelastischer Schaum</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 209, 242, 1, 0, '2010-03-15 11:41:08', '2011-12-05 09:18:36'),
(286, 2, 'Matratzenauflage -standard-', '', '02110', '<li>viskoelastischer Schaum</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 157, 243, 1, 0, '2010-03-15 11:42:07', '2011-12-05 09:19:28'),
(287, 2, 'Matratzenauflage 2plus', '', '02120', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 224, 244, 1, 0, '2010-05-06 10:49:05', '2011-12-05 09:20:23'),
(299, 2, 'Thorax-Lagerungskissen', '', '00160', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 156, 15, 1, 0, '2010-03-15 11:49:51', '2011-12-05 09:23:55'),
(300, 2, 'Nasenkissen, klein', '', '00200', '<li>Schaumstoff RG 35/viskoelastischer Schaum</li>\r\n<li>mit Klettverschluss</li>', 3, 46, 69, 1, 0, '2010-05-06 10:47:19', '2011-12-05 09:24:52'),
(301, 2, 'Nasenkissen, groÃŸ', '', '00210', '<li>Schaumstoff RG 35/viskoelastischer Schaum</li>\r\n<li>mit Klettverschluss</li>', 3, 74, 70, 1, 0, '2010-03-15 12:01:04', '2011-12-05 09:26:13'),
(302, 2, 'Rolle', '', '00220', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 38, 1, 0, '2010-04-15 08:58:43', '2011-12-05 09:27:07');
INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `product_number`, `featurelist`, `material_id`, `price`, `size_id`, `active`, `new`, `created`, `modified`) VALUES
(303, 2, 'Halbrolle', '', '00230', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 54, 45, 1, 0, '2010-04-15 09:00:04', '2011-12-05 09:27:39'),
(304, 2, 'Halbrolle', '', '00231', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 71, 46, 1, 0, '2010-04-15 09:00:44', '2011-12-05 09:29:11'),
(305, 2, 'Dreiviertelrolle', '', '00240', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 30, 50, 1, 0, '2010-04-15 09:01:36', '2011-12-05 09:30:55'),
(306, 2, 'Nacken- und Bauchlagerungskissen, elypsenfÃ¶rmig', '', '00198', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 37, 1, 0, '2010-05-10 09:43:00', '2011-12-05 09:32:23'),
(307, 2, 'Lagerungskissen oval', '', '00199', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 40, 37, 1, 0, '2010-05-10 09:43:51', '2011-12-05 09:32:58'),
(308, 2, 'Kopf- und Armlagerungskissen', '', '00250', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 47, 52, 1, 0, '2010-04-15 09:05:19', '2011-12-05 09:33:36'),
(309, 2, 'Kopf- und Armlagerungskeil', '', '00255', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 47, 52, 1, 0, '2010-05-10 09:41:17', '2011-12-05 09:34:04'),
(310, 2, 'Kopfring', '', '00260', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 46, 54, 1, 0, '2010-04-15 09:06:59', '2011-12-05 09:34:30'),
(311, 2, 'Kopfring mit Rundplatte', '', '00265', '<li><u>2-teilig</u></li>\r\n<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 93, 55, 1, 0, '2010-04-15 09:08:59', '2011-12-05 09:36:29'),
(312, 2, 'Kopfring mit Rundplatte', '', '00266', '<li><u>2-teilig</u></li>\r\n<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 120, 56, 1, 0, '2010-05-10 09:42:21', '2011-12-05 09:37:25'),
(313, 2, 'Kopflagerungskissen', '', '00270', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 52, 57, 1, 0, '2010-05-10 09:40:28', '2011-12-05 09:37:54'),
(314, 2, 'Kopflagerungskissen 50', '', '00271', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 104, 58, 1, 0, '2010-04-15 09:12:34', '2011-12-05 09:38:19'),
(315, 2, 'Nacken- und Fersenkissen 25', '', '00275', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 61, 1, 0, '2010-04-15 09:13:39', '2011-12-05 09:38:48'),
(316, 2, 'Nacken- und Fersenkissen 50', '', '00276', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 83, 62, 1, 0, '2010-06-25 12:07:09', '2011-12-05 09:39:13'),
(317, 2, 'Intensiv-Kopfkissen', '', '00280', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 57, 64, 1, 0, '2010-04-15 09:15:10', '2011-12-05 09:39:42'),
(318, 2, 'Kopfkissen', '', '00282', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 37, 65, 1, 0, '2010-04-15 09:16:12', '2011-12-05 09:40:27'),
(319, 2, 'Kopfkissen', '', '00283', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 24, 66, 1, 0, '2010-04-15 09:17:31', '2011-12-05 09:41:09'),
(320, 2, 'Fersenkissen 14', '', '00289', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 35, 73, 1, 0, '2010-04-15 09:18:15', '2011-12-05 09:42:23'),
(321, 2, 'Fersenkissen', '', '00290', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 74, 1, 0, '2010-04-15 09:19:00', '2011-12-05 09:43:04'),
(322, 2, 'Fersenkissen F', '', '00291', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss und Klettfixierung</li>', 3, 51, 74, 1, 0, '2010-06-25 12:07:43', '2011-12-05 09:43:38'),
(323, 2, 'Fersenkissen 50', '', '00292', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 71, 75, 1, 0, '2010-06-25 12:08:40', '2011-12-05 09:44:03'),
(324, 2, 'Fersenkissen 50 ST', '', '00293', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss und Mittelsteg</li>', 3, 82, 76, 1, 0, '2010-06-25 12:09:14', '2011-12-05 09:44:36'),
(325, 2, 'Sitzkissen -spezial-', '', '01423', '<li>Schaumstoff VB100/viskoelastischer Schaum</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 41, 221, 1, 0, '2010-04-15 09:22:36', '2011-12-05 09:46:10'),
(326, 2, 'Sitzkissen -spezial-', '', '01424', '<li>Schaumstoff VB100/viskoelastischer Schaum</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 38, 222, 1, 0, '2010-04-15 09:23:23', '2011-12-05 09:47:06'),
(327, 2, 'Sitzkissen mit Loch fÃ¼r Pflegestuhl vorn offen', '', '01434', '<li>Schaumstoff RG 56/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 69, 238, 1, 0, '2010-04-15 09:24:42', '2011-12-05 09:48:10'),
(328, 2, 'Sitzkissen rund mit Loch', '', '01435', '<li>Schaumstoff RG 56/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 47, 240, 1, 0, '2010-04-15 09:26:02', '2011-12-05 09:48:50'),
(329, 2, 'Sitzkissen, rund', '', '01438', '<li>Schaumstoff HR 43</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 78, 241, 1, 0, '2010-04-15 09:27:55', '2011-12-05 09:49:26'),
(330, 2, 'Seitengitterschutz', '', '01700', '<li>Schaumstoff RG 30</li>\r\n<li>Unterseite: Streifendrell</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 99, 250, 1, 0, '2010-04-15 09:29:54', '2011-12-05 09:52:08'),
(331, 2, 'Sturzmatte', '', '01720', '<li>Neopolen</li>\r\n<li>keilfÃ¶rmig nach den Seiten</li>\r\n<li>zweiteilig mit Klett/Flausch verbindbar</li>\r\n<li>Unterseite Bezug: WaffelrÃ¼cken</li>', 4, 134, 251, 1, 0, '2010-04-15 09:32:37', '2011-12-05 09:56:32'),
(332, 2, 'Sturzmatte, hoch', '', '01725', '<li>2-teilig</li>\r\n<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>Unterseite: WaffelrÃ¼cken, rutschfest</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 177, 252, 1, 0, '2010-05-06 10:48:08', '2011-12-05 09:57:45'),
(333, 2, 'Lagerungsschlange', '', '05020', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 66, 151, 1, 0, '2010-05-06 10:59:06', '2011-12-05 09:59:49'),
(334, 2, 'Lagerungskissen 80', '', '05040', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 38, 154, 1, 0, '2010-04-15 09:37:23', '2011-12-05 09:59:26'),
(335, 2, 'Lagerungskissen 40', '', '05060', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 18, 155, 1, 0, '2010-04-15 09:38:12', '2011-12-05 10:00:17'),
(336, 2, 'Beinlagerungskissen, gekammert', '', '05080', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 53, 156, 1, 0, '2010-05-06 10:59:32', '2011-12-05 10:00:58'),
(337, 2, 'Lagerungsset, 4-teilig', '', '05100', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li><u>bestehend aus:</u> 1 Lagerungsschlange (PD 05020), 1 Lagerungskissen 80 (PD 05040), 1 Lagerungskissen 40 (PD 05060), 1 Beinlagerungskissen (PD 05080)</li>', 3, 144, 109, 1, 0, '2010-04-15 09:42:11', '2011-12-05 10:02:54'),
(347, 1, 'Armlagerungskeil ohne Mulde', '', '01201', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 24, 203, 1, 0, '2010-04-15 11:36:38', '2011-12-01 12:22:12'),
(348, 1, 'Armlagerungskeil ohne Mulde', '', '01202', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 31, 204, 1, 0, '2010-04-15 11:37:29', '2011-12-01 12:23:03'),
(352, 1, 'Venenkissen', '', '01330', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 35, 205, 1, 0, '2010-04-15 11:40:12', '2011-12-01 12:26:41'),
(353, 1, 'Beinlagerungskeil verstellbar, 2-teilig', '', '01355', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss, Klett/Flauschstreifen und 2 Mulden</li>', 4, 148, 212, 1, 0, '2010-04-15 11:41:07', '2011-12-01 12:30:33'),
(354, 1, 'Positurkissen', '', '01360', '<li>Fester Kern</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 94, 207, 1, 0, '2010-04-15 11:41:43', '2011-12-01 12:31:32'),
(355, 1, 'Positurkissen', '', '01361', '<li>Fester Kern</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 63, 213, 1, 0, '2010-04-15 11:42:08', '2011-12-01 12:32:05'),
(357, 1, 'Lymphdrainagekeil', '', '01390', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 37, 217, 1, 0, '2010-04-15 11:43:15', '2011-12-01 12:35:06'),
(359, 1, 'Kopfseitenlagerungskissen F', '', '01501', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 104, 91, 1, 0, '2010-04-15 11:44:50', '2011-12-01 12:47:15'),
(360, 1, 'Nacken- und Fersenkissen 50', '', '00276', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 83, 62, 1, 0, '2010-06-25 12:10:02', '2011-12-01 12:48:42'),
(361, 1, 'Sandsack', '', '01730', '<li>feiner Sand im Inlett</li>\r\n<li>Gewicht: 1.200g</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 4, 6, 171, 1, 0, '2010-04-15 11:46:32', '2011-12-01 12:56:10'),
(362, 1, 'Sandsack', '', '01731', '<li>feiner Sand im Inlett</li>\r\n<li>Gewicht: 1.500g</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 4, 7, 172, 1, 0, '2010-04-15 11:46:58', '2011-12-01 12:56:44'),
(363, 1, 'Sandsack', '', '01732', '<li>feiner Sand im Inlett</li>\r\n<li>Gewicht: 2.000g</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 4, 9, 173, 1, 0, '2010-04-15 11:47:25', '2011-12-01 12:57:24'),
(364, 6, 'Patiententransporterauflage', '', '03000', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 197, 175, 1, 0, '2010-04-15 11:49:20', '2011-11-30 11:36:29'),
(365, 6, 'Unfalltransportmatratze', '', '04000', '<li>nach DIN 13025</li>\r\n<li>Bezug: Starkfolie (gepolstert/starr)</li>\r\n<li>mit Halteschlaufen</li>', 7, 315, 177, 1, 0, '2010-04-15 11:51:40', '2011-11-30 11:41:00'),
(366, 6, 'Nasenkissen, klein', '', '00200', '<li>Schaumstoff RG 35/viskoelastischer Schaum</li>\r\n<li>mit Klettverschluss</li>', 3, 46, 69, 1, 0, '2010-04-15 11:52:47', '2011-12-01 09:28:27'),
(367, 6, 'Kopf- und Armlagerungskissen', '', '00250', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 47, 52, 1, 0, '2010-04-15 11:53:30', '2011-12-01 09:29:37'),
(368, 6, 'Kopf- und Armlagerungskeil', '', '00255', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 47, 52, 1, 0, '2010-05-10 09:48:42', '2011-12-01 09:30:10'),
(369, 6, 'Kopfring', '', '00260', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 46, 54, 1, 0, '2010-04-15 11:57:55', '2011-12-01 09:30:47'),
(370, 6, 'Kopfring mit Rundplatte', '', '00265', '<li><u>2-teilig</u></li>\r\n<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 93, 55, 1, 0, '2010-04-15 11:59:28', '2011-12-01 09:32:02'),
(371, 6, 'Kopfring mit Rundplatte', '', '00266', '<li><u>2-teilig</u></li>\r\n<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 120, 56, 1, 0, '2010-05-10 09:49:26', '2011-12-01 09:33:01'),
(372, 6, 'Kopfkissen', '', '00270', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 52, 57, 1, 0, '2010-05-10 09:48:12', '2011-12-01 09:33:48'),
(373, 6, 'Kopfkissen 50', '', '00271', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 104, 58, 1, 0, '2010-04-15 12:01:51', '2011-12-01 09:34:20'),
(374, 6, 'Intensiv-Kopfkissen', '', '00280', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 57, 64, 1, 0, '2010-04-15 12:02:45', '2011-12-01 09:34:55'),
(375, 6, 'Kopfseitenlagerungskissen', '', '01500', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 116, 90, 1, 0, '2010-04-15 12:04:05', '2011-12-01 09:36:15'),
(376, 6, 'Kopfseitenlagerungskissen F', '', '01501', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 104, 91, 1, 0, '2010-04-15 12:04:41', '2011-12-01 09:36:49'),
(378, 6, 'Lagerungskissen', '', '00191', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 13, 26, 1, 0, '2010-04-15 12:06:22', '2011-11-30 11:42:27'),
(379, 6, 'Lagerungskissen', '', '00192', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 14, 24, 1, 0, '2010-04-15 12:07:06', '2011-11-30 11:44:40'),
(380, 6, 'Lagerungskissen', '', '00193', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 19, 27, 1, 0, '2010-04-15 12:07:47', '2011-11-30 11:45:35'),
(386, 6, 'Fersenkissen', '', '00290', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 74, 1, 0, '2010-04-15 12:11:33', '2011-12-01 09:42:01'),
(388, 6, 'Fersenkissen 50', '', '00292', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 71, 75, 1, 0, '2010-04-15 12:13:20', '2011-12-01 09:42:41'),
(389, 6, 'Fersenkissen 50 ST', '', '00293', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 82, 76, 1, 0, '2010-04-15 12:13:51', '2011-12-01 09:43:14'),
(390, 3, 'Lagerungskissen', '', '00190', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 17, 23, 1, 0, '2010-05-10 09:52:28', '2011-12-02 10:35:20'),
(391, 3, 'Lagerungskissen', '', '00196', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 17, 24, 1, 0, '2010-05-10 09:54:24', '2011-12-02 10:35:49'),
(392, 3, 'Lagerungskissen', '', '00191', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 13, 26, 1, 0, '2010-05-10 09:53:09', '2011-12-02 10:36:22'),
(393, 3, 'Lagerungskissen', '', '00192', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 14, 24, 1, 0, '2010-05-10 09:53:34', '2011-12-02 10:36:58'),
(394, 3, 'Lagerungskissen', '', '00193', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 19, 27, 1, 0, '2010-05-10 09:53:59', '2011-12-02 10:37:30'),
(395, 3, 'Kopf- und Armlagerungskeil', '', '00255', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 47, 52, 1, 0, '2010-05-10 09:50:24', '2011-12-02 10:43:26'),
(397, 3, 'Kopflagerungskissen', '', '00270', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 52, 57, 1, 0, '2010-05-10 09:50:58', '2011-12-02 10:44:17'),
(399, 3, 'Fersenkissen F', '', '00291', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss und Klettfixierung</li>', 3, 51, 74, 1, 0, '2010-06-25 12:06:34', '2011-12-02 10:54:00'),
(400, 3, 'Fersenkissen 50', '', '00292', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 71, 75, 1, 0, '2010-06-25 12:04:12', '2011-12-02 10:54:34'),
(401, 3, 'Fersenkissen 50 ST', '', '00293', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss und Mittelsteg</li>', 3, 82, 76, 1, 0, '2010-06-25 12:04:46', '2011-12-02 10:55:39'),
(402, 8, 'Kopf- und Armlagerungskeil', '', '00255', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 47, 52, 1, 0, '2010-05-10 09:45:06', '2011-11-30 10:44:01'),
(403, 8, 'Nacken- und Bauchlagerungskissen, elypsenfÃ¶rmig', '', '00198', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 37, 1, 0, '2010-05-10 09:46:32', '2011-11-30 10:51:40'),
(404, 8, 'Lagerungskissen oval', '', '00199', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 40, 37, 1, 0, '2010-05-10 09:47:07', '2011-11-30 10:52:09'),
(405, 8, 'Kopfring mit Rundplatte', '', '00266', '<li><u>2-teilig</u></li>\r\n<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 120, 56, 1, 0, '2010-05-10 09:46:00', '2011-11-30 10:54:28'),
(406, 8, 'Nacken- und Fersenkissen 50', '', '00276', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 83, 62, 1, 0, '2010-06-25 11:57:55', '2011-11-30 10:58:08'),
(407, 8, 'Fersenkissen 50', '', '00292', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 71, 75, 1, 0, '2010-06-25 11:58:40', '2011-11-30 11:09:38'),
(408, 8, 'Fersenkissen 50ST', '', '00293', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss und Mittelsteg</li>', 3, 82, 76, 1, 0, '2010-06-25 12:02:33', '2011-11-30 11:10:28'),
(409, 8, 'Kopfseitenlagerungskissen F', '', '01501', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 104, 91, 1, 0, '2010-04-16 10:50:14', '2011-11-30 11:08:58'),
(416, 7, 'Inkubatormatratze', '', '07300', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 65, 138, 1, 0, '2010-04-16 11:03:49', '2011-11-30 10:07:15'),
(417, 7, 'Inkubatormatratze', '', '07301', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 66, 139, 1, 0, '2010-04-16 11:04:19', '2011-11-30 10:07:55'),
(418, 7, 'Inkubatormatratzenauflage', '', '07400', '<li>Abstandsmaterial</li>\r\n<li>ohne Bezug</li>', 7, 31, 141, 1, 0, '2010-04-16 11:06:53', '2011-11-30 10:09:11'),
(419, 7, 'Inkubatormatratzenauflage', '', '07401', '<li>Abstandsmaterial</li>\r\n<li>ohne Bezug</li>', 7, 32, 142, 1, 0, '2010-04-16 11:07:26', '2011-11-30 10:09:56'),
(420, 7, 'Entbindungskeil', '', '01470', '<li>Schaumstoff VB100</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 32, 148, 1, 0, '2010-04-16 11:08:27', '2011-11-30 10:11:01'),
(421, 7, 'Seitengitterschutz fÃ¼r Kinderbett', '', '01701', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li>2x Klett/Flauschfixierung zur Fixierung an den GitterstÃ¤ben</li>', 3, 39, 149, 1, 0, '2010-04-16 11:10:17', '2011-11-30 10:13:17'),
(422, 7, 'Seitengitterschutz fÃ¼r Kinderbett', '', '01702', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li>2x Klett/Flauschfixierung zur Fixierung an den GitterstÃ¤ben</li>', 3, 39, 150, 1, 0, '2010-04-16 11:11:09', '2011-11-30 10:16:10'),
(423, 5, 'Ringplatte', '', '06003', '<li>Schaumstoff RG 30</li>', 6, 14, 111, 1, 0, '2010-04-16 11:14:46', '2011-11-30 09:22:12'),
(424, 5, 'druckentlastende RÃ¶ntgentischauflage', '', '06150', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 132, 125, 1, 0, '2010-04-16 11:16:43', '2011-11-30 09:39:09'),
(425, 5, 'druckentlastende RÃ¶ntgentischauflage', '', '06151', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 169, 126, 1, 0, '2010-04-16 11:17:05', '2011-11-30 09:40:10'),
(426, 5, 'druckentlastende RÃ¶ntgentischauflage', '', '06160', '<li>viskoelastischer Schaum/Schaumstoff RG 40</li>\r\n<li>mit Klettverschluss</li>', 3, 168, 127, 1, 0, '2010-04-16 11:17:49', '2011-11-30 09:41:32'),
(427, 5, 'Lagerungskeil', '', '06380', '<li>Schaumstoff RG 30</li>', 6, 53, 136, 1, 0, '2010-04-16 11:18:30', '2011-11-30 09:42:11'),
(430, 4, 'OP-Tischauflage 96 rutschhemmend', '', '00100R', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>Unterseite: PU-rutschhemmend, Farbe dunkelblau</li>\r\n<li>mit Klettverschluss</li>', 3, 136, 8, 1, 0, '2011-11-07 10:14:43', '2011-11-07 10:16:17'),
(431, 4, 'OP-Tischauflage 190 rutschhemmend', '', '00101R', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>Unterseite: PU-rutschhemmend, Farbe dunkelblau</li>\r\n<li>mit Klettverschluss</li>', 3, 258, 9, 1, 0, '2011-11-07 10:15:44', '2011-11-23 10:21:00'),
(432, 4, 'GYN-OP-Tischauflage rutschhemmend', '', '00130R', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>Unterseite: PU-rutschhemmend, Farbe dunkelblau</li>\r\n<li>mit Klettverschluss</li>', 3, 170, 12, 1, 0, '2011-11-07 10:24:39', '2011-11-07 10:24:39'),
(433, 4, 'OP-Bauchlagerungsset W, 3-teilig', '', '00143', '<li><u>Ober- und Unterteil:</u> Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>MaÃŸe: 30x50x14cm</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li><u>Knielagerungsplatte:</u> viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>MaÃŸe: 25x50x2,5cm</li>\r\n<li>mit Klettverschluss</li>', 3, 548, 109, 1, 0, '2011-11-07 10:30:42', '2011-11-07 10:31:43'),
(434, 4, 'Seitenlagerungskeil abgerundet', '', '00156', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 60, 14, 1, 0, '2011-11-07 10:34:20', '2011-11-07 10:34:20'),
(435, 4, 'Thoraxpositionierungskissen, 2-teilig', '', '00165R', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>Unterseite: PU-rutschhemmend, Farbe dunkelblau</li>\r\n<li>mit Klettverschluss</li>', 3, 116, 16, 1, 0, '2011-11-07 12:05:01', '2011-11-23 10:20:33'),
(436, 4, 'Thoraxpositionierungskissen, 2-teilig', '', '00166R', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>Unterseite: PU-rutschhemmend, Farbe dunkelblau</li>\r\n<li>mit Klettverschluss</li>', 3, 179, 17, 1, 0, '2011-11-07 12:05:50', '2011-11-23 10:20:12'),
(437, 4, 'Lagerungskissen', '', '00189', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 24, 22, 1, 0, '2011-11-07 12:12:55', '2011-11-23 10:19:47'),
(438, 4, 'Lagerungskissen', '', '00194', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 13, 28, 1, 0, '2011-11-07 12:15:29', '2011-11-07 12:15:29'),
(439, 4, 'Lagerungskissen', '', '00195', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 3, 14, 29, 1, 0, '2011-11-07 12:15:57', '2011-11-23 10:19:23'),
(440, 4, 'Lagerungskissen', '', '00196', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 17, 24, 1, 0, '2011-11-07 12:16:20', '2011-11-23 10:18:59'),
(441, 4, 'Lagerungskissen', '', '00197', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 17, 25, 1, 0, '2011-11-07 12:17:12', '2011-11-07 12:17:12'),
(442, 4, 'Halbrolle', '', '00229', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 35, 44, 1, 0, '2011-11-08 11:16:43', '2011-11-23 10:18:22'),
(443, 4, 'Halbrolle', '', '00232', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 88, 47, 1, 0, '2011-11-08 11:17:30', '2011-11-23 10:17:55'),
(444, 4, 'Halbrolle', '', '00233', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 58, 48, 1, 0, '2011-11-08 11:17:57', '2011-11-23 10:17:27'),
(445, 4, 'Dreiviertelrolle', '', '00243', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 17, 49, 1, 0, '2011-11-08 11:23:37', '2011-11-08 11:23:37'),
(446, 4, 'Kopf- und Armlagerungskissen', '', '00251', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 48, 53, 1, 0, '2011-11-08 11:25:44', '2011-11-23 10:13:04'),
(447, 4, 'OP-Kopfkissen N', '', '00274', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 107, 60, 1, 0, '2011-11-23 09:29:14', '2011-11-23 09:29:14'),
(448, 4, 'Haltegurt, gepolstert', '', '00320/1P', '<li>Schaumstoff RG 30 zur Polsterung</li>\r\n<li>AuÃŸenseite: Starkfolie, Farbe grau</li>\r\n<li>mit Klett/Flausch</li>', 3, 32, 83, 1, 0, '2011-11-23 10:04:46', '2011-11-23 10:04:46'),
(449, 4, 'Thoraxlagerungskeil mit Ausschnitt', '', '00164', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 85, 103, 1, 1, '2011-11-23 10:49:19', '2011-11-23 10:49:19'),
(450, 4, 'Brustkissen', '', '00167', '<li>Styropor/Schaumstoff RG 30</li>\r\n<li>Unterseite: PU-rutschhemmend, Farbe dunkelblau</li>\r\n<li>mit ReiÃŸverschluss und Abdecklasche</li>', 3, 57, 104, 1, 1, '2011-11-23 10:50:46', '2011-11-23 10:50:46'),
(451, 4, 'Lagerungskissen mit Ausschnitt W', '', '00168', '<li>Schaumstoff RG 56</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 257, 105, 1, 1, '2011-11-23 10:52:06', '2011-11-23 10:52:06'),
(452, 4, 'Lagerungskissen mit Ausschnitt M', '', '00169', '<li>Schaumstoff RG 56</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 270, 106, 1, 1, '2011-11-23 10:52:43', '2011-11-23 10:55:28'),
(453, 5, 'MRT-Tischauflage', '', '06200', '<li>Schaumstoff RG 30</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 44, 128, 1, 0, '2011-11-30 09:45:47', '2011-11-30 09:45:47'),
(454, 5, 'Kopf-Lagerungspolster, abgeschrÃ¤gt', '', '00451', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 60, 137, 1, 0, '2011-11-30 09:55:35', '2011-11-30 09:55:35'),
(455, 7, 'Sitzkissen rund mit Loch', '', '01435', '<li>Schaumstoff RG 56/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 47, 146, 1, 0, '2011-11-30 10:26:50', '2011-11-30 10:26:50'),
(456, 7, 'Lagerungsschlange', '', '05020', '<li>Schaumstoffflocken/Styroporkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 66, 151, 1, 0, '2011-11-30 10:27:54', '2011-11-30 10:27:54'),
(457, 7, 'Lagerungsschlange gebogen', '', '05025', '<li>Schaumstoffflocken/Styroporkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 56, 152, 1, 0, '2011-11-30 10:28:37', '2011-11-30 10:28:37'),
(458, 7, 'Lagerungskissen 75', '', '05030', '<li>Schaumstoffflocken/Styroporkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 21, 153, 1, 0, '2011-11-30 10:29:13', '2011-11-30 10:29:13'),
(459, 7, 'Lagerungskissen 80', '', '05040', '<li>Schaumstoffflocken/Styroporkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 38, 154, 1, 0, '2011-11-30 10:29:50', '2011-11-30 10:29:50'),
(460, 7, 'Lagerungskissen 40', '', '05060', '<li>Schaumstoffflocken/Styroporkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 18, 155, 1, 0, '2011-11-30 10:30:22', '2011-11-30 10:30:22'),
(461, 7, 'Beinlagerungskeil, gekammert', '', '05080', '<li>Schaumstoffflocken/Styroporkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 53, 156, 1, 0, '2011-11-30 10:30:56', '2011-11-30 10:30:56'),
(462, 7, 'Beinlagerungskeil, gekammert', '', '05081', '<li>Schaumstoffflocken/Styroporkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 49, 157, 1, 0, '2011-11-30 10:31:19', '2011-11-30 10:31:19'),
(463, 7, 'Armlagerungskeilkissen 20', '', '05090', '<li>Schaumstoffflocken/Styroporkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 63, 158, 1, 0, '2011-11-30 10:32:00', '2011-11-30 10:32:00'),
(464, 7, 'Armlagerungskeilkissen 20', '', '05095', '<li>Schaumstoffflocken/Styroporkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 40, 159, 1, 0, '2011-11-30 10:32:26', '2011-11-30 10:32:26'),
(465, 7, 'Lagerungsset, 4-teilig', '', '05100', '<li>Schaumstoffflocken/Styroporkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li><u>bestehend aus:</u> 1 Lagerungsschlange (PD 05020), 1 Lagerungskissen 80 (PD 05040), 1 Lagerungskissen 40 (PD 05060), 1 Beinlagerungskissen (PD05080)</li>', 3, 144, 109, 1, 0, '2011-11-30 10:34:25', '2011-11-30 10:34:25'),
(466, 8, 'Seitenlagerungskeil, abgerundet', '', '00156', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 60, 14, 1, 0, '2011-11-30 10:48:34', '2011-11-30 10:48:34'),
(467, 8, 'Kopf-Lagerungspolster, abgeschrÃ¤gt', '', '00450', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 74, 87, 1, 0, '2011-11-30 11:15:26', '2011-11-30 11:15:26'),
(468, 8, 'Knochenkissen', '', '01305', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 12, 168, 1, 0, '2011-11-30 11:16:35', '2011-11-30 11:16:35'),
(469, 8, 'Knochenkissen', '', '01306', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 10, 169, 1, 0, '2011-11-30 11:17:05', '2011-11-30 11:17:05'),
(470, 8, 'Kopfkissen', '', '01050', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 4, 12, 67, 1, 0, '2011-11-30 11:18:00', '2011-11-30 11:18:00'),
(471, 8, 'Kopfkissen', '', '01051', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 4, 15, 68, 1, 0, '2011-11-30 11:18:31', '2011-11-30 11:18:31'),
(472, 8, 'Auflage', '', '06142', '<li>Schaumstoff RG 40</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht bzw. mit Klettverschluss</li>', 3, 103, 125, 1, 0, '2011-11-30 11:19:38', '2011-11-30 11:19:38'),
(473, 8, 'Auflage', '', '06143', '<li>Schaumstoff RG 40</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht bzw. mit Klettverschluss</li>', 3, 112, 126, 1, 0, '2011-11-30 11:20:31', '2011-11-30 11:20:31'),
(474, 8, 'Auflage', '', '06145', '<li>Schaumstoff RG 40</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht bzw. mit Klettverschluss</li>', 3, 130, 127, 1, 0, '2011-11-30 11:21:18', '2011-11-30 11:21:18'),
(475, 8, 'Sandsack', '', '01730', '<li>feiner Sand im Inlett</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>\r\n<li>Gewicht: 1.200g</li>', 4, 6, 171, 1, 0, '2011-11-30 11:22:41', '2011-11-30 11:22:41'),
(476, 8, 'Sandsack', '', '01731', '<li>feiner Sand im Inlett</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>\r\n<li>Gewicht: 1.500g</li>', 4, 7, 172, 1, 0, '2011-11-30 11:23:09', '2011-11-30 11:23:09'),
(477, 8, 'Sandsack', '', '01732', '<li>feiner Sand im Inlett</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>\r\n<li>Gewicht: 2.000g</li>', 4, 9, 173, 1, 0, '2011-11-30 11:23:38', '2011-11-30 11:23:38'),
(478, 6, 'Patiententransporterauflage', '', '03001', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 66, 176, 1, 0, '2011-11-30 11:38:04', '2011-11-30 11:38:04'),
(479, 6, 'Patiententransporterauflage mit abgerundeten Ecken', '', '03002', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 167, 177, 1, 0, '2011-11-30 11:39:02', '2011-11-30 11:39:02'),
(480, 6, 'Lagerungskissen-Set, 7-teilig', '', '01090', '<li>Schaumstoff RG 30</li>\r\n<li>mit und ohne ReiÃŸverschluss (flache Kissen sind vollstÃ¤ndig vernÃ¤ht)</li>\r\n<li><u>bestehend aus:</u> 7 Lagerungskissen mit den MaÃŸen (20x20x5cm, 20x20x10cm, 35x20x10cm, 35x20x3cm, 35x35x3cm, 50x35x3cm, 50x50x3cm)', 4, 93, 109, 1, 0, '2011-11-30 11:57:00', '2011-11-30 11:57:00'),
(481, 6, 'Beinhochlagerungskeil 45Â° einfach mit Mulde', '', '01100', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 28, 187, 1, 0, '2011-12-01 09:44:27', '2011-12-01 09:44:27'),
(482, 6, 'Beinhochlagerungskeil 45Â° einfach mit Mulde', '', '01101', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 46, 188, 1, 0, '2011-12-01 09:45:07', '2011-12-01 09:45:07'),
(483, 6, 'Beinlagerungskeil mit Mulde', '', '01200', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 42, 189, 1, 0, '2011-12-01 09:45:55', '2011-12-01 09:45:55'),
(484, 6, 'Beinlagerungskeil mit Mulde', '', '01205', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 29, 190, 1, 0, '2011-12-01 09:46:32', '2011-12-01 09:46:32'),
(485, 6, 'Injektionskissen mit Mulde', '', '01210', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 9, 191, 1, 0, '2011-12-01 09:47:19', '2011-12-01 09:47:19'),
(486, 6, 'Injektionskissen mit Mulde', '', '01211', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 11, 192, 1, 0, '2011-12-01 09:47:53', '2011-12-01 09:47:53'),
(487, 6, 'Rolle', '', '01030', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 8, 178, 1, 0, '2011-12-01 09:48:50', '2011-12-01 09:48:50'),
(488, 6, 'Rolle', '', '01031', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 11, 113, 1, 0, '2011-12-01 09:49:23', '2011-12-01 09:49:23'),
(489, 6, 'Rolle', '', '01032', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 26, 179, 1, 0, '2011-12-01 09:49:46', '2011-12-01 09:49:46'),
(490, 6, 'Halbrolle', '', '01000', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 12, 180, 1, 0, '2011-12-01 09:50:16', '2011-12-01 09:50:16'),
(491, 6, 'Halbrolle', '', '01001', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 16, 181, 1, 0, '2011-12-01 09:50:44', '2011-12-01 09:50:44'),
(492, 6, 'Halbrolle', '', '01002', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 15, 182, 1, 0, '2011-12-01 09:52:11', '2011-12-01 09:52:11'),
(493, 6, 'Halbrolle', '', '01003', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 19, 183, 1, 0, '2011-12-01 09:52:37', '2011-12-01 09:52:37'),
(494, 6, 'Dreiviertelrolle', '', '01010', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 14, 184, 1, 0, '2011-12-01 09:53:07', '2011-12-01 09:53:07'),
(495, 6, 'Dreiviertelrolle', '', '01011', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 17, 185, 1, 0, '2011-12-01 09:53:34', '2011-12-01 09:53:34'),
(496, 6, 'Dreiviertelrolle', '', '01012', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 25, 186, 1, 0, '2011-12-01 09:54:00', '2011-12-01 09:54:00'),
(497, 6, 'Kopf-Lagerungspolster, abgeschrÃ¤gt', '', '00450', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 74, 87, 1, 0, '2011-12-01 09:55:10', '2011-12-01 09:55:10'),
(498, 6, 'Rescue-Kopflagerungspolster', '', '04500', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 174, 193, 1, 0, '2011-12-01 09:56:15', '2011-12-01 09:57:35'),
(499, 6, 'Nacken- und Fersenkissen 25', '', '00275', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 41, 61, 1, 0, '2011-12-01 11:30:56', '2011-12-01 11:30:56'),
(500, 6, 'Nacken- und Fersenkissen 50', '', '00276', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 83, 62, 1, 0, '2011-12-01 11:31:29', '2011-12-01 11:31:29'),
(501, 6, 'Kopfkissen N', '', '00273', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 54, 59, 1, 0, '2011-12-01 11:32:18', '2011-12-01 11:32:18'),
(502, 6, 'Kopfkissen N', '', '00274', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 107, 60, 1, 0, '2011-12-01 11:41:09', '2011-12-01 11:41:09'),
(503, 6, 'Seitenlagerungskeil, abgerundet', '', '00156', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 60, 14, 1, 0, '2011-12-01 11:42:12', '2011-12-01 11:42:12'),
(504, 6, 'Kopfkissen', '', '01050', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 4, 12, 67, 1, 0, '2011-12-01 11:43:09', '2011-12-01 11:43:09'),
(505, 6, 'Kopfkissen', '', '01051', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 4, 15, 68, 1, 0, '2011-12-01 11:43:51', '2011-12-01 11:43:51'),
(506, 6, 'Kopfkissen', '', '00282', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 37, 65, 1, 0, '2011-12-01 11:44:30', '2011-12-01 11:44:30'),
(507, 6, 'Kopfkissen', '', '00283', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 24, 66, 1, 0, '2011-12-01 11:45:08', '2011-12-01 11:45:08'),
(508, 1, 'Armlagerungskeil mit Mulde', '', '01201R', '<li>Schaumstoff RG 30</li>\r\n<li>Unterseite: PU-rutschhemmend, Farbe dunkelblau</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 42, 203, 1, 0, '2011-12-01 12:24:04', '2011-12-01 12:24:04'),
(509, 1, 'Sitzkissen -spezial-', '', '01424', '<li>Schaumstoff VB100/viskoelastischer Schaum</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 38, 222, 1, 0, '2011-12-01 12:38:23', '2011-12-01 12:38:23'),
(510, 1, 'Kopfkissen', '', '01050', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 4, 12, 67, 1, 0, '2011-12-01 12:50:05', '2011-12-01 12:50:05'),
(511, 1, 'Kopfkissen', '', '01051', '<li>Schaumstoff RG 30</li>\r\n<li>mit Klettverschluss</li>', 4, 15, 68, 1, 0, '2011-12-01 12:50:28', '2011-12-01 12:50:28'),
(512, 1, 'Lagerungskissen-Set, 7-teilig', '', '01090', '<li>Schaumstoff RG 30</li>\r\n<li>mit und ohne ReiÃŸverschluss (flache Kissen sind vollstÃ¤ndig vernÃ¤ht)</li>\r\n<li><u>bestehend aus:</u> 7 Lagerungskissen mit den MaÃŸen 20x20x5cm, 20x20x10cm, 35x20x10cm, 35x20x3cm, 35x35x3cm, 50x35x3cm, 50x50x3cm</li>', 4, 93, 109, 1, 0, '2011-12-01 12:52:49', '2011-12-01 12:52:49'),
(513, 3, 'ITS-Bauchlagerungsset spezial hoch, 2-teilig schrÃ¤ge Ecke mit Keil', '', '00147', '<li>Schaumstoff RG 35/viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li>MaÃŸe Oberteil: 35x60x24cm</li>\r\n<li>MaÃŸe Unterteil: 60x60x24cm</li>', 3, 802, 109, 1, 0, '2011-12-02 10:27:21', '2011-12-02 10:27:21'),
(514, 3, 'ITS-Bauchlagerungsset spezial hoch, 3-teilig schrÃ¤ge Ecke mit Keil', '', '00149', '<li>Schaumstoff RG 35/viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>\r\n<li>MaÃŸe Gesichtskissen: Ã˜35x24cm</li>\r\n<li>MaÃŸe Oberteil: 35x60x24cm</li>\r\n<li>MaÃŸe Unterteil: 60x60x24cm</li>', 3, 982, 109, 1, 0, '2011-12-02 10:30:09', '2011-12-02 10:30:09'),
(515, 3, 'ITS-Gesichtslagerungskissen', '', '00505', '<li>Schaumstoff RG 35/viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 180, 239, 1, 0, '2011-12-02 10:31:02', '2011-12-02 10:31:02'),
(516, 3, 'Seitenlagerungskeil, abgerundet', '', '00156', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 60, 14, 1, 0, '2011-12-02 10:44:57', '2011-12-02 10:44:57'),
(517, 3, 'Kopfring mit Rundplatte', '', '00266', '<li><u>2-teilig</u></li>\r\n<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>', 3, 120, 56, 1, 0, '2011-12-02 10:46:13', '2011-12-02 10:46:13'),
(518, 3, 'Kopflagerungskissen 50', '', '00271', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 104, 58, 1, 0, '2011-12-02 10:46:47', '2011-12-02 10:46:47'),
(519, 3, 'Nacken- und Fersenkissen 50', '', '00276', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 83, 62, 1, 0, '2011-12-02 10:47:16', '2011-12-02 10:47:16'),
(520, 3, 'Lagerungsschlange gebogen', '', '05025', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 56, 152, 1, 0, '2011-12-02 11:14:42', '2011-12-02 11:14:42'),
(521, 3, 'Lagerungskissen 75', '', '05030', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 21, 153, 1, 0, '2011-12-02 11:15:18', '2011-12-02 11:15:18'),
(522, 3, 'Armlagerungskeilkissen', '', '05090', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 63, 158, 1, 0, '2011-12-02 11:22:53', '2011-12-02 11:22:53'),
(523, 2, 'Rolle', '', '00221', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 12, 39, 1, 0, '2011-12-05 09:29:45', '2011-12-05 09:29:45'),
(524, 2, 'Rolle', '', '00224', '<li>viskoelastischer Schaum/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 27, 42, 1, 0, '2011-12-05 09:30:14', '2011-12-05 09:30:14'),
(525, 2, 'Dreiviertelrolle', '', '00241', '<li>Schaumstoff RG 30/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 55, 51, 1, 0, '2011-12-05 09:31:41', '2011-12-05 09:31:41'),
(526, 2, 'Armlagerungskeilkissen 20', '', '05090', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 63, 158, 1, 0, '2011-12-05 10:06:53', '2011-12-05 10:06:53'),
(527, 2, 'Lagerungsschlange gebogen', '', '05025', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 56, 152, 1, 0, '2011-12-05 10:07:33', '2011-12-05 10:07:33'),
(528, 2, 'Lagerungskissen 75', '', '05030', '<li>Schaumstoffflocken/Polystyrolkugeln</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 21, 153, 1, 0, '2011-12-05 10:08:00', '2011-12-05 10:08:00'),
(529, 2, 'Sandsack', '', '01730', '<li>feiner Sand im Inlett</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>\r\n<li>Gewicht: 1.200g</li>', 4, 6, 171, 1, 0, '2011-12-05 10:09:45', '2011-12-05 10:09:45'),
(530, 2, 'Sandsack', '', '01731', '<li>feiner Sand im Inlett</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>\r\n<li>Gewicht: 1.500g</li>', 4, 7, 172, 1, 0, '2011-12-05 10:10:29', '2011-12-05 10:10:29'),
(531, 2, 'Sandsack', '', '01732', '<li>feiner Sand im Inlett</li>\r\n<li>vollstÃ¤ndig vernÃ¤ht</li>\r\n<li>Gewicht: 2.000g</li>', 4, 9, 173, 1, 0, '2011-12-05 10:11:02', '2011-12-05 10:11:02'),
(532, 2, 'Seitenlagerungskeil 30Â° links', '', '01480', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 40, 230, 1, 0, '2011-12-05 10:12:06', '2011-12-05 10:12:06'),
(533, 2, 'Seitenlagerungskeil 30Â° rechts', '', '01481', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 40, 230, 1, 0, '2011-12-05 10:12:35', '2011-12-05 10:12:35'),
(534, 2, 'Lagerungskeil 15Â°', '', '01460', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 55, 229, 1, 0, '2011-12-05 10:13:17', '2011-12-05 10:13:17'),
(535, 2, 'Lagerungskeil 18Â°', '', '01450', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 42, 228, 1, 0, '2011-12-05 10:13:45', '2011-12-05 10:13:45'),
(536, 2, 'Lagerungskeil 30Â°', '', '01440', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 36, 227, 1, 0, '2011-12-05 10:14:20', '2011-12-05 10:14:20'),
(537, 2, 'Sitzkeil', '', '01432', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 23, 253, 1, 0, '2011-12-05 10:17:57', '2011-12-05 10:17:57'),
(538, 2, 'Sitzkeil', '', '01430', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 22, 254, 1, 0, '2011-12-05 10:18:30', '2011-12-05 10:18:30'),
(539, 2, 'Sitzkissen SP', '', '01425', '<li>Schaumstoff VB100/Schaumstoff RG 40</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 38, 65, 1, 0, '2011-12-05 10:19:42', '2011-12-05 10:19:42'),
(540, 2, 'Sitzkissen', '', '01420', '<li>Schaumstoff RG 40</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 20, 219, 1, 0, '2011-12-05 10:22:29', '2011-12-05 10:25:06'),
(541, 2, 'Sitzkissen', '', '01421', '<li>Schaumstoff RG 40</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 21, 220, 1, 0, '2011-12-05 10:23:03', '2011-12-05 10:25:43'),
(542, 2, 'Arthrosekissen, rechts abgesenkt', '', '01422', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 1, 27, 249, 1, 0, '2011-12-05 10:24:36', '2011-12-05 10:24:36'),
(543, 2, 'Arthrosekissen, links abgesenkt', '', '01411', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 1, 27, 249, 1, 0, '2011-12-05 10:26:20', '2011-12-05 10:26:20'),
(544, 2, 'Arthrosekissen, beidseitig abgesenkt', '', '01412', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 1, 27, 249, 1, 0, '2011-12-05 10:26:53', '2011-12-05 10:26:53'),
(545, 2, 'Stufenlagerungskissen', '', '01340', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 63, 207, 1, 0, '2011-12-05 10:27:37', '2011-12-05 10:27:37'),
(546, 2, 'Stufenlagerungskissen', '', '01341', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 104, 208, 1, 0, '2011-12-05 10:28:18', '2011-12-05 10:28:18'),
(547, 2, 'Stufenlagerungskissen', '', '01342', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 57, 209, 1, 0, '2011-12-05 10:28:57', '2011-12-05 10:28:57'),
(548, 2, 'Venenkissen', '', '01330', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 35, 205, 1, 0, '2011-12-05 10:31:13', '2011-12-05 10:31:13'),
(549, 2, 'Venenkissen', '', '01331', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 78, 206, 1, 0, '2011-12-05 10:31:43', '2011-12-05 10:31:43'),
(550, 2, 'Knochenkissen', '', '01305', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 12, 168, 1, 0, '2011-12-05 10:33:12', '2011-12-05 10:33:12'),
(551, 2, 'Knochenkissen', '', '01306', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 10, 169, 1, 0, '2011-12-05 10:34:02', '2011-12-05 10:34:02'),
(552, 2, 'Armauflage mit verstellbarem Schulterband', '', '01240', '<li>Schaumstoff RG 30</li>', 4, 24, 248, 1, 0, '2011-12-05 10:34:53', '2011-12-05 10:34:53'),
(553, 2, 'Seitenlagerungskeil, abgerundet', '', '00156', '<li>Schaumstoff RG 35/Abstandsmaterial</li>\r\n<li>mit Klettverschluss</li>', 3, 60, 14, 1, 0, '2011-12-05 10:35:39', '2011-12-05 10:35:39'),
(554, 2, 'Beinlagerungskeil mit Mulde', '', '01200', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 42, 189, 1, 0, '2011-12-05 10:36:28', '2011-12-05 10:36:28'),
(555, 2, 'Beinlagerungskeil mit Mulde', '', '01205', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 29, 190, 1, 0, '2011-12-05 10:37:30', '2011-12-05 10:37:30'),
(556, 2, 'Beinhochlagerungskeil 45Â° einfach mit Mulde', '', '01100', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 28, 187, 1, 0, '2011-12-05 10:38:04', '2011-12-05 10:38:04'),
(557, 2, 'Beinhochlagerungskeil 45Â° einfach mit Mulde', '', '01101', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 46, 188, 1, 0, '2011-12-05 10:38:32', '2011-12-05 10:38:32'),
(558, 2, 'Beinhochlagerungskeil 45Â° doppelt mit Mulde', '', '01110', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 50, 197, 1, 0, '2011-12-05 10:39:24', '2011-12-05 10:39:24'),
(559, 2, 'Beinhochlagerungskeil 45Â° doppelt mit Mulde', '', '01111', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 67, 198, 1, 0, '2011-12-05 10:39:58', '2011-12-05 10:39:58'),
(560, 2, 'Spreizkeil', '', '01120', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 44, 199, 1, 0, '2011-12-05 10:41:43', '2011-12-05 10:41:43'),
(561, 2, 'Spreizkeil', '', '01122', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 45, 201, 1, 0, '2011-12-05 10:42:23', '2011-12-05 10:42:23'),
(562, 2, 'Beinspreizkeil ohne Mulden', '', '01130', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 34, 202, 1, 0, '2011-12-05 10:43:04', '2011-12-05 10:43:04'),
(563, 2, 'Armlagerungskeil ohne Mulde', '', '01201', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 24, 203, 1, 0, '2011-12-05 10:43:44', '2011-12-05 10:43:44'),
(564, 2, 'Armlagerungskeil mit Mulde', '', '01203', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 3, 42, 203, 1, 0, '2011-12-05 10:44:25', '2011-12-05 10:44:25'),
(565, 2, 'Injektionskissen mit Mulde', '', '01210', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 9, 245, 1, 0, '2011-12-05 10:44:58', '2011-12-05 10:44:58'),
(566, 2, 'Injektionskissen mit Mulde', '', '01211', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 11, 246, 1, 0, '2011-12-05 10:45:23', '2011-12-05 10:45:23'),
(567, 2, 'Injektionskissen mit Mulde', '', '01212', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 10, 247, 1, 0, '2011-12-05 10:45:48', '2011-12-05 10:45:48'),
(568, 2, 'Injektionskissen mit Mulde und Klett/Flauschfixierung', '', '01220', '<li>Schaumstoff RG 30</li>\r\n<li>mit ReiÃŸverschluss</li>', 4, 10, 245, 1, 0, '2011-12-05 10:49:30', '2011-12-05 10:49:30');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `site_contents`
--

CREATE TABLE IF NOT EXISTS `site_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param` varchar(255) NOT NULL,
  `content_paragraph` text NOT NULL,
  `position` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `site_contents`
--

INSERT INTO `site_contents` (`id`, `controller`, `action`, `param`, `content_paragraph`, `position`, `active`, `created`, `modified`) VALUES
(1, 'Pages', 'display', 'imprint', '<h1>Impressum</h1>\r\n<p>&nbsp;</p>\r\n<p>Ralf Patzschke</p>\r\n<p>Holunderweg 4</p>\r\n<p>04416 Markkleeberg</p>\r\n<p>&nbsp;</p>\r\n<p>Telefon: +49 341 358 18 02</p>\r\n<p>Fax: +49 341 358 18 95</p>\r\n<p>E-Mail: info@padcon-leipzig.de</p>\r\n<p>Internet: www.padcon-leipzig.de</p>\r\n<p>&nbsp;</p>\r\n<p><b>Vertretungsberechtigter:</b></p>\r\n<p>Inhaber Ralf Patzschke</p>\r\n<p>&nbsp;</p>\r\n<p><b>Inhaltlich Verantwortlicher gemÃ¤ÃŸ Â§ 6 MDStV:</b></p>\r\n<p>Ralf Patzschke</p>\r\n<p>&nbsp;</p>\r\n<p><b>Haftungshinweis:</b></p>\r\n<p>Trotz sorgfÃ¤ltiger inhaltlicher Kontrolle Ã¼bernehmen wir keine Haftung fÃ¼r die Inhalte externer Links. FÃ¼r den Inhalt der verlinkten Seiten sind ausschlieÃŸlich deren Betreiber verantwortlich.</p>\r\n<p>&nbsp;</p>\r\n<p>Mit Urteil vom 12.Mai 1998 - 312 O 85/98 - "Haftung fÃ¼r Links" hat das Landgericht Hamburg entschieden, dass man durch die Anbringung eines Links die Inhalte der gelinkten Seite ggf. mit zu verantworten hat. Dies kann nur dadurch verhindert werden, dass man sich ausdrÃ¼cklich von diesen Inhalten distanziert. Hiermit distanzieren wir uns ausdrÃ¼cklich von allen Inhalten aller gelinkten Seiten auf unserer InternetprÃ¤senz und machen uns diese Inhalte nicht zu eigen. Diese ErklÃ¤rung gilt fÃ¼r alle auf unserer InternetprÃ¤senz publizierten Links und fÃ¼r alle Inhalte der Seiten, zu denen die bei uns verÃ¶ffentlichten Links fÃ¼hren.</p>', 'center', 1, '2011-12-06 23:52:42', '2011-12-13 09:14:07'),
(2, 'Pages', 'display', 'about_us', '<h1>Ãœber uns</h1>\r\n&nbsp;\r\n<p>Die Firma padcon wurde als padcon GmbH Dresden im Jahre 1991 in Dresden gegrÃ¼ndet. 1995 verlegte die Firma ihren Sitz nach Leipzig/Markkleeberg. Im Jahre 2003 strukturierte sie sich um und firmierte fortan unter padcon Leipzig-Ralf Patzschke.</p>\r\n&nbsp;\r\n<p>Die Firma wird von Beginn an von Herrn Ralf Patzschke geleitet.</p>\r\n<p>Als mittelstÃ¤ndiges Unternehmen suchen wir mit unserem eigenen Produkten vordergrÃ¼ndig den Direktkontakt zu unseren Kunden, schlieÃŸen aber die UnterstÃ¼tzung durch andere FachhÃ¤ndler nicht aus.</p>\r\n&nbsp;\r\n<p>In den letzten 10 Jahren konzentrierte sich padcon schwerpunktmÃ¤ÃŸig auf den Vertrieb von Lagerungshilfsmitteln speziell zur druckentlastenden Lagerung. Bei unseren eigen entwickelten Sortiment arbeiten wir ausschlieÃŸlich mit Produzenten aus unserer Region zusammen.</p>\r\n&nbsp;\r\n<p>Unsere Vertriebsprodukte sind vorrangig Medizinprodukte fÃ¼r den Krankenhaus- und Altenpflegebereich. Dabei dienen wir einer Vielzahl von renommierten Firmen als Vertriebspartner.</p>\r\n&nbsp;\r\n<p>Folgende Produkte und Dienstleistungen bieten wir an:</p>\r\n&nbsp;\r\n<li>Hilfsmittel fÃ¼r die Patientenlagerung</li><li>Hilfsmittel fÃ¼r den Patiententransfer</li>\r\n<li>Hilfsmittel fÃ¼r den Patiententransport</li>\r\n<li>Produkte aus Edelstahl</li><li>Medizinprodukte fÃ¼r die Pflege</li>\r\n<li>Medizintechnik</li>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h1>Das Team</h1>\r\n&nbsp;\r\n<p><img style="float: left;" src="http://media.padcon-leipzig.de/media/image/patzschke.png" />\r\n<p>&nbsp;</p>\r\n<p>&emsp;<b>Ralf Patzschke</b></p>\r\n<p>&emsp;GeschÃ¤ftsinhaber</p>\r\n&nbsp;\r\n<p>&emsp;Tel.: 0341 - 358 1802</p>\r\n<p>&emsp;Fax: 0341 - 358 1895</p>\r\n<p>&emsp;Mobil: 0172 - 93 77 444</p>\r\n<p>&emsp;e-mail: ralf.patzschke@padcon-leipzig.de</p></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img style="float: left;" src="images/schoppe.jpg" />\r\n&emsp;Stephanie Schoppe\r\n<p>&emsp;Bereich: Vertrieb und Makting</p>\r\n&nbsp;\r\n<p>&emsp;Mobil: 0176 - 305 38 440</p>\r\n<p>&emsp;e-mail: s.schoppe@padcon-leipzig.de</p>\r\n</p>', 'center', 1, '2011-12-06 23:55:56', '2012-01-17 10:36:23'),
(3, 'Pages', 'display', 'agb', '<h1><b>Allgemeine Lieferungs- und Zahlungsbedingungen der Firma padcon Leipzig-Ralf Patzschke</b></h1>\r\n<p>&nbsp;</p>\r\n<p><b>I. Allgemeines</b></p>\r\n<p>1. Die nachfolgenden GeschÃ¤ftsbedingungen sind Bestandteil eines jeden der mit der Firma padcon Leipzig und eines Unternehmens (Â§14 BGB) abgeschlossenen Vertrags und gelten ebenfalls fÃ¼r kÃ¼nftige GeschÃ¤fte mit dem Besteller.</p>\r\n<p>2. Unsere Verkaufsbedingungen gelten ausschlieÃŸlich. Dazu abweichende oder entgegenstehende Bedingungen des Bestellers erkennen wir nicht an, auch nicht durch vorbehaltslose VertragsdurchfÃ¼hrung.</p>\r\n<p>3. Alle abweichenden Vereinbarungen, die den Vertrag betreffen, sind nur durch schriftliche BestÃ¤tigung wirksam. Eine Aufhebung oder Ã„nderung gilt nur fÃ¼r den jeweiligen Vertragsschluss.\r\n</p>\r\n<p>&nbsp;</p>\r\n<p><b>II. Vertrag</b></p>\r\n<p>1. Unsere Angebote sind freibleibend. Produktionsbeschreibungen, Prospekte und weitere Informationen sind unverbindlich.</p>\r\n<p>2. Wir behalten uns an allen Produktabbildungen und Zeichnungen Eigentumsund Urheberrechte vor.</p>\r\n<p>3. Der vom Besteller unterzeichnete Vertrag gilt von uns als akzeptiert, wenn er schriftlich oder mÃ¼ndlich bestÃ¤tigt wird, oder wenn wir die Annahme nicht innerhalb von 2 Wochen ablehnen.</p>\r\n<p>&nbsp;</p>\r\n<p><b>III. Lieferbedingungen / Zahlung</b></p>\r\n<p>1. Unsere Preise verstehen sich, soweit nicht anders vereinbart, â€žab Werk, zuzÃ¼glich Versandkostenâ€œ ausschlieÃŸlich Versicherung, Frachten, Aufstellung. Alle Preisangaben gelten ohne gesetzliche Mehrwertsteuer.</p>\r\n<p>2. Die Verpackung erfolgt mit grÃ¶ÃŸtmÃ¶glicher Sorgfalt; sie wird nicht zurÃ¼ckgenommen.</p>\r\n<p>3. Alle Sendungen reisen auf Gefahr des EmpfÃ¤ngers, auch bei Frankierlieferungen. TransportschÃ¤den/ -verluste werden nicht Ã¼bernommen.</p>\r\n<p>4. Zahlungen sind, wenn nicht anderslautend vereinbart, 30 Tage netto ab Rechnungsdatum zu entrichten.</p>\r\n<p>5. Bei Nichteinhaltung behalten wir uns vor, Verzugszinsen in HÃ¶he von 5 Prozentpunkten Ã¼ber dem Basiszinssatz (Â§288 Abs. 1 Satz 2 BGB) geltend zu machen.</p>\r\n<p>6. Andere Zahlungsformen, sowie der Abzug von Skonto bedÃ¼rfen unserer schriftlichen BestÃ¤tigung.</p>\r\n<p>&nbsp;</p>\r\n<p><b>IV. Lieferung / LieferverzÃ¶gerung</b></p>\r\n<p>1. Der Umfang unserer Lieferpflicht ergibt sich ausschlieÃŸlich aus diesem Vertrag. Konstruktions-, Farb- und FormÃ¤nderungen, die ausschlieÃŸlich auf eine Verbesserung der Technik oder auf Forderungen des Gesetzgebers beruhen, bleiben der Firma padcon Leipzig vorbehalten.</p>\r\n<p>2. Der Besteller Ã¼bernimmt die Verantwortung fÃ¼r die Angaben in den uns Ã¼berstellten Unterlagen, wie Zeichnungen, PlÃ¤ne etc.</p>\r\n<p>3. Sind Teillieferungen fÃ¼r den Besteller zumutbar, kÃ¶nnen diese erfolgen und in Rechnung gestellt werden.</p>\r\n<p>4. Sollte die Firma padcon Leipzig nicht in der Lage sein, eine Lieferfrist einzuhalten infolge von uns nicht beherrschbarer UmstÃ¤nde, so verlÃ¤ngert sich unsere Lieferzeit um den angemessenen Zeitraum. Der Besteller wird dann unverzÃ¼glich informiert. Sollte die VerzÃ¶gerung lÃ¤nger als 1 Monat nach vereinbarter Lieferfrist andauern, kÃ¶nnen beide Parteien vom Vertrag zurÃ¼cktreten. Weitere AnsprÃ¼che einer von uns nicht verschuldeten LieferverzÃ¶gerung werden ausgeschlossen.</p>\r\n<p>5. Wird der Versand auf Wunsch des Bestellers verzÃ¶gert, so werden ihm, beginnend einen Monat nach Bereitstellung, die durch die Lagerung entstandenen Kosten mit 5,00 Euro pro Monat Kartonplatz in Rechnung gestellt.</p>\r\n<p>6. Wird nach Abschluss eines Vertrags bekannt, dass der Besteller keine GewÃ¤hr fÃ¼r seine ZahlungsfÃ¤higkeit hat oder der Zahlungsanspruch in Gefahr ist, so behalten wir uns vor, die Lieferung der Ware so lange zu verweigern, bis die Zahlung erfolgt ist oder eine entsprechende Zahlungssicherheit erfolgt ist.</p>\r\n<p>&nbsp;</p>\r\n<p><b>V. ErfÃ¼llungsort / Gerichtsstand</b></p>\r\n<p>1. ErfÃ¼llungsort fÃ¼r alle sich aus dem VertragsverhÃ¤ltnis ergebenden Rechte und Pflichten ist der Sitz unserer Firma.</p>\r\n<p>2. FÃ¼r alle sich aus dem VertragsverhÃ¤ltnis ergebenden Rechtsstreitigkeiten bestimmt sich der Gerichtsstand nach unserem Firmensitz.</p>\r\n<p>&nbsp;</p>\r\n<p><b>VI. Eigentumsvorbehalt</b></p>\r\n<p>1. Die Ware bleibt Eigentum der Firma padcon Leipzig, bis unsere sÃ¤mtlichen Forderungen gegen den Besteller aus der GeschÃ¤ftsvereinbarung inklusive der kÃ¼nftigen Forderungen, beglichen sind.</p>\r\n<p>2. Der Besteller ist berechtigt, die Vorbehaltsware unter weiterem Eigentumsvorbehalt zu verÃ¤uÃŸern, sofern dies dem ordentlichen GeschÃ¤ftsgang entspricht.</p>\r\n<p>3. Der Besteller tritt alle Forderungen ab, die ihm aus der WeiterverÃ¤uÃŸerung erwachsen sind. Zur Einziehung der Forderung bleibt er auch nach der Abtretung ermÃ¤chtigt. Wir sind davon ungeachtet befugt, die Forderungen selbst einzuziehen. Solange der Besteller seinen Zahlungsverpflichtungen nachkommt, werden wir von diesem Recht keinen Gebrauch machen. Auf Verlangen hat der Besteller uns die zum Einzug erforderlichen Angaben zu machen und die entsprechenden Unterlagen auszuhÃ¤ndigen, sowie den Schuldner von der Abtretung zu unterrichten.</p>\r\n<p>4. Zahlungsverzug des Bestellers berechtigt die Firma padcon Leipzig zum RÃ¼cktritt des Vertrags und RÃ¼cknahme der Ware. Um die Ware zurÃ¼ckzunehmen gestattet uns der KÃ¤ufer unwiderruflich, seine Lager- und GeschÃ¤ftsrÃ¤ume zu betreten.</p>\r\n<p>5. Der Besteller verpflichtet sich, uns unverzÃ¼glich zu benachrichtigen, falls PfÃ¤ndungen oder sonstige Eingriffe Dritter vorgenommen werden, sowie die Vorbehaltsware gegen Diebstahl, Feuer und Wasser zu versichern.</p>\r\n<p>6. Der Besteller hat das Recht, die Freigabe der uns zustehenden Sicherheiten zu verlangen, soweit ihr realisierbarer Wert den Wert der zu sichernden Forderung um 20% Ã¼bersteigt.</p>\r\n<p>&nbsp;</p>\r\n<p><b>VII. GewÃ¤hrleistung</b></p>\r\n<p>1. ZunÃ¤chst finden hier die gesetzlichen Untersuchungs- und RÃ¼geobliegenheiten des Â§377 HGB Anwendung.</p>\r\n<p>2. SachmÃ¤ngel, die den Wert und die Funktion der Ware zu dem uns erkennbaren Gebrauch nicht oder unwesentlich beeintrÃ¤chtigen, bedingen keine weiteren Rechte des Bestellers.</p>\r\n<p>3. Weist die Ware bei GefahrenÃ¼bergang einen Sachmangel auf, so sind wir zur NacherfÃ¼llung verpflichtet, nach unserer Wahl durch Nachbesserung oder Ersatzlieferung. Die Kosten der NacherfÃ¼llung, insbesondere Fracht, Arbeits- und Materialkosten gehen zu unseren Lasten. Entsprechen diese Kosten mehr als 50% des Auftragswerts sind wir berechtigt, die NacherfÃ¼llung zu verweigern.</p>\r\n<p>4. RÃ¼cklieferungen bei vom Besteller vermutetem Sachmangel werden nur nach unserer vorherigen Zustimmung, fracht- und spesenfrei angenommen.</p>\r\n<p>5. SchlÃ¤gt die NacherfÃ¼llung fehl, oder wird sie nach angemessener Frist vom Besteller verweigert, so kann der Besteller vom Vertrag zurÃ¼cktreten der eine entsprechende Minderung des Kaufpreises fordern.</p>\r\n<p>6. FÃ¼hrt der Sachmangel zu einem Schaden, so haften wir nach den gesetzlichen Bestimmungen.</p>\r\n<p>7. Falls der Schaden auf eine schuldhafte Verletzung der wesentlichen Vertragspflichten beruht oder einer sogenannten â€žKardinalspflichtâ€œ haften wir nur fÃ¼r den vertragstypischen Schaden.</p>\r\n<p>8. Weitergehende vertragliche und deliktische AnsprÃ¼che des Bestellers schlieÃŸen wir aus, insbesondere Verlust aus entgangenem Gewinn oder sonstige VermÃ¶gensschÃ¤den.</p>\r\n<p>9. Die vorstehenden Bedingungen gelten nicht fÃ¼r gebrauchte Ware. Bei diesen haften wir nur bei schriftlich vereinbarter GarantieÃ¼bernahme.</p>\r\n<p>10. Alle unsere Produkte mÃ¼ssen entsprechend der Gebrauchs- und Wartungsanleitungen behandelt werden. Sollten dem entgegen diese Hinweise nicht befolgt werden, Produkte unsachgemÃ¤ÃŸ behandelt werden, Teile ausgewechselt oder Produkte in Kombination mit fremden LagergerÃ¤ten benutzt werden oder sonstige VerÃ¤nderungen durch nicht qualifizierte Personen vorgenommen werden, so erlischt unsere GewÃ¤hrleistung. Bei Vorliegen eines Mangels hat der Besteller dann nachzuweisen, dass dieser nicht durch eine der vorstehenden Eingriffe entstanden ist.</p>\r\n<p>&nbsp;</p>\r\n<p><b>VIII. VerjÃ¤hrung</b></p>\r\n<p>1. Der NacherfÃ¼llungsanspruch des Bestellers verjÃ¤hrt vorbehaltlich der Â§438 Nr. 2, 479 BGB in einem Jahr ab Ablieferung der Ware: bei gebrauchten Sachen bestehen keine GewÃ¤hrleistungsansprÃ¼che. Das Recht auf RÃ¼cktritt und Minderung ist demzufolge ausgeschlossen.</p>\r\n<p>2. FÃ¼r SchadensersatzansprÃ¼che betrÃ¤gt die VerjÃ¤hrungsfrist vorbehaltlich der Â§430 Nr. 2, 479 BGB ein Jahr.</p>\r\n<p>3. Bei AnsprÃ¼chen aus dem ProdHaftG in FÃ¤llen von Vorsatz und grober FahrlÃ¤ssigkeit besteht die gesetzliche VerjÃ¤hrung.</p>\r\n<p>&nbsp;</p>\r\n<p><b>IX Sonstiges</b></p>\r\n<p>1. Die Rechte aus diesem Vertrag sind nicht Ã¼bertragbar.</p>\r\n<p>2. Es gilt ausschlieÃŸlich deutsches Recht unter Ausschluss des UN-Kaufrechts (CISG).</p>\r\n<p>3. Die Unwirksamkeit einzelner Bestimmungen hat keinen Einfluss auf die Wirksamkeit der Ã¼brigen.</p>\r\n<p>&nbsp;</p>\r\n<p>Stand 01.01.2010</p>', 'center', 1, '2011-12-06 23:56:54', '2011-12-13 09:18:02');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sizes`
--

CREATE TABLE IF NOT EXISTS `sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `height` varchar(5) DEFAULT NULL,
  `width` varchar(5) DEFAULT NULL,
  `depth` varchar(5) DEFAULT NULL,
  `inner` varchar(5) DEFAULT NULL,
  `outer` varchar(5) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Maße der Produkte' AUTO_INCREMENT=256 ;

--
-- Daten für Tabelle `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `height`, `width`, `depth`, `inner`, `outer`, `created`, `modified`) VALUES
(8, '50x96x2,5cm', '2', '96', '50', NULL, NULL, '2011-11-07 09:15:02', '2011-11-07 09:15:02'),
(9, '50x190x2,5cm', '2', '190', '50', NULL, NULL, '2011-11-07 09:15:16', '2011-11-07 09:15:16'),
(10, '50x100x2,5cm', '2', '100', '50', NULL, NULL, '2011-11-07 09:15:32', '2011-11-07 09:15:32'),
(11, '50x115x2,5cm', '2', '115', '50', NULL, NULL, '2011-11-07 09:15:53', '2011-11-07 09:15:53'),
(12, '50x108x2,5cm', '2', '108', '50', NULL, NULL, '2011-11-07 09:16:10', '2011-11-07 09:16:10'),
(13, '50x72x15/3cm', '15', '72', '50', NULL, NULL, '2011-11-07 09:16:45', '2011-11-07 09:16:45'),
(14, '50x25x10/5/0cm', '10', '25', '50', NULL, NULL, '2011-11-07 09:17:08', '2011-11-07 09:17:08'),
(15, '60x40x10cm', '10', '40', '60', NULL, NULL, '2011-11-07 09:17:28', '2011-11-07 09:17:28'),
(16, '21/8x77/63x5cm', '5', '77', '21', NULL, NULL, '2011-11-07 09:17:50', '2011-11-07 09:17:50'),
(17, '21/8x77/63x9cm', '9', '77', '21', NULL, NULL, '2011-11-07 09:18:06', '2011-11-07 09:18:06'),
(18, '15x45x1,5cm', '1', '45', '15', NULL, NULL, '2011-11-07 09:18:20', '2011-11-07 09:18:20'),
(19, '17x50x1,5cm', '1', '50', '17', NULL, NULL, '2011-11-07 09:18:34', '2011-11-07 09:18:34'),
(20, '30x45x1,5cm', '1', '45', '30', NULL, NULL, '2011-11-07 09:18:49', '2011-11-07 09:18:49'),
(21, '30x55x1,5cm', '1', '55', '30', NULL, NULL, '2011-11-07 09:19:44', '2011-11-07 09:19:44'),
(22, '24x40x5cm', '5', '40', '24', NULL, NULL, '2011-11-07 09:19:57', '2011-11-07 09:19:57'),
(23, '20x40x5cm', '5', '40', '20', NULL, NULL, '2011-11-07 09:44:41', '2011-11-07 09:44:41'),
(24, '25x30x5,5cm', '5', '30', '25', NULL, NULL, '2011-11-07 09:44:52', '2011-11-07 09:44:52'),
(25, '20x24x4cm', '5', '24', '20', NULL, NULL, '2011-11-07 09:45:03', '2011-11-07 12:17:26'),
(26, '25x30x3cm', '3', '30', '25', NULL, NULL, '2011-11-07 09:45:13', '2011-11-07 09:45:13'),
(27, '25x30x6,5cm', '6', '30', '25', NULL, NULL, '2011-11-07 09:45:43', '2011-11-07 09:45:43'),
(28, '20x30x5,5cm', '5', '30', '20', NULL, NULL, '2011-11-07 09:46:07', '2011-11-07 09:46:07'),
(29, '20x30x6,5cm', '6', '30', '20', NULL, NULL, '2011-11-07 09:46:20', '2011-11-07 09:46:20'),
(30, '20x20x5cm', '5', '20', '20', NULL, NULL, '2011-11-07 09:46:34', '2011-11-07 09:46:34'),
(31, '20x20x10cm', '10', '20', '20', NULL, NULL, '2011-11-07 09:46:43', '2011-11-07 09:46:43'),
(32, '20x35x10cm', '10', '35', '20', NULL, NULL, '2011-11-07 09:46:50', '2011-11-07 09:46:50'),
(33, '20x35x3cm', '3', '35', '20', NULL, NULL, '2011-11-07 09:46:59', '2011-11-07 09:46:59'),
(34, '35x35x3cm', '3', '35', '35', NULL, NULL, '2011-11-07 09:47:07', '2011-11-07 09:47:07'),
(35, '35x50x3cm', '3', '50', '35', NULL, NULL, '2011-11-07 09:47:15', '2011-11-07 09:47:15'),
(36, '50x50x3cm', '3', '50', '50', NULL, NULL, '2011-11-07 09:47:24', '2011-11-07 09:47:24'),
(37, '18x35x9cm', '9', '35', '18', NULL, NULL, '2011-11-07 09:48:11', '2011-11-07 09:48:11'),
(38, 'Ã˜15x40cm', NULL, '40', NULL, NULL, '15', '2011-11-07 09:48:32', '2011-11-07 09:48:32'),
(39, 'Ã˜6x20cm', NULL, '20', NULL, NULL, '6', '2011-11-07 09:48:41', '2011-11-07 09:48:41'),
(40, 'Ã˜15x20cm', NULL, '20', NULL, NULL, '15', '2011-11-07 09:48:50', '2011-11-07 09:48:50'),
(41, 'Ã˜18x20cm', NULL, '20', NULL, NULL, '18', '2011-11-07 09:48:58', '2011-11-07 09:48:58'),
(42, 'Ã˜8x45cm', NULL, '45', NULL, NULL, '8', '2011-11-07 09:49:10', '2011-11-07 09:49:10'),
(43, 'Ã˜5,5x12cm', NULL, '12', NULL, NULL, '5', '2011-11-07 09:49:23', '2011-11-07 09:49:23'),
(44, '23x22x11,5cm', '11', '22', '23', NULL, NULL, '2011-11-07 09:49:54', '2011-11-07 09:49:54'),
(45, '23x40x11,5cm', '11', '40', '23', NULL, NULL, '2011-11-07 09:50:04', '2011-11-07 09:50:04'),
(46, '23x50x11,5cm', '11', '50', '23', NULL, NULL, '2011-11-07 09:50:12', '2011-11-07 09:50:12'),
(47, '23x60x11,5cm', '11', '60', '23', NULL, NULL, '2011-11-07 09:50:20', '2011-11-07 09:50:20'),
(48, '20x50x10cm', '10', '50', '20', NULL, NULL, '2011-11-07 09:50:32', '2011-11-07 09:50:32'),
(49, '12x15x9cm', '9', '15', '12', NULL, NULL, '2011-11-07 09:50:41', '2011-11-07 09:50:41'),
(50, '12x25x9cm', '9', '25', '12', NULL, NULL, '2011-11-07 09:50:50', '2011-11-07 09:50:50'),
(51, '22x50x16,5cm', '16', '50', '22', NULL, NULL, '2011-11-07 09:50:58', '2011-11-07 09:50:58'),
(52, '30x25x10/5cm', '10', '25', '30', NULL, NULL, '2011-11-07 09:51:13', '2011-11-07 09:51:13'),
(53, '30x50x10/5cm', '10', '50', '30', NULL, NULL, '2011-11-07 09:51:22', '2011-11-07 09:51:22'),
(54, 'AÃ˜23cm, IÃ˜10cm, HÃ¶he 5cm', '5', NULL, NULL, '10', '23', '2011-11-07 09:51:48', '2011-11-07 09:51:48'),
(55, 'AÃ˜26cm, IÃ˜10cm, HÃ¶he 5cm', '5', NULL, NULL, '10', '26', '2011-11-07 09:52:07', '2011-11-07 09:52:07'),
(56, 'AÃ˜26cm, IÃ˜10cm, HÃ¶he 7cm', '7', NULL, NULL, '10', '26', '2011-11-07 09:52:15', '2011-11-07 09:52:15'),
(57, '25x30x10/6cm', '10', '30', '25', NULL, NULL, '2011-11-07 09:52:36', '2011-11-07 09:52:36'),
(58, '50x30x10/6cm', '10', '30', '50', NULL, NULL, '2011-11-07 09:52:45', '2011-11-07 09:52:45'),
(59, '25x30x10/6/7cm', '10', '30', '25', NULL, NULL, '2011-11-07 09:53:00', '2011-11-07 09:53:00'),
(60, '50x30x10/6/7cm', '10', '30', '50', NULL, NULL, '2011-11-07 09:53:14', '2011-11-07 09:53:14'),
(61, '30x25x7/3cm', '7', '25', '30', NULL, NULL, '2011-11-07 09:53:40', '2011-11-07 09:53:40'),
(62, '30x50x7/3cm', '7', '50', '30', NULL, NULL, '2011-11-07 09:53:50', '2011-11-07 09:53:50'),
(63, '30x40x7/3cm', '7', '40', '30', NULL, NULL, '2011-11-07 09:53:58', '2011-11-07 09:53:58'),
(64, '25x34x10/5,5/10cm', '10', '34', '25', NULL, NULL, '2011-11-07 09:54:12', '2011-11-07 09:54:12'),
(65, '40x40x10cm', '10', '40', '40', NULL, NULL, '2011-11-07 09:54:20', '2011-11-07 09:54:20'),
(66, '20x20x5cm', '5', '20', '20', NULL, NULL, '2011-11-07 09:54:27', '2011-11-07 09:54:27'),
(67, '20x30x4cm', '4', '30', '20', NULL, NULL, '2011-11-07 09:54:40', '2011-11-07 09:54:40'),
(68, '25x30x7cm', '7', '30', '25', NULL, NULL, '2011-11-07 09:54:49', '2011-11-07 09:54:49'),
(69, '32x32x7cm', '7', '32', '32', NULL, NULL, '2011-11-07 09:54:57', '2011-11-07 09:54:57'),
(70, '32x32x14cm', '14', '32', '32', NULL, NULL, '2011-11-07 09:55:03', '2011-11-07 09:55:03'),
(71, '25x40x10/4/10cm', '10', '40', '25', NULL, NULL, '2011-11-07 09:55:13', '2011-11-07 09:59:16'),
(72, '7x20x10,5cm', '10', '7', '20', NULL, NULL, '2011-11-07 09:55:29', '2011-11-07 09:58:12'),
(73, '14x25x8/3/8cm', '8', '14', '25', NULL, NULL, '2011-11-07 09:55:52', '2011-11-07 09:57:42'),
(74, '20x25x10/4/10cm', '10', '20', '25', NULL, NULL, '2011-11-07 09:56:14', '2011-11-07 09:57:15'),
(75, '50x20x10/4/10cm', '10', '20', '50', NULL, NULL, '2011-11-07 09:56:43', '2011-11-07 09:56:43'),
(76, '50x20x10/4/10/4/10cm', '10', '20', '50', NULL, NULL, '2011-11-07 09:59:41', '2011-11-07 09:59:41'),
(77, '25x52x1,5cm', '1', '52', '25', NULL, NULL, '2011-11-07 09:59:53', '2011-11-07 09:59:53'),
(78, '12x40xcm', NULL, '40', '12', NULL, NULL, '2011-11-07 10:00:07', '2011-11-07 10:00:07'),
(79, '7/20/7x45x1cm', '1', '45', '7', NULL, NULL, '2011-11-07 10:00:22', '2011-11-07 10:00:22'),
(80, '15/30/15x45x1cm', '1', '45', '15', NULL, NULL, '2011-11-07 10:00:33', '2011-11-07 10:00:33'),
(81, '13x23x5cm', '5', '23', '13', NULL, NULL, '2011-11-07 10:00:43', '2011-11-07 10:00:43'),
(82, '6x57,5xcm', NULL, '57', '6', NULL, NULL, '2011-11-07 10:00:53', '2011-11-07 10:00:53'),
(83, '5x86xcm', NULL, '86', '5', NULL, NULL, '2011-11-07 10:01:00', '2011-11-07 10:01:31'),
(84, '12x175xcm', NULL, '175', '12', NULL, NULL, '2011-11-07 10:01:43', '2011-11-07 10:01:43'),
(85, '8x190xcm', NULL, '190', '8', NULL, NULL, '2011-11-07 10:01:52', '2011-11-07 10:01:52'),
(86, '12x220xcm', NULL, '220', '12', NULL, NULL, '2011-11-07 10:01:58', '2011-11-07 10:01:58'),
(87, '25x25x11cm', '11', '25', '25', NULL, NULL, '2011-11-07 10:02:07', '2011-11-07 10:02:07'),
(88, '21x21x10cm', '10', '21', '21', NULL, NULL, '2011-11-07 10:02:13', '2011-11-07 10:02:13'),
(89, 'Ã˜30x14cm', NULL, '14', NULL, NULL, '30', '2011-11-07 10:02:37', '2011-11-07 10:02:37'),
(90, 'Ã˜30x14/7cm', NULL, '14', NULL, NULL, '30', '2011-11-07 10:02:53', '2011-11-07 10:02:53'),
(91, 'Ã˜30x10/3cm', NULL, '10', NULL, NULL, '30', '2011-11-07 10:03:01', '2011-11-07 10:03:01'),
(92, '25x30x18/13cm', '18', '30', '25', NULL, NULL, '2011-11-07 10:03:58', '2011-11-07 10:03:58'),
(93, '25x30x10,5/6cm', '10', '30', '25', NULL, NULL, '2011-11-07 10:04:06', '2011-11-07 10:04:06'),
(94, '50x36x16cm', '16', '36', '50', NULL, NULL, '2011-11-07 10:04:20', '2011-11-07 10:04:20'),
(95, '50x55x7/3cm', '7', '55', '50', NULL, NULL, '2011-11-07 10:04:35', '2011-11-07 10:04:35'),
(96, '50x75x14/6cm', '14', '75', '50', NULL, NULL, '2011-11-07 10:04:44', '2011-11-07 10:04:44'),
(97, '40x50x1/5/1cm', '1', '50', '40', NULL, NULL, '2011-11-07 10:05:01', '2011-11-07 10:05:01'),
(98, '25x30x28cm', '28', '30', '25', NULL, NULL, '2011-11-07 10:05:23', '2011-11-07 10:05:23'),
(99, '35x50x22cm', '22', '50', '35', NULL, NULL, '2011-11-07 10:05:31', '2011-11-07 10:05:31'),
(100, 'Ã˜4x23cm', NULL, '23', NULL, NULL, '4', '2011-11-07 10:05:45', '2011-11-07 10:05:45'),
(101, 'AÃ˜12cm, IÃ˜5cm', NULL, NULL, NULL, '5', '12', '2011-11-07 10:05:55', '2011-11-07 10:05:55'),
(102, 'AÃ˜15cm, IÃ˜7cm', NULL, NULL, NULL, '7', '15', '2011-11-07 10:06:01', '2011-11-07 10:06:01'),
(103, '50x60x10/0cm', '10', '60', '50', NULL, NULL, '2011-11-07 10:06:28', '2011-11-07 10:06:28'),
(104, '50x22x24,5cm', '24', '22', '50', NULL, NULL, '2011-11-07 10:06:39', '2011-11-07 10:06:39'),
(105, '41x72x10cm', '10', '72', '41', NULL, NULL, '2011-11-07 10:06:52', '2011-11-07 10:06:52'),
(106, '64x82x10cm', '10', '82', '46', NULL, NULL, '2011-11-07 10:07:02', '2011-11-23 10:53:29'),
(107, '12x65xcm', NULL, '65', '12', NULL, NULL, '2011-11-07 10:07:36', '2011-11-07 10:07:36'),
(108, '12x85xcm', NULL, '85', '12', NULL, NULL, '2011-11-07 10:07:44', '2011-11-07 10:07:44'),
(109, '', NULL, NULL, NULL, NULL, NULL, '2011-11-07 10:21:55', '2011-11-07 10:21:55'),
(110, '14x30x11cm', '11', '30', '14', NULL, NULL, '2011-11-08 11:22:26', '2011-11-08 11:22:26'),
(111, 'Ã˜23x5cm', NULL, '5', NULL, NULL, '23', '2011-11-30 09:05:44', '2011-11-30 09:05:44'),
(112, 'Ã˜10x25cm', NULL, '25', NULL, NULL, '10', '2011-11-30 09:06:21', '2011-11-30 09:06:21'),
(113, 'Ã˜12x50cm', NULL, '50', NULL, NULL, '12', '2011-11-30 09:06:31', '2011-11-30 09:06:31'),
(114, '18x24x5cm', '5', '24', '18', NULL, NULL, '2011-11-30 09:06:45', '2011-11-30 09:06:45'),
(115, '36x24x3cm', '3', '24', '36', NULL, NULL, '2011-11-30 09:06:56', '2011-11-30 09:06:56'),
(116, '36x24x5cm', '5', '24', '36', NULL, NULL, '2011-11-30 09:07:08', '2011-11-30 09:07:08'),
(117, '18x24x12cm', '12', '24', '18', NULL, NULL, '2011-11-30 09:07:24', '2011-11-30 09:07:24'),
(118, '18x10x5cm', '5', '10', '18', NULL, NULL, '2011-11-30 09:07:36', '2011-11-30 09:07:36'),
(119, '18x24x7/1cm', '7', '24', '18', NULL, NULL, '2011-11-30 09:07:49', '2011-11-30 09:07:49'),
(120, '17,8x28x7,6/0cm', '7', '28', '17', NULL, NULL, '2011-11-30 09:08:41', '2011-11-30 09:08:41'),
(121, '24x36x11/2cm', '11', '36', '24', NULL, NULL, '2011-11-30 09:08:57', '2011-11-30 09:08:57'),
(122, '18x24x11/2cm', '11', '24', '18', NULL, NULL, '2011-11-30 09:09:14', '2011-11-30 09:09:14'),
(123, '18x24x6/1cm', '6', '24', '18', NULL, NULL, '2011-11-30 09:10:01', '2011-11-30 09:10:01'),
(124, '18x24x3cm', '3', '24', '18', NULL, NULL, '2011-11-30 09:10:19', '2011-11-30 09:10:19'),
(125, '60x200x2cm', '2', '200', '60', NULL, NULL, '2011-11-30 09:10:30', '2011-11-30 09:10:30'),
(126, '60x200x3cm', '3', '200', '60', NULL, NULL, '2011-11-30 09:10:37', '2011-11-30 09:10:37'),
(127, '60x200x5cm', '5', '200', '60', NULL, NULL, '2011-11-30 09:10:44', '2011-11-30 09:10:44'),
(128, '40x150x1/4/1cm', '1', '150', '40', NULL, NULL, '2011-11-30 09:11:02', '2011-11-30 09:11:02'),
(129, '25x25x10cm', '10', '25', '25', NULL, NULL, '2011-11-30 09:11:10', '2011-11-30 09:11:10'),
(130, '16x18xcm', NULL, '18', '16', NULL, NULL, '2011-11-30 09:11:22', '2011-11-30 09:11:22'),
(131, '15x18x8cm', '8', '18', '15', NULL, NULL, '2011-11-30 09:11:36', '2011-11-30 09:11:36'),
(132, '18x21x8cm', '8', '21', '18', NULL, NULL, '2011-11-30 09:11:47', '2011-11-30 09:11:47'),
(133, '40x55x17cm', '17', '55', '40', NULL, NULL, '2011-11-30 09:11:58', '2011-11-30 09:11:58'),
(134, '44x73x23/0cm', '23', '73', '44', NULL, NULL, '2011-11-30 09:14:41', '2011-11-30 09:14:41'),
(135, '13x13x8cm', '8', '13', '13', NULL, NULL, '2011-11-30 09:14:48', '2011-11-30 09:14:48'),
(136, '40x50x15/0cm', '15', '50', '40', NULL, NULL, '2011-11-30 09:15:11', '2011-11-30 09:15:11'),
(137, '25x25x5,5cm', '5', '25', '25', NULL, NULL, '2011-11-30 09:15:36', '2011-11-30 09:15:36'),
(138, '35x60x2,5cm', '2', '60', '35', NULL, NULL, '2011-11-30 09:56:37', '2011-11-30 09:56:37'),
(139, '34x64x2,5cm', '2', '64', '34', NULL, NULL, '2011-11-30 09:56:48', '2011-11-30 09:56:48'),
(140, '35x72x2,5cm', '2', '72', '35', NULL, NULL, '2011-11-30 09:56:58', '2011-11-30 09:56:58'),
(141, '35x60x0,5cm', '0', '60', '35', NULL, NULL, '2011-11-30 09:57:06', '2011-11-30 09:57:06'),
(142, '34x64x0,5cm', '0', '64', '34', NULL, NULL, '2011-11-30 09:57:16', '2011-11-30 09:57:16'),
(143, '88x118x2,5cm', '2', '88', '118', NULL, NULL, '2011-11-30 09:57:35', '2011-11-30 09:58:24'),
(144, '70x60x5cm', '5', '60', '70', NULL, NULL, '2011-11-30 09:57:59', '2011-11-30 09:57:59'),
(145, '18x40/30x11/25cm', '11', '40', '18', NULL, NULL, '2011-11-30 09:59:11', '2011-11-30 09:59:11'),
(146, 'AÃ˜40cm, IÃ˜19cm, HÃ¶he 6cm', '6', NULL, NULL, '19', '40', '2011-11-30 09:59:25', '2011-11-30 09:59:25'),
(147, 'AÃ˜48cm, IÃ˜17cm, HÃ¶he 9cm', '9', NULL, NULL, '17', '48', '2011-11-30 09:59:36', '2011-11-30 09:59:36'),
(148, '37x37x12/0cm', '12', '37', '37', NULL, NULL, '2011-11-30 09:59:48', '2011-11-30 09:59:48'),
(149, '60x70x3cm', '3', '70', '60', NULL, NULL, '2011-11-30 10:00:02', '2011-11-30 10:00:02'),
(150, '30x140x3cm', '3', '140', '30', NULL, NULL, '2011-11-30 10:00:18', '2011-11-30 10:00:18'),
(151, 'Ã˜20x200cm', NULL, '200', NULL, NULL, '20', '2011-11-30 10:00:34', '2011-11-30 10:00:34'),
(152, 'Ã˜22x150cm', NULL, '150', NULL, NULL, '22', '2011-11-30 10:00:42', '2011-11-30 10:00:42'),
(153, '25x75xcm', NULL, '75', '25', NULL, NULL, '2011-11-30 10:00:53', '2011-11-30 10:00:53'),
(154, '40x80xcm', NULL, '80', '40', NULL, NULL, '2011-11-30 10:00:59', '2011-11-30 10:00:59'),
(155, '40x40xcm', NULL, '40', '40', NULL, NULL, '2011-11-30 10:01:05', '2011-11-30 10:01:05'),
(156, '75x75xcm', NULL, '75', '75', NULL, NULL, '2011-11-30 10:01:11', '2011-11-30 10:01:11'),
(157, '55x75xcm', NULL, '75', '55', NULL, NULL, '2011-11-30 10:01:16', '2011-11-30 10:01:16'),
(158, '40x60x20/0cm', '20', '60', '40', NULL, NULL, '2011-11-30 10:01:30', '2011-11-30 10:01:30'),
(159, '30x50x15/0cm', '15', '50', '30', NULL, NULL, '2011-11-30 10:01:38', '2011-11-30 10:01:38'),
(160, 'Ã˜4x23cm', NULL, '23', NULL, NULL, '4', '2011-11-30 10:01:55', '2011-11-30 10:01:55'),
(161, 'AÃ˜12cm, IÃ˜5cm', NULL, NULL, NULL, '5', '12', '2011-11-30 10:02:08', '2011-11-30 10:02:08'),
(162, 'AÃ˜15cm, IÃ˜7cm', NULL, NULL, NULL, '7', '15', '2011-11-30 10:02:20', '2011-11-30 10:02:20'),
(163, '40x40x24/0cm', '24', '40', '40', NULL, NULL, '2011-11-30 10:35:14', '2011-11-30 10:35:14'),
(164, '40x60x20/0cm', '20', '60', '40', NULL, NULL, '2011-11-30 10:35:29', '2011-11-30 10:35:29'),
(165, '40x80x22/0cm', '22', '80', '40', NULL, NULL, '2011-11-30 10:35:37', '2011-11-30 10:35:37'),
(167, '15x45xcm', NULL, '45', '15', NULL, NULL, '2011-11-30 10:37:20', '2011-11-30 10:37:20'),
(168, '30x14x14cm', '14', '14', '30', NULL, NULL, '2011-11-30 10:37:58', '2011-11-30 10:37:58'),
(169, '26x11x11cm', '11', '11', '26', NULL, NULL, '2011-11-30 10:38:08', '2011-11-30 10:38:08'),
(170, '60x195x7cm', '7', '195', '60', NULL, NULL, '2011-11-30 10:38:22', '2011-11-30 10:38:22'),
(171, '15x20xcm', NULL, '20', '15', NULL, NULL, '2011-11-30 10:38:46', '2011-11-30 10:38:46'),
(172, '15x25xcm', NULL, '25', '15', NULL, NULL, '2011-11-30 10:38:53', '2011-11-30 10:38:53'),
(173, '15x35xcm', NULL, '35', '15', NULL, NULL, '2011-11-30 10:39:00', '2011-11-30 10:39:00'),
(174, '32x32x12cm', '12', '32', '32', NULL, NULL, '2011-11-30 11:04:11', '2011-11-30 11:04:11'),
(175, '50x190x3cm', '3', '190', '50', NULL, NULL, '2011-11-30 11:27:19', '2011-11-30 11:27:19'),
(176, '50x190x5cm', '5', '195', '65', NULL, NULL, '2011-11-30 11:27:30', '2011-11-30 11:27:49'),
(177, '55x190x4cm', '4', '190', '55', NULL, NULL, '2011-11-30 11:28:06', '2011-11-30 11:28:06'),
(178, 'Ã˜10x40cm', NULL, '40', NULL, NULL, '10', '2011-11-30 11:32:04', '2011-11-30 11:32:04'),
(179, 'Ã˜22x50cm', NULL, '50', NULL, NULL, '22', '2011-11-30 11:32:12', '2011-11-30 11:32:12'),
(180, '15x40x7,5cm', '7', '40', '15', NULL, NULL, '2011-11-30 11:32:53', '2011-11-30 11:32:53'),
(181, '18x50x9cm', '9', '50', '18', NULL, NULL, '2011-11-30 11:33:00', '2011-11-30 11:33:00'),
(182, '15x60x7,5cm', '7', '60', '15', NULL, NULL, '2011-11-30 11:33:09', '2011-11-30 11:33:09'),
(183, '22x40x11cm', '11', '40', '22', NULL, NULL, '2011-11-30 11:33:17', '2011-11-30 11:33:17'),
(184, '15x40x11cm', '11', '40', '15', NULL, NULL, '2011-11-30 11:33:25', '2011-11-30 11:33:25'),
(185, '15x50x11cm', '11', '50', '15', NULL, NULL, '2011-11-30 11:33:33', '2011-11-30 11:33:33'),
(186, '22x50x16,5cm', '16', '50', '22', NULL, NULL, '2011-11-30 11:33:43', '2011-11-30 11:33:43'),
(187, '20x60x22cm', '20', '60', '22', NULL, NULL, '2011-11-30 11:34:01', '2011-12-01 12:10:54'),
(188, '20x72x22cm', '20', '72', '22', NULL, NULL, '2011-11-30 11:34:09', '2011-12-01 12:11:06'),
(189, '22x80x26/5cm', '26', '80', '22', NULL, NULL, '2011-11-30 11:34:18', '2011-11-30 11:34:18'),
(190, '22x60x20/5cm', '20', '60', '22', NULL, NULL, '2011-11-30 11:34:29', '2011-11-30 11:34:29'),
(191, '15x30x10/3cm', '10', '30', '15', NULL, NULL, '2011-11-30 11:34:40', '2011-11-30 11:34:40'),
(192, '15x45x13/5cm', '13', '45', '15', NULL, NULL, '2011-11-30 11:34:49', '2011-11-30 11:34:49'),
(193, 'Ã˜30x12cm', NULL, '12', NULL, NULL, '30', '2011-12-01 09:57:04', '2011-12-01 09:57:04'),
(194, 'Ã˜30x100cm', NULL, '100', NULL, NULL, '30', '2011-12-01 11:47:23', '2011-12-01 11:47:23'),
(195, 'Ã˜45x100cm', NULL, '100', NULL, NULL, '45', '2011-12-01 11:47:35', '2011-12-01 11:47:35'),
(196, 'Ã˜50x200cm', NULL, '200', NULL, NULL, '50', '2011-12-01 11:47:46', '2011-12-01 11:47:46'),
(197, '42x60x20cm', '20', '60', '42', NULL, NULL, '2011-12-01 11:48:05', '2011-12-01 11:48:05'),
(198, '42x75x20cm', '20', '75', '42', NULL, NULL, '2011-12-01 11:48:12', '2011-12-01 11:48:12'),
(199, '30/15x38x20cm', '20', '38', '30', NULL, NULL, '2011-12-01 11:48:38', '2011-12-01 11:48:38'),
(200, '18/10x34x15cm', '15', '34', '18', NULL, NULL, '2011-12-01 11:48:46', '2011-12-01 11:48:46'),
(201, '36/10x45x16cm', '16', '45', '36', NULL, NULL, '2011-12-01 11:48:55', '2011-12-01 11:48:55'),
(202, '35/10x50x15cm', '15', '50', '35', NULL, NULL, '2011-12-01 11:49:09', '2011-12-01 11:49:09'),
(203, '20x45x27/5cm', '27', '45', '20', NULL, NULL, '2011-12-01 11:49:18', '2011-12-01 11:49:18'),
(204, '22x65x27/3cm', '27', '65', '22', NULL, NULL, '2011-12-01 11:49:28', '2011-12-01 11:49:28'),
(205, '45x60x10cm', '10', '60', '45', NULL, NULL, '2011-12-01 11:49:43', '2011-12-01 11:49:43'),
(206, '55x75x20cm', '20', '75', '55', NULL, NULL, '2011-12-01 11:49:52', '2011-12-01 11:49:52'),
(207, '40x60x30cm', '30', '60', '40', NULL, NULL, '2011-12-01 11:49:59', '2011-12-01 11:49:59'),
(208, '50x60x40cm', '40', '60', '50', NULL, NULL, '2011-12-01 11:50:06', '2011-12-01 11:50:06'),
(209, '40x50x30cm', '30', '50', '40', NULL, NULL, '2011-12-01 11:50:12', '2011-12-01 11:50:12'),
(210, '40x40x50cm', '50', '40', '40', NULL, NULL, '2011-12-01 11:50:19', '2011-12-01 11:50:19'),
(211, '50x50x45-55cm', '45', '50', '50', NULL, NULL, '2011-12-01 11:50:30', '2011-12-01 11:50:30'),
(212, '40x65x31cm', '31', '65', '40', NULL, NULL, '2011-12-01 11:50:40', '2011-12-01 11:50:40'),
(213, '40x50x35cm', '35', '50', '40', NULL, NULL, '2011-12-01 11:50:56', '2011-12-01 11:50:56'),
(214, '30x30x30cm', '30', '30', '30', NULL, NULL, '2011-12-01 11:51:06', '2011-12-01 11:51:06'),
(215, '40x40x40cm', '40', '40', '40', NULL, NULL, '2011-12-01 11:51:11', '2011-12-01 11:51:11'),
(216, '50x50x50cm', '50', '50', '50', NULL, NULL, '2011-12-01 11:51:16', '2011-12-01 11:51:16'),
(217, '26x70/42/32x25cm', '25', '70', '26', NULL, NULL, '2011-12-01 11:51:49', '2011-12-01 11:51:49'),
(218, '20x34x6cm', '6', '34', '20', NULL, NULL, '2011-12-01 11:52:02', '2011-12-01 11:52:02'),
(219, '40x40x5cm', '5', '40', '40', NULL, NULL, '2011-12-01 11:52:11', '2011-12-01 11:52:11'),
(220, '45x45x5cm', '5', '45', '45', NULL, NULL, '2011-12-01 11:52:17', '2011-12-01 11:52:17'),
(221, '43x43x6cm', '6', '43', '43', NULL, NULL, '2011-12-01 11:52:23', '2011-12-01 11:52:23'),
(222, '40x40x6cm', '6', '40', '40', NULL, NULL, '2011-12-01 11:52:30', '2011-12-01 11:52:30'),
(223, '40x40x8/1cm', '8', '40', '40', NULL, NULL, '2011-12-01 11:52:42', '2011-12-01 11:52:42'),
(224, '37x37x8/1cm', '8', '37', '37', NULL, NULL, '2011-12-01 11:52:50', '2011-12-01 11:52:50'),
(225, '40x40x15/0cm', '15', '40', '40', NULL, NULL, '2011-12-01 11:52:57', '2011-12-01 11:52:57'),
(226, '18x23x10/0cm', '10', '23', '18', NULL, NULL, '2011-12-01 11:53:06', '2011-12-01 11:53:06'),
(227, '40x40x24/0cm', '24', '40', '40', NULL, NULL, '2011-12-01 11:53:14', '2011-12-01 11:53:14'),
(228, '40x60x20/0cm', '20', '60', '40', NULL, NULL, '2011-12-01 11:53:23', '2011-12-01 11:53:23'),
(229, '40x80x22/0cm', '22', '80', '40', NULL, NULL, '2011-12-01 11:53:31', '2011-12-01 11:53:31'),
(230, '30/40x60x12cm', '12', '60', '30', NULL, NULL, '2011-12-01 11:53:47', '2011-12-01 11:53:47'),
(231, '25x35x10cm', '10', '35', '25', NULL, NULL, '2011-12-01 11:54:25', '2011-12-01 11:54:25'),
(232, '100x200x4cm', '4', '200', '100', NULL, NULL, '2011-12-01 11:54:47', '2011-12-01 11:54:47'),
(233, '100x200x5cm', '5', '200', '100', NULL, NULL, '2011-12-01 11:54:55', '2011-12-01 11:54:55'),
(234, 'Ã˜8x20cm', NULL, '20', NULL, NULL, '8', '2011-12-01 12:07:08', '2011-12-01 12:07:08'),
(235, 'Ã˜18x25cm', NULL, '25', NULL, NULL, '18', '2011-12-01 12:07:15', '2011-12-01 12:07:15'),
(236, 'Ã˜10x20cm', NULL, '20', NULL, NULL, '10', '2011-12-01 12:07:22', '2011-12-01 12:07:22'),
(237, '30x60x20cm', '20', '60', '30', NULL, NULL, '2011-12-02 10:03:09', '2011-12-02 10:03:09'),
(238, '49x55x6cm', '6', '55', '49', '19', NULL, '2011-12-02 10:03:53', '2011-12-02 10:03:53'),
(239, 'Ã˜35x24cm', NULL, '24', NULL, NULL, '35', '2011-12-02 10:04:04', '2011-12-02 10:04:04'),
(240, 'AÃ˜40cm, IÃ˜19cm, HÃ¶he 6cm', '6', NULL, NULL, '19', '40', '2011-12-02 10:04:24', '2011-12-02 10:04:24'),
(241, 'AÃ˜48cm, IÃ˜17cm, HÃ¶he 8cm', '8', NULL, NULL, '17', '48', '2011-12-02 10:04:34', '2011-12-02 10:04:34'),
(242, '90x200x12cm', '12', '200', '90', NULL, NULL, '2011-12-02 10:04:54', '2011-12-02 10:04:54'),
(243, '90x200x5cm', '5', '200', '90', NULL, NULL, '2011-12-02 10:05:03', '2011-12-02 10:05:03'),
(244, '90x200x3cm', '3', '200', '90', NULL, NULL, '2011-12-02 10:05:11', '2011-12-02 10:05:11'),
(245, '15x30x10/3cm', '10/3', '30', '15', '', '', '2011-12-05 09:13:16', '2011-12-05 09:13:16'),
(246, '15x45x13/5cm', '13/5', '45', '15', '', '', '2011-12-05 09:13:26', '2011-12-05 09:13:26'),
(247, '20x30x10/5cm', '10/5', '30', '20', '', '', '2011-12-05 09:13:35', '2011-12-05 09:13:35'),
(248, 'Ã˜18x40cm', '', '40', '', '', '18', '2011-12-05 09:13:48', '2011-12-05 09:13:48'),
(249, '44x44x10cm', '10', '44', '44', '', '', '2011-12-05 09:14:35', '2011-12-05 09:14:35'),
(250, '70x175x1cm', '1', '175', '70', '', '', '2011-12-05 09:14:56', '2011-12-05 09:14:56'),
(251, '80x180xcm', '', '180', '80', '', '', '2011-12-05 09:15:10', '2011-12-05 09:15:10'),
(252, '40+40x180x5-20cm', '5-20', '180', '40+40', '', '', '2011-12-05 09:15:26', '2011-12-05 09:15:26'),
(253, '40x40x15/0cm', '15/0', '40', '40', '', '', '2011-12-05 10:16:38', '2011-12-05 10:16:38'),
(254, '40x40x8/1cm', '8/1', '40', '40', '', '', '2011-12-05 10:16:49', '2011-12-05 10:16:49'),
(255, '37x37x8/1cm', '8/1', '37', '37', '', '', '2011-12-05 10:17:01', '2011-12-05 10:17:01');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `organisation` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `postal_code` int(5) NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `users`
--

