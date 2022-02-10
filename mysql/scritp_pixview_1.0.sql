-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : database:3306
-- Généré le : jeu. 10 fév. 2022 à 09:38
-- Version du serveur : 5.7.37
-- Version de PHP : 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pixview`
--

-- --------------------------------------------------------

--
-- Structure de la table `contenu`
--

CREATE TABLE `contenu` (
  `id_contenu` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contenu`
--

INSERT INTO `contenu` (`id_contenu`, `title`, `duration`, `type`, `content`) VALUES
(1, 'Bonjour', 3, 'txt', 'Bonjour à tous !'),
(2, 'Au revoir', 3, 'txt', 'À la prochaine !'),
(3, 'EDT', 10, 'img', 'https://images.unsplash.com/photo-1617106400337-66e7d72a466e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
(4, 'Lettre', 20, 'pdf', 'Lettre du proviseur'),
(5, 'Code', 4, 'md', 'code du turfu');

-- --------------------------------------------------------

--
-- Structure de la table `contenu_sequence`
--

CREATE TABLE `contenu_sequence` (
  `id` int(10) UNSIGNED NOT NULL,
  `contenu_id_contenu` int(10) UNSIGNED DEFAULT NULL,
  `sequence_id_sequence` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contenu_sequence`
--

INSERT INTO `contenu_sequence` (`id`, `contenu_id_contenu`, `sequence_id_sequence`) VALUES
(1, NULL, 1),
(2, NULL, 1),
(3, 2, 2),
(4, 1, 2),
(5, 2, 1),
(6, 1, 1),
(7, 5, 1),
(8, 3, 1),
(9, 3, 3),
(10, 4, 3),
(11, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(50) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `comment` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(1, 'login', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 13:51:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_users', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL),
(2, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 13:57:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '1', NULL),
(3, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 13:57:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_collections', 'gestionnaire', NULL),
(4, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 13:58:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '2', NULL),
(5, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 13:58:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '3', NULL),
(6, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:00:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '4', NULL),
(7, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:02:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '5', NULL),
(8, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:02:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_collections', 'pool', NULL),
(9, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:02:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '6', NULL),
(10, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:05:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '7', NULL),
(11, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:06:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '7', NULL),
(12, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:06:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '8', NULL),
(13, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:06:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_collections', 'screen', NULL),
(14, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:07:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '9', NULL),
(15, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:07:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '10', NULL),
(16, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:08:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '11', NULL),
(17, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:08:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_collections', 'sequence', NULL),
(18, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:08:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '12', NULL),
(19, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:08:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '12', NULL),
(20, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:08:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '2', NULL),
(21, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:08:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '3', NULL),
(22, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:09:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '6', NULL),
(23, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:09:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '9', NULL),
(24, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:09:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '10', NULL),
(25, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:10:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '13', NULL),
(26, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:10:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '13', NULL),
(27, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:10:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '14', NULL),
(28, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:10:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '14', NULL),
(29, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:10:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '15', NULL),
(30, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:11:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '15', NULL),
(31, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:11:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '16', NULL),
(32, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:11:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_collections', 'contenu', NULL),
(33, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:12:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '17', NULL),
(34, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:12:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '17', NULL),
(35, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:14:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '18', NULL),
(36, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:14:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '18', NULL),
(37, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:14:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '13', NULL),
(38, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:15:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '19', NULL),
(39, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:15:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '19', NULL),
(40, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:16:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '20', NULL),
(41, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:16:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '1', NULL),
(42, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:16:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '2', NULL),
(43, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:16:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '20', NULL),
(44, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:16:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '7', NULL),
(45, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:16:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '20', NULL),
(46, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:19:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '21', NULL),
(47, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:24:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '22', NULL),
(48, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '23', NULL),
(49, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '24', NULL),
(50, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_collections', 'contenu_sequence', NULL),
(51, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '25', NULL),
(52, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '26', NULL),
(53, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:29:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '27', NULL),
(54, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:30:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '28', NULL),
(55, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:30:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '29', NULL),
(56, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:30:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_collections', 'screen_sequence', NULL),
(57, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:30:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '30', NULL),
(58, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:30:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '31', NULL),
(59, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:31:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '28', NULL),
(60, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:31:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '23', NULL),
(61, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:32:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '32', NULL),
(62, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:32:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '21', NULL),
(63, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:32:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '16', NULL),
(64, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:32:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '17', NULL),
(65, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:32:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '18', NULL),
(66, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:32:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '21', NULL),
(67, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:32:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '32', NULL),
(68, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:32:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '23', NULL),
(69, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:33:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '33', NULL),
(70, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:33:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_collections', 'theme', NULL),
(71, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:33:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '34', NULL),
(72, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:36:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '21', NULL),
(73, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:37:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '1', NULL),
(74, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:37:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '2', NULL),
(75, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:39:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '3', NULL),
(76, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:39:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '4', NULL),
(77, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:40:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '5', NULL),
(78, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:40:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '14', NULL),
(79, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:40:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '15', NULL),
(80, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:41:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '14', NULL),
(81, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:41:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '15', NULL),
(82, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:42:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'sequence', '1', NULL),
(83, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:45:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '23', NULL),
(84, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:46:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '1', NULL),
(85, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:46:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '2', NULL),
(86, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:46:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '2', NULL),
(87, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:46:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '1', NULL),
(88, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:47:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'sequence', '2', NULL),
(89, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:47:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '3', NULL),
(90, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:47:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '1', NULL),
(91, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:47:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '4', NULL),
(92, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:47:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '2', NULL),
(93, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:47:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '2', NULL),
(94, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:47:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '1', NULL),
(95, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:48:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '5', NULL),
(96, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:48:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '3', NULL),
(97, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:48:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '2', NULL),
(98, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:48:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '6', NULL),
(99, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:48:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '4', NULL),
(100, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:48:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '1', NULL),
(101, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:48:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '7', NULL),
(102, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:48:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '5', NULL),
(103, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:49:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '8', NULL),
(104, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:49:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'sequence', '3', NULL),
(105, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:49:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '9', NULL),
(106, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:49:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '3', NULL),
(107, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:49:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '10', NULL),
(108, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:49:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu_sequence', '11', NULL),
(109, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:49:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'contenu', '4', NULL),
(110, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:50:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '1', NULL),
(111, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:51:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'directus_fields', '28', NULL),
(112, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:52:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen_sequence', '1', NULL),
(113, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:52:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '1', NULL),
(114, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:53:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen_sequence', '2', NULL),
(115, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:53:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '2', NULL),
(116, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:54:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen_sequence', '3', NULL),
(117, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:54:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '3', NULL),
(118, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:55:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'pool', '1', NULL),
(119, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:55:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '1', NULL),
(120, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:55:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '2', NULL),
(121, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:55:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '3', NULL),
(122, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:56:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen_sequence', '4', NULL),
(123, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:56:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '4', NULL),
(124, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:56:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '1', NULL),
(125, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:56:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '2', NULL),
(126, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:56:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '1', NULL),
(127, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:57:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '3', NULL),
(128, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:57:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'pool', '2', NULL),
(129, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:57:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'screen', '4', NULL),
(130, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:57:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'gestionnaire', '1', NULL),
(131, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:58:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'gestionnaire', '2', NULL),
(132, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:58:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'pool', '1', NULL),
(133, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 14:58:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'pool', '2', NULL),
(134, 'login', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 18:39:20', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_users', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL),
(135, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 18:41:59', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_settings', '1', NULL),
(136, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 18:43:07', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_settings', '1', NULL),
(137, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 18:43:33', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_permissions', '1', NULL),
(138, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 19:54:23', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_permissions', '2', NULL),
(139, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 19:54:28', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_permissions', '2', NULL),
(140, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 19:54:33', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_permissions', '3', NULL),
(141, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 19:55:24', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_permissions', '4', NULL),
(142, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 19:56:23', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_collections', 'screen_sequence', NULL),
(143, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 19:56:37', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_collections', 'contenu_sequence', NULL),
(144, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 20:05:57', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_collections', 'contenu_sequence', NULL),
(145, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-09 20:06:06', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_collections', 'screen_sequence', NULL),
(146, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-10 09:35:11', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_users', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL),
(147, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-10 09:35:11', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_roles', '1b0c289b-9986-4748-b8f6-3aa3d2c22d63', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_collections`
--

CREATE TABLE `directus_collections` (
  `collection` varchar(64) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `note` text,
  `display_template` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `singleton` tinyint(1) NOT NULL DEFAULT '0',
  `translations` json DEFAULT NULL,
  `archive_field` varchar(64) DEFAULT NULL,
  `archive_app_filter` tinyint(1) NOT NULL DEFAULT '1',
  `archive_value` varchar(255) DEFAULT NULL,
  `unarchive_value` varchar(255) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all',
  `color` varchar(255) DEFAULT NULL,
  `item_duplication_fields` json DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `group` varchar(64) DEFAULT NULL,
  `collapse` varchar(255) NOT NULL DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_collections`
--

INSERT INTO `directus_collections` (`collection`, `icon`, `note`, `display_template`, `hidden`, `singleton`, `translations`, `archive_field`, `archive_app_filter`, `archive_value`, `unarchive_value`, `sort_field`, `accountability`, `color`, `item_duplication_fields`, `sort`, `group`, `collapse`) VALUES
('gestionnaire', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('pool', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('screen', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('sequence', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('contenu', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('contenu_sequence', 'import_export', NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('screen_sequence', 'import_export', NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('theme', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open');

-- --------------------------------------------------------

--
-- Structure de la table `directus_dashboards`
--

CREATE TABLE `directus_dashboards` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'dashboard',
  `note` text,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_created` char(36) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `directus_fields`
--

CREATE TABLE `directus_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `field` varchar(64) NOT NULL,
  `special` varchar(64) DEFAULT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `options` json DEFAULT NULL,
  `display` varchar(64) DEFAULT NULL,
  `display_options` json DEFAULT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `width` varchar(30) DEFAULT 'full',
  `translations` json DEFAULT NULL,
  `note` text,
  `conditions` json DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `group` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_fields`
--

INSERT INTO `directus_fields` (`id`, `collection`, `field`, `special`, `interface`, `options`, `display`, `display_options`, `readonly`, `hidden`, `sort`, `width`, `translations`, `note`, `conditions`, `required`, `group`) VALUES
(1, 'gestionnaire', 'id_gestionnaire', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL),
(2, 'gestionnaire', 'name', NULL, 'input', NULL, NULL, NULL, 0, 0, 2, 'full', NULL, NULL, NULL, 1, NULL),
(20, 'gestionnaire', 'password', 'hash', 'input-hash', NULL, NULL, NULL, 0, 0, 3, 'full', NULL, NULL, NULL, 1, NULL),
(7, 'gestionnaire', 'role', 'boolean', 'boolean', '{\"label\": \"Gestionnaire de domaine\"}', 'boolean', NULL, 0, 0, 4, 'full', NULL, NULL, NULL, 0, NULL),
(5, 'pool', 'id_pool', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(6, 'pool', 'name', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL),
(8, 'screen', 'id_screen', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(9, 'screen', 'name', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL),
(10, 'screen', 'ip_address', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL),
(11, 'sequence', 'id_sequence', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(12, 'sequence', 'title', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL),
(13, 'sequence', 'duration', NULL, 'input', '{\"min\": 0}', NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL),
(14, 'sequence', 'date_start', NULL, 'datetime', '{\"includeSeconds\": true}', NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(15, 'sequence', 'date_end', NULL, 'datetime', '{\"includeSeconds\": true}', NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(16, 'contenu', 'id_contenu', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL),
(17, 'contenu', 'title', NULL, 'input', NULL, NULL, NULL, 0, 0, 2, 'full', NULL, NULL, NULL, 1, NULL),
(18, 'contenu', 'duration', NULL, 'input', '{\"min\": 0}', NULL, NULL, 0, 0, 3, 'full', NULL, NULL, NULL, 1, NULL),
(21, 'contenu', 'type', NULL, 'select-dropdown', '{\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}, {\"text\": \"markdown\", \"value\": \"md\"}, {\"text\": \"texte\", \"value\": \"txt\"}]}', NULL, NULL, 0, 0, 4, 'full', NULL, NULL, NULL, 1, NULL),
(22, 'pool', 'gestionnaire_id_gestionnaire', 'm2o', 'select-dropdown-m2o', '{\"filter\": null, \"template\": \"{{id_gestionnaire}}\"}', NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(23, 'contenu', 'sequence_has_contenu', 'm2m', 'list-m2m', NULL, NULL, NULL, 0, 0, 6, 'full', NULL, NULL, NULL, 0, NULL),
(24, 'contenu_sequence', 'id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(25, 'contenu_sequence', 'contenu_id_contenu', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(26, 'contenu_sequence', 'sequence_id_sequence', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(27, 'screen', 'pool_id_pool', 'm2o', 'select-dropdown-m2o', '{\"template\": \"{{id_pool}}\"}', NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(28, 'screen', 'sequence_has_screen', 'm2m', 'list-m2m', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(29, 'screen_sequence', 'id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(30, 'screen_sequence', 'screen_id_screen', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(31, 'screen_sequence', 'sequence_id_sequence', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(32, 'contenu', 'content', NULL, 'input', NULL, NULL, NULL, 0, 0, 5, 'full', NULL, NULL, NULL, 1, NULL),
(33, 'theme', 'id_theme', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(34, 'theme', 'style', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_files`
--

CREATE TABLE `directus_files` (
  `id` char(36) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `filename_disk` varchar(255) DEFAULT NULL,
  `filename_download` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `folder` char(36) DEFAULT NULL,
  `uploaded_by` char(36) DEFAULT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` char(36) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `charset` varchar(50) DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `description` text,
  `location` text,
  `tags` text,
  `metadata` json DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `directus_folders`
--

CREATE TABLE `directus_folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` char(36) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `directus_migrations`
--

CREATE TABLE `directus_migrations` (
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_migrations`
--

INSERT INTO `directus_migrations` (`version`, `name`, `timestamp`) VALUES
('20201028A', 'Remove Collection Foreign Keys', '2022-02-09 13:50:05'),
('20201029A', 'Remove System Relations', '2022-02-09 13:50:05'),
('20201029B', 'Remove System Collections', '2022-02-09 13:50:06'),
('20201029C', 'Remove System Fields', '2022-02-09 13:50:06'),
('20201105A', 'Add Cascade System Relations', '2022-02-09 13:50:06'),
('20201105B', 'Change Webhook URL Type', '2022-02-09 13:50:06'),
('20210225A', 'Add Relations Sort Field', '2022-02-09 13:50:06'),
('20210304A', 'Remove Locked Fields', '2022-02-09 13:50:06'),
('20210312A', 'Webhooks Collections Text', '2022-02-09 13:50:06'),
('20210331A', 'Add Refresh Interval', '2022-02-09 13:50:06'),
('20210415A', 'Make Filesize Nullable', '2022-02-09 13:50:06'),
('20210416A', 'Add Collections Accountability', '2022-02-09 13:50:06'),
('20210422A', 'Remove Files Interface', '2022-02-09 13:50:06'),
('20210506A', 'Rename Interfaces', '2022-02-09 13:50:06'),
('20210510A', 'Restructure Relations', '2022-02-09 13:50:06'),
('20210518A', 'Add Foreign Key Constraints', '2022-02-09 13:50:07'),
('20210519A', 'Add System Fk Triggers', '2022-02-09 13:50:07'),
('20210521A', 'Add Collections Icon Color', '2022-02-09 13:50:07'),
('20210525A', 'Add Insights', '2022-02-09 13:50:07'),
('20210608A', 'Add Deep Clone Config', '2022-02-09 13:50:07'),
('20210626A', 'Change Filesize Bigint', '2022-02-09 13:50:07'),
('20210716A', 'Add Conditions to Fields', '2022-02-09 13:50:07'),
('20210721A', 'Add Default Folder', '2022-02-09 13:50:07'),
('20210802A', 'Replace Groups', '2022-02-09 13:50:07'),
('20210803A', 'Add Required to Fields', '2022-02-09 13:50:07'),
('20210805A', 'Update Groups', '2022-02-09 13:50:08'),
('20210805B', 'Change Image Metadata Structure', '2022-02-09 13:50:08'),
('20210811A', 'Add Geometry Config', '2022-02-09 13:50:08'),
('20210831A', 'Remove Limit Column', '2022-02-09 13:50:08'),
('20210903A', 'Add Auth Provider', '2022-02-09 13:50:08'),
('20210907A', 'Webhooks Collections Not Null', '2022-02-09 13:50:08'),
('20210910A', 'Move Module Setup', '2022-02-09 13:50:08'),
('20210920A', 'Webhooks URL Not Null', '2022-02-09 13:50:08'),
('20210924A', 'Add Collection Organization', '2022-02-09 13:50:08'),
('20210927A', 'Replace Fields Group', '2022-02-09 13:50:08'),
('20210927B', 'Replace M2M Interface', '2022-02-09 13:50:08'),
('20210929A', 'Rename Login Action', '2022-02-09 13:50:08'),
('20211007A', 'Update Presets', '2022-02-09 13:50:08'),
('20211009A', 'Add Auth Data', '2022-02-09 13:50:08'),
('20211016A', 'Add Webhook Headers', '2022-02-09 13:50:08'),
('20211103A', 'Set Unique to User Token', '2022-02-09 13:50:08'),
('20211103B', 'Update Special Geometry', '2022-02-09 13:50:08'),
('20211104A', 'Remove Collections Listing', '2022-02-09 13:50:08'),
('20211118A', 'Add Notifications', '2022-02-09 13:50:08'),
('20211211A', 'Add Shares', '2022-02-09 13:50:08'),
('20211230A', 'Add Project Descriptor', '2022-02-09 13:50:08');

-- --------------------------------------------------------

--
-- Structure de la table `directus_notifications`
--

CREATE TABLE `directus_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT 'inbox',
  `recipient` char(36) NOT NULL,
  `sender` char(36) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text,
  `collection` varchar(64) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `directus_panels`
--

CREATE TABLE `directus_panels` (
  `id` char(36) NOT NULL,
  `dashboard` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT 'insert_chart',
  `color` varchar(10) DEFAULT NULL,
  `show_header` tinyint(1) NOT NULL DEFAULT '0',
  `note` text,
  `type` varchar(255) NOT NULL,
  `position_x` int(11) NOT NULL,
  `position_y` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `options` json DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_created` char(36) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `directus_permissions`
--

CREATE TABLE `directus_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `action` varchar(10) NOT NULL,
  `permissions` json DEFAULT NULL,
  `validation` json DEFAULT NULL,
  `presets` json DEFAULT NULL,
  `fields` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_permissions`
--

INSERT INTO `directus_permissions` (`id`, `role`, `collection`, `action`, `permissions`, `validation`, `presets`, `fields`) VALUES
(1, NULL, 'sequence', 'read', '{}', '{}', NULL, '*'),
(3, NULL, 'contenu_sequence', 'read', '{}', '{}', NULL, '*'),
(4, NULL, 'contenu', 'read', '{}', '{}', NULL, '*');

-- --------------------------------------------------------

--
-- Structure de la table `directus_presets`
--

CREATE TABLE `directus_presets` (
  `id` int(10) UNSIGNED NOT NULL,
  `bookmark` varchar(255) DEFAULT NULL,
  `user` char(36) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `layout` varchar(100) DEFAULT 'tabular',
  `layout_query` json DEFAULT NULL,
  `layout_options` json DEFAULT NULL,
  `refresh_interval` int(11) DEFAULT NULL,
  `filter` json DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_presets`
--

INSERT INTO `directus_presets` (`id`, `bookmark`, `user`, `role`, `collection`, `search`, `layout`, `layout_query`, `layout_options`, `refresh_interval`, `filter`) VALUES
(1, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'screen', NULL, NULL, '{\"tabular\": {\"page\": 1}}', NULL, NULL, NULL),
(2, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'gestionnaire', NULL, NULL, '{\"tabular\": {\"page\": 1}}', NULL, NULL, NULL),
(3, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'contenu', NULL, NULL, '{\"tabular\": {\"page\": 1, \"sort\": [\"title\"]}}', NULL, NULL, NULL),
(4, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'sequence', NULL, NULL, '{\"tabular\": {\"page\": 1}}', NULL, NULL, NULL),
(5, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'pool', NULL, NULL, '{\"tabular\": {\"page\": 1}}', NULL, NULL, NULL),
(6, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'contenu_sequence', NULL, NULL, '{\"tabular\": {\"page\": 1}}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_relations`
--

CREATE TABLE `directus_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `many_collection` varchar(64) NOT NULL,
  `many_field` varchar(64) NOT NULL,
  `one_collection` varchar(64) DEFAULT NULL,
  `one_field` varchar(64) DEFAULT NULL,
  `one_collection_field` varchar(64) DEFAULT NULL,
  `one_allowed_collections` text,
  `junction_field` varchar(64) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `one_deselect_action` varchar(255) NOT NULL DEFAULT 'nullify'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_relations`
--

INSERT INTO `directus_relations` (`id`, `many_collection`, `many_field`, `one_collection`, `one_field`, `one_collection_field`, `one_allowed_collections`, `junction_field`, `sort_field`, `one_deselect_action`) VALUES
(1, 'pool', 'gestionnaire_id_gestionnaire', 'gestionnaire', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(2, 'contenu_sequence', 'sequence_id_sequence', 'sequence', NULL, NULL, NULL, 'contenu_id_contenu', NULL, 'nullify'),
(3, 'contenu_sequence', 'contenu_id_contenu', 'contenu', 'sequence_has_contenu', NULL, NULL, 'sequence_id_sequence', NULL, 'nullify'),
(4, 'screen', 'pool_id_pool', 'pool', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(5, 'screen_sequence', 'sequence_id_sequence', 'sequence', NULL, NULL, NULL, 'screen_id_screen', NULL, 'nullify'),
(6, 'screen_sequence', 'screen_id_screen', 'screen', 'sequence_has_screen', NULL, NULL, 'sequence_id_sequence', NULL, 'nullify');

-- --------------------------------------------------------

--
-- Structure de la table `directus_revisions`
--

CREATE TABLE `directus_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `data` json DEFAULT NULL,
  `delta` json DEFAULT NULL,
  `parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_revisions`
--

INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(1, 2, 'directus_fields', '1', '{\"field\": \"id_gestionnaire\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\"}', '{\"field\": \"id_gestionnaire\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\"}', NULL),
(2, 3, 'directus_collections', 'gestionnaire', '{\"singleton\": false, \"collection\": \"gestionnaire\"}', '{\"singleton\": false, \"collection\": \"gestionnaire\"}', NULL),
(3, 4, 'directus_fields', '2', '{\"field\": \"name\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\"}', '{\"field\": \"name\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\"}', NULL),
(4, 5, 'directus_fields', '3', '{\"field\": \"password\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\"}', '{\"field\": \"password\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\"}', NULL),
(5, 6, 'directus_fields', '4', '{\"field\": \"role\", \"options\": {\"max\": 1, \"min\": 0}, \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\"}', '{\"field\": \"role\", \"options\": {\"max\": 1, \"min\": 0}, \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\"}', NULL),
(6, 7, 'directus_fields', '5', '{\"field\": \"id_pool\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"pool\"}', '{\"field\": \"id_pool\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"pool\"}', NULL),
(7, 8, 'directus_collections', 'pool', '{\"singleton\": false, \"collection\": \"pool\"}', '{\"singleton\": false, \"collection\": \"pool\"}', NULL),
(8, 9, 'directus_fields', '6', '{\"field\": \"name\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"pool\"}', '{\"field\": \"name\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"pool\"}', NULL),
(9, 10, 'directus_fields', '7', '{\"field\": \"role\", \"options\": {\"label\": \"Gestionnaire de domaine\"}, \"special\": \"boolean\", \"required\": false, \"interface\": \"boolean\", \"collection\": \"gestionnaire\"}', '{\"field\": \"role\", \"options\": {\"label\": \"Gestionnaire de domaine\"}, \"special\": \"boolean\", \"required\": false, \"interface\": \"boolean\", \"collection\": \"gestionnaire\"}', NULL),
(10, 11, 'directus_fields', '7', '{\"id\": 7, \"note\": null, \"sort\": null, \"field\": \"role\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"boolean\", \"options\": {\"label\": \"Gestionnaire de domaine\"}, \"special\": [\"boolean\"], \"readonly\": false, \"required\": false, \"interface\": \"boolean\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"role\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"boolean\", \"options\": {\"label\": \"Gestionnaire de domaine\"}, \"special\": [\"boolean\"], \"readonly\": false, \"required\": false, \"interface\": \"boolean\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(11, 12, 'directus_fields', '8', '{\"field\": \"id_screen\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"screen\"}', '{\"field\": \"id_screen\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"screen\"}', NULL),
(12, 13, 'directus_collections', 'screen', '{\"singleton\": false, \"collection\": \"screen\"}', '{\"singleton\": false, \"collection\": \"screen\"}', NULL),
(13, 14, 'directus_fields', '9', '{\"field\": \"name\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"screen\"}', '{\"field\": \"name\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"screen\"}', NULL),
(14, 15, 'directus_fields', '10', '{\"field\": \"ip_address\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"screen\"}', '{\"field\": \"ip_address\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"screen\"}', NULL),
(15, 16, 'directus_fields', '11', '{\"field\": \"id_sequence\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"sequence\"}', '{\"field\": \"id_sequence\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"sequence\"}', NULL),
(16, 17, 'directus_collections', 'sequence', '{\"singleton\": false, \"collection\": \"sequence\"}', '{\"singleton\": false, \"collection\": \"sequence\"}', NULL),
(17, 18, 'directus_fields', '12', '{\"field\": \"title\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"sequence\"}', '{\"field\": \"title\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"sequence\"}', NULL),
(18, 19, 'directus_fields', '12', '{\"id\": 12, \"note\": null, \"sort\": null, \"field\": \"title\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"title\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(19, 20, 'directus_fields', '2', '{\"id\": 2, \"note\": null, \"sort\": null, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(20, 21, 'directus_fields', '3', '{\"id\": 3, \"note\": null, \"sort\": null, \"field\": \"password\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"password\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(21, 22, 'directus_fields', '6', '{\"id\": 6, \"note\": null, \"sort\": null, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"pool\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"pool\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(22, 23, 'directus_fields', '9', '{\"id\": 9, \"note\": null, \"sort\": null, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"screen\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"screen\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(23, 24, 'directus_fields', '10', '{\"id\": 10, \"note\": null, \"sort\": null, \"field\": \"ip_address\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"screen\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"ip_address\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"screen\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(24, 25, 'directus_fields', '13', '{\"field\": \"duration\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"sequence\"}', '{\"field\": \"duration\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"sequence\"}', NULL),
(25, 26, 'directus_fields', '13', '{\"id\": 13, \"note\": null, \"sort\": null, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(26, 27, 'directus_fields', '14', '{\"field\": \"date_start\", \"special\": null, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\"}', '{\"field\": \"date_start\", \"special\": null, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\"}', NULL),
(27, 28, 'directus_fields', '14', '{\"id\": 14, \"note\": null, \"sort\": null, \"field\": \"date_start\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"date_start\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(28, 29, 'directus_fields', '15', '{\"field\": \"date_end\", \"options\": {\"includeSeconds\": true}, \"special\": null, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\"}', '{\"field\": \"date_end\", \"options\": {\"includeSeconds\": true}, \"special\": null, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\"}', NULL),
(29, 30, 'directus_fields', '15', '{\"id\": 15, \"note\": null, \"sort\": null, \"field\": \"date_end\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"date_end\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(30, 31, 'directus_fields', '16', '{\"field\": \"id_contenu\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"contenu\"}', '{\"field\": \"id_contenu\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"contenu\"}', NULL),
(31, 32, 'directus_collections', 'contenu', '{\"singleton\": false, \"collection\": \"contenu\"}', '{\"singleton\": false, \"collection\": \"contenu\"}', NULL),
(32, 33, 'directus_fields', '17', '{\"field\": \"title\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\"}', '{\"field\": \"title\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\"}', NULL),
(33, 34, 'directus_fields', '17', '{\"id\": 17, \"note\": null, \"sort\": null, \"field\": \"title\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"title\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(34, 35, 'directus_fields', '18', '{\"field\": \"duration\", \"options\": {\"min\": 0}, \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\"}', '{\"field\": \"duration\", \"options\": {\"min\": 0}, \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\"}', NULL),
(35, 36, 'directus_fields', '18', '{\"id\": 18, \"note\": null, \"sort\": null, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(36, 37, 'directus_fields', '13', '{\"id\": 13, \"note\": null, \"sort\": null, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(37, 38, 'directus_fields', '19', '{\"field\": \"type\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\"}', '{\"field\": \"type\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\"}', NULL),
(38, 39, 'directus_fields', '19', '{\"id\": 19, \"note\": null, \"sort\": null, \"field\": \"type\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"type\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(39, 40, 'directus_fields', '20', '{\"field\": \"password\", \"special\": \"hash\", \"required\": true, \"interface\": \"input-hash\", \"collection\": \"gestionnaire\"}', '{\"field\": \"password\", \"special\": \"hash\", \"required\": true, \"interface\": \"input-hash\", \"collection\": \"gestionnaire\"}', NULL),
(40, 41, 'directus_fields', '1', '{\"id\": 1, \"note\": null, \"sort\": 1, \"field\": \"id_gestionnaire\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, \"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 1, \"field\": \"id_gestionnaire\", \"group\": null, \"collection\": \"gestionnaire\"}', NULL),
(41, 42, 'directus_fields', '2', '{\"id\": 2, \"note\": null, \"sort\": 2, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 2, \"field\": \"name\", \"group\": null, \"collection\": \"gestionnaire\"}', NULL),
(42, 43, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 3, \"field\": \"password\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": [\"hash\"], \"readonly\": false, \"required\": true, \"interface\": \"input-hash\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 3, \"field\": \"password\", \"group\": null, \"collection\": \"gestionnaire\"}', NULL),
(43, 44, 'directus_fields', '7', '{\"id\": 7, \"note\": null, \"sort\": 4, \"field\": \"role\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"boolean\", \"options\": {\"label\": \"Gestionnaire de domaine\"}, \"special\": [\"boolean\"], \"readonly\": false, \"required\": false, \"interface\": \"boolean\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 4, \"field\": \"role\", \"group\": null, \"collection\": \"gestionnaire\"}', NULL),
(44, 45, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 3, \"field\": \"password\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": [\"hash\"], \"readonly\": false, \"required\": true, \"interface\": \"input-hash\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": 3, \"field\": \"password\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": [\"hash\"], \"readonly\": false, \"required\": true, \"interface\": \"input-hash\", \"collection\": \"gestionnaire\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(45, 46, 'directus_fields', '21', '{\"field\": \"type\", \"options\": {\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}]}, \"special\": null, \"required\": true, \"interface\": \"select-dropdown\", \"collection\": \"contenu\"}', '{\"field\": \"type\", \"options\": {\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}]}, \"special\": null, \"required\": true, \"interface\": \"select-dropdown\", \"collection\": \"contenu\"}', NULL),
(46, 47, 'directus_fields', '22', '{\"field\": \"gestionnaire_id_gestionnaire\", \"options\": {\"filter\": null, \"template\": \"{{id_gestionnaire}}\"}, \"special\": \"m2o\", \"interface\": \"select-dropdown-m2o\", \"collection\": \"pool\"}', '{\"field\": \"gestionnaire_id_gestionnaire\", \"options\": {\"filter\": null, \"template\": \"{{id_gestionnaire}}\"}, \"special\": \"m2o\", \"interface\": \"select-dropdown-m2o\", \"collection\": \"pool\"}', NULL),
(47, 48, 'directus_fields', '23', '{\"field\": \"sequence_has_contenu\", \"special\": \"m2m\", \"interface\": \"list-m2m\", \"collection\": \"contenu\"}', '{\"field\": \"sequence_has_contenu\", \"special\": \"m2m\", \"interface\": \"list-m2m\", \"collection\": \"contenu\"}', NULL),
(48, 49, 'directus_fields', '24', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"contenu_sequence\"}', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"contenu_sequence\"}', NULL),
(49, 50, 'directus_collections', 'contenu_sequence', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"contenu_sequence\"}', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"contenu_sequence\"}', NULL),
(50, 51, 'directus_fields', '25', '{\"field\": \"contenu_id_contenu\", \"hidden\": true, \"collection\": \"contenu_sequence\"}', '{\"field\": \"contenu_id_contenu\", \"hidden\": true, \"collection\": \"contenu_sequence\"}', NULL),
(51, 52, 'directus_fields', '26', '{\"field\": \"sequence_id_sequence\", \"hidden\": true, \"collection\": \"contenu_sequence\"}', '{\"field\": \"sequence_id_sequence\", \"hidden\": true, \"collection\": \"contenu_sequence\"}', NULL),
(52, 53, 'directus_fields', '27', '{\"field\": \"pool_id_pool\", \"options\": {\"template\": \"{{id_pool}}\"}, \"special\": \"m2o\", \"interface\": \"select-dropdown-m2o\", \"collection\": \"screen\"}', '{\"field\": \"pool_id_pool\", \"options\": {\"template\": \"{{id_pool}}\"}, \"special\": \"m2o\", \"interface\": \"select-dropdown-m2o\", \"collection\": \"screen\"}', NULL),
(53, 54, 'directus_fields', '28', '{\"field\": \"sequence_has_screen\", \"special\": \"m2m\", \"interface\": \"list-m2m\", \"collection\": \"screen\"}', '{\"field\": \"sequence_has_screen\", \"special\": \"m2m\", \"interface\": \"list-m2m\", \"collection\": \"screen\"}', NULL),
(54, 55, 'directus_fields', '29', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"screen_sequence\"}', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"screen_sequence\"}', NULL),
(55, 56, 'directus_collections', 'screen_sequence', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"screen_sequence\"}', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"screen_sequence\"}', NULL),
(56, 57, 'directus_fields', '30', '{\"field\": \"screen_id_screen\", \"hidden\": true, \"collection\": \"screen_sequence\"}', '{\"field\": \"screen_id_screen\", \"hidden\": true, \"collection\": \"screen_sequence\"}', NULL),
(57, 58, 'directus_fields', '31', '{\"field\": \"sequence_id_sequence\", \"hidden\": true, \"collection\": \"screen_sequence\"}', '{\"field\": \"sequence_id_sequence\", \"hidden\": true, \"collection\": \"screen_sequence\"}', NULL),
(58, 59, 'directus_fields', '28', '{\"id\": 28, \"note\": null, \"sort\": null, \"field\": \"sequence_has_screen\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"screen\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"field\": \"sequence_has_screen\", \"hidden\": true, \"collection\": \"screen\"}', NULL),
(59, 60, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": null, \"field\": \"sequence_has_contenu\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"field\": \"sequence_has_contenu\", \"hidden\": true, \"collection\": \"contenu\"}', NULL),
(60, 61, 'directus_fields', '32', '{\"field\": \"content\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\"}', '{\"field\": \"content\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\"}', NULL),
(61, 62, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": null, \"field\": \"type\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}]}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"type\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}]}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(62, 63, 'directus_fields', '16', '{\"id\": 16, \"note\": null, \"sort\": 1, \"field\": \"id_contenu\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, \"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 1, \"field\": \"id_contenu\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(63, 64, 'directus_fields', '17', '{\"id\": 17, \"note\": null, \"sort\": 2, \"field\": \"title\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 2, \"field\": \"title\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(64, 65, 'directus_fields', '18', '{\"id\": 18, \"note\": null, \"sort\": 3, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 3, \"field\": \"duration\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(65, 66, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 4, \"field\": \"type\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}]}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 4, \"field\": \"type\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(66, 67, 'directus_fields', '32', '{\"id\": 32, \"note\": null, \"sort\": 5, \"field\": \"content\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 5, \"field\": \"content\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(67, 68, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 6, \"field\": \"sequence_has_contenu\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 6, \"field\": \"sequence_has_contenu\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(68, 69, 'directus_fields', '33', '{\"field\": \"id_theme\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"theme\"}', '{\"field\": \"id_theme\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"theme\"}', NULL),
(69, 70, 'directus_collections', 'theme', '{\"singleton\": false, \"collection\": \"theme\"}', '{\"singleton\": false, \"collection\": \"theme\"}', NULL),
(70, 71, 'directus_fields', '34', '{\"field\": \"style\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"theme\"}', '{\"field\": \"style\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"theme\"}', NULL),
(71, 72, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 4, \"field\": \"type\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}, {\"text\": \"markdown\", \"value\": \"md\"}, {\"text\": \"texte\", \"value\": \"txt\"}]}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": 4, \"field\": \"type\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}, {\"text\": \"markdown\", \"value\": \"md\"}, {\"text\": \"texte\", \"value\": \"txt\"}]}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(72, 73, 'contenu', '1', '{\"type\": \"txt\", \"title\": \"Bonjour\", \"content\": \"Bonjour à tous !\", \"duration\": 3}', '{\"type\": \"txt\", \"title\": \"Bonjour\", \"content\": \"Bonjour à tous !\", \"duration\": 3}', NULL),
(73, 74, 'contenu', '2', '{\"type\": \"txt\", \"title\": \"Au revoir\", \"content\": \"À la prochaine !\", \"duration\": 3}', '{\"type\": \"txt\", \"title\": \"Au revoir\", \"content\": \"À la prochaine !\", \"duration\": 3}', NULL),
(74, 75, 'contenu', '3', '{\"type\": \"img\", \"title\": \"EDT\", \"content\": \"https://images.unsplash.com/photo-1617106400337-66e7d72a466e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80\", \"duration\": 10}', '{\"type\": \"img\", \"title\": \"EDT\", \"content\": \"https://images.unsplash.com/photo-1617106400337-66e7d72a466e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80\", \"duration\": 10}', NULL),
(75, 76, 'contenu', '4', '{\"type\": \"pdf\", \"title\": \"Lettre\", \"content\": \"Lettre du proviseur\", \"duration\": 20}', '{\"type\": \"pdf\", \"title\": \"Lettre\", \"content\": \"Lettre du proviseur\", \"duration\": 20}', NULL),
(76, 77, 'contenu', '5', '{\"type\": \"md\", \"title\": \"Code\", \"content\": \"code du turfu\", \"duration\": 4}', '{\"type\": \"md\", \"title\": \"Code\", \"content\": \"code du turfu\", \"duration\": 4}', NULL),
(77, 78, 'directus_fields', '14', '{\"id\": 14, \"note\": null, \"sort\": null, \"field\": \"date_start\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"date_start\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(78, 79, 'directus_fields', '15', '{\"id\": 15, \"note\": null, \"sort\": null, \"field\": \"date_end\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"date_end\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(79, 80, 'directus_fields', '14', '{\"id\": 14, \"note\": null, \"sort\": null, \"field\": \"date_start\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"date_start\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(80, 81, 'directus_fields', '15', '{\"id\": 15, \"note\": null, \"sort\": null, \"field\": \"date_end\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": null, \"field\": \"date_end\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"includeSeconds\": true}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"datetime\", \"collection\": \"sequence\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(81, 82, 'sequence', '1', '{\"title\": \"Base\", \"duration\": 40}', '{\"title\": \"Base\", \"duration\": 40}', NULL),
(82, 83, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 6, \"field\": \"sequence_has_contenu\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"field\": \"sequence_has_contenu\", \"hidden\": false, \"collection\": \"contenu\"}', NULL),
(83, 84, 'contenu_sequence', '1', '{\"contenu_id_contenu\": \"2\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', '{\"contenu_id_contenu\": \"2\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', 84),
(84, 85, 'contenu', '2', '{\"type\": \"txt\", \"title\": \"Au revoir\", \"content\": \"À la prochaine !\", \"duration\": 3, \"id_contenu\": 2, \"sequence_has_contenu\": [1]}', '{}', NULL),
(85, 86, 'contenu_sequence', '2', '{\"contenu_id_contenu\": \"1\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', '{\"contenu_id_contenu\": \"1\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', 86),
(86, 87, 'contenu', '1', '{\"type\": \"txt\", \"title\": \"Bonjour\", \"content\": \"Bonjour à tous !\", \"duration\": 3, \"id_contenu\": 1, \"sequence_has_contenu\": [2]}', '{}', NULL),
(87, 88, 'sequence', '2', '{\"title\": \"Bonjour & Au revoir\", \"duration\": 6}', '{\"title\": \"Bonjour & Au revoir\", \"duration\": 6}', NULL),
(88, 89, 'contenu_sequence', '3', '{\"contenu_id_contenu\": 2, \"sequence_id_sequence\": {\"id_sequence\": 2}}', '{\"contenu_id_contenu\": 2, \"sequence_id_sequence\": {\"id_sequence\": 2}}', 92),
(89, 90, 'contenu_sequence', '1', '{\"id\": 1, \"contenu_id_contenu\": null, \"sequence_id_sequence\": 1}', '{\"contenu_id_contenu\": null}', 92),
(90, 91, 'contenu_sequence', '4', '{\"contenu_id_contenu\": 1, \"sequence_id_sequence\": {\"id_sequence\": 2}}', '{\"contenu_id_contenu\": 1, \"sequence_id_sequence\": {\"id_sequence\": 2}}', 92),
(91, 92, 'contenu_sequence', '2', '{\"id\": 2, \"contenu_id_contenu\": null, \"sequence_id_sequence\": 1}', '{\"contenu_id_contenu\": null}', 92),
(92, 93, 'contenu', '2', '{\"type\": \"txt\", \"title\": \"Bonjour\", \"content\": \"Bonjour à tous !\", \"duration\": 3, \"id_contenu\": 1, \"sequence_has_contenu\": [4]}', '{}', NULL),
(93, 94, 'contenu', '1', '{\"type\": \"txt\", \"title\": \"Au revoir\", \"content\": \"À la prochaine !\", \"duration\": 3, \"id_contenu\": 2, \"sequence_has_contenu\": [3]}', '{}', NULL),
(94, 95, 'contenu_sequence', '5', '{\"contenu_id_contenu\": \"2\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', '{\"contenu_id_contenu\": \"2\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', 96),
(95, 96, 'contenu_sequence', '3', '{\"id\": 3, \"contenu_id_contenu\": 2, \"sequence_id_sequence\": 2}', '{\"contenu_id_contenu\": \"2\", \"sequence_id_sequence\": 2}', 96),
(96, 97, 'contenu', '2', '{\"type\": \"txt\", \"title\": \"Au revoir\", \"content\": \"À la prochaine !\", \"duration\": 3, \"id_contenu\": 2, \"sequence_has_contenu\": [3, 5]}', '{}', NULL),
(97, 98, 'contenu_sequence', '6', '{\"contenu_id_contenu\": \"1\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', '{\"contenu_id_contenu\": \"1\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', 99),
(98, 99, 'contenu_sequence', '4', '{\"id\": 4, \"contenu_id_contenu\": 1, \"sequence_id_sequence\": 2}', '{\"contenu_id_contenu\": \"1\", \"sequence_id_sequence\": 2}', 99),
(99, 100, 'contenu', '1', '{\"type\": \"txt\", \"title\": \"Bonjour\", \"content\": \"Bonjour à tous !\", \"duration\": 3, \"id_contenu\": 1, \"sequence_has_contenu\": [4, 6]}', '{}', NULL),
(100, 101, 'contenu_sequence', '7', '{\"contenu_id_contenu\": \"5\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', '{\"contenu_id_contenu\": \"5\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', 101),
(101, 102, 'contenu', '5', '{\"type\": \"md\", \"title\": \"Code\", \"content\": \"code du turfu\", \"duration\": 4, \"id_contenu\": 5, \"sequence_has_contenu\": [7]}', '{}', NULL),
(102, 103, 'contenu_sequence', '8', '{\"contenu_id_contenu\": \"3\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', '{\"contenu_id_contenu\": \"3\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', 105),
(103, 104, 'sequence', '3', '{\"title\": \"Administratif\", \"duration\": 30}', '{\"title\": \"Administratif\", \"duration\": 30}', 104),
(104, 105, 'contenu_sequence', '9', '{\"contenu_id_contenu\": \"3\", \"sequence_id_sequence\": {\"title\": \"Administratif\", \"duration\": 30}}', '{\"contenu_id_contenu\": \"3\", \"sequence_id_sequence\": {\"title\": \"Administratif\", \"duration\": 30}}', 105),
(105, 106, 'contenu', '3', '{\"type\": \"img\", \"title\": \"EDT\", \"content\": \"https://images.unsplash.com/photo-1617106400337-66e7d72a466e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80\", \"duration\": 10, \"id_contenu\": 3, \"sequence_has_contenu\": [8, 9]}', '{}', NULL),
(106, 107, 'contenu_sequence', '10', '{\"contenu_id_contenu\": \"4\", \"sequence_id_sequence\": {\"id_sequence\": 3}}', '{\"contenu_id_contenu\": \"4\", \"sequence_id_sequence\": {\"id_sequence\": 3}}', 108),
(107, 108, 'contenu_sequence', '11', '{\"contenu_id_contenu\": \"4\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', '{\"contenu_id_contenu\": \"4\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', 108),
(108, 109, 'contenu', '4', '{\"type\": \"pdf\", \"title\": \"Lettre\", \"content\": \"Lettre du proviseur\", \"duration\": 20, \"id_contenu\": 4, \"sequence_has_contenu\": [10, 11]}', '{}', NULL),
(109, 110, 'screen', '1', '{\"name\": \"Screen Hub\", \"ip_address\": \"192.168.1.1\"}', '{\"name\": \"Screen Hub\", \"ip_address\": \"192.168.1.1\"}', NULL),
(110, 111, 'directus_fields', '28', '{\"id\": 28, \"note\": null, \"sort\": null, \"field\": \"sequence_has_screen\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"screen\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"field\": \"sequence_has_screen\", \"hidden\": false, \"collection\": \"screen\"}', NULL),
(111, 112, 'screen_sequence', '1', '{\"screen_id_screen\": \"1\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', '{\"screen_id_screen\": \"1\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', 112),
(112, 113, 'screen', '1', '{\"name\": \"Screen Hub\", \"id_screen\": 1, \"ip_address\": \"192.168.1.1\", \"pool_id_pool\": null, \"sequence_has_screen\": [1]}', '{}', NULL),
(113, 114, 'screen_sequence', '2', '{\"screen_id_screen\": 2, \"sequence_id_sequence\": {\"id_sequence\": 3}}', '{\"screen_id_screen\": 2, \"sequence_id_sequence\": {\"id_sequence\": 3}}', 114),
(114, 115, 'screen', '2', '{\"name\": \"Screen Hub 2\", \"ip_address\": \"192.168.1.2\", \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 3}}]}', '{\"name\": \"Screen Hub 2\", \"ip_address\": \"192.168.1.2\", \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 3}}]}', NULL),
(115, 116, 'screen_sequence', '3', '{\"screen_id_screen\": 3, \"sequence_id_sequence\": {\"id_sequence\": 2}}', '{\"screen_id_screen\": 3, \"sequence_id_sequence\": {\"id_sequence\": 2}}', 116),
(116, 117, 'screen', '3', '{\"name\": \"Screen porte entrée/sortie\", \"ip_address\": \"192.168.1.3\", \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 2}}]}', '{\"name\": \"Screen porte entrée/sortie\", \"ip_address\": \"192.168.1.3\", \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 2}}]}', NULL),
(117, 118, 'pool', '1', '{\"name\": \"RDC\"}', '{\"name\": \"RDC\"}', NULL),
(118, 119, 'screen', '1', '{\"name\": \"Screen Hub\", \"id_screen\": 1, \"ip_address\": \"192.168.1.1\", \"pool_id_pool\": 1, \"sequence_has_screen\": [1]}', '{\"pool_id_pool\": 1}', NULL),
(119, 120, 'screen', '2', '{\"name\": \"Screen Hub 2\", \"id_screen\": 2, \"ip_address\": \"192.168.1.2\", \"pool_id_pool\": 1, \"sequence_has_screen\": [2]}', '{\"pool_id_pool\": 1}', NULL),
(120, 121, 'screen', '3', '{\"name\": \"Screen porte entrée/sortie\", \"id_screen\": 3, \"ip_address\": \"192.168.1.3\", \"pool_id_pool\": 1, \"sequence_has_screen\": [3]}', '{\"pool_id_pool\": 1}', NULL),
(121, 122, 'screen_sequence', '4', '{\"screen_id_screen\": 4, \"sequence_id_sequence\": {\"id_sequence\": 3}}', '{\"screen_id_screen\": 4, \"sequence_id_sequence\": {\"id_sequence\": 3}}', 122),
(122, 123, 'screen', '4', '{\"name\": \"Screen étage 1\", \"ip_address\": \"192.168.1.1\", \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 3}}]}', '{\"name\": \"Screen étage 1\", \"ip_address\": \"192.168.1.1\", \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 3}}]}', NULL),
(123, 124, 'screen', '1', '{\"name\": \"Screen RDC 1\", \"id_screen\": 1, \"ip_address\": \"192.168.1.1\", \"pool_id_pool\": 1, \"sequence_has_screen\": [1]}', '{\"name\": \"Screen RDC 1\"}', NULL),
(124, 125, 'screen', '2', '{\"name\": \"Screen RDC 2\", \"id_screen\": 2, \"ip_address\": \"192.168.0.2\", \"pool_id_pool\": 1, \"sequence_has_screen\": [2]}', '{\"name\": \"Screen RDC 2\", \"ip_address\": \"192.168.0.2\"}', NULL),
(125, 126, 'screen', '1', '{\"name\": \"Screen RDC 1\", \"id_screen\": 1, \"ip_address\": \"192.168.0.1\", \"pool_id_pool\": 1, \"sequence_has_screen\": [1]}', '{\"ip_address\": \"192.168.0.1\"}', NULL),
(126, 127, 'screen', '3', '{\"name\": \"Screen porte entrée/sortie\", \"id_screen\": 3, \"ip_address\": \"192.168.0.3\", \"pool_id_pool\": 1, \"sequence_has_screen\": [3]}', '{\"ip_address\": \"192.168.0.3\"}', NULL),
(127, 128, 'pool', '2', '{\"name\": \"Étage 1\"}', '{\"name\": \"Étage 1\"}', NULL),
(128, 129, 'screen', '4', '{\"name\": \"Screen étage 1\", \"id_screen\": 4, \"ip_address\": \"192.168.1.1\", \"pool_id_pool\": 2, \"sequence_has_screen\": [4]}', '{\"pool_id_pool\": 2}', NULL),
(129, 130, 'gestionnaire', '1', '{\"name\": \"PAF\", \"role\": true, \"password\": \"paf\"}', '{\"name\": \"PAF\", \"role\": true, \"password\": \"paf\"}', NULL),
(130, 131, 'gestionnaire', '2', '{\"name\": \"Thibaud\", \"password\": \"thibaud\"}', '{\"name\": \"Thibaud\", \"password\": \"thibaud\"}', NULL),
(131, 132, 'pool', '1', '{\"name\": \"RDC\", \"id_pool\": 1, \"gestionnaire_id_gestionnaire\": 1}', '{\"gestionnaire_id_gestionnaire\": 1}', NULL),
(132, 133, 'pool', '2', '{\"name\": \"Étage 1\", \"id_pool\": 2, \"gestionnaire_id_gestionnaire\": 2}', '{\"gestionnaire_id_gestionnaire\": 2}', NULL),
(133, 135, 'directus_settings', '1', '{\"module_bar\": [{\"id\": \"content\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"users\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"files\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"insights\", \"type\": \"module\", \"enabled\": false}, {\"id\": \"docs\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"settings\", \"type\": \"module\", \"locked\": true, \"enabled\": true}], \"project_name\": \"Pix View\"}', '{\"module_bar\": [{\"id\": \"content\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"users\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"files\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"insights\", \"type\": \"module\", \"enabled\": false}, {\"id\": \"docs\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"settings\", \"type\": \"module\", \"locked\": true, \"enabled\": true}], \"project_name\": \"Pix View\"}', NULL),
(134, 136, 'directus_settings', '1', '{\"id\": 1, \"basemaps\": null, \"custom_css\": null, \"mapbox_key\": \"1234\", \"module_bar\": [{\"id\": \"content\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"users\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"files\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"insights\", \"type\": \"module\", \"enabled\": false}, {\"id\": \"docs\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"settings\", \"type\": \"module\", \"locked\": true, \"enabled\": true}], \"project_url\": null, \"public_note\": null, \"project_logo\": null, \"project_name\": \"Pix View\", \"project_color\": \"#00C897\", \"public_background\": null, \"public_foreground\": null, \"project_descriptor\": null, \"auth_login_attempts\": 25, \"auth_password_policy\": null, \"storage_asset_presets\": null, \"storage_default_folder\": null, \"storage_asset_transform\": \"all\"}', '{\"mapbox_key\": \"1234\"}', NULL),
(135, 137, 'directus_permissions', '1', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"sequence\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"sequence\", \"validation\": {}, \"permissions\": {}}', NULL),
(136, 138, 'directus_permissions', '2', '{\"role\": null, \"action\": \"create\", \"fields\": [\"*\"], \"collection\": \"contenu_sequence\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"create\", \"fields\": [\"*\"], \"collection\": \"contenu_sequence\", \"validation\": {}, \"permissions\": {}}', NULL),
(137, 140, 'directus_permissions', '3', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"contenu_sequence\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"contenu_sequence\", \"validation\": {}, \"permissions\": {}}', NULL),
(138, 141, 'directus_permissions', '4', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', NULL),
(139, 142, 'directus_collections', 'screen_sequence', '{\"icon\": \"import_export\", \"note\": null, \"sort\": null, \"color\": null, \"group\": null, \"hidden\": false, \"collapse\": \"open\", \"singleton\": false, \"collection\": \"screen_sequence\", \"sort_field\": null, \"translations\": null, \"archive_field\": null, \"archive_value\": null, \"accountability\": \"all\", \"unarchive_value\": null, \"display_template\": null, \"archive_app_filter\": true, \"item_duplication_fields\": null}', '{\"hidden\": false}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(140, 143, 'directus_collections', 'contenu_sequence', '{\"icon\": \"import_export\", \"note\": null, \"sort\": null, \"color\": null, \"group\": null, \"hidden\": false, \"collapse\": \"open\", \"singleton\": false, \"collection\": \"contenu_sequence\", \"sort_field\": null, \"translations\": null, \"archive_field\": null, \"archive_value\": null, \"accountability\": \"all\", \"unarchive_value\": null, \"display_template\": null, \"archive_app_filter\": true, \"item_duplication_fields\": null}', '{\"hidden\": false}', NULL),
(141, 144, 'directus_collections', 'contenu_sequence', '{\"icon\": \"import_export\", \"note\": null, \"sort\": null, \"color\": null, \"group\": null, \"hidden\": true, \"collapse\": \"open\", \"singleton\": false, \"collection\": \"contenu_sequence\", \"sort_field\": null, \"translations\": null, \"archive_field\": null, \"archive_value\": null, \"accountability\": \"all\", \"unarchive_value\": null, \"display_template\": null, \"archive_app_filter\": true, \"item_duplication_fields\": null}', '{\"hidden\": true}', NULL),
(142, 145, 'directus_collections', 'screen_sequence', '{\"icon\": \"import_export\", \"note\": null, \"sort\": null, \"color\": null, \"group\": null, \"hidden\": true, \"collapse\": \"open\", \"singleton\": false, \"collection\": \"screen_sequence\", \"sort_field\": null, \"translations\": null, \"archive_field\": null, \"archive_value\": null, \"accountability\": \"all\", \"unarchive_value\": null, \"display_template\": null, \"archive_app_filter\": true, \"item_duplication_fields\": null}', '{\"hidden\": true}', NULL),
(143, 146, 'directus_users', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '{\"id\": \"93da9995-99e1-42ca-9a19-6fb43f37ccd3\", \"role\": \"1b0c289b-9986-4748-b8f6-3aa3d2c22d63\", \"tags\": null, \"email\": \"admin@pixview.com\", \"theme\": \"auto\", \"title\": null, \"token\": null, \"avatar\": null, \"status\": \"active\", \"language\": \"en-US\", \"location\": null, \"password\": \"**********\", \"provider\": \"default\", \"auth_data\": null, \"last_name\": \"User\", \"last_page\": \"/settings/project\", \"first_name\": \"Admin\", \"tfa_secret\": null, \"description\": null, \"last_access\": \"2022-02-10T09:26:09.000Z\", \"email_notifications\": true, \"external_identifier\": null}', '{\"role\": \"1b0c289b-9986-4748-b8f6-3aa3d2c22d63\", \"email\": \"admin@pixview.com\", \"password\": \"**********\"}', 144),
(144, 147, 'directus_roles', '1b0c289b-9986-4748-b8f6-3aa3d2c22d63', '{\"id\": \"1b0c289b-9986-4748-b8f6-3aa3d2c22d63\", \"icon\": \"verified\", \"name\": \"Administrator\", \"users\": [\"93da9995-99e1-42ca-9a19-6fb43f37ccd3\"], \"ip_access\": null, \"app_access\": true, \"description\": \"$t:admin_description\", \"enforce_tfa\": false, \"admin_access\": true}', '{}', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_roles`
--

CREATE TABLE `directus_roles` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'supervised_user_circle',
  `description` text,
  `ip_access` text,
  `enforce_tfa` tinyint(1) NOT NULL DEFAULT '0',
  `admin_access` tinyint(1) NOT NULL DEFAULT '0',
  `app_access` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_roles`
--

INSERT INTO `directus_roles` (`id`, `name`, `icon`, `description`, `ip_access`, `enforce_tfa`, `admin_access`, `app_access`) VALUES
('1b0c289b-9986-4748-b8f6-3aa3d2c22d63', 'Administrator', 'verified', '$t:admin_description', NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `directus_sessions`
--

CREATE TABLE `directus_sessions` (
  `token` varchar(64) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `share` char(36) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_sessions`
--

INSERT INTO `directus_sessions` (`token`, `user`, `expires`, `ip`, `user_agent`, `share`) VALUES
('kRWIwEicQVUpB0fSCEZi-06RAoqFOQ0wmnB-A7sgZbHrWVobf5Tx8Vvq3YTosQhJ', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-16 14:50:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', NULL),
('-SkWjoovmKTMxQKfcOHdigplnwmNRqXItpZPaK1I-Dq-94WwU7ewDDDBv_PyP_fj', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-17 09:26:09', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_name` varchar(100) NOT NULL DEFAULT 'Directus',
  `project_url` varchar(255) DEFAULT NULL,
  `project_color` varchar(10) DEFAULT '#00C897',
  `project_logo` char(36) DEFAULT NULL,
  `public_foreground` char(36) DEFAULT NULL,
  `public_background` char(36) DEFAULT NULL,
  `public_note` text,
  `auth_login_attempts` int(10) UNSIGNED DEFAULT '25',
  `auth_password_policy` varchar(100) DEFAULT NULL,
  `storage_asset_transform` varchar(7) DEFAULT 'all',
  `storage_asset_presets` json DEFAULT NULL,
  `custom_css` text,
  `storage_default_folder` char(36) DEFAULT NULL,
  `basemaps` json DEFAULT NULL,
  `mapbox_key` varchar(255) DEFAULT NULL,
  `module_bar` json DEFAULT NULL,
  `project_descriptor` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_settings`
--

INSERT INTO `directus_settings` (`id`, `project_name`, `project_url`, `project_color`, `project_logo`, `public_foreground`, `public_background`, `public_note`, `auth_login_attempts`, `auth_password_policy`, `storage_asset_transform`, `storage_asset_presets`, `custom_css`, `storage_default_folder`, `basemaps`, `mapbox_key`, `module_bar`, `project_descriptor`) VALUES
(1, 'Pix View', NULL, '#00C897', NULL, NULL, NULL, NULL, 25, NULL, 'all', NULL, NULL, NULL, NULL, '1234', '[{\"id\": \"content\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"users\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"files\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"insights\", \"type\": \"module\", \"enabled\": false}, {\"id\": \"docs\", \"type\": \"module\", \"enabled\": true}, {\"id\": \"settings\", \"type\": \"module\", \"locked\": true, \"enabled\": true}]', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_shares`
--

CREATE TABLE `directus_shares` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `times_used` int(11) DEFAULT '0',
  `max_uses` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `directus_users`
--

CREATE TABLE `directus_users` (
  `id` char(36) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `tags` json DEFAULT NULL,
  `avatar` char(36) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en-US',
  `theme` varchar(20) DEFAULT 'auto',
  `tfa_secret` varchar(255) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'active',
  `role` char(36) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_access` timestamp NULL DEFAULT NULL,
  `last_page` varchar(255) DEFAULT NULL,
  `provider` varchar(128) NOT NULL DEFAULT 'default',
  `external_identifier` varchar(255) DEFAULT NULL,
  `auth_data` json DEFAULT NULL,
  `email_notifications` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directus_users`
--

INSERT INTO `directus_users` (`id`, `first_name`, `last_name`, `email`, `password`, `location`, `title`, `description`, `tags`, `avatar`, `language`, `theme`, `tfa_secret`, `status`, `role`, `token`, `last_access`, `last_page`, `provider`, `external_identifier`, `auth_data`, `email_notifications`) VALUES
('93da9995-99e1-42ca-9a19-6fb43f37ccd3', 'Admin', 'User', 'admin@pixview.com', '$argon2i$v=19$m=4096,t=3,p=1$X8ER224vmsRlNjsMTgVyJw$6i2kDt+FTPMH9CCgZoW5y7krYYj/FASS8tMsPMxVZz8', NULL, NULL, NULL, NULL, NULL, 'en-US', 'auto', NULL, 'active', '1b0c289b-9986-4748-b8f6-3aa3d2c22d63', NULL, '2022-02-10 09:26:09', '/settings/project', 'default', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `directus_webhooks`
--

CREATE TABLE `directus_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL DEFAULT 'POST',
  `url` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `data` tinyint(1) NOT NULL DEFAULT '1',
  `actions` varchar(100) NOT NULL,
  `collections` varchar(255) NOT NULL,
  `headers` json DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `gestionnaire`
--

CREATE TABLE `gestionnaire` (
  `id_gestionnaire` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `gestionnaire`
--

INSERT INTO `gestionnaire` (`id_gestionnaire`, `name`, `role`, `password`) VALUES
(1, 'PAF', 1, '$argon2i$v=19$m=4096,t=3,p=1$OpLfOWEAdEKISYxWAguVLA$P3hVNN4XNmi7ivl3ahF6pzDLbwrPkt1YbSVbz9ua+pg'),
(2, 'Thibaud', 0, '$argon2i$v=19$m=4096,t=3,p=1$MTTvr8dtiHOLx8EbUf1QKg$Rt4AGA8f/DO6ZMJFeqqRM5E89VtKxcQ5G6x5IaqaQgo');

-- --------------------------------------------------------

--
-- Structure de la table `pool`
--

CREATE TABLE `pool` (
  `id_pool` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `gestionnaire_id_gestionnaire` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pool`
--

INSERT INTO `pool` (`id_pool`, `name`, `gestionnaire_id_gestionnaire`) VALUES
(1, 'RDC', 1),
(2, 'Étage 1', 2);

-- --------------------------------------------------------

--
-- Structure de la table `screen`
--

CREATE TABLE `screen` (
  `id_screen` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `pool_id_pool` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `screen`
--

INSERT INTO `screen` (`id_screen`, `name`, `ip_address`, `pool_id_pool`) VALUES
(1, 'Screen RDC 1', '192.168.0.1', 1),
(2, 'Screen RDC 2', '192.168.0.2', 1),
(3, 'Screen porte entrée/sortie', '192.168.0.3', 1),
(4, 'Screen étage 1', '192.168.1.1', 2);

-- --------------------------------------------------------

--
-- Structure de la table `screen_sequence`
--

CREATE TABLE `screen_sequence` (
  `id` int(10) UNSIGNED NOT NULL,
  `screen_id_screen` int(10) UNSIGNED DEFAULT NULL,
  `sequence_id_sequence` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `screen_sequence`
--

INSERT INTO `screen_sequence` (`id`, `screen_id_screen`, `sequence_id_sequence`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 2),
(4, 4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sequence`
--

CREATE TABLE `sequence` (
  `id_sequence` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sequence`
--

INSERT INTO `sequence` (`id_sequence`, `title`, `duration`, `date_start`, `date_end`) VALUES
(1, 'Base', 40, NULL, NULL),
(2, 'Bonjour & Au revoir', 6, NULL, NULL),
(3, 'Administratif', 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `id_theme` int(10) UNSIGNED NOT NULL,
  `style` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contenu`
--
ALTER TABLE `contenu`
  ADD PRIMARY KEY (`id_contenu`);

--
-- Index pour la table `contenu_sequence`
--
ALTER TABLE `contenu_sequence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contenu_sequence_sequence_id_sequence_foreign` (`sequence_id_sequence`),
  ADD KEY `contenu_sequence_contenu_id_contenu_foreign` (`contenu_id_contenu`);

--
-- Index pour la table `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_activity_collection_foreign` (`collection`);

--
-- Index pour la table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD PRIMARY KEY (`collection`),
  ADD KEY `directus_collections_group_foreign` (`group`);

--
-- Index pour la table `directus_dashboards`
--
ALTER TABLE `directus_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_dashboards_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_fields_collection_foreign` (`collection`);

--
-- Index pour la table `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_files_uploaded_by_foreign` (`uploaded_by`),
  ADD KEY `directus_files_modified_by_foreign` (`modified_by`),
  ADD KEY `directus_files_folder_foreign` (`folder`);

--
-- Index pour la table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_folders_parent_foreign` (`parent`);

--
-- Index pour la table `directus_migrations`
--
ALTER TABLE `directus_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_notifications_recipient_foreign` (`recipient`),
  ADD KEY `directus_notifications_sender_foreign` (`sender`);

--
-- Index pour la table `directus_panels`
--
ALTER TABLE `directus_panels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_panels_dashboard_foreign` (`dashboard`),
  ADD KEY `directus_panels_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_permissions_collection_foreign` (`collection`),
  ADD KEY `directus_permissions_role_foreign` (`role`);

--
-- Index pour la table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_presets_collection_foreign` (`collection`),
  ADD KEY `directus_presets_user_foreign` (`user`),
  ADD KEY `directus_presets_role_foreign` (`role`);

--
-- Index pour la table `directus_relations`
--
ALTER TABLE `directus_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_relations_many_collection_foreign` (`many_collection`),
  ADD KEY `directus_relations_one_collection_foreign` (`one_collection`);

--
-- Index pour la table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_revisions_collection_foreign` (`collection`),
  ADD KEY `directus_revisions_parent_foreign` (`parent`),
  ADD KEY `directus_revisions_activity_foreign` (`activity`);

--
-- Index pour la table `directus_roles`
--
ALTER TABLE `directus_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `directus_sessions_user_foreign` (`user`),
  ADD KEY `directus_sessions_share_foreign` (`share`);

--
-- Index pour la table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_settings_project_logo_foreign` (`project_logo`),
  ADD KEY `directus_settings_public_foreground_foreign` (`public_foreground`),
  ADD KEY `directus_settings_public_background_foreign` (`public_background`),
  ADD KEY `directus_settings_storage_default_folder_foreign` (`storage_default_folder`);

--
-- Index pour la table `directus_shares`
--
ALTER TABLE `directus_shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_shares_collection_foreign` (`collection`),
  ADD KEY `directus_shares_role_foreign` (`role`),
  ADD KEY `directus_shares_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_external_identifier_unique` (`external_identifier`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD UNIQUE KEY `directus_users_token_unique` (`token`),
  ADD KEY `directus_users_role_foreign` (`role`);

--
-- Index pour la table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gestionnaire`
--
ALTER TABLE `gestionnaire`
  ADD PRIMARY KEY (`id_gestionnaire`);

--
-- Index pour la table `pool`
--
ALTER TABLE `pool`
  ADD PRIMARY KEY (`id_pool`),
  ADD KEY `pool_gestionnaire_id_gestionnaire_foreign` (`gestionnaire_id_gestionnaire`);

--
-- Index pour la table `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`id_screen`),
  ADD KEY `screen_pool_id_pool_foreign` (`pool_id_pool`);

--
-- Index pour la table `screen_sequence`
--
ALTER TABLE `screen_sequence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `screen_sequence_sequence_id_sequence_foreign` (`sequence_id_sequence`),
  ADD KEY `screen_sequence_screen_id_screen_foreign` (`screen_id_screen`);

--
-- Index pour la table `sequence`
--
ALTER TABLE `sequence`
  ADD PRIMARY KEY (`id_sequence`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id_theme`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contenu`
--
ALTER TABLE `contenu`
  MODIFY `id_contenu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `contenu_sequence`
--
ALTER TABLE `contenu_sequence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT pour la table `directus_fields`
--
ALTER TABLE `directus_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `directus_presets`
--
ALTER TABLE `directus_presets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `directus_relations`
--
ALTER TABLE `directus_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT pour la table `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gestionnaire`
--
ALTER TABLE `gestionnaire`
  MODIFY `id_gestionnaire` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `pool`
--
ALTER TABLE `pool`
  MODIFY `id_pool` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `screen`
--
ALTER TABLE `screen`
  MODIFY `id_screen` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `screen_sequence`
--
ALTER TABLE `screen_sequence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sequence`
--
ALTER TABLE `sequence`
  MODIFY `id_sequence` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
  MODIFY `id_theme` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
