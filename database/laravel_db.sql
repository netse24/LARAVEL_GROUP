-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 07:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_08_121147_create_posts_table', 1),
(6, '2023_05_08_155832_create_people_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `random_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name`, `email`, `password`, `random_date`, `status`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Benny Sipes', 'ila00@example.net', '<5~6kY%dT2-<~V', '1977-11-13', 0, 'https://via.placeholder.com/640x480.png/00bbdd?text=sunt', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(2, 'Leonel Bergnaum DVM', 'margarete.schultz@example.net', '~T&A(j!}]sXzNQ?', '1984-06-18', 1, 'https://via.placeholder.com/640x480.png/0077bb?text=magni', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(3, 'Mr. Tobin Paucek V', 'nikolaus.sydni@example.net', 'u_)4_*', '1979-01-13', 0, 'https://via.placeholder.com/640x480.png/00bbff?text=corrupti', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(4, 'Edison Mohr', 'cartwright.magdalen@example.com', 'VoD.Z_@', '2011-10-19', 1, 'https://via.placeholder.com/640x480.png/0055ff?text=et', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(5, 'Myrtis Deckow IV', 'fadel.velva@example.net', 'MWIhYlL,4q', '1981-11-10', 0, 'https://via.placeholder.com/640x480.png/0000bb?text=atque', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(6, 'Lucy Howell', 'reva.vandervort@example.com', '8<t24;1/', '1977-11-30', 0, 'https://via.placeholder.com/640x480.png/006611?text=consequatur', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(7, 'Doyle Gulgowski', 'eldridge.fahey@example.net', 'n\'KToRTp&W.Kbfe[a', '1996-08-05', 0, 'https://via.placeholder.com/640x480.png/0088bb?text=veniam', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(8, 'Ms. Malika Wuckert Jr.', 'schmidt.corrine@example.org', 'Pc`^Ty{O', '1979-03-15', 0, 'https://via.placeholder.com/640x480.png/00bb11?text=sint', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(9, 'Daron Hodkiewicz', 'sienna.hintz@example.org', 'mN8bQ=OOzr/@`Bs', '1979-06-17', 0, 'https://via.placeholder.com/640x480.png/003344?text=et', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(10, 'Francis Runolfsdottir', 'smarquardt@example.net', 'm,2Pa268', '2003-08-09', 0, 'https://via.placeholder.com/640x480.png/00ffff?text=nisi', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(11, 'Fabian Stamm', 'isobel38@example.net', 'J1WoJL<=V<[Gbe0Tw4', '1971-07-08', 0, 'https://via.placeholder.com/640x480.png/005522?text=quo', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(12, 'Miss Karianne Murphy', 'rhahn@example.com', 'YgU%E9{#GT>', '1998-02-05', 0, 'https://via.placeholder.com/640x480.png/0033dd?text=reiciendis', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(13, 'Beth Ullrich DDS', 'hodkiewicz.amya@example.net', 'fpI4w%FLs#c', '2004-08-14', 1, 'https://via.placeholder.com/640x480.png/0022cc?text=asperiores', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(14, 'Dr. Jayden Brekke', 'elda.murray@example.net', 'u?tKk~\\', '1992-01-23', 0, 'https://via.placeholder.com/640x480.png/0044cc?text=alias', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(15, 'Ardith Gleichner', 'swaniawski.lisette@example.org', '5)fIv-8d1>vny:b', '2016-05-27', 1, 'https://via.placeholder.com/640x480.png/006677?text=aut', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(16, 'Catharine Kassulke', 'uthompson@example.com', '\'<E9`hqc', '2021-11-30', 0, 'https://via.placeholder.com/640x480.png/00cc77?text=beatae', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(17, 'Dr. Ellsworth Ward III', 'buck30@example.net', 'runtn\'7#lI[Cs,^8pq0', '2007-06-20', 1, 'https://via.placeholder.com/640x480.png/005533?text=excepturi', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(18, 'Emery Hyatt', 'balistreri.pat@example.com', '{(\"M@A=n@I\\?X', '1997-09-07', 0, 'https://via.placeholder.com/640x480.png/00cc22?text=ut', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(19, 'Brianne Jacobs', 'marcia.dibbert@example.com', 'AZiJ;;uTc;R,sLA', '1977-12-12', 0, 'https://via.placeholder.com/640x480.png/00ee44?text=illum', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(20, 'Dr. Irma Wiegand PhD', 'efarrell@example.org', '86Sj<\\FtWb', '1977-10-24', 0, 'https://via.placeholder.com/640x480.png/00dd66?text=rerum', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(21, 'Hal Langosh PhD', 'judy76@example.net', 'rl[?gm/0[t*', '1993-08-02', 0, 'https://via.placeholder.com/640x480.png/00cc33?text=ut', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(22, 'Hobart Nader Sr.', 'xbecker@example.org', 'YRxkQPsB^Yz@U{P', '1978-04-30', 0, 'https://via.placeholder.com/640x480.png/00cc11?text=ex', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(23, 'Vernon Botsford', 'cesar.will@example.net', '2\'PG<x+6\'&[NrA', '2012-11-25', 0, 'https://via.placeholder.com/640x480.png/002233?text=hic', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(24, 'Malinda Paucek', 'ahmad32@example.net', 'jXv\'ONI', '2022-11-19', 1, 'https://via.placeholder.com/640x480.png/00ddcc?text=molestiae', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(25, 'Olaf Bartell', 'marilie43@example.com', 'V?tsdmvX/?', '1988-07-28', 0, 'https://via.placeholder.com/640x480.png/00bbff?text=iste', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(26, 'Jeremie Johns DDS', 'casimer.torp@example.com', '67kuFP>p}u%q`>}R9Ff)', '1994-03-20', 0, 'https://via.placeholder.com/640x480.png/001199?text=illo', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(27, 'Dr. Whitney Carroll', 'colten11@example.com', 'yZ@\\rDqj', '2009-12-16', 0, 'https://via.placeholder.com/640x480.png/00ddff?text=tenetur', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(28, 'Roslyn Hackett MD', 'zlubowitz@example.com', 'J\'MP8?LM_uSDyG]&)n9/', '1972-08-19', 1, 'https://via.placeholder.com/640x480.png/002288?text=cumque', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(29, 'Asha Tillman', 'rocio80@example.org', 't!Q?7Q{#rgw;6>', '1995-08-05', 0, 'https://via.placeholder.com/640x480.png/0011dd?text=atque', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(30, 'Gillian Connelly', 'waters.freda@example.net', '^sTi1(FQbr_g', '2017-06-10', 1, 'https://via.placeholder.com/640x480.png/0022dd?text=incidunt', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(31, 'Justine Hermann DDS', 'trantow.alexandre@example.org', 'O^n-Aw#|su<&P:q', '1972-04-24', 1, 'https://via.placeholder.com/640x480.png/0044ff?text=alias', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(32, 'Dan Tremblay', 'nayeli.grady@example.com', 'BzSfDsD8Vl', '2001-03-23', 0, 'https://via.placeholder.com/640x480.png/00ff55?text=ipsum', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(33, 'Lempi O\'Hara', 'zulauf.collin@example.com', 'n)dp>:(8I/cN%=', '1997-11-10', 0, 'https://via.placeholder.com/640x480.png/0044cc?text=voluptatibus', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(34, 'Nannie Beatty', 'okon.jarvis@example.net', '/l>?GIkXY', '2017-11-06', 1, 'https://via.placeholder.com/640x480.png/003344?text=modi', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(35, 'Bud Weber', 'lueilwitz.robert@example.net', 'HiwG3G6g>;=Z', '1987-12-29', 1, 'https://via.placeholder.com/640x480.png/007733?text=nulla', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(36, 'Keshaun Dickens', 'glen.kerluke@example.net', 'a<%Ib(YK\"[Eu9F-WR:K7', '2007-02-14', 1, 'https://via.placeholder.com/640x480.png/0011ff?text=ut', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(37, 'Dr. Karianne Schuppe DDS', 'donnelly.sanford@example.com', ')2SY.6}koEzJ]L<[un', '1976-08-03', 1, 'https://via.placeholder.com/640x480.png/008844?text=fuga', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(38, 'Dr. Zachery Bednar', 'lowe.pinkie@example.com', '|Oa*WLD~bCP', '2001-11-27', 0, 'https://via.placeholder.com/640x480.png/00ff00?text=error', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(39, 'Mallie Stokes', 'lwyman@example.com', ')ToT5I@Qh)I<)', '1983-06-04', 0, 'https://via.placeholder.com/640x480.png/009988?text=doloribus', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(40, 'Cornelius Wolff Jr.', 'cvandervort@example.net', '-smT\'`Sr&i$EeI', '1991-11-20', 1, 'https://via.placeholder.com/640x480.png/0022cc?text=est', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(41, 'Ilene Kuhic', 'marquise97@example.org', '*-o6XV', '1982-04-29', 1, 'https://via.placeholder.com/640x480.png/003344?text=iusto', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(42, 'Dr. Hilario Sauer', 'hettinger.bernardo@example.com', 'kDY`Pk,K(N(/|QfyAuY', '1988-08-18', 1, 'https://via.placeholder.com/640x480.png/0055ff?text=suscipit', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(43, 'Ephraim Cremin', 'xgreenfelder@example.com', 'FXj.e(EEK', '2017-08-12', 1, 'https://via.placeholder.com/640x480.png/004400?text=quasi', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(44, 'Mr. Laverna Terry II', 'yolson@example.net', '+IrHT6hx4]Dw', '2022-02-25', 0, 'https://via.placeholder.com/640x480.png/0033ee?text=voluptatem', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(45, 'Dr. Franco Gerhold', 'daniel.benton@example.net', 'u\\\"@If\\/uL', '2015-11-07', 0, 'https://via.placeholder.com/640x480.png/005588?text=quisquam', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(46, 'Joana Brakus', 'cali.kuphal@example.net', 'b:Ai100WS0<+!', '1974-06-10', 0, 'https://via.placeholder.com/640x480.png/00aa55?text=qui', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(47, 'Cameron Bogisich III', 'runolfsson.savion@example.net', 'pL7\'M5F_8Ca', '1981-03-14', 1, 'https://via.placeholder.com/640x480.png/0099ee?text=nisi', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(48, 'Ephraim Barton', 'sincere15@example.org', '3a;,k|fmxE#L4)>c8u', '1980-03-29', 1, 'https://via.placeholder.com/640x480.png/00ee44?text=aut', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(49, 'Rene Torp', 'xdubuque@example.org', '~qk:;L[4rdsj', '1976-07-07', 1, 'https://via.placeholder.com/640x480.png/008888?text=nisi', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(50, 'Estefania Lehner DDS', 'jermain17@example.org', '0#4dv@|hcb8|ynn|,jZ', '2011-05-25', 0, 'https://via.placeholder.com/640x480.png/0088cc?text=et', '2023-05-08 09:26:44', '2023-05-08 09:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `title`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Katelin Russel', 'Sit exercitationem excepturi qui et sit nihil nihil vero.', 1, 'Beatae recusandae consequuntur nemo quia. Rem corrupti quasi qui sit. Earum eligendi iure doloremque.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(2, 'Ms. Dina Jenkins Jr.', 'Pariatur rem voluptatum at corporis.', 2, 'Nulla aperiam eveniet vero numquam dolor asperiores. Earum odit ut deserunt hic quae voluptatem unde. Iusto rerum enim eaque cum pariatur repudiandae impedit.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(3, 'Dorcas Rowe', 'Itaque temporibus porro quo sed.', 3, 'Nihil id voluptatem sunt quis aut laudantium omnis ad. Ut laborum et aut molestiae mollitia.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(4, 'Ms. Adelia Rodriguez', 'Necessitatibus cupiditate officia aut debitis quos.', 4, 'Fugiat accusantium aut aliquam quas qui deleniti et. Quos magni illum et nobis et sunt est mollitia. Repellendus fugit et nihil incidunt occaecati. Hic provident esse labore occaecati eaque placeat velit.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(5, 'Prof. Martin Flatley', 'Velit fugit quis aliquam est nihil quidem nihil corrupti.', 5, 'Deserunt eveniet id numquam fugiat corrupti sint. Ex repudiandae vero neque asperiores quo.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(6, 'Ms. Oma Dickens', 'Ipsam dolorem in id et numquam.', 1, 'Optio voluptatem repudiandae voluptates inventore. Voluptatem est quod cum enim neque. Et facere labore quod quia ut. Et commodi ut est quo.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(7, 'Lucas Shields MD', 'Ut neque et voluptatem maiores nesciunt non.', 120, 'Quae a fuga quae eaque. Libero dicta quia praesentium earum minima error ea natus. Saepe porro iure id illo. Labore provident atque placeat debitis.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(8, 'Johnson Wisozk', 'Id ut odit voluptas consequatur ratione omnis.', 20, 'Cupiditate blanditiis aspernatur assumenda voluptatem quis veritatis non. Quo et nihil perspiciatis est assumenda accusamus. Necessitatibus ut sit alias voluptas. Error voluptatem et consequuntur ex cum aut consequatur.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(9, 'Prof. Tyreek Tromp IV', 'Molestiae perspiciatis totam quae qui blanditiis.', 30, 'Sapiente est fuga qui. Et voluptas inventore culpa tempore. Voluptas id omnis aut expedita ea aliquam. Odit labore eaque numquam nam occaecati.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(10, 'Fiona Kulas', 'Dolorem et magni neque consequuntur est mollitia quo quia.', 40, 'Quod nisi aut harum commodi ut consequuntur quidem. At modi et enim cumque qui. Pariatur reprehenderit doloribus in dolor.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(11, 'Abigayle Weimann Jr.', 'Optio voluptas labore magnam saepe.', 121, 'Quis molestias numquam nisi qui voluptatibus ad. Non ipsum culpa aspernatur dolores iure sint. Necessitatibus omnis dolor minima dicta eum et quis ea. Ut laudantium soluta nihil id.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(12, 'Wilbert Flatley', 'Molestiae doloremque autem id.', NULL, 'Culpa sequi doloribus dignissimos atque. Est quia facere veniam commodi. Eaque exercitationem dolor debitis itaque. Consequatur maxime rerum id magnam ut repudiandae et.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(13, 'Dr. Earnest Altenwerth', 'Nihil qui tempora blanditiis.', NULL, 'Harum voluptatibus sapiente aliquid aliquam. Magni eum repudiandae facere earum exercitationem. Quia quaerat voluptas nemo cum iste quia suscipit aut. Aperiam expedita soluta sit suscipit et aliquam. Nihil architecto tempore aut.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(14, 'Emerald Kuhlman Sr.', 'Omnis iste voluptas iure qui.', NULL, 'At voluptatum id illo ea eius sed minima. Nihil porro aut qui cum sunt quis. Dicta quisquam et sunt optio doloremque. Ea ut temporibus quod quia voluptate sapiente.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(15, 'Herminio Ledner', 'Eveniet aperiam repellendus laudantium quaerat qui aut qui.', NULL, 'Et consequatur consequatur molestiae nam deleniti quidem. Unde sunt quia libero architecto. Aut tempora accusamus est animi voluptates aliquam sint. Eos quia laboriosam voluptatem qui deserunt.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(16, 'Mrs. Nova Corkery MD', 'Sit est enim aut est.', NULL, 'Est voluptatem enim explicabo unde sed voluptatem. Possimus in sapiente eos sequi cumque enim ipsa. A labore ipsam inventore suscipit tenetur voluptas sit. Nostrum quia enim et dicta corrupti inventore sit consequatur. Nobis culpa qui quaerat esse corporis.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(17, 'Madelyn Kautzer', 'Sequi temporibus omnis perferendis nesciunt omnis aut.', NULL, 'Non aut non ipsam. Placeat earum incidunt quibusdam quas. Omnis minus et aperiam et recusandae magni consequuntur. Et enim voluptatem necessitatibus blanditiis.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(18, 'Nathanial Considine', 'Sapiente repellat rem nostrum labore dicta culpa.', NULL, 'Quos aut qui veritatis nemo itaque non. Possimus velit illum molestias maxime. Aliquam sint sed fuga est enim delectus in laudantium. Veritatis aut a qui aut velit at.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(19, 'Adrienne Kovacek', 'Debitis dolorem rerum minima.', NULL, 'Quidem sit totam dolores nemo et fugiat. Odit quae veritatis sunt et enim quam. Est placeat est iste rerum. Nihil ut eos dolorem repellat sit est animi.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(20, 'Dr. Stefanie Berge', 'Amet dolorem aut in aut aut aliquid.', NULL, 'Dolorem voluptas quia voluptatem. Voluptate amet voluptates nihil nihil aut necessitatibus in at. Fugit alias ad aliquid omnis architecto dolores quia. Libero repellat at repudiandae ut nemo.', '2023-05-08 06:15:34', '2023-05-08 06:15:34'),
(21, 'Hello ', 'test', 20, 'Hello the world!', '2023-05-08 13:16:43', '2023-05-08 13:16:43'),
(22, 'Lizeth Zieme', 'Commodi beatae velit esse nisi deserunt.', NULL, 'Perspiciatis rerum sunt minus sunt qui accusantium blanditiis. Tempore voluptatum iure ut nesciunt non aut reprehenderit. Minus consequatur quia quis. Architecto qui et voluptatibus provident.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(23, 'Daija Dickens', 'Et quis quos nihil distinctio.', NULL, 'Aut voluptatem molestias voluptatibus libero aperiam aut. Modi dolorem quibusdam mollitia nisi. In voluptatem sunt dolor rem et dolores. Aut ut eligendi corporis quod quia eum et quia. Ut beatae quis velit.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(24, 'Libbie Bradtke', 'Quos dolor inventore voluptatibus.', NULL, 'Recusandae aliquam impedit distinctio inventore optio. Neque cumque nesciunt beatae qui libero similique ut. Et qui ea sunt eaque consequatur dolor asperiores. Et sint eaque odio qui eaque voluptas.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(25, 'Micaela Grant', 'Beatae dicta ut quo quos quaerat non placeat suscipit.', NULL, 'Voluptatem minima architecto reiciendis voluptatem expedita ratione est similique. Asperiores aut sit fugit quod dolor omnis harum. Est id aut laborum occaecati sit voluptatibus non ut.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(26, 'Dr. Brando Rath', 'Expedita debitis minus ut quisquam.', NULL, 'Quidem accusantium id nesciunt totam reiciendis at aut hic. Possimus et suscipit voluptas quas enim aliquam voluptate aut. Quidem molestiae quibusdam repellendus dolore. Vitae et architecto eaque provident odit repellendus.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(27, 'Era Mertz', 'Aut eum quo beatae nesciunt sed sapiente qui.', NULL, 'Similique aliquid sint omnis doloribus reprehenderit aut et. Temporibus rerum porro reprehenderit saepe aut natus facere. Soluta dignissimos omnis voluptatibus cumque neque accusantium. Et occaecati ut nam aliquam ad fugit. Voluptatibus natus totam dicta quia aut minus aut.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(28, 'Miss Antonetta Hickle III', 'Est aliquam rerum ad magni odio.', NULL, 'Cupiditate optio dolor est non voluptatum quia. Deleniti provident natus rerum voluptatum. Est ut vero nulla aliquam.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(29, 'Mrs. Augusta Daugherty', 'Unde velit esse ad cumque.', NULL, 'Fugiat aut et inventore dolor eos ea adipisci. Dolores asperiores dolore iure repudiandae iure rerum harum. Id qui quasi quisquam et. Enim earum velit sit dolore omnis.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(30, 'Mr. Colt Pouros MD', 'Perspiciatis tenetur necessitatibus cupiditate aspernatur autem ab praesentium.', NULL, 'Fugiat alias necessitatibus qui molestiae nemo voluptas quos praesentium. Reiciendis dolor minus eaque dignissimos veritatis consequuntur et delectus. Enim vitae libero magnam molestiae magnam earum accusamus.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(31, 'Genevieve Rowe', 'Culpa ab nostrum aut facilis quos ipsa.', NULL, 'Ea delectus sed nihil expedita. Praesentium sed corporis aliquid non. Voluptas qui blanditiis necessitatibus quae commodi.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(32, 'Prof. Weldon Reichert Sr.', 'Sit consequuntur fuga at cum eaque.', NULL, 'Ducimus qui in accusantium sapiente voluptatibus dolorem. Quis delectus facere consequatur ex. Aperiam optio facere doloribus eius delectus corrupti. Nulla id rerum unde et nisi in hic.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(33, 'Jarrett Simonis III', 'Cupiditate tempore doloribus rerum.', NULL, 'Omnis unde nostrum labore sint vitae. Dicta cum enim minus aut. Nemo excepturi commodi maiores atque autem debitis.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(34, 'Javonte Larkin', 'Ipsam voluptatem totam perspiciatis ab omnis quo quos ipsum.', NULL, 'Nihil eum vel assumenda ad incidunt. Praesentium voluptatem iure necessitatibus eos sed velit omnis. Ipsum natus est explicabo rerum facilis.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(35, 'Hardy Miller', 'Voluptate vel eaque expedita nisi.', NULL, 'Nihil nihil qui saepe velit cum et nobis qui. Necessitatibus amet accusamus neque temporibus. Asperiores totam nostrum aut accusantium tenetur. Est ratione facilis possimus et quia quis ut.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(36, 'Prof. Korey Corkery Jr.', 'Fugit quia autem et et reiciendis magnam.', NULL, 'Est optio velit nulla magnam dolores sit labore consequatur. Ad at qui dignissimos qui quibusdam minima enim. Unde in sequi voluptates est itaque dolor neque. Officiis beatae et sed ut molestias.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(37, 'Prof. Ernesto Ledner Sr.', 'Maxime illo sed est cum iure labore officia.', NULL, 'Nostrum ipsa molestias et est ipsa velit. Consectetur qui sint quod debitis eaque. Quod distinctio id ea quo recusandae voluptatibus. Explicabo eum quos fugit corporis beatae odio debitis laborum.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(38, 'Prof. Terrence Russel MD', 'Saepe est non dolore voluptates earum.', NULL, 'Sed rerum dolores qui et tenetur. Consequatur maxime molestiae velit aut assumenda. Et incidunt maxime quidem velit voluptatibus provident hic. Quaerat ut est nemo est earum non.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(39, 'Dr. Quinten Yost', 'Voluptatum est veniam nemo est quisquam non.', NULL, 'Et dolorem tempora aut dolores quia. Provident voluptatem nihil in eum similique eveniet omnis. Omnis laudantium molestiae repellendus eaque vero exercitationem et.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(40, 'Sigurd Steuber', 'Aperiam rem debitis asperiores aut.', NULL, 'Ut itaque velit non repudiandae aliquid omnis. Eos qui non quia sed sequi. Ut blanditiis aliquid eos molestiae ea et aperiam. Ipsam magni quis non labore.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(41, 'Abdiel Reynolds', 'Voluptatem similique recusandae numquam est.', NULL, 'Cupiditate modi nisi eligendi laudantium porro. Enim sit tenetur delectus autem. Culpa soluta veniam consectetur perferendis libero iure aliquam iure. Error voluptatibus quidem provident magnam numquam.', '2023-05-08 09:25:56', '2023-05-08 09:25:56'),
(42, 'Miss Katlyn Skiles', 'Eum et quos quod optio porro officiis.', NULL, 'Fugit earum aut enim sunt dolorem nulla qui ut. Officia laborum quia distinctio dolores nihil ut id. Velit voluptatibus quibusdam in aut id.', '2023-05-08 09:26:25', '2023-05-08 09:26:25'),
(43, 'Tatum O\'Reilly', 'Rem ut deserunt voluptas numquam nemo culpa illum suscipit.', NULL, 'Veritatis aut debitis harum ex enim. Sed eum quaerat sit consectetur. Officia dolores explicabo voluptatum voluptatum aliquid.', '2023-05-08 09:26:25', '2023-05-08 09:26:25'),
(44, 'Dr. Dax Berge', 'Ut dolorem nulla nam.', NULL, 'Amet optio assumenda quis at quia saepe aspernatur. Ex amet ipsa aut.', '2023-05-08 09:26:25', '2023-05-08 09:26:25'),
(45, 'Mrs. Karen Auer', 'Beatae rem odit quia similique.', NULL, 'Vel molestias porro voluptatibus eveniet voluptatem rem ut illo. Et fuga quaerat rerum sunt maxime. Alias aut molestias nobis iusto earum incidunt.', '2023-05-08 09:26:25', '2023-05-08 09:26:25'),
(46, 'Jacey Kub', 'In quasi quibusdam et atque velit dolor asperiores.', NULL, 'Corporis ea et repellendus amet molestiae. Sed quo dolorem quia in est quia. Labore porro dolore quia quia recusandae.', '2023-05-08 09:26:25', '2023-05-08 09:26:25'),
(47, 'Flavie Dietrich', 'Optio repellat aut repudiandae.', NULL, 'In voluptatum harum quaerat occaecati. Ea molestias sit et quidem et voluptatem ut aut. Aliquid unde sed voluptatem veritatis quam enim.', '2023-05-08 09:26:25', '2023-05-08 09:26:25'),
(48, 'Prof. Derrick Gislason IV', 'Exercitationem voluptatem corrupti quo quod quidem esse sed.', NULL, 'Minima ut earum aliquid asperiores maiores. Maxime nam sed dolores. Culpa eligendi odit alias.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(49, 'Zelda Eichmann', 'Debitis quaerat magnam sed ratione sunt et praesentium.', NULL, 'Dicta dolores omnis nihil earum dignissimos. Sit deleniti quod asperiores quo quod.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(50, 'Dr. Stevie Huel', 'Sint velit ab temporibus.', NULL, 'Assumenda similique nisi similique. Quas aut nisi architecto qui.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(51, 'Mrs. Modesta Gislason PhD', 'Illum voluptatibus rem sit ea.', NULL, 'Ut laborum amet pariatur ut aut ad voluptas. Eligendi quas ab est reiciendis alias vero. Nobis totam a repellat vel quae cum.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(52, 'Teagan Schroeder', 'Aut recusandae est ipsam natus reiciendis alias.', NULL, 'Nihil molestias dolorem cupiditate. Libero aliquid deserunt debitis ducimus nihil sunt. Debitis beatae sit ut voluptate.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(53, 'Shanie Huels', 'Voluptatem est quasi perferendis harum qui quis.', NULL, 'Voluptate saepe et sint nobis. Harum ut culpa dolorem facilis eos officia. Explicabo sit explicabo esse pariatur. Consequatur quos dolorem voluptatem.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(54, 'Mr. Tobin Farrell', 'Voluptatum dolorem eveniet quia et voluptatem ut.', NULL, 'Perferendis hic sunt qui. Ex officiis ipsum quaerat rerum aliquam asperiores quos.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(55, 'Winona Ullrich', 'Id in consectetur qui sint ea reiciendis eos asperiores.', NULL, 'Ab sint sunt vitae earum. A reprehenderit odit qui reprehenderit ipsam eius. Atque deserunt blanditiis voluptatibus eos.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(56, 'Dr. Durward Sauer', 'Repellat consectetur voluptates nesciunt nemo.', NULL, 'Repudiandae quisquam qui hic rerum. Quia ea et suscipit voluptate. Eum tempore qui sint autem ullam veritatis aut dolores.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(57, 'Maxie Stoltenberg Jr.', 'Est et et aut asperiores beatae ducimus enim.', NULL, 'Libero quis minus accusantium minima maiores fuga magni. Exercitationem quia provident cupiditate fuga perspiciatis. Quibusdam repudiandae accusamus omnis quia natus. Aut dolores optio velit sint ab.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(58, 'Freda Kling', 'Vel consequatur pariatur assumenda cum.', NULL, 'Minima non ipsam provident rerum. Quis quia aliquid est numquam officiis laboriosam repellendus ipsam. Delectus quo fugit est cupiditate ea modi aut. Est voluptatem similique provident voluptatibus. Voluptatem ea aliquid et ut.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(59, 'Filomena Strosin', 'Rerum ea et amet placeat.', NULL, 'Mollitia suscipit voluptas est delectus voluptas blanditiis nobis. Aut quos nulla tempora labore. Ad dolorum est quo illo. Ullam sit nemo voluptatibus assumenda.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(60, 'Dorthy Jacobi', 'Est est magnam quia.', NULL, 'Qui aut blanditiis quibusdam velit sint aut iste. Similique eos molestiae ducimus possimus. Debitis nemo velit voluptatibus.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(61, 'Isabel Rowe Sr.', 'Sequi provident aut adipisci nam placeat doloremque.', NULL, 'Nobis qui qui nulla unde provident incidunt. Officia eligendi et omnis rerum hic amet. Dolores quibusdam nemo quia atque. Aut eum accusamus ipsum voluptate. Et dolores expedita quis esse et dolore laborum.', '2023-05-08 09:26:26', '2023-05-08 09:26:26'),
(62, 'Cynthia Erdman', 'Voluptatum labore enim enim aut deserunt temporibus incidunt.', NULL, 'Aperiam aut praesentium autem similique. Illum aut consequatur illo pariatur optio quam ut. Blanditiis natus eaque ut. In expedita doloremque reiciendis et sint non dicta.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(63, 'Cameron O\'Keefe', 'Quo nihil officia nisi maiores totam enim enim.', NULL, 'Iure rem error tenetur et. Itaque doloremque officia nam deserunt perferendis dicta. Repellat repudiandae eos ipsum quod.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(64, 'Jennifer Lesch', 'Explicabo error eum saepe omnis tempora voluptates neque sunt.', NULL, 'Cumque repellat qui deleniti ipsam. Aut sapiente quaerat ut ratione. Nobis est corporis laboriosam laudantium perferendis perferendis. Qui officiis ab consequuntur quo. Voluptas itaque voluptas incidunt corporis.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(65, 'Miss Oleta Willms', 'Ab possimus ut quia est porro eum est dolore.', NULL, 'Nihil quae quo porro molestiae dicta excepturi. Vitae quisquam est perferendis quis. Perspiciatis error consequatur consequatur optio officiis quia. Architecto dolorum qui id labore.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(66, 'Joana Sanford', 'Explicabo magnam unde unde esse quia.', NULL, 'Ab voluptatem iste perspiciatis quos quia qui voluptas. Consequatur natus minus ex eligendi et sint. Ipsam adipisci cum maxime aliquam et.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(67, 'Coy Windler', 'Qui molestiae cum harum.', NULL, 'Voluptatum libero et sunt quisquam maxime ipsum fugit. Cupiditate quibusdam nihil alias et commodi.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(68, 'Dr. Kacie Waters V', 'Fugit architecto nostrum sit et cumque fugit omnis.', NULL, 'Eaque repudiandae velit porro odio et illum tenetur. Tempora quis fugit et. Ex explicabo itaque atque qui officiis ut et. Laboriosam in numquam accusamus sed aspernatur ut quidem.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(69, 'Prof. Melany Toy', 'Eos aut odio ex perferendis.', NULL, 'Voluptatum iusto possimus aperiam est omnis. Odio id ut dolorem quia. Illum similique laborum iusto saepe iusto eos voluptas. Aut dolorum dignissimos eos tempore.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(70, 'Mr. Mikel Robel PhD', 'Et id quis cupiditate.', NULL, 'Labore molestiae ut eum omnis aut. Molestiae laudantium voluptas dolore esse repudiandae et accusantium. Cum distinctio sunt numquam molestiae. Numquam assumenda natus enim inventore.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(71, 'Haven Zieme', 'Suscipit molestiae tempore tempora quis nihil labore quia.', NULL, 'Excepturi aliquam in voluptate aspernatur enim. Quis consequatur amet est culpa et voluptates. Hic sed voluptas eaque ex voluptatum. A suscipit molestiae architecto quia aut.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(72, 'Stacey Tromp', 'Velit et voluptas distinctio architecto fugiat laudantium fugiat.', NULL, 'Magnam omnis laborum iusto et tenetur in et. Qui libero non velit harum quibusdam. Cupiditate ullam sed sed possimus sequi repellendus odio quis.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(73, 'Emily Legros', 'Quam magni omnis quisquam.', NULL, 'Culpa iure sequi voluptatem maxime. Ut ut autem placeat non. Dolor consequatur aut sit.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(74, 'Clotilde Corkery', 'Magnam quia vel labore quisquam eius ut.', NULL, 'Molestias nemo vitae omnis eos dolor laboriosam. Animi eum et at est. Provident sint aut enim aut ad nisi nisi.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(75, 'Prof. Darwin Barton', 'Rerum similique necessitatibus earum voluptate sunt molestiae.', NULL, 'Sed voluptatem cum sequi. Necessitatibus numquam asperiores omnis tempore consequatur sunt ut. Itaque doloremque vel quia consequatur officiis. Doloremque quod harum impedit.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(76, 'Brandon King Sr.', 'Ipsam qui ratione impedit illum saepe quam perspiciatis.', NULL, 'Ducimus sed et in earum tenetur. A velit nulla reiciendis fuga nesciunt perferendis incidunt. In blanditiis corrupti eligendi soluta quia iste. Voluptatem pariatur rem et quod ipsam tempore.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(77, 'Anissa Sanford Sr.', 'Aperiam officiis accusantium labore animi.', NULL, 'Magnam illo tempora tempore qui voluptatem culpa. Nam dolore impedit nemo et quas autem. Repellat beatae a suscipit aut expedita est. Consequatur esse quaerat cumque ad.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(78, 'Dion Vandervort', 'Fugiat amet magnam velit ut.', NULL, 'Atque optio dolor ea atque. In incidunt commodi asperiores earum autem voluptate. Molestiae unde praesentium ut.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(79, 'Dr. Arden Little', 'Adipisci ex sequi voluptatem.', NULL, 'Rem et quibusdam id saepe neque. Saepe esse eum officiis ratione sint ipsum modi eveniet. Est consequatur aut unde assumenda quo sit.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(80, 'Timmothy Kuvalis Sr.', 'Sed nostrum et ullam vitae.', NULL, 'Ut accusamus quaerat mollitia nam sed libero ullam. Quidem aut accusamus est minus. Sint voluptas nam ut mollitia.', '2023-05-08 09:26:44', '2023-05-08 09:26:44'),
(81, 'Dr. Katelynn Raynor', 'Veritatis dignissimos repudiandae natus quo incidunt.', NULL, 'Deleniti magnam nobis aliquid omnis consectetur. Aliquid consequatur unde optio autem. Tempore voluptas laudantium blanditiis eum officia consectetur. Quia aut aut eum nostrum.', '2023-05-08 09:26:44', '2023-05-08 09:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
