-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 18 Mai 2017 à 13:52
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `video`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE `abonnement` (
  `ID_ABN` bigint(20) NOT NULL,
  `LIB_ABN` varchar(32) DEFAULT NULL,
  `DUREE_ABN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `abonnement`
--

INSERT INTO `abonnement` (`ID_ABN`, `LIB_ABN`, `DUREE_ABN`) VALUES
(1, 'Abonnement 30 jours', 30),
(2, 'Abonnement 90 jours ', 90);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `ID_CAT` bigint(20) NOT NULL,
  `LIB_CAT` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`ID_CAT`, `LIB_CAT`) VALUES
(1, 'Action'),
(2, 'Aventure'),
(3, 'Comédie'),
(4, 'Documentaire'),
(5, 'Famille'),
(6, 'Fantastique'),
(7, 'Policier'),
(8, 'Science-Fiction'),
(9, 'Western'),
(10, 'Guerre'),
(11, 'Horreur'),
(12, 'Thriller'),
(13, 'Romance'),
(14, 'Drame'),
(15, 'Espionnage'),
(16, 'Musical'),
(17, 'Historique');

-- --------------------------------------------------------

--
-- Structure de la table `cat_video`
--

CREATE TABLE `cat_video` (
  `ID_VIDEO` bigint(20) NOT NULL,
  `ID_CAT` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cat_video`
--

INSERT INTO `cat_video` (`ID_VIDEO`, `ID_CAT`) VALUES
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(17, 1),
(18, 1),
(28, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(37, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(10, 2),
(12, 2),
(14, 2),
(18, 2),
(21, 2),
(22, 2),
(24, 2),
(25, 2),
(26, 2),
(28, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(38, 2),
(46, 2),
(1, 3),
(36, 3),
(46, 3),
(36, 5),
(4, 6),
(5, 6),
(10, 6),
(12, 6),
(13, 6),
(22, 6),
(24, 6),
(26, 6),
(27, 6),
(29, 6),
(30, 6),
(32, 6),
(35, 6),
(38, 6),
(45, 6),
(16, 7),
(29, 7),
(2, 8),
(3, 8),
(9, 8),
(10, 8),
(18, 8),
(25, 8),
(31, 8),
(34, 8),
(37, 8),
(38, 8),
(1, 10),
(20, 10),
(21, 10),
(23, 10),
(33, 10),
(13, 11),
(27, 11),
(5, 12),
(6, 12),
(7, 12),
(8, 12),
(9, 12),
(11, 12),
(12, 12),
(13, 12),
(14, 12),
(16, 12),
(17, 12),
(20, 13),
(39, 13),
(11, 14),
(14, 14),
(15, 14),
(16, 14),
(17, 14),
(19, 14),
(20, 14),
(23, 14),
(27, 14),
(28, 14),
(30, 14),
(34, 14),
(35, 14),
(39, 14),
(45, 14),
(6, 15),
(32, 15),
(15, 16),
(21, 17),
(23, 17),
(28, 17),
(33, 17),
(39, 17);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID_CLIENT` bigint(20) NOT NULL,
  `NOM` varchar(32) DEFAULT NULL,
  `PRENOM` varchar(32) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `LOGIN` varchar(32) DEFAULT NULL,
  `MDP` varchar(32) DEFAULT NULL,
  `DATE_NAISSANCE` datetime DEFAULT NULL,
  `ADMIN` tinyint(1) DEFAULT '0',
  `ID_VILLE` bigint(20) DEFAULT NULL,
  `LATITUDE` double NOT NULL,
  `LONGITUDE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`ID_CLIENT`, `NOM`, `PRENOM`, `EMAIL`, `LOGIN`, `MDP`, `DATE_NAISSANCE`, `ADMIN`, `ID_VILLE`, `LATITUDE`, `LONGITUDE`) VALUES
(1, 'Fino', 'Jean-Marie', 'jmfino@divae.fr', 'jmfino', 'jmfino', '1959-11-07 00:00:00', 1, 1, 47.480147, 6.852645),
(2, 'Chatonnay', 'Pascal', 'pchatonnay@gmail.fr', 'pchat', 'pchat', '1972-03-09 00:00:00', 0, 4, 0, 0),
(3, 'Chartogne', 'Elodie', 'echartogne@gmail.com', 'echart', 'echart', '1980-03-28 00:00:00', 0, 6, 0, 0),
(4, 'Gil', 'Pascale', 'pgil@gmail.fr', 'pgil', 'pgil', '1970-01-05 00:00:00', 0, 2, 0, 0),
(5, 'Augier', 'Sebastien', 'saugier@gmail.com', 'seb', 'seb', '1980-07-13 00:00:00', 0, 5, 0, 0),
(9, 'Senete', 'Xavier', 'xsenente@gmail.fr', 'xsenente', 'noe', '1980-12-24 00:00:00', 0, 5, 47.636652, 6.86464),
(10, 'Corvaisier', 'Bastien', 'bcorvaisier@gmail.com', 'bcorvaisier', 'tutu', '1992-09-04 00:00:00', 0, 1, 45.762329, 4.822086),
(11, 'Vieille', 'Simon', 'svieille@gmail.com', 'svieille', 'toto', '1990-08-18 00:00:00', 1, 1, 43.608876, 3.88018),
(19, 'Alfonse', 'Alfred', 'a@fr', 'aalphonse', 'aalphonse', '2010-11-02 00:00:00', 0, 1, 0, 0),
(20, 'Adjassin', 'Badeba', 'ababeda@gmail.com', 'badjassin', 'badjassin', '0000-00-00 00:00:00', 0, 5, 0, 0),
(21, 'Chenot', 'Maxime', 'mchenot@gmail.com', 'mchenot', 'mchenot', '0000-00-00 00:00:00', 0, 3, 0, 0),
(22, 'Colomb', 'Gaetan', 'gcolomb@gmail.com', 'gcolomb', 'gcolomb', '0000-00-00 00:00:00', 0, 1, 0, 0),
(23, 'Dione', 'Cheick', 'dcheick@gmail.com', 'cdione', 'cdione', '0000-00-00 00:00:00', 0, 10, 0, 0),
(24, 'Drian', 'Antoine', 'adrian@gmail.com', 'adrian', 'adrian', '0000-00-00 00:00:00', 0, 5, 0, 0),
(25, 'Zamora', 'Vincent', 'vzamora@gmail.com', 'vzamora', 'vzamora', '0000-00-00 00:00:00', 0, 4, 0, 0),
(26, 'Canali', 'Benjamin', 'bcanali@gmail.com', 'bcanali', 'bcanali', '0000-00-00 00:00:00', 0, 6, 0, 0),
(27, 'Mary', 'Antoine', 'amary@gmail.com', 'amary', 'amary', '0000-00-00 00:00:00', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `client_abn`
--

CREATE TABLE `client_abn` (
  `ID_CLIENT` bigint(20) NOT NULL DEFAULT '0',
  `ID_ABN` bigint(20) NOT NULL DEFAULT '0',
  `DEBUT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client_abn`
--

INSERT INTO `client_abn` (`ID_CLIENT`, `ID_ABN`, `DEBUT`) VALUES
(1, 1, '2013-10-18 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `ID_DEP` bigint(20) NOT NULL,
  `NOM_DEP` varchar(32) DEFAULT NULL,
  `ID_PAYS` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`ID_DEP`, `NOM_DEP`, `ID_PAYS`) VALUES
(1, 'Doubs', 1),
(2, 'Territoire de Belfort', 1),
(3, 'Haute-Saone', 1),
(4, 'Rhone-Alpes', 1);

-- --------------------------------------------------------

--
-- Structure de la table `distribution`
--

CREATE TABLE `distribution` (
  `ID_VIDEO` bigint(20) NOT NULL,
  `ID_PARTICIPANT` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `distribution`
--

INSERT INTO `distribution` (`ID_VIDEO`, `ID_PARTICIPANT`) VALUES
(15, 1),
(1, 2),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(10, 15),
(4, 17),
(22, 17),
(24, 17),
(26, 17),
(4, 18),
(4, 19),
(4, 20),
(5, 22),
(12, 22),
(5, 23),
(12, 23),
(5, 24),
(5, 25),
(6, 27),
(21, 27),
(25, 27),
(6, 28),
(6, 29),
(6, 30),
(13, 30),
(7, 32),
(7, 33),
(7, 34),
(8, 36),
(9, 36),
(14, 36),
(16, 36),
(8, 37),
(8, 38),
(8, 39),
(9, 40),
(15, 40),
(9, 41),
(10, 43),
(10, 44),
(11, 45),
(19, 45),
(11, 46),
(11, 47),
(12, 48),
(13, 50),
(13, 51),
(14, 53),
(14, 54),
(15, 56),
(16, 57),
(16, 58),
(16, 59),
(17, 61),
(17, 62),
(17, 63),
(18, 65),
(18, 66),
(18, 67),
(19, 68),
(19, 69),
(20, 71),
(20, 72),
(20, 73),
(21, 74),
(21, 75),
(21, 76),
(22, 77),
(24, 77),
(26, 77),
(22, 78),
(24, 78),
(26, 78),
(22, 79),
(24, 79),
(26, 79),
(22, 80),
(24, 80),
(26, 80),
(23, 82),
(23, 83),
(23, 84),
(25, 86),
(25, 87),
(27, 89),
(27, 90),
(27, 91),
(2, 93),
(28, 93),
(28, 94),
(28, 95),
(29, 97),
(46, 97),
(29, 98),
(29, 99),
(30, 101),
(30, 102),
(30, 103),
(31, 106),
(31, 107),
(31, 108),
(47, 130),
(47, 131),
(47, 132);

-- --------------------------------------------------------

--
-- Structure de la table `format`
--

CREATE TABLE `format` (
  `ID_FORMAT` bigint(20) NOT NULL,
  `LIB_FORMAT` varchar(32) DEFAULT NULL,
  `NORMALISE` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `format`
--

INSERT INTO `format` (`ID_FORMAT`, `LIB_FORMAT`, `NORMALISE`) VALUES
(1, 'Audio Video Interleave', 1);

-- --------------------------------------------------------

--
-- Structure de la table `format_video`
--

CREATE TABLE `format_video` (
  `ID_VIDEO` bigint(20) NOT NULL,
  `ID_FORMAT` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `format_video`
--

INSERT INTO `format_video` (`ID_VIDEO`, `ID_FORMAT`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `loue`
--

CREATE TABLE `loue` (
  `ID_CLIENT` bigint(20) NOT NULL DEFAULT '0',
  `ID_VIDEO` bigint(20) NOT NULL DEFAULT '0',
  `ID_FORMAT` bigint(20) NOT NULL DEFAULT '0',
  `DATE_LOC` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `loue`
--

INSERT INTO `loue` (`ID_CLIENT`, `ID_VIDEO`, `ID_FORMAT`, `DATE_LOC`) VALUES
(1, 1, 1, '2016-11-04 08:11:36'),
(1, 4, 1, '2016-09-19 09:09:55'),
(1, 7, 1, '2016-10-26 15:10:57'),
(1, 10, 1, '2016-05-31 15:05:51'),
(1, 11, 1, '2016-09-19 09:09:51'),
(1, 14, 1, '2016-10-26 15:10:59'),
(1, 21, 1, '2016-09-19 09:09:53'),
(1, 23, 1, '2016-09-19 09:09:50'),
(1, 28, 1, '2016-11-03 11:11:47'),
(1, 33, 1, '2016-05-31 15:05:03'),
(1, 34, 1, '2016-05-31 15:05:01'),
(1, 35, 1, '2016-05-31 15:05:00'),
(1, 37, 1, '2016-11-04 08:11:40'),
(2, 3, 1, '2016-03-31 06:03:19'),
(2, 14, 1, '2016-03-31 06:03:07'),
(2, 15, 1, '2016-03-16 06:03:17'),
(2, 19, 1, '2016-03-31 06:03:13'),
(2, 22, 1, '2016-03-31 06:03:11'),
(2, 25, 1, '2016-03-31 06:03:15'),
(2, 33, 1, '2016-03-31 06:03:20'),
(2, 34, 1, '2016-03-31 06:03:22'),
(2, 35, 1, '2016-03-31 06:03:09'),
(2, 36, 1, '2016-03-31 06:03:16'),
(2, 39, 1, '2016-03-31 06:03:24'),
(2, 47, 1, '2016-03-31 06:03:18'),
(3, 2, 1, '2016-03-31 06:03:38'),
(3, 9, 1, '2016-03-31 06:03:31'),
(3, 14, 1, '2016-03-31 06:03:32'),
(3, 15, 1, '2016-03-31 06:03:34'),
(3, 16, 1, '2016-03-31 06:03:37'),
(3, 17, 1, '2016-05-17 18:05:04'),
(3, 19, 1, '2016-03-31 06:03:40'),
(3, 20, 1, '2016-03-31 06:03:47'),
(3, 31, 1, '2016-03-31 06:03:39'),
(3, 32, 1, '2016-03-31 06:03:46'),
(3, 33, 1, '2016-03-31 06:03:43'),
(3, 35, 1, '2016-03-31 06:03:30'),
(3, 36, 1, '2016-05-17 18:05:06'),
(3, 37, 1, '2016-03-31 06:03:28'),
(3, 45, 1, '2016-05-17 18:05:08'),
(3, 46, 1, '2016-03-31 06:03:48'),
(4, 1, 1, '2016-03-31 06:03:34'),
(4, 2, 1, '2016-05-17 18:05:38'),
(4, 3, 1, '2016-05-17 18:05:21'),
(4, 4, 1, '2016-03-31 06:03:38'),
(4, 5, 1, '2016-05-17 18:05:23'),
(4, 6, 1, '2016-05-17 18:05:16'),
(4, 7, 1, '2016-03-31 06:03:29'),
(4, 8, 1, '2016-05-17 18:05:41'),
(4, 9, 1, '2016-05-17 18:05:03'),
(4, 10, 1, '2016-03-31 06:03:30'),
(4, 11, 1, '2016-03-31 06:03:32'),
(4, 12, 1, '2016-05-17 18:05:22'),
(4, 13, 1, '2016-05-17 18:05:12'),
(4, 14, 1, '2016-05-17 18:05:23'),
(4, 15, 1, '2016-05-17 18:05:32'),
(4, 16, 1, '2016-05-17 18:05:36'),
(4, 17, 1, '2016-05-17 18:05:07'),
(4, 18, 1, '2016-05-17 18:05:20'),
(4, 19, 1, '2016-05-17 18:05:10'),
(4, 20, 1, '2016-04-25 18:05:43'),
(4, 21, 1, '2016-03-31 06:03:39'),
(4, 22, 1, '2016-05-17 18:05:06'),
(4, 23, 1, '2016-03-31 06:03:33'),
(4, 24, 1, '2016-05-17 18:05:08'),
(4, 25, 1, '2016-05-17 18:05:13'),
(4, 26, 1, '2016-05-17 18:05:04'),
(4, 27, 1, '2016-05-17 18:05:07'),
(4, 28, 1, '2016-05-17 18:05:02'),
(4, 29, 1, '2016-03-31 06:03:35'),
(4, 30, 1, '2016-05-17 18:05:01'),
(4, 31, 1, '2016-05-17 18:05:11'),
(4, 32, 1, '2016-05-17 18:05:25'),
(4, 33, 1, '2016-05-17 18:05:18'),
(4, 34, 1, '2016-05-17 18:05:17'),
(4, 35, 1, '2016-05-17 18:05:00'),
(4, 36, 1, '2016-05-17 18:05:15'),
(4, 37, 1, '2016-05-17 18:05:27'),
(4, 38, 1, '2016-05-17 18:05:31'),
(4, 39, 1, '2016-05-17 18:05:30'),
(4, 45, 1, '2016-05-17 18:05:14'),
(4, 46, 1, '2016-05-17 18:05:24'),
(4, 47, 1, '2016-05-17 18:05:19'),
(5, 2, 1, '2016-03-31 06:03:01'),
(5, 4, 1, '2016-03-31 06:03:52'),
(5, 9, 1, '2016-03-31 06:03:49'),
(5, 11, 1, '2016-03-31 06:03:48'),
(5, 14, 1, '2016-03-31 06:03:47'),
(5, 16, 1, '2016-03-31 06:03:58'),
(5, 17, 1, '2016-03-31 06:03:00'),
(5, 21, 1, '2016-03-31 06:03:51'),
(5, 22, 1, '2016-03-08 06:03:53'),
(5, 24, 1, '2016-03-15 06:03:54'),
(5, 26, 1, '2016-03-31 06:03:52'),
(5, 27, 1, '2016-03-31 06:03:57'),
(5, 31, 1, '2016-03-31 06:03:02'),
(5, 37, 1, '2016-03-31 06:03:23'),
(5, 38, 1, '2016-03-31 06:03:50'),
(5, 39, 1, '2016-03-31 06:03:56'),
(9, 2, 1, '2016-03-31 06:03:09'),
(9, 3, 1, '2016-05-17 18:05:57'),
(9, 6, 1, '2016-03-31 06:03:14'),
(9, 10, 1, '2016-03-31 06:03:58'),
(9, 11, 1, '2016-03-31 06:03:59'),
(9, 13, 1, '2016-03-31 06:03:12'),
(9, 17, 1, '2016-03-31 06:03:07'),
(9, 20, 1, '2016-05-04 18:05:54'),
(9, 21, 1, '2016-03-31 06:03:02'),
(9, 22, 1, '2016-03-31 06:03:05'),
(9, 24, 1, '2016-03-31 06:03:04'),
(9, 25, 1, '2016-03-31 06:03:11'),
(9, 26, 1, '2016-03-31 06:03:06'),
(9, 32, 1, '2016-05-03 18:05:58'),
(9, 35, 1, '2016-03-31 06:03:01'),
(9, 36, 1, '2016-03-31 06:03:17'),
(9, 38, 1, '2016-04-03 18:05:52'),
(9, 45, 1, '2016-03-31 06:03:16'),
(9, 46, 1, '2016-04-11 18:05:55'),
(10, 3, 1, '2016-03-31 06:03:06'),
(10, 5, 1, '2016-03-31 06:03:09'),
(10, 7, 1, '2016-03-31 06:03:52'),
(10, 8, 1, '2016-03-31 06:03:04'),
(10, 11, 1, '2016-03-31 06:03:55'),
(10, 14, 1, '2016-03-31 06:03:53'),
(10, 15, 1, '2016-03-10 06:03:57'),
(10, 18, 1, '2016-03-31 06:03:08'),
(10, 20, 1, '2016-03-31 06:03:11'),
(10, 22, 1, '2016-05-17 18:05:24'),
(10, 28, 1, '2016-03-31 06:03:00'),
(10, 29, 1, '2016-03-22 06:03:56'),
(10, 33, 1, '2016-03-31 06:03:12'),
(10, 36, 1, '2016-05-17 18:05:26'),
(10, 45, 1, '2016-05-17 18:05:31'),
(10, 46, 1, '2016-05-17 18:05:30'),
(10, 47, 1, '2016-05-17 18:05:27'),
(11, 2, 1, '2016-05-17 18:05:01'),
(11, 3, 1, '2016-05-17 18:05:07'),
(11, 11, 1, '2016-05-17 18:05:56'),
(11, 14, 1, '2016-05-12 18:05:55'),
(11, 19, 1, '2016-05-17 18:05:05'),
(11, 20, 1, '2016-05-17 18:05:10'),
(11, 21, 1, '2016-05-17 18:05:58'),
(11, 25, 1, '2016-03-31 06:03:14'),
(11, 27, 1, '2016-05-17 18:05:02'),
(11, 29, 1, '2016-03-31 06:03:06'),
(11, 32, 1, '2016-05-17 18:05:10'),
(11, 33, 1, '2016-05-17 18:05:06'),
(19, 1, 1, '2016-03-02 18:05:52'),
(19, 3, 1, '2016-03-31 06:03:47'),
(19, 5, 1, '2016-03-31 06:03:44'),
(19, 8, 1, '2016-03-31 06:03:49'),
(19, 10, 1, '2016-05-17 18:05:50'),
(19, 12, 1, '2016-03-31 06:03:45'),
(19, 16, 1, '2016-03-31 06:03:50'),
(19, 17, 1, '2016-03-31 06:03:52'),
(19, 18, 1, '2016-03-31 06:03:46'),
(19, 20, 1, '2016-03-31 06:03:42'),
(19, 24, 1, '2016-05-17 18:05:55'),
(19, 25, 1, '2016-03-06 18:05:56'),
(19, 29, 1, '2016-03-24 18:05:53'),
(19, 31, 1, '2016-03-31 06:03:53'),
(19, 32, 1, '2016-03-31 06:03:45'),
(19, 33, 1, '2016-03-31 06:03:48'),
(19, 34, 1, '2016-05-17 18:05:00'),
(19, 46, 1, '2016-03-31 06:03:43'),
(19, 47, 1, '2016-05-27 06:36:58'),
(20, 4, 1, '2016-05-17 18:05:35'),
(20, 9, 1, '2016-05-17 18:05:34'),
(20, 14, 1, '2016-05-17 18:05:28'),
(20, 17, 1, '2016-05-17 18:05:41'),
(20, 25, 1, '2016-05-17 18:05:44'),
(20, 27, 1, '2016-05-17 18:05:38'),
(20, 29, 1, '2016-05-17 18:05:36'),
(20, 30, 1, '2016-05-17 18:05:31'),
(20, 31, 1, '2016-05-17 18:05:42'),
(20, 35, 1, '2016-05-17 18:05:29'),
(20, 39, 1, '2016-05-17 18:05:40'),
(21, 1, 1, '2016-05-17 18:05:08'),
(21, 4, 1, '2016-05-17 18:05:09'),
(21, 10, 1, '2016-05-17 18:05:06'),
(21, 13, 1, '2016-05-17 18:05:14'),
(21, 16, 1, '2016-05-17 18:05:13'),
(21, 22, 1, '2016-05-17 18:05:12'),
(21, 24, 1, '2016-05-17 18:05:10'),
(21, 28, 1, '2016-05-17 18:05:07'),
(21, 36, 1, '2016-05-17 18:05:17'),
(21, 37, 1, '2016-05-17 18:05:04'),
(21, 45, 1, '2016-05-17 18:05:16'),
(22, 2, 1, '2016-05-17 18:05:48'),
(22, 3, 1, '2016-03-18 18:05:53'),
(22, 6, 1, '2016-03-15 18:05:51'),
(22, 9, 1, '2016-05-17 18:05:41'),
(22, 11, 1, '2016-05-17 18:05:42'),
(22, 14, 1, '2016-05-17 18:05:39'),
(22, 18, 1, '2016-05-30 18:05:55'),
(22, 21, 1, '2016-03-15 18:05:47'),
(22, 23, 1, '2016-05-17 18:05:42'),
(22, 26, 1, '2016-05-17 18:05:44'),
(22, 31, 1, '2016-04-12 18:05:50'),
(22, 34, 1, '2016-05-17 18:05:57'),
(22, 35, 1, '2016-05-17 18:05:40'),
(22, 38, 1, '2016-04-19 18:05:45'),
(22, 47, 1, '2016-02-15 18:05:52'),
(23, 1, 1, '2016-05-17 18:05:20'),
(23, 5, 1, '2016-05-17 18:05:32'),
(23, 8, 1, '2016-05-17 18:05:27'),
(23, 9, 1, '2016-05-17 18:05:19'),
(23, 10, 1, '2016-05-17 18:05:17'),
(23, 12, 1, '2016-05-17 18:05:33'),
(23, 13, 1, '2016-05-17 18:05:25'),
(23, 15, 1, '2016-05-17 18:05:22'),
(23, 18, 1, '2016-05-17 18:05:29'),
(23, 19, 1, '2016-05-17 18:05:24'),
(23, 32, 1, '2016-05-17 18:05:30'),
(23, 37, 1, '2016-05-17 18:05:18'),
(23, 38, 1, '2016-05-17 18:05:21'),
(23, 45, 1, '2016-05-17 18:05:26'),
(24, 1, 1, '2016-05-17 18:05:08'),
(24, 6, 1, '2016-05-17 18:05:01'),
(24, 8, 1, '2016-05-17 18:05:03'),
(24, 16, 1, '2016-03-23 18:05:56'),
(24, 17, 1, '2016-05-02 18:05:57'),
(24, 22, 1, '2016-05-15 18:05:54'),
(24, 24, 1, '2016-04-13 18:05:53'),
(24, 26, 1, '2016-05-17 18:05:00'),
(24, 27, 1, '2016-05-01 12:05:59'),
(24, 31, 1, '2016-05-31 18:05:58'),
(24, 32, 1, '2016-05-17 18:05:07'),
(24, 33, 1, '2016-05-17 18:05:04'),
(24, 36, 1, '2016-05-17 18:05:02'),
(24, 39, 1, '2016-03-09 18:05:55'),
(25, 4, 1, '2016-05-17 18:05:34'),
(25, 8, 1, '2016-04-07 18:05:44'),
(25, 14, 1, '2016-05-17 18:05:30'),
(25, 15, 1, '2016-05-17 18:05:32'),
(25, 16, 1, '2016-05-17 18:05:38'),
(25, 20, 1, '2016-05-17 18:05:49'),
(25, 24, 1, '2016-05-17 18:05:37'),
(25, 25, 1, '2016-05-17 18:05:39'),
(25, 32, 1, '2016-05-17 18:05:47'),
(25, 35, 1, '2016-05-17 18:05:31'),
(25, 37, 1, '2016-05-17 18:05:29'),
(25, 38, 1, '2016-05-17 18:05:33'),
(25, 45, 1, '2016-03-15 18:05:43'),
(25, 47, 1, '2016-05-17 18:05:45'),
(26, 4, 1, '2016-05-17 17:05:47'),
(26, 6, 1, '2016-05-17 18:05:12'),
(26, 7, 1, '2016-05-17 17:05:40'),
(26, 10, 1, '2016-05-17 17:05:42'),
(26, 16, 1, '2016-05-17 18:05:09'),
(26, 21, 1, '2016-05-17 17:05:46'),
(26, 22, 1, '2016-05-17 17:05:48'),
(26, 23, 1, '2016-05-17 18:05:08'),
(26, 24, 1, '2016-05-17 17:05:50'),
(26, 26, 1, '2016-05-17 17:05:47'),
(26, 27, 1, '2016-05-17 18:05:10'),
(26, 29, 1, '2016-05-17 17:05:44'),
(26, 31, 1, '2016-05-17 17:05:52'),
(26, 37, 1, '2016-05-17 17:05:41'),
(27, 3, 1, '2016-05-17 18:05:31'),
(27, 8, 1, '2016-05-17 17:05:13'),
(27, 9, 1, '2016-05-17 17:05:08'),
(27, 13, 1, '2016-05-17 17:05:12'),
(27, 14, 1, '2016-05-17 17:05:07'),
(27, 19, 1, '2016-05-17 17:05:22'),
(27, 20, 1, '2016-05-17 17:05:15'),
(27, 23, 1, '2016-05-17 17:05:09'),
(27, 25, 1, '2016-05-17 18:05:30'),
(27, 26, 1, '2016-05-17 18:05:26'),
(27, 29, 1, '2016-05-17 18:05:28'),
(27, 33, 1, '2016-05-17 17:05:23'),
(27, 36, 1, '2016-05-17 17:05:19'),
(27, 38, 1, '2016-05-17 17:05:10'),
(27, 39, 1, '2016-05-17 18:05:25'),
(27, 45, 1, '2016-05-17 17:05:20');

-- --------------------------------------------------------

--
-- Structure de la table `participant`
--

CREATE TABLE `participant` (
  `ID_PARTICIPANT` bigint(20) NOT NULL,
  `NOM_PARTICIPANT` varchar(32) DEFAULT NULL,
  `PRENOM_PARTICIPANT` varchar(32) DEFAULT NULL,
  `DATE_NAISSANCE` datetime DEFAULT NULL,
  `IMAGE` varchar(128) DEFAULT NULL,
  `ID_PAYS` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `participant`
--

INSERT INTO `participant` (`ID_PARTICIPANT`, `NOM_PARTICIPANT`, `PRENOM_PARTICIPANT`, `DATE_NAISSANCE`, `IMAGE`, `ID_PAYS`) VALUES
(1, 'Depardieu', 'Gérard', '1948-12-27 00:00:00', 'GerardDepardieu.jpg', 1),
(2, 'De Funes', 'Louis', '1917-07-31 00:00:00', 'LouisdeFunes.jpg', 2),
(3, 'Oury', 'Gérard', '1919-04-29 00:00:00', 'GerardOury.jpg', 1),
(4, 'Bourvil', '', '1917-07-27 00:00:00', 'Bourvil.jpg', 1),
(5, 'Dubois', 'Marie', '1937-01-12 00:00:00', 'MarieDubois.jpg', 1),
(6, 'Cavill', 'Henry', '1983-05-05 00:00:00', 'HenryCavill.jpg', 2),
(7, 'Adams', 'Amy', '1974-08-20 00:00:00', 'AmyAdams.jpg', 2),
(8, 'Shanon', 'Michael', '1974-08-07 00:00:00', 'MichaelShannon.jpg', 2),
(9, 'Snyder', 'Zack', '1966-03-01 00:00:00', 'ZackSnyder.jpg', 2),
(10, 'Abrams', 'Jeffrey Jacob ', '1966-06-27 00:00:00', 'J.J.Abrams.jpg', 2),
(11, 'Pine', 'Chris', '1980-08-26 00:00:00', 'ChrisPine.jpg', 2),
(12, 'Zachary', 'Quinto', '1977-06-02 00:00:00', 'ZacharyQuinto.jpg', 2),
(13, 'Cumberbatch', 'Benedict', '1976-07-19 00:00:00', 'BenedictCumberbatch.jpg', 3),
(14, 'Urban', 'Karl', '1972-06-07 00:00:00', 'KarlUrban.jpg', 5),
(15, 'Saldana', 'Zoe', '1978-06-19 00:00:00', 'ZoeSaldana.jpg', 2),
(16, 'Jackson', 'Peter', '1961-10-31 00:00:00', 'PeterJackson.jpg', 5),
(17, 'McKellen', 'Ian', '1939-05-25 00:00:00', 'IanMcKellen.jpg', 3),
(18, 'Freeman', 'Martin', '1971-09-08 00:00:00', 'MartinFreeman.jpg', 3),
(19, 'Armitage', 'Richard', '1971-08-22 00:00:00', 'RichardArmitage.jpg', 3),
(20, 'Bennett', 'Manu', '1969-10-10 00:00:00', 'ManuBennett.jpg', 5),
(21, 'Nolan', 'Christopher', '1970-07-30 00:00:00', 'ChristopherNolan.jpg', 3),
(22, 'Bale', 'Christian', '1974-01-30 00:00:00', 'ChristianBale.jpg', 3),
(23, 'OldMan', 'Gary', '1958-03-21 00:00:00', 'GaryOldman.jpg', 3),
(24, 'Hardy', 'Tom', '1977-09-15 00:00:00', 'TomHardy.jpg', 3),
(25, 'Hathaway', 'Anne', '1982-11-12 00:00:00', 'AnneHathaway.jpg', 2),
(26, 'Bird', 'Brad', '1957-09-11 00:00:00', 'BradBird.jpg', 2),
(27, 'Cruise', 'Tom', '1962-07-03 00:00:00', 'TomCruise.jpg', 2),
(28, 'Renner', 'Jeremy', '1971-01-07 00:00:00', 'JeremyRenner.jpg', 2),
(29, 'Pegg', 'Simon', '1970-02-14 00:00:00', 'SimonPegg.jpg', 3),
(30, 'Patton', 'Paula', '1975-10-05 00:00:00', 'PaulaPatton.jpg', 2),
(31, 'Winding Refn', 'Nicolas', '1970-09-29 00:00:00', 'NicolasWindingRefn.jpg', 6),
(32, 'Gosling ', 'Ryan', '1980-11-12 00:00:00', 'RyanGosling.jpg', 7),
(33, 'Mulligan', 'Carey', '1985-05-28 00:00:00', 'CareyMulligan.jpg', 3),
(34, 'Cranston', 'Bryan', '1956-03-07 00:00:00', 'BryanCranston.jpg', 2),
(35, 'Scorsese', 'Martin', '1942-11-17 00:00:00', 'MartinScorsese.jpg', 2),
(36, 'DiCaprio', 'Leonardo', '1974-11-11 00:00:00', 'LeonardoDiCaprio.jpg', 2),
(37, 'Ruffalo', 'Mark', '1967-11-22 00:00:00', 'MarkRuffalo.jpg', 2),
(38, 'Kingsley', 'Ben', '1943-12-31 00:00:00', 'BenKingsley.jpg', 3),
(39, 'Williams', 'Michelle', '1980-09-09 00:00:00', 'MichelleWilliams.jpg', 2),
(40, 'Cotillard', 'Marion', '1975-09-30 00:00:00', 'MarionCotillard.jpg', 1),
(41, 'Page', 'Ellen', '1987-02-21 00:00:00', 'EllenPage.jpg', 7),
(42, 'Cameron', 'James', '1954-08-16 00:00:00', 'JamesCameron.jpg', 7),
(43, 'Worthington', 'Sam', '1976-08-02 00:00:00', 'SamWorthington.jpg', 4),
(44, 'Weaver', 'Sigourney', '1949-10-08 00:00:00', 'SigourneyWeaver.jpg', 2),
(45, 'Eastwood', 'Clint', '1930-05-31 00:00:00', 'ClintEastwood.jpg', 2),
(46, 'Wang', 'Bee', '1991-11-04 00:00:00', 'BeeVang.jpg', 2),
(47, 'Her', 'Ahney', '1993-07-13 00:00:00', 'AhneyHer.jpg', 2),
(48, 'Ledger', 'Heath', '1979-04-04 00:00:00', 'HeathLedger.jpg', 4),
(49, 'Aja', 'Alexandres', '1978-08-07 00:00:00', 'AlexandreAja.jpg', 1),
(50, 'Sutherland', 'Kiefer', '1966-10-21 00:00:00', 'KieferSutherland.jpg', 2),
(51, 'Boyce', 'Cameron', '1999-05-28 00:00:00', 'CameronBoyce.jpg', 2),
(52, 'Zwinck', 'Edward', '1952-10-08 00:00:00', 'EdwardZwick.jpg', 2),
(53, 'Hounsou', 'Djimon', '1964-04-24 00:00:00', 'DjimonHounsou.jpg', 16),
(54, 'Connelly', 'Jennifer', '1970-12-12 00:00:00', 'JenniferConnelly.jpg', 2),
(55, 'Dahan', 'Olivier', '1967-06-26 00:00:00', 'OlivierDahan.jpg', 1),
(56, 'Martins', 'Jean-Pierre', '1971-10-29 00:00:00', 'JeanPierreMartins.jpg', 1),
(57, 'Damon', 'Matt', '1970-10-08 00:00:00', 'MattDamon.jpg', 2),
(58, 'Nicholson', 'Jack', '1937-04-22 00:00:00', 'JackNicholson.jpg', 2),
(59, 'Wahlberg', 'Marc', '1971-06-05 00:00:00', 'MarkWahlberg.jpg', 2),
(60, 'Niccol', 'Andrew', '1964-01-01 00:00:00', 'AndrewNiccol.jpg', 5),
(61, 'Cage', 'Nicolas', '1964-01-07 00:00:00', 'NicolasCage.jpg', 2),
(62, 'Hawke', 'Ethan', '1970-11-06 00:00:00', 'EthanHawke.jpg', 2),
(63, 'Leto', 'Jared', '1971-12-26 00:00:00', 'JaredLeto.jpg', 2),
(64, 'Lucas', 'George', '1944-05-14 00:00:00', 'GeorgeLucas.jpg', 2),
(65, 'Christensen', 'Hayden', '1981-04-19 00:00:00', 'HaydenChristensen.jpg', 7),
(66, 'McGregor', 'Ewan', '1971-03-31 00:00:00', 'EwanMcGregor.jpg', 3),
(67, 'Portman', 'Nathalie', '1981-06-09 00:00:00', 'NataliePortman.jpg', 2),
(68, 'Freeman', 'Morgan', '1937-06-01 00:00:00', 'MorganFreeman.jpg', 2),
(69, 'Swank', 'Hilary', '1974-07-30 00:00:00', 'HilarySwank.jpg', 2),
(70, 'Jeunet', 'Jean-Pierre', '1953-09-03 00:00:00', 'Jean-PierreJeunet.jpg', 1),
(71, 'Tautou', 'Audrey', '1976-08-09 00:00:00', 'AudreyTautou.jpg', 1),
(72, 'Ulliel', 'Gaspard', '1984-11-25 00:00:00', 'GaspardUlliel.jpg', 1),
(73, 'Pinon', 'Dominique', '1955-03-04 00:00:00', 'DominiquePinon.jpg', 1),
(74, 'Connolly', 'Billy', '1942-11-24 00:00:00', 'BillyConnolly.jpg', 3),
(75, 'Goldwyn', 'Tony', '1960-05-20 00:00:00', 'TonyGoldwyn.jpg', 2),
(76, 'Watanabe', 'Ken', '1959-10-21 00:00:00', 'KenWatanabe.jpg', 10),
(77, 'Wood', 'Elijah', '1981-01-28 00:00:00', 'ElijahWood.jpg', 2),
(78, 'Astin', 'Sean', '1971-02-25 00:00:00', 'SeanAstin.jpg', 2),
(79, 'Mortensen', 'Viggo', '1958-10-20 00:00:00', 'ViggoMortensen.jpg', 2),
(80, 'Tyler', 'Liv', '1977-07-01 00:00:00', 'LivTyler.jpg', 2),
(81, 'Hirschbiegel', 'Oliver', '1957-12-29 00:00:00', 'OliverHirschbiegel.jpg', 8),
(82, 'Ganz', 'Bruno', '1941-03-22 00:00:00', 'BrunoGanz.jpg', 11),
(83, 'Kohler', 'Juliane', '1965-08-06 00:00:00', 'JulianeKohler.jpg', 11),
(84, 'Alexandra', 'Maria Lara', '1978-11-12 00:00:00', 'AlexandraMariaLara.jpg', 9),
(85, 'Spielberg', 'Steven', '1946-12-18 00:00:00', 'StevenSpielberg.jpg', 2),
(86, 'Morris', 'Kathryn', '1969-01-28 00:00:00', 'KathrynMorris.jpg', 2),
(87, 'Farrell', 'Colin', '1966-05-31 00:00:00', 'ColinFarrell.jpg', 12),
(88, 'Amenabar', 'Alexandro', '1972-03-31 00:00:00', 'AlejandroAmenabar.jpg ', 13),
(89, 'Kidman', 'Nicole', '1967-06-20 00:00:00', 'NicoleKidman.jpg', 2),
(90, 'Cassidy', 'Elaine', '1979-12-31 00:00:00', 'ElaineCassidy.jpg', 12),
(91, 'Eccleston', 'Christopher', '1964-02-16 00:00:00', 'ChristopherEccleston.jpg', 3),
(92, 'Scott', 'Ridley', '1937-11-30 00:00:00', 'RidleyScott.jpg', 3),
(93, 'Crowe', 'Russel', '1964-04-07 00:00:00', 'RussellCrowe.jpg', 5),
(94, 'Phoenix', 'Joaquin', '1974-10-28 00:00:00', 'JoaquinPhoenix.jpg', 2),
(95, 'Nielsen', 'Connie', '1965-07-03 00:00:00', 'ConnieNielsen.jpg', 6),
(96, 'Darabont', 'Frank', '1959-01-28 00:00:00', 'FrankDarabont.jpg', 2),
(97, 'Hanks', 'Tom', '1956-07-09 00:00:00', 'TomHanks.jpg', 2),
(98, 'Duncan', 'Michael Clarke', '1957-12-10 00:00:00', 'MichaelClarkeDuncan.jpg', 2),
(99, 'Morse', 'David', '1953-10-11 00:00:00', 'DavidMorse.jpg', 2),
(100, 'Fincher', 'David', '1962-05-10 00:00:00', 'DavidFincher.jpg', 2),
(101, 'Pitt', 'Brad', '1963-12-18 00:00:00', 'BradPitt.jpg', 2),
(102, 'Norton', 'Edward', '1969-08-18 00:00:00', 'EdwardNorton.jpg', 2),
(103, 'Bonham Carter', 'Helena', '1966-05-26 00:00:00', 'HelenaBonhamCarter.jpg', 3),
(104, 'Wachowski', 'Lana', '1965-06-21 00:00:00', 'LanaWachowski.jpg', 2),
(105, 'Wachowski', 'Andy', '1967-12-29 00:00:00', 'AndyWachowski.jpg', 2),
(106, 'Reeves', 'Keanu', '1964-09-02 00:00:00', 'KeanuReeves.jpg', 2),
(107, 'Fishburne', 'Laurence', '1961-07-30 00:00:00', 'LaurenceFishburne.jpg', 2),
(108, 'Moss', 'Carie-Anne', '1967-08-21 00:00:00', 'Carrie-AnneMoss.jpg', 2),
(109, 'Stapleton', 'Sullivan', '1977-06-14 00:00:00', 'sullivanstapleton.jpg', 4),
(111, 'Winchester', 'Philip', '1981-03-24 00:00:00', 'philipwinchester.jpg', 2),
(115, 'Mitra', 'Rhona', '1977-06-14 00:00:00', 'rhonamitra.jpg', 3),
(116, 'Rajskub', 'Mary Lynn', '1971-06-22 00:00:00', 'marylynnrajskub.jpg', 2),
(117, 'Raver', 'Kim', '1969-03-15 00:00:00', 'kimraver.jpg', 2),
(118, 'McIntyre', 'Liam', '1982-02-08 00:00:00', 'liammcintyre.jpg', 4),
(119, 'Clare', 'Dustin', '1982-01-02 00:00:00', 'dustinclare.jpg', 4),
(120, 'Burke', 'Billy', '1966-11-25 00:00:00', 'billyburke.jpg', 2),
(121, 'Spiridakos', 'Tracy', '1988-01-01 00:00:00', 'tracyspiridakos.jpg', 7),
(122, 'Esposito', 'Giancarlo', '1958-04-26 00:00:00', 'giancarloesposito.jpg', 2),
(123, 'Miyazaki', 'Hayao', '1941-01-05 00:00:00', 'hayaomiyazaki.jpg', 10),
(124, 'Otomo', 'Katsuhiro', '1954-04-14 00:00:00', 'katsuhiroOtomo.gif', 10),
(125, 'Unkrich', 'Lee', '1967-08-08 00:00:00', 'leeunkrich.jpg', 2),
(127, 'Miller', 'Frank', '1957-01-27 00:00:00', 'MillerFrank.jpg', 2),
(128, 'Rodriguez', 'Robert', '1968-06-20 00:00:00', 'RodriguezRobert.jpg', 2),
(129, 'Green', 'Eva', '1980-07-05 00:00:00', 'GreenEva.jpg', 1),
(130, 'Brolin', 'Josh', '1968-02-12 00:00:00', 'BrolinJosh.jpg', 2),
(131, 'Alba', 'Jessica', '1981-04-28 00:00:00', 'AlbaJessica.jpg', 2),
(132, 'Rourke', 'Mickey', '1952-09-16 00:00:00', 'RourkeMickey.jpg', 2),
(134, 'Neeson', 'Liam', '1952-06-07 00:00:00', 'NeesonLiam.jpg', 12),
(136, 'Cassel', 'Vincent', '1966-11-23 00:00:00', 'VincentCassel.jpg', 1),
(137, 'Fino', 'JMarie', '1959-11-07 00:00:00', 'finojmarie.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `ID_PAYS` bigint(20) NOT NULL,
  `NOM_PAYS` varchar(32) DEFAULT NULL,
  `SYMBOLE` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`ID_PAYS`, `NOM_PAYS`, `SYMBOLE`) VALUES
(1, 'France', 'FR'),
(2, 'Etats-Unis', 'US'),
(3, 'Angleterre', 'UK'),
(4, 'Australie', 'AUS'),
(5, 'Nouvelle-Zelande', 'NZ'),
(6, 'Danemark', 'DK'),
(7, 'Canada', 'CN'),
(8, 'Allemagne', 'Dl'),
(9, 'Roumanie', 'RM'),
(10, 'Japon', 'JN'),
(11, 'Suisse', 'CH'),
(12, 'Irlande', 'IR'),
(13, 'Espagne', 'SP'),
(14, 'Italie', 'IT'),
(16, 'Bénin', 'BN');

-- --------------------------------------------------------

--
-- Structure de la table `pays_video`
--

CREATE TABLE `pays_video` (
  `ID_VIDEO` bigint(20) NOT NULL,
  `ID_PAYS` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays_video`
--

INSERT INTO `pays_video` (`ID_VIDEO`, `ID_PAYS`) VALUES
(1, 1),
(15, 1),
(17, 1),
(20, 1),
(27, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(46, 2),
(1, 3),
(2, 3),
(5, 3),
(9, 3),
(12, 3),
(15, 3),
(28, 3),
(32, 3),
(4, 5),
(22, 5),
(24, 5),
(26, 5),
(2, 7),
(13, 8),
(14, 8),
(23, 8),
(30, 8),
(13, 9),
(37, 10),
(38, 10),
(39, 10),
(45, 10),
(27, 13),
(27, 14);

-- --------------------------------------------------------

--
-- Structure de la table `realisation`
--

CREATE TABLE `realisation` (
  `ID_VIDEO` bigint(20) NOT NULL,
  `ID_PARTICIPANT` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `realisation`
--

INSERT INTO `realisation` (`ID_VIDEO`, `ID_PARTICIPANT`) VALUES
(1, 3),
(2, 9),
(3, 10),
(4, 16),
(22, 16),
(24, 16),
(26, 16),
(5, 21),
(9, 21),
(12, 21),
(6, 26),
(7, 31),
(8, 35),
(16, 35),
(10, 42),
(11, 45),
(19, 45),
(13, 49),
(14, 52),
(21, 52),
(15, 55),
(17, 60),
(18, 64),
(20, 70),
(23, 81),
(25, 85),
(27, 88),
(28, 92),
(29, 96),
(30, 100),
(31, 104),
(31, 105),
(38, 123),
(39, 123),
(45, 123),
(37, 124),
(46, 125),
(47, 127),
(47, 128);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `ID_TYPE` bigint(20) NOT NULL,
  `LIB_TYPE` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`ID_TYPE`, `LIB_TYPE`) VALUES
(1, 'Films'),
(2, 'Serie'),
(3, 'Divertissement'),
(4, 'Kids'),
(5, 'Mangas');

-- --------------------------------------------------------

--
-- Structure de la table `type_video`
--

CREATE TABLE `type_video` (
  `ID_VIDEO` bigint(20) NOT NULL,
  `ID_TYPE` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type_video`
--

INSERT INTO `type_video` (`ID_VIDEO`, `ID_TYPE`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(38, 1),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(1, 3),
(37, 3),
(38, 3),
(36, 4),
(46, 4),
(37, 5),
(38, 5),
(39, 5),
(45, 5);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `ID_VIDEO` bigint(20) NOT NULL,
  `TITRE_VIDEO` varchar(128) DEFAULT NULL,
  `DUREE` int(11) DEFAULT NULL,
  `FICHIER` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `SYNOPSIS` varchar(1000) DEFAULT NULL,
  `ANNEE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `video`
--

INSERT INTO `video` (`ID_VIDEO`, `TITRE_VIDEO`, `DUREE`, `FICHIER`, `IMAGE`, `SYNOPSIS`, `ANNEE`) VALUES
(1, 'La Grande vadrouille', 132, '3tEimFwDhNA', 'grandeVadrouille.jpg', 'En 1942, un avion anglais est abattu par les Allemands au-dessus de Paris. Les trois pilotes sautent en parachute et atterrissent dans différents endroits de la capitale. Ils sont aidés par deux civils français, un chef d\'orchestre et un peintre en bâtiment qui accèptent de les mener en zone libre; ils deviennent ainsi, malgré eux, acteurs de la Résistance. ', 1966),
(2, 'Man Of Steel', 143, 'Xw4VeR7tCxU', 'manOfSteel.jpg', 'Un petit garçon découvre qu\'il possède des pouvoirs surnaturels et qu\'il n\'est pas né sur Terre. Plus tard, il s\'engage dans un périple afin de comprendre d\'où il vient et pourquoi il a été envoyé sur notre planète. Mais il devra devenir un héros s\'il veut sauver le monde de la destruction totale et incarner l\'espoir pour toute l\'humanité.', 2013),
(3, 'Star Trek Into Darkness', 130, 'RTf3ivUFEKM', 'starTrekIntoTheDarkness.jpg', 'Alors qu’il rentre à sa base, l’équipage de l’Enterprise doit faire face à des forces terroristes implacables au sein même de son organisation. L’ennemi a fait exploser la flotte et tout ce qu’elle représentait, plongeant notre monde dans le chaos…', 2013),
(4, 'Le Hobbit : un voyage inattendu', 165, 'ua48FQx30rY', 'hobbit.jpg', 'Dans UN VOYAGE INATTENDU, Bilbon Sacquet cherche à reprendre le Royaume perdu des Nains d\'Erebor, conquis par le redoutable dragon Smaug. Alors qu\'il croise par hasard la route du magicien Gandalf le Gris, Bilbon rejoint une bande de 13 nains dont le chef n\'est autre que le légendaire guerrier Thorin Écu-de-Chêne. Leur périple les conduit au cœur du Pays Sauvage, où ils devront affronter des Gobelins, des Orques, des Ouargues meurtriers, des Araignées géantes, des Métamorphes et des Sorciers…\r\nBien qu\'ils se destinent à mettre le cap sur l\'Est et les terres désertiques du Mont Solitaire, ils doivent d\'abord échapper aux tunnels des Gobelins, où Bilbon rencontre la créature qui changera à jamais le cours de sa vie : Gollum.\r\nC\'est là qu\'avec Gollum, sur les rives d\'un lac souterrain, le modeste Bilbon Sacquet non seulement se surprend à faire preuve d\'un courage et d\'une intelligence inattendus, mais parvient à mettre la main sur le "précieux" anneau de Gollum qui recèle des pouvoirs ca', 2012),
(5, 'The Dark Knight Rises', 164, 'KJytIRCAkqM', 'darkKnightRises.jpg', 'Nos héros entrent dans un jeu d’échecs mortel. L’amour sera menacé, des amitiés seront brisées et des sacrifices devront être faits dans la seule famille qu’il reste à Kirk : son équipe.', 2012),
(6, 'Mission : Impossible - Protocole fantôme ', 133, '5it-rAnXzTU', 'miProtocole.jpg', 'Impliquée dans l\'attentat terroriste du Kremlin, l\'agence Mission Impossible (IMF) est totalement discréditée. Tandis que le président lance l\'opération "Protocole Fantôme", Ethan Hunt, privé de ressources et de renfort, doit trouver le moyen de blanchir l\'agence et de déjouer toute nouvelle tentative d\'attentat. Mais pour compliquer encore la situation, l\'agent doit s\'engager dans cette mission avec une équipe de fugitifs d\'IMF dont il n\'a pas bien cerné les motivations… ', 2011),
(7, 'Drive', 100, 'KBiOF3y1W0Y', 'drive.jpg', 'Un jeune homme solitaire, "The Driver", conduit le jour à Hollywood pour le cinéma en tant que cascadeur et la nuit pour des truands. Ultra professionnel et peu bavard, il a son propre code de conduite. Jamais il n’a pris part aux crimes de ses employeurs autrement qu’en conduisant - et au volant, il est le meilleur !\r\nShannon, le manager qui lui décroche tous ses contrats, propose à Bernie Rose, un malfrat notoire, d’investir dans un véhicule pour que son poulain puisse affronter les circuits de stock-car professionnels. Celui-ci accepte mais impose son associé, Nino, dans le projet.', 2011),
(8, 'Shutter Island', 137, '1CH_6bUt7xc', 'shutter.jpg', 'En 1954, le marshal Teddy Daniels et son coéquipier Chuck Aule sont envoyés enquêter sur l\'île de Shutter Island, dans un hôpital psychiatrique où sont internés de dangereux criminels. L\'une des patientes, Rachel Solando, a inexplicablement disparu. Comment la meurtrière a-t-elle pu sortir d\'une cellule fermée de l\'extérieur ? Le seul indice retrouvé dans la pièce est une feuille de papier sur laquelle on peut lire une suite de chiffres et de lettres sans signification apparente. Oeuvre cohérente d\'une malade, ou cryptogramme ? ', 2010),
(9, 'Inception', 148, '_Xc3AnGYWeg', 'inception.jpg', 'Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l’univers trouble de l’espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier qui a perdu tout ce qui lui est cher. Mais une ultime mission pourrait lui permettre de retrouver sa vie d’avant – à condition qu’il puisse accomplir l’impossible : l’inception. Au lieu de subtiliser un rêve, Cobb et son équipe doivent faire l’inverse : implanter une idée dans l’esprit d’un individu. S’ils y parviennent, il pourrait s’agir du crime parfait.', 2010),
(10, 'Avatar', 162, 'O1CzgULNRGs', 'avatar.jpg', 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre. Parce que l\'atmosphère de Pandora est toxique pour les humains, ceux-ci ont créé le Programme Avatar, qui permet à des " pilotes " humains de lier leur esprit à un avatar, un corps biologique commandé à distance, capable de survivre dans cette atmosphère létale. Ces avatars sont des hybrides créés génétiquement en croisant l\'ADN humain avec celui des Na\'vi, les autochtones de Pandora.', 2009),
(11, 'Gran Torino', 111, 'R8OtQ-RyCGA', 'granTorino.jpg', 'Walt Kowalski est un ancien de la guerre de Corée, un homme inflexible, amer et pétri de préjugés surannés. Après des années de travail à la chaîne, il vit replié sur lui-même, occupant ses journées à bricoler, traînasser et siroter des bières. Hormis sa chienne Daisy, il ne fait confiance qu\'à son M-1, toujours propre, toujours prêt à l\'usage...\r\nSes anciens voisins ont déménagé ou sont morts depuis longtemps. Son quartier est aujourd\'hui peuplé d\'immigrants asiatiques qu\'il méprise, et Walt ressasse ses haines, innombrables - à l\'encontre de ses voisins, des ados Hmong, latinos et afro-américains "qui croient faire la loi", de ses propres enfants, devenus pour lui des étrangers. Walt tue le temps comme il peut, en attendant le grand départ, jusqu\'au jour où un ado Hmong du quartier tente de lui voler sa précieuse Ford Gran Torino... ', 2009),
(12, 'The Dark Knight', 147, 'EXeTwQWrcwY', 'darkKnight.jpg', 'Dans ce nouveau volet, Batman augmente les mises dans sa guerre contre le crime. Avec l\'appui du lieutenant de police Jim Gordon et du procureur de Gotham, Harvey Dent, Batman vise à éradiquer le crime organisé qui pullule dans la ville. Leur association est très efficace mais elle sera bientôt bouleversée par le chaos déclenché par un criminel extraordinaire que les citoyens de Gotham connaissent sous le nom de Joker. ', 2008),
(13, 'Mirrors', 111, 'gNQDLSO29MM', 'mirrors.jpg', 'Un ancien flic, forcé de démissionner de son travail après un accident ayant couté la vie de son associé, travaille à présent comme veilleur de nuit dans un grand magasin brûlé et abandonné. Seuls quelques miroirs ont survécu aux flammes. Il réalise que ceux-ci cachent un horrible secret qui les menace, lui et sa famille. ', 2008),
(14, 'Blood Diamond', 142, 'RKJerQ6E8kQ', 'bloodDiamond.jpg', 'Alors qu\'il purge une peine de prison pour ses trafics, Archer rencontre Solomon Vandy, un pêcheur d\'origine Mende. Arraché à sa famille et forcé de travailler dans les mines diamantifères, ce dernier a trouvé - et caché - un diamant rose extrêmement rare. Accompagnés de Maddy Bowen, une journaliste idéaliste, les deux hommes s\'embarquent pour un dangereux voyage en territoire rebelle pour récupérer le fameux caillou. Un voyage qui pourrait bien sauver la famille de Salomon et donner à Archer la seconde chance qu\'il n\'espérait plus. \r\n', 2007),
(15, 'La Môme', 140, 'vuV9tUgVB68', 'laMome.jpg', 'De son enfance à la gloire, de ses victoires à ses blessures, de Belleville à New York, l\'exceptionnel parcours d\'Edith Piaf. A travers un destin plus incroyable qu\'un roman, découvrez l\'âme d\'une artiste et le coeur d\'une femme. Intime, intense, fragile et indestructible, dévouée à son art jusqu\'au sacrifice, voici la plus immortelle des chanteuses..', 2007),
(16, 'Les infiltrés', 150, 'iX1o64zUzKk', 'infiltres.jpg', 'A Boston, une lutte sans merci oppose la police à la pègre irlandaise.\r\nPour mettre fin au règne du parrain Frank Costello, la police infiltre son gang avec "un bleu" issu des bas quartiers, Billy Costigan.\r\nTandis que Billy s\'efforce de gagner la confiance du malfrat vieillissant, Colin Sullivan entre dans la police au sein de l\'Unité des Enquêtes Spéciales, chargée d\'éliminer Costello. Mais Colin fonctionne en "sous-marin" et informe Costello des opérations qui se trament contre lui.', 2006),
(17, 'Lord of War', 122, 'XbK0OfY5F_4', 'lordOfWar.jpg', 'Né en Ukraine avant l\'effondrement du bloc soviétique, Yuri arrive aux Etats-Unis avec ses parents. Il se fait passer pour un émigrant juif...\r\nAudacieux et fin négociateur, il se fait une place dans le trafic d\'armes. Les énormes sommes d\'argent qu\'il gagne lui permettent aussi de conquérir celle qui l\'a toujours fasciné, la belle Ava.\r\nParallèlement à cette vie de mari et de père idéal, Yuri devient l\'un des plus gros vendeurs d\'armes clandestins du monde. Utilisant ses relations à l\'Est, il multiplie les coups toujours plus\r\nrisqués, mais parvient chaque fois à échapper à Jack Valentine, l\'agent d\'Interpol qui le pourchasse.', 2006),
(18, 'Star Wars épisode III : la revanche des Sith', 140, 'Lu0T1TmKlF4', 'revancheSith.jpg', 'La Guerre des Clones fait rage. Une franche hostilité oppose désormais le Chancelier Palpatine au Conseil Jedi. Anakin Skywalker, jeune Chevalier Jedi pris entre deux feux, hésite sur la conduite à tenir. Séduit par la promesse d\'un pouvoir sans précédent, tenté par le côté obscur de la Force, il prête allégeance au maléfique Darth Sidious et devient Dark Vador.\r\nLes Seigneurs Sith s\'unissent alors pour préparer leur revanche, qui commence par l\'extermination des Jedi. Seuls rescapés du massacre, Yoda et Obi Wan se lancent à la poursuite des Sith. La traque se conclut par un spectaculaire combat au sabre entre Anakin et Obi Wan, qui décidera du sort de la galaxie. ', 2005),
(19, 'Million Dollar Baby', 132, 'krz9U4ZrGog', 'millionBaby.jpg', 'Rejeté depuis longtemps par sa fille, l\'entraîneur Frankie Dunn s\'est replié sur lui-même et vit dans un désert affectif, en évitant toute relation qui pourrait accroître sa douleur et sa culpabilité.\r\nLe jour où Maggie Fitzgerald, 31 ans, pousse la porte de son gymnase à la recherche d\'un coach, elle n\'amène pas seulement avec elle sa jeunesse et sa force, mais aussi une\r\nhistoire jalonnée d\'épreuves et une exigence, vitale et urgente : monter sur le ring, entraînée par Frankie, et enfin concrétiser le rêve d\'une vie.\r\nAprès avoir repoussé plusieurs fois sa demande, Frankie se laisse convaincre par l\'inflexible détermination de la jeune femme. Une relation mouvementée, tour à tour stimulante et exaspérante, se noue entre eux, au fil de laquelle Maggie et l\'entraîneur se découvrent une communauté d\'esprit et une complicité inattendues... ', 2005),
(20, 'Un long dimanche de fiançailles', 134, '8-DQlKJPnPU', 'dimancheFiancailles.jpg', 'En 1919, Mathilde a 19 ans. Deux ans plus tôt, son fiancé Manech est parti sur le front de la Somme. Comme des millions d\'autres, il est "mort au champ d\'honneur". C\'est écrit noir sur blanc sur l\'avis officiel. Pourtant, Mathilde refuse d\'admettre cette évidence. Si Manech était mort, elle le saurait !\r\nElle se raccroche à son intuition comme au dernier fil ténu qui la relierait encore à son amant. Un ancien sergent a beau lui raconter que Manech est mort sur le no man\'s land d\'une tranchée nommée Bingo Crépuscule, en compagnie de quatre autres condamnés à mort pour mutilation volontaire ; rien n\'y fait. Mathilde refuse de lâcher le fil. Elle s\'y cramponne avec la foi du charbonnier et se lance dans une véritable contre-enquête.\r\nDe faux espoirs en incertitudes, elle va démêler peu à peu la vérité sur le sort de Manech et de ses quatre camarades. ', 2004),
(21, 'Le dernier Samourai', 144, 'FuU2RgMzI9U', 'dernierSamourai.jpg', 'En 1876, le capitaine Nathan Algren vit avec les souvenirs des batailles sanglantes menées contre les Sioux. Fort de son expérience au combat, il devient conseiller militaire pour le compte de l\'empereur japonais soucieux d\'ouvrir son pays aux traditions et au commerce occidentaux et d\'éradiquer l\'ancienne caste guerrière des samouraïs. Mais ceux-ci influent sur le capitaine Algren, qui se trouve bientôt pris entre deux feux, au coeur d\'une confrontation entre deux époques et deux mondes avec, pour le guider, son sens de l\'honneur.', 2004),
(22, 'Le Seigneur des Anneaux : Le retour du Roi', 200, 'RCuDRcK0BBM', 'retourDuRoi.jpg', 'Les armées de Sauron ont attaqué Minas Tirith, la capitale de Gondor. Jamais ce royaume autrefois puissant n\'a eu autant besoin de son roi. Mais Aragorn trouvera-t-il en lui la volonté d\'accomplir sa destinée ?\r\nTandis que Gandalf s\'efforce de soutenir les forces brisées de Gondor, Théoden exhorte les guerriers de Rohan à se joindre au combat. Mais malgré leur courage et leur loyauté, les forces des Hommes ne sont pas de taille à lutter contre les innombrables légions d\'ennemis qui s\'abattent sur le royaume...\r\nChaque victoire se paye d\'immenses sacrifices. Malgré ses pertes, la Communauté se jette dans la bataille pour la vie, ses membres faisant tout pour détourner l\'attention de Sauron afin de donner à Frodon une chance d\'accomplir sa quête.\r\nVoyageant à travers les terres ennemies, ce dernier doit se reposer sur Sam et Gollum, tandis que l\'Anneau continue de le tenter... ', 2003),
(23, 'La chute', 150, 'dgt5Zy8n6Ek', 'laChute.jpg', 'Berlin, avril 1945. Le IIIe Reich agonise. Les combats font rage dans les rues de la capitale. Hitler, accompagné de ses généraux et de ses plus proches partisans, s\'est réfugié dans son bunker, situé dans les jardins de la Chancellerie.\r\nA ses côtés, Traudl Junge, la secrétaire particulière du Führer, refuse de l\'abandonner. Tandis qu\'à l\'extérieur la situation se dégrade, Hitler vit ses dernières heures et la chute du régime.', 2003),
(24, 'Le Seigneur des Anneaux : Les deux tours', 178, 'c9blKqmyeV4', 'deuxtours.jpg', 'Après la mort de Boromir et la disparition de Gandalf, la Communauté s\'est scindée en trois. Perdus dans les collines d\'Emyn Muil, Frodon et Sam découvrent qu\'ils sont suivis par Gollum, une créature versatile corrompue par l\'Anneau. Celui-ci promet de conduire les Hobbits jusqu\'à la Porte Noire du Mordor. A travers la Terre du Milieu, Aragorn, Legolas et Gimli font route vers le Rohan, le royaume assiégé de Theoden. Cet ancien grand roi, manipulé par l\'espion de Saroumane, le sinistre Langue de Serpent, est désormais tombé sous la coupe du malfaisant Magicien. Eowyn, la nièce du Roi, reconnaît en Aragorn un meneur d\'hommes. Entretemps, les Hobbits Merry et Pippin, prisonniers des Uruk-hai, se sont échappés et ont découvert dans la mystérieuse Forêt de Fangorn un allié inattendu : Sylvebarbe, gardien des arbres, représentant d\'un ancien peuple végétal dont Saroumane a décimé la forêt... ', 2002),
(25, 'Minority Report', 145, 'hILY1lw6c64', 'minorityReport.jpg', 'A Washington, en 2054, la société du futur a éradiqué le meurtre en se dotant du système de prévention / détection / répression le plus sophistiqué du monde. Dissimulés au coeur du Ministère de la Justice, trois extra-lucides captent les signes précurseurs des violences homicides et en adressent les images à leur contrôleur, John Anderton, le chef de la "Précrime" devenu justicier après la disparition tragique de son fils. Celui-ci n\'a alors plus qu\'à lancer son escouade aux trousses du "coupable"...\r\nMais un jour se produit l\'impensable : l\'ordinateur lui renvoie sa propre image. D\'ici 36 heures, Anderton aura assassiné un parfait étranger. Devenu la cible de ses propres troupes, Anderton prend la fuite. Son seul espoir pour déjouer le complot : dénicher sa future victime ; sa seule arme : les visions parcellaires, énigmatiques, de la plus fragile des Pré-Cogs : Agatha. ', 2002),
(26, 'Le Seigneur des Anneaux : La Communauté de l\'anneau', 165, 'nalLU8i4zgs', 'comAnneau.jpg', 'Dans ce chapitre de la trilogie, le jeune et timide Hobbit, Frodon Sacquet, hérite d\'un anneau. Bien loin d\'être une simple babiole, il s\'agit de l\'Anneau Unique, un instrument de pouvoir absolu qui permettrait à Sauron, le Seigneur des ténèbres, de régner sur la Terre du Milieu et de réduire en esclavage ses peuples. À moins que Frodon, aidé d\'une Compagnie constituée de Hobbits, d\'Hommes, d\'un Magicien, d\'un Nain, et d\'un Elfe, ne parvienne à emporter l\'Anneau à travers la Terre du Milieu jusqu\'à la Crevasse du Destin, lieu où il a été forgé, et à le détruire pour toujours. Un tel périple signifie s\'aventurer très loin en Mordor, les terres du Seigneur des ténèbres, où est rassemblée son armée d\'Orques maléfiques... La Compagnie doit non seulement combattre les forces extérieures du mal mais aussi les dissensions internes et l\'influence corruptrice qu\'exerce l\'Anneau lui-même.\r\nL\'issue de l\'histoire à venir est intimement liée au sort de la Compagnie. ', 2001),
(27, 'Les autres', 165, 'yA4nUOkO1bg', 'lesAutres.jpg', 'En 1945, dans une immense demeure victorienne isolée sur l\'île de Jersey située au large de la Normandie, vit Grace, une jeune femme pieuse, et ses deux enfants, Anne et Nicholas. Les journées sont longues pour cette mère de famille qui passe tout son temps à éduquer ses enfants en leur inculquant ses principes religieux. Atteints d\'un mal étrange, Anne et Nicholas ne doivent en aucun cas être exposés à la lumière du jour. Ils vivent donc reclus dans ce manoir obscur, tous rideaux tirés.\r\nUn jour d\'épais brouillard, trois personnes frappent à la porte du manoir isolé, en quête d’un travail. Grace, qui a justement besoin d\'aide pour l\'entretien du parc ainsi que d’une nouvelle nounou pour ses enfants, les engage. Dès lors, des événements étranges surviennent dans la demeure... ', 2001),
(28, 'Gladiator', 155, 'hDSmWiweyL4', 'gladiator.jpg', 'Le général romain Maximus est le plus fidèle soutien de l\'empereur Marc Aurèle, qu\'il a conduit de victoire en victoire avec une bravoure et un dévouement exemplaires. Jaloux du prestige de Maximus, et plus encore de l\'amour que lui voue l\'empereur, le fils de MarcAurèle, Commode, s\'arroge brutalement le pouvoir, puis ordonne l\'arrestation du général et son exécution. Maximus échappe à ses assassins mais ne peut empêcher le massacre de sa famille. Capturé par un marchand d\'esclaves, il devient gladiateur et prépare sa vengeance.\r\n', 2000),
(29, 'La Ligne Verte', 189, 'mccs8Ql8m8o', 'ligneVerte.jpg', 'Paul Edgecomb, pensionnaire centenaire d\'une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforçant d\'adoucir les derniers moments des condamnés. Parmi eux se trouvait un colosse du nom de John Coffey, accusé du viol et du meurtre de deux fillettes. Intrigué par cet homme candide et timide aux dons magiques, Edgecomb va tisser avec lui des liens très forts.\r\n', 2000),
(30, 'Fight Club', 135, 'N9_xlIN80rM', 'fightClub.jpg', 'Le narrateur, sans identité précise, vit seul, travaille seul, dort seul, mange seul ses plateaux-repas pour une personne comme beaucoup d\'autres personnes seules qui connaissent la misère humaine, morale et sexuelle. C\'est pourquoi il va devenir membre du Fight club, un lieu clandestin ou il va pouvoir retrouver sa virilité, l\'échange et la communication. Ce club est dirigé par Tyler Durden, une sorte d\'anarchiste entre gourou et philosophe qui prêche l\'amour de son prochain. \r\n', 1999),
(31, 'Matrix', 135, '8xx91zoASLY', 'matrix.jpg', 'Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des pirates les plus recherchés du cyber-espace. A cheval entre deux mondes, Neo est assailli par d\'étranges songes et des messages cryptés provenant d\'un certain Morpheus. Celui-ci l\'exhorte à aller au-delà des apparences et à trouver la réponse à la question qui hante constamment ses pensées : qu\'est-ce que la Matrice ? Nul ne le sait, et aucun homme n\'est encore parvenu à en percer les defenses. Mais Morpheus est persuadé que Neo est l\'Elu, le libérateur mythique de l\'humanité annoncé selon la prophétie. Ensemble, ils se lancent dans une lutte sans retour contre la Matrice et ses terribles agents... \r\n', 1999),
(32, 'Strike Back', 45, 'medAf_RgWFk', 'strikeback.jpg', 'La section 20 du MI-6 déploie ses moyens pour combattre le terrorisme. Les agents de terrain les plus efficaces parcourent le globe pour éradiquer les menaces.', 2010),
(33, 'Spartacus - La Guerre des damnés', 50, 'AVXF9vlV_S8', 'spartacus-laguerredesdamnés.png', 'La saison 2 s’était achevée dans un véritable bain de sang : pas moins de six personnages centraux y perdaient la vie... Spartacus et les troupes Rebelles remportaient la bataille contre Gaius Claudius Glaber mais devaient faire face à la perte d\'êtres chers. Après cette victoire éclatante, des centaines d\'esclaves se sont ralliés à la rébellion. Rome redoute de plus en plus la menace que représente Spartacus, apparemment invincible. Entouré de ses lieutenants, Crixus, Gannicus et Agron, l’ancien gladiateur va désormais devoir affronter deux nouveaux émissaires en provenance de Rome. Le richissime Marcus Crassus, bien décidé à adopter une stratégie différente de Glaber, et un certain César.', 2013),
(34, 'Revolution - Saison 1', 42, '_thro9v-gog', 'revolution-saison1.jpg', 'Le monde bascule dans une ère sombre lorsque l\'électricité cesse soudainement de fonctionner. Sans technologie moderne, les hôpitaux, les transports et les moyens de communication ne sont plus opérationnels. La population doit réapprendre à vivre...\r\n\r\n15 ans plus tard, la vie a repris son cours. Lentement. Sereinement ? Pas vraiment. Aux abords des communautés agricoles qui se sont constituées, le danger rôde. Et la vie d\'une jeune femme est bouleversée lorsque la milice locale débarque et tue son père, qui semble être mystérieusement lié au blackout. Ces révélations l\'amènent à se mettre en quête de réponses sur le passé, dans l\'espoir d\'un futur meilleur.', 2012),
(35, 'Games Of Thrones - Saison 4', 52, 'mLVmY8wO4Ic', 'gamesofthrones-saison4.png', 'Il y a très longtemps, à une époque oubliée, une force a détruit l\'équilibre des saisons. Dans un pays où l\'été peut durer plusieurs années et l\'hiver toute une vie, des forces sinistres et surnaturelles se pressent aux portes du Royaume des Sept Couronnes. La confrérie de la Garde de Nuit, protégeant le Royaume de toute créature pouvant provenir d\'au-delà du Mur protecteur, n\'a plus les ressources nécessaires pour assurer la sécurité de tous. Après un été de dix années, un hiver rigoureux s\'abat sur le Royaume avec la promesse d\'un avenir des plus sombres. Pendant ce temps, complots et rivalités se jouent sur le continent pour s\'emparer du Trône de Fer, le symbole du pouvoir absolu.', 2014),
(36, 'Rebelle', 95, '-DzVEKgwnA0', 'rebelle.jpg', 'Depuis la nuit des temps, au cœur des terres sauvages et mystérieuses des Highlands d’Ecosse, récits de batailles épiques et légendes mythiques se transmettent de génération en génération. Merida, l’impétueuse fille du roi Fergus et de la reine Elinor, a un problème… Elle est la seule fille au monde à ne pas vouloir devenir princesse ! Maniant l’arc comme personne, Merida refuse de se plier aux règles de la cour et défie une tradition millénaire sacrée aux yeux de tous et particulièrement de sa mère. Dans sa quête de liberté, Merida va involontairement voir se réaliser un vœu bien malheureux et précipiter le royaume dans le chaos. Sa détermination va lui être cruciale pour déjouer cette terrible malédiction.', 2012),
(37, 'Akira', 124, 'yci41aONxmQ', 'akira.jpg', 'Mise en images pour le cinema d\'une bande dessinée apocalyptique sur les débuts du XXIe siecle dans la megapole de Neo-Tokyo au Japon.\r\n\r\nTetsuo, un adolescent ayant vécu une enfance difficile, est la victime d\'expériences visant à développer les capacités psychiques qui dorment en chacun de nous. Ainsi doté d\'une puissance que lui meme ne peut imaginer, Tetsuo décide de partir en guerre contre le monde qui l\'a opprimé. Dès lors, Il se retrouve au coeur d\'une légende populaire qui annonce le retour prochain d\'Akira, un enfant aux pouvoirs extra-ordinaires censé délivrer Tokyo du chaos...', 2007),
(38, 'Le chateau dans le ciel', 124, '7lx-WILYZPY', 'lechateaudansleciel.jpg', 'Retenue prisonnière par des pirates dans un dirigeable, la jeune Sheeta saute dans le vide en tentant de leur échapper. Elle est sauvée in extremis par Pazu, un jeune pilote d\'avion travaillant dans une cité minière. Les pirates leur donnent la chasse.\r\nAu terme d\'une course-poursuite effrénée, Sheeta se confie à Pazu, lui avouant qu\'elle est la descendante des souverains de Laputa, la cité mythique située dans les airs. Elle est par conséquent la seule détentrice du secret de Laputa que le chef des armées, le cruel Muska, cherche à percer.', 2003),
(39, 'Le vent se lève', 126, 'LVB5RUHYkzk', 'leventselève.jpg', 'Inspiré par le fameux concepteur d’avions Giovanni Caproni, Jiro rêve de voler et de dessiner de magnifiques avions. Mais sa mauvaise vue l’empêche de devenir pilote, et il se fait engager dans le département aéronautique d’une importante entreprise d’ingénierie en 1927. Son génie l’impose rapidement comme l’un des plus grands ingénieurs du monde.\r\nLe Vent se lève raconte une grande partie de sa vie et dépeint les événements historiques clés qui ont profondément influencé le cours de son existence, dont le séisme de Kanto en 1923, la Grande Dépression, l’épidémie de tuberculose et l’entrée en guerre du Japon. Jiro connaîtra l’amour avec Nahoko et l’amitié avec son collègue Honjo. Inventeur extraordinaire, il fera entrer l’aviation dans une ère nouvelle.', 2014),
(45, 'Princesse Mononoké', 135, 'Tul9S9Eun4s', 'princessemononoké.jpg', 'Au XVe siècle, durant l\'ère Muromachi, la forêt japonaise, jadis protégée par des animaux géants, se dépeuple à cause de l\'homme. Un sanglier transformé en démon dévastateur en sort et attaque le village d\'Ashitaka, futur chef du clan Emishi. Touché par le sanglier qu\'il a tué, celui-ci est forcé de partir à la recherche du dieu Cerf pour lever la malédiction qui lui gangrène le bras.', 2000),
(46, 'Toy Story 3', 100, 'Q9vWyuAX954', 'toystory3.jpg', 'Les créateurs des très populaires films Toy Story ouvrent à nouveau le coffre à jouets et invitent les spectateurs à retrouver le monde délicieusement magique de Woody et Buzz au moment où Andy s\'apprête à partir pour l\'université. Délaissée, la plus célèbre bande de jouets se retrouve... à la crèche ! Les bambins déchaînés et leurs petits doigts capables de tout arracher sont une vraie menace pour nos amis ! Il devient urgent d\'échafauder un plan pour leur échapper au plus vite. Quelques nouveaux venus vont se joindre à la Grande évasion, dont l\'éternel séducteur et célibataire Ken, compagnon de Barbie, un hérisson comédien nommé Larosse, et un ours rose parfumé à la fraise appelé Lotso.', 2010),
(47, 'Sin City : j\'ai tué pour elle', 102, 'l5yEB7D6kZM', 'SinCityjaituepourelle.jpg', 'Dans une ville où la justice est impuissante, les plus désespérés réclament vengeance, et les criminels les plus impitoyables sont poursuivis par des milices.\r\nMarv se demande comment il a fait pour échouer au milieu d\'un tas de cadavres. Johnny, jeune joueur sûr de lui, débarque à Sin City et ose affronter la plus redoutable crapule de la ville, le sénateur Roark. Dwight McCarthy vit son ultime face-à-face avec Ava Lord, la femme de ses rêves, mais aussi de ses cauchemars. De son côté, Nancy Callahan est dévastée par le suicide de John Hartigan qui, par son geste, a cherché à la protéger. Enragée et brisée par le chagrin, elle n\'aspire plus qu\'à assouvir sa soif de vengeance. Elle pourra compter sur Marv… \r\nTous vont se retrouver au célèbre Kadie\'s Club Pecos de Sin City…', 2014);

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `ID_VILLE` bigint(20) NOT NULL,
  `NOM_VILLE` varchar(32) DEFAULT NULL,
  `CP` int(8) DEFAULT NULL,
  `ID_DEP` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`ID_VILLE`, `NOM_VILLE`, `CP`, `ID_DEP`) VALUES
(1, 'Audincourt', 25400, 1),
(2, 'Montbéliard', 25200, 1),
(3, 'Besançon', 25000, 1),
(4, 'Valentigney', 25300, 1),
(5, 'Belfort', 90000, 2),
(6, 'Héricourt', 70000, 3),
(7, 'Lyon', 69000, 4),
(10, 'Voujeaucourt', 25700, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`ID_ABN`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`ID_CAT`);

--
-- Index pour la table `cat_video`
--
ALTER TABLE `cat_video`
  ADD PRIMARY KEY (`ID_VIDEO`,`ID_CAT`),
  ADD KEY `fk_cat_video_categorie_02` (`ID_CAT`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_CLIENT`),
  ADD KEY `ix_client_laVille_1` (`ID_VILLE`);

--
-- Index pour la table `client_abn`
--
ALTER TABLE `client_abn`
  ADD PRIMARY KEY (`ID_CLIENT`,`ID_ABN`),
  ADD KEY `ix_client_abn_leClient_2` (`ID_CLIENT`),
  ADD KEY `ix_client_abn_abonnement_3` (`ID_ABN`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`ID_DEP`),
  ADD KEY `ix_departement_lePays_4` (`ID_PAYS`);

--
-- Index pour la table `distribution`
--
ALTER TABLE `distribution`
  ADD PRIMARY KEY (`ID_VIDEO`,`ID_PARTICIPANT`),
  ADD KEY `fk_distribution_participant_02` (`ID_PARTICIPANT`);

--
-- Index pour la table `format`
--
ALTER TABLE `format`
  ADD PRIMARY KEY (`ID_FORMAT`);

--
-- Index pour la table `format_video`
--
ALTER TABLE `format_video`
  ADD PRIMARY KEY (`ID_VIDEO`,`ID_FORMAT`),
  ADD KEY `fk_format_video_format_02` (`ID_FORMAT`);

--
-- Index pour la table `loue`
--
ALTER TABLE `loue`
  ADD PRIMARY KEY (`ID_CLIENT`,`ID_VIDEO`,`ID_FORMAT`),
  ADD KEY `ix_loue_leClientVideo_5` (`ID_CLIENT`),
  ADD KEY `ix_loue_laVideo_6` (`ID_VIDEO`),
  ADD KEY `ix_loue_leFormat_7` (`ID_FORMAT`);

--
-- Index pour la table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`ID_PARTICIPANT`),
  ADD KEY `ix_participant_lePays_8` (`ID_PAYS`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`ID_PAYS`);

--
-- Index pour la table `pays_video`
--
ALTER TABLE `pays_video`
  ADD PRIMARY KEY (`ID_VIDEO`,`ID_PAYS`),
  ADD KEY `fk_pays_video_pays_02` (`ID_PAYS`);

--
-- Index pour la table `realisation`
--
ALTER TABLE `realisation`
  ADD PRIMARY KEY (`ID_VIDEO`,`ID_PARTICIPANT`),
  ADD KEY `fk_realisation_participant_02` (`ID_PARTICIPANT`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`ID_TYPE`);

--
-- Index pour la table `type_video`
--
ALTER TABLE `type_video`
  ADD PRIMARY KEY (`ID_VIDEO`,`ID_TYPE`),
  ADD KEY `fk_type_video_type_02` (`ID_TYPE`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`ID_VIDEO`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`ID_VILLE`),
  ADD KEY `ix_ville_leDepartement_9` (`ID_DEP`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `ID_ABN` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `ID_CAT` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `ID_CLIENT` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `ID_DEP` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `format`
--
ALTER TABLE `format`
  MODIFY `ID_FORMAT` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `participant`
--
ALTER TABLE `participant`
  MODIFY `ID_PARTICIPANT` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `ID_PAYS` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `ID_TYPE` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `ID_VIDEO` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `ID_VILLE` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cat_video`
--
ALTER TABLE `cat_video`
  ADD CONSTRAINT `fk_cat_video_categorie_02` FOREIGN KEY (`ID_CAT`) REFERENCES `categorie` (`ID_CAT`),
  ADD CONSTRAINT `fk_cat_video_video_01` FOREIGN KEY (`ID_VIDEO`) REFERENCES `video` (`ID_VIDEO`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_client_laVille_1` FOREIGN KEY (`ID_VILLE`) REFERENCES `ville` (`ID_VILLE`);

--
-- Contraintes pour la table `client_abn`
--
ALTER TABLE `client_abn`
  ADD CONSTRAINT `fk_client_abn_abonnement_3` FOREIGN KEY (`ID_ABN`) REFERENCES `abonnement` (`ID_ABN`),
  ADD CONSTRAINT `fk_client_abn_leClient_2` FOREIGN KEY (`ID_CLIENT`) REFERENCES `client` (`ID_CLIENT`);

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `fk_departement_lePays_4` FOREIGN KEY (`ID_PAYS`) REFERENCES `pays` (`ID_PAYS`);

--
-- Contraintes pour la table `distribution`
--
ALTER TABLE `distribution`
  ADD CONSTRAINT `fk_distribution_participant_02` FOREIGN KEY (`ID_PARTICIPANT`) REFERENCES `participant` (`ID_PARTICIPANT`),
  ADD CONSTRAINT `fk_distribution_video_01` FOREIGN KEY (`ID_VIDEO`) REFERENCES `video` (`ID_VIDEO`);

--
-- Contraintes pour la table `format_video`
--
ALTER TABLE `format_video`
  ADD CONSTRAINT `fk_format_video_format_02` FOREIGN KEY (`ID_FORMAT`) REFERENCES `format` (`ID_FORMAT`),
  ADD CONSTRAINT `fk_format_video_video_01` FOREIGN KEY (`ID_VIDEO`) REFERENCES `video` (`ID_VIDEO`);

--
-- Contraintes pour la table `loue`
--
ALTER TABLE `loue`
  ADD CONSTRAINT `fk_loue_laVideo_6` FOREIGN KEY (`ID_VIDEO`) REFERENCES `video` (`ID_VIDEO`),
  ADD CONSTRAINT `fk_loue_leClientVideo_5` FOREIGN KEY (`ID_CLIENT`) REFERENCES `client` (`ID_CLIENT`),
  ADD CONSTRAINT `fk_loue_leFormat_7` FOREIGN KEY (`ID_FORMAT`) REFERENCES `format` (`ID_FORMAT`);

--
-- Contraintes pour la table `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `fk_participant_lePays_8` FOREIGN KEY (`ID_PAYS`) REFERENCES `pays` (`ID_PAYS`);

--
-- Contraintes pour la table `pays_video`
--
ALTER TABLE `pays_video`
  ADD CONSTRAINT `fk_pays_video_pays_02` FOREIGN KEY (`ID_PAYS`) REFERENCES `pays` (`ID_PAYS`),
  ADD CONSTRAINT `fk_pays_video_video_01` FOREIGN KEY (`ID_VIDEO`) REFERENCES `video` (`ID_VIDEO`);

--
-- Contraintes pour la table `realisation`
--
ALTER TABLE `realisation`
  ADD CONSTRAINT `fk_realisation_participant_02` FOREIGN KEY (`ID_PARTICIPANT`) REFERENCES `participant` (`ID_PARTICIPANT`),
  ADD CONSTRAINT `fk_realisation_video_01` FOREIGN KEY (`ID_VIDEO`) REFERENCES `video` (`ID_VIDEO`);

--
-- Contraintes pour la table `type_video`
--
ALTER TABLE `type_video`
  ADD CONSTRAINT `fk_type_video_type_02` FOREIGN KEY (`ID_TYPE`) REFERENCES `type` (`ID_TYPE`),
  ADD CONSTRAINT `fk_type_video_video_01` FOREIGN KEY (`ID_VIDEO`) REFERENCES `video` (`ID_VIDEO`);

--
-- Contraintes pour la table `ville`
--
ALTER TABLE `ville`
  ADD CONSTRAINT `fk_ville_leDepartement_9` FOREIGN KEY (`ID_DEP`) REFERENCES `departement` (`ID_DEP`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
