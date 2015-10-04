-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2015 at 04:52 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projectds`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_master`
--

CREATE TABLE IF NOT EXISTS `client_master` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_master`
--

INSERT INTO `client_master` (`id`, `name`, `email`, `mobile`, `city`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Allen Healthcare Co. Ltd.', '', '', 'Kolkata', '', '2015-06-22 01:41:46', '2015-06-21 20:11:46'),
(2, 'Assam Tourism', '', '', 'Guwahati', 'House No. 34 Anand Nagar, Six Mile, Guwahti', '2015-06-22 02:33:38', '2015-06-21 21:03:38'),
(3, 'Gyanjyoti Foundation', '', '', 'Guwahati', '12 Bhaskar Nagar, R. G. Baruah Road, Ghy 781021', '2015-06-23 00:08:35', '2015-06-22 18:38:35'),
(4, 'Assam Professional Academy', '', '', 'Guwahati', '', '2015-06-22 02:37:44', '2015-06-21 21:07:44'),
(5, 'Almart Online', '', '', 'Guwahati', '', '2015-06-22 02:33:14', '2015-06-21 21:03:14'),
(6, 'Purbanchal Education Welfare Society', '', '', 'Guwahati', 'Opp. Guahati Commerce College Boys Hostel R. G. Baruah Road Ghy 781003', '2015-06-22 02:34:13', '2015-06-21 21:04:13'),
(7, 'Akhom Khontan Jyotish Acharya Bharath Ra', '', '', 'Guwahati', 'Flat No. E-105, First Floor, G. S. Road, Opp. Pantaloons, Behind Govindam Ghy-6', '2015-06-22 02:36:48', '2015-06-21 21:06:48'),
(8, 'Vishnu Pouch Packaging Pvt. Ltd.', 'bubnadelhi@gmail.com', '', 'New Delhi', '4272/3 Ansari Road Darya Gani, New Delhi- 110002', '2015-06-22 02:25:58', '2015-06-21 20:55:58'),
(9, 'Global Fragrance', '', '', 'Delhi', '', '2015-06-22 02:35:53', '2015-06-21 21:05:53'),
(10, 'Jigyas Academy', '', '', 'Guwahati', 'Jigyas Academy, Sundarpue, Zoo Road, Guwahati', '2015-06-21 21:36:26', '2015-06-21 21:36:26'),
(11, 'Bajaj Auto Ltd.', '', '', 'Mumbai', '', '2015-06-23 00:56:04', '2015-06-22 19:26:04'),
(12, 'Dr. Riku Ayurvedic', '', '', 'Guwahati', '', '2015-06-29 05:40:28', '2015-06-29 00:10:28'),
(13, 'Foresight India Communication', '', '', 'Guwahati', 'Foresight India Communication Bora Service Station Complex Ulubari, Ghy-7', '2015-06-22 03:28:09', '2015-06-21 21:58:09'),
(14, 'Infovalley Edu. & Res. (p) Ltd.', '', '', 'Guwahati', 'Level IV, Purnima Commercial Complex, G.S road, Christian Basti, Ghy-781005', '2015-06-29 02:53:07', '2015-06-28 21:23:07'),
(15, 'Ratnanjalee Jewel India Pvt Ltd', '', '', 'Guwahati', '', '2015-06-27 00:45:48', '2015-06-26 19:15:48'),
(16, 'Renovision Exports (P) LTD.', '', '', 'Patna', '"REPL PLAZA", 3rd Floor, Federal colony, beside rahman plaza, Phulwarisharif, Patna-801505', '2015-06-21 22:45:49', '2015-06-21 22:45:49'),
(17, 'Tarun Ch. Goswami Education Society', '', '9859940022', 'Guwahati', 'Goswami kutir, Bengenaati, p.o.- chotahaibor, Dist- Nagaon 782003', '2015-06-21 22:51:43', '2015-06-21 22:51:43'),
(18, 'Nerim Group Of Institutions', 'www.nerimindia.org', '9954051419', 'Guwahati', 'Padma nath sarmah bhawan, Jayanagr, Khanapara, Ghy-781022', '2015-06-22 18:34:10', '2015-06-22 18:34:10'),
(19, 'Datamation Services', 'datamat.services@gmail.com', '0361-2455675', 'Guwahati', '1st floor,7th Heaven Complex, G.s. Road, Ulubari, Ghy-7', '2015-06-22 18:38:15', '2015-06-22 18:38:15'),
(21, 'Royal Group of Institution', '', '', 'Guwahati', '', '2015-06-22 18:55:10', '2015-06-22 18:55:10'),
(22, 'Hindustan Research Health Products', '', '', 'Guwahati', '', '2015-06-29 23:51:32', '2015-06-29 18:21:32'),
(23, 'Glamour World Industries Pvt. Ltd.', '', '', 'Kolkata', '', '2015-06-22 19:09:08', '2015-06-22 19:09:08'),
(24, 'Safechem Industries', '', '', 'Kolkata', '', '2015-06-26 03:42:29', '2015-06-25 22:12:29'),
(25, 'Caps International Pvt. Ltd', '', '', 'Guwahati', '', '2015-06-22 19:18:37', '2015-06-22 19:18:37'),
(26, 'Anand Electronic', '', '', 'Guwahati', '', '2015-06-22 19:20:25', '2015-06-22 19:20:25'),
(27, 'MSR Telecom Pvt. Ltd.', '', '', 'Guwahati', '', '2015-06-26 03:11:49', '2015-06-25 21:41:49'),
(28, 'Dona foundation', '', '', 'Guwahati', '', '2015-06-25 20:01:36', '2015-06-25 20:01:36'),
(29, 'D FIRM COLLEGE', '', '', 'GUWAHATI', 'KJBN JUNIOR COLLEGE SAMUGURI, KONUAMARI, NAGOAN', '2015-06-25 22:32:30', '2015-06-25 22:32:30'),
(30, 'MINISTRY OF YOUTH AFFAIRS & SPORTS', '', '', 'GUWAHATI', '', '2015-06-25 22:41:16', '2015-06-25 22:41:16'),
(31, 'North East Institute of Management Sci.', '', '', 'Guwahati', '', '2015-06-27 00:44:06', '2015-06-26 19:14:06'),
(32, 'Assam Institute of Hotel MManagement', '', '', 'Guwahati', '', '2015-06-26 19:17:44', '2015-06-26 19:17:44'),
(33, 'Education Research and Development Found', '', '', 'Guwahati', '', '2015-06-28 23:36:28', '2015-06-28 23:36:28'),
(34, 'Summer Camp', '', '', 'Guwahati', '', '2015-06-29 00:21:45', '2015-06-29 00:21:45'),
(35, 'Voco Mobiles', '', '', 'Guwahati', '', '2015-06-29 18:50:20', '2015-06-29 18:50:20'),
(36, 'Sigma Food Products ', '', '', 'Guwahati', '', '2015-06-30 00:40:00', '2015-06-30 00:40:00'),
(37, 'HUDA Group Of Institution', '', '', 'Nagaon', '', '2015-06-30 07:13:19', '2015-06-30 01:43:19'),
(38, 'PRATAP SNACKS PVT LTD', '', '', 'MUMBAI', '', '2015-06-30 02:35:08', '2015-06-30 02:35:08'),
(39, 'Arogya Amrit', '', '', 'Guwahati', '', '2015-07-07 00:34:51', '2015-07-07 00:34:51'),
(40, 'Assam Down Town University', '', '', 'Guwahati', '', '2015-07-07 22:53:58', '2015-07-07 22:53:58'),
(41, 'NRC Govt. of  Assam', '', '', 'Guwahati', '', '2015-07-10 20:34:19', '2015-07-10 20:34:19'),
(42, 'Directorate of Information and Public Re', '', '', 'Guwahati', 'Dispur, Guwahati, Assam - 781006', '2015-07-13 03:50:26', '2015-07-13 03:50:26'),
(43, 'CITY EXPRESS COURIER & CARGO', '', '', 'DELHI', '', '2015-07-15 19:05:19', '2015-07-15 19:05:19'),
(44, 'ACCOLADE AMUSEMENT PVT LTD', '', '', 'GUWAHATI', '', '2015-07-16 04:15:39', '2015-07-15 22:45:39'),
(45, 'L GOPAL JEWELLERS', '', '', 'GUWAHATI', '', '2015-07-15 22:53:52', '2015-07-15 22:53:52'),
(46, 'TELESHOPING', '', '', 'GUWAHATI', '', '2015-07-15 22:59:42', '2015-07-15 22:59:42'),
(47, 'Fusion Dance Workshop', '', '', 'Guwahati', '', '2015-07-16 21:29:31', '2015-07-16 21:29:31'),
(48, 'Missing Kitchen', '', '', 'Guwahati', '', '2015-07-20 00:37:05', '2015-07-20 00:37:05'),
(49, 'Cement Manufacturing Company Limited', '', '', 'Guwahati', '', '2015-07-23 00:59:13', '2015-07-23 00:59:13'),
(50, 'Meghalaya cement Ltd', '', '', 'Guwahati', '', '2015-07-26 23:33:21', '2015-07-26 18:03:21'),
(51, 'Aircel Limited', '', '', 'Mumbai', '', '2015-07-27 00:16:38', '2015-07-27 00:16:38'),
(52, 'Chehra Pehchano', '', '', 'Kolkata', '', '2015-07-27 23:08:02', '2015-07-27 23:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE IF NOT EXISTS `user_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('client','admin','','') NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`id`, `name`, `email`, `mobile`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Glomindz Support', 'support@glomindz.com', '9854087006', '$2y$10$dzqZRMzU0K4qaNePZQu./O/ANzU/l/9quIr15HSwmF.rdTNFyPARq', 'admin', 1, 'QZc3UWRWogTVuM90goR159Fky9Qvsy71yjS523O1r0yT5Ujyz7L48Z9TINol', '2015-09-17 14:44:56', '2015-09-17 09:14:56'),
(23, 'Kallol Pratim Saikia', 'ksaikia615@gmail.com', '9706913741', '$2y$10$dzqZRMzU0K4qaNePZQu./O/ANzU/l/9quIr15HSwmF.rdTNFyPARq', 'client', 1, '7NmZrkdNF5CKwrzAtaYRtYI9OLmUKpSD2VZi5ac9MDP5Nnj3v8uwSC6clqoz', '2015-09-17 14:52:01', '2015-09-17 09:22:01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
