-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Nov 21, 2019 alle 21:14
-- Versione del server: 5.7.27-0ubuntu0.18.04.1
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
-- Struttura della tabella `tab_metri_garage_navi`
--

CREATE TABLE `tab_metri_garage_navi` (
  `metri_garage_navi_id` int(11) NOT NULL,
  `ship_id` int(11) NOT NULL DEFAULT '0',
  `metri_garage_navi_spazio_totale` int(11) NOT NULL DEFAULT '0',
  `metri_garage_navi_spazio_s18` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `tab_metri_garage_navi`
--

INSERT INTO `tab_metri_garage_navi` (`metri_garage_navi_id`, `ship_id`, `metri_garage_navi_spazio_totale`, `metri_garage_navi_spazio_s18`) VALUES
(1, 15, 847, 847),
(2, 26, 1452, 1452),
(3, 27, 1452, 1452),
(4, 34, 1452, 1452),
(5, 16, 2360, 2067),
(6, 28, 1452, 1452),
(7, 3, 2033, 333),
(8, 7, 690, 145),
(9, 2, 3290, 1109),
(10, 8, 847, 847),
(11, 35, 3290, 1109),
(12, 10, 1125, 1125),
(13, 11, 3290, 1385),
(14, 12, 605, 605),
(15, 13, 847, 847),
(16, 30, 1600, 1600),
(17, 14, 847, 847);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `tab_metri_garage_navi`
--
ALTER TABLE `tab_metri_garage_navi`
  ADD PRIMARY KEY (`metri_garage_navi_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `tab_metri_garage_navi`
--
ALTER TABLE `tab_metri_garage_navi`
  MODIFY `metri_garage_navi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
