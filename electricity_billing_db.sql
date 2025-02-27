-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 27, 2025 at 04:50 AM
-- Server version: 8.0.39
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricity_billing_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `user_id` int NOT NULL,
  `file_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `file_data` blob NOT NULL,
  `year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`user_id`, `file_name`, `file_data`, `year`) VALUES
(1, 'customer_1_2024.csv', 0x6d6f6e74682c756e69745f636f6e73756d65640d0a4a616e756172792c3430320d0a46656272756172792c3439300d0a4d617263682c3134380d0a417072696c2c3137340d0a4d61792c3433390d0a4a756e652c3338310d0a4a756c792c3436320d0a4175677573742c3137340d0a53657074656d6265722c3230390d0a4f63746f6265722c3131300d0a4e6f76656d6265722c3230360d0a446563656d6265722c3236310d0a, 2024),
(2, 'customer_2_2024.csv', 0x6d6f6e74682c756e69745f636f6e73756d65640d0a4a616e756172792c3235390d0a46656272756172792c3330340d0a4d617263682c3131360d0a417072696c2c3132390d0a4d61792c3336390d0a4a756e652c3434320d0a4a756c792c3332350d0a4175677573742c3336380d0a53657074656d6265722c3138310d0a4f63746f6265722c3436350d0a4e6f76656d6265722c3136350d0a446563656d6265722c3438300d0a, 2024),
(3, 'customer_3_2024.csv', 0x6d6f6e74682c756e69745f636f6e73756d65640d0a4a616e756172792c3130380d0a46656272756172792c3134390d0a4d617263682c3430370d0a417072696c2c3337320d0a4d61792c3333390d0a4a756e652c3233340d0a4a756c792c3132350d0a4175677573742c3237320d0a53657074656d6265722c3136300d0a4f63746f6265722c3130310d0a4e6f76656d6265722c3332360d0a446563656d6265722c3330340d0a, 2024),
(4, 'customer_4_2024.csv', 0x6d6f6e74682c756e69745f636f6e73756d65640d0a4a616e756172792c3137350d0a46656272756172792c3134380d0a4d617263682c3232370d0a417072696c2c3235350d0a4d61792c3236380d0a4a756e652c3231300d0a4a756c792c3333340d0a4175677573742c3239330d0a53657074656d6265722c3331360d0a4f63746f6265722c3433350d0a4e6f76656d6265722c3236390d0a446563656d6265722c3437320d0a, 2024),
(5, 'customer_5_2024.csv', 0x6d6f6e74682c756e69745f636f6e73756d65640d0a4a616e756172792c3232390d0a46656272756172792c3134350d0a4d617263682c3435340d0a417072696c2c3330310d0a4d61792c3238390d0a4a756e652c3135390d0a4a756c792c3137330d0a4175677573742c3435360d0a53657074656d6265722c3231340d0a4f63746f6265722c3337370d0a4e6f76656d6265722c3432330d0a446563656d6265722c3435330d0a, 2024);

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

DROP TABLE IF EXISTS `complain`;
CREATE TABLE IF NOT EXISTS `complain` (
  `user_id` int NOT NULL,
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `c_status` varchar(500) NOT NULL,
  `c_desc` text NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`user_id`, `c_id`, `c_title`, `c_status`, `c_desc`) VALUES
(1, 1, 'bot complain', 'pending', 'lights are not working properly,hence units consumed are more,etc...'),
(1, 3, 'dgsfguygfuyds', 'pending', 'cghjgjgjslscxjcbjhcj');

-- --------------------------------------------------------

--
-- Table structure for table `current_year_bills`
--

DROP TABLE IF EXISTS `current_year_bills`;
CREATE TABLE IF NOT EXISTS `current_year_bills` (
  `user_id` int NOT NULL,
  `bill_id` varchar(250) DEFAULT NULL,
  `month` varchar(100) NOT NULL,
  `unit_consumed` int NOT NULL,
  `amount` float DEFAULT NULL,
  `status` varchar(250) NOT NULL DEFAULT 'paid',
  `bill_date` date NOT NULL DEFAULT '2025-11-06'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `current_year_bills`
--

INSERT INTO `current_year_bills` (`user_id`, `bill_id`, `month`, `unit_consumed`, `amount`, `status`, `bill_date`) VALUES
(1, 'B121101', 'January', 125, NULL, 'paid', '2025-11-06'),
(1, 'B121102', 'February', 364, NULL, 'paid', '2025-11-06'),
(1, 'B121103', 'March', 287, NULL, 'paid', '2025-11-06'),
(1, 'B121104', 'April', 253, NULL, 'paid', '2025-11-06'),
(1, 'B121105', 'May', 368, NULL, 'paid', '2025-11-06'),
(1, 'B121106', 'June', 253, NULL, 'paid', '2025-11-06'),
(1, 'B121107', 'July', 222, NULL, 'paid', '2025-11-06'),
(1, 'B121108', 'August', 406, NULL, 'paid', '2025-11-06'),
(1, 'B121109', 'September', 121, NULL, 'paid', '2025-11-06'),
(1, 'B121110', 'October', 207, NULL, 'paid', '2025-11-06'),
(2, 'B121111', 'January', 474, NULL, 'paid', '2025-11-06'),
(2, 'B121112', 'February', 166, NULL, 'paid', '2025-11-06'),
(2, 'B121113', 'March', 189, NULL, 'paid', '2025-11-06'),
(2, 'B121114', 'April', 436, NULL, 'paid', '2025-11-06'),
(2, 'B121115', 'May', 379, NULL, 'paid', '2025-11-06'),
(2, 'B121116', 'June', 151, NULL, 'paid', '2025-11-06'),
(2, 'B121117', 'July', 288, NULL, 'paid', '2025-11-06'),
(2, 'B121118', 'August', 300, NULL, 'paid', '2025-11-06'),
(2, 'B121119', 'September', 493, NULL, 'paid', '2025-11-06'),
(2, 'B121120', 'October', 257, NULL, 'paid', '2025-11-06'),
(3, 'B121121', 'January', 258, NULL, 'paid', '2025-11-06'),
(3, 'B121122', 'February', 469, NULL, 'paid', '2025-11-06'),
(3, 'B121123', 'March', 233, NULL, 'paid', '2025-11-06'),
(3, 'B121124', 'April', 143, NULL, 'paid', '2025-11-06'),
(3, 'B121125', 'May', 325, NULL, 'paid', '2025-11-06'),
(3, 'B121126', 'June', 149, NULL, 'paid', '2025-11-06'),
(3, 'B121127', 'July', 280, NULL, 'paid', '2025-11-06'),
(3, 'B121128', 'August', 221, NULL, 'paid', '2025-11-06'),
(3, 'B121129', 'September', 162, NULL, 'paid', '2025-11-06'),
(3, 'B121130', 'October', 375, NULL, 'paid', '2025-11-06'),
(4, 'B121131', 'January', 296, NULL, 'paid', '2025-11-06'),
(4, 'B121132', 'February', 287, NULL, 'paid', '2025-11-06'),
(4, 'B121133', 'March', 163, NULL, 'paid', '2025-11-06'),
(4, 'B121134', 'April', 468, NULL, 'paid', '2025-11-06'),
(4, 'B121135', 'May', 318, NULL, 'paid', '2025-11-06'),
(4, 'B121136', 'June', 444, NULL, 'paid', '2025-11-06'),
(4, 'B121137', 'July', 174, NULL, 'paid', '2025-11-06'),
(4, 'B121138', 'August', 424, NULL, 'paid', '2025-11-06'),
(4, 'B121139', 'September', 262, NULL, 'paid', '2025-11-06'),
(4, 'B121140', 'October', 177, NULL, 'paid', '2025-11-06'),
(5, 'B121141', 'January', 197, NULL, 'paid', '2025-11-06'),
(5, 'B121142', 'February', 205, NULL, 'paid', '2025-11-06'),
(5, 'B121143', 'March', 179, NULL, 'paid', '2025-11-06'),
(5, 'B121144', 'April', 143, NULL, 'paid', '2025-11-06'),
(5, 'B121145', 'May', 317, NULL, 'paid', '2025-11-06'),
(5, 'B121146', 'June', 231, NULL, 'paid', '2025-11-06'),
(5, 'B121147', 'July', 304, NULL, 'paid', '2025-11-06'),
(5, 'B121148', 'August', 267, NULL, 'paid', '2025-11-06'),
(5, 'B121149', 'September', 207, NULL, 'paid', '2025-11-06'),
(5, 'B121150', 'October', 364, NULL, 'paid', '2025-11-06'),
(6, 'B121151', 'January', 219, NULL, 'paid', '2025-11-06'),
(6, 'B121152', 'February', 271, NULL, 'paid', '2025-11-06'),
(6, 'B121153', 'March', 493, NULL, 'paid', '2025-11-06'),
(6, 'B121154', 'April', 197, NULL, 'paid', '2025-11-06'),
(6, 'B121155', 'May', 581, NULL, 'paid', '2025-11-06'),
(6, 'B121156', 'June', 519, NULL, 'paid', '2025-11-06'),
(6, 'B121157', 'July', 515, NULL, 'paid', '2025-11-06'),
(6, 'B121158', 'August', 516, NULL, 'paid', '2025-11-06'),
(6, 'B121159', 'September', 120, NULL, 'paid', '2025-11-06'),
(6, 'B121160', 'October', 168, NULL, 'paid', '2025-11-06'),
(7, 'B121161', 'January', 581, NULL, 'paid', '2025-11-06'),
(7, 'B121162', 'February', 458, NULL, 'paid', '2025-11-06'),
(7, 'B121163', 'March', 405, NULL, 'paid', '2025-11-06'),
(7, 'B121164', 'April', 592, NULL, 'paid', '2025-11-06'),
(7, 'B121165', 'May', 184, NULL, 'paid', '2025-11-06'),
(7, 'B121166', 'June', 383, NULL, 'paid', '2025-11-06'),
(7, 'B121167', 'July', 208, NULL, 'paid', '2025-11-06'),
(7, 'B121168', 'August', 275, NULL, 'paid', '2025-11-06'),
(7, 'B121169', 'September', 229, NULL, 'paid', '2025-11-06'),
(7, 'B121170', 'October', 120, NULL, 'paid', '2025-11-06'),
(8, 'B121171', 'January', 201, NULL, 'paid', '2025-11-06'),
(8, 'B121172', 'February', 476, NULL, 'paid', '2025-11-06'),
(8, 'B121173', 'March', 121, NULL, 'paid', '2025-11-06'),
(8, 'B121174', 'April', 176, NULL, 'paid', '2025-11-06'),
(8, 'B121175', 'May', 497, NULL, 'paid', '2025-11-06'),
(8, 'B121176', 'June', 134, NULL, 'paid', '2025-11-06'),
(8, 'B121177', 'July', 247, NULL, 'paid', '2025-11-06'),
(8, 'B121178', 'August', 178, NULL, 'paid', '2025-11-06'),
(8, 'B121179', 'September', 487, NULL, 'paid', '2025-11-06'),
(8, 'B121180', 'October', 389, NULL, 'paid', '2025-11-06'),
(9, 'B121181', 'January', 272, NULL, 'paid', '2025-11-06'),
(9, 'B121182', 'February', 505, NULL, 'paid', '2025-11-06'),
(9, 'B121183', 'March', 249, NULL, 'paid', '2025-11-06'),
(9, 'B121184', 'April', 582, NULL, 'paid', '2025-11-06'),
(9, 'B121185', 'May', 389, NULL, 'paid', '2025-11-06'),
(9, 'B121186', 'June', 457, NULL, 'paid', '2025-11-06'),
(9, 'B121187', 'July', 534, NULL, 'paid', '2025-11-06'),
(9, 'B121188', 'August', 275, NULL, 'paid', '2025-11-06'),
(9, 'B121189', 'September', 277, NULL, 'paid', '2025-11-06'),
(9, 'B121190', 'October', 554, NULL, 'paid', '2025-11-06'),
(10, 'B121191', 'January', 588, NULL, 'paid', '2025-11-06'),
(10, 'B121192', 'February', 207, NULL, 'paid', '2025-11-06'),
(10, 'B121193', 'March', 572, NULL, 'paid', '2025-11-06'),
(10, 'B121194', 'April', 206, NULL, 'paid', '2025-11-06'),
(10, 'B121195', 'May', 210, NULL, 'paid', '2025-11-06'),
(10, 'B121196', 'June', 413, NULL, 'paid', '2025-11-06'),
(10, 'B121197', 'July', 151, NULL, 'paid', '2025-11-06'),
(10, 'B121198', 'August', 227, NULL, 'paid', '2025-11-06'),
(10, 'B121199', 'September', 341, NULL, 'paid', '2025-11-06'),
(10, 'B121200', 'October', 199, NULL, 'paid', '2025-11-06'),
(11, 'B121201', 'January', 467, NULL, 'paid', '2025-11-06'),
(11, 'B121202', 'February', 316, NULL, 'paid', '2025-11-06'),
(11, 'B121203', 'March', 540, NULL, 'paid', '2025-11-06'),
(11, 'B121204', 'April', 121, NULL, 'paid', '2025-11-06'),
(11, 'B121205', 'May', 599, NULL, 'paid', '2025-11-06'),
(11, 'B121206', 'June', 334, NULL, 'paid', '2025-11-06'),
(11, 'B121207', 'July', 216, NULL, 'paid', '2025-11-06'),
(11, 'B121208', 'August', 600, NULL, 'paid', '2025-11-06'),
(11, 'B121209', 'September', 496, NULL, 'paid', '2025-11-06'),
(11, 'B121210', 'October', 349, NULL, 'paid', '2025-11-06'),
(12, 'B121211', 'January', 277, NULL, 'paid', '2025-11-06'),
(12, 'B121212', 'February', 324, NULL, 'paid', '2025-11-06'),
(12, 'B121213', 'March', 495, NULL, 'paid', '2025-11-06'),
(12, 'B121214', 'April', 594, NULL, 'paid', '2025-11-06'),
(12, 'B121215', 'May', 138, NULL, 'paid', '2025-11-06'),
(12, 'B121216', 'June', 155, NULL, 'paid', '2025-11-06'),
(12, 'B121217', 'July', 369, NULL, 'paid', '2025-11-06'),
(12, 'B121218', 'August', 341, NULL, 'paid', '2025-11-06'),
(12, 'B121219', 'September', 577, NULL, 'paid', '2025-11-06'),
(12, 'B121220', 'October', 204, NULL, 'paid', '2025-11-06'),
(13, 'B121221', 'January', 575, NULL, 'paid', '2025-11-06'),
(13, 'B121222', 'February', 502, NULL, 'paid', '2025-11-06'),
(13, 'B121223', 'March', 227, NULL, 'paid', '2025-11-06'),
(13, 'B121224', 'April', 594, NULL, 'paid', '2025-11-06'),
(13, 'B121225', 'May', 290, NULL, 'paid', '2025-11-06'),
(13, 'B121226', 'June', 522, NULL, 'paid', '2025-11-06'),
(13, 'B121227', 'July', 213, NULL, 'paid', '2025-11-06'),
(13, 'B121228', 'August', 313, NULL, 'paid', '2025-11-06'),
(13, 'B121229', 'September', 439, NULL, 'paid', '2025-11-06'),
(13, 'B121230', 'October', 208, NULL, 'paid', '2025-11-06'),
(14, 'B121231', 'January', 386, NULL, 'paid', '2025-11-06'),
(14, 'B121232', 'February', 194, NULL, 'paid', '2025-11-06'),
(14, 'B121233', 'March', 266, NULL, 'paid', '2025-11-06'),
(14, 'B121234', 'April', 526, NULL, 'paid', '2025-11-06'),
(14, 'B121235', 'May', 528, NULL, 'paid', '2025-11-06'),
(14, 'B121236', 'June', 576, NULL, 'paid', '2025-11-06'),
(14, 'B121237', 'July', 457, NULL, 'paid', '2025-11-06'),
(14, 'B121238', 'August', 175, NULL, 'paid', '2025-11-06'),
(14, 'B121239', 'September', 205, NULL, 'paid', '2025-11-06'),
(14, 'B121240', 'October', 306, NULL, 'paid', '2025-11-06'),
(15, 'B121241', 'January', 410, NULL, 'paid', '2025-11-06'),
(15, 'B121242', 'February', 585, NULL, 'paid', '2025-11-06'),
(15, 'B121243', 'March', 316, NULL, 'paid', '2025-11-06'),
(15, 'B121244', 'April', 463, NULL, 'paid', '2025-11-06'),
(15, 'B121245', 'May', 321, NULL, 'paid', '2025-11-06'),
(15, 'B121246', 'June', 519, NULL, 'paid', '2025-11-06'),
(15, 'B121247', 'July', 541, NULL, 'paid', '2025-11-06'),
(15, 'B121248', 'August', 211, NULL, 'paid', '2025-11-06'),
(15, 'B121249', 'September', 383, NULL, 'paid', '2025-11-06'),
(15, 'B121250', 'October', 349, NULL, 'paid', '2025-11-06'),
(16, 'B121251', 'January', 129, NULL, 'paid', '2025-11-06'),
(16, 'B121252', 'February', 418, NULL, 'paid', '2025-11-06'),
(16, 'B121253', 'March', 216, NULL, 'paid', '2025-11-06'),
(16, 'B121254', 'April', 368, NULL, 'paid', '2025-11-06'),
(16, 'B121255', 'May', 450, NULL, 'paid', '2025-11-06'),
(16, 'B121256', 'June', 363, NULL, 'paid', '2025-11-06'),
(16, 'B121257', 'July', 292, NULL, 'paid', '2025-11-06'),
(16, 'B121258', 'August', 580, NULL, 'paid', '2025-11-06'),
(16, 'B121259', 'September', 529, NULL, 'paid', '2025-11-06'),
(16, 'B121260', 'October', 330, NULL, 'paid', '2025-11-06'),
(17, 'B121261', 'January', 113, NULL, 'paid', '2025-11-06'),
(17, 'B121262', 'February', 399, NULL, 'paid', '2025-11-06'),
(17, 'B121263', 'March', 541, NULL, 'paid', '2025-11-06'),
(17, 'B121264', 'April', 500, NULL, 'paid', '2025-11-06'),
(17, 'B121265', 'May', 411, NULL, 'paid', '2025-11-06'),
(17, 'B121266', 'June', 182, NULL, 'paid', '2025-11-06'),
(17, 'B121267', 'July', 420, NULL, 'paid', '2025-11-06'),
(17, 'B121268', 'August', 570, NULL, 'paid', '2025-11-06'),
(17, 'B121269', 'September', 516, NULL, 'paid', '2025-11-06'),
(17, 'B121270', 'October', 202, NULL, 'paid', '2025-11-06'),
(18, 'B121271', 'January', 183, NULL, 'paid', '2025-11-06'),
(18, 'B121272', 'February', 522, NULL, 'paid', '2025-11-06'),
(18, 'B121273', 'March', 334, NULL, 'paid', '2025-11-06'),
(18, 'B121274', 'April', 444, NULL, 'paid', '2025-11-06'),
(18, 'B121275', 'May', 450, NULL, 'paid', '2025-11-06'),
(18, 'B121276', 'June', 170, NULL, 'paid', '2025-11-06'),
(18, 'B121277', 'July', 201, NULL, 'paid', '2025-11-06'),
(18, 'B121278', 'August', 369, NULL, 'paid', '2025-11-06'),
(18, 'B121279', 'September', 505, NULL, 'paid', '2025-11-06'),
(18, 'B121280', 'October', 361, NULL, 'paid', '2025-11-06'),
(19, 'B121281', 'January', 314, NULL, 'paid', '2025-11-06'),
(19, 'B121282', 'February', 115, NULL, 'paid', '2025-11-06'),
(19, 'B121283', 'March', 543, NULL, 'paid', '2025-11-06'),
(19, 'B121284', 'April', 296, NULL, 'paid', '2025-11-06'),
(19, 'B121285', 'May', 554, NULL, 'paid', '2025-11-06'),
(19, 'B121286', 'June', 505, NULL, 'paid', '2025-11-06'),
(19, 'B121287', 'July', 369, NULL, 'paid', '2025-11-06'),
(19, 'B121288', 'August', 551, NULL, 'paid', '2025-11-06'),
(19, 'B121289', 'September', 282, NULL, 'paid', '2025-11-06'),
(19, 'B121290', 'October', 462, NULL, 'paid', '2025-11-06'),
(20, 'B121291', 'January', 342, NULL, 'paid', '2025-11-06'),
(20, 'B121292', 'February', 175, NULL, 'paid', '2025-11-06'),
(20, 'B121293', 'March', 429, NULL, 'paid', '2025-11-06'),
(20, 'B121294', 'April', 425, NULL, 'paid', '2025-11-06'),
(20, 'B121295', 'May', 207, NULL, 'paid', '2025-11-06'),
(20, 'B121296', 'June', 174, NULL, 'paid', '2025-11-06'),
(20, 'B121297', 'July', 443, NULL, 'paid', '2025-11-06'),
(20, 'B121298', 'August', 225, NULL, 'paid', '2025-11-06'),
(20, 'B121299', 'September', 362, NULL, 'paid', '2025-11-06'),
(20, 'B121300', 'October', 241, NULL, 'paid', '2025-11-06'),
(1, 'B1211301', 'November', 101, 1560, 'pending', '2025-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `meters`
--

DROP TABLE IF EXISTS `meters`;
CREATE TABLE IF NOT EXISTS `meters` (
  `user_id` int NOT NULL,
  `meter_number` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `meter_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `fixed_charges` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `meters`
--

INSERT INTO `meters` (`user_id`, `meter_number`, `meter_type`, `fixed_charges`) VALUES
(1, 'MN-1000', 'residential', 550),
(2, 'MN-1001', 'commercial', 675),
(3, 'MN-1002', 'commercial', 675),
(4, 'MN-1003', 'residential', 550),
(5, 'MN-1004', 'residential', 550),
(6, 'MN-1005', 'residential', 550),
(7, 'MN-1006', 'industrial', 680),
(8, 'MN-1007', 'commercial', 675),
(9, 'MN-1008', 'industrial', 680),
(10, 'MN-1009', 'industrial', 680),
(11, 'MN-1010', 'industrial', 680),
(12, 'MN-1011', 'commercial', 675),
(13, 'MN-1012', 'residential', 550),
(14, 'MN-1013', 'residential', 550),
(15, 'MN-1014', 'industrial', 680),
(16, 'MN-1015', 'residential', 550),
(17, 'MN-1016', 'commercial', 675),
(18, 'MN-1017', 'commercial', 675),
(19, 'MN-1018', 'residential', 550),
(20, 'MN-1019', 'residential', 550),
(21, 'MN-1020', 'residential', 550),
(22, 'MN-1021', 'industrial', 680),
(23, 'MN-1022', 'commercial', 675),
(24, 'MN-1023', 'industrial', 680),
(25, 'MN-1024', 'industrial', 680),
(26, 'MN-1025', 'industrial', 680),
(27, 'MN-1026', 'commercial', 675),
(28, 'MN-1027', 'residential', 550),
(29, 'MN-1028', 'residential', 550),
(30, 'MN-1029', 'industrial', 680),
(31, 'MN-1030', 'residential', 550),
(32, 'MN-1031', 'commercial', 675),
(33, 'MN-1032', 'commercial', 675),
(34, 'MN-1033', 'residential', 550),
(35, 'MN-1034', 'residential', 550),
(36, 'MN-1035', 'residential', 550),
(37, 'MN-1036', 'industrial', 680),
(38, 'MN-1037', 'commercial', 675),
(39, 'MN-1038', 'industrial', 680),
(40, 'MN-1039', 'industrial', 680),
(41, 'MN-1040', 'industrial', 680),
(42, 'MN-1041', 'commercial', 675),
(43, 'MN-1042', 'residential', 550),
(44, 'MN-1043', 'residential', 550),
(45, 'MN-1044', 'industrial', 680);

-- --------------------------------------------------------

--
-- Table structure for table `meter_readings`
--

DROP TABLE IF EXISTS `meter_readings`;
CREATE TABLE IF NOT EXISTS `meter_readings` (
  `user_id` int NOT NULL,
  `past_reading` int NOT NULL,
  `current_reading` int NOT NULL,
  `reading_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `meter_readings`
--

INSERT INTO `meter_readings` (`user_id`, `past_reading`, `current_reading`, `reading_date`) VALUES
(3, 2660, 2757, '2025-10-11'),
(4, 2620, 2672, '2025-10-09'),
(5, 4062, 4225, '2025-10-27'),
(6, 1991, 2068, '2025-10-12'),
(7, 1001, 1209, '2025-10-12'),
(8, 3614, 3782, '2025-10-21'),
(9, 4327, 4442, '2025-10-15'),
(10, 4335, 4433, '2025-10-07'),
(11, 1405, 1523, '2025-10-06'),
(12, 2246, 2522, '2025-10-12'),
(13, 851, 1024, '2025-10-06'),
(14, 4177, 4344, '2025-10-19'),
(15, 2206, 2424, '2025-10-17'),
(16, 856, 1091, '2025-10-27'),
(17, 875, 1167, '2025-10-05'),
(18, 4346, 4616, '2025-10-07'),
(19, 2452, 2682, '2025-10-13'),
(20, 3625, 3835, '2025-10-11'),
(21, 3230, 3403, '2025-10-25'),
(22, 3871, 3937, '2025-10-13'),
(23, 2547, 2611, '2025-10-18'),
(24, 3006, 3110, '2025-10-06'),
(25, 4795, 5018, '2025-10-10'),
(26, 3664, 3756, '2025-10-20'),
(27, 4499, 4661, '2025-10-25'),
(28, 3477, 3577, '2025-10-11'),
(29, 1568, 1835, '2025-10-23'),
(30, 2916, 3126, '2025-10-07'),
(31, 1383, 1545, '2025-10-13'),
(32, 2848, 2999, '2025-10-07'),
(33, 2676, 2729, '2025-10-29'),
(34, 3615, 3768, '2025-10-30'),
(35, 4392, 4604, '2025-10-08'),
(36, 2240, 2327, '2025-10-15'),
(37, 2071, 2194, '2025-10-05'),
(38, 2100, 2175, '2025-10-05'),
(39, 1474, 1740, '2025-10-17'),
(40, 1989, 2124, '2025-10-14'),
(41, 3693, 3780, '2025-10-06'),
(42, 1276, 1475, '2025-10-09'),
(43, 3063, 3349, '2025-10-23'),
(44, 3915, 4102, '2025-10-18'),
(2, 4067, 4200, '2025-11-06'),
(1, 5896, 5997, '2025-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `user_id` int NOT NULL,
  `amount` float NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`user_id`, `amount`, `status`) VALUES
(1, 2560, 'pending'),
(1, 2550, 'pending'),
(1, 2550, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` text,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mail_id` varchar(1000) NOT NULL,
  `contact_no` bigint NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `full_name`, `address`, `role`, `mail_id`, `contact_no`) VALUES
(1, 'user_2', 'pass124', 'User 2', 'Address 2', 'customer', 's.k.dudhiyawala@gmail.com', 9896541235),
(2, 'user_3', 'pass125', 'User 3', 'Address 3', 'customer', 'randombot3@example.com', 9896541235),
(3, 'user_4', 'pass126', 'User 4', 'Address 4', 'customer', 'randombot4@example.com', 9896541235),
(4, 'user_5', 'pass127', 'User 5', 'Address 5', 'customer', 'randombot5@example.com', 9896541235),
(5, 'user_6', 'pass128', 'User 6', 'Address 6', 'customer', 'randombot6@example.com', 9896541235),
(6, 'user_7', 'pass129', 'User 7', 'Address 7', 'customer', 'randombot7@example.com', 9896541235),
(7, 'user_8', 'pass130', 'User 8', 'Address 8', 'customer', 'randombot8@example.com', 9896541235),
(8, 'user_9', 'pass131', 'User 9', 'Address 9', 'customer', 'randombot1@example.com', 9896541235),
(9, 'user_10', 'pass132', 'User 10', 'Address 10', 'customer', 'randombot2@example.com', 9896541235),
(10, 'user_11', 'pass133', 'User 11', 'Address 11', 'customer', 'randombot3@example.com', 9896541235),
(11, 'user_13', 'pass135', 'User 13', 'Address 13', 'customer', 'randombot5@example.com', 9896541235),
(12, 'user_14', 'pass136', 'User 14', 'Address 14', 'customer', 'randombot6@example.com', 9896541235),
(13, 'user_15', 'pass137', 'User 15', 'Address 15', 'customer', 'randombot7@example.com', 9896541235),
(14, 'user_16', 'pass138', 'User 16', 'Address 16', 'customer', 'randombot8@example.com', 9896541235),
(15, 'user_18', 'pass140', 'User 18', 'Address 18', 'customer', 'randombot2@example.com', 9896541235),
(16, 'user_19', 'pass141', 'User 19', 'Address 19', 'customer', 'randombot3@example.com', 9896541235),
(17, 'user_20', 'pass142', 'User 20', 'Address 20', 'customer', 'randombot4@example.com', 9896541235),
(18, 'user_21', 'pass143', 'User 21', 'Address 21', 'customer', 'randombot5@example.com', 9896541235),
(19, 'user_22', 'pass144', 'User 22', 'Address 22', 'customer', 'randombot6@example.com', 9896541235),
(20, 'user_23', 'pass145', 'User 23', 'Address 23', 'customer', 'randombot7@example.com', 9896541235),
(21, 'user_24', 'pass146', 'User 24', 'Address 24', 'customer', 'randombot8@example.com', 9896541235),
(22, 'user_25', 'pass147', 'User 25', 'Address 25', 'customer', 'randombot1@example.com', 9896541235),
(23, 'user_26', 'pass148', 'User 26', 'Address 26', 'customer', 'randombot2@example.com', 9896541235),
(24, 'user_27', 'pass149', 'User 27', 'Address 27', 'customer', 'randombot3@example.com', 9896541235),
(25, 'user_28', 'pass150', 'User 28', 'Address 28', 'customer', 'randombot4@example.com', 9896541235),
(26, 'user_29', 'pass151', 'User 29', 'Address 29', 'customer', 'randombot5@example.com', 9896541235),
(27, 'user_30', 'pass152', 'User 30', 'Address 30', 'customer', 'randombot6@example.com', 9896541235),
(28, 'user_31', 'pass153', 'User 31', 'Address 31', 'customer', 'randombot7@example.com', 9896541235),
(29, 'user_32', 'pass154', 'User 32', 'Address 32', 'customer', 'randombot8@example.com', 9896541235),
(30, 'user_33', 'pass155', 'User 33', 'Address 33', 'customer', 'randombot1@example.com', 9896541235),
(31, 'user_34', 'pass156', 'User 34', 'Address 34', 'customer', 'randombot2@example.com', 9896541235),
(32, 'user_35', 'pass157', 'User 35', 'Address 35', 'customer', 'randombot3@example.com', 9896541235),
(33, 'user_36', 'pass158', 'User 36', 'Address 36', 'customer', 'randombot4@example.com', 9896541235),
(34, 'user_37', 'pass159', 'User 37', 'Address 37', 'customer', 'randombot5@example.com', 9896541235),
(35, 'user_38', 'pass160', 'User 38', 'Address 38', 'customer', 'randombot6@example.com', 9896541235),
(36, 'user_39', 'pass161', 'User 39', 'Address 39', 'customer', 'randombot7@example.com', 9896541235),
(37, 'user_40', 'pass162', 'User 40', 'Address 40', 'customer', 'randombot8@example.com', 9896541235),
(38, 'user_41', 'pass163', 'User 41', 'Address 41', 'customer', 'randombot1@example.com', 9896541235),
(39, 'user_43', 'pass165', 'User 43', 'Address 43', 'customer', 'randombot3@example.com', 9896541235),
(40, 'user_44', 'pass166', 'User 44', 'Address 44', 'customer', 'randombot4@example.com', 9896541235),
(41, 'user_45', 'pass167', 'User 45', 'Address 45', 'customer', 'randombot5@example.com', 9896541235),
(42, 'user_46', 'pass168', 'User 46', 'Address 46', 'customer', 'randombot6@example.com', 9896541235),
(43, 'user_47', 'pass169', 'User 47', 'Address 47', 'customer', 'randombot7@example.com', 9896541235),
(44, 'user_48', 'pass170', 'User 48', 'Address 48', 'customer', 'randombot8@example.com', 9896541235),
(45, 'user_50', 'pass172', 'User 50', 'Address 50', 'customer', 'randombot2@example.com', 9896541235),
(1110, 'admin_1', 'pass123', 'Admin 1', 'Address 1', 'admin', 'randombot1@example.com', 9896541235),
(1111, 'Admin_2', 'pass134', 'Admin 2', 'Address 12', 'admin', 'randombot4@example.com', 9896541235),
(1112, 'admin_3', 'pass139', 'Admin 3', 'Address 17', 'admin', 'randombot1@example.com', 9896541235),
(1113, 'admin_4', 'pass164', 'Admin 4', 'Address 42', 'admin', 'randombot2@example.com', 9896541235),
(1114, 'admin_5', 'pass171', 'Admin 5', 'Address 49', 'admin', 'randombot1@example.com', 9896541235);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
