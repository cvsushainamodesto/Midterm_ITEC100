-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 03:07 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authentication`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(255) NOT NULL,
  `account_user` varchar(255) NOT NULL,
  `account_pass` varchar(255) NOT NULL,
  `account_email` varchar(100) NOT NULL,
  `account_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account_user`, `account_pass`, `account_email`, `account_created`) VALUES
(18, 'ADMIN01', '$2y$10$mrSGAsB42og2z.FTlSSO/eNJeaDd0eFe9RiFpOdlaKVpcigNlesoy', 'modesto@gmail.com', '2021-04-28 15:41:41'),
(19, 'syrone', '$2y$10$o0rZTmAiuW1hLVwM9uH9g.d9uwh1u1wBNY9wmtCNy4EmSUtB26nJ6', 'syronemodesto@gmail.com', '2021-04-28 15:42:37'),
(20, 'syntax', '$2y$10$SpSEV/fuzrXIjAuUAGDne..WjIhDlrcwjfNzNDigfnXmT/SbaeIHS', 'something@yahoo.com', '2021-04-28 15:43:26'),
(21, 'ADMIN11', '$2y$10$Cxf8JUN62IT9t82gQQZMveoBIbDUskJPW/0RIEpuoasrXZ5ZvXMpi', 'shaina@gmail.com', '2021-04-29 02:36:19'),
(22, 'modesto', '$2y$10$UmsprqUnyk34hwIDt/iK5uMMSUcT18KB3bGQ4JPxu4I2nJu8kQSc6', 'shainamodesto@gmail.com', '2021-04-29 11:20:29'),
(23, 'Shaina', '$2y$10$q.dBZDnRiHNpXEVBPJvMZO/5fXZjEV7pNWmhuLKWU/ti.zMGiWRKe', 'modesto_sha@gmail.com', '2021-05-02 15:20:52'),
(24, 'Yna', '$2y$10$WfvdzLQit1bcojteMkEcQOU0UMgIXXcjC3ig8UGAQam9vae/A/Qv2', '_sha@gmail.com', '2021-05-02 15:21:59'),
(25, 'ADMIN', '$2y$10$/Z9RZaMIdmEqtW2L/l1uhe6z.TGXdnkCqkajIhWV7GTjBJrTYoNc6', 'sample@gmail.com', '2021-05-03 06:27:21'),
(26, 'MySyntax', '$2y$10$VjGERKtCJpdRwCqhnCdTy.Gy3HcVKhUEatm4IvJPR3TyUgFsUyqie', 'syntax_01@gmail.com', '2021-05-03 06:49:33'),
(27, 'Montano', '$2y$10$CG5ktj4j5ZFoHAHn1WY6Ruh3g9O5D1hEWRW86LtwY9oPy5wb4Q7hm', 'montano@gmail.com', '2021-05-03 06:54:15'),
(28, 'Roy', '$2y$10$GskWiMbZb0DLg16YntEVOO0kJ5nIypfiIGZXG8U.WRhaioESxZQb6', 'roymodesto@gmail.com', '2021-05-03 07:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `code_id` int(255) NOT NULL,
  `account_user` varchar(255) NOT NULL,
  `code_num` int(255) NOT NULL,
  `code_time_created` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `code_expiration` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`code_id`, `account_user`, `code_num`, `code_time_created`, `code_expiration`) VALUES
(121, 'ADMIN11', 964014, '2021-04-29 06:11:21.277160', '2021-04-29 14:16:21.000000'),
(122, 'ADMIN11', 822286, '2021-04-29 06:12:32.866277', '2021-04-29 14:17:32.000000'),
(123, 'ADMIN11', 74534, '2021-04-29 06:19:47.189685', '2021-04-29 14:24:47.000000'),
(124, 'ADMIN11', 929720, '2021-04-29 06:27:50.507087', '2021-04-29 14:32:50.000000'),
(125, 'ADMIN11', 683672, '2021-04-29 06:41:42.598916', '2021-04-29 14:46:42.000000'),
(126, 'ADMIN11', 526800, '2021-04-29 06:52:23.388920', '2021-04-29 14:57:23.000000'),
(127, 'ADMIN11', 643953, '2021-04-29 07:27:33.900094', '2021-04-29 15:32:33.000000'),
(128, 'ADMIN11', 486596, '2021-04-29 09:36:04.000482', '2021-04-29 17:41:04.000000'),
(129, 'ADMIN11', 195736, '2021-04-29 10:48:01.851231', '2021-04-29 18:53:01.000000'),
(130, 'ADMIN11', 598968, '2021-04-29 10:50:20.250604', '2021-04-29 18:55:20.000000'),
(131, 'ADMIN11', 263701, '2021-04-29 10:51:47.481848', '2021-04-29 18:56:47.000000'),
(132, 'ADMIN11', 493310, '2021-04-29 10:54:52.611371', '2021-04-29 18:59:52.000000'),
(133, 'ADMIN11', 941933, '2021-04-29 11:02:26.210593', '2021-04-29 19:07:26.000000'),
(134, 'ADMIN11', 593877, '2021-04-29 11:11:53.114760', '2021-04-29 19:16:53.000000'),
(135, 'ADMIN11', 126981, '2021-04-29 11:12:19.228505', '2021-04-29 19:17:19.000000'),
(136, 'ADMIN11', 173110, '2021-04-29 11:17:12.114573', '2021-04-29 19:22:12.000000'),
(137, 'modesto', 631309, '2021-04-29 11:22:30.798491', '2021-04-29 19:27:30.000000'),
(138, 'ADMIN11', 797882, '2021-05-02 14:12:22.317215', '2021-05-02 22:17:22.000000'),
(139, 'ADMIN', 288528, '2021-05-03 06:40:34.758936', '2021-05-03 14:45:34.000000'),
(140, 'MySyntax', 412598, '2021-05-03 06:55:34.442896', '2021-05-03 15:00:34.000000'),
(141, 'ADMIN', 927415, '2021-05-03 07:01:15.287195', '2021-05-03 15:06:15.000000'),
(142, 'ADMIN', 65038, '2021-05-03 07:02:45.088066', '2021-05-03 15:07:45.000000'),
(143, 'ADMIN', 818777, '2021-05-03 07:04:16.021514', '2021-05-03 15:09:16.000000'),
(144, 'ADMIN', 446862, '2021-05-03 07:04:51.097921', '2021-05-03 15:09:51.000000'),
(145, 'ADMIN', 867892, '2021-05-03 07:05:15.450473', '2021-05-03 15:10:15.000000'),
(146, 'ADMIN', 851601, '2021-05-03 07:16:39.652090', '2021-05-03 15:21:39.000000'),
(147, 'ADMIN', 241933, '2021-05-03 07:23:49.147346', '2021-05-03 15:28:49.000000'),
(148, 'ADMIN', 728620, '2021-05-03 07:24:41.082842', '2021-05-03 15:29:41.000000'),
(149, 'ADMIN', 433547, '2021-05-03 07:25:03.580197', '2021-05-03 15:30:03.000000'),
(150, 'ROY', 115055, '2021-05-03 11:51:52.831113', '2021-05-03 19:56:52.000000');

-- --------------------------------------------------------

--
-- Table structure for table `event_log`
--

CREATE TABLE `event_log` (
  `event_id` int(255) NOT NULL,
  `account_user` varchar(255) NOT NULL,
  `event_action` varchar(255) NOT NULL,
  `event_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_log`
--

INSERT INTO `event_log` (`event_id`, `account_user`, `event_action`, `event_time`) VALUES
(311, 'ADMIN', 'Logged-in', '2021-04-28 14:06:07.814902'),
(312, 'ADMIN', 'Log-out', '2021-04-28 14:06:28.174810'),
(313, 'ADMIN', 'Log-in', '2021-04-28 14:17:09.337709'),
(314, 'ADMIN', 'Logged-in', '2021-04-28 14:17:21.575937'),
(315, 'ADMIN', 'Log-out', '2021-04-28 15:32:31.228235'),
(316, 'ADMIN', 'Log-in', '2021-04-28 15:35:43.157188'),
(317, 'ADMIN', 'Logged-in', '2021-04-28 15:35:55.001559'),
(318, 'ADMIN', 'Log-out', '2021-04-28 15:37:45.954706'),
(319, 'ADMIN11', 'Log-in', '2021-04-29 02:36:32.913451'),
(320, 'ADMIN11', 'Log-in', '2021-04-29 02:56:51.511048'),
(321, 'ADMIN11', 'Logged-in', '2021-04-29 02:57:10.994156'),
(322, 'ADMIN11', 'Log-out', '2021-04-29 02:57:21.998706'),
(323, 'ADMIN11', 'Log-in', '2021-04-29 03:01:16.902600'),
(324, 'ADMIN11', 'Log-in', '2021-04-29 04:20:43.450647'),
(325, 'ADMIN11', 'Logged-in', '2021-04-29 04:20:55.656494'),
(326, 'ADMIN11', 'Log-out', '2021-04-29 04:21:05.203470'),
(327, 'ADMIN11', 'Log-in', '2021-04-29 04:21:22.145191'),
(328, 'ADMIN11', 'Logged-in', '2021-04-29 04:21:31.812198'),
(329, 'ADMIN11', 'Log-out', '2021-04-29 04:37:27.092298'),
(330, 'ADMIN11', 'Log-in', '2021-04-29 05:59:14.034045'),
(331, 'ADMIN11', 'Logged-in', '2021-04-29 05:59:31.028338'),
(332, 'ADMIN11', 'Log-out', '2021-04-29 06:02:41.623873'),
(333, 'ADMIN11', 'Log-in', '2021-04-29 06:07:36.121564'),
(334, 'ADMIN11', 'Logged-in', '2021-04-29 06:07:46.054963'),
(335, 'ADMIN11', 'Log-in', '2021-04-29 06:11:21.574256'),
(336, 'ADMIN11', 'Log-in', '2021-04-29 06:12:32.998343'),
(337, 'ADMIN11', 'Logged-in', '2021-04-29 06:12:42.878891'),
(338, 'ADMIN11', 'Log-in', '2021-04-29 06:19:47.362475'),
(339, 'ADMIN11', 'Logged-in', '2021-04-29 06:19:58.537410'),
(340, 'ADMIN11', 'Log-in', '2021-04-29 06:27:50.606574'),
(341, 'ADMIN11', 'Logged-in', '2021-04-29 06:28:01.550680'),
(342, 'ADMIN11', 'Log-in', '2021-04-29 06:41:42.758313'),
(343, 'ADMIN11', 'Logged-in', '2021-04-29 06:41:57.377716'),
(344, 'ADMIN11', 'Log-out', '2021-04-29 06:51:26.020846'),
(345, 'ADMIN11', 'Log-in', '2021-04-29 06:52:23.498582'),
(346, 'ADMIN11', 'Logged-in', '2021-04-29 06:52:34.109789'),
(347, 'ADMIN11', 'Log-out', '2021-04-29 07:10:08.299659'),
(348, 'ADMIN11', 'Forgot Password', '2021-04-29 07:10:35.376434'),
(349, 'ADMIN11', 'Password Changed', '2021-04-29 07:10:51.982049'),
(350, 'ADMIN11', 'Log-in', '2021-04-29 07:27:34.029147'),
(351, 'ADMIN11', 'Logged-in', '2021-04-29 07:27:44.452191'),
(352, 'ADMIN11', 'Log-out', '2021-04-29 07:28:03.398104'),
(353, 'ADMIN11', 'Log-in', '2021-04-29 09:36:04.100015'),
(354, 'ADMIN11', 'Log-in', '2021-04-29 10:48:02.004813'),
(355, 'ADMIN11', 'Resend Code', '2021-04-29 10:50:20.298447'),
(356, 'ADMIN11', 'Resend Code', '2021-04-29 10:51:47.540420'),
(357, 'ADMIN11', 'Log-in', '2021-04-29 10:54:52.675692'),
(358, 'ADMIN11', 'Logged-in', '2021-04-29 10:55:02.612684'),
(359, 'ADMIN11', 'Forgot Password', '2021-04-29 11:01:52.071383'),
(360, 'ADMIN11', 'Password Changed', '2021-04-29 11:02:07.699713'),
(361, 'ADMIN11', 'Log-in', '2021-04-29 11:02:26.354264'),
(362, 'ADMIN11', 'Logged-in', '2021-04-29 11:02:35.613429'),
(363, 'ADMIN11', 'Log-out', '2021-04-29 11:05:04.698760'),
(364, 'ADMIN11', 'Forgot Password', '2021-04-29 11:10:35.889864'),
(365, 'ADMIN11', 'Password Changed', '2021-04-29 11:11:20.818782'),
(366, 'ADMIN11', 'Log-in', '2021-04-29 11:11:53.241269'),
(367, 'ADMIN11', 'Resend Code', '2021-04-29 11:12:19.378615'),
(368, 'ADMIN11', 'Logged-in', '2021-04-29 11:12:34.410668'),
(369, 'ADMIN11', 'Log-out', '2021-04-29 11:14:39.532086'),
(370, 'ADMIN11', 'Log-in', '2021-04-29 11:17:12.262757'),
(371, 'ADMIN11', 'Logged-in', '2021-04-29 11:17:22.770498'),
(372, 'ADMIN11', 'Log-out', '2021-04-29 11:18:57.137962'),
(373, 'modesto', 'Forgot Password', '2021-04-29 11:21:30.219676'),
(374, 'modesto', 'Password Changed', '2021-04-29 11:22:09.222202'),
(375, 'modesto', 'Log-in', '2021-04-29 11:22:30.980849'),
(376, 'modesto', 'Logged-in', '2021-04-29 11:22:45.271083'),
(377, 'modesto', 'Log-out', '2021-04-29 11:23:23.636245'),
(378, 'ADMIN11', 'Log-in', '2021-05-02 14:12:23.210383'),
(379, 'ADMIN11', 'Logged-in', '2021-05-02 14:12:36.060306'),
(380, 'ADMIN11', 'Log-out', '2021-05-02 14:12:57.660593'),
(381, 'ADMIN', 'Log-in', '2021-05-03 06:40:35.334182'),
(382, 'ADMIN', 'Logged-in', '2021-05-03 06:40:45.621060'),
(383, 'ADMIN', 'Log-out', '2021-05-03 06:41:43.316882'),
(384, 'MySyntax', 'Log-in', '2021-05-03 06:55:34.608192'),
(385, 'MySyntax', 'Logged-in', '2021-05-03 06:55:45.821284'),
(386, 'MySyntax', 'Log-out', '2021-05-03 06:56:27.645973'),
(387, 'ADMIN', 'Log-in', '2021-05-03 07:01:15.364424'),
(388, 'ADMIN', 'Log-in', '2021-05-03 07:02:45.269954'),
(389, 'ADMIN', 'Log-in', '2021-05-03 07:04:16.136013'),
(390, 'ADMIN', 'Log-in', '2021-05-03 07:04:51.170258'),
(391, 'ADMIN', 'Resend Code', '2021-05-03 07:05:15.566098'),
(392, 'ADMIN', 'Logged-in', '2021-05-03 07:05:34.496433'),
(393, 'ADMIN', 'Log-out', '2021-05-03 07:11:03.361590'),
(394, 'ADMIN', 'Forgot Password', '2021-05-03 07:14:23.448274'),
(395, 'ADMIN', 'Password Updated', '2021-05-03 07:15:38.608602'),
(396, 'ADMIN', 'Log-in', '2021-05-03 07:16:39.859431'),
(397, 'ADMIN', 'Logged-in', '2021-05-03 07:17:05.919633'),
(398, 'ADMIN', 'Log-out', '2021-05-03 07:19:28.606734'),
(399, 'ADMIN', 'Log-in', '2021-05-03 07:23:49.261888'),
(400, 'ADMIN', 'Log-in', '2021-05-03 07:24:41.266211'),
(401, 'ADMIN', 'Resend Code', '2021-05-03 07:25:03.846522'),
(402, 'ADMIN', 'Logged-in', '2021-05-03 07:25:19.109111'),
(403, 'ADMIN', 'Log-out', '2021-05-03 07:25:45.614524'),
(404, 'ROY', 'Forgot Password', '2021-05-03 11:49:58.769403'),
(405, 'ROY', 'Password Updated', '2021-05-03 11:50:59.238671'),
(406, 'ROY', 'Log-in', '2021-05-03 11:51:53.049724'),
(407, 'ROY', 'Logged-in', '2021-05-03 11:52:20.059589'),
(408, 'ROY', 'Log-out', '2021-05-03 11:56:31.395990');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `event_log`
--
ALTER TABLE `event_log`
  ADD PRIMARY KEY (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `code_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `event_log`
--
ALTER TABLE `event_log`
  MODIFY `event_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
