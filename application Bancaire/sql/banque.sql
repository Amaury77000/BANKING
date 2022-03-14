-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 06 jan. 2022 à 09:45
-- Version du serveur :  10.5.4-MariaDB
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `banque`
--

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE IF NOT EXISTS `agent` (
  `id_agent` int(11) NOT NULL AUTO_INCREMENT,
  `nom_agent` text NOT NULL,
  `prenom_agent` text NOT NULL,
  `code_qualification` int(20) NOT NULL,
  PRIMARY KEY (`id_agent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `id_compte` int(11) NOT NULL AUTO_INCREMENT,
  `date_ouverture` date NOT NULL,
  `iban` int(23) NOT NULL DEFAULT 1,
  `RIB` int(25) NOT NULL,
  `carte_bancaire` int(12) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_compte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

DROP TABLE IF EXISTS `demande`;
CREATE TABLE IF NOT EXISTS `demande` (
  `id_demande` int(11) NOT NULL AUTO_INCREMENT,
  `date_demande` date NOT NULL,
  `type_demande` text NOT NULL,
  `montant` int(20) NOT NULL,
  `devise` varchar(1) NOT NULL,
  `date_objetcif` date NOT NULL,
  `staut` text NOT NULL,
  PRIMARY KEY (`id_demande`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
CREATE TABLE IF NOT EXISTS `entreprise` (
  `raison_social` varchar(100) NOT NULL,
  `num_identifiant` int(11) NOT NULL,
  `type_identifiant` text NOT NULL,
  `code_naf` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

DROP TABLE IF EXISTS `operation`;
CREATE TABLE IF NOT EXISTS `operation` (
  `id_operation` int(11) NOT NULL AUTO_INCREMENT,
  `date_debut_operation` date NOT NULL,
  `date_fin_operation` int(11) NOT NULL,
  `type_opération` varchar(255) NOT NULL,
  PRIMARY KEY (`id_operation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `particulier`
--

DROP TABLE IF EXISTS `particulier`;
CREATE TABLE IF NOT EXISTS `particulier` (
  `nom_particulier` varchar(50) NOT NULL,
  `prenom_particulier` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `sexe` binary(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `type_compte`
--

DROP TABLE IF EXISTS `type_compte`;
CREATE TABLE IF NOT EXISTS `type_compte` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `deb_validite` text NOT NULL,
  `fin_validite` text NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
