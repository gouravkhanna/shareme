-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2013 at 11:53 AM
-- Server version: 5.5.16
-- PHP Version: 5.4.0beta2-dev

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `application`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(40) NOT NULL,
  `size` varchar(30) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `error` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `file_name`, `size`, `start_time`, `end_time`, `error`) VALUES
(1, 'Dil Hain Tumhara', '5089938', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(2, 'RULES TO SET UP NEW BANKS.pdf', '385187', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(3, 'RULES TO SET UP NEW BANKS.pdf', '385187', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(4, 'RULES TO SET UP NEW BANKS.pdf', '385187', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(5, 'RULES TO SET UP NEW BANKS.pdf', '385187', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(6, 'RULES TO SET UP NEW BANKS.pdf', '385187', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(7, 'RULES TO SET UP NEW BANKS.pdf', '385187', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(8, 'RULES TO SET UP NEW BANKS.pdf', '385187', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(9, 'RULES TO SET UP NEW BANKS.pdf', '385187', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(10, 'RULES TO SET UP NEW BANKS.pdf', '385187', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(11, '130217-181524.jpg', '58948', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(12, '130217-181538.jpg', '58922', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(13, 'gmm822820872.jpg', '873297', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(14, 'page_1.png', '199832', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(15, 'IMG_20130506_214740.jpg', '134693', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(16, 'IMG_20130506_213051.jpg', '261368', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(17, 'Cover.jpg', '65542', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(18, '32.png', '838445', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(19, 'IMG_20130520_195728.jpg', '307979', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(20, '26.png', '755334', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(21, 'Anwar_-_Maula_Mere_Maula_Aankhein_Teri_K', '5241240', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(22, '130217-181506.jpg', '59574', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(23, '130217-181605.jpg', '59079', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(24, 'Raanjhanaa_-_Raanjhanaa.mp3', '5280294', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(25, '130217-181506.jpg', '59574', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(26, '130217-181605.jpg', '59079', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(27, 'Raanjhanaa_-_Raanjhanaa.mp3', '5280294', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(28, '130217-181506.jpg', '59574', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(29, '130217-181605.jpg', '59079', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(30, 'Raanjhanaa_-_Raanjhanaa.mp3', '5280294', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(31, '130217-181506.jpg', '59574', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(32, '130217-181605.jpg', '59079', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(33, 'Raanjhanaa_-_Raanjhanaa.mp3', '5280294', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(34, '1024X600_02.jpg', '175196', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(35, 'IMG_20130520_195728.jpg', '307979', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(36, '02_HAI_RAMA.mp3', '8124295', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(37, 'Drawing9.jpg', '21032', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(38, 'anushka-sharma-20a.jpg', '400381', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null'),
(39, '27.png', '255529', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'null');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
