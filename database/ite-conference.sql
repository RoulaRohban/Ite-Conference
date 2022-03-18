-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 02:02 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ite-conference`
--

-- --------------------------------------------------------

--
-- Table structure for table `conferences`
--

CREATE TABLE `conferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conferences`
--

INSERT INTO `conferences` (`id`, `name`, `bio`, `country`, `date`, `cover_image`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'المؤتمر الدوري للهندسة المعلوماتية', 'إلى طلبة الدراسات العليا.. سارعوا وانضموا إلينا', 'كلية الهندسة المعلوماتية- جامعة دمشق', '2022-03-31 00:00:00', 'conferences\\March2022\\Uled48IeZTA8QXEzs4iE.jpg', 'conferences\\March2022\\HHIxVJ5yQdqnDQs1nm7j.png', '2022-03-18 10:19:09', '2022-03-18 11:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `title`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'اختبار', 'kasixoje@mailinator.com', 'اخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخخ', '2022-03-18 10:31:47', '2022-03-18 10:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 5, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 5, 'message', 'text_area', 'Message', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(27, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(28, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(29, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(30, 6, 'bio', 'text', 'Bio', 1, 1, 1, 1, 1, 1, '{}', 3),
(31, 6, 'country', 'text', 'Country', 1, 1, 1, 1, 1, 1, '{}', 4),
(32, 6, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(33, 6, 'cover_image', 'image', 'Cover Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(34, 6, 'logo', 'image', 'Logo', 1, 1, 1, 1, 1, 1, '{}', 7),
(35, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(36, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(37, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 7, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(39, 7, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(40, 7, 'conference_id', 'text', 'Conference', 1, 1, 1, 1, 1, 1, '{}', 2),
(41, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(42, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(43, 7, 'section_belongsto_conference_relationship', 'relationship', 'conferences', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Conference\",\"table\":\"conferences\",\"type\":\"belongsTo\",\"column\":\"conference_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"conferences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(44, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(46, 8, 'position', 'text', 'Position', 1, 1, 1, 1, 1, 1, '{}', 4),
(47, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(48, 8, 'conference_id', 'text', 'Conference Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(49, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(50, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(51, 8, 'supervisor_belongsto_conference_relationship', 'relationship', 'conferences', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Conference\",\"table\":\"conferences\",\"type\":\"belongsTo\",\"column\":\"conference_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"conferences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-03-18 09:47:09', '2022-03-18 09:47:09'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-03-18 09:47:09', '2022-03-18 09:47:09'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-03-18 09:47:09', '2022-03-18 09:47:09'),
(5, 'contact_us', 'contact-us', 'Contact Us', 'Contact Us', 'voyager-mail', 'App\\Models\\ContactUs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-18 10:00:16', '2022-03-18 10:28:58'),
(6, 'conferences', 'conferences', 'Conference', 'Conferences', 'voyager-world', 'App\\Models\\Conference', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-18 10:05:32', '2022-03-18 10:05:32'),
(7, 'sections', 'sections', 'Section', 'Sections', 'voyager-book', 'App\\Models\\Section', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-18 10:10:36', '2022-03-18 10:26:57'),
(8, 'supervisors', 'supervisors', 'Supervisor', 'Supervisors', 'voyager-group', 'App\\Models\\Supervisor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-18 10:13:14', '2022-03-18 10:28:37');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-03-18 09:47:10', '2022-03-18 09:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-03-18 09:47:10', '2022-03-18 09:47:10', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2022-03-18 09:47:10', '2022-03-18 10:15:07', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 6, '2022-03-18 09:47:10', '2022-03-18 10:15:15', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2022-03-18 09:47:10', '2022-03-18 10:15:15', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-03-18 09:47:10', '2022-03-18 10:15:07', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-03-18 09:47:10', '2022-03-18 10:14:41', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-03-18 09:47:10', '2022-03-18 10:14:41', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-03-18 09:47:10', '2022-03-18 10:14:41', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-03-18 09:47:10', '2022-03-18 10:14:41', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2022-03-18 09:47:10', '2022-03-18 10:15:07', 'voyager.settings.index', NULL),
(11, 1, 'Contact Us', '', '_self', 'voyager-telephone', NULL, NULL, 5, '2022-03-18 10:00:16', '2022-03-18 10:15:07', 'voyager.contact-us.index', NULL),
(12, 1, 'Conferences', '', '_self', 'voyager-world', NULL, NULL, 2, '2022-03-18 10:05:33', '2022-03-18 10:14:41', 'voyager.conferences.index', NULL),
(13, 1, 'Sections', '', '_self', 'voyager-book', NULL, NULL, 3, '2022-03-18 10:10:36', '2022-03-18 10:14:55', 'voyager.sections.index', NULL),
(14, 1, 'Supervisors', '', '_self', 'voyager-group', NULL, NULL, 4, '2022-03-18 10:13:14', '2022-03-18 10:15:03', 'voyager.supervisors.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_03_18_101101_create_conferences_table', 1),
(5, '2022_03_18_101258_create_sections_table', 1),
(6, '2022_03_18_101354_create_supervisors_table', 1),
(7, '2022_03_18_101411_create_contact_us_table', 1),
(8, '2016_01_01_000000_add_voyager_user_fields', 2),
(9, '2016_01_01_000000_create_data_types_table', 2),
(10, '2016_05_19_173453_create_menu_table', 2),
(11, '2016_10_21_190000_create_roles_table', 2),
(12, '2016_10_21_190000_create_settings_table', 2),
(13, '2016_11_30_135954_create_permission_table', 2),
(14, '2016_11_30_141208_create_permission_role_table', 2),
(15, '2016_12_26_201236_data_types__add__server_side', 2),
(16, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(17, '2017_01_14_005015_create_translations_table', 2),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(22, '2017_08_05_000000_add_group_to_settings_table', 2),
(23, '2017_11_26_013050_add_user_role_relationship', 2),
(24, '2017_11_26_015000_create_user_roles_table', 2),
(25, '2018_03_11_000000_add_user_settings', 2),
(26, '2018_03_14_000000_add_details_to_data_types_table', 2),
(27, '2018_03_16_000000_make_settings_value_nullable', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(2, 'browse_bread', NULL, '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(3, 'browse_database', NULL, '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(4, 'browse_media', NULL, '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(5, 'browse_compass', NULL, '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(6, 'browse_menus', 'menus', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(7, 'read_menus', 'menus', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(8, 'edit_menus', 'menus', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(9, 'add_menus', 'menus', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(10, 'delete_menus', 'menus', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(11, 'browse_roles', 'roles', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(12, 'read_roles', 'roles', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(13, 'edit_roles', 'roles', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(14, 'add_roles', 'roles', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(15, 'delete_roles', 'roles', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(16, 'browse_users', 'users', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(17, 'read_users', 'users', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(18, 'edit_users', 'users', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(19, 'add_users', 'users', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(20, 'delete_users', 'users', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(21, 'browse_settings', 'settings', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(22, 'read_settings', 'settings', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(23, 'edit_settings', 'settings', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(24, 'add_settings', 'settings', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(25, 'delete_settings', 'settings', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(26, 'browse_contact_us', 'contact_us', '2022-03-18 10:00:16', '2022-03-18 10:00:16'),
(27, 'read_contact_us', 'contact_us', '2022-03-18 10:00:16', '2022-03-18 10:00:16'),
(28, 'edit_contact_us', 'contact_us', '2022-03-18 10:00:16', '2022-03-18 10:00:16'),
(29, 'add_contact_us', 'contact_us', '2022-03-18 10:00:16', '2022-03-18 10:00:16'),
(30, 'delete_contact_us', 'contact_us', '2022-03-18 10:00:16', '2022-03-18 10:00:16'),
(31, 'browse_conferences', 'conferences', '2022-03-18 10:05:33', '2022-03-18 10:05:33'),
(32, 'read_conferences', 'conferences', '2022-03-18 10:05:33', '2022-03-18 10:05:33'),
(33, 'edit_conferences', 'conferences', '2022-03-18 10:05:33', '2022-03-18 10:05:33'),
(34, 'add_conferences', 'conferences', '2022-03-18 10:05:33', '2022-03-18 10:05:33'),
(35, 'delete_conferences', 'conferences', '2022-03-18 10:05:33', '2022-03-18 10:05:33'),
(36, 'browse_sections', 'sections', '2022-03-18 10:10:36', '2022-03-18 10:10:36'),
(37, 'read_sections', 'sections', '2022-03-18 10:10:36', '2022-03-18 10:10:36'),
(38, 'edit_sections', 'sections', '2022-03-18 10:10:36', '2022-03-18 10:10:36'),
(39, 'add_sections', 'sections', '2022-03-18 10:10:36', '2022-03-18 10:10:36'),
(40, 'delete_sections', 'sections', '2022-03-18 10:10:36', '2022-03-18 10:10:36'),
(41, 'browse_supervisors', 'supervisors', '2022-03-18 10:13:14', '2022-03-18 10:13:14'),
(42, 'read_supervisors', 'supervisors', '2022-03-18 10:13:14', '2022-03-18 10:13:14'),
(43, 'edit_supervisors', 'supervisors', '2022-03-18 10:13:14', '2022-03-18 10:13:14'),
(44, 'add_supervisors', 'supervisors', '2022-03-18 10:13:14', '2022-03-18 10:13:14'),
(45, 'delete_supervisors', 'supervisors', '2022-03-18 10:13:14', '2022-03-18 10:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-03-18 09:47:10', '2022-03-18 09:47:10'),
(2, 'user', 'Normal User', '2022-03-18 09:47:10', '2022-03-18 09:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `conference_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `description`, `conference_id`, `created_at`, `updated_at`) VALUES
(2, 'لمحة عامة', 'يعقد الاتحاد الدولي للاتصالات المؤتمر العالمي للاتصالات الدولية (WICT) في دبي، الإمارات العربية المتحدة، في الفترة من 3-14 ديسمبر 2012. وسيقوم هذا المؤتمر الهام بمراجعة لوائح الاتصالات الدولية (ITR)، التي تعد بمثابة معاهدة عالمية ملزمة وضعت لتسهيل التوصيل البيني وقابلية التشغيل البيني على المستوى الدولي لخدمات المعلومات والاتصالات، إلى جانب ضمان كفاءتها واستعمالها وإتاحتها للجمهور على نطاق واسع.\r\n \r\nوتحدد المعاهدة مبادئ عامة لضمان التدفق الحر  للمعلومات في كافة أرجاء العالم، مع النهوض بالنفاذ المنصف للجميع إليها وبأسعار معقولة، كما تضع الأساس لاستمرار الابتكار والنمو في الأسواق. وقد اعتمدت ونوقشت لوائح الاتصالات الدولية لآخر مرة في ملبورن، أستراليا عام 1988، وهناك توافق كبير في الآراء على أن هذا النص أصبح الآن بحاجة إلى تحديثه لإبراز المشهد المختلف جذرياً لتكنولوجيا المعلومات والاتصالات في القرن الحادي والعشرين.\r\n \r\nوسينظر المؤتمر في مراجعة (انظر القرار 146 لمؤتمر المندوبين المفوضين لعام 2006) لوائح الاتصالات الدولية (ITR)، التي تحدد المبادئ العامة لتوفير الاتصالات الدولية وتشغيلها.', 1, '2022-03-18 10:34:26', '2022-03-18 10:35:53'),
(4, 'أهداف المؤتمر', 'تعقد الجمعية العلمية السعودية للمعلوماتية الصحية المنتدى الدولي للمعلوماتية الصحية والذي يتكون من مؤتمرين هما: المؤتمر السعودي السادس للصحة الإلكترونية، و المؤتمر الدولي الأول للمعلوماتية الصحية، ويسعى منظمو هذا المنتدى إلى تحقيق العديد من الأهداف، ومنها:\r\n\r\n- نشر الوعي بأهمية تقنية وأمن المعلومات الصحية.\r\n\r\n- إبراز دورها الفعّال في رفع كفاءة الأداء في القطاعات الصحية.\r\n\r\n- تحسين جودة ونوعية الخدمات الصحية المقدَّمة.\r\n\r\n- الاستخدام الأمثل للموارد في القطاعات الصحية.\r\n\r\n- استكشاف الاتجاهات الحديثة للصحة الإلكترونية وأحدث تقنياتها وتطبيقاتها.\r\n\r\n- إتاحة الفرصة لتبادل المعلومات والخبرات واستعراض التجارب وقصص النجاح في مجال المعلوماتية الصحية والخدمات الصحية الإلكترونية، البيانات المتقدمة وتحليلاتها، إضافة إلى أمن المعلومات.', 1, '2022-03-18 10:36:16', '2022-03-18 10:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conference_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`id`, `name`, `position`, `image`, `conference_id`, `created_at`, `updated_at`) VALUES
(1, 'الدكتور محمد سعيد أبو طراب', 'النائب العلمي لكلية الهندسة المعلوماتية', 'supervisors\\March2022\\o7VdAgxO7PDz3TECd7lT.jpg', 1, '2022-03-18 10:30:45', '2022-03-18 11:00:30'),
(2, 'الدكتور أبي صندوق', 'رءيس قسم هندسة البرمجيات ونظم المعلومات', 'supervisors\\March2022\\AEpXDyok20nZgE1GALnx.jpg', 1, '2022-03-18 10:31:20', '2022-03-18 10:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Conference Admin', 'admin@email.com', 'users\\March2022\\qh915hJQ45Grl6h5gQHR.jpg', NULL, '$2y$10$4ZjLpQSqAvtDxSwwIDGp6uwcti2j35.XxWbPo1s4Ii97vxDi08IEq', 'REswr640ZDCn60uu86v8a5sMXgg627b5zOifkrQPJYhPD8l3DDX013wsAmUM', '{\"locale\":\"en\"}', '2022-03-18 09:50:24', '2022-03-18 11:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conferences`
--
ALTER TABLE `conferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_conference_id_foreign` (`conference_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supervisors_conference_id_foreign` (`conference_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conferences`
--
ALTER TABLE `conferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_conference_id_foreign` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD CONSTRAINT `supervisors_conference_id_foreign` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
