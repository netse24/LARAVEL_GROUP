-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 09:21 AM
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
(6, '2023_05_08_155832_create_people_table', 1);

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
(1, 'Miss Autumn Price PhD', 'joanne.johnston@example.net', 'x74j:XN#HWsv', '1999-12-09', 1, 'https://via.placeholder.com/640x480.png/009977?text=accusamus', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(2, 'Aliya Doyle', 'alexander.wiegand@example.net', '\\rmJ<1@', '1993-04-11', 1, 'https://via.placeholder.com/640x480.png/0088ff?text=atque', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(3, 'Hudson Wilderman', 'turner.randall@example.com', '!AiA&/Dz@|9e@!', '1998-01-27', 0, 'https://via.placeholder.com/640x480.png/0000dd?text=et', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(4, 'Van Heidenreich', 'magdalena.funk@example.net', 'N<ZCz%g', '1978-06-01', 1, 'https://via.placeholder.com/640x480.png/0055aa?text=quasi', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(5, 'Juliet Krajcik', 'jessika.dach@example.com', '^i!J\"{(', '1970-04-05', 0, 'https://via.placeholder.com/640x480.png/00ff44?text=laborum', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(6, 'Kelsie Keeling', 'tcasper@example.org', '@!;C^gC|d-!{G]+k.', '2021-06-25', 0, 'https://via.placeholder.com/640x480.png/007799?text=id', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(7, 'Laverne Blanda', 'stracke.elisa@example.com', '>D}ITmzL]yLqYcT\\', '1998-10-28', 0, 'https://via.placeholder.com/640x480.png/0000ff?text=accusamus', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(8, 'Sven Kautzer', 'oswaldo75@example.net', '_A?8~M*,c3$nTAZuC_', '1982-12-24', 1, 'https://via.placeholder.com/640x480.png/0033ff?text=ea', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(9, 'Prof. Roxanne Torphy', 'amy97@example.net', '(?ee}mAXv\\\\/Qn9,\'G[j', '2022-04-01', 1, 'https://via.placeholder.com/640x480.png/005577?text=qui', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(10, 'Malinda Trantow', 'stefan.dare@example.org', '$X`dgDR*mr\\\'b', '1988-12-24', 1, 'https://via.placeholder.com/640x480.png/009999?text=impedit', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(11, 'Ima Pagac', 'caleigh12@example.com', '.2d4U6.v9|>', '2002-05-16', 0, 'https://via.placeholder.com/640x480.png/0044dd?text=autem', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(12, 'Aubrey Parisian', 'muhammad.welch@example.com', 'Bb4*m!:9\\ZYxH/@&', '2000-10-02', 1, 'https://via.placeholder.com/640x480.png/004488?text=dolorum', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(13, 'Marisol Gerlach', 'woodrow.rutherford@example.com', '-rwsX\'6@8w\"r', '1977-11-03', 1, 'https://via.placeholder.com/640x480.png/008822?text=nostrum', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(14, 'Miss Edwina Haag DDS', 'hrodriguez@example.org', 'sebj!dB#HRPrMVjx8', '1989-06-08', 1, 'https://via.placeholder.com/640x480.png/0022bb?text=omnis', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(15, 'Leon Crooks IV', 'stephan.zieme@example.org', ':{\\N}$', '1988-03-22', 0, 'https://via.placeholder.com/640x480.png/007777?text=nulla', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(16, 'Ali Sporer', 'danyka51@example.com', '<Smxc#yLqP8T+o<G', '1978-10-16', 0, 'https://via.placeholder.com/640x480.png/00bbff?text=sint', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(17, 'Rosemary Witting', 'jabari82@example.com', '>2Bc]$[4AdOl\"{VL9z(J', '1971-08-26', 0, 'https://via.placeholder.com/640x480.png/00ddbb?text=magni', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(18, 'Elise Prohaska', 'xlubowitz@example.org', ')r\\?r[\'5r.?EV,@', '1992-04-08', 0, 'https://via.placeholder.com/640x480.png/00ff66?text=odit', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(19, 'Shawn Dibbert', 'ayundt@example.org', '?Gs!;mM@m+[17:j)\\', '2011-08-09', 0, 'https://via.placeholder.com/640x480.png/009955?text=aperiam', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(20, 'Mr. Santino Eichmann', 'okuneva.justine@example.org', '4?^Y6j!*C@', '1998-09-19', 1, 'https://via.placeholder.com/640x480.png/0066ee?text=autem', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(21, 'Prof. Demond Blanda DDS', 'acrist@example.org', 'rb3BCP]#<7t', '1972-12-02', 1, 'https://via.placeholder.com/640x480.png/0000dd?text=nemo', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(22, 'Alexane Terry', 'bergstrom.charley@example.org', 'x\"-F6;mX:t4+', '2017-03-27', 0, 'https://via.placeholder.com/640x480.png/003355?text=optio', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(23, 'Alberta Jacobson', 'zelda22@example.net', 'lMGu5r!:?~rNr', '2000-01-31', 0, 'https://via.placeholder.com/640x480.png/00ccbb?text=aliquid', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(24, 'Jefferey Mueller', 'gmccullough@example.com', '?Q,xA~!a', '2018-01-01', 0, 'https://via.placeholder.com/640x480.png/004433?text=qui', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(25, 'Mrs. Catalina Trantow', 'edwin80@example.net', 'Ojp!5>3\"8t5x{', '1984-10-24', 1, 'https://via.placeholder.com/640x480.png/00ffff?text=natus', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(26, 'Bessie Brakus', 'johns.zoey@example.com', 'lJko59LH<{WU@:D', '1981-02-24', 1, 'https://via.placeholder.com/640x480.png/0011cc?text=est', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(27, 'Dessie Koelpin IV', 'granville65@example.org', '$r{Tp=<?r5:-\\<g|#qH', '1996-06-16', 1, 'https://via.placeholder.com/640x480.png/00dd88?text=soluta', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(28, 'Emil Anderson', 'wisoky.sid@example.net', 'ezxOG#!8#abs]:gzB%R9', '1985-05-26', 1, 'https://via.placeholder.com/640x480.png/000088?text=blanditiis', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(29, 'Lauryn Rice', 'mike55@example.net', 'j\">BRJ\'Nj|?u', '2016-05-30', 1, 'https://via.placeholder.com/640x480.png/008888?text=quia', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(30, 'Montana Nienow', 'caitlyn84@example.org', 'kp3a.E*N{', '1974-05-23', 1, 'https://via.placeholder.com/640x480.png/0000cc?text=rerum', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(31, 'Prof. Casper Gulgowski', 'wframi@example.net', 'fJP\\~v^`-', '1993-11-01', 1, 'https://via.placeholder.com/640x480.png/0088bb?text=beatae', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(32, 'Dr. Thelma Schuppe', 'maryjane28@example.net', '.%\"{,g\\', '1980-12-07', 1, 'https://via.placeholder.com/640x480.png/00bbdd?text=deleniti', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(33, 'Dr. Jonathon Lakin Sr.', 'reba.welch@example.com', '7x/fyJQ;i#cYCB1(', '1971-05-27', 1, 'https://via.placeholder.com/640x480.png/005511?text=culpa', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(34, 'Benton Hirthe', 'greenfelder.leta@example.org', '0UX888`W', '1992-04-20', 0, 'https://via.placeholder.com/640x480.png/009999?text=tempore', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(35, 'Vivian Hauck IV', 'joaquin51@example.com', 'F1J-xMw', '1977-08-08', 0, 'https://via.placeholder.com/640x480.png/00dd11?text=voluptate', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(36, 'Prof. Raegan Schaden', 'larissa68@example.net', 'd.^Tc4!R', '2011-01-20', 0, 'https://via.placeholder.com/640x480.png/00ff44?text=maxime', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(37, 'Marco Moen', 'udubuque@example.net', 'XB]%JJOgB\\ntO%l1y\\_,', '2020-11-19', 0, 'https://via.placeholder.com/640x480.png/00aa44?text=qui', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(38, 'Shaina Morissette', 'zemlak.gregory@example.com', '{\\9\\RcZ`GckJ07.S', '2001-05-05', 1, 'https://via.placeholder.com/640x480.png/0000aa?text=voluptate', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(39, 'Madisyn Wunsch', 'elyssa.witting@example.org', 'it>{9%VT', '1977-12-06', 0, 'https://via.placeholder.com/640x480.png/006611?text=minima', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(40, 'Oliver Friesen', 'blick.ryleigh@example.com', 'OZc}5:', '1990-10-01', 0, 'https://via.placeholder.com/640x480.png/00cc55?text=alias', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(41, 'Delta Gulgowski', 'ankunding.eulalia@example.net', ':f~XTX-=(zhmR,uV', '1993-05-18', 0, 'https://via.placeholder.com/640x480.png/009922?text=ex', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(42, 'Ms. Lauryn Schaefer', 'cindy.huel@example.net', 'YN0{ICa:waco', '1991-03-29', 0, 'https://via.placeholder.com/640x480.png/00ff88?text=suscipit', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(43, 'Blanca Fisher', 'jessy42@example.net', 'l3fG?{Mi\\@$J8', '1980-11-03', 1, 'https://via.placeholder.com/640x480.png/00cc44?text=nihil', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(44, 'Kylie Gutkowski', 'john45@example.com', 'E.nrEoP)g|\\64uXlabDS', '1989-12-31', 0, 'https://via.placeholder.com/640x480.png/00ddcc?text=molestiae', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(45, 'Jedidiah Boyer', 'gmueller@example.org', 'xcP?H_\"4=b>~', '1997-11-27', 0, 'https://via.placeholder.com/640x480.png/005522?text=iure', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(46, 'Duncan Wolff', 'keagan16@example.org', '!/JN)GHPn8', '1980-04-05', 0, 'https://via.placeholder.com/640x480.png/006622?text=consequatur', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(47, 'Frida Wuckert', 'tcummings@example.com', 'Jlr+oOy1#kEqc', '1978-12-04', 1, 'https://via.placeholder.com/640x480.png/002211?text=perspiciatis', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(48, 'Susana Cartwright', 'helene.reilly@example.net', '-[4.w\"lPiKOyzB4W2b', '1993-09-27', 1, 'https://via.placeholder.com/640x480.png/008877?text=et', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(49, 'Stanford Waelchi', 'bernardo00@example.net', 'wu:ZBwVV-A>Wje', '1979-09-11', 1, 'https://via.placeholder.com/640x480.png/00eeff?text=expedita', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(50, 'Prof. Josie Hammes', 'gulgowski.hermann@example.net', ':c1`L|@6k*6R', '2018-10-26', 1, 'https://via.placeholder.com/640x480.png/0033ff?text=et', '2023-05-09 23:29:04', '2023-05-09 23:29:04');

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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `title`, `price`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Net haha', 'Bookking', 12, 'Hello ke', 1, '2023-05-10 13:16:43', '2023-05-10 06:29:31'),
(2, 'Koy', 'Kes', 134, 'tv dea', 2, '2023-05-10 06:30:26', '2023-05-10 06:30:26'),
(3, 'Tay', 'yes ', 123, 'ok', 3, '2023-05-10 06:30:26', '2023-05-10 06:30:26');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Waldo McKenzie', 'melyssa09@example.org', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0TBUSd3iyT', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(2, 'Prof. Hazle Kulas Sr.', 'lenore.jerde@example.org', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JvK2DaDLcM', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(3, 'Fermin Murazik', 'nikolaus.michele@example.net', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6uezJyxiaI', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(4, 'Annamarie Ruecker', 'bednar.rachelle@example.org', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xTaj30CoYc', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(5, 'Hardy Gislason', 'hayley.buckridge@example.org', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D1e11j4R6e', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(6, 'Lucienne Gleason IV', 'iboyle@example.org', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lVQQJY0A1o', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(7, 'Vivianne Will IV', 'jfeeney@example.net', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TnNHBmc2Tf', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(8, 'Mr. Dalton Strosin', 'chaim30@example.net', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7iVSjmoOBg', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(9, 'Dr. Sterling Gulgowski MD', 'schaefer.brad@example.com', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dS9NuCwSb7', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(10, 'Margaretta Hintz', 'farrell.elsie@example.net', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qcngdcNBc5', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(11, 'Asia Torphy Sr.', 'ykling@example.com', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5b1LvzkAi1', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(12, 'Remington Nikolaus', 'kathryne.mcdermott@example.com', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2UAJ5XmfvK', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(13, 'Tara Dietrich', 'melvina.carter@example.com', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ELlsbS3hxn', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(14, 'Frida Zieme', 'wolf.doris@example.net', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2hfPbzi0y0', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(15, 'Elwyn Schneider', 'george.wisoky@example.org', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sg5V7uUttL', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(16, 'Carmella Yundt', 'cronin.genesis@example.com', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F7u1O0YoNo', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(17, 'Miss Lora Bogan', 'agustin24@example.com', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h8Qb089x9x', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(18, 'Mrs. Mona Mitchell', 'elsa96@example.net', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PPCla5NxzC', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(19, 'Prof. Aric Roob Sr.', 'alysa.roob@example.net', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J8bZPYONVk', '2023-05-09 23:29:04', '2023-05-09 23:29:04'),
(20, 'Mrs. Darby Luettgen Sr.', 'cschulist@example.com', '2023-05-09 23:29:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sc0DGtUl5P', '2023-05-09 23:29:04', '2023-05-09 23:29:04');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
