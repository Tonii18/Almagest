-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2025 a las 20:25:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almagest`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `price_min` decimal(10,0) NOT NULL,
  `price_max` decimal(10,0) NOT NULL,
  `color_name` varchar(20) DEFAULT NULL,
  `weight` decimal(10,0) NOT NULL,
  `size` varchar(10) DEFAULT NULL,
  `family_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `price_min`, `price_max`, `color_name`, `weight`, `size`, `family_id`, `deleted`, `created_at`, `updated_at`) VALUES
(12, 'Articulo 1', 'Esto es una descripcion de ejemplo', 1, 111, 'Azul', 80, '1', 1, 0, '2025-11-23 17:29:55', '2025-11-23 17:29:55'),
(14, 'Articulo 2', 'Esto es la descripcion del articulo 2', 2, 222, 'Ocre', 222, '2', 2, 0, '2025-11-23 17:40:08', '2025-11-23 17:40:08'),
(15, 'Articulo 3', 'Descripcion del articulo 3', 3, 333, 'Violeta', 5, '333', 3, 0, '2025-11-23 17:43:05', '2025-11-23 17:43:05'),
(16, 'Artículo 4', 'Descripción del artículo 4', 30, 70, 'Rojo', 25, '2', 10, 0, '2025-11-24 20:12:37', '2025-11-24 20:12:37'),
(17, 'Artículo 5', 'Descripción del artículo 5', 17, 42, 'Amarillo', 1, '30', 7, 0, '2025-11-24 20:13:15', '2025-11-24 20:13:15'),
(18, 'Artículo 5', 'Descripción del artículo 5', 49, 71, 'Azul', 5, '50x25', 5, 0, '2025-11-24 20:24:11', '2025-11-24 20:24:11'),
(19, 'Articulo 6', 'Descripción editada del artículo 6', 17, 47, 'Ocre', 5, NULL, 10, 1, '2025-12-01 18:14:01', '2025-12-01 18:14:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bank_entities`
--

CREATE TABLE `bank_entities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `ccc` char(23) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bank_entities`
--

INSERT INTO `bank_entities` (`id`, `name`, `ccc`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Aaliyah McCullough', '81191416004625292189', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(2, 'Mr. Alexandro Casper', '85786520200424490263', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(3, 'Beulah O\'Keefe', '04769605279056956891', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(4, 'Prof. Braeden Kihn', '15670113098614333651', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(5, 'Dr. Chloe Smitham MD', '80424439218230037796', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(6, 'Miss Guadalupe Miller II', '42253029984736035241', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(7, 'Zackary Koepp', '75872616603386347082', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(8, 'Casey Leffler', '77636955793828060450', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(9, 'Prof. Gloria Larkin V', '99518571130102521695', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(10, 'Prof. Devan Langworth DVM', '47319932961144276251', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(11, 'Juvenal Langosh', '47021145123349948026', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(12, 'Madonna Prohaska', '05609893711044141940', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(13, 'Kyle Harber DDS', '97146328285571687504', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(14, 'Mr. Hilton Beahan', '57236429382186920446', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(15, 'Kaela Koss', '86247012628551432722', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(16, 'Dr. Geraldine Oberbrunner', '87763499096440988156', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(17, 'Jermain Schumm DDS', '42743688547774569976', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(18, 'Alaina Hirthe DVM', '42935075045550041242', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(19, 'Dr. Reyna Schoen II', '02597654270336831239', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(20, 'Mr. Braden Runolfsson I', '04775792148924614809', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(21, 'Kamryn Gibson IV', '49261734590072339788', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(22, 'Daniela Hand', '86495247090625684581', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(23, 'Victoria Shanahan III', '94968657519658277312', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(24, 'Arne Wilderman PhD', '33200289154110041167', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(25, 'Ms. Sandrine Sanford V', '76349801113054115280', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(26, 'Dr. Thad Kassulke DVM', '39151538083332211178', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(27, 'Jeanne Pagac DVM', '26844986000116398401', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(28, 'Ruthie Collins', '99557836691738767386', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(29, 'Toney Mertz', '40959779011609464459', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(30, 'Jerad Upton', '90567643313643411706', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(31, 'Eulah Kozey', '46237557253515871916', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(32, 'Laverne Nolan', '02066896261604757121', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(33, 'Ms. Aiyana Durgan V', '94041784940085277310', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(34, 'Kylee Hand', '95069771324291552484', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(35, 'Garry Gottlieb', '97973518517961201833', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(36, 'Camden Leffler Sr.', '61692479809834951015', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(37, 'Dr. Tanner Schimmel Jr.', '57170619577228545091', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(38, 'Prof. Johan Bode Sr.', '51081507620582814804', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(39, 'Bart Orn DVM', '14029372994028608083', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(40, 'Marcus Lehner', '19849047394001436231', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(41, 'Triston Lueilwitz', '03290192712464431403', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(42, 'Prof. Jaqueline Greenfelder', '54644561564460526341', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(43, 'Ms. Berniece Metz V', '57219557369073020761', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(44, 'Daisha Prosacco II', '98971094849635522613', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(45, 'Prof. Billy Osinski', '03783855792304594495', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(46, 'Zula Thompson DDS', '96455932510091216278', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(47, 'Lessie Hamill IV', '86427333501890216033', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(48, 'Ursula Little', '13216485410564270522', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(49, 'Jayda Harber DVM', '24115867910072772506', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(50, 'Adalberto Orn', '79458077453897599013', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `cif` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(9) NOT NULL,
  `del_term_id` bigint(20) UNSIGNED NOT NULL,
  `transport_id` bigint(20) UNSIGNED NOT NULL,
  `payment_term_id` bigint(20) UNSIGNED NOT NULL,
  `bank_entity_id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `city`, `cif`, `email`, `phone`, `del_term_id`, `transport_id`, `payment_term_id`, `bank_entity_id`, `discount_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Ortiz-Schuster', '8247 Erich Crest Apt. 533', 'Stokesville', '06365043e', 'vwaelchi@example.net', '094920537', 23, 6, 5, 1, 13, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(2, 'Robel-Koepp', '4954 Kyle Mission', 'Hermanmouth', '71323163c', 'ratke.felicity@example.com', '002338788', 22, 8, 7, 10, 17, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(3, 'Bednar-Parisian', '39997 Hickle Crescent Apt. 399', 'Westfort', '03731871f', 'jarret13@example.com', '916700668', 26, 8, 4, 5, 5, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(4, 'Wuckert Group', '621 Vivianne Inlet', 'Williamsonview', '50508598o', 'dward@example.net', '374433204', 7, 8, 16, 1, 11, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(5, 'Champlin Inc', '3214 Sawayn Hill Suite 507', 'South Melissafurt', '53641570j', 'kertzmann.osbaldo@example.org', '927122763', 15, 1, 15, 4, 13, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(6, 'Murray-Gutmann', '448 Krystal Plain', 'Lake Adelleside', '33860485e', 'hamill.javonte@example.org', '171270843', 2, 10, 4, 1, 13, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(7, 'Anderson Group', '7143 Legros Meadow Apt. 997', 'North Humberto', '58713128m', 'weldon.emard@example.org', '803121713', 5, 8, 6, 5, 17, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(8, 'Bahringer, Kassulke and O\'Reilly', '19157 Yundt Prairie Apt. 771', 'Port Jadenchester', '65271276w', 'garrett.sanford@example.org', '993666598', 37, 7, 19, 6, 1, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(9, 'Aufderhar-Gislason', '26609 Streich Shoal Apt. 065', 'Lake Daphney', '15592772d', 'brennan76@example.com', '592297788', 26, 3, 17, 9, 4, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(10, 'Ledner, Murphy and O\'Connell', '46079 Crooks Circle Apt. 998', 'Evanberg', '59087200o', 'mariana67@example.net', '551422648', 16, 4, 5, 1, 3, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(11, 'Larson Group', '94543 Greenfelder Circle', 'Christiansenshire', '52475017n', 'qhaley@example.net', '971399563', 22, 2, 24, 4, 25, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(12, 'Cole-Herman', '962 Ernser Plains', 'Halvorsonview', '31930752x', 'hollis75@example.org', '774310054', 34, 16, 9, 19, 32, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(13, 'Effertz Inc', '628 Gorczany Extensions Suite 906', 'Filibertofort', '88299789j', 'shanny.corkery@example.net', '748056935', 61, 14, 40, 4, 38, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(14, 'Kuhlman, Durgan and Medhurst', '218 Elsa Road Suite 661', 'Rempelfort', '51233321t', 'mante.korbin@example.com', '745779857', 37, 5, 27, 13, 30, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(15, 'Reynolds-Kris', '770 Mraz Dale Suite 720', 'East Christina', '23616080s', 'qfeeney@example.com', '110415404', 90, 12, 29, 15, 7, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(16, 'Effertz, Lindgren and O\'Keefe', '687 Wolff Pike', 'Hegmannborough', '04646702k', 'ksmitham@example.net', '534910720', 54, 12, 21, 14, 31, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(17, 'Kassulke-Lindgren', '262 Easton Branch', 'East Elda', '58977207m', 'bill58@example.com', '370708503', 88, 1, 26, 10, 19, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(18, 'Wolf, Stoltenberg and Upton', '503 Morissette Burg', 'South Lennieburgh', '22057467q', 'morar.scotty@example.net', '018519447', 54, 17, 1, 12, 30, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(19, 'Johns, Cronin and Jakubowski', '58465 Nyasia Pines Suite 185', 'Simonisstad', '39690540j', 'ansley92@example.com', '561063554', 99, 20, 4, 12, 23, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(20, 'Heller, Muller and Dickens', '162 Mayert Isle', 'East Katherine', '90786398l', 'savanna.gutkowski@example.org', '016993526', 91, 9, 14, 1, 29, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(21, 'Mann LLC', '28601 Weimann Vista', 'Hammesville', '31939041e', 'cronin.ezekiel@example.com', '616148889', 22, 21, 17, 14, 47, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(22, 'Stoltenberg, Gerlach and Marvin', '262 Ashley Track', 'Weissnathaven', '29740529h', 'reffertz@example.org', '671632413', 103, 10, 3, 2, 1, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(23, 'Klocko, Waters and Konopelski', '17439 Lakin Estate', 'Schusterburgh', '70707425b', 'velda.schroeder@example.com', '454451636', 114, 20, 22, 2, 46, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(24, 'Price-Romaguera', '83818 Swaniawski Skyway', 'Port Michalefurt', '88185315j', 'gislason.jackeline@example.org', '310177001', 17, 20, 32, 16, 60, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(25, 'Durgan-Mertz', '14359 Boehm Skyway Suite 226', 'Kassandraside', '94541671m', 'jshanahan@example.net', '457865593', 44, 10, 34, 30, 19, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(26, 'Weissnat Group', '96147 Dean Estate', 'West Victoria', '37189005v', 'corwin.keshaun@example.com', '835991316', 24, 7, 33, 20, 16, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(27, 'Barton Ltd', '3079 Upton Mountains Suite 220', 'Ricebury', '29473171d', 'elise56@example.org', '056149390', 131, 22, 48, 19, 5, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(28, 'Lindgren, Mraz and Kshlerin', '4401 Charles Courts Suite 663', 'East Ike', '38495491t', 'emmitt18@example.org', '194817587', 75, 12, 42, 29, 34, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(29, 'Walter, Wuckert and Roob', '4386 Addie Ridge', 'Murazikshire', '23241804r', 'madisen.balistreri@example.net', '936597250', 150, 17, 3, 21, 34, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(30, 'Homenick PLC', '140 Kuhic Village', 'West Ezekielbury', '06112667x', 'jany.schmeler@example.net', '177500988', 79, 27, 17, 21, 36, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(31, 'Green Group', '7935 Keebler Cape', 'Aliyahport', '12388067y', 'torrey99@example.com', '668331218', 10, 4, 56, 26, 37, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(32, 'Powlowski and Sons', '4660 Rippin Islands Apt. 188', 'Hermistonland', '78677083m', 'heathcote.isadore@example.com', '206916085', 72, 3, 23, 7, 31, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(33, 'Skiles-Pouros', '743 Mayert Road', 'Breitenbergbury', '08602674k', 'bart.beahan@example.com', '808745572', 159, 13, 40, 3, 80, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(34, 'Champlin, Hintz and Bernhard', '31072 Alford Lights', 'East Mackenziehaven', '38024418z', 'ziemann.donavon@example.com', '301262609', 26, 17, 75, 20, 15, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(35, 'Anderson-Keeling', '31544 West Falls', 'Danikaport', '65307474j', 'rkling@example.org', '083184072', 126, 6, 78, 12, 9, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(36, 'Schmeler-McLaughlin', '2803 Jodie Path Apt. 914', 'Lake Jessyca', '05459720w', 'schulist.stefanie@example.net', '727471336', 175, 27, 8, 37, 59, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(37, 'Cormier, Leuschke and Lueilwitz', '7224 Lynch Pike', 'Rolfsonton', '42785280q', 'douglas.shyanne@example.net', '481863693', 108, 15, 32, 35, 70, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(38, 'Harvey LLC', '42099 Rod Centers Suite 337', 'East Julio', '98195872a', 'joaquin.gulgowski@example.com', '564885389', 137, 2, 32, 40, 78, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(39, 'Dicki Ltd', '56970 Earlene Coves', 'Lelamouth', '23302409c', 'nedra90@example.net', '736632855', 103, 30, 69, 14, 16, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(40, 'Nitzsche Inc', '721 Valentina Mountain', 'Webershire', '13045484n', 'aida.hegmann@example.com', '506186750', 17, 30, 63, 16, 56, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(41, 'Heathcote Inc', '377 Alva Forge', 'Port Amelia', '01867005b', 'mhermiston@example.net', '086077364', 33, 15, 60, 22, 27, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(42, 'Cormier, McGlynn and Ward', '96622 Guy Manors Apt. 394', 'Satterfieldfort', '47710278r', 'heathcote.isabell@example.net', '335062786', 194, 15, 77, 8, 90, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(43, 'Koelpin-Bauch', '17045 Lueilwitz Roads Apt. 760', 'Vernerton', '31059905f', 'dennis63@example.net', '692712140', 248, 15, 36, 37, 48, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(44, 'Stiedemann-Langworth', '284 Crooks Port', 'New Mariane', '98265536t', 'sydni13@example.org', '888040170', 106, 21, 62, 46, 13, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(45, 'Funk, Dach and Cassin', '41931 Stefanie Lights', 'West Edwin', '65699752q', 'schaden.kitty@example.org', '950012949', 217, 32, 67, 50, 41, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(46, 'Gaylord-O\'Hara', '5199 Stephany Junction', 'Howellmouth', '72078301e', 'madalyn89@example.org', '666312504', 95, 30, 9, 8, 13, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(47, 'Cormier-Mueller', '85051 Stevie Lodge Suite 907', 'South Eusebioborough', '79968699l', 'serena.kutch@example.com', '371728559', 60, 30, 97, 43, 54, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(48, 'VonRueden-Gleason', '96254 Carter Port Suite 499', 'Port Randallstad', '69051658u', 'linnea.brekke@example.org', '893696615', 83, 26, 51, 1, 59, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(49, 'Hills Ltd', '8952 Eldred Place', 'New Caden', '80681006z', 'florine23@example.org', '597787323', 45, 7, 13, 35, 35, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(50, 'Krajcik, Quigley and Adams', '1040 Lexi Corners', 'Terryside', '60905015y', 'ellsworth46@example.org', '228664004', 70, 24, 49, 1, 20, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contains_art_invlines`
--

CREATE TABLE `contains_art_invlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_line_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contain_art_delivlines`
--

CREATE TABLE `contain_art_delivlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_lines_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contain_art_orderlines`
--

CREATE TABLE `contain_art_orderlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `order_line_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_note`
--

CREATE TABLE `delivery_note` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num` varchar(10) NOT NULL,
  `issuedate` date NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_note_lines`
--

CREATE TABLE `delivery_note_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_note_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_note_line_num` varchar(10) NOT NULL,
  `order_line_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_terms`
--

CREATE TABLE `delivery_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(50) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delivery_terms`
--

INSERT INTO `delivery_terms` (`id`, `description`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Odio dolore aperiam dolor qui nobis rerum ipsa.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(2, 'Neque earum et velit eius quia.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(3, 'Iure earum et sint.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(4, 'Provident tempora rerum quia est nisi iure.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(5, 'Dolores sunt fuga quo impedit est nam.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(6, 'Aliquam numquam consequatur consequatur ut.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(7, 'Illo consectetur itaque saepe dolorem.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(8, 'Et quia odit unde sed aut sunt nihil.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(9, 'Vel sequi est ipsum consequatur.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(10, 'Qui sint est repellendus nihil numquam quo.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(11, 'Tempore in inventore blanditiis quo dolorem iste.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(12, 'Tenetur molestias est minus magnam qui.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(13, 'In saepe quam voluptates omnis optio.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(14, 'Delectus ipsam distinctio sed consequuntur at.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(15, 'Ut non eveniet sunt possimus aut blanditiis et.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(16, 'Nesciunt atque odio molestias similique id.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(17, 'Dolor vel nobis voluptatem provident placeat.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(18, 'Ut molestiae et nemo minima qui nulla.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(19, 'Voluptatibus nam enim culpa et.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(20, 'Incidunt possimus cupiditate magnam ut ut.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(21, 'Distinctio nostrum sunt nostrum in.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(22, 'Est et qui quia possimus.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(23, 'Facere illo mollitia ut.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(24, 'Est ut quas architecto atque esse.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(25, 'Rerum sapiente modi deserunt aut.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(26, 'Qui repellat qui quisquam similique omnis.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(27, 'Corporis reiciendis vitae aut id.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(28, 'Laborum ullam nisi fuga nihil.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(29, 'Recusandae quas eius dolorem nemo.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(30, 'Exercitationem reiciendis in itaque voluptatem.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(31, 'Natus fugiat sequi harum qui.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(32, 'A voluptatem nihil accusantium qui.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(33, 'Ea perferendis beatae dolorem est.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(34, 'Architecto dignissimos omnis ipsa et a.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(35, 'Illum laudantium natus quo quis.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(36, 'Qui atque eum quos voluptatem.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(37, 'Architecto dolor fugit accusamus.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(38, 'Perspiciatis in distinctio vel.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(39, 'Nemo vero qui expedita laudantium rerum.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(40, 'Ut fugit voluptatibus veniam quo et eos.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(41, 'Et velit odit aut quia omnis.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(42, 'Omnis delectus iste accusamus.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(43, 'Ipsam sit error fugiat at.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(44, 'Suscipit quaerat nostrum ea atque.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(45, 'Illum omnis consequatur doloremque autem.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(46, 'Recusandae eos sed ea similique velit magni.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(47, 'Voluptates sed animi tempora dolorem eos quia.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(48, 'Vitae omnis facilis qui.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(49, 'Quos quasi repellat nobis.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(50, 'Et doloremque necessitatibus iste tempore omnis.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(51, 'Quibusdam quae non rem cumque asperiores.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(52, 'Quia voluptatem ipsa aut reprehenderit.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(53, 'Asperiores et dolorem hic quaerat.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(54, 'Ab iste ut maxime veritatis est.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(55, 'Consequatur provident aut labore.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(56, 'Neque qui quia vel soluta.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(57, 'Non qui eum dolorem animi quo eum ex.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(58, 'Repellendus veniam ratione voluptas sint facere.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(59, 'Molestias sint et consequatur consectetur.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(60, 'Delectus ut iure quasi quae in.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(61, 'Et ipsam dolorum libero id.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(62, 'Quia nihil vel magni qui omnis aut.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(63, 'Sed id deserunt aliquid beatae.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(64, 'Omnis sint quisquam molestiae quas illum.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(65, 'Sint et non vitae exercitationem saepe cumque.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(66, 'Ut officia voluptas natus ea.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(67, 'Nisi quia quidem quos.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(68, 'Atque minima eos sed aut.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(69, 'Magni dolores reiciendis voluptas minima.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(70, 'Maiores beatae cupiditate mollitia consequatur.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(71, 'Ut ratione nihil harum fugit quidem iure.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(72, 'Eum tenetur reprehenderit quidem dicta.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(73, 'At quod consequuntur et laborum quia.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(74, 'Facere ex consequatur animi qui sunt.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(75, 'Deserunt aut magni voluptatum eos et.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(76, 'Dignissimos aut aspernatur quia et alias.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(77, 'Modi sed nihil at aut repellendus et nostrum.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(78, 'Similique culpa ipsam quo vero officia rerum.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(79, 'Quia sit sit eos consequuntur enim quis quam.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(80, 'Impedit sint esse hic.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(81, 'Rerum tempora qui provident et aperiam esse.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(82, 'Temporibus corrupti ut sunt repellendus ad.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(83, 'Vel eaque quisquam est autem.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(84, 'Voluptatibus dolorem fugit et sint sequi harum.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(85, 'Qui fugit quia nam eius nesciunt consequatur.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(86, 'Aut voluptatem est aut nisi.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(87, 'Maiores iure voluptatibus in.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(88, 'Ut dolore quasi consequatur.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(89, 'Error voluptate sit eos possimus est.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(90, 'Quia delectus et placeat id eos.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(91, 'Consectetur nulla praesentium veritatis.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(92, 'Neque cum natus dolores in labore est iure.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(93, 'Enim aut sunt non deleniti beatae.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(94, 'Sequi architecto fuga sequi possimus.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(95, 'Deserunt nihil sunt quas commodi dolorem ut non.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(96, 'Rerum architecto tenetur excepturi ut nemo eos.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(97, 'Distinctio deserunt et tempora voluptas.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(98, 'Veritatis id quia autem deleniti.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(99, 'Quos alias eos quisquam sunt.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(100, 'Et animi ut dolore delectus aut aut sequi.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(101, 'Quia quia nesciunt autem odio necessitatibus.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(102, 'Sed at ipsam quia quae tempora.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(103, 'Sit facilis est voluptas accusamus quasi aut.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(104, 'Eligendi pariatur enim voluptas provident rerum.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(105, 'Similique tempore aliquam aut ut velit veritatis.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(106, 'Voluptates quo commodi modi inventore dolores.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(107, 'Voluptatem aut autem at minus vel consequatur.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(108, 'Accusamus dolor corrupti quas voluptatum quas.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(109, 'Maxime corporis aut alias aut aut et vel.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(110, 'Possimus omnis nemo dolorem fugiat.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(111, 'Vel rerum autem nesciunt quidem non.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(112, 'Ut molestias quia est.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(113, 'Fugit mollitia enim et illum veniam sint autem.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(114, 'Dolor aut deleniti unde similique impedit.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(115, 'Maxime et est perferendis ex aut ad.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(116, 'Beatae dolore ut nulla molestias id inventore.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(117, 'Aut quia voluptatem dolorem nam sit.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(118, 'Fugit et fugit pariatur eius.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(119, 'Quia pariatur inventore voluptas sint.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(120, 'Eum aliquid ullam quia vel commodi quisquam.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(121, 'Sit quia explicabo necessitatibus quasi.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(122, 'Omnis ipsa eaque aperiam.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(123, 'Magni quia fugiat magni tempore.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(124, 'Dolore dolorem est adipisci veniam et vitae.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(125, 'Quasi soluta est harum eos doloremque.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(126, 'Quia quidem atque eum in aut alias tempora quia.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(127, 'Qui ea minima nihil pariatur qui.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(128, 'Esse aut et laborum est rerum corporis.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(129, 'Rerum ipsam et nesciunt fuga vel omnis est.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(130, 'Eum sit ratione dolor nam ea est.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(131, 'Quod aut aut aut sunt.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(132, 'Non deserunt fugit alias ipsam.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(133, 'Quo rerum et eius tenetur non dolores rerum.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(134, 'Est et nulla iure repudiandae.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(135, 'Impedit aliquid et aliquam in fugit ipsum.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(136, 'Impedit sapiente ducimus commodi explicabo qui.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(137, 'Delectus recusandae fuga est ea ratione eius.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(138, 'Explicabo ut sunt qui eius deleniti quod.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(139, 'Sit voluptas sed distinctio.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(140, 'Voluptatum non ea quibusdam vel unde.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(141, 'Tempore iure tempora perspiciatis est in.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(142, 'Iure aut neque voluptas enim velit odit nihil.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(143, 'Eum sed eos et facere expedita et quia.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(144, 'Culpa neque autem beatae rerum fuga qui.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(145, 'Et facere quisquam iure incidunt et eum.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(146, 'Expedita amet laboriosam optio optio quo.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(147, 'Nihil dolores est libero officiis repudiandae.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(148, 'Quasi officia illum praesentium molestiae autem.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(149, 'Ducimus sunt facilis ut et harum.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(150, 'Quis qui reiciendis ut earum quisquam.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(151, 'Velit et quam qui fugiat.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(152, 'Ut molestiae quo doloribus quae itaque aut.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(153, 'Rerum laborum exercitationem quos inventore quae.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(154, 'Ipsam tempora asperiores aliquam totam.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(155, 'Facere ipsa aut qui rerum molestiae.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(156, 'Voluptatum non quod ut.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(157, 'Non atque placeat et ipsa.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(158, 'Dicta omnis sunt eos temporibus.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(159, 'Qui nobis ut animi et.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(160, 'Voluptatem ea ipsum quae tempore modi.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(161, 'Adipisci aliquid fuga explicabo doloremque quia.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(162, 'Explicabo nam numquam nihil dolorem.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(163, 'Dicta autem voluptate pariatur qui est veritatis.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(164, 'Magnam quis minus aut.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(165, 'Iste ipsa exercitationem voluptatem a.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(166, 'Voluptatem neque sint ut et eum delectus sed.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(167, 'Eligendi et consectetur totam inventore.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(168, 'Impedit voluptatem velit magnam neque.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(169, 'Cum aspernatur voluptatibus culpa excepturi quod.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(170, 'Voluptatem quasi quaerat quasi expedita.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(171, 'Et ut aperiam laborum provident veritatis.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(172, 'Voluptas rerum aut unde dignissimos modi.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(173, 'Excepturi voluptas aut pariatur est.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(174, 'Dolor autem et consequuntur.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(175, 'Tenetur odio laborum architecto rerum in.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(176, 'Optio sint esse possimus nihil.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(177, 'Ut ab ea officia dolor earum.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(178, 'Ut ea quia omnis doloribus odit ducimus nemo.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(179, 'Voluptas dolorem repellat consequatur et est.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(180, 'Quasi delectus non et et dolorum.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(181, 'Sed optio debitis ducimus dolorum quis non et.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(182, 'Sed dolorem vel commodi omnis vel.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(183, 'Qui praesentium nemo omnis quia sit velit vel.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(184, 'Voluptas beatae aut autem in.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(185, 'Molestiae amet et voluptates enim.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(186, 'Temporibus quos eum molestias quod.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(187, 'Quae debitis enim atque omnis iste rerum.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(188, 'Natus quia eius placeat a aut aut.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(189, 'Aliquid eum et sed autem.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(190, 'Ea adipisci assumenda eum quia ratione est id.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(191, 'Earum facilis odit expedita nam.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(192, 'Architecto odit neque voluptatem non.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(193, 'Ea rerum perferendis velit error.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(194, 'Aut sed voluptatem quidem vel dolore excepturi.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(195, 'Eius dolorem iste ut magnam.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(196, 'Accusamus officia nihil rerum eligendi.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(197, 'Illum vero sunt harum libero unde vel minima a.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(198, 'Dolorum quaerat temporibus et ipsam.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(199, 'Nobis dolor assumenda nemo repudiandae.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(200, 'Harum quia molestias totam aut et.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(201, 'Ex assumenda esse voluptatem ea laudantium.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(202, 'Sunt perspiciatis rem sunt quisquam.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(203, 'Rerum vitae adipisci ut optio quasi.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(204, 'Voluptatem dolores sit blanditiis voluptas iste.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(205, 'Tempore error illum sed veritatis cum.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(206, 'Odio occaecati ad quis ipsa commodi.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(207, 'Occaecati quo eos assumenda.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(208, 'Repellat et voluptatem nisi praesentium.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(209, 'Veritatis necessitatibus molestias dolores.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(210, 'Consequatur quia eos quo non ea.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(211, 'Harum officiis suscipit tempora aspernatur ut.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(212, 'Fugiat voluptatem ut excepturi ut nam veritatis.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(213, 'Quis a omnis voluptatum.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(214, 'Reprehenderit vero cumque sunt vel est.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(215, 'Maiores fugiat recusandae maiores quo delectus.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(216, 'Tempore id voluptas nemo consequatur.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(217, 'Veniam id consectetur non nisi aut.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(218, 'Provident aut omnis nulla recusandae fuga.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(219, 'Et voluptatem totam quam voluptas.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(220, 'Voluptas et error sed officiis assumenda aperiam.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(221, 'Atque asperiores nisi iste velit.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(222, 'Et labore nisi perferendis beatae.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(223, 'Animi dolores unde ut quam ullam aliquid.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(224, 'Minima vel dicta enim in non ea similique quae.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(225, 'Ut sed sunt vitae consequuntur et in aut.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(226, 'Quae alias sed dignissimos eveniet fuga eos.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(227, 'Voluptatem quis sed quibusdam ut autem excepturi.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(228, 'Doloribus voluptate cum non voluptatem quis.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(229, 'Rerum ut sint sint sed unde voluptate eius.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(230, 'Voluptatum dolorem omnis cumque repellat id est.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(231, 'Omnis eius nam eligendi sed sit amet.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(232, 'Dicta omnis vel iusto est praesentium id.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(233, 'Ad velit voluptas fugit quae dolor quae ab ut.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(234, 'Maxime occaecati quia aperiam ut quas non est.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(235, 'Unde reiciendis totam illo et et itaque.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(236, 'Cum molestiae aut sed quo ipsa dolorum.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(237, 'Cumque id ex incidunt.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(238, 'Ab ea nesciunt praesentium.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(239, 'Quas sapiente minus debitis porro nam.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(240, 'Non ut nesciunt soluta in illum.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(241, 'In eos et voluptate exercitationem.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(242, 'Ipsum quasi ex commodi veniam.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(243, 'Quasi eum id voluptas maxime repellat optio eum.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(244, 'Cumque veritatis architecto enim.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(245, 'Id consequatur consequuntur velit consequatur.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(246, 'Incidunt alias repellat porro eos.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(247, 'Dolores totam quis odio.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(248, 'Autem iusto quasi voluptatem nihil voluptatem.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(249, 'Beatae nihil debitis voluptatem commodi.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(250, 'Eos laudantium ad sequi placeat suscipit nemo.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discount`
--

CREATE TABLE `discount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `discount` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `discount`
--

INSERT INTO `discount` (`id`, `name`, `discount`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'qui nisi', 10, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(2, 'natus non', 94, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(3, 'cum reiciendis', 8, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(4, 'et unde', 1, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(5, 'amet ratione', 9, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(6, 'sint eius', 45, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(7, 'nobis dolor', 21, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(8, 'sit officia', 26, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(9, 'pariatur culpa', 57, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(10, 'pariatur consequatur', 39, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(11, 'aperiam perspiciatis', 25, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(12, 'dolores dolorum', 93, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(13, 'quisquam ducimus', 80, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(14, 'in deleniti', 6, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(15, 'quo nulla', 1, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(16, 'iure incidunt', 75, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(17, 'labore omnis', 3, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(18, 'veritatis aut', 63, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(19, 'blanditiis qui', 64, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(20, 'praesentium est', 44, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(21, 'enim omnis', 30, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(22, 'esse natus', 79, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(23, 'porro accusamus', 68, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(24, 'a minima', 39, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(25, 'ut commodi', 74, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(26, 'dolores harum', 68, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(27, 'praesentium ab', 87, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(28, 'nostrum facere', 28, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(29, 'sint adipisci', 18, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(30, 'nostrum voluptas', 32, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(31, 'laudantium labore', 19, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(32, 'harum tempore', 87, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(33, 'natus et', 7, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(34, 'voluptate neque', 48, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(35, 'impedit quo', 94, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(36, 'sed magnam', 19, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(37, 'incidunt cupiditate', 56, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(38, 'aut qui', 9, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(39, 'aperiam impedit', 35, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(40, 'sit fugit', 18, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(41, 'quis aut', 70, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(42, 'accusantium explicabo', 2, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(43, 'adipisci nobis', 11, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(44, 'eligendi qui', 0, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(45, 'occaecati omnis', 74, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(46, 'veritatis qui', 94, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(47, 'aut harum', 1, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(48, 'et est', 66, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(49, 'dolor ipsum', 79, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(50, 'ut consequatur', 89, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(51, 'est harum', 60, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(52, 'eveniet ad', 2, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(53, 'et et', 77, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(54, 'voluptas tenetur', 67, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(55, 'nam autem', 20, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(56, 'voluptatem consequatur', 55, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(57, 'culpa animi', 17, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(58, 'id est', 0, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(59, 'quis dolorem', 58, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(60, 'aspernatur totam', 68, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(61, 'omnis beatae', 14, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(62, 'est placeat', 14, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(63, 'est blanditiis', 25, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(64, 'magni pariatur', 48, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(65, 'illo qui', 94, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(66, 'qui officiis', 26, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(67, 'praesentium voluptatem', 33, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(68, 'vitae dolores', 38, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(69, 'voluptate corporis', 95, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(70, 'aut harum', 95, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(71, 'quam eos', 97, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(72, 'modi ut', 64, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(73, 'recusandae ut', 98, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(74, 'dolore ut', 50, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(75, 'atque et', 16, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(76, 'molestiae dolores', 45, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(77, 'cupiditate velit', 1, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(78, 'placeat perspiciatis', 31, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(79, 'delectus quo', 49, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(80, 'optio qui', 45, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(81, 'ut enim', 99, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(82, 'eum in', 84, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(83, 'omnis enim', 86, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(84, 'qui voluptatem', 62, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(85, 'ut facere', 29, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(86, 'corrupti laboriosam', 77, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(87, 'sed est', 14, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(88, 'vitae culpa', 51, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(89, 'velit dolor', 33, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(90, 'voluptatum perspiciatis', 9, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(91, 'necessitatibus blanditiis', 73, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(92, 'occaecati ut', 49, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(93, 'voluptatibus eos', 31, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(94, 'quia est', 28, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(95, 'earum veniam', 67, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(96, 'ea qui', 100, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(97, 'officiis eius', 91, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(98, 'magnam fugit', 90, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(99, 'nobis debitis', 86, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(100, 'quibusdam distinctio', 35, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `families`
--

CREATE TABLE `families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `profit_margin` decimal(10,0) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `families`
--

INSERT INTO `families` (`id`, `name`, `profit_margin`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'facilis', 70, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(2, 'nihil', 84, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(3, 'optio', 100, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(4, 'nulla', 50, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(5, 'corporis', 90, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(6, 'dolorum', 55, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(7, 'repellendus', 92, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(8, 'vero', 79, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(9, 'tenetur', 87, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(10, 'qui', 96, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(11, 'voluptate', 71, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(12, 'ipsum', 53, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(13, 'qui', 84, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(14, 'maxime', 93, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(15, 'illo', 55, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(16, 'quis', 87, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(17, 'corrupti', 54, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(18, 'error', 88, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(19, 'atque', 70, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(20, 'aperiam', 71, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num` int(11) NOT NULL,
  `issuedate` date NOT NULL,
  `delivery_note_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_lines`
--

CREATE TABLE `invoice_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_lines_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_lines_num` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2012_10_23_111325_create_transports_table', 1),
(2, '2012_10_23_111453_create_payment_terms_table', 1),
(3, '2012_10_23_111514_create_bank_entities_table', 1),
(4, '2012_10_23_111531_create_delivery_terms_table', 1),
(5, '2012_10_23_153856_create_discount_table', 1),
(6, '2013_10_11_153709_create_companies_table', 1),
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2020_10_26_103535_create_orders_table', 1),
(13, '2025_10_23_160159_create_delivery_note_table', 1),
(14, '2025_10_24_103812_create_invoices_table', 1),
(15, '2025_10_25_095040_create_order_lines_table', 1),
(16, '2025_10_26_094944_create_delivery_note_lines_table', 1),
(17, '2025_10_26_104137_create_invoice_lines_table', 1),
(18, '2025_10_26_150832_create_families_table', 1),
(19, '2025_10_26_151356_create_articles_table', 1),
(20, '2025_10_27_095141_create_products_table', 1),
(21, '2025_10_27_115506_create_contains_art_invlines_table', 1),
(22, '2025_10_27_115932_create_contain_art_delivlines_table', 1),
(23, '2025_10_27_152124_create_contain_art_orderlines_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num` varchar(10) NOT NULL,
  `issuedate` date NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_lines`
--

CREATE TABLE `order_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_line_num` varchar(10) NOT NULL,
  `issue_date` date NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(50) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `description`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Facilis voluptas dolorem alias odit beatae.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(2, 'Qui eveniet libero sed ipsa veniam.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(3, 'Doloribus ipsum blanditiis eum quo.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(4, 'Rerum fuga officiis nemo qui.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(5, 'Ullam perferendis placeat et reiciendis rerum.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(6, 'Ut fugiat in neque quam expedita beatae.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(7, 'Et aut vel distinctio sint et consequuntur.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(8, 'Sint rerum eos adipisci neque cupiditate quae.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(9, 'Vel nam saepe eum voluptates nesciunt voluptas.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(10, 'Officiis a ad sit esse sequi fugit est.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(11, 'Unde eos quis eius magnam autem ut ducimus.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(12, 'Et vel aperiam qui minus explicabo eius.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(13, 'Omnis voluptas expedita quaerat.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(14, 'Unde et repudiandae sed.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(15, 'Commodi delectus occaecati facilis quo.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(16, 'Odio qui officiis autem fugit.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(17, 'Voluptatem at sint beatae.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(18, 'Dolores quis et accusantium iure est rem nam.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(19, 'Delectus et unde dolores quis.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(20, 'In inventore et velit error.', 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(21, 'Blanditiis magnam nemo qui ipsum voluptate.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(22, 'Amet quidem velit quia molestias sed.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(23, 'Enim cupiditate sequi error eos.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(24, 'Veritatis maxime sed sed consequuntur commodi.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(25, 'Sint illum fugit dolor vitae temporibus.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(26, 'Nemo temporibus est cumque et.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(27, 'Quibusdam alias similique quasi nobis.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(28, 'Nisi enim nihil illum doloribus.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(29, 'Rem ea id quis eos ut quia perferendis.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(30, 'Voluptatum et facere sed sed earum eaque.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(31, 'Vel magni ratione et corporis molestiae.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(32, 'Quaerat maxime quisquam dicta.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(33, 'Ut qui eos sunt ut sunt veniam qui.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(34, 'Culpa molestias aut ad repellendus quasi.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(35, 'Nihil enim rerum et impedit et.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(36, 'Rerum explicabo illum est.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(37, 'Atque odio aliquam atque eaque perspiciatis.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(38, 'Tempore et omnis voluptatum et.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(39, 'Ut qui eveniet ipsum ea consequatur.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(40, 'Ut dolorem sapiente corporis.', 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(41, 'Doloribus laborum non sit quam ut sint.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(42, 'Soluta et velit ea.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(43, 'Laudantium qui totam cumque voluptatem et nisi.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(44, 'Et vel eos tempore est.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(45, 'Nostrum est ut eos perferendis et.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(46, 'Iusto laudantium dolores odio.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(47, 'Sit eaque veniam blanditiis aliquid.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(48, 'Quis vel natus doloribus est voluptatem.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(49, 'Quo sit adipisci natus.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(50, 'Omnis non sunt quos dignissimos blanditiis.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(51, 'Magnam laudantium consequatur voluptatem autem.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(52, 'Fugit saepe dolorem nihil.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(53, 'Consequuntur dignissimos pariatur explicabo.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(54, 'Non iste adipisci odit esse nulla.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(55, 'Rerum sed aut cum voluptatem.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(56, 'Eum quae iure atque vero.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(57, 'Temporibus voluptates et omnis quia.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(58, 'Nesciunt sint cum aut consequatur eius eum.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(59, 'Recusandae quae animi doloremque sit.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(60, 'Enim quo a culpa occaecati.', 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(61, 'Autem porro dolorem tenetur impedit.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(62, 'Harum ipsa quis et soluta.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(63, 'Blanditiis explicabo porro voluptatem ut.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(64, 'Est quibusdam omnis et sed molestias.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(65, 'Deleniti totam ea recusandae impedit.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(66, 'Sint veritatis illum ut facere sed.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(67, 'Incidunt cumque ducimus neque dicta ut ea.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(68, 'Voluptas dolor animi architecto.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(69, 'Eaque odio rem fugiat hic.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(70, 'Et qui cumque saepe doloribus.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(71, 'Ducimus omnis illum odio ratione.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(72, 'Alias porro dolore mollitia dolor.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(73, 'Nemo sit labore cumque voluptatem laborum.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(74, 'Et et sunt mollitia.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(75, 'Ipsam eos eius eum sunt ut eum.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(76, 'Sed atque soluta dolores quas quas.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(77, 'Ut perspiciatis sint necessitatibus consequatur.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(78, 'Error iure occaecati quam quo quia qui ut.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(79, 'Autem dolore dolorum ex sint excepturi.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(80, 'Tempora quo omnis adipisci minus minima quo.', 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(81, 'Dolores iusto eos est. Ex qui maiores architecto.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(82, 'Vel id sit alias. Fuga totam autem sit.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(83, 'Optio officia cumque ut est quasi omnis est aut.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(84, 'Sed qui ut consequatur nostrum iusto ut.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(85, 'Et modi minus a aut reiciendis dolorem itaque.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(86, 'Et ut impedit omnis mollitia et.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(87, 'At distinctio voluptas eum esse mollitia.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(88, 'Debitis consequuntur ipsum nam.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(89, 'Ut est quia quod nam consequatur similique.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(90, 'Unde rerum aut excepturi eligendi.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(91, 'Eaque at quos quisquam velit.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(92, 'Quis at quaerat qui et rerum.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(93, 'Quam voluptas earum ea error eius possimus.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(94, 'Quo ab expedita aut nemo.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(95, 'Nesciunt consequatur aspernatur facere debitis.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(96, 'Et perspiciatis perferendis voluptatem.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(97, 'Corrupti perferendis eaque aliquam debitis.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(98, 'Excepturi sed ut veniam libero veniam molestias.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(99, 'Molestias et ea unde molestias.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(100, 'Veritatis quaerat ea aspernatur est.', 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `sotck` int(11) NOT NULL,
  `color_name` varchar(20) NOT NULL,
  `weight` double(8,2) NOT NULL,
  `size` varchar(10) NOT NULL,
  `family_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transports`
--

CREATE TABLE `transports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transports`
--

INSERT INTO `transports` (`id`, `min`, `max`, `price`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 0, 143, 88, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(2, 23, 156, 6, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(3, 25, 118, 57, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(4, 32, 70, 87, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(5, 2, 92, 10, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(6, 12, 82, 85, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(7, 43, 71, 46, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(8, 21, 52, 72, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(9, 0, 151, 30, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(10, 40, 94, 93, 0, '2025-11-03 15:03:00', '2025-11-03 15:03:00'),
(11, 17, 109, 11, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(12, 49, 112, 51, 0, '2025-11-23 17:19:59', '2025-11-23 17:19:59'),
(13, 4, 91, 49, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(14, 30, 111, 40, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(15, 32, 59, 30, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(16, 7, 97, 72, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(17, 5, 184, 74, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(18, 5, 92, 12, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(19, 15, 196, 34, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(20, 42, 157, 53, 0, '2025-11-23 17:20:00', '2025-11-23 17:20:00'),
(21, 47, 101, 29, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(22, 16, 183, 45, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(23, 34, 196, 77, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(24, 19, 80, 44, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(25, 34, 159, 51, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(26, 43, 179, 99, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(27, 10, 200, 55, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(28, 12, 172, 27, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(29, 40, 186, 74, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(30, 46, 105, 68, 0, '2025-11-23 17:20:38', '2025-11-23 17:20:38'),
(31, 37, 173, 61, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(32, 47, 102, 45, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(33, 48, 118, 23, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(34, 45, 142, 26, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(35, 14, 189, 58, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(36, 9, 175, 77, 0, '2025-12-01 18:17:50', '2025-12-01 18:17:50'),
(37, 31, 120, 31, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(38, 47, 115, 20, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(39, 37, 87, 90, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(40, 38, 91, 5, 0, '2025-12-01 18:17:51', '2025-12-01 18:17:51'),
(41, 40, 97, 64, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(42, 19, 190, 80, 0, '2025-12-01 18:18:08', '2025-12-01 18:18:08'),
(43, 36, 81, 83, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(44, 35, 196, 13, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(45, 9, 59, 90, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(46, 17, 185, 68, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(47, 16, 191, 23, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(48, 10, 97, 84, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(49, 33, 122, 24, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09'),
(50, 7, 66, 78, 0, '2025-12-01 18:18:09', '2025-12-01 18:18:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(1) DEFAULT NULL,
  `email_confirmed` tinyint(4) NOT NULL DEFAULT 0,
  `activated` tinyint(4) NOT NULL DEFAULT 0,
  `iscontact` tinyint(4) NOT NULL DEFAULT 0,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `secondname`, `email`, `password`, `company_id`, `type`, `email_confirmed`, `activated`, `iscontact`, `deleted`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(17, 'Administrador', 'Administrador', 'admin@admin.com', '$2y$12$SRuYdAwpMgbcLyZehHO9Re9z7XfRZ0vHebILZMN4d10WhU7hjp19i', 3, 'A', 1, 1, 0, 0, '2025-12-01 18:18:09', 'ApSm8Sr9H4ecO9K9DSbXIqi9mZYYPUzEhLHp0g14R0JOVMvsz8cEQJSU2T2J', '2025-12-01 18:18:09', '2025-12-01 18:18:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_family_id_foreign` (`family_id`);

--
-- Indices de la tabla `bank_entities`
--
ALTER TABLE `bank_entities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_del_term_id_foreign` (`del_term_id`),
  ADD KEY `companies_transport_id_foreign` (`transport_id`),
  ADD KEY `companies_payment_term_id_foreign` (`payment_term_id`),
  ADD KEY `companies_bank_entity_id_foreign` (`bank_entity_id`),
  ADD KEY `companies_discount_id_foreign` (`discount_id`);

--
-- Indices de la tabla `contains_art_invlines`
--
ALTER TABLE `contains_art_invlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contains_art_invlines_article_id_foreign` (`article_id`),
  ADD KEY `contains_art_invlines_invoice_line_id_foreign` (`invoice_line_id`);

--
-- Indices de la tabla `contain_art_delivlines`
--
ALTER TABLE `contain_art_delivlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contain_art_delivlines_article_id_foreign` (`article_id`),
  ADD KEY `contain_art_delivlines_delivery_lines_id_foreign` (`delivery_lines_id`);

--
-- Indices de la tabla `contain_art_orderlines`
--
ALTER TABLE `contain_art_orderlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contain_art_orderlines_article_id_foreign` (`article_id`),
  ADD KEY `contain_art_orderlines_order_line_id_foreign` (`order_line_id`);

--
-- Indices de la tabla `delivery_note`
--
ALTER TABLE `delivery_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_note_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `delivery_note_lines`
--
ALTER TABLE `delivery_note_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_note_lines_delivery_note_id_foreign` (`delivery_note_id`),
  ADD KEY `delivery_note_lines_order_line_id_foreign` (`order_line_id`);

--
-- Indices de la tabla `delivery_terms`
--
ALTER TABLE `delivery_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_delivery_note_id_foreign` (`delivery_note_id`);

--
-- Indices de la tabla `invoice_lines`
--
ALTER TABLE `invoice_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_lines_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_lines_delivery_lines_id_foreign` (`delivery_lines_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_company_id_foreign` (`company_id`);

--
-- Indices de la tabla `order_lines`
--
ALTER TABLE `order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_lines_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_article_id_foreign` (`article_id`),
  ADD KEY `products_company_id_foreign` (`company_id`),
  ADD KEY `products_family_id_foreign` (`family_id`);

--
-- Indices de la tabla `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `bank_entities`
--
ALTER TABLE `bank_entities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `contains_art_invlines`
--
ALTER TABLE `contains_art_invlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contain_art_delivlines`
--
ALTER TABLE `contain_art_delivlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contain_art_orderlines`
--
ALTER TABLE `contain_art_orderlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delivery_note`
--
ALTER TABLE `delivery_note`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delivery_note_lines`
--
ALTER TABLE `delivery_note_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delivery_terms`
--
ALTER TABLE `delivery_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de la tabla `discount`
--
ALTER TABLE `discount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `families`
--
ALTER TABLE `families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invoice_lines`
--
ALTER TABLE `invoice_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_lines`
--
ALTER TABLE `order_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transports`
--
ALTER TABLE `transports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_bank_entity_id_foreign` FOREIGN KEY (`bank_entity_id`) REFERENCES `bank_entities` (`id`),
  ADD CONSTRAINT `companies_del_term_id_foreign` FOREIGN KEY (`del_term_id`) REFERENCES `delivery_terms` (`id`),
  ADD CONSTRAINT `companies_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`),
  ADD CONSTRAINT `companies_payment_term_id_foreign` FOREIGN KEY (`payment_term_id`) REFERENCES `payment_terms` (`id`),
  ADD CONSTRAINT `companies_transport_id_foreign` FOREIGN KEY (`transport_id`) REFERENCES `transports` (`id`);

--
-- Filtros para la tabla `contains_art_invlines`
--
ALTER TABLE `contains_art_invlines`
  ADD CONSTRAINT `contains_art_invlines_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contains_art_invlines_invoice_line_id_foreign` FOREIGN KEY (`invoice_line_id`) REFERENCES `invoice_lines` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contain_art_delivlines`
--
ALTER TABLE `contain_art_delivlines`
  ADD CONSTRAINT `contain_art_delivlines_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contain_art_delivlines_delivery_lines_id_foreign` FOREIGN KEY (`delivery_lines_id`) REFERENCES `delivery_note_lines` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contain_art_orderlines`
--
ALTER TABLE `contain_art_orderlines`
  ADD CONSTRAINT `contain_art_orderlines_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contain_art_orderlines_order_line_id_foreign` FOREIGN KEY (`order_line_id`) REFERENCES `order_lines` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `delivery_note`
--
ALTER TABLE `delivery_note`
  ADD CONSTRAINT `delivery_note_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `delivery_note_lines`
--
ALTER TABLE `delivery_note_lines`
  ADD CONSTRAINT `delivery_note_lines_delivery_note_id_foreign` FOREIGN KEY (`delivery_note_id`) REFERENCES `delivery_note` (`id`),
  ADD CONSTRAINT `delivery_note_lines_order_line_id_foreign` FOREIGN KEY (`order_line_id`) REFERENCES `order_lines` (`id`);

--
-- Filtros para la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_delivery_note_id_foreign` FOREIGN KEY (`delivery_note_id`) REFERENCES `delivery_note` (`id`);

--
-- Filtros para la tabla `invoice_lines`
--
ALTER TABLE `invoice_lines`
  ADD CONSTRAINT `invoice_lines_delivery_lines_id_foreign` FOREIGN KEY (`delivery_lines_id`) REFERENCES `delivery_note_lines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_lines_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `order_lines`
--
ALTER TABLE `order_lines`
  ADD CONSTRAINT `order_lines_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `products_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `products_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
