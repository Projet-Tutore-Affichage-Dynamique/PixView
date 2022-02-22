-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : database:3306
-- Généré le : mar. 22 fév. 2022 à 17:14
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
(1, 'gestes barrière', 10, 'md', '# Covid 19\n\nles gestes barière!\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/98ebf900-7e03-411b-8932-0f2ae831e18e)'),
(2, 'Don du sang', 5, 'md', '# Don du sang\n\nmais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/c31c4a6e-c981-4f0d-b25d-efb9393bfbd6)'),
(6, 'lettre', 5, 'pdf', 'http://docketu.iutnc.univ-lorraine.fr:62340/assets/89f82914-c6c6-407f-b6d6-c1ff4a895ce2'),
(5, 'Café Théatre', 5, 'md', '# Thème Café Théatre cette semaine \n\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500.\n\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/006663eb-3635-45bf-b852-c58d3d0c9dfc)');

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
(11, 4, 1),
(12, 6, 3);

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
(147, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-10 09:35:11', '172.26.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_roles', '1b0c289b-9986-4748-b8f6-3aa3d2c22d63', NULL),
(148, 'login', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 18:46:29', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_users', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL),
(149, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 19:42:17', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'contenu', '2', NULL),
(150, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 19:42:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '16', NULL),
(151, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 19:42:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '17', NULL),
(152, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 19:42:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '32', NULL),
(153, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 19:42:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '18', NULL),
(154, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 19:42:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '21', NULL),
(155, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 19:42:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '23', NULL),
(156, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:30:47', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '35', NULL),
(157, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:30:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '16', NULL),
(158, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:30:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '17', NULL),
(159, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:30:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '35', NULL),
(160, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:30:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '18', NULL),
(161, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:30:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '21', NULL),
(162, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:30:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_fields', '23', NULL),
(163, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:31:58', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_files', '149c6afa-b1db-4ee7-af44-c42d3717073c', NULL),
(164, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:33:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'contenu', '1', NULL),
(165, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:33:29', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'contenu', '1', NULL),
(166, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:34:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_files', '3cc906c0-f38e-4787-b6e1-856ea1db4d7d', NULL),
(167, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:35:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'contenu', '2', NULL),
(168, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:35:27', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'contenu', '2', NULL),
(169, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:37:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_files', 'a8af5b59-b697-4ee8-adc8-4311596f744f', NULL),
(170, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:37:50', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'contenu', '5', NULL),
(171, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:40:24', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'sequence', '1', NULL),
(172, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:41:39', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'sequence', '2', NULL),
(173, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:42:26', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'sequence', '3', NULL),
(174, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-11 21:47:24', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'directus_permissions', '5', NULL),
(175, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-14 09:54:58', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'contenu', '1', NULL),
(176, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-14 09:56:53', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', 'contenu', '1', NULL),
(177, 'login', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:49:17', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'directus_users', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL),
(178, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:53:10', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'directus_fields', '36', NULL),
(179, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:54:24', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen_sequence', '5', NULL),
(180, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:54:24', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '5', NULL),
(181, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:58:29', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen_sequence', '6', NULL),
(182, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:58:29', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen_sequence', '7', NULL),
(183, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:58:29', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '6', NULL),
(184, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:58:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '1', NULL),
(185, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:58:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '2', NULL),
(186, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:58:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '3', NULL),
(187, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:58:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '4', NULL),
(188, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 18:59:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '7', NULL),
(189, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:02:30', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '8', NULL),
(190, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:03:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'pool', '2', NULL),
(191, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:03:25', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'pool', '3', NULL),
(192, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:03:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'pool', '2', NULL),
(193, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:03:50', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'pool', '3', NULL),
(194, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:04:13', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'pool', '4', NULL),
(195, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:05:18', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen_sequence', '8', NULL),
(196, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:05:18', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '9', NULL),
(197, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:05:49', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '5', NULL),
(198, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:06:04', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '5', NULL),
(199, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:06:34', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '6', NULL),
(200, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:06:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen_sequence', '9', NULL),
(201, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:06:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen_sequence', '10', NULL),
(202, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:06:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen_sequence', '11', NULL),
(203, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:06:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'screen', '7', NULL),
(204, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-21 19:07:16', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', 'pool', '1', NULL),
(205, 'login', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:35:24', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_users', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL),
(206, 'login', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:35:33', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL);
INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(207, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:35:40', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '6', NULL),
(208, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:35:42', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '7', NULL),
(209, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:35:44', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '8', NULL),
(210, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:35:47', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '9', NULL),
(211, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:35:55', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '9', NULL),
(212, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:47:10', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', '8f40cac4-6c34-4f80-87bd-49b67579c2cf', NULL),
(213, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:52:12', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_users', 'd57b00a3-94cc-4b8e-b747-b09972c29329', NULL),
(214, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_roles', '98ec901d-6120-4adf-8bf4-36a0af2077a8', NULL),
(215, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '10', NULL),
(216, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '11', NULL),
(217, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '12', NULL),
(218, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '13', NULL),
(219, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '14', NULL),
(220, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '15', NULL),
(221, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '16', NULL),
(222, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '17', NULL),
(223, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '18', NULL),
(224, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '19', NULL),
(225, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '20', NULL),
(226, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '21', NULL),
(227, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '22', NULL),
(228, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '23', NULL),
(229, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '24', NULL),
(230, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '25', NULL),
(231, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '26', NULL),
(232, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '27', NULL),
(233, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '28', NULL),
(234, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '29', NULL),
(235, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '30', NULL),
(236, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '31', NULL),
(237, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:54:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '32', NULL),
(238, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:01:16', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', NULL),
(239, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:01:31', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', NULL),
(240, 'login', '5968c4a4-aff4-49c7-8343-e1fdcb794423', '2022-02-22 15:01:56', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', NULL),
(241, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:02:32', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_roles', '98ec901d-6120-4adf-8bf4-36a0af2077a8', NULL),
(242, 'login', 'd57b00a3-94cc-4b8e-b747-b09972c29329', '2022-02-22 15:03:13', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', 'd57b00a3-94cc-4b8e-b747-b09972c29329', NULL),
(243, 'login', 'd57b00a3-94cc-4b8e-b747-b09972c29329', '2022-02-22 15:03:45', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', 'd57b00a3-94cc-4b8e-b747-b09972c29329', NULL),
(244, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:04:31', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', NULL),
(245, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:04:58', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', NULL),
(246, 'login', 'd57b00a3-94cc-4b8e-b747-b09972c29329', '2022-02-22 15:05:06', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', 'd57b00a3-94cc-4b8e-b747-b09972c29329', NULL),
(247, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:05:15', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_users', 'd57b00a3-94cc-4b8e-b747-b09972c29329', NULL),
(248, 'login', 'd57b00a3-94cc-4b8e-b747-b09972c29329', '2022-02-22 15:05:37', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', 'd57b00a3-94cc-4b8e-b747-b09972c29329', NULL),
(249, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:06:39', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '33', NULL),
(250, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:07:40', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '34', NULL),
(251, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:07:42', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '35', NULL),
(252, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:08:02', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '36', NULL),
(253, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:16:30', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_roles', 'e49a459e-6aa7-4be6-a08e-5754fbacb465', NULL),
(254, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:16:30', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', NULL),
(255, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:17:27', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_permissions', '37', NULL),
(256, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:17:28', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_permissions', '38', NULL),
(257, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:17:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_permissions', '39', NULL),
(258, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:17:30', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_permissions', '40', NULL),
(259, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:17:49', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', NULL),
(260, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:17:49', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'directus_roles', 'e49a459e-6aa7-4be6-a08e-5754fbacb465', NULL),
(261, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:26:27', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '41', NULL),
(262, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:27:01', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '41', NULL),
(263, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:27:23', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '42', NULL),
(264, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:28:54', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '42', NULL),
(265, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 15:28:55', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_permissions', '43', NULL),
(266, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:23:46', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', '006663eb-3635-45bf-b852-c58d3d0c9dfc', NULL),
(267, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:23:46', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', 'a1c8b7f4-562b-4f02-a5e8-43a309bf1558', NULL),
(268, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:23:46', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', 'c31c4a6e-c981-4f0d-b25d-efb9393bfbd6', NULL),
(269, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:24:09', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', '149c6afa-b1db-4ee7-af44-c42d3717073c', NULL),
(270, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:24:09', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', '3cc906c0-f38e-4787-b6e1-856ea1db4d7d', NULL),
(271, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:24:09', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', 'a8af5b59-b697-4ee8-adc8-4311596f744f', NULL),
(272, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:24:28', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', '98ebf900-7e03-411b-8932-0f2ae831e18e', NULL),
(273, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:24:31', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '1', NULL),
(274, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:25:06', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '2', NULL),
(275, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:25:24', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '5', NULL),
(276, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:37:02', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '4', NULL),
(277, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:37:15', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '3', NULL),
(278, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:37:36', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '1', NULL),
(279, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:44:56', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '6', NULL),
(280, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:48:21', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu_sequence', '12', NULL),
(281, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:48:21', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '6', NULL),
(282, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:59:16', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', '89f82914-c6c6-407f-b6d6-c1ff4a895ce2', NULL),
(283, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:59:16', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', 'f734547b-3064-4196-bfef-ab2d803e268d', NULL),
(284, 'create', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:59:16', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', 'dc9cbd34-487f-4d9b-921f-8d9b6e847c02', NULL),
(285, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:59:31', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', 'dc9cbd34-487f-4d9b-921f-8d9b6e847c02', NULL),
(286, 'delete', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:59:31', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_files', 'f734547b-3064-4196-bfef-ab2d803e268d', NULL),
(287, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 17:00:16', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '6', NULL),
(288, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 17:00:52', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '6', NULL),
(289, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 17:05:41', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '6', NULL),
(290, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 17:10:51', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_fields', '18', NULL),
(291, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 17:11:54', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'directus_fields', '18', NULL),
(292, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 17:12:06', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '1', NULL),
(293, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 17:12:29', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '2', NULL),
(294, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 17:12:39', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '5', NULL),
(295, 'update', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 17:12:47', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', 'contenu', '2', NULL);

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
(18, 'contenu', 'duration', NULL, 'input', '{\"max\": 30, \"min\": 5, \"step\": 5}', NULL, NULL, 0, 0, 4, 'full', NULL, NULL, NULL, 1, NULL),
(21, 'contenu', 'type', NULL, 'select-dropdown', '{\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}, {\"text\": \"markdown\", \"value\": \"md\"}, {\"text\": \"texte\", \"value\": \"txt\"}]}', NULL, NULL, 0, 0, 5, 'full', NULL, NULL, NULL, 1, NULL),
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
(35, 'contenu', 'content', NULL, 'input-rich-text-md', NULL, NULL, NULL, 0, 0, 3, 'full', NULL, NULL, NULL, 0, NULL),
(33, 'theme', 'id_theme', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(34, 'theme', 'style', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL),
(36, 'screen', 'uuid_screen', 'uuid', 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL);

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

--
-- Déchargement des données de la table `directus_files`
--

INSERT INTO `directus_files` (`id`, `storage`, `filename_disk`, `filename_download`, `title`, `type`, `folder`, `uploaded_by`, `uploaded_on`, `modified_by`, `modified_on`, `charset`, `filesize`, `width`, `height`, `duration`, `embed`, `description`, `location`, `tags`, `metadata`) VALUES
('89f82914-c6c6-407f-b6d6-c1ff4a895ce2', 'local', '89f82914-c6c6-407f-b6d6-c1ff4a895ce2.pdf', 'carte_ski_de_fond.pdf', 'Carte Ski De Fond', 'application/pdf', NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:59:16', NULL, '2022-02-22 16:59:18', NULL, 659443, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('98ebf900-7e03-411b-8932-0f2ae831e18e', 'local', '98ebf900-7e03-411b-8932-0f2ae831e18e.jpg', 'panneau-les-4-gestes-barrieres.jpg', 'Panneau Les 4 Gestes Barrieres', 'image/jpeg', NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:24:28', NULL, '2022-02-22 16:24:29', NULL, 114568, 1000, 1000, NULL, NULL, NULL, NULL, NULL, NULL),
('8f40cac4-6c34-4f80-87bd-49b67579c2cf', 'local', '8f40cac4-6c34-4f80-87bd-49b67579c2cf.tif', 'DSC_8099_cleanup.tif', 'Dsc 8099 Cleanup', 'image/tiff', NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 14:47:10', NULL, '2022-02-22 14:47:12', NULL, 540983, 720, 480, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\": {\"Filter\": \"Adaptive\", \"BitDepth\": 8, \"ColorType\": \"RGB with Alpha\", \"Interlace\": \"Noninterlaced\", \"ImageWidth\": 720, \"Compression\": \"Deflate/Inflate\", \"ImageHeight\": 480}}'),
('006663eb-3635-45bf-b852-c58d3d0c9dfc', 'local', '006663eb-3635-45bf-b852-c58d3d0c9dfc.jpg', 'cage_theatre.jpg', 'Cage Theatre', 'image/jpeg', NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:23:46', NULL, '2022-02-22 16:23:47', NULL, 12994, 800, 600, NULL, NULL, NULL, NULL, NULL, NULL),
('a1c8b7f4-562b-4f02-a5e8-43a309bf1558', 'local', 'a1c8b7f4-562b-4f02-a5e8-43a309bf1558.jpg', 'panneau-les-4-gestes-barrieres.jpg', 'Panneau Les 4 Gestes Barrieres', 'image/jpeg', NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:23:46', NULL, '2022-02-22 16:23:47', NULL, 114568, 1000, 1000, NULL, NULL, NULL, NULL, NULL, NULL),
('c31c4a6e-c981-4f0d-b25d-efb9393bfbd6', 'local', 'c31c4a6e-c981-4f0d-b25d-efb9393bfbd6.jpg', 'don-sang-campagne-F.jpg', 'Don Sang Campagne F', 'image/jpeg', NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-22 16:23:46', NULL, '2022-02-22 16:23:47', NULL, 63304, 1279, 654, NULL, NULL, NULL, NULL, NULL, NULL);

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
(4, NULL, 'contenu', 'read', '{}', '{}', NULL, '*'),
(5, NULL, 'directus_files', 'read', '{}', '{}', NULL, '*'),
(6, NULL, 'pool', 'read', '{}', '{}', NULL, '*'),
(7, NULL, 'screen', 'read', '{}', '{}', NULL, '*'),
(8, NULL, 'screen_sequence', 'read', '{}', '{}', NULL, '*'),
(10, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_files', 'create', '{}', NULL, NULL, '*'),
(11, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_files', 'read', '{}', NULL, NULL, '*'),
(12, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_files', 'update', '{}', NULL, NULL, '*'),
(13, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_files', 'delete', '{}', NULL, NULL, '*'),
(14, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_dashboards', 'create', '{}', NULL, NULL, '*'),
(15, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_dashboards', 'read', '{}', NULL, NULL, '*'),
(16, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_dashboards', 'update', '{}', NULL, NULL, '*'),
(17, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_dashboards', 'delete', '{}', NULL, NULL, '*'),
(18, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_panels', 'create', '{}', NULL, NULL, '*'),
(19, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_panels', 'read', '{}', NULL, NULL, '*'),
(20, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_panels', 'update', '{}', NULL, NULL, '*'),
(21, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_panels', 'delete', '{}', NULL, NULL, '*'),
(22, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_folders', 'create', '{}', NULL, NULL, '*'),
(23, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_folders', 'read', '{}', NULL, NULL, '*'),
(24, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_folders', 'update', '{}', NULL, NULL, '*'),
(25, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_folders', 'delete', '{}', NULL, NULL, NULL),
(26, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_users', 'read', '{}', NULL, NULL, NULL),
(27, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_users', 'update', '{\"id\": {\"_eq\": \"$CURRENT_USER\"}}', NULL, NULL, 'first_name,last_name,email,password,location,title,description,avatar,language,theme'),
(28, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_roles', 'read', '{}', NULL, NULL, '*'),
(29, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_shares', 'read', '{\"_or\": [{\"role\": {\"_eq\": \"$CURRENT_ROLE\"}}, {\"role\": {\"_null\": true}}]}', NULL, NULL, '*'),
(30, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_shares', 'create', '{}', NULL, NULL, '*'),
(31, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_shares', 'update', '{\"user_created\": {\"_eq\": \"$CURRENT_USER\"}}', NULL, NULL, '*'),
(32, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'directus_shares', 'delete', '{\"user_created\": {\"_eq\": \"$CURRENT_USER\"}}', NULL, NULL, '*'),
(33, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'contenu', 'read', '{}', '{}', NULL, '*'),
(34, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'contenu', 'update', '{}', '{}', NULL, '*'),
(35, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'contenu', 'delete', '{}', '{}', NULL, '*'),
(36, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'contenu', 'create', '{}', '{}', NULL, '*'),
(37, 'e49a459e-6aa7-4be6-a08e-5754fbacb465', 'contenu', 'create', '{}', '{}', NULL, '*'),
(38, 'e49a459e-6aa7-4be6-a08e-5754fbacb465', 'contenu', 'read', '{}', '{}', NULL, '*'),
(39, 'e49a459e-6aa7-4be6-a08e-5754fbacb465', 'contenu', 'update', '{}', '{}', NULL, '*'),
(40, 'e49a459e-6aa7-4be6-a08e-5754fbacb465', 'contenu', 'delete', '{}', '{}', NULL, '*'),
(43, '98ec901d-6120-4adf-8bf4-36a0af2077a8', 'sequence', 'read', '{}', '{}', NULL, '*');

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
(1, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'screen', NULL, NULL, '{\"tabular\": {\"page\": 1, \"sort\": [\"name\"]}}', '{\"tabular\": {\"widths\": {\"name\": 104, \"ip_address\": 142, \"uuid_screen\": 373, \"pool_id_pool\": 135}}}', NULL, NULL),
(2, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'gestionnaire', NULL, NULL, '{\"tabular\": {\"page\": 1}}', NULL, NULL, NULL),
(3, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'contenu', NULL, NULL, '{\"tabular\": {\"page\": 1, \"sort\": [\"id_contenu\"], \"fields\": [\"id_contenu\", \"title\", \"content\", \"duration\", \"type\"]}}', NULL, NULL, NULL),
(4, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'screen', NULL, NULL, '{\"tabular\": {\"page\": 1, \"sort\": [\"name\"]}}', '{\"tabular\": {\"widths\": {\"name\": 104, \"ip_address\": 142, \"uuid_screen\": 373, \"pool_id_pool\": 135}}}', NULL, NULL),
(5, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'pool', NULL, NULL, '{\"tabular\": {\"page\": 1}}', NULL, NULL, NULL),
(6, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'contenu_sequence', NULL, NULL, '{\"tabular\": {\"page\": 1}}', NULL, NULL, NULL),
(7, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'directus_users', NULL, 'cards', '{\"cards\": {\"page\": 1, \"sort\": [\"email\"]}}', '{\"cards\": {\"icon\": \"account_circle\", \"size\": 4, \"title\": \"{{ first_name }} {{ last_name }}\", \"subtitle\": \"{{ email }}\"}}', NULL, NULL),
(8, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'directus_users', NULL, 'cards', '{\"cards\": {\"page\": 1, \"sort\": [\"email\"]}}', '{\"cards\": {\"icon\": \"account_circle\", \"size\": 4, \"title\": \"{{ first_name }} {{ last_name }}\", \"subtitle\": \"{{ email }}\"}}', NULL, NULL),
(9, NULL, '5968c4a4-aff4-49c7-8343-e1fdcb794423', NULL, 'directus_users', NULL, 'cards', '{\"cards\": {\"page\": 1, \"sort\": [\"email\"]}}', '{\"cards\": {\"icon\": \"account_circle\", \"size\": 4, \"title\": \"{{ first_name }} {{ last_name }}\", \"subtitle\": \"{{ email }}\"}}', NULL, NULL),
(10, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'theme', NULL, NULL, '{\"tabular\": {\"page\": 1}}', NULL, NULL, NULL),
(11, NULL, '93da9995-99e1-42ca-9a19-6fb43f37ccd3', NULL, 'sequence', NULL, NULL, '{\"tabular\": {\"page\": 1}}', NULL, NULL, NULL),
(12, NULL, 'd57b00a3-94cc-4b8e-b747-b09972c29329', NULL, 'sequence', NULL, 'tabular', '{\"tabular\": {\"page\": 1, \"fields\": [\"id_sequence\", \"title\", \"duration\", \"date_start\", \"date_end\"]}}', '{\"tabular\": {\"widths\": {\"date_end\": 203}}, \"calendar\": {\"viewInfo\": {\"type\": \"dayGridMonth\", \"startDateStr\": \"2022-02-01T00:00:00+01:00\"}}}', NULL, NULL);

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
(144, 147, 'directus_roles', '1b0c289b-9986-4748-b8f6-3aa3d2c22d63', '{\"id\": \"1b0c289b-9986-4748-b8f6-3aa3d2c22d63\", \"icon\": \"verified\", \"name\": \"Administrator\", \"users\": [\"93da9995-99e1-42ca-9a19-6fb43f37ccd3\"], \"ip_access\": null, \"app_access\": true, \"description\": \"$t:admin_description\", \"enforce_tfa\": false, \"admin_access\": true}', '{}', NULL),
(145, 149, 'contenu', '2', '{\"type\": \"txt\", \"title\": \"Message Civid-19\", \"content\": \"À la prochaine !\", \"duration\": 3, \"id_contenu\": 2, \"sequence_has_contenu\": [3, 5]}', '{\"title\": \"Message Civid-19\"}', NULL),
(146, 150, 'directus_fields', '16', '{\"id\": 16, \"note\": null, \"sort\": 1, \"field\": \"id_contenu\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, \"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 1, \"field\": \"id_contenu\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(147, 151, 'directus_fields', '17', '{\"id\": 17, \"note\": null, \"sort\": 2, \"field\": \"title\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 2, \"field\": \"title\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(148, 152, 'directus_fields', '32', '{\"id\": 32, \"note\": null, \"sort\": 3, \"field\": \"content\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 3, \"field\": \"content\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(149, 153, 'directus_fields', '18', '{\"id\": 18, \"note\": null, \"sort\": 4, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 4, \"field\": \"duration\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(150, 154, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 5, \"field\": \"type\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}, {\"text\": \"markdown\", \"value\": \"md\"}, {\"text\": \"texte\", \"value\": \"txt\"}]}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 5, \"field\": \"type\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(151, 155, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 6, \"field\": \"sequence_has_contenu\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 6, \"field\": \"sequence_has_contenu\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(152, 156, 'directus_fields', '35', '{\"field\": \"content\", \"special\": null, \"interface\": \"input-rich-text-md\", \"collection\": \"contenu\"}', '{\"field\": \"content\", \"special\": null, \"interface\": \"input-rich-text-md\", \"collection\": \"contenu\"}', NULL),
(153, 157, 'directus_fields', '16', '{\"id\": 16, \"note\": null, \"sort\": 1, \"field\": \"id_contenu\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, \"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 1, \"field\": \"id_contenu\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(154, 158, 'directus_fields', '17', '{\"id\": 17, \"note\": null, \"sort\": 2, \"field\": \"title\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 2, \"field\": \"title\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(155, 159, 'directus_fields', '35', '{\"id\": 35, \"note\": null, \"sort\": 3, \"field\": \"content\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input-rich-text-md\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 3, \"field\": \"content\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(156, 160, 'directus_fields', '18', '{\"id\": 18, \"note\": null, \"sort\": 4, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 4, \"field\": \"duration\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(157, 161, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 5, \"field\": \"type\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"choices\": [{\"text\": \"image\", \"value\": \"img\"}, {\"text\": \"pdf\", \"value\": \"pdf\"}, {\"text\": \"markdown\", \"value\": \"md\"}, {\"text\": \"texte\", \"value\": \"txt\"}]}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 5, \"field\": \"type\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(158, 162, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 6, \"field\": \"sequence_has_contenu\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"sort\": 6, \"field\": \"sequence_has_contenu\", \"group\": null, \"collection\": \"contenu\"}', NULL),
(159, 163, 'directus_files', '149c6afa-b1db-4ee7-af44-c42d3717073c', '{\"type\": \"image/jpeg\", \"title\": \"Panneau Les 4 Gestes Barrieres\", \"storage\": \"local\", \"filename_download\": \"panneau-les-4-gestes-barrieres.jpg\"}', '{\"type\": \"image/jpeg\", \"title\": \"Panneau Les 4 Gestes Barrieres\", \"storage\": \"local\", \"filename_download\": \"panneau-les-4-gestes-barrieres.jpg\"}', NULL),
(160, 164, 'contenu', '1', '{\"type\": \"txt\", \"title\": \"Bonjour\", \"content\": \"# Covid 19\\n\\nles gestes bariere!\\n[img](http://docketu.iutnc.univ-lorraine.fr:62340/assets/149c6afa-b1db-4ee7-af44-c42d3717073c)\", \"duration\": 3, \"id_contenu\": 1, \"sequence_has_contenu\": [4, 6]}', '{\"content\": \"# Covid 19\\n\\nles gestes bariere!\\n[img](http://docketu.iutnc.univ-lorraine.fr:62340/assets/149c6afa-b1db-4ee7-af44-c42d3717073c)\"}', NULL),
(161, 165, 'contenu', '1', '{\"type\": \"txt\", \"title\": \"gestes barrière\", \"content\": \"# Covid 19\\n\\nles gestes barière!\\n[img](http://docketu.iutnc.univ-lorraine.fr:62340/assets/149c6afa-b1db-4ee7-af44-c42d3717073c)\", \"duration\": 3, \"id_contenu\": 1, \"sequence_has_contenu\": [4, 6]}', '{\"title\": \"gestes barrière\", \"content\": \"# Covid 19\\n\\nles gestes barière!\\n[img](http://docketu.iutnc.univ-lorraine.fr:62340/assets/149c6afa-b1db-4ee7-af44-c42d3717073c)\"}', NULL),
(162, 166, 'directus_files', '3cc906c0-f38e-4787-b6e1-856ea1db4d7d', '{\"type\": \"image/jpeg\", \"title\": \"Don Sang Campagne F\", \"storage\": \"local\", \"filename_download\": \"don-sang-campagne-F.jpg\"}', '{\"type\": \"image/jpeg\", \"title\": \"Don Sang Campagne F\", \"storage\": \"local\", \"filename_download\": \"don-sang-campagne-F.jpg\"}', NULL),
(163, 167, 'contenu', '2', '{\"type\": \"md\", \"title\": \"Message Civid-19\", \"content\": \"# Don du sang\\n\\nmais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\\n![dons](http://docketu.iutnc.univ-lorraine.fr:62340/assets/3cc906c0-f38e-4787-b6e1-856ea1db4d7d)\", \"duration\": 3, \"id_contenu\": 2, \"sequence_has_contenu\": [3, 5]}', '{\"type\": \"md\", \"content\": \"# Don du sang\\n\\nmais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\\n![dons](http://docketu.iutnc.univ-lorraine.fr:62340/assets/3cc906c0-f38e-4787-b6e1-856ea1db4d7d)\"}', NULL),
(164, 168, 'contenu', '2', '{\"type\": \"md\", \"title\": \"Don du sang\", \"content\": \"# Don du sang\\n\\nmais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\\n![dons](http://docketu.iutnc.univ-lorraine.fr:62340/assets/3cc906c0-f38e-4787-b6e1-856ea1db4d7d)\", \"duration\": 3, \"id_contenu\": 2, \"sequence_has_contenu\": [3, 5]}', '{\"title\": \"Don du sang\"}', NULL),
(165, 169, 'directus_files', 'a8af5b59-b697-4ee8-adc8-4311596f744f', '{\"type\": \"image/jpeg\", \"title\": \"88f21377e3c927f68d7d1eaf4db7b7a0\", \"storage\": \"local\", \"filename_download\": \"88f21377e3c927f68d7d1eaf4db7b7a0.jpg\"}', '{\"type\": \"image/jpeg\", \"title\": \"88f21377e3c927f68d7d1eaf4db7b7a0\", \"storage\": \"local\", \"filename_download\": \"88f21377e3c927f68d7d1eaf4db7b7a0.jpg\"}', NULL),
(166, 170, 'contenu', '5', '{\"type\": \"md\", \"title\": \"Café Théatre\", \"content\": \"# Thème Café Théatre cette semaine \\n\\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500.\\n\\n![cafe](http://docketu.iutnc.univ-lorraine.fr:62340/assets/a8af5b59-b697-4ee8-adc8-4311596f744f)\", \"duration\": 4, \"id_contenu\": 5, \"sequence_has_contenu\": [7]}', '{\"title\": \"Café Théatre\", \"content\": \"# Thème Café Théatre cette semaine \\n\\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500.\\n\\n![cafe](http://docketu.iutnc.univ-lorraine.fr:62340/assets/a8af5b59-b697-4ee8-adc8-4311596f744f)\"}', NULL),
(167, 171, 'sequence', '1', '{\"title\": \"campagne prévention Covid 19\", \"date_end\": \"2022-02-17T12:00:00\", \"duration\": 40, \"date_start\": \"2022-02-13T12:00:00\", \"id_sequence\": 1}', '{\"title\": \"campagne prévention Covid 19\", \"date_end\": \"2022-02-17T12:00:00\", \"date_start\": \"2022-02-13T12:00:00\"}', NULL),
(168, 172, 'sequence', '2', '{\"title\": \"Activité culturel mois de février\", \"date_end\": \"2022-02-28T12:00:00\", \"duration\": 6, \"date_start\": \"2022-02-01T12:00:00\", \"id_sequence\": 2}', '{\"title\": \"Activité culturel mois de février\", \"date_end\": \"2022-02-28T12:00:00\", \"date_start\": \"2022-02-01T12:00:00\"}', NULL),
(169, 173, 'sequence', '3', '{\"title\": \"campagne don du sang\", \"date_end\": \"2022-02-24T12:00:00\", \"duration\": 30, \"date_start\": \"2022-02-20T12:00:00\", \"id_sequence\": 3}', '{\"title\": \"campagne don du sang\", \"date_end\": \"2022-02-24T12:00:00\", \"date_start\": \"2022-02-20T12:00:00\"}', NULL),
(170, 174, 'directus_permissions', '5', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"directus_files\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"directus_files\", \"validation\": {}, \"permissions\": {}}', NULL),
(171, 175, 'contenu', '1', '{\"type\": \"txt\", \"title\": \"gestes barrière\", \"content\": \"# Covid 19\\n\\nles gestes barière!\\n![img](http://docketu.iutnc.univ-lorraine.fr:62340/assets/149c6afa-b1db-4ee7-af44-c42d3717073c)\", \"duration\": 3, \"id_contenu\": 1, \"sequence_has_contenu\": [4, 6]}', '{\"content\": \"# Covid 19\\n\\nles gestes barière!\\n![img](http://docketu.iutnc.univ-lorraine.fr:62340/assets/149c6afa-b1db-4ee7-af44-c42d3717073c)\"}', NULL),
(172, 176, 'contenu', '1', '{\"type\": \"txt\", \"title\": \"gestes barrière\", \"content\": \"# Covid 19\\n\\nles gestes barière!\\n[img](http://docketu.iutnc.univ-lorraine.fr:62340/assets/149c6afa-b1db-4ee7-af44-c42d3717073c)\", \"duration\": 3, \"id_contenu\": 1, \"sequence_has_contenu\": [4, 6]}', '{\"content\": \"# Covid 19\\n\\nles gestes barière!\\n[img](http://docketu.iutnc.univ-lorraine.fr:62340/assets/149c6afa-b1db-4ee7-af44-c42d3717073c)\"}', NULL),
(173, 178, 'directus_fields', '36', '{\"field\": \"uuid_screen\", \"special\": \"uuid\", \"interface\": \"input\", \"collection\": \"screen\"}', '{\"field\": \"uuid_screen\", \"special\": \"uuid\", \"interface\": \"input\", \"collection\": \"screen\"}', NULL),
(174, 179, 'screen_sequence', '5', '{\"screen_id_screen\": 5, \"sequence_id_sequence\": {\"id_sequence\": 3}}', '{\"screen_id_screen\": 5, \"sequence_id_sequence\": {\"id_sequence\": 3}}', 175),
(175, 180, 'screen', '5', '{\"name\": \"5eme étage\", \"ip_address\": \"192.168.1.1\", \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 3}}]}', '{\"name\": \"5eme étage\", \"ip_address\": \"192.168.1.1\", \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 3}}]}', NULL),
(176, 181, 'screen_sequence', '6', '{\"screen_id_screen\": 6, \"sequence_id_sequence\": {\"id_sequence\": 3}}', '{\"screen_id_screen\": 6, \"sequence_id_sequence\": {\"id_sequence\": 3}}', 178),
(177, 182, 'screen_sequence', '7', '{\"screen_id_screen\": 6, \"sequence_id_sequence\": {\"id_sequence\": 2}}', '{\"screen_id_screen\": 6, \"sequence_id_sequence\": {\"id_sequence\": 2}}', 178),
(178, 183, 'screen', '6', '{\"name\": \"rdc-1\", \"ip_address\": \"192.168.14.1\", \"pool_id_pool\": 1, \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 3}}, {\"sequence_id_sequence\": {\"id_sequence\": 2}}]}', '{\"name\": \"rdc-1\", \"ip_address\": \"192.168.14.1\", \"pool_id_pool\": 1, \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 3}}, {\"sequence_id_sequence\": {\"id_sequence\": 2}}]}', NULL),
(179, 188, 'screen', '7', '{\"name\": \"rdc-2\", \"ip_address\": \"192.168.10.1\", \"pool_id_pool\": 1}', '{\"name\": \"rdc-2\", \"ip_address\": \"192.168.10.1\", \"pool_id_pool\": 1}', NULL),
(180, 189, 'screen', '8', '{\"name\": \"floor-1-1\", \"ip_address\": \"192.168.1.10\", \"pool_id_pool\": 2}', '{\"name\": \"floor-1-1\", \"ip_address\": \"192.168.1.10\", \"pool_id_pool\": 2}', NULL),
(181, 190, 'pool', '2', '{\"name\": \"Floor 1\", \"id_pool\": 2, \"gestionnaire_id_gestionnaire\": 2}', '{\"name\": \"Floor 1\"}', NULL),
(182, 191, 'pool', '3', '{\"name\": \"floor 2\"}', '{\"name\": \"floor 2\"}', NULL),
(183, 192, 'pool', '2', '{\"name\": \"floor 1\", \"id_pool\": 2, \"gestionnaire_id_gestionnaire\": 2}', '{\"name\": \"floor 1\"}', NULL),
(184, 193, 'pool', '3', '{\"name\": \"floor 2\", \"id_pool\": 3, \"gestionnaire_id_gestionnaire\": 2}', '{\"gestionnaire_id_gestionnaire\": 2}', NULL),
(185, 194, 'pool', '4', '{\"name\": \"floor 3\", \"gestionnaire_id_gestionnaire\": 1}', '{\"name\": \"floor 3\", \"gestionnaire_id_gestionnaire\": 1}', NULL),
(186, 195, 'screen_sequence', '8', '{\"screen_id_screen\": 9, \"sequence_id_sequence\": {\"id_sequence\": 1}}', '{\"screen_id_screen\": 9, \"sequence_id_sequence\": {\"id_sequence\": 1}}', 187),
(187, 196, 'screen', '9', '{\"name\": \"floor-2-1\", \"ip_address\": \"192.168.15.1\", \"pool_id_pool\": 3, \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 1}}]}', '{\"name\": \"floor-2-1\", \"ip_address\": \"192.168.15.1\", \"pool_id_pool\": 3, \"sequence_has_screen\": [{\"sequence_id_sequence\": {\"id_sequence\": 1}}]}', NULL),
(188, 197, 'screen', '5', '{\"name\": \"floor-3-1\", \"id_screen\": 5, \"ip_address\": \"192.168.1.1\", \"uuid_screen\": \"bb4c0e09-a915-4d44-bcda-28c340c19c3e\", \"pool_id_pool\": null, \"sequence_has_screen\": [5]}', '{\"name\": \"floor-3-1\"}', NULL),
(189, 198, 'screen', '5', '{\"name\": \"floor-3-1\", \"id_screen\": 5, \"ip_address\": \"192.168.1.1\", \"uuid_screen\": \"bb4c0e09-a915-4d44-bcda-28c340c19c3e\", \"pool_id_pool\": 4, \"sequence_has_screen\": [5]}', '{\"pool_id_pool\": 4}', NULL),
(190, 199, 'screen', '6', '{\"name\": \"floor-0-1\", \"id_screen\": 6, \"ip_address\": \"192.168.14.1\", \"uuid_screen\": \"cc89e271-56c7-43f3-a2a5-3a190378bbae\", \"pool_id_pool\": 1, \"sequence_has_screen\": [6, 7]}', '{\"name\": \"floor-0-1\"}', NULL),
(191, 200, 'screen_sequence', '9', '{\"screen_id_screen\": \"7\", \"sequence_id_sequence\": {\"id_sequence\": 2}}', '{\"screen_id_screen\": \"7\", \"sequence_id_sequence\": {\"id_sequence\": 2}}', 194),
(192, 201, 'screen_sequence', '10', '{\"screen_id_screen\": \"7\", \"sequence_id_sequence\": {\"id_sequence\": 3}}', '{\"screen_id_screen\": \"7\", \"sequence_id_sequence\": {\"id_sequence\": 3}}', 194),
(193, 202, 'screen_sequence', '11', '{\"screen_id_screen\": \"7\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', '{\"screen_id_screen\": \"7\", \"sequence_id_sequence\": {\"id_sequence\": 1}}', 194),
(194, 203, 'screen', '7', '{\"name\": \"floor-0-2\", \"id_screen\": 7, \"ip_address\": \"192.168.10.1\", \"uuid_screen\": \"e65597c5-7930-4080-a446-0eedad2ae020\", \"pool_id_pool\": 1, \"sequence_has_screen\": [9, 10, 11]}', '{\"name\": \"floor-0-2\"}', NULL),
(195, 204, 'pool', '1', '{\"name\": \"floor 0\", \"id_pool\": 1, \"gestionnaire_id_gestionnaire\": 1}', '{\"name\": \"floor 0\"}', NULL),
(196, 207, 'directus_permissions', '6', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"pool\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"pool\", \"validation\": {}, \"permissions\": {}}', NULL),
(197, 208, 'directus_permissions', '7', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"screen\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"screen\", \"validation\": {}, \"permissions\": {}}', NULL),
(198, 209, 'directus_permissions', '8', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"screen_sequence\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"screen_sequence\", \"validation\": {}, \"permissions\": {}}', NULL),
(199, 210, 'directus_permissions', '9', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"gestionnaire\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"gestionnaire\", \"validation\": {}, \"permissions\": {}}', NULL),
(200, 212, 'directus_files', '8f40cac4-6c34-4f80-87bd-49b67579c2cf', '{\"type\": \"image/tiff\", \"title\": \"Dsc 8099 Cleanup\", \"storage\": \"local\", \"filename_download\": \"DSC_8099_cleanup.tif\"}', '{\"type\": \"image/tiff\", \"title\": \"Dsc 8099 Cleanup\", \"storage\": \"local\", \"filename_download\": \"DSC_8099_cleanup.tif\"}', NULL),
(201, 213, 'directus_users', 'd57b00a3-94cc-4b8e-b747-b09972c29329', '{\"email\": \"thibaud.turlan@tutanota.com\", \"avatar\": \"8f40cac4-6c34-4f80-87bd-49b67579c2cf\", \"language\": \"fr-FR\", \"password\": \"**********\", \"last_name\": \"Turlan\", \"first_name\": \"Thibaud\"}', '{\"email\": \"thibaud.turlan@tutanota.com\", \"avatar\": \"8f40cac4-6c34-4f80-87bd-49b67579c2cf\", \"language\": \"fr-FR\", \"password\": \"**********\", \"last_name\": \"Turlan\", \"first_name\": \"Thibaud\"}', NULL),
(202, 214, 'directus_roles', '98ec901d-6120-4adf-8bf4-36a0af2077a8', '{\"name\": \"gestionnaire_1\", \"app_access\": true, \"admin_access\": false}', '{\"name\": \"gestionnaire_1\", \"app_access\": true, \"admin_access\": false}', NULL),
(203, 215, 'directus_permissions', '10', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_files\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_files\", \"permissions\": {}}', NULL),
(204, 216, 'directus_permissions', '11', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_files\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_files\", \"permissions\": {}}', NULL),
(205, 217, 'directus_permissions', '12', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_files\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_files\", \"permissions\": {}}', NULL),
(206, 218, 'directus_permissions', '13', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"directus_files\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"directus_files\", \"permissions\": {}}', NULL),
(207, 219, 'directus_permissions', '14', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_dashboards\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_dashboards\", \"permissions\": {}}', NULL),
(208, 220, 'directus_permissions', '15', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_dashboards\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_dashboards\", \"permissions\": {}}', NULL),
(209, 221, 'directus_permissions', '16', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_dashboards\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_dashboards\", \"permissions\": {}}', NULL),
(210, 222, 'directus_permissions', '17', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"directus_dashboards\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"directus_dashboards\", \"permissions\": {}}', NULL),
(211, 223, 'directus_permissions', '18', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_panels\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_panels\", \"permissions\": {}}', NULL),
(212, 224, 'directus_permissions', '19', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_panels\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_panels\", \"permissions\": {}}', NULL),
(213, 225, 'directus_permissions', '20', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_panels\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_panels\", \"permissions\": {}}', NULL),
(214, 226, 'directus_permissions', '21', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"directus_panels\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"directus_panels\", \"permissions\": {}}', NULL),
(215, 227, 'directus_permissions', '22', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_folders\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_folders\", \"permissions\": {}}', NULL),
(216, 228, 'directus_permissions', '23', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_folders\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_folders\", \"permissions\": {}}', NULL),
(217, 229, 'directus_permissions', '24', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_folders\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_folders\", \"permissions\": {}}', NULL),
(218, 230, 'directus_permissions', '25', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"collection\": \"directus_folders\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"collection\": \"directus_folders\", \"permissions\": {}}', NULL),
(219, 231, 'directus_permissions', '26', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"collection\": \"directus_users\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"collection\": \"directus_users\", \"permissions\": {}}', NULL),
(220, 232, 'directus_permissions', '27', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"first_name,last_name,email,password,location,title,description,avatar,language,theme\", \"collection\": \"directus_users\", \"permissions\": {\"id\": {\"_eq\": \"$CURRENT_USER\"}}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"first_name,last_name,email,password,location,title,description,avatar,language,theme\", \"collection\": \"directus_users\", \"permissions\": {\"id\": {\"_eq\": \"$CURRENT_USER\"}}}', NULL),
(221, 233, 'directus_permissions', '28', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_roles\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_roles\", \"permissions\": {}}', NULL),
(222, 234, 'directus_permissions', '29', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_shares\", \"permissions\": {\"_or\": [{\"role\": {\"_eq\": \"$CURRENT_ROLE\"}}, {\"role\": {\"_null\": true}}]}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_shares\", \"permissions\": {\"_or\": [{\"role\": {\"_eq\": \"$CURRENT_ROLE\"}}, {\"role\": {\"_null\": true}}]}}', NULL),
(223, 235, 'directus_permissions', '30', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_shares\", \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_shares\", \"permissions\": {}}', NULL),
(224, 236, 'directus_permissions', '31', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_shares\", \"permissions\": {\"user_created\": {\"_eq\": \"$CURRENT_USER\"}}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_shares\", \"permissions\": {\"user_created\": {\"_eq\": \"$CURRENT_USER\"}}}', NULL),
(225, 237, 'directus_permissions', '32', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"directus_shares\", \"permissions\": {\"user_created\": {\"_eq\": \"$CURRENT_USER\"}}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"directus_shares\", \"permissions\": {\"user_created\": {\"_eq\": \"$CURRENT_USER\"}}}', NULL),
(226, 238, 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"email\": \"test1@pixview.com\", \"password\": \"**********\", \"last_name\": \"test1\", \"first_name\": \"test1\"}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"email\": \"test1@pixview.com\", \"password\": \"**********\", \"last_name\": \"test1\", \"first_name\": \"test1\"}', NULL),
(227, 239, 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', '{\"id\": \"5968c4a4-aff4-49c7-8343-e1fdcb794423\", \"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"tags\": null, \"email\": \"test1@pixview.com\", \"theme\": \"auto\", \"title\": null, \"token\": null, \"avatar\": null, \"status\": \"active\", \"language\": \"en-US\", \"location\": null, \"password\": \"**********\", \"provider\": \"default\", \"auth_data\": null, \"last_name\": \"gestionnaire1\", \"last_page\": null, \"first_name\": \"test1\", \"tfa_secret\": null, \"description\": null, \"last_access\": null, \"email_notifications\": true, \"external_identifier\": null}', '{\"last_name\": \"gestionnaire1\"}', NULL),
(228, 241, 'directus_roles', '98ec901d-6120-4adf-8bf4-36a0af2077a8', '{\"id\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"icon\": \"supervised_user_circle\", \"name\": \"gestionnaire_floor_0\", \"users\": [\"5968c4a4-aff4-49c7-8343-e1fdcb794423\"], \"ip_access\": null, \"app_access\": true, \"description\": null, \"enforce_tfa\": false, \"admin_access\": false}', '{\"name\": \"gestionnaire_floor_0\"}', NULL),
(229, 244, 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', '{\"id\": \"5968c4a4-aff4-49c7-8343-e1fdcb794423\", \"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"tags\": null, \"email\": \"test1@pixview.com\", \"theme\": \"auto\", \"title\": null, \"token\": null, \"avatar\": null, \"status\": \"active\", \"language\": \"en-US\", \"location\": null, \"password\": \"**********\", \"provider\": \"default\", \"auth_data\": null, \"last_name\": \"gestionnaire_floor_0\", \"last_page\": \"/content\", \"first_name\": \"test1\", \"tfa_secret\": null, \"description\": null, \"last_access\": \"2022-02-22T15:01:57.000Z\", \"email_notifications\": true, \"external_identifier\": null}', '{\"last_name\": \"gestionnaire_floor_0\"}', NULL),
(230, 245, 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', '{\"id\": \"5968c4a4-aff4-49c7-8343-e1fdcb794423\", \"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"tags\": null, \"email\": \"test1@pixview.com\", \"theme\": \"auto\", \"title\": null, \"token\": null, \"avatar\": null, \"status\": \"active\", \"language\": \"en-US\", \"location\": null, \"password\": \"**********\", \"provider\": \"default\", \"auth_data\": null, \"last_name\": \"gestionnaire0\", \"last_page\": \"/users\", \"first_name\": \"test1\", \"tfa_secret\": null, \"description\": null, \"last_access\": \"2022-02-22T15:04:37.000Z\", \"email_notifications\": true, \"external_identifier\": null}', '{\"last_name\": \"gestionnaire0\"}', NULL),
(231, 247, 'directus_users', 'd57b00a3-94cc-4b8e-b747-b09972c29329', '{\"id\": \"d57b00a3-94cc-4b8e-b747-b09972c29329\", \"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"tags\": null, \"email\": \"thibaud.turlan@tutanota.com\", \"theme\": \"auto\", \"title\": null, \"token\": null, \"avatar\": \"8f40cac4-6c34-4f80-87bd-49b67579c2cf\", \"status\": \"active\", \"language\": \"fr-FR\", \"location\": null, \"password\": \"**********\", \"provider\": \"default\", \"auth_data\": null, \"last_name\": \"Turlan\", \"last_page\": \"/content\", \"first_name\": \"Thibaud\", \"tfa_secret\": null, \"description\": null, \"last_access\": \"2022-02-22T15:05:07.000Z\", \"email_notifications\": true, \"external_identifier\": null}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\"}', NULL),
(232, 249, 'directus_permissions', '33', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', NULL),
(233, 250, 'directus_permissions', '34', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"update\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', NULL),
(234, 251, 'directus_permissions', '35', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"delete\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', NULL),
(235, 252, 'directus_permissions', '36', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', NULL),
(236, 253, 'directus_roles', 'e49a459e-6aa7-4be6-a08e-5754fbacb465', '{\"name\": \"gestionnaire_floor_1\"}', '{\"name\": \"gestionnaire_floor_1\"}', 237),
(237, 254, 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', '{\"id\": \"5968c4a4-aff4-49c7-8343-e1fdcb794423\", \"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"tags\": null, \"email\": \"test1@pixview.com\", \"theme\": \"auto\", \"title\": null, \"token\": null, \"avatar\": null, \"status\": \"active\", \"language\": \"en-US\", \"location\": null, \"password\": \"**********\", \"provider\": \"default\", \"auth_data\": null, \"last_name\": \"gestionnaire1\", \"last_page\": \"/content/contenu\", \"first_name\": \"test1\", \"tfa_secret\": null, \"description\": null, \"last_access\": \"2022-02-22T15:08:00.000Z\", \"email_notifications\": true, \"external_identifier\": null}', '{\"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"last_name\": \"gestionnaire1\"}', NULL),
(238, 255, 'directus_permissions', '37', '{\"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"action\": \"create\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"action\": \"create\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', NULL),
(239, 256, 'directus_permissions', '38', '{\"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', NULL),
(240, 257, 'directus_permissions', '39', '{\"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"action\": \"update\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"action\": \"update\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', NULL),
(241, 258, 'directus_permissions', '40', '{\"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"action\": \"delete\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"action\": \"delete\", \"fields\": [\"*\"], \"collection\": \"contenu\", \"validation\": {}, \"permissions\": {}}', NULL),
(242, 259, 'directus_users', '5968c4a4-aff4-49c7-8343-e1fdcb794423', '{\"id\": \"5968c4a4-aff4-49c7-8343-e1fdcb794423\", \"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"tags\": null, \"email\": \"test1@pixview.com\", \"theme\": \"auto\", \"title\": null, \"token\": null, \"avatar\": null, \"status\": \"active\", \"language\": \"en-US\", \"location\": null, \"password\": \"**********\", \"provider\": \"default\", \"auth_data\": null, \"last_name\": \"gestionnaire1\", \"last_page\": \"/content/contenu\", \"first_name\": \"test1\", \"tfa_secret\": null, \"description\": null, \"last_access\": \"2022-02-22T15:16:33.000Z\", \"email_notifications\": true, \"external_identifier\": null}', '{\"role\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\"}', 243),
(243, 260, 'directus_roles', 'e49a459e-6aa7-4be6-a08e-5754fbacb465', '{\"id\": \"e49a459e-6aa7-4be6-a08e-5754fbacb465\", \"icon\": \"supervised_user_circle\", \"name\": \"gestionnaire_floor_1\", \"users\": [\"5968c4a4-aff4-49c7-8343-e1fdcb794423\"], \"ip_access\": null, \"app_access\": true, \"description\": null, \"enforce_tfa\": false, \"admin_access\": false}', '{}', NULL),
(244, 261, 'directus_permissions', '41', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": [\"*\"], \"collection\": \"screen\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": [\"*\"], \"collection\": \"screen\", \"validation\": {}, \"permissions\": {}}', NULL),
(245, 263, 'directus_permissions', '42', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": [\"*\"], \"collection\": \"sequence\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"create\", \"fields\": [\"*\"], \"collection\": \"sequence\", \"validation\": {}, \"permissions\": {}}', NULL),
(246, 265, 'directus_permissions', '43', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"sequence\", \"validation\": {}, \"permissions\": {}}', '{\"role\": \"98ec901d-6120-4adf-8bf4-36a0af2077a8\", \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"sequence\", \"validation\": {}, \"permissions\": {}}', NULL),
(247, 266, 'directus_files', '006663eb-3635-45bf-b852-c58d3d0c9dfc', '{\"type\": \"image/jpeg\", \"title\": \"Cage Theatre\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"cage_theatre.jpg\"}', '{\"type\": \"image/jpeg\", \"title\": \"Cage Theatre\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"cage_theatre.jpg\"}', NULL),
(248, 267, 'directus_files', 'a1c8b7f4-562b-4f02-a5e8-43a309bf1558', '{\"type\": \"image/jpeg\", \"title\": \"Panneau Les 4 Gestes Barrieres\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"panneau-les-4-gestes-barrieres.jpg\"}', '{\"type\": \"image/jpeg\", \"title\": \"Panneau Les 4 Gestes Barrieres\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"panneau-les-4-gestes-barrieres.jpg\"}', NULL),
(249, 268, 'directus_files', 'c31c4a6e-c981-4f0d-b25d-efb9393bfbd6', '{\"type\": \"image/jpeg\", \"title\": \"Don Sang Campagne F\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"don-sang-campagne-F.jpg\"}', '{\"type\": \"image/jpeg\", \"title\": \"Don Sang Campagne F\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"don-sang-campagne-F.jpg\"}', NULL),
(250, 272, 'directus_files', '98ebf900-7e03-411b-8932-0f2ae831e18e', '{\"type\": \"image/jpeg\", \"title\": \"Panneau Les 4 Gestes Barrieres\", \"storage\": \"local\", \"filename_download\": \"panneau-les-4-gestes-barrieres.jpg\"}', '{\"type\": \"image/jpeg\", \"title\": \"Panneau Les 4 Gestes Barrieres\", \"storage\": \"local\", \"filename_download\": \"panneau-les-4-gestes-barrieres.jpg\"}', NULL),
(251, 273, 'contenu', '1', '{\"type\": \"txt\", \"title\": \"gestes barrière\", \"content\": \"# Covid 19\\n\\nles gestes barière!\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/98ebf900-7e03-411b-8932-0f2ae831e18e)\", \"duration\": 3, \"id_contenu\": 1, \"sequence_has_contenu\": [4, 6]}', '{\"content\": \"# Covid 19\\n\\nles gestes barière!\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/98ebf900-7e03-411b-8932-0f2ae831e18e)\"}', NULL),
(252, 274, 'contenu', '2', '{\"type\": \"md\", \"title\": \"Don du sang\", \"content\": \"# Don du sang\\n\\nmais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/c31c4a6e-c981-4f0d-b25d-efb9393bfbd6)\", \"duration\": 3, \"id_contenu\": 2, \"sequence_has_contenu\": [3, 5]}', '{\"content\": \"# Don du sang\\n\\nmais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/c31c4a6e-c981-4f0d-b25d-efb9393bfbd6)\"}', NULL),
(253, 275, 'contenu', '5', '{\"type\": \"md\", \"title\": \"Café Théatre\", \"content\": \"# Thème Café Théatre cette semaine \\n\\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500.\\n\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/006663eb-3635-45bf-b852-c58d3d0c9dfc)\", \"duration\": 4, \"id_contenu\": 5, \"sequence_has_contenu\": [7]}', '{\"content\": \"# Thème Café Théatre cette semaine \\n\\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500.\\n\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/006663eb-3635-45bf-b852-c58d3d0c9dfc)\"}', NULL),
(254, 278, 'contenu', '1', '{\"type\": \"md\", \"title\": \"gestes barrière\", \"content\": \"# Covid 19\\n\\nles gestes barière!\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/98ebf900-7e03-411b-8932-0f2ae831e18e)\", \"duration\": 3, \"id_contenu\": 1, \"sequence_has_contenu\": [4, 6]}', '{\"type\": \"md\"}', NULL),
(255, 279, 'contenu', '6', '{\"type\": \"pdf\", \"title\": \"lettre\", \"content\": \"a\", \"duration\": 1}', '{\"type\": \"pdf\", \"title\": \"lettre\", \"content\": \"a\", \"duration\": 1}', NULL),
(256, 280, 'contenu_sequence', '12', '{\"contenu_id_contenu\": \"6\", \"sequence_id_sequence\": {\"id_sequence\": 3}}', '{\"contenu_id_contenu\": \"6\", \"sequence_id_sequence\": {\"id_sequence\": 3}}', 257),
(257, 281, 'contenu', '6', '{\"type\": \"pdf\", \"title\": \"lettre\", \"content\": \"a\", \"duration\": 1, \"id_contenu\": 6, \"sequence_has_contenu\": [12]}', '{}', NULL),
(258, 282, 'directus_files', '89f82914-c6c6-407f-b6d6-c1ff4a895ce2', '{\"type\": \"application/pdf\", \"title\": \"Carte Ski De Fond\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"carte_ski_de_fond.pdf\"}', '{\"type\": \"application/pdf\", \"title\": \"Carte Ski De Fond\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"carte_ski_de_fond.pdf\"}', NULL),
(259, 283, 'directus_files', 'f734547b-3064-4196-bfef-ab2d803e268d', '{\"type\": \"application/octet-stream\", \"title\": \"Adresses\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"adresses.vcf\"}', '{\"type\": \"application/octet-stream\", \"title\": \"Adresses\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"adresses.vcf\"}', NULL),
(260, 284, 'directus_files', 'dc9cbd34-487f-4d9b-921f-8d9b6e847c02', '{\"type\": \"application/vnd.ms-excel\", \"title\": \"Contacts Orange\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"Contacts_orange.csv\"}', '{\"type\": \"application/vnd.ms-excel\", \"title\": \"Contacts Orange\", \"folder\": null, \"storage\": \"local\", \"filename_download\": \"Contacts_orange.csv\"}', NULL),
(261, 287, 'contenu', '6', '{\"type\": \"pdf\", \"title\": \"lettre\", \"content\": \"a![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/89f82914-c6c6-407f-b6d6-c1ff4a895ce2)\", \"duration\": 1, \"id_contenu\": 6, \"sequence_has_contenu\": [12]}', '{\"content\": \"a![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/89f82914-c6c6-407f-b6d6-c1ff4a895ce2)\"}', NULL),
(262, 288, 'contenu', '6', '{\"type\": \"pdf\", \"title\": \"lettre\", \"content\": \"http://docketu.iutnc.univ-lorraine.fr:62340/assets/89f82914-c6c6-407f-b6d6-c1ff4a895ce2\", \"duration\": 1, \"id_contenu\": 6, \"sequence_has_contenu\": [12]}', '{\"content\": \"http://docketu.iutnc.univ-lorraine.fr:62340/assets/89f82914-c6c6-407f-b6d6-c1ff4a895ce2\"}', NULL),
(263, 289, 'contenu', '6', '{\"type\": \"pdf\", \"title\": \"lettre\", \"content\": \"http://docketu.iutnc.univ-lorraine.fr:62340/assets/89f82914-c6c6-407f-b6d6-c1ff4a895ce2\", \"duration\": 5, \"id_contenu\": 6, \"sequence_has_contenu\": [12]}', '{\"duration\": 5}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(264, 290, 'directus_fields', '18', '{\"id\": 18, \"note\": null, \"sort\": 4, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"max\": 20, \"min\": 1, \"step\": 5}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": 4, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"max\": 20, \"min\": 1, \"step\": 5}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(265, 291, 'directus_fields', '18', '{\"id\": 18, \"note\": null, \"sort\": 4, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"max\": 30, \"min\": 5, \"step\": 5}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": 4, \"field\": \"duration\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"max\": 30, \"min\": 5, \"step\": 5}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"contenu\", \"conditions\": null, \"translations\": null, \"display_options\": null}', NULL),
(266, 292, 'contenu', '1', '{\"type\": \"md\", \"title\": \"gestes barrière\", \"content\": \"# Covid 19\\n\\nles gestes barière!\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/98ebf900-7e03-411b-8932-0f2ae831e18e)\", \"duration\": 10, \"id_contenu\": 1, \"sequence_has_contenu\": [4, 6]}', '{\"duration\": 10}', NULL),
(267, 293, 'contenu', '2', '{\"type\": \"md\", \"title\": \"Don du sang\", \"content\": \"# Don du sang\\n\\nmais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/c31c4a6e-c981-4f0d-b25d-efb9393bfbd6)\", \"duration\": 10, \"id_contenu\": 2, \"sequence_has_contenu\": [3, 5]}', '{\"duration\": 10}', NULL),
(268, 294, 'contenu', '5', '{\"type\": \"md\", \"title\": \"Café Théatre\", \"content\": \"# Thème Café Théatre cette semaine \\n\\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500.\\n\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/006663eb-3635-45bf-b852-c58d3d0c9dfc)\", \"duration\": 5, \"id_contenu\": 5, \"sequence_has_contenu\": [7]}', '{\"duration\": 5}', NULL),
(269, 295, 'contenu', '2', '{\"type\": \"md\", \"title\": \"Don du sang\", \"content\": \"# Don du sang\\n\\nmais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\\n![](http://docketu.iutnc.univ-lorraine.fr:62340/assets/c31c4a6e-c981-4f0d-b25d-efb9393bfbd6)\", \"duration\": 5, \"id_contenu\": 2, \"sequence_has_contenu\": [3, 5]}', '{\"duration\": 5}', NULL);

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
('1b0c289b-9986-4748-b8f6-3aa3d2c22d63', 'Administrator', 'verified', '$t:admin_description', NULL, 0, 1, 1),
('98ec901d-6120-4adf-8bf4-36a0af2077a8', 'gestionnaire_floor_0', 'supervised_user_circle', NULL, NULL, 0, 0, 1),
('e49a459e-6aa7-4be6-a08e-5754fbacb465', 'gestionnaire_floor_1', 'supervised_user_circle', NULL, NULL, 0, 0, 1);

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
('NKLL4eCBXFQjPjVMrhzAmEvSYG4z6CNnHZg-TJ34OUd5x1XqwInGW17hRmQS7TyE', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-02-28 19:04:07', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.54', NULL),
('Qe0o15W9NNDRfVpW7C3YmjwFlXwS9ZWmNq5Ro3nb-LfLakYhL5X9sTs5SEgsVSvl', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-03-01 16:58:30', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', NULL),
('OWrQHyRrdEtqVFisJS67_GES6r7DKzXF4QhpdAhWg5fTtVMyjsPbXAf82FoHqXdp', '93da9995-99e1-42ca-9a19-6fb43f37ccd3', '2022-03-01 15:38:46', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', NULL),
('yVZ0BJ9HEmhm0L_P6niXefomR_6moohlo65BSQ3Syq2Lzfz59D21y_d5Seu_8W13', '5968c4a4-aff4-49c7-8343-e1fdcb794423', '2022-03-01 15:39:03', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', NULL),
('O0KNPMveZAle-fm3p55kcqYD5T0C2Z3Qsx-rK_yApYImZmxGZnzYrvSYZKBPQIBp', 'd57b00a3-94cc-4b8e-b747-b09972c29329', '2022-03-01 15:56:23', '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', NULL);

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
('93da9995-99e1-42ca-9a19-6fb43f37ccd3', 'Admin', 'User', 'admin@pixview.com', '$argon2i$v=19$m=4096,t=3,p=1$X8ER224vmsRlNjsMTgVyJw$6i2kDt+FTPMH9CCgZoW5y7krYYj/FASS8tMsPMxVZz8', NULL, NULL, NULL, NULL, NULL, 'en-US', 'auto', NULL, 'active', '1b0c289b-9986-4748-b8f6-3aa3d2c22d63', NULL, '2022-02-22 16:58:30', '/content/contenu', 'default', NULL, NULL, 1),
('d57b00a3-94cc-4b8e-b747-b09972c29329', 'Thibaud', 'Turlan', 'thibaud.turlan@tutanota.com', '$argon2i$v=19$m=4096,t=3,p=1$mJ0fKBPP2teCY3SnaZrnqg$DvcTVK+GTueDbDDrqYbAMyaqzFf51cL8sol1mnItXrA', NULL, NULL, NULL, NULL, '8f40cac4-6c34-4f80-87bd-49b67579c2cf', 'fr-FR', 'auto', NULL, 'active', '98ec901d-6120-4adf-8bf4-36a0af2077a8', NULL, '2022-02-22 15:56:23', '/content/sequence', 'default', NULL, NULL, 1),
('5968c4a4-aff4-49c7-8343-e1fdcb794423', 'test1', 'gestionnaire1', 'test1@pixview.com', '$argon2i$v=19$m=4096,t=3,p=1$J8H1W0kZwmC5tRWrT5YdMw$mer0C+UNkGvsLIbHc6afUD8TiItoI9/eonCH6/9KoXw', NULL, NULL, NULL, NULL, NULL, 'en-US', 'auto', NULL, 'active', 'e49a459e-6aa7-4be6-a08e-5754fbacb465', NULL, '2022-02-22 15:39:03', '/content/contenu', 'default', NULL, NULL, 1);

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
(1, 'floor 0', 1),
(2, 'floor 1', 2),
(3, 'floor 2', 2),
(4, 'floor 3', 1);

-- --------------------------------------------------------

--
-- Structure de la table `screen`
--

CREATE TABLE `screen` (
  `id_screen` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `pool_id_pool` int(10) UNSIGNED DEFAULT NULL,
  `uuid_screen` char(36) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `screen`
--

INSERT INTO `screen` (`id_screen`, `name`, `ip_address`, `pool_id_pool`, `uuid_screen`) VALUES
(8, 'floor-1-1', '192.168.1.10', 2, '2c9bf801-c5d6-4650-97a9-2d57f03a7973'),
(7, 'floor-0-2', '192.168.10.1', 1, 'e65597c5-7930-4080-a446-0eedad2ae020'),
(5, 'floor-3-1', '192.168.1.1', 4, 'bb4c0e09-a915-4d44-bcda-28c340c19c3e'),
(6, 'floor-0-1', '192.168.14.1', 1, 'cc89e271-56c7-43f3-a2a5-3a190378bbae'),
(9, 'floor-2-1', '192.168.15.1', 3, 'feafd52a-b2bf-4796-98af-ade1613076f8');

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
(4, 4, 3),
(5, 5, 3),
(6, 6, 3),
(7, 6, 2),
(8, 9, 1),
(9, 7, 2),
(10, 7, 3),
(11, 7, 1);

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
(1, 'campagne prévention Covid 19', 40, '2022-02-13 12:00:00', '2022-02-17 12:00:00'),
(2, 'Activité culturel mois de février', 6, '2022-02-01 12:00:00', '2022-02-28 12:00:00'),
(3, 'campagne don du sang', 30, '2022-02-20 12:00:00', '2022-02-24 12:00:00');

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
  MODIFY `id_contenu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `contenu_sequence`
--
ALTER TABLE `contenu_sequence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT pour la table `directus_fields`
--
ALTER TABLE `directus_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `directus_presets`
--
ALTER TABLE `directus_presets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `directus_relations`
--
ALTER TABLE `directus_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

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
  MODIFY `id_pool` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `screen`
--
ALTER TABLE `screen`
  MODIFY `id_screen` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `screen_sequence`
--
ALTER TABLE `screen_sequence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
