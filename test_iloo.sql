-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 01 juil. 2022 à 07:47
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test_iloo`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220630084620', '2022-06-30 08:46:38', 316),
('DoctrineMigrations\\Version20220630112409', '2022-06-30 11:24:33', 367),
('DoctrineMigrations\\Version20220630114026', '2022-06-30 11:40:42', 158),
('DoctrineMigrations\\Version20220630124403', '2022-06-30 12:44:22', 623),
('DoctrineMigrations\\Version20220701021522', '2022-07-01 02:17:55', 155);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `singer`
--

DROP TABLE IF EXISTS `singer`;
CREATE TABLE IF NOT EXISTS `singer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `adress` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `singer`
--

INSERT INTO `singer` (`id`, `firstname`, `lastname`, `created_at`, `updated_at`, `adress`, `city`) VALUES
(41, 'Thomas', 'Lopes', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '86, chemin Leblanc\n66 635 Carlierboeuf', 'Fournier'),
(42, 'Hortense', 'Bernard', '2022-06-30 15:47:00', '2022-06-30 15:47:00', 'chemin de Lagarde\n56125 Vidal-sur-Denis', 'Clement-la-Forêt'),
(43, 'Agnès', 'Mercier', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '3, place Olivier Gerard\n27 879 Bazin', 'GomezVille'),
(44, 'Jérôme', 'Pottier', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '638, rue Anouk Bailly\n78009 Lopesboeuf', 'Benardnec'),
(45, 'Denis', 'Georges', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '462, avenue Turpin\n08 273 Ramos', 'Lebondan'),
(46, 'Marie', 'Boutin', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '71, rue de Dias\n23 826 Olivier', 'Letellier-la-Forêt'),
(47, 'Christelle', 'Breton', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '82, rue Legros\n90474 Poulainboeuf', 'Marion'),
(48, 'Jacques', 'Georges', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '354, chemin de Lefebvre\n26 607 Rossi-sur-Mer', 'Lamy'),
(49, 'Richard', 'Julien', '2022-06-30 15:47:01', '2022-06-30 15:47:01', 'boulevard Hamon\n02201 Marin', 'Texier'),
(50, 'Timothée', 'Remy', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '75, chemin Pruvost\n19444 Bonnet', 'Fleurynec'),
(51, 'Patricia', 'Leroy', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '7, place de Faivre\n27049 Bigot', 'Riou'),
(52, 'Jean', 'Becker', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '12, avenue Michaud\n20 257 Martineau', 'Da Costa-la-Forêt'),
(53, 'Michel', 'Couturier', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '15, avenue Vincent Herve\n18891 Schneider-sur-Martel', 'Milletboeuf'),
(54, 'Margot', 'Blin', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '79, rue Emmanuelle Brunet\n95 027 Maillard-sur-Lejeune', 'Lebondan'),
(55, 'Pierre', 'Lemaitre', '2022-06-30 15:47:01', '2022-06-30 15:47:01', 'rue de Gregoire\n25063 Blanc', 'Simon-sur-Collet'),
(56, 'Antoine', 'Gillet', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '16, impasse Tanguy\n92 723 Martel', 'Schneider'),
(57, 'Dominique', 'Mathieu', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '778, avenue Pierre Gimenez\n52779 Pruvost', 'Guilletdan'),
(58, 'Éric', 'Louis', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '78, chemin Michèle Morel\n02 416 ReyBourg', 'Jacques-sur-Leduc'),
(59, 'Marc', 'Potier', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '88, impasse Dias\n60 222 Ferrand', 'Dumas'),
(60, 'Franck', 'Masse', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '41, rue Hugues Dos Santos\n58 867 Olivier-sur-Mer', 'Besnard-sur-Reynaud');

-- --------------------------------------------------------

--
-- Structure de la table `song`
--

DROP TABLE IF EXISTS `song`;
CREATE TABLE IF NOT EXISTS `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singer_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `release_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_33EDEEA1271FD47C` (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=602 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `song`
--

INSERT INTO `song` (`id`, `singer_id`, `title`, `created_at`, `updated_at`, `release_date`) VALUES
(401, 41, 'Bournisien demanda où était la chambre d\'eau.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(402, 41, 'Ah! mon Dieu, oui! n\'ai-je pas ma maison à.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(403, 41, 'Il avait fallu échanger des miniatures, on.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(404, 41, 'Je ne sais quelle force encore m\'a poussé vers.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(405, 41, 'Une fois le verbe _ridiculus sum_. Puis, d\'une.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(406, 41, 'Souvent il y a dans tous les verres, d\'avance.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(407, 41, 'Quoi donc? -- C\'est une fille! dit Charles.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(408, 41, 'Quand il revint, elle se plut dans la vie ne lui.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(409, 41, 'Il fut reçu avec une liasse de papiers sous son.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(410, 41, 'N\'importe! dit Homais, je m\'étonne que, de nos.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(411, 42, 'Napoléon se prit à geindre faiblement. La.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(412, 42, 'C\'était un besoin, une manie, un plaisir, au.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(413, 42, 'Emma ne semblait plus disposée à suivre ses.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(414, 42, 'Berthe, près de la main un cierge bénit, symbole.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(415, 42, 'Lion d\'or vivra, on y perd trop de.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(416, 42, 'Charles s\'en aperçut, et alors elle allongea le.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(417, 42, 'Galilée. -- Je voudrais que l\'on retire de ce.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(418, 42, 'Minerve au crayon noir, encadrée de dorure, et.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(419, 42, 'Ils parlèrent des jours d\'autrefois lui.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(420, 42, 'Et voilà comme tu me récompenses des soins tout.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(421, 43, 'Bertaux trois jours après, dans le jardin, il.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(422, 43, 'À l\'angle des rues voisines, de même des.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(423, 43, 'Et madame Bovary, causait rêves, pressentiments.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(424, 43, 'Alors, pour dissimuler son désappointement, il.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(425, 43, 'Qu\'il me soit permis, dis-je de rendre plus.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(426, 43, 'Homais tenait à faire une robe. -- Celle que.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(427, 43, 'Si elle avait beau pleurer, elle ne s\'en ira.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(428, 43, 'Un jour, enfin, il s\'assit devant, tourna la.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(429, 43, 'Elle lui donna un coup de sa poitrine.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(430, 43, 'Cette simple dalle recouvre Pierre de Brézé.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(431, 44, 'C\'était là ce que l\'on fut à mettre son couvert.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(432, 44, 'Il venait chercher son élève affectionnait la.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(433, 44, 'L\'un d\'eux, qui avait été, disait-on, l\'amant de.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(434, 44, 'Ma cas... fit timidement le nouveau, vous me.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(435, 44, 'Elle était en retard. Alors elle se peignait.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(436, 44, 'Au moins, si un magistrat... -- Mais quand? -- À.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(437, 44, 'C\'est que j\'aime, reprit-il en riant d\'un air.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(438, 44, 'Le froid les a tués cet hiver. -- Ah! sans.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(439, 44, 'Il fallut pourtant se décida; il alla chercher.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(440, 44, 'Elle portait une robe de chambre, restait les.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(441, 45, 'Dans le clair-obscur de l\'atelier, la poussière.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(442, 45, 'Bovary en était si triste et si terrible.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(443, 45, 'M. Bain, de Givry-Saint-Martin!» -- Aussi, moi.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(444, 45, 'À huit heures, Justin venait le chercher pour.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(445, 45, 'Je vous trouve jolie comme un mouton, chérissant.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(446, 45, 'La servante parut; Emma comprit, et demanda «ce.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(447, 45, 'Seigneur, comme, du reste, agirait à sa.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(448, 45, 'Elle restait dans son cabinet; et il alla.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(449, 45, 'Tuvache «avait filé» après la rue, et du mari.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(450, 45, 'Souvent elle s\'obstinait à ne vouloir point.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(451, 46, 'Emma n\'en apercevait que deux minutes. Puis, dès.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(452, 46, 'Lefrançois, qui, passant à son négoce, Lheureux.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(453, 46, 'Protégée par l\'archevêché comme appartenant à.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(454, 46, 'Dieu l\'avait voulu! L\'avenir était un réfugié.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(455, 46, 'Allons donc! fit-il en haussant les épaules, et.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(456, 46, 'Les affaires d\'argent bientôt recommencèrent, M.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(457, 46, 'Viens donc, Emma, disait-il, il est vrai; car.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(458, 46, 'Il fronça les sourcils d\'un geste son auditoire.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(459, 46, 'Souvent je les inviterai chez moi... Ah!.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(460, 46, 'Voilà ce qu\'on ne peut s\'embarrasser aux détails.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(461, 47, 'Binet. -- Halte! cria le président. -- Tantôt.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(462, 47, 'Ils se promèneraient en gondole, ils se dirent.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(463, 47, 'Sa femme était morte depuis dix mois!... Où.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(464, 47, 'On avait été livré à la mare. De temps à autre.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(465, 47, 'VIII Le château, de construction moderne, à.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(466, 47, 'Ah! voilà que ça coûte?... Me le promets-tu? Le.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(467, 47, 'Emma s\'épanouit à cette heure-là, le savait.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(468, 47, 'Vicomte qui valsait, et Lagardy chantant, tout.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(469, 47, 'Tout ce que vous voudrez! Alors, il ferma les.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(470, 47, 'Elle le regarda brûler. Les petites baies de.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(471, 48, 'Eh! laisse-moi donc! fit-elle en s\'écartant de.', '2022-06-30 15:47:00', '2022-06-30 15:47:00', '2022-06-30 15:47:00'),
(472, 48, 'Quand elle s\'asseyait sur ses bandeaux, la vue.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(473, 48, 'Emma, qui portait au bas, écrit en lettres.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(474, 48, 'Ses pommettes étaient roses. Elle portait, comme.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(475, 48, 'Elle écoutait, dans un coin à quatre ou cinq.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(476, 48, 'Puis elle parut, éclatante de blancheur, dans le.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(477, 48, 'Du reste, reprenait le pharmacien, où il y a.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(478, 48, 'Ne sont-elles pas la première fois qu\'elle était.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(479, 48, 'À force de son esprit, si bien que je serai tout.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(480, 48, 'Charles, qui réfléchissait. Mais il poussa un.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(481, 49, 'Bovary; il fut au haut de la confiance renaît.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(482, 49, 'Il y avait là, si près et si terrible, qu\'elle.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(483, 49, 'Cela dépendait autrefois d\'une petite ferme aux.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(484, 49, 'Il se lança dans la peur d\'être aperçu; il entra.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(485, 49, 'C\'est une plaisanterie sans doute! Il nous.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(486, 49, 'Elle essaya, par mortification, de rester là.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(487, 49, 'Félicité. Charles le payement de sa voix. Après.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(488, 49, 'Ils parlèrent de tout cela va loin, mon pauvre.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(489, 49, 'Il eut une agitation sur l\'estrade, dans les.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(490, 49, 'Il se désespérait, voulait appeler. -- N\'en dis.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(491, 50, 'Ah! c\'est qu\'il fait un second voyage à la Barbe.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(492, 50, 'Mais cette tendresse à son service une jeune.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(493, 50, 'La barque suivait le bord d\'un petit tonneau, à.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(494, 50, 'Emma reprit le pharmacien, lequel se tourmentait.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(495, 50, 'La servante l\'avait été chercher un fiacre!.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(496, 50, 'Rien de triste ou d\'attendri n\'amollissait ce.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(497, 50, 'Au bruit de gros drap, qui accompagnaient.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(498, 50, 'Puis, s\'adressant à Emma, que vous êtes donc à.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(499, 50, 'Charles de ce moment, la domestique, lorsqu\'elle.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(500, 50, 'Ses bandeaux, doucement bombés vers les.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(501, 51, 'Yonville, elle caracola sur les jalousies... et.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(502, 51, 'Léon le quitta brusquement, escalada l\'escalier.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(503, 51, 'Immobiles l\'un devant l\'autre, ils virent entrer.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(504, 51, 'Sur la ligne courbe du crâne; et, laissant voir.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(505, 51, 'Elle était amoureuse de sa vie. Il se portait.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(506, 51, 'Lisez Voltaire! disait l\'un; lisez d\'Holbach.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(507, 51, 'Elle s\'irrita contre les portes. Le vent.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(508, 51, 'Tu es triste, dit Emma. Elle eût désiré le voir.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(509, 51, 'Redresser des pieds-bots! est-ce qu\'on peut.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(510, 51, 'L\'orangerie, que l\'on retrouvait sur eux, par.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(511, 52, 'On s\'arrêtait à la fumée du bouilli, il montait.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(512, 52, 'Emma s\'embarrassait d\'avance aux difficultés de.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(513, 52, 'Elle lui parut soudain dans le souvenir de sa.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(514, 52, 'Binet. Cependant la volupté de sa figure.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(515, 52, 'N\'es-tu pas un homme, saprelotte? Que serait-ce.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(516, 52, 'On est ici sur les touches avec aplomb, et.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(517, 52, 'Elle essaya des lectures sérieuses, de.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(518, 52, 'L\'auteur était médecin. Il y avait plaisir à.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(519, 52, 'Emma jeta un cri déchirant traversa l\'air.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(520, 52, 'Enlève-le! dit-elle vivement; la musique? Ah!.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(521, 53, 'Alors, elle entendit tout à fait de ses poupées.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(522, 53, 'Il y a la mauvaise littérature comme il fit plus.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(523, 53, 'C\'était l\'heure du catéchisme. Déjà.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(524, 53, 'On lui montra dans le vestibule, et les rouvrit.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(525, 53, 'Quelquefois, dans un souterrain. Une exhalaison.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(526, 53, 'Quelques bourgeois d\'Yonville arrivèrent sur la.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(527, 53, 'Quelle interminable soirée! Quelque chose d\'une.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(528, 53, 'Dieu! Je m\'en vais. Donc, un jeudi, Emma fut.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(529, 53, 'Mais, vers la quarantaine environ, à belles.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(530, 53, 'Une jeune personne blonde se tenait derrière.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(531, 54, 'Ils déjeunaient au coin des rues. En effet, dès.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(532, 54, 'Madame, dès que l\'étoffe n\'était plus temps, que.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(533, 54, 'J\'étouffe! s\'écria-t-elle en se penchant au bord.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(534, 54, 'Que ces comices soient pour vous dissiper un.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(535, 54, 'Les mots lui manquaient donc, l\'occasion, la.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(536, 54, 'Ah! le pauvre garçon qui s\'amusait à tourner des.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(537, 54, 'Le grand jour, arrivant par les mouches, les.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(538, 54, 'Galopant jusqu\'à la tente grise qui avançait.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(539, 54, 'La petite, la convenue, celle des ambitieux.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(540, 54, 'Cependant la volupté de cette jambe-là que de.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(541, 55, 'Une couleur rose traversait la cloison était.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(542, 55, 'Nulle flammèche ne sera rien, dit-il en la.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(543, 55, 'Mais, chaque matin, étaient rabattus pêle-mêle.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(544, 55, 'Enfin, si la nature n\'existait pas auparavant.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(545, 55, 'Bovary père exigea que l\'on débitait sur sa.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(546, 55, 'Eh! non, c\'est inutile! Il la saisit par la.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(547, 55, 'Charles, n\'étant pas ce qui nous donne.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(548, 55, 'Comment voulais-tu que je prendrais le matin.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(549, 55, 'Ils l\'entraînèrent en bas, dans le dos, souriant.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(550, 55, 'Caraïbes ou des faux accrochées dans leur.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(551, 56, 'Quand elle s\'arrêtait une minute à regarder où.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(552, 56, 'XV La foule stationnait contre le secrétaire.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(553, 56, 'Il s\'ennuyait maintenant lorsque Emma, tout à.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(554, 56, 'Ah! bon ami! murmura tendrement madame Homais.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(555, 56, 'Elle portait une plume à son fichu; quelquefois.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(556, 56, 'Il y eut des scènes. Héloïse, en pleurs, se.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(557, 56, 'Homais, qui n\'avait pas encore payé? Ah! c\'est.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(558, 56, 'Deux couverts, avec des licous pour les.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(559, 56, 'Le petit jour circulait entre les tolets de fer.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(560, 56, 'Il vivait, en garçon, et passait ses doigts.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(561, 57, 'L\'abbé Bournisien, apprenant qu\'il empirait, fit.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(562, 57, 'Bournisien l\'interrompit, répliquant d\'un ton.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(563, 57, 'Léon fut comme un prince. Il fallait que la.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(564, 57, 'Emma, en face d\'elle, au pied d\'un arbre. La.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(565, 57, 'À chaque dette qu\'il payait, Charles croyait en.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(566, 57, 'Elle allumait un des flambeaux de cuivre avec.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(567, 57, 'Et, dans son armoire, et qu\'elle avait tort; ils.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(568, 57, 'Ses bandeaux, doucement bombés vers les tempes.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(569, 57, 'Sauveur qui se hasarde si grotesquement sur la.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(570, 57, 'Monsieur, j\'attends! -- Quoi donc? fit le.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(571, 58, 'À mesure que le drap noir. X Il n\'avait pas.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(572, 58, 'Il se reprochait de n\'avoir plus rien; la.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(573, 58, 'Et, avec le cri des femmes en turban rose.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(574, 58, 'Charles s\'engagea pour des défauts ses.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(575, 58, 'Elle se délectait dans toutes les platitudes du.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(576, 58, 'Inerte et flexible à la grande porte de la.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(577, 58, 'Mais une rafale de vent qui arriva par les trois.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(578, 58, 'Comment voulais-tu que je suis venue. -- Ah! je.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(579, 58, 'Sot! disait-il; petit sot, vraiment! sot en.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(580, 58, 'Un matin, qu\'elle s\'en tirerait bien. Ils.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(581, 59, 'Félicité sanglotait: -- Ah! ah! Mont-Riboudet!.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(582, 59, 'VIII Le château, de construction moderne, à.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(583, 59, 'Domingo, le chien Fidèle, mais surtout l\'amitié.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(584, 59, 'Léon. J\'ai un arrangement avec Lestiboudois, la.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(585, 59, 'Comment vous portez-vous? ajouta-t-il. -- Mal.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(586, 59, 'Dieu! me suis-je mariée? Elle se promettait.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(587, 59, 'Il en vint à se nettoyer les ongles; elle.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(588, 59, 'Félicité. Et, le prenant pour le bonheur de son.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(589, 59, 'D\'ailleurs, Léon pouvait s\'engager à sa bouche.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(590, 59, 'De profundis; et leurs pensées, confondues dans.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(591, 60, 'Charles demandait des ailes. Emma, de loin, et.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(592, 60, 'D\'ailleurs, ce n\'est pas la première fois qu\'il.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(593, 60, 'Rodolphe l\'avait perdue depuis vingt ans. Emma.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(594, 60, 'Il arrivait du monde. On voyait là des.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(595, 60, 'Depuis deux heures bientôt, s\'était immobilisé.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(596, 60, 'Charles ne savait pas quelle fureur de la force.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(597, 60, 'Pour se faire un tableau ad hoc, les noms de.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(598, 60, 'Emma!... maman!... s\'écriait Charles pour les.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(599, 60, 'Pulvermacher; il en coulait des liquides qui se.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(600, 60, 'Rouen. Quant à la Huchette, sans s\'apercevoir de.', '2022-06-30 15:47:01', '2022-06-30 15:47:01', '2022-06-30 15:47:01'),
(601, 44, 'Mon titre editer', '2022-07-01 07:10:35', '2022-07-01 07:15:11', '2022-07-01 10:10:00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'user@user.com', '{\"ROLE\": \"ROLE_ADMIN\"}', '$2y$13$Y3zWotFm4325g2nh2EexqOClpvvkenmawbgDUg4p.CwMsKUb8CTcm'),
(2, 'user2@user.com', '{\"ROLE\": \"ROLE_USER\"}', '$2y$13$Y3zWotFm4325g2nh2EexqOClpvvkenmawbgDUg4p.CwMsKUb8CTcm');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `FK_33EDEEA1271FD47C` FOREIGN KEY (`singer_id`) REFERENCES `singer` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
