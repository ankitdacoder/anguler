-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 10, 2015 at 10:04 AM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `angulara`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_name_unique` (`name`),
  UNIQUE KEY `employees_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `contact_number`, `position`, `created_at`, `updated_at`) VALUES
(3, 'Anki Verma', 'ankit.verma0208@gmail.com', '9981138229', 'Ux Developer', '2015-12-07 07:06:14', '2015-12-07 07:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_12_07_083429_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'ankit verma', 'ankit@gmail.com', '$2y$10$70tzf7o7tR0qQvn2rSonUOd8hDV7cIetzuZrszJKi1MsXtHptLJei', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'ankit verma', 'ankit1@gmail.com', '$2y$10$QlqvV0/uxIHYsFzxSoqnP.b9TJ/DDNrU8MddINA2p/v6vowiySdQu', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Ryan Chenkie', 'ryanchenkie@gmail.com', '$2y$10$MzRxSlGYob4spApf/0WSmuhLa2cy2TzCwTGd9e723g0lyBlXNuC..', NULL, '2015-12-08 04:03:54', '2015-12-08 04:03:54'),
(6, 'Chris Sevilleja', 'chris@scotch.io', '$2y$10$7PrLZq9JgxQV6g7fwncE6uJW9dcn.0OnC9u/qnR.rQYmww6Zn21Nq', NULL, '2015-12-08 04:03:54', '2015-12-08 04:03:54'),
(7, 'Holly Lloyd', 'holly@scotch.io', '$2y$10$RT99Sbkm5uJS94Q97g7FxuQPXaIttR57gAdoPaH2KDJdD4MwsKu7.', NULL, '2015-12-08 04:03:54', '2015-12-08 04:03:54'),
(8, 'Adnan Kukic', 'adnan@scotch.io', '$2y$10$QS4j/ugUXwdPaT/gDiqSXeunpEENCwwbc8QMyTUVj.cE5PHSyYUxG', NULL, '2015-12-08 04:03:54', '2015-12-08 04:03:54');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
