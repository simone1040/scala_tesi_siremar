-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 08, 2020 alle 21:33
-- Versione del server: 5.7.28-0ubuntu0.18.04.4
-- Versione PHP: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tesi_siremar_smartTicketing`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `tab_boardingcard_category`
--

CREATE TABLE `tab_boardingcard_category` (
  `boardingcard_category_id` int(25) NOT NULL,
  `boardingcard_category_code` varchar(10) NOT NULL DEFAULT '',
  `boardingcard_category_name` varchar(45) NOT NULL DEFAULT '',
  `boardingcard_category_type` varchar(2) NOT NULL DEFAULT '',
  `boardingcard_category_lunghezza` float NOT NULL DEFAULT '0',
  `boardingcard_category_larghezza` float NOT NULL DEFAULT '0',
  `boardingcard_category_delta_larghezza` float NOT NULL DEFAULT '0',
  `boardingcard_category_s18` int(11) NOT NULL DEFAULT '0',
  `boardingcard_category_group_id` int(25) NOT NULL DEFAULT '0',
  `boardingcard_category_group_code` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tab_boardingcard_category`
--

INSERT INTO `tab_boardingcard_category` (`boardingcard_category_id`, `boardingcard_category_code`, `boardingcard_category_name`, `boardingcard_category_type`, `boardingcard_category_lunghezza`, `boardingcard_category_larghezza`, `boardingcard_category_delta_larghezza`, `boardingcard_category_s18`, `boardingcard_category_group_id`, `boardingcard_category_group_code`) VALUES
(17, 'AU1', 'Auto fino 4 m', 'V', 4, 1.73, 0.6, 0, 2, 'B'),
(18, 'AU2', 'Auto oltre 4 m', 'V', 4.5, 1.9, 0.6, 0, 2, 'B'),
(19, 'AU3', 'Auto Extra h 180', 'M', 4.9, 1.93, 0.6, 1, 2, 'B'),
(20, 'MOT', 'Motocicli e Ciclomotori', 'V', 4, 1.6, 0, 0, 2, 'B'),
(21, 'CAM', 'Camper/Roulotte COB', 'M', 12, 2.5, 0.6, 0, 2, 'B'),
(22, 'ROU', 'Camper', 'M', 12, 2.5, 0.6, 0, 2, 'B'),
(23, 'BUS', 'Pullman', 'M', 14, 2.3, 0.6, 1, 2, 'B'),
(24, 'MC ', 'Mezzo Commerciale', 'M', 4.74, 1.83, 0.6, 0, 2, 'B'),
(56, 'MIN', 'Minibus', 'M', 8.48, 2.08, 0.6, 1, 2, 'B'),
(57, 'CAR', 'Carrello/Roulotte', 'M', 6.5, 2.3, 0, 0, 2, 'B'),
(102, 'A35', 'Auto fino a 3,5 mt', 'V', 3.5, 1.66, 0.6, 0, 2, 'B'),
(103, 'A40', 'Auto fino a 4,0 mt', 'V', 4, 1.86, 0.6, 0, 2, 'B'),
(104, 'A45', 'Auto fino a 4,5 mt', 'V', 4.5, 1.94, 0.6, 1, 2, 'B'),
(105, 'A50', 'Auto oltre 4,5 mt', 'V', 5.57, 2, 0.6, 1, 2, 'B'),
(106, 'MO1', 'Moto da 51cc a 250cc', 'V', 4, 1.6, 0, 0, 2, 'B'),
(107, 'MO2', 'Moto da 251cc a 500cc', 'V', 4, 1.6, 0, 0, 2, 'B'),
(108, 'MO3', 'Moto oltre 500 cc', 'V', 4, 1.6, 0, 0, 2, 'B'),
(109, 'MOC', 'Motorini fino a 50cc', 'V', 4, 1.6, 0, 0, 2, 'B'),
(110, '3RU', 'Veicolo a 3 ruote fino a 2000 kg', 'V', 4, 2, 0.6, 0, 2, 'M'),
(111, '3RT', 'Veicolo a 3 ruote fino a 500 kg', 'V', 4, 2, 0.6, 0, 2, 'M'),
(112, 'C45', 'Camper/Rimorchio fino a 4,5 mt', 'V', 4.5, 2.06, 0.6, 1, 2, 'B'),
(113, 'C50', 'Camper/Rimorchio fino a 5,0 mt', 'V', 5, 2.06, 0.6, 1, 2, 'B'),
(114, 'C55', 'Camper/Rimorchio fino a 5,5 mt', 'V', 5.5, 2.22, 0.6, 1, 2, 'B'),
(115, 'C60', 'Camper/Rimorchio fino a 6,0 mt', 'V', 6, 2.22, 0.6, 1, 2, 'B'),
(116, 'C65', 'Camper/Rimorchio fino a 6,5 mt', 'V', 6.5, 2.22, 0.6, 1, 2, 'B'),
(117, 'C70', 'Camper/Rimorchio fino a 7,0 mt', 'V', 7, 2.22, 0.6, 1, 2, 'B'),
(118, 'C75', 'Camper/Rimorchio fino a 7,5 mt', 'V', 7.5, 2.29, 0.6, 1, 2, 'B'),
(119, 'C80', 'Camper/Rimorchio fino a 8,0 mt', 'V', 8, 2.35, 0.6, 1, 2, 'B'),
(120, 'C85', 'Camper/Rimorchio fino a 8,5 mt', 'V', 8.5, 2.41, 0.6, 1, 2, 'B'),
(121, 'C90', 'Camper/Rimorchio fino a 9,0 mt', 'V', 9, 2.48, 0.6, 1, 2, 'B'),
(122, 'C10', 'Camper/Rimorchio fino a 10 mt', 'V', 10, 2.5, 0.6, 1, 2, 'M'),
(123, 'B45', 'Pullman fino a 4,5 mt', 'V', 4.5, 2.05, 0.6, 0, 2, 'B'),
(124, 'B50', 'Pullman fino a 5,0 mt', 'V', 5, 2.05, 0.6, 0, 2, 'B'),
(125, 'B55', 'Pullman fino a 5,5 mt', 'V', 5.5, 2.17, 0.6, 0, 2, 'B'),
(126, 'B60', 'Pullman fino a 6,0 mt', 'V', 6, 2.17, 0.6, 0, 2, 'B'),
(127, 'B65', 'Pullman fino a 6,5 mt', 'V', 6.5, 2.3, 0.6, 1, 2, 'B'),
(128, 'B70', 'Pullman fino a 7,0 mt', 'V', 7, 2.3, 0.6, 1, 2, 'B'),
(129, 'B75', 'Pullman fino a 7,5 mt', 'V', 7.5, 2.35, 0.6, 1, 2, 'B'),
(130, 'B80', 'Pullman fino a 8,0 mt', 'V', 8, 2.35, 0.6, 1, 2, 'B'),
(131, 'B85', 'Pullman fino a 8,5 mt', 'V', 8.5, 2.4, 0.6, 1, 2, 'B'),
(132, 'B90', 'Pullman fino a 9,0 mt', 'V', 9, 2.45, 0.6, 1, 2, 'B'),
(133, 'B10', 'Pullman fino a 10 mt', 'V', 10, 2.45, 0.6, 1, 2, 'B'),
(134, 'B11', 'Pullman fino a 11 mt', 'V', 11, 2.5, 0.6, 1, 2, 'B'),
(135, 'B12', 'Pullman fino a 12 mt', 'V', 12, 2.5, 0.6, 1, 2, 'B'),
(136, 'B13', 'Pullman fino a 13 mt', 'V', 13, 2.55, 0.6, 1, 2, 'B'),
(137, 'B14', 'Pullman fino a 14 mt', 'V', 14, 2.55, 0.6, 1, 2, 'B'),
(138, 'B15', 'Pullman fino a 15 mt', 'V', 15, 2.55, 0.6, 1, 2, 'B'),
(139, 'B16', 'Pullman fino a 16 mt', 'V', 16, 2.55, 0.6, 1, 2, 'B'),
(140, 'B17', 'Pullman fino a 17 mt', 'V', 17, 2.55, 0.6, 1, 2, 'B'),
(141, 'B18', 'Pullman fino a 18 mt', 'V', 18, 2.55, 0.6, 1, 2, 'B'),
(142, 'B19', 'Pullman fino a 19 mt', 'V', 19, 2.55, 0.6, 1, 2, 'B'),
(143, 'B20', 'Pullman fino a 20 mt', 'V', 20, 2.55, 0.6, 1, 2, 'B'),
(144, 'T05', 'Truck 5,0 mt', 'V', 5, 2.2, 0.6, 0, 2, 'M'),
(145, 'T06', 'Truck 6,0 mt', 'V', 6, 2.2, 0.6, 0, 2, 'M'),
(146, 'T07', 'Truck 7,0 mt', 'V', 7, 2.44, 0.6, 1, 2, 'M'),
(147, 'T08', 'Truck 8,0 mt', 'V', 8, 2.44, 0.6, 1, 2, 'M'),
(148, 'T09', 'Truck 9,0 mt', 'V', 9, 2.45, 0.6, 1, 2, 'M'),
(149, 'T10', 'Truck 10 mt', 'V', 10, 2.45, 0.6, 1, 2, 'M'),
(150, 'T12', 'Truck 12 mt', 'V', 12, 2.55, 0.6, 1, 2, 'M'),
(151, 'T14', 'Truck 14 mt', 'V', 14, 2.6, 0.6, 1, 2, 'M'),
(152, 'T16', 'Truck 16 mt', 'V', 16, 2.6, 0.6, 1, 2, 'M'),
(153, 'T18', 'Truck 18 mt', 'V', 18, 2.6, 0.6, 1, 2, 'M'),
(154, 'T20', 'Truck 20 mt', 'V', 20, 2.6, 0.6, 1, 2, 'M'),
(200, 'E04', 'Mezzo Eccezionale 4,0 mt', 'V', 4, 2.1, 0.6, 0, 2, 'M'),
(201, 'E06', 'Mezzo Eccezionale 6,0 mt', 'V', 6, 2.31, 0.6, 1, 2, 'M'),
(202, 'E07', 'Mezzo Eccezionale 7,0 mt', 'V', 7, 2.35, 0.6, 1, 2, 'M'),
(203, 'E08', 'Mezzo Eccezionale 8,0 mt', 'V', 8, 2.42, 0.6, 1, 2, 'M'),
(204, 'E09', 'Mezzo Eccezionale 9,0 mt', 'V', 9, 2.42, 0.6, 1, 2, 'M'),
(205, 'E10', 'Mezzo Eccezionale 10 mt', 'V', 10, 2.5, 0.6, 1, 2, 'M'),
(206, 'E12', 'Mezzo Eccezionale 12 mt', 'V', 12, 2.5, 0.6, 1, 2, 'M'),
(207, 'E14', 'Mezzo Eccezionale 14 mt', 'V', 14, 2.5, 0.6, 1, 2, 'M'),
(208, 'E16', 'Mezzo Eccezionale 16 mt', 'V', 16, 2.5, 0.6, 1, 2, 'M'),
(209, 'E18', 'Mezzo Eccezionale 18 mt', 'V', 18, 2.5, 0.6, 1, 2, 'M'),
(210, 'E20', 'Mezzo Eccezionale 20 mt', 'V', 20, 2.5, 0.6, 1, 2, 'M'),
(211, 'BAG', 'Bagaglio Extra', 'A', 0, 0, 0, 0, 3, 'B'),
(212, 'FER', 'Feretro', 'A', 2, 0.9, 0, 0, 3, 'B'),
(213, 'ME1', 'Merce oltre 250 Kg', 'A', 2, 1.6, 0, 1, 3, 'B'),
(214, 'ME2', 'Merce da 151 Kg a 250 Kg', 'A', 1, 1.2, 0, 1, 3, 'B'),
(215, 'ME3', 'Merce fino a 150', 'A', 1, 1.2, 0, 1, 3, 'B'),
(216, 'COL', 'Piccolo Collo', 'A', 1, 2, 0, 0, 3, 'B'),
(217, 'PED', 'Pedana', 'A', 0.8, 0.6, 0, 0, 3, 'B'),
(218, 'MFR', 'Merce Fragile', 'A', 1, 1, 0, 0, 3, 'B'),
(219, 'ST1', 'Stivaggio Merce Ordinaria', 'A', 2, 1, 0, 0, 3, 'B'),
(220, 'ST2', 'Stivaggio Merce Fragile/Ingombrante', 'A', 2, 1, 0, 0, 3, 'B'),
(222, 'MN ', 'Veicolo leggero NAS', 'M', 5, 2, 0, 0, 2, 'M'),
(223, 'A3S', 'Auto senza pax fino a 3,5 mt', 'V', 3.5, 1.66, 0.6, 0, 2, 'B'),
(224, 'A4S', 'Auto senza pax fino a 4,0 mt', 'V', 4, 1.86, 0.6, 0, 2, 'B'),
(225, 'A5S', 'Auto senza pax fino a 4,5 mt', 'V', 4.5, 1.94, 0.6, 0, 2, 'B'),
(226, 'A6S', 'Auto senza pax oltre 4,5 mt', 'V', 5.57, 2, 0.6, 0, 2, 'B'),
(227, 'MOS', 'Motorino senza pax fino a 50cc', 'V', 4, 1.6, 0, 0, 2, 'B'),
(228, 'M1S', 'Moto senza pax da 51 a 250cc', 'V', 4, 1.6, 0, 0, 2, 'B'),
(229, 'M2S', 'Moto senza pax da 251 a 500cc', 'V', 4, 1.6, 0, 0, 2, 'B'),
(230, 'M3S', 'Moto senza pax oltre 500cc', 'V', 4, 1.6, 0, 0, 2, 'B'),
(231, 'MS ', 'Semirimorchi e Rimorchi', 'M', 13.6, 2.5, 0, 1, 2, 'B'),
(232, 'MCN', 'Mezzo Commerciale NAS', 'M', 5, 2, 0.6, 0, 2, 'B'),
(233, 'AH1', 'Auto Extra Altezza fino a 3,5 mt', 'V', 3.5, 2.2, 0.6, 1, 2, 'B'),
(234, 'AH2', 'Auto Extra Altezza fino a 4,0 mt', 'V', 4, 2.2, 0.6, 1, 2, 'B'),
(235, 'AH3', 'Auto Extra Altezza fino a 4,5 mt', 'V', 4.5, 2.2, 0.6, 1, 2, 'B'),
(236, 'AH4', 'Auto Extra Altezza oltre 4,5 mt', 'V', 5, 2.2, 0.6, 1, 2, 'B'),
(261, 'A9', 'ARTICOLATO CL. 9', 'M', 16.5, 2.55, 0.6, 1, 2, 'M'),
(262, 'AB', 'AMBULANZA', 'M', 5.45, 2.05, 0.6, 1, 2, 'M'),
(263, 'ACC', 'AUTO SENZA PAX COMM.LE', 'V', 6, 2, 0.6, 1, 2, 'M'),
(264, 'AM', 'AUTO NAS MILITARE', 'M', 7, 2.2, 0.6, 1, 2, 'M'),
(265, 'AN', 'AUTO NAS COMM.LE', 'M', 5, 2.2, 0.6, 0, 2, 'M'),
(266, 'AP', 'AUTO NAS PRIVATI', 'M', 5, 1.8, 0.6, 1, 2, 'M'),
(267, 'AR', 'ARTICOLATO', 'M', 16, 2.55, 0.6, 1, 2, 'M'),
(268, 'ARN', 'ARTICOLATO NAS', 'M', 16, 2.55, 0.6, 1, 2, 'M'),
(269, 'ASC', 'AUTO SENZA PAX PRIVATA', 'V', 4.5, 1.7, 0.6, 1, 2, 'M'),
(270, 'AT', 'AUTOTRENO', 'M', 18, 2.55, 0.6, 1, 2, 'M'),
(271, 'AU', 'AUTO NAS + CARRELLO', 'M', 9, 2.2, 0.6, 0, 2, 'M'),
(272, 'BI', 'BISARCA', 'M', 20.75, 2.55, 0.6, 1, 2, 'M'),
(273, 'C05', 'CAMION fino a 5 M CARBURANTE', 'V', 5, 2.1, 0.6, 1, 2, 'M'),
(274, 'C06', 'CAMION da 5,01 a 6 M CARBURANTE', 'V', 6, 2.15, 0.6, 1, 2, 'M'),
(275, 'C07', 'CAMION da 6,01 a 7 M CARBURANTE', 'V', 7, 2.21, 0.6, 1, 2, 'M'),
(276, 'C08', 'CAMION da 7,01 a 8 M CARBURANTE', 'V', 8, 2.3, 0.6, 1, 2, 'M'),
(277, 'C09', 'CAMION da 8,01 a 9 M CARBURANTE', 'V', 9, 2.3, 0.6, 1, 2, 'M'),
(278, 'C12', 'CAMION da 10,01 a 12 M CARBURANTE', 'V', 12, 2.5, 0.6, 1, 2, 'M'),
(279, 'C14', 'CAMION da 12,01 a 14 M CARBURANTE', 'V', 14, 2.5, 0.6, 1, 2, 'M'),
(280, 'C16', 'CAMION da 14,01 a 16 M CARBURANTE', 'V', 16, 2.5, 0.6, 1, 2, 'M'),
(281, 'C18', 'CAMION da 16,01 a 18 M CARBURANTE', 'V', 18, 2.5, 0.6, 1, 2, 'M'),
(282, 'C20', 'CAMION da 18,01 a 20,0 M CARBURANTE', 'V', 20, 2.5, 0.6, 1, 2, 'M'),
(283, 'CA', 'CARRELLO', 'M', 3.5, 1.8, 0, 1, 2, 'M'),
(284, 'CF', 'CINGOLATO F.S.', 'M', 9, 2.3, 0.6, 1, 2, 'M'),
(285, 'CI', 'CISTERNA', 'M', 9, 2.4, 0.6, 1, 2, 'M'),
(286, 'CO', 'COMPATTATORE', 'M', 7.5, 2.5, 0.6, 1, 2, 'M'),
(287, 'ES', 'ESCAVATORE CINGOLATO', 'M', 8, 2, 0.6, 1, 2, 'M'),
(288, 'FC', 'FURGONE + CARRELLO', 'M', 10, 2.3, 0.6, 1, 2, 'M'),
(289, 'FN', 'FURGONE/CAMPER NAS', 'M', 7, 2.3, 0.6, 1, 2, 'M'),
(290, 'FS', 'FUORI SAGOMA', 'M', 19, 2.55, 0.6, 1, 2, 'M'),
(291, 'FU', 'FURGONE', 'M', 6, 2.3, 0.6, 1, 2, 'M'),
(292, 'FU5', 'FURGONE FINO A 5,0 MT', 'V', 5, 2.3, 0.6, 1, 2, 'M'),
(293, 'G05', 'CAMION fino a 5 M GAS', 'V', 5, 2.25, 0.6, 1, 2, 'M'),
(294, 'G06', 'CAMION da 5,01 a 6 M GAS', 'V', 6, 2.25, 0.6, 1, 2, 'M'),
(295, 'G07', 'CAMION da 6,01 a 7 M GAS', 'V', 7, 2.3, 0.6, 1, 2, 'M'),
(296, 'G08', 'CAMION da 7,01 a 8 M GAS', 'V', 8, 2.35, 0.6, 1, 2, 'M'),
(297, 'G09', 'CAMION da 8,01 a 9 M GAS', 'V', 9, 2.35, 0.6, 1, 2, 'M'),
(298, 'G10', 'CAMION da 9,01 a 10 M GAS', 'V', 10, 2.4, 0.6, 1, 2, 'M'),
(299, 'G12', 'CAMION da 10,01 a 12 M GAS', 'V', 12, 2.5, 0.6, 1, 2, 'M'),
(300, 'G14', 'CAMION da 12,01 a 14 M GAS', 'V', 14, 2.5, 0.6, 1, 2, 'M'),
(301, 'G16', 'CAMION da 14,01 a 16 M GAS', 'V', 16, 2.5, 0.6, 1, 2, 'M'),
(302, 'G18', 'CAMION da 16,01 a 18 M GAS', 'V', 18, 2.5, 0.6, 1, 2, 'M'),
(303, 'G20', 'CAMION da 18,01 a 20 M GAS', 'V', 20, 2.5, 0.6, 1, 2, 'M'),
(304, 'K10', 'CARRELLO NAS FINO A 10 MT', 'V', 10, 2.5, 0.6, 0, 2, 'M'),
(305, 'K45', 'CARRELLO NAS FINO A 4,5 MT', 'V', 4.5, 2.2, 0.6, 0, 2, 'M'),
(306, 'K50', 'CARRELLO NAS FINO A 5,0 MT', 'V', 5, 2.2, 0.6, 1, 2, 'M'),
(307, 'K55', 'CARRELLO NAS FINO A 5,5 MT', 'V', 5.5, 2.2, 0.6, 1, 2, 'M'),
(308, 'K60', 'CARRELLO NAS FINO A 6,0 MT', 'V', 6, 2.25, 0.6, 1, 2, 'M'),
(309, 'K65', 'CARRELLO NAS FINO A 6,5 MT', 'V', 6.5, 2.3, 0.6, 1, 2, 'M'),
(310, 'K70', 'CARRELLO NAS FINO A 7,0 MT', 'V', 7, 2.3, 0.6, 1, 2, 'M'),
(311, 'K75', 'CARRELLO NAS FINO A 7,5 MT', 'V', 7.5, 2.4, 0.6, 1, 2, 'M'),
(312, 'K80', 'CARRELLO NAS FINO A 8,0 MT', 'V', 8, 2.3, 0.6, 1, 2, 'M'),
(313, 'K85', 'CARRELLO NAS FINO A 8,5 MT', 'V', 8.5, 2.4, 0.6, 1, 2, 'M'),
(314, 'K90', 'CARRELLO NAS FINO A 9,0 MT', 'V', 9, 2.4, 0.6, 1, 2, 'M'),
(315, 'M', 'MOTO NAS', 'M', 4, 1.6, 0, 0, 2, 'M'),
(316, 'MA', 'MOTO AGRICOLA', 'M', 2.05, 1.95, 0, 0, 2, 'M'),
(317, 'MEXX', 'MEZZO ECCEZIONALE', 'M', 25, 2.55, 0.6, 1, 2, 'M'),
(318, 'MO', 'MOTRICE', 'M', 3, 2.3, 0.6, 0, 2, 'M'),
(319, 'MON', 'MOTRICE NAS', 'M', 3, 2.3, 0.6, 0, 2, 'M'),
(320, 'MOP', 'MACCHINA OPERATRICE', 'M', 12, 2.55, 0.6, 1, 2, 'M'),
(321, 'MX', 'MEZZO ECCEZIONALE', 'M', 25, 2.55, 0.6, 1, 2, 'M'),
(322, 'PA', 'PIATTAFORMA AEREA', 'M', 7, 2.4, 0.6, 1, 2, 'M'),
(323, 'PC', 'PALA CINGOLATA', 'M', 6, 2.4, 0.6, 1, 2, 'M'),
(324, 'PE', 'PERFORATRICE', 'M', 3, 2.05, 0.6, 1, 2, 'M'),
(325, 'PG', 'PALA GOMMATA', 'M', 6, 2.55, 0.6, 1, 2, 'M'),
(326, 'PM', 'PULLMAN MILITARE', 'M', 12, 2.4, 0.6, 1, 2, 'M'),
(327, 'PN', 'PULLMAN NAS', 'M', 11, 2.4, 0.6, 1, 2, 'M'),
(328, 'RA', 'RALLA', 'M', 3, 1.9, 0, 0, 2, 'M'),
(329, 'RB', 'RIBALTABILE', 'M', 7, 2.4, 0.6, 1, 2, 'M'),
(330, 'RI', 'RIMORCHIO', 'M', 9, 2.4, 0.6, 1, 2, 'M'),
(331, 'S9', 'SEMIRIMORCHIO CL. 9', 'M', 13, 2.55, 0.6, 1, 2, 'M'),
(332, 'SC', 'SEMIRIMORCHIO CISTERNA', 'M', 13, 2.55, 0.6, 1, 2, 'M'),
(333, 'SE', 'SEMIRIMORCHIO', 'M', 13, 2.55, 0.6, 1, 2, 'M'),
(334, 'SO', 'SOLLEVATORE', 'M', 4, 2.2, 0, 1, 2, 'M'),
(335, 'SS', 'SEMIRIMORCHIO SOVR.', 'M', 13, 2.55, 0.6, 1, 2, 'M'),
(336, 'TR', 'TRATTORE', 'M', 4, 2.2, 0.6, 0, 2, 'M');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `tab_boardingcard_category`
--
ALTER TABLE `tab_boardingcard_category`
  ADD PRIMARY KEY (`boardingcard_category_id`),
  ADD UNIQUE KEY `passenger_category_id_UNIQUE` (`boardingcard_category_id`),
  ADD UNIQUE KEY `boardingcard_category_code_UNIQUE` (`boardingcard_category_code`),
  ADD KEY `boardingcard_category_group_id` (`boardingcard_category_group_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `tab_boardingcard_category`
--
ALTER TABLE `tab_boardingcard_category`
  MODIFY `boardingcard_category_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
