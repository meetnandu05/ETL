-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2017 at 02:49 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokemon3`
--

-- --------------------------------------------------------

--
-- Table structure for table `etl`
--

CREATE TABLE `etl` (
  `Id` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Total` int(10) NOT NULL,
  `HP` int(10) NOT NULL,
  `Legendary` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etl`
--

INSERT INTO `etl` (`Id`, `Name`, `Type`, `Total`, `HP`, `Legendary`) VALUES
(201, 'Unown', 'Psychic', 336, 48, 'FALSE'),
(202, 'Wobbuffet', 'Psychic', 405, 190, 'FALSE'),
(203, 'Girafarig', 'Normal', 455, 70, 'FALSE'),
(204, 'Pineco', 'Bug', 290, 50, 'FALSE'),
(205, 'Forretress', 'Bug', 465, 75, 'FALSE'),
(206, 'Dunsparce', 'Normal', 415, 100, 'FALSE'),
(207, 'Gligar', 'Ground', 430, 65, 'FALSE'),
(208, 'Steelix', 'Steel', 510, 75, 'FALSE'),
(208, 'SteelixMega Steelix', 'Steel', 610, 75, 'FALSE'),
(209, 'Snubbull', 'Fairy', 300, 60, 'FALSE'),
(210, 'Granbull', 'Fairy', 450, 90, 'FALSE'),
(211, 'Qwilfish', 'Water', 430, 65, 'FALSE'),
(212, 'Scizor', 'Bug', 500, 70, 'FALSE'),
(212, 'ScizorMega Scizor', 'Bug', 600, 70, 'FALSE'),
(213, 'Shuckle', 'Bug', 505, 20, 'FALSE'),
(214, 'Heracross', 'Bug', 500, 80, 'FALSE'),
(214, 'HeracrossMega Heracross', 'Bug', 600, 80, 'FALSE'),
(215, 'Sneasel', 'Dark', 430, 55, 'FALSE'),
(216, 'Teddiursa', 'Normal', 330, 60, 'FALSE'),
(217, 'Ursaring', 'Normal', 500, 90, 'FALSE'),
(218, 'Slugma', 'Fire', 250, 40, 'FALSE'),
(219, 'Magcargo', 'Fire', 410, 50, 'FALSE'),
(220, 'Swinub', 'Ice', 250, 50, 'FALSE'),
(221, 'Piloswine', 'Ice', 450, 100, 'FALSE'),
(222, 'Corsola', 'Water', 380, 55, 'FALSE'),
(223, 'Remoraid', 'Water', 300, 35, 'FALSE'),
(224, 'Octillery', 'Water', 480, 75, 'FALSE'),
(225, 'Delibird', 'Ice', 330, 45, 'FALSE'),
(226, 'Mantine', 'Water', 465, 65, 'FALSE'),
(227, 'Skarmory', 'Steel', 465, 65, 'FALSE'),
(228, 'Houndour', 'Dark', 330, 45, 'FALSE'),
(229, 'Houndoom', 'Dark', 500, 75, 'FALSE'),
(229, 'HoundoomMega Houndoom', 'Dark', 600, 75, 'FALSE'),
(230, 'Kingdra', 'Water', 540, 75, 'FALSE'),
(231, 'Phanpy', 'Ground', 330, 90, 'FALSE'),
(232, 'Donphan', 'Ground', 500, 90, 'FALSE'),
(233, 'Porygon2', 'Normal', 515, 85, 'FALSE'),
(234, 'Stantler', 'Normal', 465, 73, 'FALSE'),
(235, 'Smeargle', 'Normal', 250, 55, 'FALSE'),
(236, 'Tyrogue', 'Fighting', 210, 35, 'FALSE'),
(237, 'Hitmontop', 'Fighting', 455, 50, 'FALSE'),
(238, 'Smoochum', 'Ice', 305, 45, 'FALSE'),
(239, 'Elekid', 'Electric', 360, 45, 'FALSE'),
(240, 'Magby', 'Fire', 365, 45, 'FALSE'),
(241, 'Miltank', 'Normal', 490, 95, 'FALSE'),
(242, 'Blissey', 'Normal', 540, 255, 'FALSE'),
(243, 'Raikou', 'Electric', 580, 90, 'TRUE'),
(244, 'Entei', 'Fire', 580, 115, 'TRUE'),
(245, 'Suicune', 'Water', 580, 100, 'TRUE'),
(246, 'Larvitar', 'Rock', 300, 50, 'FALSE'),
(247, 'Pupitar', 'Rock', 410, 70, 'FALSE'),
(248, 'Tyranitar', 'Rock', 600, 100, 'FALSE'),
(248, 'TyranitarMega Tyranitar', 'Rock', 700, 100, 'FALSE'),
(249, 'Lugia', 'Psychic', 680, 106, 'TRUE'),
(250, 'Ho-oh', 'Fire', 680, 106, 'TRUE'),
(251, 'Celebi', 'Psychic', 600, 100, 'FALSE'),
(252, 'Treecko', 'Grass', 310, 40, 'FALSE'),
(253, 'Grovyle', 'Grass', 405, 50, 'FALSE'),
(254, 'Sceptile', 'Grass', 530, 70, 'FALSE'),
(254, 'SceptileMega Sceptile', 'Grass', 630, 70, 'FALSE'),
(255, 'Torchic', 'Fire', 310, 45, 'FALSE'),
(256, 'Combusken', 'Fire', 405, 60, 'FALSE'),
(257, 'Blaziken', 'Fire', 530, 80, 'FALSE'),
(257, 'BlazikenMega Blaziken', 'Fire', 630, 80, 'FALSE'),
(258, 'Mudkip', 'Water', 310, 50, 'FALSE'),
(259, 'Marshtomp', 'Water', 405, 70, 'FALSE'),
(260, 'Swampert', 'Water', 535, 100, 'FALSE'),
(260, 'SwampertMega Swampert', 'Water', 635, 100, 'FALSE'),
(261, 'Poochyena', 'Dark', 220, 35, 'FALSE'),
(262, 'Mightyena', 'Dark', 420, 70, 'FALSE'),
(263, 'Zigzagoon', 'Normal', 240, 38, 'FALSE'),
(264, 'Linoone', 'Normal', 420, 78, 'FALSE'),
(265, 'Wurmple', 'Bug', 195, 45, 'FALSE'),
(266, 'Silcoon', 'Bug', 205, 50, 'FALSE'),
(267, 'Beautifly', 'Bug', 395, 60, 'FALSE'),
(268, 'Cascoon', 'Bug', 205, 50, 'FALSE'),
(269, 'Dustox', 'Bug', 385, 60, 'FALSE'),
(270, 'Lotad', 'Water', 220, 40, 'FALSE'),
(271, 'Lombre', 'Water', 340, 60, 'FALSE'),
(272, 'Ludicolo', 'Water', 480, 80, 'FALSE'),
(273, 'Seedot', 'Grass', 220, 40, 'FALSE'),
(274, 'Nuzleaf', 'Grass', 340, 70, 'FALSE'),
(275, 'Shiftry', 'Grass', 480, 90, 'FALSE'),
(276, 'Taillow', 'Normal', 270, 40, 'FALSE'),
(277, 'Swellow', 'Normal', 430, 60, 'FALSE'),
(278, 'Wingull', 'Water', 270, 40, 'FALSE'),
(279, 'Pelipper', 'Water', 430, 60, 'FALSE'),
(280, 'Ralts', 'Psychic', 198, 28, 'FALSE'),
(281, 'Kirlia', 'Psychic', 278, 38, 'FALSE'),
(282, 'Gardevoir', 'Psychic', 518, 68, 'FALSE'),
(282, 'GardevoirMega Gardevoir', 'Psychic', 618, 68, 'FALSE'),
(283, 'Surskit', 'Bug', 269, 40, 'FALSE'),
(284, 'Masquerain', 'Bug', 414, 70, 'FALSE'),
(285, 'Shroomish', 'Grass', 295, 60, 'FALSE'),
(286, 'Breloom', 'Grass', 460, 60, 'FALSE'),
(287, 'Slakoth', 'Normal', 280, 60, 'FALSE'),
(288, 'Vigoroth', 'Normal', 440, 80, 'FALSE'),
(289, 'Slaking', 'Normal', 670, 150, 'FALSE'),
(290, 'Nincada', 'Bug', 266, 31, 'FALSE'),
(291, 'Ninjask', 'Bug', 456, 61, 'FALSE'),
(292, 'Shedinja', 'Bug', 236, 1, 'FALSE'),
(293, 'Whismur', 'Normal', 240, 64, 'FALSE'),
(294, 'Loudred', 'Normal', 360, 84, 'FALSE'),
(295, 'Exploud', 'Normal', 490, 104, 'FALSE'),
(296, 'Makuhita', 'Fighting', 237, 72, 'FALSE'),
(297, 'Hariyama', 'Fighting', 474, 144, 'FALSE'),
(298, 'Azurill', 'Normal', 190, 50, 'FALSE'),
(299, 'Nosepass', 'Rock', 375, 30, 'FALSE'),
(300, 'Skitty', 'Normal', 260, 50, 'FALSE');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
