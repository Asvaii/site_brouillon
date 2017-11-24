-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 21 nov. 2017 à 08:20
-- Version du serveur :  5.7.19
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
-- Base de données :  `site_app`
--

-- --------------------------------------------------------

--
-- Structure de la table `capteurs`
--

DROP TABLE IF EXISTS `capteurs`;
CREATE TABLE IF NOT EXISTS `capteurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_emplacement` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `catalogue`
--

DROP TABLE IF EXISTS `catalogue`;
CREATE TABLE IF NOT EXISTS `catalogue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prix` float NOT NULL,
  `vignette` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categorie` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cgu`
--

DROP TABLE IF EXISTS `cgu`;
CREATE TABLE IF NOT EXISTS `cgu` (
  `texte` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `consignes`
--

DROP TABLE IF EXISTS `consignes`;
CREATE TABLE IF NOT EXISTS `consignes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_capteur` int(11) NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `directive` varchar(255) NOT NULL,
  `valeur` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `emplacements`
--

DROP TABLE IF EXISTS `emplacements`;
CREATE TABLE IF NOT EXISTS `emplacements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_maison` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lien` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `maisons`
--

DROP TABLE IF EXISTS `maisons`;
CREATE TABLE IF NOT EXISTS `maisons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `adresse` text NOT NULL,
  `superficie` int(11) NOT NULL,
  `nb_occupants` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `numeros_domisep`
--

DROP TABLE IF EXISTS `numeros_domisep`;
CREATE TABLE IF NOT EXISTS `numeros_domisep` (
  `numero` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` text NOT NULL,
  `mail` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `categorie_utilisateur` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `adresse`, `mail`, `pseudo`, `mot_de_passe`, `categorie_utilisateur`) VALUES
(1, 'CHABOT', 'Jasper', '29, Chemin Du Lavarin Sud\r\n94230 CACHAN', 'jasper.chabot@gmail.com', 'Porge1975', 'ooB0navu', 'client_principal'),
(2, 'MARGAND', 'Nanna', '96, place Stanislas\r\n54000 NANCY', 'nanna.margand@gmail.com', 'Colened', 'aVah8othie9', 'client_principal'),
(3, 'MARCOUX', 'Sydney', '15, rue des six frères Ruellan\r\n57200 SARREGUEMINES', 'sydney.marcoux@gmail.com', 'Canualal', 'eipooC4c', 'client_principal'),
(4, 'GUIBORD', 'Gabriel', '23, rue de Penthièvre\r\n07000 PRIVAS', 'gabriel.guibord@gmail.com', 'Offied', 'ei0ahthohL', 'client_principal'),
(5, 'QUENNEVILLE', 'Cosette', '55, Rue Hubert de Lisle\r\n33310 LORMONT', 'cosette.quenneville@gmail.com', 'Niatand', 'ieNgee6eeRae', 'client_principal'),
(6, 'VARIEUR', 'Aurélie', '17, place de Miremont\r\n92390 VILLENEUVE-LA-GARENNE', 'aurelie.varieur@gmail.com', 'Timentep', 'keeTh0caeG', 'client_principal'),
(7, 'MOREAU', 'Alphonse', '19, avenue du Marechal Juin\r\n97436 SAINT-LEU', 'alphonse.moreau@gmail.com', 'Grearlacte1948', 'xoeL4quoar', 'client_principal'),
(8, 'DUFOUR', 'Hamilton', '22, avenue de Provence\r\n26000 VALENCE', 'hamilton.dufour@gmail.com', 'Thestrand', 'eiPhee0hai', 'client_principal'),
(9, 'MARIER', 'Martin', '86, rue des six frères Ruellan\r\n44230 SAINT-SÉBASTIEN-SUR-LOIRE', 'martin.marier@gmail.com', 'Siblen', 'she8ahLee3', 'client_principal'),
(10, 'LAMONTAGNE', 'Christine', '26, quai Saint-Nicolas\r\n59200 TOURCOING', 'christine.lamontagne@gmail.com', 'Buttleace', 'UQueen5JieY', 'client_principal'),
(11, 'BELLEMARE', 'Gilles', '14, boulevard Amiral Courbet\r\n94310 ORLY', 'gilles.bellemar@gmail.com', 'Hasuld', 'reWith0aeg', 'client_principal');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
