-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2016 at 07:39 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'a'),
(2, 'b'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `manager_id` int(11) DEFAULT NULL,
  `dept_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `manager_id`, `dept_id`) VALUES
(1, 21, 4),
(2, 66, 3),
(3, 43, 5),
(4, 1, 5),
(5, 7, 3),
(6, 57, 2),
(7, 4, 4),
(8, 67, 5),
(9, 48, 5),
(10, 94, 3),
(11, 48, 3),
(12, 92, 4),
(13, 68, 4),
(14, 45, 4),
(15, 4, 1),
(16, 12, 5),
(17, 78, 5),
(18, 3, 1),
(19, 13, 3),
(20, 79, 1),
(21, 75, 1),
(22, 97, 2),
(23, 98, 3),
(24, 67, 5),
(25, 67, 3),
(26, 73, 2),
(27, 24, 4),
(28, 65, 2),
(29, 17, 4),
(30, 71, 4),
(31, 71, 1),
(32, 66, 1),
(33, 4, 2),
(34, 98, 1),
(35, 74, 2),
(36, 43, 5),
(37, 19, 5),
(38, 84, 5),
(39, 80, 3),
(40, 42, 5),
(41, 99, 1),
(42, 25, 3),
(43, 21, 2),
(44, 70, 1),
(45, 96, 5),
(46, 30, 3),
(47, 66, 5),
(48, 60, 1),
(49, 27, 5),
(50, 83, 4),
(51, 8, 3),
(52, 59, 5),
(53, 82, 1),
(54, 2, 2),
(55, 78, 4),
(56, 98, 4),
(57, 85, 4),
(58, 86, 5),
(59, 36, 2),
(60, 31, 5),
(61, 100, 4),
(62, 38, 1),
(63, 21, 4),
(64, 42, 5),
(65, 57, 4),
(66, 28, 1),
(67, 79, 3),
(68, 44, 5),
(69, 81, 4),
(70, 57, 3),
(71, 17, 3),
(72, 62, 3),
(73, 72, 2),
(74, 1, 2),
(75, 15, 2),
(76, 3, 4),
(77, 66, 4),
(78, 46, 1),
(79, 29, 1),
(80, 78, 3),
(81, 43, 2),
(82, 72, 3),
(83, 41, 1),
(84, 15, 1),
(85, 3, 2),
(86, 51, 3),
(87, 51, 2),
(88, 50, 1),
(89, 68, 3),
(90, 73, 4),
(91, 24, 3),
(92, 95, 2),
(93, 78, 1),
(94, 13, 5),
(95, 4, 3),
(96, 10, 2),
(97, 57, 2),
(98, 40, 1),
(99, 77, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `name`) VALUES
(1, 'ONaVSizT2Y'),
(2, 'YKBjvebAGi'),
(3, 'xUIcgKonRz'),
(4, '0eVSB8vDPt'),
(5, '2LQtANKyev'),
(6, 'wS8WPmKNcO'),
(7, 'VHeLFv3iC5'),
(8, '6HmWBMKrGz'),
(9, 'DIeA5Rt8V2'),
(10, '0J6W8oASZ7'),
(11, 'Zro6FGh05v'),
(12, 'z9ySQIB1Ar'),
(13, '8IrQ0YdMO4'),
(14, 'n5mh9viSF6'),
(15, 'bTqdUYcx4h'),
(16, 'AIJRQxwqCm'),
(17, 'MlrW3B0Had'),
(18, 'f5J3hs1bdv'),
(19, 'LkCyEYi5WU'),
(20, 'FoWaOumqR5'),
(21, 'laQK2dWnoH'),
(22, '4CQVsFyKR0'),
(23, '5SxZ3JVYa7'),
(24, '5uHAYEJ0tg'),
(25, 'mbzwREIejv'),
(26, 'abDqWGBCyX'),
(27, 'cdYU2qlVnx'),
(28, 'A4Sm3kKUa8'),
(29, 'eiGJpF7HZm'),
(30, 'oM7Wq4sOYZ'),
(31, 'UhyeRJq48G'),
(32, 'Onei2RmHrC'),
(33, 'wYnKPQg5Mf'),
(34, 'azKwSejLHI'),
(35, 'PHJd0X5ifR'),
(36, 'bxG1cP0DoI'),
(37, '5nWqpgty4z'),
(38, 'Co24lSVBER'),
(39, 'rco0LkG6Db'),
(40, 'u0KgB6UjXG'),
(41, 'I86mSjxM0w'),
(42, 'UjGfl0xz67'),
(43, '7MfRYnVq3p'),
(44, 'rEeP0ySqNh'),
(45, 'tpb0n14mq5'),
(46, 'iT74wLDFq2'),
(47, '0qAfET7Kpg'),
(48, 'XNaW5h3Ye4'),
(49, 'sbj7NHicBz'),
(50, 'n8whmP2kdJ'),
(51, 'yPL5th4QDK'),
(52, 'gt6w1RZfs5'),
(53, 'pvq3UiwAcD'),
(54, 'gYUaCPVkLe'),
(55, 'eSqcBz4AuY'),
(56, 'ypkvirgsZd'),
(57, 'o2OW9Us45R'),
(58, 'tOc837NWCG'),
(59, 'IOKNSyi54V'),
(60, 'vxGNRyiOcF'),
(61, 'OCirXfJZlE'),
(62, 'XWIajHuOce'),
(63, 'ks2bO08K7J'),
(64, 'e3uY91Vtko'),
(65, 'r2K1jGpWLQ'),
(66, 'yQXsROrv3Z'),
(67, '4TCIDbglKs'),
(68, 'gq8eOVGnc4'),
(69, 'vXB2m9eZ8N'),
(70, 'EY0M3IqNh2'),
(71, 'cEzkUZIsAd'),
(72, 'x95zOdHk8f'),
(73, 'HtZSkz9Oyc'),
(74, 'MTLv54HpoK'),
(75, 'YcA9GTp30y'),
(76, 'PJ6b1TWesU'),
(77, 'O1qFQXbgGK'),
(78, 'DnRxQo0Yq6'),
(79, '46zmaGpwRQ'),
(80, 'bBUFWeY4Dv'),
(81, 'vKpdlQLH9k'),
(82, '53X4ImKtqL'),
(83, 'lmb7vzC1QK'),
(84, 'PpeYcEydxl'),
(85, 'mw7nkGtofh'),
(86, 'WqaA7BodUP'),
(87, 'lx75a4YE3C'),
(88, 'PxSYaHyOL6'),
(89, 'N4OJSMneKp'),
(90, 'zYOMT0uCZh'),
(91, 'ldQqrnRSDT'),
(92, 'nOpk8Yu6qP'),
(93, 'kanGHcizwp'),
(94, 'URTpVIg2ou'),
(95, '2dS6DrnbJs'),
(96, '8xagshnXwQ'),
(97, 'i0lGf1ACSD'),
(98, 'lFrG7ME4vk'),
(99, 'qvetgMlWdu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`,`dept_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;