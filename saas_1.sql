-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 04, 2020 at 03:11 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saas_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2020-10-05 00:23:36'),
(2, 0, 6, 'Settings', 'fa-tasks', NULL, NULL, NULL, '2020-11-17 01:46:10'),
(3, 2, 7, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2020-11-17 01:46:10'),
(4, 2, 8, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2020-11-17 01:46:10'),
(5, 2, 9, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-11-17 01:46:10'),
(6, 2, 10, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2020-11-17 01:46:10'),
(7, 2, 11, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2020-11-17 01:46:10'),
(8, 0, 2, 'Packages', 'fa-money', 'pricings', '*', '2020-09-19 00:13:23', '2020-10-05 00:24:17'),
(9, 0, 3, 'Subscribers', 'fa-user', 'users', NULL, '2020-09-19 00:52:38', '2020-10-05 00:24:40'),
(11, 0, 5, 'Blocked IP', 'fa-ban', '/blocked-ip', '*', '2020-11-02 05:55:32', '2020-11-17 01:46:10'),
(12, 0, 4, 'Billings', 'fa-bitcoin', 'billings', '*', '2020-11-17 01:45:51', '2020-11-17 01:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE IF NOT EXISTS `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1423 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-18 12:19:13', '2020-09-18 12:19:13'),
(2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:19:33', '2020-09-18 12:19:33'),
(3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:19:38', '2020-09-18 12:19:38'),
(4, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:19:42', '2020-09-18 12:19:42'),
(5, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:19:45', '2020-09-18 12:19:45'),
(6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:19:49', '2020-09-18 12:19:49'),
(7, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:19:58', '2020-09-18 12:19:58'),
(8, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:23:16', '2020-09-18 12:23:16'),
(9, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:23:17', '2020-09-18 12:23:17'),
(10, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:23:40', '2020-09-18 12:23:40'),
(11, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:23:45', '2020-09-18 12:23:45'),
(12, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:24:01', '2020-09-18 12:24:01'),
(13, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:24:03', '2020-09-18 12:24:03'),
(14, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:24:06', '2020-09-18 12:24:06'),
(15, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:24:08', '2020-09-18 12:24:08'),
(16, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:24:47', '2020-09-18 12:24:47'),
(17, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:25:05', '2020-09-18 12:25:05'),
(18, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 12:25:08', '2020-09-18 12:25:08'),
(19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-18 23:31:05', '2020-09-18 23:31:05'),
(20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 23:50:37', '2020-09-18 23:50:37'),
(21, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 23:51:06', '2020-09-18 23:51:06'),
(22, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 23:51:09', '2020-09-18 23:51:09'),
(23, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 23:51:17', '2020-09-18 23:51:17'),
(24, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 23:51:23', '2020-09-18 23:51:23'),
(25, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 00:12:20', '2020-09-19 00:12:20'),
(26, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 00:12:31', '2020-09-19 00:12:31'),
(27, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:12:40', '2020-09-19 00:12:40'),
(28, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Pricing\",\"icon\":\"fa-money\",\"uri\":\"\\/pricings\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"KlSPVJKOmS8wMtKd4btkcZCT2xUeIxFilOE3Lfni\"}', '2020-09-19 00:13:23', '2020-09-19 00:13:23'),
(29, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-19 00:13:23', '2020-09-19 00:13:23'),
(30, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"KlSPVJKOmS8wMtKd4btkcZCT2xUeIxFilOE3Lfni\",\"_order\":\"[{\\\"id\\\":8},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-09-19 00:13:29', '2020-09-19 00:13:29'),
(31, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:13:30', '2020-09-19 00:13:30'),
(32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-19 00:13:33', '2020-09-19 00:13:33'),
(33, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:14:04', '2020-09-19 00:14:04'),
(34, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Pricing\",\"icon\":\"fa-money\",\"uri\":\"\\/pricings\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"KlSPVJKOmS8wMtKd4btkcZCT2xUeIxFilOE3Lfni\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-09-19 00:14:18', '2020-09-19 00:14:18'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-19 00:14:19', '2020-09-19 00:14:19'),
(36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-19 00:14:27', '2020-09-19 00:14:27'),
(37, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:15:31', '2020-09-19 00:15:31'),
(38, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Pricing\",\"icon\":\"fa-money\",\"uri\":\"pricings\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"KlSPVJKOmS8wMtKd4btkcZCT2xUeIxFilOE3Lfni\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-09-19 00:15:43', '2020-09-19 00:15:43'),
(39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-19 00:15:43', '2020-09-19 00:15:43'),
(40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-19 00:16:52', '2020-09-19 00:16:52'),
(41, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-19 00:16:58', '2020-09-19 00:16:58'),
(42, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:17:50', '2020-09-19 00:17:50'),
(43, 1, 'admin/pricings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:18:11', '2020-09-19 00:18:11'),
(44, 1, 'admin/pricings', 'POST', '127.0.0.1', '{\"name\":\"Basic Plan\",\"monthly_cost\":\"100\",\"yearly_cost\":\"1000\",\"_token\":\"KlSPVJKOmS8wMtKd4btkcZCT2xUeIxFilOE3Lfni\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-09-19 00:18:36', '2020-09-19 00:18:36'),
(45, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-09-19 00:18:36', '2020-09-19 00:18:36'),
(46, 1, 'admin/pricings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:18:39', '2020-09-19 00:18:39'),
(47, 1, 'admin/pricings', 'POST', '127.0.0.1', '{\"name\":\"Starter\",\"monthly_cost\":\"150\",\"yearly_cost\":\"1200\",\"_token\":\"KlSPVJKOmS8wMtKd4btkcZCT2xUeIxFilOE3Lfni\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-09-19 00:18:55', '2020-09-19 00:18:55'),
(48, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-09-19 00:18:55', '2020-09-19 00:18:55'),
(49, 1, 'admin/pricings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:18:58', '2020-09-19 00:18:58'),
(50, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:19:15', '2020-09-19 00:19:15'),
(51, 1, 'admin/pricings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:19:19', '2020-09-19 00:19:19'),
(52, 1, 'admin/pricings', 'POST', '127.0.0.1', '{\"name\":\"Advance\",\"monthly_cost\":\"200\",\"yearly_cost\":\"2000\",\"_token\":\"KlSPVJKOmS8wMtKd4btkcZCT2xUeIxFilOE3Lfni\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-09-19 00:19:31', '2020-09-19 00:19:31'),
(53, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-09-19 00:19:32', '2020-09-19 00:19:32'),
(54, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:19:43', '2020-09-19 00:19:43'),
(55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 00:23:35', '2020-09-19 00:23:35'),
(56, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:23:43', '2020-09-19 00:23:43'),
(57, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 00:25:40', '2020-09-19 00:25:40'),
(58, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:25:50', '2020-09-19 00:25:50'),
(59, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:25:56', '2020-09-19 00:25:56'),
(60, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:25:59', '2020-09-19 00:25:59'),
(61, 1, 'admin/pricings/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:42:20', '2020-09-19 00:42:20'),
(62, 1, 'admin/pricings/2', 'PUT', '127.0.0.1', '{\"name\":\"Starter Plan\",\"monthly_cost\":\"150\",\"yearly_cost\":\"1200\",\"_token\":\"8e3mzQLwniOmbMZXQDyUFFg0YkpKlLQRKwga21VT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-09-19 00:42:27', '2020-09-19 00:42:27'),
(63, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-09-19 00:42:27', '2020-09-19 00:42:27'),
(64, 1, 'admin/pricings/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:42:30', '2020-09-19 00:42:30'),
(65, 1, 'admin/pricings/3', 'PUT', '127.0.0.1', '{\"name\":\"Advance Plan\",\"monthly_cost\":\"200\",\"yearly_cost\":\"2000\",\"_token\":\"8e3mzQLwniOmbMZXQDyUFFg0YkpKlLQRKwga21VT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-09-19 00:42:34', '2020-09-19 00:42:34'),
(66, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-09-19 00:42:35', '2020-09-19 00:42:35'),
(67, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 00:49:32', '2020-09-19 00:49:32'),
(68, 1, 'admin/pricings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:49:38', '2020-09-19 00:49:38'),
(69, 1, 'admin/pricings', 'POST', '127.0.0.1', '{\"name\":\"Expert\",\"monthly_cost\":\"300\",\"yearly_cost\":\"2800\",\"_token\":\"8e3mzQLwniOmbMZXQDyUFFg0YkpKlLQRKwga21VT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-09-19 00:49:54', '2020-09-19 00:49:54'),
(70, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-09-19 00:49:55', '2020-09-19 00:49:55'),
(71, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:52:15', '2020-09-19 00:52:15'),
(72, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"User\",\"icon\":\"fa-user\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"8e3mzQLwniOmbMZXQDyUFFg0YkpKlLQRKwga21VT\"}', '2020-09-19 00:52:38', '2020-09-19 00:52:38'),
(73, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-19 00:52:39', '2020-09-19 00:52:39'),
(74, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:52:54', '2020-09-19 00:52:54'),
(75, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-19 00:52:59', '2020-09-19 00:52:59'),
(76, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 00:53:03', '2020-09-19 00:53:03'),
(77, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 00:56:42', '2020-09-19 00:56:42'),
(78, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 01:01:52', '2020-09-19 01:01:52'),
(79, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 04:47:42', '2020-09-19 04:47:42'),
(80, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:47:47', '2020-09-19 04:47:47'),
(81, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:47:50', '2020-09-19 04:47:50'),
(82, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:47:53', '2020-09-19 04:47:53'),
(83, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:47:54', '2020-09-19 04:47:54'),
(84, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:47:56', '2020-09-19 04:47:56'),
(85, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 04:56:13', '2020-09-19 04:56:13'),
(86, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:56:18', '2020-09-19 04:56:18'),
(87, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:56:36', '2020-09-19 04:56:36'),
(88, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:56:55', '2020-09-19 04:56:55'),
(89, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:57:54', '2020-09-19 04:57:54'),
(90, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-09-19 04:58:17', '2020-09-19 04:58:17'),
(91, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:58:48', '2020-09-19 04:58:48'),
(92, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 04:58:52', '2020-09-19 04:58:52'),
(93, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 05:03:34', '2020-09-19 05:03:34'),
(94, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 05:03:39', '2020-09-19 05:03:39'),
(95, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 05:03:42', '2020-09-19 05:03:42'),
(96, 1, 'admin/pricings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 05:03:45', '2020-09-19 05:03:45'),
(97, 1, 'admin/pricings/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 05:03:48', '2020-09-19 05:03:48'),
(98, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 05:03:52', '2020-09-19 05:03:52'),
(99, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 05:04:00', '2020-09-19 05:04:00'),
(100, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_columns_\":\"card_brand,card_last_four,email,id,name,remember_token,stripe_id,trial_ends_at\",\"_pjax\":\"#pjax-container\"}', '2020-09-19 05:04:13', '2020-09-19 05:04:13'),
(101, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 05:04:22', '2020-09-19 05:04:22'),
(102, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 05:04:27', '2020-09-19 05:04:27'),
(103, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 05:04:31', '2020-09-19 05:04:31'),
(104, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 08:59:34', '2020-09-19 08:59:34'),
(105, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 08:59:46', '2020-09-19 08:59:46'),
(106, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 09:00:37', '2020-09-19 09:00:37'),
(107, 1, 'admin/pricings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 09:00:44', '2020-09-19 09:00:44'),
(108, 1, 'admin/pricings', 'POST', '127.0.0.1', '{\"name\":\"demo\",\"monthly_cost\":\"500\",\"yearly_cost\":\"5000\",\"_token\":\"WPvxwYb8x1eW3WHBovoQz6YS86edf3XBMgwGqcjc\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-09-19 09:00:58', '2020-09-19 09:00:58'),
(109, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-09-19 09:00:59', '2020-09-19 09:00:59'),
(110, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 09:02:45', '2020-09-19 09:02:45'),
(111, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 09:03:01', '2020-09-19 09:03:01'),
(112, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 09:03:03', '2020-09-19 09:03:03'),
(113, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 09:03:10', '2020-09-19 09:03:10'),
(114, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"admin2\",\"name\":\"admin2\",\"password\":\"admin2\",\"password_confirmation\":\"admin2\",\"roles\":[\"1\",null],\"permissions\":[\"2\",null],\"_token\":\"WPvxwYb8x1eW3WHBovoQz6YS86edf3XBMgwGqcjc\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\"}', '2020-09-19 09:03:42', '2020-09-19 09:03:42'),
(115, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-19 09:03:43', '2020-09-19 09:03:43'),
(116, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 09:03:52', '2020-09-19 09:03:52'),
(117, 2, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-19 09:04:03', '2020-09-19 09:04:03'),
(118, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 09:04:09', '2020-09-19 09:04:09'),
(119, 2, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 09:04:15', '2020-09-19 09:04:15'),
(120, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-22 05:29:20', '2020-09-22 05:29:20'),
(121, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 05:29:30', '2020-09-22 05:29:30'),
(122, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-25 08:31:30', '2020-09-25 08:31:30'),
(123, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 08:31:38', '2020-09-25 08:31:38'),
(124, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 08:31:47', '2020-09-25 08:31:47'),
(125, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 08:31:51', '2020-09-25 08:31:51'),
(126, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 08:33:24', '2020-09-25 08:33:24'),
(127, 2, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-25 08:33:48', '2020-09-25 08:33:48'),
(128, 2, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-25 09:51:24', '2020-09-25 09:51:24'),
(129, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 09:51:35', '2020-09-25 09:51:35'),
(130, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 09:52:10', '2020-09-25 09:52:10'),
(131, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 09:52:11', '2020-09-25 09:52:11'),
(132, 2, 'admin/users/3,4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\"}', '2020-09-25 09:52:23', '2020-09-25 09:52:23'),
(133, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 09:52:23', '2020-09-25 09:52:23'),
(134, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 09:53:53', '2020-09-25 09:53:53'),
(135, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"5\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 09:53:59', '2020-09-25 09:53:59'),
(136, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 09:53:59', '2020-09-25 09:53:59'),
(137, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:01:48', '2020-09-25 10:01:48'),
(138, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"6\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:01:52', '2020-09-25 10:01:52'),
(139, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:01:53', '2020-09-25 10:01:53'),
(140, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:03:02', '2020-09-25 10:03:02'),
(141, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"7\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:03:06', '2020-09-25 10:03:06'),
(142, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:03:07', '2020-09-25 10:03:07'),
(143, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:03:16', '2020-09-25 10:03:16'),
(144, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"8\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:03:21', '2020-09-25 10:03:21'),
(145, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:03:22', '2020-09-25 10:03:22'),
(146, 2, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:04:00', '2020-09-25 10:04:00'),
(147, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:04:01', '2020-09-25 10:04:01'),
(148, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"9\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:04:05', '2020-09-25 10:04:05'),
(149, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:04:06', '2020-09-25 10:04:06'),
(150, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:06:35', '2020-09-25 10:06:35'),
(151, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"10\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:06:40', '2020-09-25 10:06:40'),
(152, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:06:41', '2020-09-25 10:06:41'),
(153, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:07:21', '2020-09-25 10:07:21'),
(154, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"11\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:07:26', '2020-09-25 10:07:26'),
(155, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:07:27', '2020-09-25 10:07:27'),
(156, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:23:34', '2020-09-25 10:23:34'),
(157, 2, 'admin/users/12,13,14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\"}', '2020-09-25 10:23:43', '2020-09-25 10:23:43'),
(158, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:23:43', '2020-09-25 10:23:43'),
(159, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:24:57', '2020-09-25 10:24:57'),
(160, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"15\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:25:02', '2020-09-25 10:25:02'),
(161, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:25:03', '2020-09-25 10:25:03'),
(162, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:25:22', '2020-09-25 10:25:22'),
(163, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:25:24', '2020-09-25 10:25:24'),
(164, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"16\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:25:27', '2020-09-25 10:25:27'),
(165, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:25:28', '2020-09-25 10:25:28'),
(166, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:25:35', '2020-09-25 10:25:35'),
(167, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"17\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:25:38', '2020-09-25 10:25:38'),
(168, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:25:39', '2020-09-25 10:25:39'),
(169, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:38:33', '2020-09-25 10:38:33'),
(170, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"18\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:38:38', '2020-09-25 10:38:38'),
(171, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:38:38', '2020-09-25 10:38:38'),
(172, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:45:00', '2020-09-25 10:45:00'),
(173, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:47:15', '2020-09-25 10:47:15'),
(174, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"19\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 10:47:19', '2020-09-25 10:47:19'),
(175, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 10:47:20', '2020-09-25 10:47:20'),
(176, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:51:55', '2020-09-25 13:51:55'),
(177, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"20\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 13:52:00', '2020-09-25 13:52:00'),
(178, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:52:01', '2020-09-25 13:52:01'),
(179, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:53:12', '2020-09-25 13:53:12'),
(180, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"21\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 13:53:16', '2020-09-25 13:53:16'),
(181, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:53:16', '2020-09-25 13:53:16'),
(182, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:56:06', '2020-09-25 13:56:06'),
(183, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"22\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 13:56:10', '2020-09-25 13:56:10'),
(184, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:56:10', '2020-09-25 13:56:10'),
(185, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:56:32', '2020-09-25 13:56:32'),
(186, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"23\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 13:56:35', '2020-09-25 13:56:35'),
(187, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:56:36', '2020-09-25 13:56:36'),
(188, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:56:53', '2020-09-25 13:56:53'),
(189, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"24\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 13:56:56', '2020-09-25 13:56:56'),
(190, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:56:57', '2020-09-25 13:56:57'),
(191, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 13:57:06', '2020-09-25 13:57:06'),
(192, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:00:28', '2020-09-25 14:00:28'),
(193, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:07:06', '2020-09-25 14:07:06'),
(194, 2, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"25\",\"_model\":\"App_Models_User\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-25 14:07:10', '2020-09-25 14:07:10'),
(195, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:07:10', '2020-09-25 14:07:10'),
(196, 2, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-25 14:17:23', '2020-09-25 14:17:23'),
(197, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:19:03', '2020-09-25 14:19:03'),
(198, 2, 'admin/users/1,26', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"eFNh5XqSDxUyk9PnII94zl9sQSNWOlhFtRffQe3T\"}', '2020-09-25 14:19:12', '2020-09-25 14:19:12'),
(199, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:19:12', '2020-09-25 14:19:12'),
(200, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:20:10', '2020-09-25 14:20:10'),
(201, 2, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-25 14:22:06', '2020-09-25 14:22:06'),
(202, 2, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-25 14:24:22', '2020-09-25 14:24:22'),
(203, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:24:29', '2020-09-25 14:24:29'),
(204, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-09-25 14:25:28', '2020-09-25 14:25:28'),
(205, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:32:54', '2020-09-25 14:32:54'),
(206, 1, 'admin/users/27,28,29,30', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pEQJJTnDDhLmJWNFFmCFOPonmFNrbo1W5jxgnGnb\"}', '2020-09-25 14:33:03', '2020-09-25 14:33:03'),
(207, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:33:03', '2020-09-25 14:33:03'),
(208, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:33:55', '2020-09-25 14:33:55'),
(209, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-25 14:57:29', '2020-09-25 14:57:29'),
(210, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 14:57:34', '2020-09-25 14:57:34'),
(211, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 15:19:02', '2020-09-25 15:19:02'),
(212, 1, 'admin/users/31,32,33,34,35,36', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WNbyAh8LDN9Ek1ViemCuhFPdznBITgss5V8iX8y7\"}', '2020-09-25 15:19:09', '2020-09-25 15:19:09'),
(213, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 15:19:10', '2020-09-25 15:19:10'),
(214, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 15:25:01', '2020-09-25 15:25:01'),
(215, 1, 'admin/users/37,38,39', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WNbyAh8LDN9Ek1ViemCuhFPdznBITgss5V8iX8y7\"}', '2020-09-25 15:25:07', '2020-09-25 15:25:07'),
(216, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 15:25:08', '2020-09-25 15:25:08'),
(217, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 15:28:07', '2020-09-25 15:28:07'),
(218, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 22:12:58', '2020-09-25 22:12:58'),
(219, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-28 03:48:06', '2020-09-28 03:48:06'),
(220, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-28 04:32:12', '2020-09-28 04:32:12'),
(221, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:32:15', '2020-09-28 04:32:15'),
(222, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:32:26', '2020-09-28 04:32:26'),
(223, 1, 'admin/users/42', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ec04V4MTX2Dve3kB3IN7E66JXmRbjD4eiCzFuGcY\"}', '2020-09-28 04:37:45', '2020-09-28 04:37:45'),
(224, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:37:46', '2020-09-28 04:37:46'),
(225, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:39:02', '2020-09-28 04:39:02'),
(226, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"43\",\"_model\":\"App_Models_User\",\"_token\":\"ec04V4MTX2Dve3kB3IN7E66JXmRbjD4eiCzFuGcY\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-28 04:40:03', '2020-09-28 04:40:03'),
(227, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:40:03', '2020-09-28 04:40:03'),
(228, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:51:34', '2020-09-28 04:51:34'),
(229, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:54:07', '2020-09-28 04:54:07'),
(230, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:54:10', '2020-09-28 04:54:10'),
(231, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:54:11', '2020-09-28 04:54:11'),
(232, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:58:00', '2020-09-28 04:58:00'),
(233, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:03:20', '2020-09-28 05:03:20'),
(234, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-28 05:03:50', '2020-09-28 05:03:50'),
(235, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:03:54', '2020-09-28 05:03:54'),
(236, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:08:01', '2020-09-28 05:08:01'),
(237, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:11:46', '2020-09-28 05:11:46'),
(238, 1, 'admin/users/40,41,44,45,46,47', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"MW2eT8MefrBF05yzcKUpmpl8uu2NHQ8WWYzXcv3N\"}', '2020-09-28 05:11:55', '2020-09-28 05:11:55'),
(239, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:11:55', '2020-09-28 05:11:55'),
(240, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:14:16', '2020-09-28 05:14:16'),
(241, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:27:10', '2020-09-28 05:27:10'),
(242, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:28:48', '2020-09-28 05:28:48'),
(243, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-09-28 05:29:01', '2020-09-28 05:29:01'),
(244, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"48\",\"_model\":\"App_Models_User\",\"_token\":\"MW2eT8MefrBF05yzcKUpmpl8uu2NHQ8WWYzXcv3N\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-28 05:29:07', '2020-09-28 05:29:07'),
(245, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:29:07', '2020-09-28 05:29:07'),
(246, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:29:50', '2020-09-28 05:29:50'),
(247, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:30:31', '2020-09-28 05:30:31'),
(248, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:36:05', '2020-09-28 05:36:05'),
(249, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:36:18', '2020-09-28 05:36:18'),
(250, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:36:22', '2020-09-28 05:36:22'),
(251, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-09-28 05:36:27', '2020-09-28 05:36:27'),
(252, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:36:58', '2020-09-28 05:36:58'),
(253, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:37:12', '2020-09-28 05:37:12'),
(254, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:41:06', '2020-09-28 05:41:06'),
(255, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:42:07', '2020-09-28 05:42:07'),
(256, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:42:22', '2020-09-28 05:42:22'),
(257, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:42:24', '2020-09-28 05:42:24'),
(258, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:42:26', '2020-09-28 05:42:26'),
(259, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:43:57', '2020-09-28 05:43:57'),
(260, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:44:06', '2020-09-28 05:44:06'),
(261, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:44:16', '2020-09-28 05:44:16'),
(262, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-28 05:44:24', '2020-09-28 05:44:24'),
(263, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:59:54', '2020-09-28 05:59:54'),
(264, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-28 07:27:06', '2020-09-28 07:27:06'),
(265, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:27:09', '2020-09-28 07:27:09'),
(266, 1, 'admin/users/49,50,51,52,53,54', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pcKhXGWWWabjZV76dNgZtAW3EqIG9QaHq3M5oRP0\"}', '2020-09-28 07:27:15', '2020-09-28 07:27:15'),
(267, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:27:16', '2020-09-28 07:27:16'),
(268, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:31:25', '2020-09-28 07:31:25'),
(269, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:32:16', '2020-09-28 07:32:16'),
(270, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"55\",\"_model\":\"App_Models_User\",\"_token\":\"pcKhXGWWWabjZV76dNgZtAW3EqIG9QaHq3M5oRP0\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-28 07:32:20', '2020-09-28 07:32:20'),
(271, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:32:21', '2020-09-28 07:32:21'),
(272, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:33:06', '2020-09-28 07:33:06'),
(273, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:35:39', '2020-09-28 07:35:39'),
(274, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:38:46', '2020-09-28 07:38:46'),
(275, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:38:47', '2020-09-28 07:38:47'),
(276, 1, 'admin/users/56,57,58', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"e2FDXX4JA3Mdn4MBSmt140Dv1yxATEwpnk4BBVya\"}', '2020-09-28 07:38:53', '2020-09-28 07:38:53'),
(277, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:38:54', '2020-09-28 07:38:54'),
(278, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:44:13', '2020-09-28 07:44:13'),
(279, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:55:28', '2020-09-28 07:55:28'),
(280, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:59:50', '2020-09-28 07:59:50'),
(281, 1, 'admin/users/59,60,61,62', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"9OOinvU5ibR25OciO7pTpiq8NbU4c2nD7voP2hf0\"}', '2020-09-28 07:59:55', '2020-09-28 07:59:55'),
(282, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 07:59:56', '2020-09-28 07:59:56'),
(283, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 11:00:36', '2020-09-28 11:00:36'),
(284, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 11:01:44', '2020-09-28 11:01:44'),
(285, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 11:01:48', '2020-09-28 11:01:48'),
(286, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 11:02:04', '2020-09-28 11:02:04'),
(287, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 11:17:57', '2020-09-28 11:17:57'),
(288, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 11:19:50', '2020-09-28 11:19:50'),
(289, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test\",\"icon\":\"fa-gitlab\",\"uri\":\"\\/test\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"WJJfF5QvM7zA2F7x2UZwFUDSw5iNw8VAU6FaI8HO\"}', '2020-09-28 11:20:32', '2020-09-28 11:20:32'),
(290, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-28 11:20:33', '2020-09-28 11:20:33'),
(291, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-28 11:20:38', '2020-09-28 11:20:38'),
(292, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 11:29:03', '2020-09-28 11:29:03'),
(293, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-09-28 11:44:18', '2020-09-28 11:44:18'),
(294, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 11:44:22', '2020-09-28 11:44:22'),
(295, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-09-28 11:46:47', '2020-09-28 11:46:47'),
(296, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-28 11:47:27', '2020-09-28 11:47:27'),
(297, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-03 09:07:52', '2020-10-03 09:07:52'),
(298, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-03 09:08:03', '2020-10-03 09:08:03'),
(299, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-03 09:09:06', '2020-10-03 09:09:06'),
(300, 1, 'admin/users/63', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"98wjtFmSQAsLzyTGHclrkJn3l3uAl9lkcWfCa900\"}', '2020-10-03 09:09:13', '2020-10-03 09:09:13'),
(301, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-03 09:09:14', '2020-10-03 09:09:14'),
(302, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-03 09:12:13', '2020-10-03 09:12:13'),
(303, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 05:26:36', '2020-10-04 05:26:36'),
(304, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 05:26:40', '2020-10-04 05:26:40'),
(305, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-04 05:32:37', '2020-10-04 05:32:37'),
(306, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 05:32:39', '2020-10-04 05:32:39'),
(307, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 05:32:43', '2020-10-04 05:32:43'),
(308, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 05:32:48', '2020-10-04 05:32:48'),
(309, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 05:32:53', '2020-10-04 05:32:53'),
(310, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 05:35:27', '2020-10-04 05:35:27'),
(311, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 05:35:32', '2020-10-04 05:35:32'),
(312, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 05:36:29', '2020-10-04 05:36:29'),
(313, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 05:36:33', '2020-10-04 05:36:33'),
(314, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 05:38:08', '2020-10-04 05:38:08'),
(315, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 05:38:13', '2020-10-04 05:38:13'),
(316, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 05:48:20', '2020-10-04 05:48:20'),
(317, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 05:48:25', '2020-10-04 05:48:25'),
(318, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 05:52:29', '2020-10-04 05:52:29'),
(319, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 05:52:33', '2020-10-04 05:52:33'),
(320, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-04 05:52:44', '2020-10-04 05:52:44'),
(321, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 05:52:45', '2020-10-04 05:52:45'),
(322, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 05:52:48', '2020-10-04 05:52:48'),
(323, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 06:58:51', '2020-10-04 06:58:51'),
(324, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 07:07:33', '2020-10-04 07:07:33'),
(325, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 07:09:45', '2020-10-04 07:09:45'),
(326, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-04 07:09:49', '2020-10-04 07:09:49'),
(327, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-04 07:09:50', '2020-10-04 07:09:50'),
(328, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-04 08:28:17', '2020-10-04 08:28:17'),
(329, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-05 00:17:44', '2020-10-05 00:17:44'),
(330, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:20:41', '2020-10-05 00:20:41'),
(331, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:21:47', '2020-10-05 00:21:47'),
(332, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-05 00:22:56', '2020-10-05 00:22:56'),
(333, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:23:15', '2020-10-05 00:23:15'),
(334, 1, 'admin/auth/menu/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JE7R3UdYYgH8sCvywFvmmEe3opqp4M2P1DEZQsTD\"}', '2020-10-05 00:23:19', '2020-10-05 00:23:19'),
(335, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:23:21', '2020-10-05 00:23:21'),
(336, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"JE7R3UdYYgH8sCvywFvmmEe3opqp4M2P1DEZQsTD\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-10-05 00:23:36', '2020-10-05 00:23:36'),
(337, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:23:37', '2020-10-05 00:23:37'),
(338, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:24:06', '2020-10-05 00:24:06'),
(339, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Packages\",\"icon\":\"fa-money\",\"uri\":\"pricings\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"JE7R3UdYYgH8sCvywFvmmEe3opqp4M2P1DEZQsTD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-10-05 00:24:17', '2020-10-05 00:24:17'),
(340, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-05 00:24:18', '2020-10-05 00:24:18'),
(341, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-05 00:24:27', '2020-10-05 00:24:27'),
(342, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:24:31', '2020-10-05 00:24:31'),
(343, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Subscribers\",\"icon\":\"fa-user\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"JE7R3UdYYgH8sCvywFvmmEe3opqp4M2P1DEZQsTD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-10-05 00:24:39', '2020-10-05 00:24:39'),
(344, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-05 00:24:40', '2020-10-05 00:24:40'),
(345, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-05 00:24:49', '2020-10-05 00:24:49'),
(346, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:24:56', '2020-10-05 00:24:56'),
(347, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Settings\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"JE7R3UdYYgH8sCvywFvmmEe3opqp4M2P1DEZQsTD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-10-05 00:25:04', '2020-10-05 00:25:04'),
(348, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-05 00:25:04', '2020-10-05 00:25:04'),
(349, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-05 00:25:08', '2020-10-05 00:25:08'),
(350, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:25:13', '2020-10-05 00:25:13'),
(351, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:25:26', '2020-10-05 00:25:26'),
(352, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:25:27', '2020-10-05 00:25:27'),
(353, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:25:54', '2020-10-05 00:25:54'),
(354, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:25:55', '2020-10-05 00:25:55'),
(355, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:26:22', '2020-10-05 00:26:22');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(356, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:26:26', '2020-10-05 00:26:26'),
(357, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:26:56', '2020-10-05 00:26:56'),
(358, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-05 00:27:42', '2020-10-05 00:27:42'),
(359, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-05 00:29:24', '2020-10-05 00:29:24'),
(360, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-05 00:29:45', '2020-10-05 00:29:45'),
(361, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-05 00:30:25', '2020-10-05 00:30:25'),
(362, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-05 00:31:22', '2020-10-05 00:31:22'),
(363, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-05 00:31:46', '2020-10-05 00:31:46'),
(364, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-05 00:32:00', '2020-10-05 00:32:00'),
(365, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-05 00:32:48', '2020-10-05 00:32:48'),
(366, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-05 00:33:41', '2020-10-05 00:33:41'),
(367, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-05 00:33:54', '2020-10-05 00:33:54'),
(368, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"64\",\"_model\":\"App_Models_User\",\"_token\":\"JE7R3UdYYgH8sCvywFvmmEe3opqp4M2P1DEZQsTD\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-10-05 00:34:17', '2020-10-05 00:34:17'),
(369, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:34:18', '2020-10-05 00:34:18'),
(370, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"73\",\"_model\":\"App_Models_User\",\"_token\":\"JE7R3UdYYgH8sCvywFvmmEe3opqp4M2P1DEZQsTD\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-10-05 00:34:29', '2020-10-05 00:34:29'),
(371, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:34:30', '2020-10-05 00:34:30'),
(372, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:36:50', '2020-10-05 00:36:50'),
(373, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-05 00:37:02', '2020-10-05 00:37:02'),
(374, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-07 11:23:51', '2020-10-07 11:23:51'),
(375, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-07 11:25:22', '2020-10-07 11:25:22'),
(376, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-07 11:27:58', '2020-10-07 11:27:58'),
(377, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-07 11:28:00', '2020-10-07 11:28:00'),
(378, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-13 19:24:14', '2020-10-13 19:24:14'),
(379, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 19:24:32', '2020-10-13 19:24:32'),
(380, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 19:24:41', '2020-10-13 19:24:41'),
(381, 1, 'admin/users/65,66,67,68,69,70,71,72,74,75,76', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"UfbYLupX3it4KsYCW7Kr2oD5uJT12bmLQgSoC6px\"}', '2020-10-13 19:27:37', '2020-10-13 19:27:37'),
(382, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 19:27:39', '2020-10-13 19:27:39'),
(383, 1, 'admin/users/77', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"UfbYLupX3it4KsYCW7Kr2oD5uJT12bmLQgSoC6px\"}', '2020-10-13 19:27:48', '2020-10-13 19:27:48'),
(384, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 19:27:49', '2020-10-13 19:27:49'),
(385, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 19:30:13', '2020-10-13 19:30:13'),
(386, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 19:30:14', '2020-10-13 19:30:14'),
(387, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:43:10', '2020-10-17 07:43:10'),
(388, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:49:25', '2020-10-17 07:49:25'),
(389, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:49:38', '2020-10-17 07:49:38'),
(390, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:49:51', '2020-10-17 07:49:51'),
(391, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:50:13', '2020-10-17 07:50:13'),
(392, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:51:39', '2020-10-17 07:51:39'),
(393, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:52:23', '2020-10-17 07:52:23'),
(394, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:52:26', '2020-10-17 07:52:26'),
(395, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:52:43', '2020-10-17 07:52:43'),
(396, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:53:51', '2020-10-17 07:53:51'),
(397, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:54:27', '2020-10-17 07:54:27'),
(398, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:54:52', '2020-10-17 07:54:52'),
(399, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:55:36', '2020-10-17 07:55:36'),
(400, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:56:49', '2020-10-17 07:56:49'),
(401, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:57:30', '2020-10-17 07:57:30'),
(402, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:57:51', '2020-10-17 07:57:51'),
(403, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:58:00', '2020-10-17 07:58:00'),
(404, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:09:00', '2020-10-17 08:09:00'),
(405, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:09:20', '2020-10-17 08:09:20'),
(406, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:09:49', '2020-10-17 08:09:49'),
(407, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:11:06', '2020-10-17 08:11:06'),
(408, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:12:06', '2020-10-17 08:12:06'),
(409, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:12:15', '2020-10-17 08:12:15'),
(410, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:12:19', '2020-10-17 08:12:19'),
(411, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:12:33', '2020-10-17 08:12:33'),
(412, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:12:55', '2020-10-17 08:12:55'),
(413, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:13:11', '2020-10-17 08:13:11'),
(414, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:13:17', '2020-10-17 08:13:17'),
(415, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:13:19', '2020-10-17 08:13:19'),
(416, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:13:49', '2020-10-17 08:13:49'),
(417, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:14:24', '2020-10-17 08:14:24'),
(418, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:14:35', '2020-10-17 08:14:35'),
(419, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:15:15', '2020-10-17 08:15:15'),
(420, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:15:19', '2020-10-17 08:15:19'),
(421, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:19:14', '2020-10-17 08:19:14'),
(422, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:19:37', '2020-10-17 08:19:37'),
(423, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:22:17', '2020-10-17 08:22:17'),
(424, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:22:53', '2020-10-17 08:22:53'),
(425, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:23:20', '2020-10-17 08:23:20'),
(426, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 08:23:33', '2020-10-17 08:23:33'),
(427, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:23:38', '2020-10-17 08:23:38'),
(428, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:23:39', '2020-10-17 08:23:39'),
(429, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:25:18', '2020-10-17 08:25:18'),
(430, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:25:27', '2020-10-17 08:25:27'),
(431, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:25:30', '2020-10-17 08:25:30'),
(432, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:25:32', '2020-10-17 08:25:32'),
(433, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:25:39', '2020-10-17 08:25:39'),
(434, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:25:47', '2020-10-17 08:25:47'),
(435, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:25:51', '2020-10-17 08:25:51'),
(436, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:27:18', '2020-10-17 08:27:18'),
(437, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:27:47', '2020-10-17 08:27:47'),
(438, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:27:59', '2020-10-17 08:27:59'),
(439, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:28:03', '2020-10-17 08:28:03'),
(440, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:28:08', '2020-10-17 08:28:08'),
(441, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:28:10', '2020-10-17 08:28:10'),
(442, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:28:39', '2020-10-17 08:28:39'),
(443, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:28:49', '2020-10-17 08:28:49'),
(444, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:29:21', '2020-10-17 08:29:21'),
(445, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:29:39', '2020-10-17 08:29:39'),
(446, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:30:23', '2020-10-17 08:30:23'),
(447, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:31:22', '2020-10-17 08:31:22'),
(448, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:31:31', '2020-10-17 08:31:31'),
(449, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:31:34', '2020-10-17 08:31:34'),
(450, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:31:36', '2020-10-17 08:31:36'),
(451, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 08:32:16', '2020-10-17 08:32:16'),
(452, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:32:19', '2020-10-17 08:32:19'),
(453, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:32:21', '2020-10-17 08:32:21'),
(454, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:32:23', '2020-10-17 08:32:23'),
(455, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:32:24', '2020-10-17 08:32:24'),
(456, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:36:19', '2020-10-17 08:36:19'),
(457, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:36:23', '2020-10-17 08:36:23'),
(458, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:36:27', '2020-10-17 08:36:27'),
(459, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 08:36:44', '2020-10-17 08:36:44'),
(460, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:36:47', '2020-10-17 08:36:47'),
(461, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:36:49', '2020-10-17 08:36:49'),
(462, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:37:00', '2020-10-17 08:37:00'),
(463, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:37:03', '2020-10-17 08:37:03'),
(464, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:37:06', '2020-10-17 08:37:06'),
(465, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 08:37:08', '2020-10-17 08:37:08'),
(466, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:37:11', '2020-10-17 08:37:11'),
(467, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:37:13', '2020-10-17 08:37:13'),
(468, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:37:15', '2020-10-17 08:37:15'),
(469, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 08:37:17', '2020-10-17 08:37:17'),
(470, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:37:20', '2020-10-17 08:37:20'),
(471, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:37:24', '2020-10-17 08:37:24'),
(472, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:37:25', '2020-10-17 08:37:25'),
(473, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:37:47', '2020-10-17 08:37:47'),
(474, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:38:09', '2020-10-17 08:38:09'),
(475, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:38:13', '2020-10-17 08:38:13'),
(476, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:38:15', '2020-10-17 08:38:15'),
(477, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:38:18', '2020-10-17 08:38:18'),
(478, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:38:19', '2020-10-17 08:38:19'),
(479, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:38:36', '2020-10-17 08:38:36'),
(480, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:38:40', '2020-10-17 08:38:40'),
(481, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 08:38:42', '2020-10-17 08:38:42'),
(482, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 08:39:12', '2020-10-17 08:39:12'),
(483, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 08:39:16', '2020-10-17 08:39:16'),
(484, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:39:18', '2020-10-17 08:39:18'),
(485, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:39:25', '2020-10-17 08:39:25'),
(486, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:39:28', '2020-10-17 08:39:28'),
(487, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 08:42:40', '2020-10-17 08:42:40'),
(488, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:42:44', '2020-10-17 08:42:44'),
(489, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 08:42:47', '2020-10-17 08:42:47'),
(490, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:42:50', '2020-10-17 08:42:50'),
(491, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:42:52', '2020-10-17 08:42:52'),
(492, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:42:55', '2020-10-17 08:42:55'),
(493, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:43:03', '2020-10-17 08:43:03'),
(494, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:43:08', '2020-10-17 08:43:08'),
(495, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 08:44:19', '2020-10-17 08:44:19'),
(496, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:44:24', '2020-10-17 08:44:24'),
(497, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:44:26', '2020-10-17 08:44:26'),
(498, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:44:32', '2020-10-17 08:44:32'),
(499, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:44:33', '2020-10-17 08:44:33'),
(500, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:44:40', '2020-10-17 08:44:40'),
(501, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:44:44', '2020-10-17 08:44:44'),
(502, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:44:46', '2020-10-17 08:44:46'),
(503, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 08:44:47', '2020-10-17 08:44:47'),
(504, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:44:50', '2020-10-17 08:44:50'),
(505, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:46:04', '2020-10-17 08:46:04'),
(506, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 09:07:55', '2020-10-17 09:07:55'),
(507, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:08:01', '2020-10-17 09:08:01'),
(508, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:08:27', '2020-10-17 09:08:27'),
(509, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:10:19', '2020-10-17 09:10:19'),
(510, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:10:25', '2020-10-17 09:10:25'),
(511, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:11:13', '2020-10-17 09:11:13'),
(512, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:12:10', '2020-10-17 09:12:10'),
(513, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:12:34', '2020-10-17 09:12:34'),
(514, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:14:11', '2020-10-17 09:14:11'),
(515, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:14:56', '2020-10-17 09:14:56'),
(516, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:16:04', '2020-10-17 09:16:04'),
(517, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:18:11', '2020-10-17 09:18:11'),
(518, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:18:57', '2020-10-17 09:18:57'),
(519, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:20:25', '2020-10-17 09:20:25'),
(520, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:21:13', '2020-10-17 09:21:13'),
(521, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:23:40', '2020-10-17 09:23:40'),
(522, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 09:25:22', '2020-10-17 09:25:22'),
(523, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:40:16', '2020-10-17 10:40:16'),
(524, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:40:58', '2020-10-17 10:40:58'),
(525, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:44:32', '2020-10-17 10:44:32'),
(526, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:45:07', '2020-10-17 10:45:07'),
(527, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:47:00', '2020-10-17 10:47:00'),
(528, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:47:13', '2020-10-17 10:47:13'),
(529, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:00:05', '2020-10-17 11:00:05'),
(530, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:01:11', '2020-10-17 11:01:11'),
(531, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:03:49', '2020-10-17 11:03:49'),
(532, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:08:00', '2020-10-17 11:08:00'),
(533, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:09:09', '2020-10-17 11:09:09'),
(534, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:09:26', '2020-10-17 11:09:26'),
(535, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:09:31', '2020-10-17 11:09:31'),
(536, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:10:03', '2020-10-17 11:10:03'),
(537, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:10:37', '2020-10-17 11:10:37'),
(538, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:10:47', '2020-10-17 11:10:47'),
(539, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:11:46', '2020-10-17 11:11:46'),
(540, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:12:01', '2020-10-17 11:12:01'),
(541, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:14:39', '2020-10-17 11:14:39'),
(542, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:18:00', '2020-10-17 11:18:00'),
(543, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:19:05', '2020-10-17 11:19:05'),
(544, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:21:14', '2020-10-17 11:21:14'),
(545, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:21:47', '2020-10-17 11:21:47'),
(546, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:22:21', '2020-10-17 11:22:21'),
(547, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:29:14', '2020-10-17 11:29:14'),
(548, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:29:28', '2020-10-17 11:29:28'),
(549, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:29:35', '2020-10-17 11:29:35'),
(550, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:30:39', '2020-10-17 11:30:39'),
(551, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:31:34', '2020-10-17 11:31:34'),
(552, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:32:04', '2020-10-17 11:32:04'),
(553, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:34:48', '2020-10-17 11:34:48'),
(554, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:37:09', '2020-10-17 11:37:09'),
(555, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:37:31', '2020-10-17 11:37:31'),
(556, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:37:33', '2020-10-17 11:37:33'),
(557, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:37:37', '2020-10-17 11:37:37'),
(558, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:37:40', '2020-10-17 11:37:40'),
(559, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:37:43', '2020-10-17 11:37:43'),
(560, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:38:02', '2020-10-17 11:38:02'),
(561, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:38:20', '2020-10-17 11:38:20'),
(562, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:38:22', '2020-10-17 11:38:22'),
(563, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:38:24', '2020-10-17 11:38:24'),
(564, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:38:26', '2020-10-17 11:38:26'),
(565, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:40:09', '2020-10-17 11:40:09'),
(566, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:41:00', '2020-10-17 11:41:00'),
(567, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:41:34', '2020-10-17 11:41:34'),
(568, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:42:30', '2020-10-17 11:42:30'),
(569, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:42:31', '2020-10-17 11:42:31'),
(570, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:42:35', '2020-10-17 11:42:35'),
(571, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:42:58', '2020-10-17 11:42:58'),
(572, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:43:02', '2020-10-17 11:43:02'),
(573, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 11:43:37', '2020-10-17 11:43:37'),
(574, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:43:42', '2020-10-17 11:43:42'),
(575, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 11:44:03', '2020-10-17 11:44:03'),
(576, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:44:10', '2020-10-17 11:44:10'),
(577, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:44:22', '2020-10-17 11:44:22'),
(578, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 11:44:24', '2020-10-17 11:44:24'),
(579, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:44:28', '2020-10-17 11:44:28'),
(580, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:44:53', '2020-10-17 11:44:53'),
(581, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:51:10', '2020-10-17 11:51:10'),
(582, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:51:12', '2020-10-17 11:51:12'),
(583, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 20:58:31', '2020-10-17 20:58:31'),
(584, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 20:58:40', '2020-10-17 20:58:40'),
(585, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 20:58:50', '2020-10-17 20:58:50'),
(586, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 20:59:01', '2020-10-17 20:59:01'),
(587, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:00:54', '2020-10-17 21:00:54'),
(588, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:01:05', '2020-10-17 21:01:05'),
(589, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:01:09', '2020-10-17 21:01:09'),
(590, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:01:15', '2020-10-17 21:01:15'),
(591, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:01:26', '2020-10-17 21:01:26'),
(592, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:01:33', '2020-10-17 21:01:33'),
(593, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:04:32', '2020-10-17 21:04:32'),
(594, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:04:49', '2020-10-17 21:04:49'),
(595, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:05:30', '2020-10-17 21:05:30'),
(596, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:05:44', '2020-10-17 21:05:44'),
(597, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:06:33', '2020-10-17 21:06:33'),
(598, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:06:39', '2020-10-17 21:06:39'),
(599, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:06:39', '2020-10-17 21:06:39'),
(600, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:06:45', '2020-10-17 21:06:45'),
(601, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:06:45', '2020-10-17 21:06:45'),
(602, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:06:48', '2020-10-17 21:06:48'),
(603, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:06:48', '2020-10-17 21:06:48'),
(604, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:06:51', '2020-10-17 21:06:51'),
(605, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 21:06:52', '2020-10-17 21:06:52'),
(606, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:06:56', '2020-10-17 21:06:56'),
(607, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-17 21:06:59', '2020-10-17 21:06:59'),
(608, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-17 21:07:19', '2020-10-17 21:07:19'),
(609, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:07:22', '2020-10-17 21:07:22'),
(610, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:07:22', '2020-10-17 21:07:22'),
(611, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:07:26', '2020-10-17 21:07:26'),
(612, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:07:29', '2020-10-17 21:07:29'),
(613, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:07:29', '2020-10-17 21:07:29'),
(614, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:08:17', '2020-10-17 21:08:17'),
(615, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:08:22', '2020-10-17 21:08:22'),
(616, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:08:29', '2020-10-17 21:08:29'),
(617, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:08:36', '2020-10-17 21:08:36'),
(618, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:08:37', '2020-10-17 21:08:37'),
(619, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:08:39', '2020-10-17 21:08:39'),
(620, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:08:41', '2020-10-17 21:08:41'),
(621, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:08:42', '2020-10-17 21:08:42'),
(622, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:08:44', '2020-10-17 21:08:44'),
(623, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:09:18', '2020-10-17 21:09:18'),
(624, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:09:23', '2020-10-17 21:09:23'),
(625, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:09:25', '2020-10-17 21:09:25'),
(626, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:09:28', '2020-10-17 21:09:28'),
(627, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:09:34', '2020-10-17 21:09:34'),
(628, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:09:49', '2020-10-17 21:09:49'),
(629, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:09:54', '2020-10-17 21:09:54'),
(630, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:09:59', '2020-10-17 21:09:59'),
(631, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:15:26', '2020-10-17 21:15:26'),
(632, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:15:32', '2020-10-17 21:15:32'),
(633, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:15:32', '2020-10-17 21:15:32'),
(634, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:15:35', '2020-10-17 21:15:35'),
(635, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:15:35', '2020-10-17 21:15:35'),
(636, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:15:40', '2020-10-17 21:15:40'),
(637, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:15:40', '2020-10-17 21:15:40'),
(638, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:15:43', '2020-10-17 21:15:43'),
(639, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 21:15:43', '2020-10-17 21:15:43'),
(640, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:15:48', '2020-10-17 21:15:48'),
(641, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-10-17 21:15:49', '2020-10-17 21:15:49'),
(642, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:15:52', '2020-10-17 21:15:52'),
(643, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:15:53', '2020-10-17 21:15:53'),
(644, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:16:58', '2020-10-17 21:16:58'),
(645, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:16:59', '2020-10-17 21:16:59'),
(646, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:17:02', '2020-10-17 21:17:02'),
(647, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 21:17:03', '2020-10-17 21:17:03'),
(648, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:17:10', '2020-10-17 21:17:10'),
(649, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:17:10', '2020-10-17 21:17:10'),
(650, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:17:14', '2020-10-17 21:17:14'),
(651, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:17:14', '2020-10-17 21:17:14'),
(652, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:17:18', '2020-10-17 21:17:18'),
(653, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 21:17:19', '2020-10-17 21:17:19'),
(654, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:17:23', '2020-10-17 21:17:23'),
(655, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 21:17:24', '2020-10-17 21:17:24'),
(656, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 21:18:00', '2020-10-17 21:18:00'),
(657, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:18:05', '2020-10-17 21:18:05'),
(658, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:18:07', '2020-10-17 21:18:07'),
(659, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:37:54', '2020-10-17 21:37:54'),
(660, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:38:01', '2020-10-17 21:38:01'),
(661, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:38:01', '2020-10-17 21:38:01'),
(662, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:38:05', '2020-10-17 21:38:05'),
(663, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:38:06', '2020-10-17 21:38:06'),
(664, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:39:18', '2020-10-17 21:39:18'),
(665, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:39:23', '2020-10-17 21:39:23'),
(666, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:39:23', '2020-10-17 21:39:23'),
(667, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:39:28', '2020-10-17 21:39:28'),
(668, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:39:28', '2020-10-17 21:39:28'),
(669, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:39:32', '2020-10-17 21:39:32'),
(670, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 21:39:33', '2020-10-17 21:39:33'),
(671, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 21:40:33', '2020-10-17 21:40:33'),
(672, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:40:38', '2020-10-17 21:40:38'),
(673, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:40:40', '2020-10-17 21:40:40'),
(674, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:41:04', '2020-10-17 21:41:04'),
(675, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:41:12', '2020-10-17 21:41:12'),
(676, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:41:20', '2020-10-17 21:41:20'),
(677, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:41:25', '2020-10-17 21:41:25'),
(678, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:43:48', '2020-10-17 21:43:48'),
(679, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:43:54', '2020-10-17 21:43:54'),
(680, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:43:57', '2020-10-17 21:43:57'),
(681, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:43:58', '2020-10-17 21:43:58'),
(682, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:44:01', '2020-10-17 21:44:01'),
(683, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:44:04', '2020-10-17 21:44:04'),
(684, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:44:51', '2020-10-17 21:44:51'),
(685, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:44:59', '2020-10-17 21:44:59'),
(686, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:45:01', '2020-10-17 21:45:01'),
(687, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:45:43', '2020-10-17 21:45:43'),
(688, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:46:07', '2020-10-17 21:46:07'),
(689, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:46:26', '2020-10-17 21:46:26'),
(690, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:47:22', '2020-10-17 21:47:22'),
(691, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:47:29', '2020-10-17 21:47:29'),
(692, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:47:31', '2020-10-17 21:47:31'),
(693, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:48:09', '2020-10-17 21:48:09'),
(694, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:48:11', '2020-10-17 21:48:11'),
(695, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:48:15', '2020-10-17 21:48:15'),
(696, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:48:16', '2020-10-17 21:48:16'),
(697, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:48:18', '2020-10-17 21:48:18'),
(698, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:48:19', '2020-10-17 21:48:19'),
(699, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:48:21', '2020-10-17 21:48:21'),
(700, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:48:23', '2020-10-17 21:48:23'),
(701, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:48:25', '2020-10-17 21:48:25'),
(702, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:48:27', '2020-10-17 21:48:27'),
(703, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:48:29', '2020-10-17 21:48:29'),
(704, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:49:41', '2020-10-17 21:49:41'),
(705, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:49:43', '2020-10-17 21:49:43'),
(706, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:49:47', '2020-10-17 21:49:47'),
(707, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:50:54', '2020-10-17 21:50:54'),
(708, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:50:55', '2020-10-17 21:50:55'),
(709, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:50:58', '2020-10-17 21:50:58'),
(710, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:51:02', '2020-10-17 21:51:02'),
(711, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:51:06', '2020-10-17 21:51:06'),
(712, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:51:11', '2020-10-17 21:51:11'),
(713, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:51:19', '2020-10-17 21:51:19'),
(714, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:51:49', '2020-10-17 21:51:49'),
(715, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:51:53', '2020-10-17 21:51:53'),
(716, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:51:59', '2020-10-17 21:51:59'),
(717, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:52:01', '2020-10-17 21:52:01'),
(718, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:52:04', '2020-10-17 21:52:04'),
(719, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:52:05', '2020-10-17 21:52:05'),
(720, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:52:06', '2020-10-17 21:52:06'),
(721, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:52:09', '2020-10-17 21:52:09'),
(722, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:52:14', '2020-10-17 21:52:14'),
(723, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:53:39', '2020-10-17 21:53:39'),
(724, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:53:45', '2020-10-17 21:53:45'),
(725, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:53:46', '2020-10-17 21:53:46'),
(726, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:54:08', '2020-10-17 21:54:08'),
(727, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:54:10', '2020-10-17 21:54:10'),
(728, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:54:14', '2020-10-17 21:54:14'),
(729, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:54:16', '2020-10-17 21:54:16'),
(730, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:54:19', '2020-10-17 21:54:19'),
(731, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:54:20', '2020-10-17 21:54:20'),
(732, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:57:13', '2020-10-17 21:57:13'),
(733, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:57:16', '2020-10-17 21:57:16'),
(734, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:58:15', '2020-10-17 21:58:15'),
(735, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:58:19', '2020-10-17 21:58:19'),
(736, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:58:21', '2020-10-17 21:58:21'),
(737, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:58:45', '2020-10-17 21:58:45'),
(738, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:58:50', '2020-10-17 21:58:50'),
(739, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:58:52', '2020-10-17 21:58:52'),
(740, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:59:03', '2020-10-17 21:59:03'),
(741, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:59:28', '2020-10-17 21:59:28'),
(742, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 21:59:32', '2020-10-17 21:59:32'),
(743, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 21:59:36', '2020-10-17 21:59:36'),
(744, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 21:59:38', '2020-10-17 21:59:38'),
(745, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:06:09', '2020-10-17 22:06:09'),
(746, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:06:14', '2020-10-17 22:06:14'),
(747, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:06:16', '2020-10-17 22:06:16'),
(748, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:06:19', '2020-10-17 22:06:19'),
(749, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:06:34', '2020-10-17 22:06:34'),
(750, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-17 22:06:38', '2020-10-17 22:06:38'),
(751, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:06:41', '2020-10-17 22:06:41'),
(752, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:41:46', '2020-10-17 22:41:46'),
(753, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:41:50', '2020-10-17 22:41:50'),
(754, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:41:52', '2020-10-17 22:41:52'),
(755, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:42:16', '2020-10-17 22:42:16'),
(756, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:42:17', '2020-10-17 22:42:17'),
(757, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:42:18', '2020-10-17 22:42:18'),
(758, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:42:21', '2020-10-17 22:42:21'),
(759, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:42:23', '2020-10-17 22:42:23'),
(760, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:44:48', '2020-10-17 22:44:48'),
(761, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:44:50', '2020-10-17 22:44:50'),
(762, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:44:56', '2020-10-17 22:44:56'),
(763, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:47:44', '2020-10-17 22:47:44'),
(764, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:47:52', '2020-10-17 22:47:52'),
(765, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:47:55', '2020-10-17 22:47:55'),
(766, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:48:01', '2020-10-17 22:48:01'),
(767, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:48:16', '2020-10-17 22:48:16'),
(768, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:52:53', '2020-10-17 22:52:53'),
(769, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:52:59', '2020-10-17 22:52:59'),
(770, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:53:01', '2020-10-17 22:53:01'),
(771, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:53:09', '2020-10-17 22:53:09'),
(772, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:53:15', '2020-10-17 22:53:15'),
(773, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:53:20', '2020-10-17 22:53:20'),
(774, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:53:23', '2020-10-17 22:53:23'),
(775, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:53:28', '2020-10-17 22:53:28'),
(776, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:53:30', '2020-10-17 22:53:30'),
(777, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:53:33', '2020-10-17 22:53:33'),
(778, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:53:35', '2020-10-17 22:53:35'),
(779, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:53:44', '2020-10-17 22:53:44'),
(780, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:53:46', '2020-10-17 22:53:46'),
(781, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:53:48', '2020-10-17 22:53:48'),
(782, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:57:31', '2020-10-17 22:57:31'),
(783, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:57:37', '2020-10-17 22:57:37'),
(784, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:57:38', '2020-10-17 22:57:38'),
(785, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:57:41', '2020-10-17 22:57:41'),
(786, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 22:57:42', '2020-10-17 22:57:42'),
(787, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-17 22:58:24', '2020-10-17 22:58:24'),
(788, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 22:58:28', '2020-10-17 22:58:28'),
(789, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 22:58:30', '2020-10-17 22:58:30'),
(790, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 14:42:59', '2020-10-24 14:42:59'),
(791, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:43:13', '2020-10-24 14:43:13'),
(792, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:43:21', '2020-10-24 14:43:21'),
(793, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 14:43:23', '2020-10-24 14:43:23'),
(794, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 14:44:44', '2020-10-24 14:44:44'),
(795, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 14:47:38', '2020-10-24 14:47:38'),
(796, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:47:47', '2020-10-24 14:47:47'),
(797, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:47:49', '2020-10-24 14:47:49'),
(798, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 14:56:42', '2020-10-24 14:56:42'),
(799, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:56:50', '2020-10-24 14:56:50'),
(800, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:56:54', '2020-10-24 14:56:54'),
(801, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 14:58:05', '2020-10-24 14:58:05'),
(802, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:58:29', '2020-10-24 14:58:29'),
(803, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:58:31', '2020-10-24 14:58:31'),
(804, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 14:58:44', '2020-10-24 14:58:44'),
(805, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:58:51', '2020-10-24 14:58:51'),
(806, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:58:53', '2020-10-24 14:58:53'),
(807, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 14:58:55', '2020-10-24 14:58:55'),
(808, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:06:14', '2020-10-24 15:06:14'),
(809, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:06:20', '2020-10-24 15:06:20'),
(810, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:06:29', '2020-10-24 15:06:29'),
(811, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:06:53', '2020-10-24 15:06:53'),
(812, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:06:58', '2020-10-24 15:06:58'),
(813, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:07:00', '2020-10-24 15:07:00'),
(814, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:07:15', '2020-10-24 15:07:15'),
(815, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:07:21', '2020-10-24 15:07:21'),
(816, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:07:23', '2020-10-24 15:07:23'),
(817, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:07:38', '2020-10-24 15:07:38'),
(818, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:07:40', '2020-10-24 15:07:40'),
(819, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:07:51', '2020-10-24 15:07:51'),
(820, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:08:03', '2020-10-24 15:08:03'),
(821, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:08:09', '2020-10-24 15:08:09');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(822, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:08:10', '2020-10-24 15:08:10'),
(823, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:09:53', '2020-10-24 15:09:53'),
(824, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:09:58', '2020-10-24 15:09:58'),
(825, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:10:00', '2020-10-24 15:10:00'),
(826, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:10:03', '2020-10-24 15:10:03'),
(827, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:10:24', '2020-10-24 15:10:24'),
(828, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:10:27', '2020-10-24 15:10:27'),
(829, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:10:43', '2020-10-24 15:10:43'),
(830, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:11:36', '2020-10-24 15:11:36'),
(831, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:11:38', '2020-10-24 15:11:38'),
(832, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:11:42', '2020-10-24 15:11:42'),
(833, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:13:11', '2020-10-24 15:13:11'),
(834, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:13:23', '2020-10-24 15:13:23'),
(835, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:13:25', '2020-10-24 15:13:25'),
(836, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:14:45', '2020-10-24 15:14:45'),
(837, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:15:58', '2020-10-24 15:15:58'),
(838, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:16:05', '2020-10-24 15:16:05'),
(839, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:16:07', '2020-10-24 15:16:07'),
(840, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:18:22', '2020-10-24 15:18:22'),
(841, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:18:38', '2020-10-24 15:18:38'),
(842, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:20:23', '2020-10-24 15:20:23'),
(843, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:20:28', '2020-10-24 15:20:28'),
(844, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:20:29', '2020-10-24 15:20:29'),
(845, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:24:57', '2020-10-24 15:24:57'),
(846, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:25:42', '2020-10-24 15:25:42'),
(847, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:25:44', '2020-10-24 15:25:44'),
(848, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:25:46', '2020-10-24 15:25:46'),
(849, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:25:48', '2020-10-24 15:25:48'),
(850, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-24 15:27:53', '2020-10-24 15:27:53'),
(851, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-24 15:28:00', '2020-10-24 15:28:00'),
(852, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-24 15:28:04', '2020-10-24 15:28:04'),
(853, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-25 08:23:24', '2020-10-25 08:23:24'),
(854, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:23:39', '2020-10-25 08:23:39'),
(855, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:23:54', '2020-10-25 08:23:54'),
(856, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:39:07', '2020-10-25 08:39:07'),
(857, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-25 10:31:12', '2020-10-25 10:31:12'),
(858, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 10:31:27', '2020-10-25 10:31:27'),
(859, 1, 'admin/pricings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 10:31:37', '2020-10-25 10:31:37'),
(860, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-26 01:26:54', '2020-10-26 01:26:54'),
(861, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 01:26:58', '2020-10-26 01:26:58'),
(862, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 01:26:59', '2020-10-26 01:26:59'),
(863, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 01:27:03', '2020-10-26 01:27:03'),
(864, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-27 09:40:02', '2020-10-27 09:40:02'),
(865, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-27 09:42:13', '2020-10-27 09:42:13'),
(866, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-28 08:05:46', '2020-10-28 08:05:46'),
(867, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-28 08:06:18', '2020-10-28 08:06:18'),
(868, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-28 08:39:35', '2020-10-28 08:39:35'),
(869, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-28 08:45:17', '2020-10-28 08:45:17'),
(870, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:45:22', '2020-10-28 08:45:22'),
(871, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:14:34', '2020-10-28 09:14:34'),
(872, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-28 09:27:38', '2020-10-28 09:27:38'),
(873, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:27:43', '2020-10-28 09:27:43'),
(874, 1, 'admin/users/79,80,81', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"blWGOyNCggJhPc7ZkcGgciBn0l6qoiiCSLAcYHNl\"}', '2020-10-28 09:27:53', '2020-10-28 09:27:53'),
(875, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:27:53', '2020-10-28 09:27:53'),
(876, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-28 09:27:58', '2020-10-28 09:27:58'),
(877, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 10:07:38', '2020-10-28 10:07:38'),
(878, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-28 23:42:58', '2020-10-28 23:42:58'),
(879, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:43:02', '2020-10-28 23:43:02'),
(880, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:44:58', '2020-10-28 23:44:58'),
(881, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:45:00', '2020-10-28 23:45:00'),
(882, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:45:41', '2020-10-28 23:45:41'),
(883, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:45:54', '2020-10-28 23:45:54'),
(884, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:45:56', '2020-10-28 23:45:56'),
(885, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:45:58', '2020-10-28 23:45:58'),
(886, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:46:00', '2020-10-28 23:46:00'),
(887, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:46:13', '2020-10-28 23:46:13'),
(888, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:47:13', '2020-10-28 23:47:13'),
(889, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:48:04', '2020-10-28 23:48:04'),
(890, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-28 23:48:51', '2020-10-28 23:48:51'),
(891, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-10-28 23:51:34', '2020-10-28 23:51:34'),
(892, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:52:43', '2020-10-28 23:52:43'),
(893, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 23:56:23', '2020-10-28 23:56:23'),
(894, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 00:05:35', '2020-10-29 00:05:35'),
(895, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 00:21:03', '2020-10-29 00:21:03'),
(896, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 00:22:17', '2020-10-29 00:22:17'),
(897, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 00:23:18', '2020-10-29 00:23:18'),
(898, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 00:23:22', '2020-10-29 00:23:22'),
(899, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 00:30:30', '2020-10-29 00:30:30'),
(900, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 00:57:18', '2020-10-29 00:57:18'),
(901, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 00:58:23', '2020-10-29 00:58:23'),
(902, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 00:58:33', '2020-10-29 00:58:33'),
(903, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 01:02:34', '2020-10-29 01:02:34'),
(904, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-30 04:16:08', '2020-10-30 04:16:08'),
(905, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 04:16:36', '2020-10-30 04:16:36'),
(906, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-31 10:44:06', '2020-10-31 10:44:06'),
(907, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-31 10:44:22', '2020-10-31 10:44:22'),
(908, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-31 10:47:30', '2020-10-31 10:47:30'),
(909, 1, 'admin/pricings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-31 10:47:38', '2020-10-31 10:47:38'),
(910, 1, 'admin/pricings/1/edit', 'GET', '127.0.0.1', '[]', '2020-10-31 10:48:15', '2020-10-31 10:48:15'),
(911, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-31 10:48:55', '2020-10-31 10:48:55'),
(912, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-31 10:48:57', '2020-10-31 10:48:57'),
(913, 1, 'admin/pricings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-31 10:49:04', '2020-10-31 10:49:04'),
(914, 1, 'admin/pricings/1', 'PUT', '127.0.0.1', '{\"name\":\"Basic Plan\",\"daily_cost\":\"1\",\"user_limit\":\"2\",\"_token\":\"mGjdu9kqc4h7XunFXih5mg0qY2wL4cYzQ8j0eB3s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-10-31 10:49:23', '2020-10-31 10:49:23'),
(915, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-31 10:49:24', '2020-10-31 10:49:24'),
(916, 1, 'admin/pricings/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-31 10:49:27', '2020-10-31 10:49:27'),
(917, 1, 'admin/pricings/2', 'PUT', '127.0.0.1', '{\"name\":\"Starter Plan\",\"daily_cost\":\"2\",\"user_limit\":\"5\",\"_token\":\"mGjdu9kqc4h7XunFXih5mg0qY2wL4cYzQ8j0eB3s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-10-31 10:49:33', '2020-10-31 10:49:33'),
(918, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-31 10:49:33', '2020-10-31 10:49:33'),
(919, 1, 'admin/pricings/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-31 10:49:36', '2020-10-31 10:49:36'),
(920, 1, 'admin/pricings/3', 'PUT', '127.0.0.1', '{\"name\":\"Advance Plan\",\"daily_cost\":\"3\",\"user_limit\":\"8\",\"_token\":\"mGjdu9kqc4h7XunFXih5mg0qY2wL4cYzQ8j0eB3s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-10-31 10:49:53', '2020-10-31 10:49:53'),
(921, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-31 10:49:54', '2020-10-31 10:49:54'),
(922, 1, 'admin/pricings/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-31 10:49:57', '2020-10-31 10:49:57'),
(923, 1, 'admin/pricings/4', 'PUT', '127.0.0.1', '{\"name\":\"Expert\",\"daily_cost\":\"4\",\"user_limit\":\"11\",\"_token\":\"mGjdu9kqc4h7XunFXih5mg0qY2wL4cYzQ8j0eB3s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-10-31 10:50:05', '2020-10-31 10:50:05'),
(924, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-31 10:50:06', '2020-10-31 10:50:06'),
(925, 1, 'admin/pricings/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-31 10:50:08', '2020-10-31 10:50:08'),
(926, 1, 'admin/pricings/5', 'PUT', '127.0.0.1', '{\"name\":\"demo\",\"daily_cost\":\"5\",\"user_limit\":\"15\",\"_token\":\"mGjdu9kqc4h7XunFXih5mg0qY2wL4cYzQ8j0eB3s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/pricings\"}', '2020-10-31 10:50:15', '2020-10-31 10:50:15'),
(927, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-10-31 10:50:15', '2020-10-31 10:50:15'),
(928, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-31 11:21:01', '2020-10-31 11:21:01'),
(929, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-01 13:56:42', '2020-11-01 13:56:42'),
(930, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-01 13:57:10', '2020-11-01 13:57:10'),
(931, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-01 14:26:21', '2020-11-01 14:26:21'),
(932, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-01 14:26:24', '2020-11-01 14:26:24'),
(933, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-01 14:37:08', '2020-11-01 14:37:08'),
(934, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-02 00:18:55', '2020-11-02 00:18:55'),
(935, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 00:19:03', '2020-11-02 00:19:03'),
(936, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-02 00:22:18', '2020-11-02 00:22:18'),
(937, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 00:22:24', '2020-11-02 00:22:24'),
(938, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '[]', '2020-11-02 01:23:57', '2020-11-02 01:23:57'),
(939, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-11-02 01:25:01', '2020-11-02 01:25:01'),
(940, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-02 01:25:03', '2020-11-02 01:25:03'),
(941, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 01:25:05', '2020-11-02 01:25:05'),
(942, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 01:25:08', '2020-11-02 01:25:08'),
(943, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 01:25:10', '2020-11-02 01:25:10'),
(944, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-02 03:12:15', '2020-11-02 03:12:15'),
(945, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-02 03:12:17', '2020-11-02 03:12:17'),
(946, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 03:12:22', '2020-11-02 03:12:22'),
(947, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-02 03:35:53', '2020-11-02 03:35:53'),
(948, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 03:36:05', '2020-11-02 03:36:05'),
(949, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:12:01', '2020-11-02 04:12:01'),
(950, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:16:12', '2020-11-02 04:16:12'),
(951, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:16:49', '2020-11-02 04:16:49'),
(952, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:17:56', '2020-11-02 04:17:56'),
(953, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:18:22', '2020-11-02 04:18:22'),
(954, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:19:33', '2020-11-02 04:19:33'),
(955, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:19:56', '2020-11-02 04:19:56'),
(956, 1, 'admin/users/84/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:20:04', '2020-11-02 04:20:04'),
(957, 1, 'admin/users/84/edit', 'GET', '127.0.0.1', '[]', '2020-11-02 04:20:53', '2020-11-02 04:20:53'),
(958, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:20:59', '2020-11-02 04:20:59'),
(959, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:21:00', '2020-11-02 04:21:00'),
(960, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:21:03', '2020-11-02 04:21:03'),
(961, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:21:27', '2020-11-02 04:21:27'),
(962, 1, 'admin/users/78', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:21:33', '2020-11-02 04:21:33'),
(963, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:21:41', '2020-11-02 04:21:41'),
(964, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:22:05', '2020-11-02 04:22:05'),
(965, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:22:06', '2020-11-02 04:22:06'),
(966, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:22:16', '2020-11-02 04:22:16'),
(967, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:22:19', '2020-11-02 04:22:19'),
(968, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '[]', '2020-11-02 04:22:34', '2020-11-02 04:22:34'),
(969, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '[]', '2020-11-02 04:27:20', '2020-11-02 04:27:20'),
(970, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '[]', '2020-11-02 04:27:55', '2020-11-02 04:27:55'),
(971, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:28:00', '2020-11-02 04:28:00'),
(972, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:28:04', '2020-11-02 04:28:04'),
(973, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:28:39', '2020-11-02 04:28:39'),
(974, 1, 'admin/users/90/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:28:45', '2020-11-02 04:28:45'),
(975, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:28:48', '2020-11-02 04:28:48'),
(976, 1, 'admin/users/82/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:28:52', '2020-11-02 04:28:52'),
(977, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:28:58', '2020-11-02 04:28:58'),
(978, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:29:21', '2020-11-02 04:29:21'),
(979, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:29:25', '2020-11-02 04:29:25'),
(980, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:29:27', '2020-11-02 04:29:27'),
(981, 1, 'admin/users/84/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:29:31', '2020-11-02 04:29:31'),
(982, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:29:33', '2020-11-02 04:29:33'),
(983, 1, 'admin/users/85/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:29:37', '2020-11-02 04:29:37'),
(984, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:29:39', '2020-11-02 04:29:39'),
(985, 1, 'admin/users/82/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:29:42', '2020-11-02 04:29:42'),
(986, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:29:44', '2020-11-02 04:29:44'),
(987, 1, 'admin/users/86/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:29:47', '2020-11-02 04:29:47'),
(988, 1, 'admin/users/86/edit', 'GET', '127.0.0.1', '[]', '2020-11-02 04:29:58', '2020-11-02 04:29:58'),
(989, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:30:04', '2020-11-02 04:30:04'),
(990, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:31:38', '2020-11-02 04:31:38'),
(991, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:31:53', '2020-11-02 04:31:53'),
(992, 1, 'admin/users/78/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:46:20', '2020-11-02 04:46:20'),
(993, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:46:24', '2020-11-02 04:46:24'),
(994, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:46:47', '2020-11-02 04:46:47'),
(995, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:46:50', '2020-11-02 04:46:50'),
(996, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 04:51:04', '2020-11-02 04:51:04'),
(997, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-02 04:58:46', '2020-11-02 04:58:46'),
(998, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 04:58:49', '2020-11-02 04:58:49'),
(999, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:06:43', '2020-11-02 05:06:43'),
(1000, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:07:05', '2020-11-02 05:07:05'),
(1001, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:11:58', '2020-11-02 05:11:58'),
(1002, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:13:32', '2020-11-02 05:13:32'),
(1003, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:14:55', '2020-11-02 05:14:55'),
(1004, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:15:52', '2020-11-02 05:15:52'),
(1005, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"78\",\"_model\":\"App_Models_User\",\"_token\":\"mRVZIVWW1QNdO2Knq4rLxMu9tjBgGewx9GsusifM\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-11-02 05:17:23', '2020-11-02 05:17:23'),
(1006, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:17:24', '2020-11-02 05:17:24'),
(1007, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"84\",\"_model\":\"App_Models_User\",\"_token\":\"mRVZIVWW1QNdO2Knq4rLxMu9tjBgGewx9GsusifM\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-11-02 05:17:32', '2020-11-02 05:17:32'),
(1008, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:17:32', '2020-11-02 05:17:32'),
(1009, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:18:22', '2020-11-02 05:18:22'),
(1010, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:18:39', '2020-11-02 05:18:39'),
(1011, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-11-02 05:18:52', '2020-11-02 05:18:52'),
(1012, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-11-02 05:19:08', '2020-11-02 05:19:08'),
(1013, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-11-02 05:19:20', '2020-11-02 05:19:20'),
(1014, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:19:26', '2020-11-02 05:19:26'),
(1015, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:19:28', '2020-11-02 05:19:28'),
(1016, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:21:13', '2020-11-02 05:21:13'),
(1017, 1, 'admin/users/83/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:21:18', '2020-11-02 05:21:18'),
(1018, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:21:23', '2020-11-02 05:21:23'),
(1019, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:24:13', '2020-11-02 05:24:13'),
(1020, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:25:35', '2020-11-02 05:25:35'),
(1021, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:25:52', '2020-11-02 05:25:52'),
(1022, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:26:05', '2020-11-02 05:26:05'),
(1023, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:26:16', '2020-11-02 05:26:16'),
(1024, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:27:49', '2020-11-02 05:27:49'),
(1025, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:28:36', '2020-11-02 05:28:36'),
(1026, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:28:58', '2020-11-02 05:28:58'),
(1027, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:29:27', '2020-11-02 05:29:27'),
(1028, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:30:12', '2020-11-02 05:30:12'),
(1029, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:31:04', '2020-11-02 05:31:04'),
(1030, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:43:07', '2020-11-02 05:43:07'),
(1031, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:43:31', '2020-11-02 05:43:31'),
(1032, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:45:52', '2020-11-02 05:45:52'),
(1033, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-02 05:46:10', '2020-11-02 05:46:10'),
(1034, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:53:37', '2020-11-02 05:53:37'),
(1035, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:54:37', '2020-11-02 05:54:37'),
(1036, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Blocked IP\",\"icon\":\"fa-ban\",\"uri\":\"\\/blocked-ip\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"mRVZIVWW1QNdO2Knq4rLxMu9tjBgGewx9GsusifM\"}', '2020-11-02 05:55:31', '2020-11-02 05:55:31'),
(1037, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-02 05:55:32', '2020-11-02 05:55:32'),
(1038, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"mRVZIVWW1QNdO2Knq4rLxMu9tjBgGewx9GsusifM\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":11},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-11-02 05:56:00', '2020-11-02 05:56:00'),
(1039, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 05:56:00', '2020-11-02 05:56:00'),
(1040, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-02 05:56:01', '2020-11-02 05:56:01'),
(1041, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-02 05:58:09', '2020-11-02 05:58:09'),
(1042, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-02 06:01:19', '2020-11-02 06:01:19'),
(1043, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-02 06:01:34', '2020-11-02 06:01:34'),
(1044, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-02 06:01:58', '2020-11-02 06:01:58'),
(1045, 1, 'admin/blocked-ip/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:02:10', '2020-11-02 06:02:10'),
(1046, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-02 06:02:18', '2020-11-02 06:02:18'),
(1047, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:02:20', '2020-11-02 06:02:20'),
(1048, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-02 06:03:18', '2020-11-02 06:03:18'),
(1049, 1, 'admin/blocked-ip/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:03:20', '2020-11-02 06:03:20'),
(1050, 1, 'admin/blocked-ip', 'POST', '127.0.0.1', '{\"ip\":\"192.176.10.2\",\"_token\":\"mRVZIVWW1QNdO2Knq4rLxMu9tjBgGewx9GsusifM\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/blocked-ip\"}', '2020-11-02 06:03:28', '2020-11-02 06:03:28'),
(1051, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-02 06:03:29', '2020-11-02 06:03:29'),
(1052, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-02 06:03:51', '2020-11-02 06:03:51'),
(1053, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:04:55', '2020-11-02 06:04:55'),
(1054, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:04:58', '2020-11-02 06:04:58'),
(1055, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:05:00', '2020-11-02 06:05:00'),
(1056, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:05:04', '2020-11-02 06:05:04'),
(1057, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:05:06', '2020-11-02 06:05:06'),
(1058, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-02 06:05:41', '2020-11-02 06:05:41'),
(1059, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-02 06:06:12', '2020-11-02 06:06:12'),
(1060, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:06:18', '2020-11-02 06:06:18'),
(1061, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:06:20', '2020-11-02 06:06:20'),
(1062, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:06:22', '2020-11-02 06:06:22'),
(1063, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:06:23', '2020-11-02 06:06:23'),
(1064, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:06:31', '2020-11-02 06:06:31'),
(1065, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:06:34', '2020-11-02 06:06:34'),
(1066, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:06:35', '2020-11-02 06:06:35'),
(1067, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:06:37', '2020-11-02 06:06:37'),
(1068, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:06:39', '2020-11-02 06:06:39'),
(1069, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 06:06:40', '2020-11-02 06:06:40'),
(1070, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-02 10:05:37', '2020-11-02 10:05:37'),
(1071, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-02 10:29:53', '2020-11-02 10:29:53'),
(1072, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-04 22:42:44', '2020-11-04 22:42:44'),
(1073, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-04 22:43:12', '2020-11-04 22:43:12'),
(1074, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-04 22:47:06', '2020-11-04 22:47:06'),
(1075, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-04 22:47:12', '2020-11-04 22:47:12'),
(1076, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-04 22:47:24', '2020-11-04 22:47:24'),
(1077, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-04 23:12:31', '2020-11-04 23:12:31'),
(1078, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-04 23:12:38', '2020-11-04 23:12:38'),
(1079, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-04 23:27:12', '2020-11-04 23:27:12'),
(1080, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-04 23:27:54', '2020-11-04 23:27:54'),
(1081, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-04 23:29:37', '2020-11-04 23:29:37'),
(1082, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-04 23:29:40', '2020-11-04 23:29:40'),
(1083, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-04 23:30:04', '2020-11-04 23:30:04'),
(1084, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-04 23:30:21', '2020-11-04 23:30:21'),
(1085, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-04 23:30:44', '2020-11-04 23:30:44'),
(1086, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-04 23:31:05', '2020-11-04 23:31:05'),
(1087, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-04 23:31:22', '2020-11-04 23:31:22'),
(1088, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:20:55', '2020-11-07 09:20:55'),
(1089, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:22:14', '2020-11-07 09:22:14'),
(1090, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:22:24', '2020-11-07 09:22:24'),
(1091, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:22:30', '2020-11-07 09:22:30'),
(1092, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:22:31', '2020-11-07 09:22:31'),
(1093, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:24:22', '2020-11-07 09:24:22'),
(1094, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:24:33', '2020-11-07 09:24:33'),
(1095, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:31:57', '2020-11-07 09:31:57'),
(1096, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:32:01', '2020-11-07 09:32:01'),
(1097, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:32:05', '2020-11-07 09:32:05'),
(1098, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:32:09', '2020-11-07 09:32:09'),
(1099, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:36:31', '2020-11-07 09:36:31'),
(1100, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:36:46', '2020-11-07 09:36:46'),
(1101, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:37:09', '2020-11-07 09:37:09'),
(1102, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:37:32', '2020-11-07 09:37:32'),
(1103, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:37:38', '2020-11-07 09:37:38'),
(1104, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:37:41', '2020-11-07 09:37:41'),
(1105, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '[]', '2020-11-07 09:37:54', '2020-11-07 09:37:54'),
(1106, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:37:57', '2020-11-07 09:37:57'),
(1107, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:38:00', '2020-11-07 09:38:00'),
(1108, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:38:03', '2020-11-07 09:38:03'),
(1109, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:38:06', '2020-11-07 09:38:06'),
(1110, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-11-07 09:38:22', '2020-11-07 09:38:22'),
(1111, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:38:26', '2020-11-07 09:38:26'),
(1112, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-11-07 09:38:37', '2020-11-07 09:38:37'),
(1113, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-11-07 09:47:41', '2020-11-07 09:47:41'),
(1114, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:47:46', '2020-11-07 09:47:46'),
(1115, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:48:01', '2020-11-07 09:48:01'),
(1116, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:48:22', '2020-11-07 09:48:22'),
(1117, 1, 'admin/pricings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:48:25', '2020-11-07 09:48:25'),
(1118, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:48:27', '2020-11-07 09:48:27'),
(1119, 1, 'admin/pricings', 'GET', '127.0.0.1', '[]', '2020-11-07 09:49:57', '2020-11-07 09:49:57'),
(1120, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:50:00', '2020-11-07 09:50:00'),
(1121, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:50:01', '2020-11-07 09:50:01'),
(1122, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:50:50', '2020-11-07 09:50:50'),
(1123, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:50:56', '2020-11-07 09:50:56'),
(1124, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:50:59', '2020-11-07 09:50:59'),
(1125, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 09:51:00', '2020-11-07 09:51:00'),
(1126, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:51:13', '2020-11-07 09:51:13'),
(1127, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:52:43', '2020-11-07 09:52:43'),
(1128, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:53:07', '2020-11-07 09:53:07'),
(1129, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:53:52', '2020-11-07 09:53:52'),
(1130, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:53:57', '2020-11-07 09:53:57'),
(1131, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:54:05', '2020-11-07 09:54:05'),
(1132, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:54:12', '2020-11-07 09:54:12'),
(1133, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:56:22', '2020-11-07 09:56:22'),
(1134, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:56:57', '2020-11-07 09:56:57'),
(1135, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:57:48', '2020-11-07 09:57:48'),
(1136, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:58:24', '2020-11-07 09:58:24'),
(1137, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:58:50', '2020-11-07 09:58:50'),
(1138, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:58:58', '2020-11-07 09:58:58'),
(1139, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:59:11', '2020-11-07 09:59:11'),
(1140, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:59:30', '2020-11-07 09:59:30'),
(1141, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 09:59:42', '2020-11-07 09:59:42'),
(1142, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:00:00', '2020-11-07 10:00:00'),
(1143, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:00:21', '2020-11-07 10:00:21'),
(1144, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:00:31', '2020-11-07 10:00:31'),
(1145, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:00:37', '2020-11-07 10:00:37'),
(1146, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:00:45', '2020-11-07 10:00:45'),
(1147, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:00:55', '2020-11-07 10:00:55'),
(1148, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:01:00', '2020-11-07 10:01:00'),
(1149, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:01:35', '2020-11-07 10:01:35'),
(1150, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:01:46', '2020-11-07 10:01:46'),
(1151, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:02:08', '2020-11-07 10:02:08'),
(1152, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:02:17', '2020-11-07 10:02:17'),
(1153, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:02:28', '2020-11-07 10:02:28'),
(1154, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:02:54', '2020-11-07 10:02:54'),
(1155, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:03:13', '2020-11-07 10:03:13'),
(1156, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:06:35', '2020-11-07 10:06:35'),
(1157, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:09:48', '2020-11-07 10:09:48'),
(1158, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:09:57', '2020-11-07 10:09:57'),
(1159, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:10:19', '2020-11-07 10:10:19'),
(1160, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:10:37', '2020-11-07 10:10:37'),
(1161, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:11:03', '2020-11-07 10:11:03'),
(1162, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:11:15', '2020-11-07 10:11:15'),
(1163, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:11:42', '2020-11-07 10:11:42'),
(1164, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:11:52', '2020-11-07 10:11:52'),
(1165, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:12:20', '2020-11-07 10:12:20'),
(1166, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:12:32', '2020-11-07 10:12:32'),
(1167, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:12:41', '2020-11-07 10:12:41'),
(1168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:17:23', '2020-11-07 10:17:23'),
(1169, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 10:17:44', '2020-11-07 10:17:44'),
(1170, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 10:17:50', '2020-11-07 10:17:50'),
(1171, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 12:05:34', '2020-11-07 12:05:34'),
(1172, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 12:05:35', '2020-11-07 12:05:35'),
(1173, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 12:05:37', '2020-11-07 12:05:37'),
(1174, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 12:05:39', '2020-11-07 12:05:39'),
(1175, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:16:59', '2020-11-07 12:16:59'),
(1176, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:17:12', '2020-11-07 12:17:12'),
(1177, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:18:48', '2020-11-07 12:18:48'),
(1178, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:19:29', '2020-11-07 12:19:29'),
(1179, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:25:24', '2020-11-07 12:25:24'),
(1180, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:25:35', '2020-11-07 12:25:35'),
(1181, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:27:40', '2020-11-07 12:27:40'),
(1182, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:28:05', '2020-11-07 12:28:05'),
(1183, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:28:20', '2020-11-07 12:28:20'),
(1184, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:28:32', '2020-11-07 12:28:32'),
(1185, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:28:40', '2020-11-07 12:28:40'),
(1186, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:28:49', '2020-11-07 12:28:49'),
(1187, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:29:26', '2020-11-07 12:29:26'),
(1188, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:30:41', '2020-11-07 12:30:41'),
(1189, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:32:00', '2020-11-07 12:32:00'),
(1190, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 12:32:28', '2020-11-07 12:32:28'),
(1191, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:03:52', '2020-11-07 22:03:52'),
(1192, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:04:12', '2020-11-07 22:04:12'),
(1193, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:06:27', '2020-11-07 22:06:27'),
(1194, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:07:53', '2020-11-07 22:07:53'),
(1195, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:08:11', '2020-11-07 22:08:11'),
(1196, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:08:57', '2020-11-07 22:08:57'),
(1197, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:09:35', '2020-11-07 22:09:35'),
(1198, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:09:45', '2020-11-07 22:09:45'),
(1199, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:11:34', '2020-11-07 22:11:34'),
(1200, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:12:06', '2020-11-07 22:12:06'),
(1201, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:12:42', '2020-11-07 22:12:42'),
(1202, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:12:55', '2020-11-07 22:12:55'),
(1203, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:13:07', '2020-11-07 22:13:07'),
(1204, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:13:45', '2020-11-07 22:13:45'),
(1205, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:14:08', '2020-11-07 22:14:08'),
(1206, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:15:02', '2020-11-07 22:15:02'),
(1207, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:15:42', '2020-11-07 22:15:42'),
(1208, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:20:30', '2020-11-07 22:20:30'),
(1209, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 22:23:01', '2020-11-07 22:23:01'),
(1210, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 22:23:11', '2020-11-07 22:23:11'),
(1211, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:25:03', '2020-11-07 22:25:03'),
(1212, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:25:28', '2020-11-07 22:25:28'),
(1213, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:25:58', '2020-11-07 22:25:58'),
(1214, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:26:10', '2020-11-07 22:26:10'),
(1215, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:56:06', '2020-11-07 22:56:06'),
(1216, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:57:34', '2020-11-07 22:57:34'),
(1217, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:57:45', '2020-11-07 22:57:45'),
(1218, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 22:58:07', '2020-11-07 22:58:07'),
(1219, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:00:02', '2020-11-07 23:00:02'),
(1220, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:00:28', '2020-11-07 23:00:28'),
(1221, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:02:55', '2020-11-07 23:02:55'),
(1222, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:02:58', '2020-11-07 23:02:58'),
(1223, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:03:32', '2020-11-07 23:03:32'),
(1224, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:03:36', '2020-11-07 23:03:36'),
(1225, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:03:42', '2020-11-07 23:03:42'),
(1226, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:03:50', '2020-11-07 23:03:50'),
(1227, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:03:52', '2020-11-07 23:03:52'),
(1228, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:03:55', '2020-11-07 23:03:55'),
(1229, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:03:58', '2020-11-07 23:03:58'),
(1230, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:04:01', '2020-11-07 23:04:01'),
(1231, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:04:04', '2020-11-07 23:04:04'),
(1232, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:04:06', '2020-11-07 23:04:06'),
(1233, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:04:09', '2020-11-07 23:04:09'),
(1234, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:07:15', '2020-11-07 23:07:15'),
(1235, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:07:17', '2020-11-07 23:07:17'),
(1236, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:07:20', '2020-11-07 23:07:20'),
(1237, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:07:23', '2020-11-07 23:07:23'),
(1238, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-07 23:07:27', '2020-11-07 23:07:27'),
(1239, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:07:29', '2020-11-07 23:07:29'),
(1240, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:07:30', '2020-11-07 23:07:30'),
(1241, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:07:32', '2020-11-07 23:07:32'),
(1242, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:07:35', '2020-11-07 23:07:35'),
(1243, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-07 23:07:38', '2020-11-07 23:07:38'),
(1244, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:09:48', '2020-11-09 05:09:48'),
(1245, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:10:04', '2020-11-09 05:10:04'),
(1246, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:10:07', '2020-11-09 05:10:07'),
(1247, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:10:12', '2020-11-09 05:10:12'),
(1248, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:13:14', '2020-11-09 05:13:14'),
(1249, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:14:36', '2020-11-09 05:14:36'),
(1250, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:14:55', '2020-11-09 05:14:55'),
(1251, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:16:26', '2020-11-09 05:16:26'),
(1252, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:16:43', '2020-11-09 05:16:43'),
(1253, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:17:27', '2020-11-09 05:17:27'),
(1254, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:18:10', '2020-11-09 05:18:10'),
(1255, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:18:19', '2020-11-09 05:18:19'),
(1256, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:19:11', '2020-11-09 05:19:11'),
(1257, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:19:13', '2020-11-09 05:19:13'),
(1258, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:19:17', '2020-11-09 05:19:17'),
(1259, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:19:19', '2020-11-09 05:19:19'),
(1260, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:22:35', '2020-11-09 05:22:35'),
(1261, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:23:00', '2020-11-09 05:23:00'),
(1262, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:23:14', '2020-11-09 05:23:14'),
(1263, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:23:23', '2020-11-09 05:23:23'),
(1264, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:24:04', '2020-11-09 05:24:04'),
(1265, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:24:53', '2020-11-09 05:24:53'),
(1266, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:26:21', '2020-11-09 05:26:21'),
(1267, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:26:39', '2020-11-09 05:26:39'),
(1268, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:52:12', '2020-11-09 05:52:12'),
(1269, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:52:31', '2020-11-09 05:52:31');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1270, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:52:36', '2020-11-09 05:52:36'),
(1271, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:52:44', '2020-11-09 05:52:44'),
(1272, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 05:52:47', '2020-11-09 05:52:47'),
(1273, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:54:40', '2020-11-09 05:54:40'),
(1274, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 05:54:54', '2020-11-09 05:54:54'),
(1275, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 10:09:24', '2020-11-09 10:09:24'),
(1276, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 10:10:23', '2020-11-09 10:10:23'),
(1277, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 10:10:28', '2020-11-09 10:10:28'),
(1278, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 10:10:34', '2020-11-09 10:10:34'),
(1279, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-09 10:10:43', '2020-11-09 10:10:43'),
(1280, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 10:10:53', '2020-11-09 10:10:53'),
(1281, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-09 10:10:57', '2020-11-09 10:10:57'),
(1282, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-12 05:52:51', '2020-11-12 05:52:51'),
(1283, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-16 03:46:18', '2020-11-16 03:46:18'),
(1284, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:46:32', '2020-11-16 03:46:32'),
(1285, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:46:42', '2020-11-16 03:46:42'),
(1286, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:47:00', '2020-11-16 03:47:00'),
(1287, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:47:06', '2020-11-16 03:47:06'),
(1288, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:47:08', '2020-11-16 03:47:08'),
(1289, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"customers\",\"name\":\"customer\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/admin\\/users\",\"_token\":\"1mS04LEu8mh6rPa3Q43o1TYaX2MRVD5prs9MGzzH\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-11-16 03:47:30', '2020-11-16 03:47:30'),
(1290, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-11-16 03:47:31', '2020-11-16 03:47:31'),
(1291, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:47:41', '2020-11-16 03:47:41'),
(1292, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:47:42', '2020-11-16 03:47:42'),
(1293, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:47:47', '2020-11-16 03:47:47'),
(1294, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"customers\",\"name\":\"customer\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/users\",\"_token\":\"1mS04LEu8mh6rPa3Q43o1TYaX2MRVD5prs9MGzzH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-11-16 03:47:52', '2020-11-16 03:47:52'),
(1295, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-11-16 03:47:52', '2020-11-16 03:47:52'),
(1296, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:48:07', '2020-11-16 03:48:07'),
(1297, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:48:09', '2020-11-16 03:48:09'),
(1298, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:48:12', '2020-11-16 03:48:12'),
(1299, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"block-ip\",\"name\":\"block ip\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/block-ip\",\"_token\":\"1mS04LEu8mh6rPa3Q43o1TYaX2MRVD5prs9MGzzH\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-11-16 03:48:41', '2020-11-16 03:48:41'),
(1300, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-11-16 03:48:41', '2020-11-16 03:48:41'),
(1301, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:48:47', '2020-11-16 03:48:47'),
(1302, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:48:50', '2020-11-16 03:48:50'),
(1303, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:48:54', '2020-11-16 03:48:54'),
(1304, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:48:57', '2020-11-16 03:48:57'),
(1305, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:49:01', '2020-11-16 03:49:01'),
(1306, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-11-16 03:49:11', '2020-11-16 03:49:11'),
(1307, 1, 'admin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:51:26', '2020-11-16 03:51:26'),
(1308, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:51:29', '2020-11-16 03:51:29'),
(1309, 1, 'admin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:51:32', '2020-11-16 03:51:32'),
(1310, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:51:39', '2020-11-16 03:51:39'),
(1311, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:51:40', '2020-11-16 03:51:40'),
(1312, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_columns_\":\"name,user_limit\",\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:51:51', '2020-11-16 03:51:51'),
(1313, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:51:55', '2020-11-16 03:51:55'),
(1314, 1, 'admin/pricings/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:52:01', '2020-11-16 03:52:01'),
(1315, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:52:03', '2020-11-16 03:52:03'),
(1316, 1, 'admin/pricings/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:52:08', '2020-11-16 03:52:08'),
(1317, 1, 'admin/pricings/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 03:52:17', '2020-11-16 03:52:17'),
(1318, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-16 09:23:24', '2020-11-16 09:23:24'),
(1319, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 09:23:37', '2020-11-16 09:23:37'),
(1320, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 09:23:41', '2020-11-16 09:23:41'),
(1321, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 09:23:43', '2020-11-16 09:23:43'),
(1322, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-16 09:23:48', '2020-11-16 09:23:48'),
(1323, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-17 01:43:47', '2020-11-17 01:43:47'),
(1324, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-17 01:43:56', '2020-11-17 01:43:56'),
(1325, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 01:44:05', '2020-11-17 01:44:05'),
(1326, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Billings\",\"icon\":\"fa-bitcoin\",\"uri\":\"\\/admin\\/billings\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"KbKLT6U78GKncHouFPR5nEVTi8yGjtQEskUrPoEM\"}', '2020-11-17 01:45:51', '2020-11-17 01:45:51'),
(1327, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-17 01:45:52', '2020-11-17 01:45:52'),
(1328, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-17 01:45:54', '2020-11-17 01:45:54'),
(1329, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"KbKLT6U78GKncHouFPR5nEVTi8yGjtQEskUrPoEM\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":12},{\\\"id\\\":11},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-11-17 01:46:10', '2020-11-17 01:46:10'),
(1330, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-17 01:46:12', '2020-11-17 01:46:12'),
(1331, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 01:46:26', '2020-11-17 01:46:26'),
(1332, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Billings\",\"icon\":\"fa-bitcoin\",\"uri\":\"billings\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"KbKLT6U78GKncHouFPR5nEVTi8yGjtQEskUrPoEM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-11-17 01:46:33', '2020-11-17 01:46:33'),
(1333, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-17 01:46:33', '2020-11-17 01:46:33'),
(1334, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-17 01:46:35', '2020-11-17 01:46:35'),
(1335, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-17 01:48:20', '2020-11-17 01:48:20'),
(1336, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-17 01:51:26', '2020-11-17 01:51:26'),
(1337, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 01:51:29', '2020-11-17 01:51:29'),
(1338, 1, 'admin/billings', 'GET', '127.0.0.1', '[]', '2020-11-17 01:54:31', '2020-11-17 01:54:31'),
(1339, 1, 'admin/billings', 'GET', '127.0.0.1', '[]', '2020-11-17 01:55:19', '2020-11-17 01:55:19'),
(1340, 1, 'admin/billings', 'GET', '127.0.0.1', '[]', '2020-11-17 01:55:55', '2020-11-17 01:55:55'),
(1341, 1, 'admin/billings', 'GET', '127.0.0.1', '[]', '2020-11-17 01:56:15', '2020-11-17 01:56:15'),
(1342, 1, 'admin/billings', 'GET', '127.0.0.1', '[]', '2020-11-17 01:56:24', '2020-11-17 01:56:24'),
(1343, 1, 'admin/billings', 'GET', '127.0.0.1', '[]', '2020-11-17 01:56:31', '2020-11-17 01:56:31'),
(1344, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null,\"_pjax\":\"#pjax-container\"}', '2020-11-17 01:56:41', '2020-11-17 01:56:41'),
(1345, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 01:57:20', '2020-11-17 01:57:20'),
(1346, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:20:37', '2020-11-17 02:20:37'),
(1347, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:20:49', '2020-11-17 02:20:49'),
(1348, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:21:02', '2020-11-17 02:21:02'),
(1349, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:21:14', '2020-11-17 02:21:14'),
(1350, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:22:23', '2020-11-17 02:22:23'),
(1351, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:22:39', '2020-11-17 02:22:39'),
(1352, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:22:54', '2020-11-17 02:22:54'),
(1353, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:23:27', '2020-11-17 02:23:27'),
(1354, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:23:50', '2020-11-17 02:23:50'),
(1355, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:24:01', '2020-11-17 02:24:01'),
(1356, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:24:20', '2020-11-17 02:24:20'),
(1357, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"6\",\"_model\":\"App_Models_UserPayment\",\"_token\":\"KbKLT6U78GKncHouFPR5nEVTi8yGjtQEskUrPoEM\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-11-17 02:25:26', '2020-11-17 02:25:26'),
(1358, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:25:30', '2020-11-17 02:25:30'),
(1359, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null,\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:25:40', '2020-11-17 02:25:40'),
(1360, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"jorah\"}', '2020-11-17 02:25:48', '2020-11-17 02:25:48'),
(1361, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"jora\"}', '2020-11-17 02:25:53', '2020-11-17 02:25:53'),
(1362, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null}', '2020-11-17 02:25:56', '2020-11-17 02:25:56'),
(1363, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"7\",\"_model\":\"App_Models_UserPayment\",\"_token\":\"KbKLT6U78GKncHouFPR5nEVTi8yGjtQEskUrPoEM\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-11-17 02:26:02', '2020-11-17 02:26:02'),
(1364, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"id\":null}', '2020-11-17 02:26:05', '2020-11-17 02:26:05'),
(1365, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:28:15', '2020-11-17 02:28:15'),
(1366, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-11-17 02:28:58', '2020-11-17 02:28:58'),
(1367, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:29:19', '2020-11-17 02:29:19'),
(1368, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:22', '2020-11-17 02:34:22'),
(1369, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:23', '2020-11-17 02:34:23'),
(1370, 1, 'admin/blocked-ip', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:26', '2020-11-17 02:34:26'),
(1371, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:27', '2020-11-17 02:34:27'),
(1372, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:28', '2020-11-17 02:34:28'),
(1373, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:30', '2020-11-17 02:34:30'),
(1374, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:31', '2020-11-17 02:34:31'),
(1375, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:33', '2020-11-17 02:34:33'),
(1376, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:40', '2020-11-17 02:34:40'),
(1377, 1, 'admin/billings/11', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:51', '2020-11-17 02:34:51'),
(1378, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:34:54', '2020-11-17 02:34:54'),
(1379, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-17 02:53:53', '2020-11-17 02:53:53'),
(1380, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-11-17 02:54:23', '2020-11-17 02:54:23'),
(1381, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-11-17 02:54:34', '2020-11-17 02:54:34'),
(1382, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 09:54:19', '2020-11-18 09:54:19'),
(1383, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 09:54:32', '2020-11-18 09:54:32'),
(1384, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 09:54:34', '2020-11-18 09:54:34'),
(1385, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 09:54:43', '2020-11-18 09:54:43'),
(1386, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-18 10:16:30', '2020-11-18 10:16:30'),
(1387, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 10:16:41', '2020-11-18 10:16:41'),
(1388, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 10:16:47', '2020-11-18 10:16:47'),
(1389, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 10:16:56', '2020-11-18 10:16:56'),
(1390, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 10:22:47', '2020-11-18 10:22:47'),
(1391, 1, 'admin/billings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 10:23:02', '2020-11-18 10:23:02'),
(1392, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 10:23:17', '2020-11-18 10:23:17'),
(1393, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 10:23:22', '2020-11-18 10:23:22'),
(1394, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 10:23:29', '2020-11-18 10:23:29'),
(1395, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 10:23:36', '2020-11-18 10:23:36'),
(1396, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-18 10:25:35', '2020-11-18 10:25:35'),
(1397, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 10:25:43', '2020-11-18 10:25:43'),
(1398, 1, 'admin/pricings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 10:25:47', '2020-11-18 10:25:47'),
(1399, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 10:30:53', '2020-11-18 10:30:53'),
(1400, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 10:31:06', '2020-11-18 10:31:06'),
(1401, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 10:39:41', '2020-11-18 10:39:41'),
(1402, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 10:39:54', '2020-11-18 10:39:54'),
(1403, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 10:41:26', '2020-11-18 10:41:26'),
(1404, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 10:53:15', '2020-11-18 10:53:15'),
(1405, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 11:00:26', '2020-11-18 11:00:26'),
(1406, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 11:00:37', '2020-11-18 11:00:37'),
(1407, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 11:37:08', '2020-11-18 11:37:08'),
(1408, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 11:37:16', '2020-11-18 11:37:16'),
(1409, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"86\",\"_model\":\"App_Models_User\",\"_token\":\"vwVWyWIVW2tR3inRpJrMxIzhGhObb1BvtHJwIVLP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-11-18 11:37:28', '2020-11-18 11:37:28'),
(1410, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"86\",\"_model\":\"App_Models_User\",\"_token\":\"vwVWyWIVW2tR3inRpJrMxIzhGhObb1BvtHJwIVLP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-11-18 11:37:39', '2020-11-18 11:37:39'),
(1411, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 11:37:44', '2020-11-18 11:37:44'),
(1412, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-11-18 11:37:49', '2020-11-18 11:37:49'),
(1413, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"82\",\"_model\":\"App_Models_User\",\"_token\":\"vwVWyWIVW2tR3inRpJrMxIzhGhObb1BvtHJwIVLP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-11-18 11:37:59', '2020-11-18 11:37:59'),
(1414, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-20 10:43:11', '2020-11-20 10:43:11'),
(1415, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-20 11:46:50', '2020-11-20 11:46:50'),
(1416, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-22 10:39:18', '2020-11-22 10:39:18'),
(1417, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-22 10:39:43', '2020-11-22 10:39:43'),
(1418, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"92\",\"_model\":\"App_Models_User\",\"_token\":\"q3Am7UKIVArnNlpYIlORyiUpTi7tRlhxur6d7wF0\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-11-22 10:39:54', '2020-11-22 10:39:54'),
(1419, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-22 10:39:55', '2020-11-22 10:39:55'),
(1420, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-28 11:22:41', '2020-11-28 11:22:41'),
(1421, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 11:22:46', '2020-11-28 11:22:46'),
(1422, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-11-28 11:57:30', '2020-11-28 11:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'customer', 'customers', 'GET', '/users', '2020-11-16 03:47:30', '2020-11-16 03:47:52'),
(7, 'block ip', 'block-ip', 'GET', '/block-ip', '2020-11-16 03:48:41', '2020-11-16 03:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-09-18 12:15:49', '2020-09-18 12:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE IF NOT EXISTS `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE IF NOT EXISTS `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$BmTRscYspikESqYirlRNSuP7kCMFvORRsw5m3i5qEZJg1xFRDp9Im', 'Administrator', NULL, '3mVdFFX62bSxkbiMQXrGiThUI3Qx7Lku8sOlcv5UVsOQ9k35nyXvwv2nLZG5', '2020-09-18 12:15:49', '2020-09-18 12:15:49'),
(2, 'admin2', '$2y$10$a6ONIu9joevtI.JahPpvo.nJGxZysEFzoUzZXVI7LNLQI1IVBWkYW', 'admin2', NULL, 'C5AT6NXl0j31J2XuxshdxhKkYRGQ8H96dXzM2yRxGpoclapfGwOUWz6Hk0Yu', '2020-09-19 09:03:42', '2020-09-19 09:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE IF NOT EXISTS `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blocked_ips`
--

DROP TABLE IF EXISTS `blocked_ips`;
CREATE TABLE IF NOT EXISTS `blocked_ips` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocked_ips`
--

INSERT INTO `blocked_ips` (`id`, `ip`, `created_at`, `updated_at`) VALUES
(1, '192.176.10.2', '2020-11-02 06:03:28', '2020-11-02 06:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_05_03_000001_create_customer_columns', 2),
(10, '2019_05_03_000002_create_subscriptions_table', 2),
(11, '2019_05_03_000003_create_subscription_items_table', 2),
(12, '2016_01_04_173148_create_admin_tables', 3),
(13, '2020_09_19_055936_create_pricings_table', 4),
(14, '2020_09_25_193640_create_user_details_table', 5),
(15, '2020_09_25_194647_add_user_id_to_user_details_table', 6),
(16, '2020_10_04_101651_user_password_2', 7),
(17, '2020_10_29_021136_add_is_disabled_to_users_table', 8),
(18, '2020_10_29_022407_create_user_payments_table', 9),
(19, '2020_10_29_022728_users_and_user_payment_relation', 9),
(20, '2020_10_30_101954_add_cost_and_user_limit_to_pricings_table', 10),
(21, '2020_11_02_100517_add_payment_block_to_users_table', 11),
(22, '2020_11_02_115037_create_blocked_ips_table', 12),
(23, '2020_11_17_070006_add_status_to_user_payments', 13),
(24, '2020_11_28_145717_create_user_addon_domain_table', 14),
(25, '2020_11_28_150039_addon_domain_user_relation', 15);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '24v5UqupJq4VpVLo4OrtmnxLM4LrLLBldJLhugeN', NULL, 'http://localhost', 1, 0, 0, '2020-09-18 07:15:42', '2020-09-18 07:15:42'),
(2, NULL, 'Laravel Password Grant Client', 'eb17u3RbvYwPggWlP1Yt0IxKXqnKf7lKqPHvT1QK', 'users', 'http://localhost', 0, 1, 0, '2020-09-18 07:15:42', '2020-09-18 07:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-09-18 07:15:42', '2020-09-18 07:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

DROP TABLE IF EXISTS `pricings`;
CREATE TABLE IF NOT EXISTS `pricings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthly_cost` decimal(8,2) DEFAULT NULL,
  `yearly_cost` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `daily_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `user_limit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `name`, `monthly_cost`, `yearly_cost`, `created_at`, `updated_at`, `daily_cost`, `user_limit`) VALUES
(1, 'Basic Plan', '100.00', '1000.00', '2020-09-19 00:18:36', '2020-10-31 10:49:23', 1.00, 2),
(2, 'Starter Plan', '150.00', '1200.00', '2020-09-19 00:18:55', '2020-10-31 10:49:33', 2.00, 5),
(3, 'Advance Plan', '200.00', '2000.00', '2020-09-19 00:19:31', '2020-10-31 10:49:53', 3.00, 8),
(4, 'Expert', '300.00', '2800.00', '2020-09-19 00:49:54', '2020-10-31 10:50:05', 4.00, 11),
(5, 'demo', '500.00', '5000.00', '2020-09-19 09:00:59', '2020-10-31 10:50:15', 5.00, 15);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_status`, `stripe_plan`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(1, 78, 'basic_plan', 'sub_IDdF2KW5u3Yt9w', 'active', 'price_1HdBi0I044Y0C1v5gKdSujxw', 1, NULL, NULL, '2020-10-17 03:45:29', '2020-10-17 03:45:29'),
(2, 78, 'basic_plan', 'sub_IDdFXPyBjTwAq3', 'active', 'price_1HdBi0I044Y0C1v5gKdSujxw', 1, NULL, NULL, '2020-10-17 03:46:12', '2020-10-17 03:46:12'),
(3, 78, 'basic_planx', 'sub_IDdGNicnXsk074', 'active', 'price_1HdBi0I044Y0C1v5gKdSujxw', 1, NULL, NULL, '2020-10-17 03:46:30', '2020-10-17 03:46:30'),
(4, 78, 'asdasdasdasd', 'sub_IDdIDEE2stWShs', 'active', 'price_1HdBi0I044Y0C1v5gKdSujxw', 1, NULL, NULL, '2020-10-17 03:49:11', '2020-10-17 03:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

DROP TABLE IF EXISTS `subscription_items`;
CREATE TABLE IF NOT EXISTS `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  KEY `subscription_items_stripe_id_index` (`stripe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_items`
--

INSERT INTO `subscription_items` (`id`, `subscription_id`, `stripe_id`, `stripe_plan`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 'si_IDdFHvGGWsUBXC', 'price_1HdBi0I044Y0C1v5gKdSujxw', 1, '2020-10-17 03:45:29', '2020-10-17 03:45:29'),
(2, 2, 'si_IDdFrLS3iWeyvf', 'price_1HdBi0I044Y0C1v5gKdSujxw', 1, '2020-10-17 03:46:12', '2020-10-17 03:46:12'),
(3, 3, 'si_IDdGUgl9iYeHA0', 'price_1HdBi0I044Y0C1v5gKdSujxw', 1, '2020-10-17 03:46:30', '2020-10-17 03:46:30'),
(4, 4, 'si_IDdIzQazvIm8cJ', 'price_1HdBi0I044Y0C1v5gKdSujxw', 1, '2020-10-17 03:49:11', '2020-10-17 03:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_disabled` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `password_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_block` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_stripe_id_index` (`stripe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `is_disabled`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `password_2`, `payment_block`) VALUES
(91, 0, 'ron', 'varana7079@pidouno.com', '2020-11-18 11:03:14', '$2y$10$or7f0TnrSw80aMYyiTvpCeJbbDjRKxfnRoO88FvyvoXWg0SUgSjYy', NULL, '2020-11-18 11:00:55', '2020-11-18 11:03:16', 'cus_IPjWZibdmB5vxz', NULL, NULL, NULL, 'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4', 0),
(83, 1, 'jorah', 'joran@gmail.com', '2020-10-28 09:30:35', '$2y$10$lhR42qH5j2zeP3xtVXfZj.ph4Hx4JUv7ygHkOHf1CDK/qK9wLPGWy', NULL, '2020-10-28 09:30:14', '2020-11-17 01:35:04', 'cus_IJa34lP2vAFki1', 'visa', '1111', NULL, 'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4', 0),
(85, 0, 'lms2', 'lms2@gmail.com', '2020-10-28 23:43:26', '$2y$10$M1HY/yZ3zNthWPe1xnSHkeJAycAXFaOESOmIA3AlN598sdkoabZGa', NULL, '2020-10-28 23:42:28', '2020-10-28 23:43:26', NULL, NULL, NULL, NULL, 'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4', 0),
(93, 0, 'sonal74788', 'sonal74788@verumst.com', '2020-11-22 10:41:50', '$2y$10$eQZrZAFAS5Sjt5/64SJZAO8hFD/Dn/h0tCW5UFaox338sE0wndf92', NULL, '2020-11-22 10:41:12', '2020-11-22 10:41:55', 'cus_IRE5WBHhB5i4Pj', NULL, NULL, NULL, '2f01264c3fb94b5407d1726517293dd3657ffa4b', 0),
(87, 0, 'lsm4', 'lms4@yahoo.com', '2020-10-29 00:21:50', '$2y$10$BkpejnEloJi3eniphyZ5.uAWx3DzmMPrkxoIi0MkJ44B/.aZgW2Rm', NULL, '2020-10-28 23:47:08', '2020-10-29 00:30:21', 'cus_II4fDYMhm74fCu', 'visa', '1111', NULL, 'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4', 0),
(88, 0, 'lsm5', 'lms5@yahoo.com', '2020-10-28 23:52:37', '$2y$10$JZ3l/d0DwUcycHvrCTPdVe6Ev.j.bRZlqn2aDKwUD0K0OLs5lvvoK', '1deryMAtuUOerof4dp7AkIoqtCJbMAh7vWq917yxvl4tnZNpDMRg5eWha32w', '2020-10-28 23:47:51', '2020-10-29 00:20:43', 'cus_II4dzyWaXI6yic', 'visa', '1111', NULL, 'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4', 0),
(89, 0, 'lms6', 'lms6@yahoo.com', '2020-10-29 00:58:27', '$2y$10$1lwWlSyAlp23XjLGXSeKouRehiBO8qhVGkpoTDMgjTzS2RTF5gEZS', NULL, '2020-10-29 00:58:02', '2020-10-29 00:58:28', 'cus_II5GWHdy9tELVU', NULL, NULL, NULL, 'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4', 0),
(90, 0, 'lms7', 'lms7@yahoo.com', '2020-11-02 01:17:06', '$2y$10$npiBDj9fsaa5FoGQ4gQTKeQhvFdgUkyuJ43A63m2tjmq1ZoGtUuta', NULL, '2020-10-29 01:01:46', '2020-11-02 01:17:06', 'cus_II5J92E8oB5Qzq', 'visa', '1111', NULL, 'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_addon_domain`
--

DROP TABLE IF EXISTS `user_addon_domain`;
CREATE TABLE IF NOT EXISTS `user_addon_domain` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `domain` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_addon_domain_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_teaching` tinyint(4) DEFAULT NULL,
  `has_website` tinyint(4) DEFAULT NULL,
  `revenue` decimal(8,2) DEFAULT NULL,
  `teaching_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `first_name`, `last_name`, `address`, `house`, `city`, `region`, `postal_code`, `phone`, `website_link`, `already_teaching`, `has_website`, `revenue`, `teaching_field`, `created_at`, `updated_at`, `user_id`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-25 14:07:31', '2020-09-25 14:07:31', 26),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-25 14:14:23', '2020-09-25 14:14:23', 26),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-25 14:15:05', '2020-09-25 14:15:05', 26),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-25 14:15:15', '2020-09-25 14:15:15', 26),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-25 14:15:33', '2020-09-25 14:15:33', 26),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-25 14:16:06', '2020-09-25 14:16:06', 26),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-25 14:16:36', '2020-09-25 14:16:36', 26),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-25 14:16:54', '2020-09-25 14:16:54', 26),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-25 14:17:20', '2020-09-25 14:17:20', 26),
(10, 'G', 'khan', 'dhaka', '91/2 b', 'dhaka', 'mirpur', '1216', '+8801703254064', 'www.example.com', 1, 1, '2.00', '1', '2020-09-25 14:20:03', '2020-09-25 14:20:03', 27),
(11, 'G', 'khan', 'dhaka', '91/2 b', 'dhaka', 'mirpur', '1216', '+8801703254064', 'www.example.com', 1, 1, '2.00', '1', '2020-09-25 14:21:03', '2020-09-25 14:21:03', 27),
(12, 'G', 'khan', 'dhaka', '91/2 b', 'dhaka', 'mirpur', '1216', '+8801703254064', 'www.example.com', 1, 1, '2.00', '1', '2020-09-25 14:21:20', '2020-09-25 14:21:20', 27),
(13, 'G', 'khan', 'dhaka', '91/2 b', 'dhaka', 'mirpur', '1216', '+8801703254064', 'www.example.com', 1, 1, '2.00', '1', '2020-09-25 14:21:38', '2020-09-25 14:21:38', 27),
(14, 'G', 'khan', 'dhaka', '91/2 b', 'dhaka', 'mirpur', '1216', '+8801703254064', 'www.example.com', 1, 1, '2.00', '1', '2020-09-25 14:21:57', '2020-09-25 14:21:57', 27),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-25 14:32:48', '2020-09-25 14:32:48', 30),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1.00', '3', '2020-09-25 23:06:11', '2020-09-25 23:06:11', 41),
(17, 'Arif', 'Istiak', 'kalshi , mirpur', 'asd', 'Dhaka', 'mirpur', '1216', '+8801703254064', 'orangebd', 1, 0, '2.00', '2', '2020-09-28 05:03:46', '2020-09-28 05:03:46', 46),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-28 05:43:48', '2020-09-28 05:43:48', 52),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-09-28 07:52:04', '2020-09-28 07:52:04', 62),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-10-03 09:09:56', '2020-10-03 09:09:56', 64),
(21, 'Arif', 'Istiak', 'kalshi , mirpur', NULL, 'Dhaka', 'mirpur', '1216', '+8801703254064', 'orangebd', 0, 0, '0.00', '0', '2020-10-04 08:21:01', '2020-10-04 08:21:01', 72),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-10-28 09:16:42', '2020-10-28 09:16:42', 81),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-10-28 09:30:24', '2020-10-28 09:30:24', 83),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-11-18 11:01:14', '2020-11-18 11:01:14', 91),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-11-22 10:38:22', '2020-11-22 10:38:22', 92),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', '0', '2020-11-22 10:42:15', '2020-11-22 10:42:15', 93);

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

DROP TABLE IF EXISTS `user_payments`;
CREATE TABLE IF NOT EXISTS `user_payments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_of` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_payments_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`id`, `user_id`, `stripe_payment_id`, `payment_of`, `amount`, `created_at`, `updated_at`, `status`) VALUES
(11, 83, 'pi_1HoOiZI044Y0C1v5Jl83UREZ', '2020-10-17', 300.00, '2020-11-17 01:34:04', '2020-11-17 01:35:11', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
