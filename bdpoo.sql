-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 15 déc. 2023 à 15:00
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdpoo`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `MATRICULE` varchar(10) NOT NULL,
  `NOM` varchar(50) NOT NULL,
  `GENRE` char(1) NOT NULL DEFAULT '',
  `DATENAISSANCE` date NOT NULL,
  `TELEPHONE` varchar(10) NOT NULL DEFAULT '0',
  `EMAIL` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`MATRICULE`, `NOM`, `GENRE`, `DATENAISSANCE`, `TELEPHONE`, `EMAIL`) VALUES
('11111', 'king', 'M', '1212-12-12', '147258258', 'kingdom@gmail.com'),
('144S148', 'asds', 'F', '1459-12-14', '25413698', 'john@jmail'),
('145K14', 'Jhon', 'M', '2015-03-14', '214569871', 'king@gmail.com'),
('1718L005', 'ONANA', 'M', '1999-05-24', '699876540', 'onana@yahoo.cm'),
('1718L019', 'LOTCHOUANG', 'F', '2004-09-27', '675432345', 'lotchouang@gmail.cm'),
('1718L024', 'SONG', 'M', '2002-04-12', '677453212', 'song@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'johndoe', 'secret');

-- --------------------------------------------------------

--
-- Structure de la table `versement`
--

CREATE TABLE `versement` (
  `DATEVERSEMENT` date NOT NULL,
  `MATRICULE` varchar(10) NOT NULL,
  `MONTAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `versement`
--

INSERT INTO `versement` (`DATEVERSEMENT`, `MATRICULE`, `MONTAN`) VALUES
('2005-07-13', '144S148', 2000000),
('2012-06-15', '145K14', 26000),
('2014-11-15', '11111', 26000),
('2018-10-15', '1718L024', 650000),
('2018-10-31', '1718L019', 250000),
('2018-11-11', '1718L024', 30000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`MATRICULE`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `versement`
--
ALTER TABLE `versement`
  ADD PRIMARY KEY (`DATEVERSEMENT`,`MATRICULE`),
  ADD KEY `MATRICULE` (`MATRICULE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `versement`
--
ALTER TABLE `versement`
  ADD CONSTRAINT `versement_ibfk_1` FOREIGN KEY (`MATRICULE`) REFERENCES `etudiant` (`MATRICULE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
