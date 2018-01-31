-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 31 jan. 2018 à 22:36
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `buyke`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `ID_ANN` int(8) NOT NULL,
  `TITRE` varchar(100) NOT NULL,
  `PRIX` int(8) NOT NULL,
  `DESCRIPTION` varchar(1000) NOT NULL,
  `CATEGORIE` int(1) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PHOTO` varchar(300) NOT NULL DEFAULT 'aW1hZ2VzX3N5c3RlbWUvbm90X2ltYWdlX2JpZy5wbmc=',
  `MINI` varchar(300) NOT NULL DEFAULT 'aW1hZ2VzX3N5c3RlbWUvbm90X2ltYWdlLnBuZw==',
  `DISPO` tinyint(1) NOT NULL DEFAULT '1',
  `ID_USR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`ID_ANN`, `TITRE`, `PRIX`, `DESCRIPTION`, `CATEGORIE`, `DATE`, `PHOTO`, `MINI`, `DISPO`, `ID_USR`) VALUES
(1, 'Joli v&eacute;lo BMC', 666, 'Joli et bon &eacute;tat', 1, '2018-01-31 17:42:08', 'aW1hZ2VzX2Fubm9uY2VzLzQ2MzJjMWJkMWZlYmMwYTllM2I3NTZmNGNhYWIwMTU3YW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzLzQ2MzJjMWJkMWZlYmMwYTllM2I3NTZmNGNhYWIwMTU3YW5uJnVzZXI1LmpwZw==', 1, 5),
(2, 'test', 123, 'un test ', 6, '2018-01-31 17:42:41', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMSZ1c2VyNS5qcGc=', 1, 5),
(3, 'test', 123, 'un test ', 6, '2018-01-31 17:42:42', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMiZ1c2VyNS5qcGc=', 1, 5),
(4, 'test', 123, 'un test ', 6, '2018-01-31 17:42:42', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMyZ1c2VyNS5qcGc=', 1, 5),
(5, 'test', 123, 'un test ', 6, '2018-01-31 17:42:42', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNCZ1c2VyNS5qcGc=', 1, 5),
(6, 'encore spam', 45, 'lol', 3, '2018-01-31 17:44:52', 'aW1hZ2VzX2Fubm9uY2VzLzVmNzY0NDgwNThkOTY1MWU2OWQzN2NhNmVhYjdiM2Q4YW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzLzVmNzY0NDgwNThkOTY1MWU2OWQzN2NhNmVhYjdiM2Q4YW5uNSZ1c2VyNS5qcGc=', 1, 5),
(7, 'groupe shimano complet', 999, 'BBonjoue je vand group shimano COMPLET, tres bonne eta jamai utilise', 6, '2018-01-31 17:47:24', 'aW1hZ2VzX2Fubm9uY2VzLzJhZmY5NjI1ZjI2MGY4ODk3NGU1NWQ2NTYwODI2MGIzYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzLzJhZmY5NjI1ZjI2MGY4ODk3NGU1NWQ2NTYwODI2MGIzYW5uNiZ1c2VyNS5qcGc=', 1, 5),
(8, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 0, '2018-01-31 18:00:29', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNyZ1c2VyNS5qcGc=', 1, 5),
(9, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:23', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOCZ1c2VyNS5qcGc=', 1, 5),
(10, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:23', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOSZ1c2VyNS5qcGc=', 1, 5),
(11, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:24', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTAmdXNlcjUuanBn', 1, 5),
(12, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:24', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTEmdXNlcjUuanBn', 1, 5),
(13, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:24', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTImdXNlcjUuanBn', 1, 5),
(14, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:24', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTMmdXNlcjUuanBn', 1, 5),
(15, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:24', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQmdXNlcjUuanBn', 1, 5),
(16, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:25', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTUmdXNlcjUuanBn', 1, 5),
(17, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:25', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTYmdXNlcjUuanBn', 1, 5),
(18, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:25', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTcmdXNlcjUuanBn', 1, 5),
(19, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:25', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTgmdXNlcjUuanBn', 1, 5),
(20, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:25', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTkmdXNlcjUuanBn', 1, 5),
(21, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:26', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMjAmdXNlcjUuanBn', 1, 5),
(22, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:26', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMjEmdXNlcjUuanBn', 1, 5),
(23, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:26', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMjImdXNlcjUuanBn', 1, 5),
(24, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:26', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMjMmdXNlcjUuanBn', 1, 5),
(25, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:27', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMjQmdXNlcjUuanBn', 1, 5),
(26, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:27', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMjUmdXNlcjUuanBn', 1, 5),
(27, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:27', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMjYmdXNlcjUuanBn', 1, 5),
(28, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:27', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMjcmdXNlcjUuanBn', 1, 5),
(29, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:28', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMjgmdXNlcjUuanBn', 1, 5),
(30, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:28', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMjkmdXNlcjUuanBn', 1, 5),
(31, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:28', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMzAmdXNlcjUuanBn', 1, 5),
(32, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:29', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMzEmdXNlcjUuanBn', 1, 5),
(33, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:29', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMzImdXNlcjUuanBn', 1, 5),
(34, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:29', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMzMmdXNlcjUuanBn', 1, 5),
(35, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:29', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMzQmdXNlcjUuanBn', 1, 5),
(36, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:30', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMzUmdXNlcjUuanBn', 1, 5),
(37, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:30', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMzYmdXNlcjUuanBn', 1, 5),
(38, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:30', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMzcmdXNlcjUuanBn', 1, 5),
(39, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:30', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMzgmdXNlcjUuanBn', 1, 5),
(40, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:31', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMzkmdXNlcjUuanBn', 1, 5),
(41, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:31', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNDAmdXNlcjUuanBn', 1, 5),
(42, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:31', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNDEmdXNlcjUuanBn', 1, 5),
(43, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:31', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNDImdXNlcjUuanBn', 1, 5),
(44, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:32', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNDMmdXNlcjUuanBn', 1, 5),
(45, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:32', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNDQmdXNlcjUuanBn', 1, 5),
(46, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:32', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNDUmdXNlcjUuanBn', 1, 5),
(47, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:32', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNDYmdXNlcjUuanBn', 1, 5),
(48, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:33', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNDcmdXNlcjUuanBn', 1, 5),
(49, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:33', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNDgmdXNlcjUuanBn', 1, 5),
(50, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:33', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNDkmdXNlcjUuanBn', 1, 5),
(51, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:34', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNTAmdXNlcjUuanBn', 1, 5),
(52, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:34', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNTEmdXNlcjUuanBn', 1, 5),
(53, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:34', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNTImdXNlcjUuanBn', 1, 5),
(54, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:35', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNTMmdXNlcjUuanBn', 1, 5),
(55, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:35', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNTQmdXNlcjUuanBn', 1, 5),
(56, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:35', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNTUmdXNlcjUuanBn', 1, 5),
(57, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:35', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNTYmdXNlcjUuanBn', 1, 5),
(58, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:36', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNTcmdXNlcjUuanBn', 1, 5),
(59, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:36', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNTgmdXNlcjUuanBn', 1, 5),
(60, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:36', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNTkmdXNlcjUuanBn', 1, 5),
(61, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:37', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNjAmdXNlcjUuanBn', 1, 5),
(62, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:37', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNjEmdXNlcjUuanBn', 1, 5),
(63, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:37', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNjImdXNlcjUuanBn', 1, 5),
(64, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:37', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNjMmdXNlcjUuanBn', 1, 5),
(65, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:38', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNjQmdXNlcjUuanBn', 1, 5),
(66, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:38', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNjUmdXNlcjUuanBn', 1, 5),
(67, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:38', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNjYmdXNlcjUuanBn', 1, 5),
(68, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:38', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNjcmdXNlcjUuanBn', 1, 5),
(69, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:39', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNjgmdXNlcjUuanBn', 1, 5),
(70, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:39', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNjkmdXNlcjUuanBn', 1, 5),
(71, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:39', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNzAmdXNlcjUuanBn', 1, 5),
(72, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:39', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNzEmdXNlcjUuanBn', 1, 5),
(73, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:40', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNzImdXNlcjUuanBn', 1, 5),
(74, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:40', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNzMmdXNlcjUuanBn', 1, 5),
(75, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:40', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNzQmdXNlcjUuanBn', 1, 5),
(76, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:40', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNzUmdXNlcjUuanBn', 1, 5),
(77, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:41', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNzYmdXNlcjUuanBn', 1, 5),
(78, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:41', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNzcmdXNlcjUuanBn', 1, 5),
(79, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:41', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNzgmdXNlcjUuanBn', 1, 5),
(80, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:42', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uNzkmdXNlcjUuanBn', 1, 5),
(81, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:42', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uODAmdXNlcjUuanBn', 1, 5),
(82, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:42', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uODEmdXNlcjUuanBn', 1, 5),
(83, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:42', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uODImdXNlcjUuanBn', 1, 5),
(84, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:43', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uODMmdXNlcjUuanBn', 1, 5),
(85, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:43', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uODQmdXNlcjUuanBn', 1, 5),
(86, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:43', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uODUmdXNlcjUuanBn', 1, 5),
(87, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:43', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uODYmdXNlcjUuanBn', 1, 5),
(88, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:44', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uODcmdXNlcjUuanBn', 1, 5),
(89, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:44', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uODgmdXNlcjUuanBn', 1, 5),
(90, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:44', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uODkmdXNlcjUuanBn', 1, 5),
(91, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:44', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOTAmdXNlcjUuanBn', 1, 5),
(92, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:45', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOTEmdXNlcjUuanBn', 1, 5),
(93, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:45', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOTImdXNlcjUuanBn', 1, 5),
(94, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:45', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOTMmdXNlcjUuanBn', 1, 5),
(95, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:46', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOTQmdXNlcjUuanBn', 1, 5),
(96, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:46', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOTUmdXNlcjUuanBn', 1, 5),
(97, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:46', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOTYmdXNlcjUuanBn', 1, 5),
(98, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:46', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOTcmdXNlcjUuanBn', 1, 5),
(99, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:47', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOTgmdXNlcjUuanBn', 1, 5),
(100, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:47', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uOTkmdXNlcjUuanBn', 1, 5),
(101, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:47', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTAwJnVzZXI1LmpwZw==', 1, 5),
(102, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:47', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTAxJnVzZXI1LmpwZw==', 1, 5),
(103, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:48', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTAyJnVzZXI1LmpwZw==', 1, 5),
(104, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:48', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTAzJnVzZXI1LmpwZw==', 1, 5),
(105, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:48', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTA0JnVzZXI1LmpwZw==', 1, 5),
(106, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:48', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTA1JnVzZXI1LmpwZw==', 1, 5),
(107, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:49', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTA2JnVzZXI1LmpwZw==', 1, 5),
(108, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:49', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTA3JnVzZXI1LmpwZw==', 1, 5),
(109, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:49', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTA4JnVzZXI1LmpwZw==', 1, 5),
(110, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:50', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTA5JnVzZXI1LmpwZw==', 1, 5),
(111, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:50', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTEwJnVzZXI1LmpwZw==', 1, 5),
(112, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:50', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTExJnVzZXI1LmpwZw==', 1, 5),
(113, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:50', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTEyJnVzZXI1LmpwZw==', 1, 5),
(114, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:51', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTEzJnVzZXI1LmpwZw==', 1, 5),
(115, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:51', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTE0JnVzZXI1LmpwZw==', 1, 5),
(116, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:51', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTE1JnVzZXI1LmpwZw==', 1, 5),
(117, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:52', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTE2JnVzZXI1LmpwZw==', 1, 5),
(118, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:52', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTE3JnVzZXI1LmpwZw==', 1, 5),
(119, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:52', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTE4JnVzZXI1LmpwZw==', 1, 5),
(120, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:52', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTE5JnVzZXI1LmpwZw==', 1, 5),
(121, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:53', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTIwJnVzZXI1LmpwZw==', 1, 5),
(122, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:53', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTIxJnVzZXI1LmpwZw==', 1, 5),
(123, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:53', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTIyJnVzZXI1LmpwZw==', 1, 5),
(124, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:54', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTIzJnVzZXI1LmpwZw==', 1, 5),
(125, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:54', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTI0JnVzZXI1LmpwZw==', 1, 5),
(126, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:54', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTI1JnVzZXI1LmpwZw==', 1, 5),
(127, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:54', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTI2JnVzZXI1LmpwZw==', 1, 5),
(128, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:55', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTI3JnVzZXI1LmpwZw==', 1, 5),
(129, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:55', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTI4JnVzZXI1LmpwZw==', 1, 5),
(130, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:55', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTI5JnVzZXI1LmpwZw==', 1, 5),
(131, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:55', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTMwJnVzZXI1LmpwZw==', 1, 5),
(132, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:56', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTMxJnVzZXI1LmpwZw==', 1, 5),
(133, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:56', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTMyJnVzZXI1LmpwZw==', 1, 5),
(134, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:56', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTMzJnVzZXI1LmpwZw==', 1, 5),
(135, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:56', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTM0JnVzZXI1LmpwZw==', 1, 5),
(136, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:57', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTM1JnVzZXI1LmpwZw==', 1, 5),
(137, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:57', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTM2JnVzZXI1LmpwZw==', 1, 5),
(138, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:57', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTM3JnVzZXI1LmpwZw==', 1, 5),
(139, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:58', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTM4JnVzZXI1LmpwZw==', 1, 5),
(140, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:58', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTM5JnVzZXI1LmpwZw==', 1, 5),
(141, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:59', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQwJnVzZXI1LmpwZw==', 1, 5),
(142, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:59', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQxJnVzZXI1LmpwZw==', 1, 5),
(143, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:01:59', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQyJnVzZXI1LmpwZw==', 1, 5),
(144, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:00', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQzJnVzZXI1LmpwZw==', 1, 5),
(145, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:00', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQ0JnVzZXI1LmpwZw==', 1, 5),
(146, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:00', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQ1JnVzZXI1LmpwZw==', 1, 5),
(147, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:01', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQ2JnVzZXI1LmpwZw==', 1, 5),
(148, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:01', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQ3JnVzZXI1LmpwZw==', 1, 5),
(149, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:02', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQ4JnVzZXI1LmpwZw==', 1, 5),
(150, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:02', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTQ5JnVzZXI1LmpwZw==', 1, 5),
(151, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:02', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTUwJnVzZXI1LmpwZw==', 1, 5),
(152, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:02', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTUxJnVzZXI1LmpwZw==', 1, 5),
(153, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:03', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTUyJnVzZXI1LmpwZw==', 1, 5),
(154, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:03', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTUzJnVzZXI1LmpwZw==', 1, 5),
(155, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:03', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTU0JnVzZXI1LmpwZw==', 1, 5),
(156, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:04', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTU1JnVzZXI1LmpwZw==', 1, 5),
(157, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:04', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTU2JnVzZXI1LmpwZw==', 1, 5),
(158, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:05', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTU3JnVzZXI1LmpwZw==', 1, 5),
(159, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:05', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTU4JnVzZXI1LmpwZw==', 1, 5),
(160, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:05', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTU5JnVzZXI1LmpwZw==', 1, 5),
(161, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:06', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTYwJnVzZXI1LmpwZw==', 1, 5),
(162, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:07', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTYxJnVzZXI1LmpwZw==', 1, 5),
(163, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:07', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTYyJnVzZXI1LmpwZw==', 1, 5),
(164, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:08', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTYzJnVzZXI1LmpwZw==', 1, 5),
(165, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:08', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTY0JnVzZXI1LmpwZw==', 1, 5),
(166, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:09', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTY1JnVzZXI1LmpwZw==', 1, 5),
(167, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:09', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTY2JnVzZXI1LmpwZw==', 1, 5),
(168, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:09', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTY3JnVzZXI1LmpwZw==', 1, 5),
(169, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:10', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTY4JnVzZXI1LmpwZw==', 1, 5),
(170, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:10', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTY5JnVzZXI1LmpwZw==', 1, 5),
(171, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:10', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTcwJnVzZXI1LmpwZw==', 1, 5),
(172, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:11', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTcxJnVzZXI1LmpwZw==', 1, 5);
INSERT INTO `annonces` (`ID_ANN`, `TITRE`, `PRIX`, `DESCRIPTION`, `CATEGORIE`, `DATE`, `PHOTO`, `MINI`, `DISPO`, `ID_USR`) VALUES
(173, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:11', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTcyJnVzZXI1LmpwZw==', 1, 5),
(174, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:12', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTczJnVzZXI1LmpwZw==', 1, 5),
(175, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:13', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTc0JnVzZXI1LmpwZw==', 1, 5),
(176, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:13', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTc1JnVzZXI1LmpwZw==', 1, 5),
(177, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:14', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTc2JnVzZXI1LmpwZw==', 1, 5),
(178, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:14', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTc3JnVzZXI1LmpwZw==', 1, 5),
(179, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:15', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTc4JnVzZXI1LmpwZw==', 1, 5),
(180, 'plein d\'annonces', 666, 'pour voir la barre de navigation en bas de page', 2, '2018-01-31 18:02:15', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzL2RjZWU2OWJjYzRjY2M5Njk2ZGE1Y2JiODM4NjE3ODFlYW5uMTc5JnVzZXI1LmpwZw==', 1, 5),
(181, 'test dernier', 487, 'alors', 5, '2018-01-31 18:07:08', 'aW1hZ2VzX2Fubm9uY2VzLzA0Mzg2YmViYjY5ZGUxZTgxYjI1MzRlNGMxMTdhOTQ5YW5uaSZ1c2VyNS5qcGc=', 'aW1hZ2VzX2Fubm9uY2VzLzA0Mzg2YmViYjY5ZGUxZTgxYjI1MzRlNGMxMTdhOTQ5YW5uMTgwJnVzZXI1LmpwZw==', 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `ID_USR` int(8) NOT NULL,
  `ID_ANN` int(8) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`ID_USR`, `ID_ANN`, `DATE`) VALUES
(5, 95, '2018-01-29 12:12:56'),
(5, 97, '2018-01-27 11:07:44'),
(5, 98, '2018-01-26 14:40:05'),
(5, 99, '2018-01-29 12:06:33'),
(5, 100, '2018-01-26 14:40:05');

-- --------------------------------------------------------

--
-- Structure de la table `pannier`
--

CREATE TABLE `pannier` (
  `ID_USR` int(8) NOT NULL,
  `ID_ANN` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pannier`
--

INSERT INTO `pannier` (`ID_USR`, `ID_ANN`) VALUES
(5, 180);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID_USR` int(8) NOT NULL,
  `PSEUDO` varchar(50) NOT NULL,
  `MAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `ADRESSE` varchar(200) DEFAULT NULL,
  `VILLE` varchar(100) DEFAULT NULL,
  `CODE_POSTAL` varchar(5) DEFAULT NULL,
  `PAYS` varchar(30) DEFAULT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  `PRENOM` varchar(40) DEFAULT NULL,
  `CARTE` varchar(16) DEFAULT NULL,
  `DATE_EXP` varchar(4) DEFAULT NULL,
  `CRYPT` varchar(3) DEFAULT NULL,
  `PORTABLE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID_USR`, `PSEUDO`, `MAIL`, `PASSWORD`, `ADRESSE`, `VILLE`, `CODE_POSTAL`, `PAYS`, `NOM`, `PRENOM`, `CARTE`, `DATE_EXP`, `CRYPT`, `PORTABLE`) VALUES
(5, 'Stupa', 'remi.stupa@gmail.com', '$2y$10$iIU05e4XRO7uvR165x9ScOUKwconUoA70TKTiZS5DJtz423ab8Ioi', '16 Rue du 8 Mai 1945', 'Mortcerf', '77163', 'France', 'Bosgaerd', 'R&eacute;mi', '5136250045842504', '0872', '111', '1548261548'),
(6, 'test', 'test.test@test.com', '$2y$10$SkRY./5bssF4iy5B3oszLui2kRsA9tvDIoZhbjxHyIcqqIvgTBV0.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Stupa2', 'lol.lol@lol.com', '$2y$10$FLlqvY4DJBZK4M30myqlZuVZwO4/xlvBN7cbMVJzYQ2H//WRg1HO6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`ID_ANN`),
  ADD KEY `FK_ANNONCES_1` (`ID_USR`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`ID_USR`,`ID_ANN`),
  ADD KEY `FK_COMMANDE_ID_ANN` (`ID_ANN`);

--
-- Index pour la table `pannier`
--
ALTER TABLE `pannier`
  ADD PRIMARY KEY (`ID_USR`,`ID_ANN`),
  ADD KEY `FK_PANNIER_ID_ANN` (`ID_ANN`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_USR`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `ID_ANN` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID_USR` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD CONSTRAINT `FK_ANNONCES_1` FOREIGN KEY (`ID_USR`) REFERENCES `users` (`ID_USR`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_COMMANDE_ID_ANN` FOREIGN KEY (`ID_ANN`) REFERENCES `annonces` (`ID_ANN`),
  ADD CONSTRAINT `FK_COMMANDE_ID_USR` FOREIGN KEY (`ID_USR`) REFERENCES `users` (`ID_USR`);

--
-- Contraintes pour la table `pannier`
--
ALTER TABLE `pannier`
  ADD CONSTRAINT `FK_PANNIER_ID_ANN` FOREIGN KEY (`ID_ANN`) REFERENCES `annonces` (`ID_ANN`),
  ADD CONSTRAINT `FK_PANNIER_ID_USR` FOREIGN KEY (`ID_USR`) REFERENCES `users` (`ID_USR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
