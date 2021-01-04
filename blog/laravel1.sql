-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 03:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_id_parent` int(11) DEFAULT NULL,
  `category_id_parent_str` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `category_id_child_str` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_order` int(11) NOT NULL,
  `category_slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_overview` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `category_description` text CHARACTER SET utf8 DEFAULT NULL,
  `category_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_status` tinyint(2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_id_parent`, `category_id_parent_str`, `category_id_child_str`, `category_name`, `category_order`, `category_slug`, `category_overview`, `category_description`, `category_image`, `category_status`, `user_id`, `user_full_name`, `context_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '{\"2\":1,\"5\":1,\"3\":1,\"4\":1}', 'root', 0, NULL, '$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs', '<p>$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs</p>', NULL, NULL, 9999, 'Lê Super Admin', 4, '2018-04-06 22:03:27', '2018-04-06 22:04:51'),
(2, 1, '{\"1\":1}', '{\"5\":1}', 'child 1', 0, NULL, '$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs', '<p>$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs</p>', NULL, NULL, 9999, 'Lê Super Admin', 4, '2018-04-06 22:03:50', '2018-04-06 22:04:51'),
(3, 1, '{\"1\":1}', '{\"4\":1}', 'child 2', 0, NULL, '$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs', '<p>$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs</p>', NULL, NULL, 9999, 'Lê Super Admin', 4, '2018-04-06 22:04:05', '2018-04-06 22:04:25'),
(4, 3, '{\"3\":1,\"1\":1}', NULL, 'child 21111111', 0, NULL, '$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs', '<p>$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs</p>', NULL, NULL, 9999, 'Lê Super Admin', 4, '2018-04-06 22:04:25', '2018-04-06 22:04:25'),
(5, 2, '{\"2\":1,\"1\":1}', NULL, 'child 111111111', 0, NULL, '$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs', '<p>$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs$_id_childs</p>', NULL, NULL, 9999, 'Lê Super Admin', 4, '2018-04-06 22:04:51', '2018-04-06 22:04:51'),
(6, NULL, NULL, NULL, 'Trang chủ', 0, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', NULL, 99, 9999, 'Lê Super Admin', 6, NULL, NULL),
(7, NULL, NULL, NULL, 'Tài liệu', 0, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', NULL, 99, 9999, 'Lê Super Admin', 6, NULL, NULL),
(8, 7, '{\"7\":1}', NULL, 'HTML/CSS', 0, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', NULL, 99, 9999, 'Lê Super Admin', 6, NULL, NULL),
(9, NULL, NULL, NULL, 'Chúng tôi', 0, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', NULL, 99, 9999, 'Lê Super Admin', 6, NULL, NULL),
(10, NULL, NULL, NULL, 'Phòng kinh doanh', 0, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', NULL, NULL, 9999, 'Lê Super Admin', 2, NULL, NULL),
(11, NULL, NULL, NULL, 'Phòng nhân sự', 0, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', NULL, NULL, 9999, 'Lê Super Admin', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contexts`
--

CREATE TABLE `contexts` (
  `context_id` int(11) NOT NULL,
  `context_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context_ref` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `context_status` tinyint(2) DEFAULT 0,
  `context_notes` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contexts`
--

INSERT INTO `contexts` (`context_id`, `context_name`, `context_key`, `context_ref`, `context_status`, `context_notes`, `user_id`, `user_full_name`, `created_at`, `updated_at`) VALUES
(1, 'Sample', '31011ca423703da4e7a48f00eec12', 'admin/samples', 1, NULL, 9999, 'Lê Super Admin', '2018-03-25 19:21:29', '2018-03-25 20:39:31'),
(2, 'User department', 'af36197583414ee1e26fccdc6a98', 'user/department', 1, NULL, 9999, 'Lê Super Admin', '2018-03-25 22:00:27', '2018-03-25 22:00:27'),
(3, 'Permissions', '59c873e29b03ad5ec649bfeadd', 'admin/permissions', 1, NULL, 9999, 'Lê Super Admin', '2018-03-26 00:01:21', '2018-03-26 00:01:21'),
(4, 'Posts', 'c09ae13b96c65a5a04b76ea7ac', 'admin/posts', 1, NULL, 9999, 'Lê Super Admin', '2018-03-26 00:53:36', '2018-03-26 00:53:36'),
(5, 'Slideshow', 'c631a3702ccf1b1256e6c85b54c67', 'admin/slideshows', 1, NULL, 9999, 'Lê Super Admin', '2018-03-26 23:38:23', '2018-03-26 23:38:23'),
(6, 'main_menu', 'b0604e17bfb90d494a55bdd97e0bb', 'main_menu', 1, NULL, 9999, 'Lê Super Admin', '2018-04-01 19:50:29', '2018-04-01 19:50:29'),
(7, 'admin/api', '0bcaf86a21a138d94a8428b6ed', 'admin/api', NULL, NULL, 9999, 'Lê Super Admin', '2018-04-09 01:32:56', '2018-04-09 01:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `protected`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '{\"_superadmin\":1}', 0, '2020-12-28 17:49:16', '2020-12-28 17:49:16'),
(2, 'editor', '{\"_user-editor\":1,\"_group-editor\":1}', 0, '2020-12-28 17:49:16', '2020-12-28 17:49:16'),
(3, 'base admin', '{\"_user-editor\":1}', 0, '2020-12-28 17:49:16', '2020-12-28 17:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 1),
(2, '2014_02_19_095545_create_users_table', 1),
(3, '2014_02_19_095623_create_user_groups_table', 1),
(4, '2014_02_19_095637_create_groups_table', 1),
(5, '2014_02_19_160516_create_permission_table', 1),
(6, '2014_02_26_165011_create_user_profile_table', 1),
(7, '2014_05_06_122145_create_profile_field_types', 1),
(8, '2014_05_06_122155_create_profile_field', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `overview` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `overview`, `description`, `url`, `permission`, `protected`, `created_at`, `updated_at`) VALUES
(1, '', 'superadmin', '', '_superadmin', 0, '2020-12-28 17:49:16', '2020-12-28 17:49:16'),
(2, '', 'user editor', '', '_user-editor', 0, '2020-12-28 17:49:16', '2020-12-28 17:49:16'),
(3, '', 'group editor', '', '_group-editor', 0, '2020-12-28 17:49:16', '2020-12-28 17:49:16'),
(4, '', 'permission editor', '', '_permission-editor', 0, '2020-12-28 17:49:16', '2020-12-28 17:49:16'),
(5, '', 'profile type editor', '', '_profile-editor', 0, '2020-12-28 17:49:16', '2020-12-28 17:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `slideshow_id` int(11) DEFAULT NULL,
  `post_name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `post_slug` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_overview` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `post_files` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_status` tinyint(4) DEFAULT NULL,
  `cache_comments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cache_other_posts` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cache_time` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `user_email`, `user_full_name`, `category_id`, `slideshow_id`, `post_name`, `post_slug`, `post_overview`, `post_description`, `post_image`, `post_files`, `post_status`, `cache_comments`, `cache_other_posts`, `cache_time`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@admin.com', ' ', NULL, NULL, 'nguyen van khai0', 'nguyen-van-khai0', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<p><img class=\"\" src=\"/photos/1/index.jpg\" alt=\"\" width=\"275\" height=\"183\" /></p>', '/photos/1/index.jpg', '[]', 99, NULL, NULL, NULL, '2020-12-29 07:34:55', '2020-12-29 07:38:24'),
(2, 1, 'admin@admin.com', ' ', NULL, NULL, 'nguyen van khai', 'nguyen-van-khai', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<blockquote class=\"quote-card\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</blockquote>\r\n<p><img class=\"\" src=\"/photos/1/index.jpg\" alt=\"\" width=\"275\" height=\"183\" /></p>', '/photos/1/index.jpg', '[]', 99, NULL, NULL, NULL, '2020-12-29 07:35:09', '2020-12-29 07:35:09'),
(3, 1, 'admin@admin.com', ' ', NULL, NULL, 'laravel-8x', 'laravel-8x', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<p><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span><img class=\"\" src=\"/photos/1/index.jpg\" alt=\"\" width=\"275\" height=\"183\" /></p>', '/photos/1/index.jpg', '[]', 99, NULL, NULL, NULL, '2020-12-29 07:39:35', '2020-12-29 07:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `profile_field`
--

CREATE TABLE `profile_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `profile_field_type_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_field_type`
--

CREATE TABLE `profile_field_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

CREATE TABLE `slideshows` (
  `slideshow_id` int(11) NOT NULL,
  `style_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `slideshow_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_overview` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `slideshow_images` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slideshows`
--

INSERT INTO `slideshows` (`slideshow_id`, `style_id`, `user_id`, `user_email`, `user_full_name`, `category_id`, `slideshow_name`, `slideshow_overview`, `slideshow_description`, `slideshow_image`, `slideshow_images`, `slideshow_status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'admin@admin.com', ' ', NULL, 'laralvel8xx', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing', '<p><img class=\"\" src=\"/photos/1/index.jpg\" alt=\"\" width=\"275\" height=\"183\" /><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </span><span class=\"input-text-description\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </span></p>', '/photos/1/index.jpg', NULL, 99, '2020-12-29 07:41:38', '2020-12-29 07:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `slideshow_styles`
--

CREATE TABLE `slideshow_styles` (
  `style_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_email` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style_view_file` varchar(55) CHARACTER SET utf8 DEFAULT NULL,
  `style_js_file` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `style_css_file` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `style_view_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `style_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `activation_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `activated`, `banned`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `protected`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2y$10$eiP2A4g7fD0C84mheaoSwOjG26U6zJ9E/hsAXYMpjp4ntX.fWNWZK', NULL, 1, 0, NULL, NULL, '2020-12-29 07:25:15', '$2y$10$YTJFLnfAWHfo.2apQPQmBebdNgALWkqXa8kbx9yzKbxECoQZNyi/W', NULL, 0, '2020-12-28 17:49:17', '2020-12-29 17:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `code`, `vat`, `first_name`, `last_name`, `phone`, `state`, `city`, `country`, `sex`, `category_id`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-28 17:49:17', '2020-12-28 17:49:17'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-28 18:47:10', '2020-12-28 18:47:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contexts`
--
ALTER TABLE `contexts`
  ADD PRIMARY KEY (`context_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `profile_field`
--
ALTER TABLE `profile_field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_field_profile_id_profile_field_type_id_unique` (`profile_id`,`profile_field_type_id`),
  ADD KEY `profile_field_profile_field_type_id_foreign` (`profile_field_type_id`);

--
-- Indexes for table `profile_field_type`
--
ALTER TABLE `profile_field_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`slideshow_id`);

--
-- Indexes for table `slideshow_styles`
--
ALTER TABLE `slideshow_styles`
  ADD PRIMARY KEY (`style_id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profile_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contexts`
--
ALTER TABLE `contexts`
  MODIFY `context_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profile_field`
--
ALTER TABLE `profile_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_field_type`
--
ALTER TABLE `profile_field_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `slideshow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slideshow_styles`
--
ALTER TABLE `slideshow_styles`
  MODIFY `style_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
