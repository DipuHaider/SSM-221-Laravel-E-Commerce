-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 10:59 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssm221app`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(8, 'Sony', 'sony', 'Sony Corporation is a Japanese multinational conglomerate corporation headquartered in Kōnan, Minato, Tokyo. Its diversified business includes consumer and professional electronics, gaming, entertainment, and financial services.', '1589472718.png', '2020-05-14 10:11:58', '2020-05-14 10:12:16'),
(9, 'Samsung', 'samsung', 'Samsung means \"three stars\" in English) is a South Korean multinational conglomerate headquartered in Samsung Town, Seoul.', '1589472832.png', '2020-05-14 10:13:52', '2020-05-14 10:13:52'),
(10, 'Xiaomi', 'xiaomi', 'Xiaomi Corporation is a Chinese electronics company founded in April 2010 and headquartered in Beijing.', '1589472884.png', '2020-05-14 10:14:44', '2020-05-14 10:14:44'),
(11, 'Natus nesciunt.', 'Sit consectetur magnam.', 'Culpa dicta ipsum et molestiae tempora. Veniam sit labore ut aut aperiam adipisci.', 'Iure.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(12, 'Cupiditate aliquid.', 'Sed dolor.', 'Ex voluptas provident quia alias. Recusandae quia explicabo facilis nisi mollitia.', 'Deserunt corrupti.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(13, 'Aut molestiae.', 'Aut excepturi quae.', 'Quisquam ab nisi dolor ea vero illo minima consequatur.', 'Ad quia.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(14, 'Explicabo et.', 'Aut animi.', 'Harum est rerum minus quo voluptas. Consequatur reiciendis ea officiis necessitatibus nisi maiores in.', 'Aliquam impedit.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(15, 'Blanditiis ea.', 'Et occaecati.', 'Porro nesciunt vitae est possimus sunt sapiente.', 'Aut rerum.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(16, 'Id debitis.', 'Sequi fugiat.', 'Natus dolorem dolor laudantium id alias quasi. Quo nesciunt autem aut possimus ratione aut maxime.', 'Ut.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(17, 'Placeat porro aut.', 'Nisi vel at.', 'Fugit quam veritatis blanditiis veniam consectetur. Assumenda eos quia exercitationem blanditiis quam.', 'Alias ex.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(18, 'Et et.', 'At ad voluptas.', 'Ratione quis omnis fuga sit. Nihil tempore aut delectus molestiae culpa.', 'Fuga delectus.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(19, 'Molestias nemo aut.', 'Ipsam pariatur ut.', 'Velit qui aut natus laborum.', 'Et.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(20, 'Minima dolorum.', 'Ab nisi veritatis.', 'Facilis accusantium natus accusantium.', 'Placeat culpa.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(21, 'Libero voluptatem voluptatem.', 'Nihil doloribus qui.', 'Et autem veniam debitis quia sit. Dolore maiores quas aperiam dolor provident eos.', 'Fugiat.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(22, 'Ratione illo incidunt.', 'Quia deleniti.', 'Modi ut enim nobis eum rerum tempore velit. Autem fugiat facilis nulla voluptatem eaque.', 'Nam possimus.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(23, 'Sed dolorem.', 'Temporibus saepe tempora.', 'Dolorem omnis in explicabo quam cupiditate cum natus.', 'Quae.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(24, 'Sed praesentium.', 'Eius cumque fugiat.', 'Dolor ut laudantium facere molestiae.', 'Qui.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(25, 'Neque cumque.', 'Ullam laudantium.', 'Quos exercitationem cupiditate est provident. Autem quod nisi excepturi sit est veritatis.', 'Quod consequatur.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(26, 'Quia molestiae earum.', 'In eum ut.', 'Et modi sit assumenda nihil dolor. Perferendis suscipit totam aut ea dolorum illum inventore.', 'Sint.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(27, 'Quo unde cupiditate.', 'Ut consequuntur.', 'Sit voluptas voluptatibus recusandae doloribus facilis impedit molestiae. Ipsa sed eos excepturi.', 'Fugit.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(28, 'Dolores officiis.', 'Ex impedit tempora.', 'Harum velit quia rerum magni nihil enim error perferendis.', 'Fuga.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(29, 'Laboriosam et.', 'Aut ex dolore.', 'Possimus ut magnam alias fugiat qui.', 'Dolores culpa.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24'),
(30, 'Molestiae ratione.', 'Ratione aut illum.', 'Omnis voluptas qui nostrum dolores error. Voluptates voluptatem accusamus necessitatibus error.', 'Quaerat.png', '2020-06-10 01:15:24', '2020-06-10 01:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(34, 'Electronics', 'electronics', 'Description of Electronics Category.', '1589474030.png', '0', '2020-05-14 10:33:50', '2020-05-14 10:33:50'),
(35, 'Mobile', 'mobile', 'Description of Mobile.', '1589474063.png', '34', '2020-05-14 10:34:23', '2020-05-14 10:34:23'),
(36, 'Tv', 'tv', 'Description of Tv.', '1589474096.png', '34', '2020-05-14 10:34:56', '2020-05-14 10:34:56'),
(37, 'Laptop', 'laptop', 'Description of Laptop.', '1589474118.png', '34', '2020-05-14 10:35:18', '2020-05-14 10:35:18'),
(38, 'Nam aut corrupti.', 'Praesentium qui reprehenderit.', 'Qui molestiae nemo doloremque nesciunt ipsam et sit.', NULL, '0', '2020-06-10 01:03:35', '2020-06-10 01:03:35'),
(39, 'Nihil sit.', 'Quo quia autem.', 'Aut consectetur totam nemo voluptatem dicta suscipit. Est quia occaecati harum minus eos blanditiis.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(40, 'Dolor nihil.', 'Quidem autem.', 'Dolorum provident cupiditate iure ea distinctio ducimus impedit perferendis. Ipsam in temporibus minima non eligendi.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(41, 'Laudantium voluptatibus.', 'Et tempora.', 'Sed corrupti fuga ab consequatur sapiente totam. Omnis tenetur aliquam voluptatem sit voluptatem.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(42, 'Mollitia minus.', 'Id impedit.', 'Quia et facilis et quis blanditiis vero assumenda reiciendis.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(43, 'Excepturi ex.', 'Explicabo recusandae.', 'Velit architecto quos id. Est quia dolores quis distinctio vero.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(44, 'Nihil fugiat.', 'Tenetur delectus.', 'Aliquam illum eligendi qui veniam.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(45, 'Repellat corporis.', 'Non odit id.', 'Ratione asperiores dolores vel alias vitae. Quia in est perferendis quo enim repudiandae.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(46, 'Eius omnis.', 'Quo sunt.', 'Culpa eos consectetur ratione eaque quae.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(47, 'Eum voluptatem.', 'Ullam adipisci sunt.', 'Eveniet corporis dignissimos ut. Quis dolores quia hic minima labore.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(48, 'Ea ut.', 'Amet ut.', 'Cum aut id ea quia quisquam iure.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(49, 'Officiis sed.', 'Cumque debitis.', 'Optio pariatur autem iure ut voluptas ad. Dolores recusandae voluptatum culpa quae.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(50, 'Tenetur iusto.', 'Ea eos.', 'Sed dolores alias aut qui quas accusantium itaque repellat. Quam non laborum molestiae in similique eos nihil.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(51, 'Maiores numquam.', 'Et aliquid et.', 'Eius voluptatum cumque minus qui. Animi veritatis dolorum autem id at vitae et voluptatibus.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(52, 'Eligendi aut qui.', 'Consectetur voluptatem esse.', 'Ullam eum soluta est ipsum accusamus optio inventore. Natus nihil quas earum nihil qui sint libero.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(53, 'Velit voluptatem.', 'Rerum maiores.', 'Sunt repellat sit autem nihil. Voluptas et voluptas facere tempore quasi ut.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(54, 'Quibusdam quia.', 'Voluptas omnis.', 'Accusantium totam dolorem officiis numquam voluptatem ut sed quo.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(55, 'Rerum voluptatibus aut.', 'Aliquam iure aut.', 'Aut non expedita omnis et velit impedit.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(56, 'Adipisci quam.', 'Quos iure.', 'Deserunt iusto quod sapiente iure accusamus. Et aut aperiam eos temporibus.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(57, 'Optio nobis adipisci.', 'Assumenda doloribus quia.', 'Mollitia qui eos aliquid magni veniam.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24'),
(58, 'Asperiores possimus magni.', 'In omnis.', 'Saepe accusantium odio ipsum quasi.', NULL, '0', '2020-06-10 01:08:24', '2020-06-10 01:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(2, 'Kishoregonj', 1, '2020-06-08 23:25:42', '2020-06-09 00:00:30'),
(6, 'Shirajgonj', 7, '2020-06-09 00:00:50', '2020-06-09 00:00:50'),
(8, 'A.', 37, '2020-06-10 01:52:57', '2020-06-10 01:52:57'),
(9, 'Fuga iste.', 34, '2020-06-10 01:52:58', '2020-06-10 01:52:58'),
(10, 'Voluptas.', 35, '2020-06-10 01:53:47', '2020-06-10 01:53:47'),
(11, 'Enim.', 45, '2020-06-10 01:53:47', '2020-06-10 01:53:47'),
(12, 'Nobis quia.', 45, '2020-06-10 01:53:48', '2020-06-10 01:53:48'),
(13, 'Omnis.', 38, '2020-06-10 01:53:49', '2020-06-10 01:53:49'),
(14, 'Beatae.', 44, '2020-06-10 01:53:53', '2020-06-10 01:53:53'),
(15, 'Dolores maiores.', 44, '2020-06-10 01:53:54', '2020-06-10 01:53:54'),
(16, 'Sit officia.', 33, '2020-06-10 01:53:54', '2020-06-10 01:53:54'),
(17, 'Et unde.', 42, '2020-06-10 01:53:55', '2020-06-10 01:53:55'),
(18, 'Ad.', 1, '2020-06-10 01:53:56', '2020-06-10 01:53:56'),
(19, 'Nesciunt molestiae.', 36, '2020-06-10 01:53:56', '2020-06-10 01:53:56'),
(20, 'Nostrum.', 34, '2020-06-10 01:53:57', '2020-06-10 01:53:57'),
(21, 'Quia.', 46, '2020-06-10 01:53:57', '2020-06-10 01:53:57'),
(22, 'Sunt.', 7, '2020-06-10 01:53:58', '2020-06-10 01:53:58'),
(23, 'Minus.', 35, '2020-06-10 01:53:59', '2020-06-10 01:53:59'),
(24, 'Numquam alias.', 38, '2020-06-10 01:54:03', '2020-06-10 01:54:03'),
(25, 'Quasi autem.', 39, '2020-06-10 01:54:04', '2020-06-10 01:54:04'),
(26, 'Illum quo.', 49, '2020-06-10 01:54:06', '2020-06-10 01:54:06'),
(27, 'Nemo.', 38, '2020-06-10 01:54:06', '2020-06-10 01:54:06'),
(28, 'Ipsam.', 7, '2020-06-10 01:54:08', '2020-06-10 01:54:08'),
(29, 'Sed voluptatem.', 40, '2020-06-10 01:54:09', '2020-06-10 01:54:09'),
(30, 'Nisi quo.', 38, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(31, 'Quis et.', 39, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(32, 'Neque in.', 1, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(33, 'Porro.', 7, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(34, 'Delectus corporis.', 40, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(35, 'Quaerat.', 41, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(36, 'Velit provident.', 43, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(37, 'Accusantium perspiciatis.', 48, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(38, 'Harum.', 40, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(39, 'Ea sit.', 47, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(40, 'Modi delectus.', 32, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(41, 'Dolor pariatur.', 41, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(42, 'Odio.', 42, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(43, 'Dolorum et.', 37, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(44, 'Blanditiis aliquid.', 41, '2020-06-10 02:03:12', '2020-06-10 02:03:12'),
(45, 'Iste.', 34, '2020-06-10 02:03:12', '2020-06-10 02:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2020-06-04 18:00:00', '2020-06-04 18:00:00'),
(7, 'Rajshahi', 2, '2020-06-08 23:26:24', '2020-06-09 00:01:06'),
(30, 'Quos veniam.', 1, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(31, 'Vero laudantium.', 5, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(32, 'Pariatur.', 1, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(33, 'Inventore.', 2, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(34, 'Numquam voluptas.', 9, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(35, 'Et ut.', 5, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(36, 'Quae.', 7, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(37, 'Perferendis deserunt.', 5, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(38, 'Illo mollitia.', 2, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(39, 'Enim.', 4, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(40, 'Ipsa.', 9, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(41, 'Aspernatur atque.', 3, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(42, 'Tempora unde.', 6, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(43, 'Praesentium.', 5, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(44, 'Debitis et.', 6, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(45, 'Ut saepe.', 3, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(46, 'Incidunt voluptatem.', 7, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(47, 'Optio.', 5, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(48, 'Quis.', 5, '2020-06-10 01:41:03', '2020-06-10 01:41:03'),
(49, 'Voluptas soluta.', 8, '2020-06-10 01:41:03', '2020-06-10 01:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_24_094831_create_categories_table', 1),
(5, '2020_05_02_220439_create_brands_table', 2),
(6, '2020_05_10_101033_create_products_table', 3),
(7, '2020_05_14_153803_create_product_images_table', 3),
(10, '2020_06_05_040331_create_divisions_table', 4),
(11, '2020_06_05_041018_create_districts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` int(11) NOT NULL,
  `offer_price` int(11) DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 5,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) DEFAULT 0,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `regular_price`, `offer_price`, `quantity`, `status`, `is_featured`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Xiaomi Note 9 Pro', 'xiaomi-note-9-pro', 'Released 2020, May 05\r\n209g, 8.8mm thickness\r\nAndroid 10, MIUI 11\r\n64GB/128GB storage, microSDXC', 10000, 8500, 5, 1, 0, 35, 10, '2020-05-13 18:00:00', '2020-05-13 18:00:00'),
(2, 'Xiaomi Note 8 Pro', 'xiaomi-note-8-pro', 'Released 2019, September 24\r\n200g, 8.8mm thickness\r\nAndroid 9.0, up to Android 10, MIUI 11\r\n64GB/128GB/256GB storage, microSDXC', 9000, 0, 5, 1, 0, 35, 10, '2020-05-13 18:00:00', '2020-05-13 18:00:00'),
(52, 'Maiores aut omnis.', 'Dolores sapiente.', 'Nisi nam corrupti sequi tenetur.', 7200, 6000, 12, 1, 0, 38, 8, '2020-06-10 02:04:09', '2020-06-10 02:04:09'),
(53, 'Omnis incidunt.', 'Consectetur commodi.', 'Molestias sed cupiditate error.', 6300, 4000, 85, 1, 0, 51, 8, '2020-06-10 02:04:09', '2020-06-10 02:04:09'),
(54, 'Dignissimos tempora.', 'Odio quidem minus.', 'Quis aspernatur itaque suscipit est consequatur. Ut voluptatem rerum saepe rem.', 2700, 4000, 77, 0, 0, 54, 29, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(55, 'Et fuga.', 'Ut et voluptatem.', 'Vero exercitationem perferendis repellat omnis quia autem.', 5500, 3000, 97, 0, 0, 38, 22, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(56, 'Temporibus provident.', 'Nemo quo voluptatum.', 'Aut voluptas expedita possimus est.', 2000, 9000, 59, 1, 0, 49, 24, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(57, 'Voluptas facilis sunt.', 'Aliquam natus distinctio.', 'Quaerat molestiae neque sed sint aut. Id occaecati tenetur assumenda doloribus.', 5000, 1000, 78, 0, 0, 56, 14, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(58, 'Ut quia earum.', 'Odio ut occaecati.', 'Aspernatur dolores accusamus dolore. Et et nesciunt enim voluptatem.', 9100, 2000, 52, 0, 0, 54, 17, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(59, 'Cum doloremque dolores.', 'Qui eum.', 'Autem praesentium porro quis expedita qui. Molestias quo eum odit ut et quod.', 4800, 5000, 35, 1, 0, 55, 17, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(60, 'Ab vel nam.', 'Iure voluptate qui.', 'Alias veniam id et qui necessitatibus.', 4900, 2000, 10, 1, 0, 35, 21, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(61, 'Ipsa minima necessitatibus.', 'Rerum similique omnis.', 'Et vel nisi sed non.', 1000, 5000, 72, 1, 0, 36, 8, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(62, 'Nulla molestiae quia.', 'Laborum sunt.', 'Sint provident nihil adipisci quam eos aut nemo.', 5300, 6000, 66, 1, 0, 41, 14, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(63, 'Debitis explicabo.', 'Architecto aut.', 'Cumque dolor assumenda voluptatem excepturi dolores.', 4300, 3000, 28, 0, 0, 57, 8, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(64, 'Distinctio autem voluptatem.', 'Vel quaerat.', 'Nemo ratione beatae nihil exercitationem architecto.', 6300, 0, 33, 1, 0, 49, 20, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(65, 'Cupiditate aut.', 'Libero sit.', 'Aspernatur et id reiciendis veniam vitae placeat voluptatem.', 1500, 4000, 49, 1, 0, 50, 21, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(66, 'Consequatur at laudantium.', 'Magnam nam.', 'Et qui repellat ipsum fuga fuga nam et.', 6700, 4000, 83, 0, 0, 50, 17, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(67, 'Consequuntur occaecati et.', 'Voluptatem voluptatum iusto.', 'Et quisquam quisquam dolores enim repellendus quaerat occaecati. Harum maxime sit fugit eos quo qui sit.', 6000, 7000, 83, 1, 0, 45, 17, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(68, 'Consequatur eligendi.', 'Qui alias ipsa.', 'Ut velit non blanditiis nulla.', 2900, 2000, 25, 1, 0, 57, 10, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(69, 'Est maxime.', 'Est fugiat.', 'Quaerat suscipit fugiat hic neque dolores natus.', 9200, 8000, 75, 1, 0, 47, 18, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(70, 'Earum porro.', 'Fugiat est.', 'Qui aut dignissimos voluptas omnis.', 7500, 0, 83, 1, 0, 51, 26, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(71, 'Doloremque ut.', 'Recusandae eos.', 'Distinctio et iusto repellendus et quam eos. Perferendis quidem ut et ducimus asperiores ea nihil quisquam.', 6000, 7000, 14, 1, 0, 58, 11, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(72, 'Quasi corrupti et.', 'Cupiditate nisi et.', 'Molestiae deleniti consectetur autem et quod recusandae. Alias magnam aperiam ipsum et omnis rerum quis quis.', 7300, 2000, 39, 1, 0, 51, 13, '2020-06-10 02:04:41', '2020-06-10 02:04:41'),
(73, 'Eligendi sed.', 'Eum nemo voluptatem.', 'Ad est dolores hic qui ut quod.', 7300, 0, 69, 0, 0, 54, 26, '2020-06-10 02:04:41', '2020-06-10 02:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'xiaomi-note-9-pro.png', '2020-05-13 18:00:00', '2020-05-13 18:00:00'),
(2, 1, 'xiaomi-note-9-pro-2.png', '2020-05-13 18:00:00', '2020-05-13 18:00:00'),
(3, 2, 'xiaomi-note-8-pro.png', '2020-05-13 18:00:00', '2020-05-13 18:00:00'),
(4, 6, '864191.png', '2020-05-27 10:53:24', '2020-05-27 10:53:24'),
(5, 6, '964527.png', '2020-05-27 10:53:24', '2020-05-27 10:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dipu Haider', 'dipuhaider@gmail.com', NULL, '$2y$10$8WdkW9..WomOqpPEKrWNzOR7DQYjX1AW3KxfIi8MIkymkc7iMNnDy', NULL, NULL, NULL, '2020-04-24 06:19:50', '2020-04-24 06:19:50'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$RqCuvLEilonXqvnncau5vel9lM6MTuven73tQz5HKd1xCReLbt8lW', NULL, NULL, NULL, '2020-06-10 02:58:54', '2020-06-10 02:58:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_name_unique` (`name`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `divisions_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
