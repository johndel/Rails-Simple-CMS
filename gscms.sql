-- phpMyAdmin SQL Dump
-- version 3.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 01, 2012 at 09:33 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.2-1ubuntu4.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gscms`
--

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'default', '2012-01-15 21:59:49', '2012-01-15 21:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `meta_description`, `content`, `permalink`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Demo Homepage', 'titlos', '', '<h1>Hi I am the demo homepage!</h1>\n<p>\nGo to <a href="/admin/login">Admin Panel</a>, login and change me. Thank you for using me!\n</p>', 'homepage', 1, '2012-01-15 21:59:49', '2012-01-19 13:50:58'),
(3, 'test', 'ki allo test', 'rfewfw', 'xmmm', 'demo2', 1, '2012-01-16 10:23:52', '2012-01-18 12:44:40'),
(4, 'xmxm', 'xmxm', 'xmxm', 'xmxm', 'xmxmzxc', 1, '2012-01-19 13:52:43', '2012-01-19 17:40:04'),
(5, 'test23', 'test', 'test', 'test test', 'test234', 1, '2012-07-29 15:40:25', '2012-07-29 15:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `page_menu_mappings`
--

CREATE TABLE IF NOT EXISTS `page_menu_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `page_position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_menu_mappings_on_menu_id` (`menu_id`),
  KEY `index_page_menu_mappings_on_page_id` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `page_menu_mappings`
--

INSERT INTO `page_menu_mappings` (`id`, `page_id`, `menu_id`, `page_position`, `created_at`, `updated_at`) VALUES
(5, 4, 1, 1, '2012-01-19 13:53:05', '2012-01-19 13:53:05'),
(6, 1, 1, 3, '2012-01-19 18:13:57', '2012-01-19 18:13:57'),
(7, 3, 1, 2, '2012-07-18 14:42:03', '2012-07-18 14:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20111116145957'),
('20111116150414'),
('20111116151253'),
('20111203103544'),
('20111223223320'),
('20111224014852'),
('20111229080546'),
('20120720174220'),
('20120720175204'),
('20120721093544'),
('20120721171040');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(2, 'homepage', '1', '2012-01-15 21:59:49', '2012-01-16 10:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `upload_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_file_size` int(11) DEFAULT NULL,
  `upload_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `created_at`, `updated_at`, `upload_file_name`, `upload_content_type`, `upload_file_size`, `upload_updated_at`) VALUES
(29, '2012-10-01 18:29:52', '2012-10-01 18:29:52', 'fgerrr.jpg', 'image/jpeg', 43347, '2012-10-01 18:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'example@example.com', '$2a$10$6yztCCfy40Qr9bEDOtapdeWwgV3H9i5LtABdtTbZoZnBLpe3ObxTG', 'jVGmJZjBVx5Gz9HxE9rH', '2011-12-23 08:20:52', NULL, 51, '2012-10-01 18:33:04', '2012-09-28 16:39:47', '192.168.1.102', '192.168.1.102', '2011-12-04 00:25:29', '2012-10-01 18:33:04');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
