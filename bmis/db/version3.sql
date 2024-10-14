-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 09:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `version3`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `activity` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES
(135, 'Barangay info updated', 20, '2022-06-23 22:46:28'),
(136, 'Backup generated', 20, '2022-06-23 22:46:33'),
(137, 'System info updated', 20, '2022-06-23 22:50:00'),
(138, 'User Updated', 20, '2022-06-23 23:09:26'),
(139, 'Backup generated', 20, '2022-06-23 23:26:10'),
(140, 'Purok created: Sitio 1', 20, '2022-06-23 23:26:41'),
(141, 'Purok created: Sitio 2', 20, '2022-06-23 23:26:47'),
(142, 'Purok created: 3', 20, '2022-06-23 23:26:51'),
(143, 'Purok created: 4', 20, '2022-06-23 23:26:56'),
(144, 'Purok updated: Sitio 3', 20, '2022-06-23 23:27:13'),
(145, 'Purok updated: Sitio 4', 20, '2022-06-23 23:27:20'),
(146, 'Purok created: Sitio 5', 20, '2022-06-23 23:27:26'),
(147, 'Purok created: Sitio 6', 20, '2022-06-23 23:27:34'),
(148, 'Purok created: Sitio 7', 20, '2022-06-23 23:27:43'),
(149, 'Purok created: Sitio 9', 20, '2022-06-23 23:27:54'),
(150, 'Purok created: Sitio 10', 20, '2022-06-23 23:28:01'),
(151, 'Purok created: Sitio 8', 20, '2022-06-23 23:28:17'),
(152, 'Purok deleted: 14', 20, '2022-06-23 23:28:37'),
(153, 'Purok deleted: 15', 20, '2022-06-23 23:28:41'),
(154, 'Purok created: Sitio 9', 20, '2022-06-23 23:28:59'),
(155, 'Purok created: Sitio 10', 20, '2022-06-23 23:29:07'),
(156, 'Precinct created: Pag-asa-001', 20, '2022-06-23 23:30:40'),
(157, 'Precinct created: Pag-asa-002', 20, '2022-06-23 23:30:44'),
(158, 'Precinct created: Pag-asa-003', 20, '2022-06-23 23:30:49'),
(159, 'Precinct created: Pag-asa-004', 20, '2022-06-23 23:30:55'),
(160, 'Precinct created: Pag-asa-005', 20, '2022-06-23 23:31:08'),
(161, 'Precinct created: Pag-asa-006', 20, '2022-06-23 23:31:17'),
(162, 'Official updated: Alpha Beta', 20, '2022-06-23 23:32:12'),
(163, 'Official updated: Beta Charlie', 20, '2022-06-23 23:32:39'),
(164, 'Official updated: Charlie Delta', 20, '2022-06-23 23:32:59'),
(165, 'Official updated: Delta Echo', 20, '2022-06-23 23:33:13'),
(166, 'Official updated: Echo Foxtrot', 20, '2022-06-23 23:33:29'),
(167, 'Official updated: Foxtrot Golf', 20, '2022-06-23 23:33:42'),
(168, 'Official updated: Golf Hotel', 20, '2022-06-23 23:33:57'),
(169, 'Official updated: Hotel India', 20, '2022-06-23 23:34:11'),
(170, 'Official updated: India Juliet', 20, '2022-06-23 23:34:29'),
(171, 'Official updated: Juliet Kilo', 20, '2022-06-23 23:34:41'),
(172, 'Announcement updated Meeting 2', 20, '2022-06-24 01:03:12'),
(173, 'Household created: 0001-A', 20, '2022-06-24 01:06:20'),
(174, 'Resident created: 3', 20, '2022-06-24 01:07:14'),
(175, 'Payment created: local employment', 20, '2022-06-24 01:08:26'),
(176, 'Ceritificate setting updated', 20, '2022-06-24 01:09:46'),
(177, 'Ceritificate setting updated', 20, '2022-06-24 01:10:16'),
(178, 'Ceritificate setting updated', 20, '2022-06-24 01:10:42'),
(179, 'Payment created: ', 20, '2022-06-24 01:11:28'),
(180, 'Announcement updated Meeting 1', 20, '2022-06-24 01:12:24'),
(181, 'User logged out', 20, '2022-06-24 01:13:16'),
(182, 'User loggedin', 29, '2022-06-24 01:13:20'),
(183, 'User Updated', 29, '2022-06-24 01:16:12'),
(184, 'Payment created: ', 29, '2022-06-24 01:16:50'),
(185, 'Certificate updated: C E R T I F I C A T I O N', 29, '2022-06-24 01:19:20'),
(186, 'Certificate updated: C E R T I F I C A T I O N', 29, '2022-06-24 01:19:35'),
(187, 'Certificate updated: C E R T I F I C A T I O N', 29, '2022-06-24 01:20:30'),
(188, 'Payment created: ', 29, '2022-06-24 01:20:53'),
(189, 'User logged out', 29, '2022-06-24 05:58:34'),
(190, 'User loggedin', 20, '2022-06-24 08:20:08'),
(191, 'User Updated', 20, '2022-06-24 09:29:18'),
(192, 'User loggedin', 20, '2022-06-25 06:46:28'),
(193, 'User loggedin', 20, '2022-06-25 09:42:23'),
(194, 'User Updated', 20, '2022-06-25 11:36:27'),
(195, 'Blotter created: 2022-0001', 20, '2022-06-25 11:41:02'),
(196, 'User loggedin', 20, '2022-06-26 00:01:34'),
(197, 'User Updated', 20, '2022-06-26 00:04:22'),
(198, 'User logged out', 20, '2022-06-26 00:04:33'),
(199, 'User loggedin', 20, '2022-06-26 00:04:36'),
(200, 'User logged out', 20, '2022-06-26 00:15:20'),
(201, 'User loggedin', 20, '2022-06-26 00:15:26'),
(202, 'User Updated', 20, '2022-06-26 00:16:27'),
(203, 'User logged out', 20, '2022-06-26 00:20:44'),
(204, 'User loggedin', 20, '2022-06-26 00:20:47'),
(205, 'User logged out', 20, '2022-06-26 00:21:14'),
(206, 'User loggedin', 29, '2022-06-26 00:21:18'),
(207, 'User logged out', 29, '2022-06-26 00:21:50'),
(208, 'User loggedin', 29, '2022-06-26 00:21:54'),
(209, 'User logged out', 29, '2022-06-26 00:21:57'),
(210, 'User loggedin', 20, '2022-06-26 00:22:02'),
(211, 'User Updated', 20, '2022-06-26 00:26:47'),
(212, 'User logged out', 20, '2022-06-26 00:27:49'),
(213, 'User loggedin', 20, '2022-06-26 00:27:52'),
(214, 'User logged out', 20, '2022-06-26 00:29:04'),
(215, 'User loggedin', 20, '2022-06-26 00:29:07'),
(216, 'User Updated', 20, '2022-06-26 00:29:18'),
(217, 'User logged out', 20, '2022-06-26 00:29:30'),
(218, 'User loggedin', 20, '2022-06-26 00:29:32'),
(219, 'User Updated', 20, '2022-06-26 00:32:52'),
(220, 'User logged out', 20, '2022-06-26 00:46:15'),
(221, 'User loggedin', 20, '2022-06-26 00:46:19'),
(222, 'User logged out', 20, '2022-06-26 00:47:42'),
(223, 'User loggedin', 20, '2022-06-26 00:47:50'),
(224, 'User loggedin', 20, '2022-06-26 00:52:01'),
(225, 'User loggedin', 20, '2022-06-26 00:52:04'),
(226, 'User loggedin', 20, '2022-06-26 00:52:08'),
(227, 'User loggedin', 20, '2022-06-26 00:52:21'),
(228, 'User Updated', 20, '2022-06-26 00:53:50'),
(229, 'User logged out', 20, '2022-06-26 00:53:54'),
(230, 'User loggedin', 20, '2022-06-26 00:53:57'),
(231, 'User Updated', 20, '2022-06-26 00:55:12'),
(232, 'User logged out', 20, '2022-06-26 00:55:16'),
(233, 'User loggedin', 20, '2022-06-26 00:59:16'),
(234, 'User Updated', 20, '2022-06-26 00:59:43'),
(235, 'User logged out', 20, '2022-06-26 00:59:48'),
(236, 'User loggedin', 20, '2022-06-26 00:59:51'),
(237, 'User Updated', 20, '2022-06-26 01:01:49'),
(238, 'User logged out', 20, '2022-06-26 01:02:00'),
(239, 'User loggedin', 20, '2022-06-26 05:47:58'),
(240, 'User logged out', 20, '2022-06-26 05:51:57'),
(241, 'User loggedin', 20, '2022-06-26 05:52:19'),
(242, 'User logged out', 20, '2022-06-26 05:52:36'),
(243, 'User loggedin', 20, '2022-06-26 05:52:39'),
(244, 'User logged out', 20, '2022-06-26 05:52:40'),
(245, 'User loggedin', 20, '2022-06-26 05:52:48'),
(246, 'User logged out', 20, '2022-06-26 05:55:30'),
(247, 'User loggedin', 20, '2022-06-26 05:55:34'),
(248, 'User logged out', 20, '2022-06-26 05:56:52'),
(249, 'User loggedin', 20, '2022-06-26 06:01:40'),
(250, 'User logged out', 20, '2022-06-26 06:21:11'),
(251, 'User loggedin', 20, '2022-06-26 06:21:14'),
(252, 'User logged out', 1, '2022-06-26 07:16:09'),
(253, 'User loggedin', 20, '2022-06-26 07:16:12'),
(254, 'User logged out', 20, '2022-06-26 07:16:20'),
(255, 'User loggedin', 20, '2022-06-26 07:16:30'),
(256, 'User logged out', 20, '2022-06-26 07:17:06'),
(257, 'User loggedin', 20, '2022-06-26 07:17:08'),
(258, 'User logged out', 20, '2022-06-26 07:20:28'),
(259, 'User loggedin', 20, '2022-06-26 07:20:33'),
(260, 'User logged out', 20, '2022-06-26 07:20:49'),
(261, 'User loggedin', 20, '2022-06-26 07:21:05'),
(262, 'User logged out', 20, '2022-06-26 07:21:20'),
(263, 'User loggedin', 20, '2022-06-26 07:21:24'),
(264, 'User logged out', 20, '2022-06-26 07:21:32'),
(265, 'User loggedin', 20, '2022-06-26 07:21:46'),
(266, 'User logged out', 20, '2022-06-26 07:29:27'),
(267, 'User loggedin', 20, '2022-06-26 07:29:31'),
(268, 'User logged out', 20, '2022-06-26 07:30:41'),
(269, 'User loggedin', 20, '2022-06-26 07:31:17'),
(270, 'User logged out', 20, '2022-06-26 07:35:05'),
(271, 'User loggedin', 29, '2022-06-26 07:35:12'),
(272, 'User logged out', 29, '2022-06-26 07:35:17'),
(273, 'User loggedin', 29, '2022-06-26 07:35:20'),
(274, 'User logged out', 29, '2022-06-26 07:35:28'),
(275, 'User loggedin', 29, '2022-06-26 07:35:31'),
(276, 'User logged out', 29, '2022-06-26 07:35:35'),
(277, 'User loggedin', 20, '2022-06-26 07:35:39'),
(278, 'User logged out', 20, '2022-06-26 07:36:39'),
(279, 'User loggedin', 20, '2022-06-26 07:37:32'),
(280, 'User logged out', 20, '2022-06-26 07:37:37'),
(281, 'User loggedin', 20, '2022-06-26 07:46:12'),
(282, 'User logged out', 20, '2022-06-26 07:46:18'),
(283, 'User loggedin', 20, '2022-06-26 07:50:28'),
(284, 'User logged out', 20, '2022-06-26 07:50:51'),
(285, 'User loggedin', 20, '2022-06-26 08:07:57'),
(286, 'Backup generated', 20, '2022-06-26 08:11:08'),
(287, 'User logged out', 20, '2022-06-26 09:05:24'),
(288, 'User loggedin', 20, '2022-06-26 10:27:31'),
(289, 'Announcement updated Meeting 2', 20, '2022-06-26 12:27:32'),
(290, 'User logged out', 20, '2022-06-26 14:02:53'),
(291, 'User loggedin', 20, '2022-06-26 22:29:54'),
(292, 'User logged out', 1, '2022-06-26 22:31:40'),
(293, 'User loggedin', 20, '2022-06-26 22:31:42'),
(294, 'Payment created: local employment', 20, '2022-06-26 22:35:37'),
(295, 'User loggedin', 20, '2022-06-27 05:18:13'),
(296, 'User logged out', 20, '2022-06-27 06:04:00'),
(297, 'User loggedin', 20, '2022-06-27 06:04:06'),
(298, 'User logged out', 20, '2022-06-27 06:04:15'),
(299, 'User loggedin', 20, '2022-06-27 06:14:16'),
(300, 'User logged out', 20, '2022-06-27 06:14:26'),
(301, 'User loggedin', 20, '2022-06-27 06:49:55'),
(302, 'User logged out', 20, '2022-06-27 06:49:59'),
(303, 'User loggedin', 20, '2022-06-27 06:55:55'),
(304, 'User logged out', 20, '2022-06-27 06:56:01'),
(305, 'User loggedin', 20, '2022-06-27 06:56:32'),
(306, 'User logged out', 20, '2022-06-27 06:56:37'),
(307, 'User loggedin', 20, '2022-06-27 06:56:46'),
(308, 'User logged out', 20, '2022-06-27 06:57:09'),
(309, 'User loggedin', 20, '2022-06-27 06:58:09'),
(310, 'User logged out', 20, '2022-06-27 06:58:17'),
(311, 'User loggedin', 20, '2022-06-27 07:07:09'),
(312, 'User logged out', 20, '2022-06-27 07:07:13'),
(313, 'User loggedin', 20, '2022-06-27 07:13:17'),
(314, 'User logged out', 20, '2022-06-27 07:13:21'),
(315, 'User loggedin', 20, '2022-06-27 07:13:27'),
(316, 'User logged out', 20, '2022-06-27 07:15:31'),
(317, 'User loggedin', 20, '2022-06-27 07:19:10'),
(318, 'User logged out', 20, '2022-06-27 07:19:13'),
(319, 'User loggedin', 20, '2022-06-27 07:33:09'),
(320, 'User logged out', 20, '2022-06-27 07:33:39'),
(321, 'User loggedin', 20, '2022-06-27 07:33:40'),
(322, 'User logged out', 20, '2022-06-27 07:35:46'),
(323, 'User loggedin', 20, '2022-06-27 07:35:52'),
(324, 'User loggedin', 20, '2022-06-27 07:36:45'),
(325, 'User logged out', 20, '2022-06-27 07:58:21'),
(326, 'User loggedin', 20, '2022-06-27 08:01:06'),
(327, 'User logged out', 20, '2022-06-27 08:01:10'),
(328, 'User loggedin', 20, '2022-06-27 08:06:46'),
(329, 'User logged out', 20, '2022-06-27 08:08:11'),
(330, 'User loggedin', 20, '2022-06-27 08:09:05'),
(331, 'User logged out', 20, '2022-06-27 08:10:25'),
(332, 'User logged out', NULL, '2022-06-27 08:10:28'),
(333, 'User loggedin', 20, '2022-06-27 08:13:52'),
(334, 'User logged out', 20, '2022-06-27 08:14:05'),
(335, 'User loggedin', 20, '2022-06-27 08:18:05'),
(336, 'User logged out', 20, '2022-06-27 08:21:39'),
(337, 'User loggedin', 20, '2022-06-27 08:23:10'),
(338, 'User logged out', 20, '2022-06-27 08:23:17'),
(339, 'User loggedin', 20, '2022-06-27 08:23:19'),
(340, 'User logged out', 20, '2022-06-27 08:24:54'),
(341, 'User loggedin', 20, '2022-06-27 08:24:56'),
(342, 'User logged out', 20, '2022-06-27 08:29:47'),
(343, 'User loggedin', 20, '2022-06-27 08:30:34'),
(344, 'User logged out', 20, '2022-06-27 08:31:15'),
(345, 'User loggedin', 20, '2022-06-27 08:31:29'),
(346, 'User logged out', 20, '2022-06-27 08:34:24'),
(347, 'User loggedin', 20, '2022-06-27 08:56:54'),
(348, 'User logged out', 20, '2022-06-27 08:57:18'),
(349, 'User loggedin', 20, '2022-06-27 10:46:07'),
(350, 'User logged out', 20, '2022-06-27 10:46:11'),
(351, 'User loggedin', 20, '2022-06-27 10:49:26'),
(352, 'User logged out', 20, '2022-06-27 10:49:37'),
(353, 'User loggedin', 20, '2022-06-27 11:00:31'),
(354, 'System info updated', 20, '2022-06-27 12:40:02'),
(355, 'Certificate updated: C E R T I F I C A T I O N', 20, '2022-06-27 12:41:15'),
(356, 'Payment created: ', 20, '2022-06-27 12:42:17'),
(357, 'Ceritificate setting updated', 20, '2022-06-27 12:43:00'),
(358, 'Barangay ID updated', 20, '2022-06-27 12:52:22'),
(359, 'Barangay ID updated', 20, '2022-06-27 12:52:36'),
(360, 'Payment created: Barangay ID', 20, '2022-06-27 12:52:53'),
(361, 'User logged out', 20, '2022-06-27 13:01:26'),
(362, 'User loggedin', 20, '2022-06-27 13:02:59'),
(363, 'Payment created: ', 20, '2022-06-27 13:07:28'),
(364, 'Payment created: local employment', 20, '2022-06-27 13:29:48'),
(365, 'User loggedin', 20, '2022-06-28 00:51:43'),
(366, 'Blotter created: 2022-0001', 20, '2022-06-28 00:54:30'),
(367, 'Blotter created: 2022-0001', 20, '2022-06-28 00:54:58'),
(368, 'Blotter created: 2022-0001', 20, '2022-06-28 00:55:34'),
(369, 'Blotter created: 2022-0001', 20, '2022-06-28 01:06:59'),
(370, 'Summon created: 2022-0001', 20, '2022-06-28 01:07:42'),
(371, 'Blotter created: 2022-0001', 20, '2022-06-28 01:12:02'),
(372, 'Blotter created: 2022-0001', 20, '2022-06-28 01:22:06'),
(373, 'Blotter created: 2022-0001', 20, '2022-06-28 01:22:37'),
(374, 'Blotter created: 2022-0001', 20, '2022-06-28 01:23:11'),
(375, 'Blotter created: 2022-0001', 20, '2022-06-28 01:26:48'),
(376, 'User loggedin', 20, '2022-06-28 08:10:43'),
(377, 'User logged out', 20, '2022-06-28 08:10:53'),
(378, 'User loggedin', 20, '2022-06-28 08:11:24'),
(379, 'Resident updated: 3', 20, '2022-06-28 08:13:50'),
(380, 'Resident updated: 3', 20, '2022-06-28 08:14:11'),
(381, 'Resident updated: 3', 20, '2022-06-28 08:14:38'),
(382, 'User logged out', 20, '2022-06-28 08:15:30'),
(383, 'User loggedin', 20, '2022-06-28 08:49:23'),
(384, 'Announcement deleted 16', 20, '2022-06-28 11:43:17'),
(385, 'Announcement deleted 15', 20, '2022-06-28 11:43:24'),
(386, 'User loggedin', 20, '2022-07-01 04:13:17'),
(387, 'User loggedin', 20, '2022-07-09 02:01:18'),
(388, 'User logged out', 20, '2022-07-09 02:01:41'),
(389, 'User loggedin', 20, '2022-07-09 02:02:07'),
(390, 'User loggedin', 20, '2022-07-09 02:05:19'),
(391, 'User logged out', 20, '2022-07-09 02:05:26'),
(392, 'User loggedin', 20, '2022-07-09 02:06:39'),
(393, 'User logged out', 20, '2022-07-09 02:06:46'),
(394, 'User loggedin', 20, '2022-07-09 02:07:26'),
(395, 'User logged out', 20, '2022-07-09 02:10:10'),
(396, 'User loggedin', 20, '2022-07-09 02:10:19'),
(397, 'Blotter created: 2022-0001', 20, '2022-07-09 02:11:21'),
(398, 'User logged out', 20, '2022-07-09 02:15:47'),
(399, 'User loggedin', 20, '2022-07-09 02:16:10'),
(400, 'User Created: admin2', 20, '2022-07-09 02:46:21'),
(401, 'User loggedin', 20, '2022-07-09 11:41:49'),
(402, 'Resident created: 4', 20, '2022-07-09 11:44:33'),
(403, 'User loggedin', 20, '2022-07-10 12:49:31'),
(404, 'User logged out', 20, '2022-07-10 12:50:01'),
(405, 'User loggedin', 20, '2022-07-10 12:58:06'),
(406, 'Backup generated', 20, '2022-07-10 13:02:19'),
(407, 'User logged out', 20, '2022-07-10 13:03:17'),
(408, 'User loggedin', 20, '2022-07-11 12:20:48'),
(409, 'User logged out', 20, '2022-07-11 12:21:34'),
(410, 'User loggedin', 29, '2022-07-11 12:21:43'),
(411, 'User loggedin', 20, '2022-07-11 12:22:29'),
(412, 'Official updated: Alpha Beta', 29, '2022-07-11 12:24:18'),
(413, 'Official updated: Alpha Beta', 29, '2022-07-11 12:25:43'),
(414, 'User logged out', 29, '2022-07-11 13:57:49'),
(415, 'User loggedin', 20, '2022-07-11 13:58:00'),
(416, 'User loggedin', 20, '2022-07-12 01:08:19'),
(417, 'User loggedin', 20, '2022-07-12 01:32:14'),
(418, 'User loggedin', 20, '2022-07-12 10:17:24'),
(419, 'User loggedin', 20, '2022-07-13 12:36:56'),
(420, 'User logged out', 20, '2022-07-13 12:55:44'),
(421, 'User loggedin', 20, '2022-07-13 13:11:31'),
(422, 'User loggedin', 20, '2022-07-14 12:54:14'),
(423, 'Resident updated: 4', 20, '2022-07-14 13:25:07'),
(424, 'Resident updated: 4', 20, '2022-07-14 13:26:12'),
(425, 'Resident created: 5', 20, '2022-07-14 13:28:57'),
(426, 'Resident updated: 5', 20, '2022-07-14 13:29:43'),
(427, 'Exported resident', 20, '2022-07-14 13:54:12'),
(428, 'Resident updated: 4', 20, '2022-07-14 14:01:07'),
(429, 'Resident updated: 4', 20, '2022-07-14 14:03:29'),
(430, 'Payment created: local employment', 20, '2022-07-14 14:14:54'),
(431, 'Business permit created: SARI-SARI STORE', 20, '2022-07-14 14:28:56'),
(432, 'Blotter created: 3', 20, '2022-07-14 14:34:21'),
(433, 'Backup generated', 20, '2022-07-14 15:08:11'),
(434, 'Announcement deleted 14', 20, '2022-07-14 15:08:15'),
(435, 'Announcement deleted 13', 20, '2022-07-14 15:08:18'),
(436, 'Announcement deleted 12', 20, '2022-07-14 15:08:22'),
(437, 'Backup generated', 20, '2022-07-14 15:09:01'),
(438, 'Backup generated', 20, '2022-07-14 15:15:34'),
(439, 'User logged out', 20, '2022-07-14 15:25:40'),
(440, 'User loggedin', 20, '2022-07-14 15:25:47'),
(441, 'User logged out', 20, '2022-07-14 15:25:53'),
(442, 'User loggedin', 29, '2022-07-14 15:26:07'),
(443, 'User logged out', 29, '2022-07-14 15:26:47'),
(444, 'User loggedin', 20, '2022-07-14 15:26:50'),
(445, 'Certificate created: SAMPLE CERTIFICATION', 20, '2022-07-14 15:31:41'),
(446, 'Payment created: ', 20, '2022-07-14 15:33:56'),
(447, 'User logged out', 20, '2022-07-14 15:34:02'),
(448, 'User loggedin', 29, '2022-07-14 15:34:13'),
(449, 'Payment created: ', 29, '2022-07-14 15:34:36'),
(450, 'Payment created: Barangay ID', 29, '2022-07-14 15:35:46'),
(451, 'User logged out', 29, '2022-07-14 15:36:30'),
(452, 'User loggedin', 20, '2022-07-14 15:37:22'),
(453, 'User logged out', 20, '2022-07-14 15:38:31'),
(454, 'User loggedin', 20, '2022-07-14 15:39:27'),
(455, 'User logged out', 20, '2022-07-14 15:39:51'),
(456, 'User loggedin', 20, '2022-07-14 15:40:31'),
(457, 'Official created: MERALCO', 20, '2022-07-14 15:43:35'),
(458, 'Official updated: MERALCO', 20, '2022-07-14 15:44:01'),
(459, 'Resident updated: 4', 20, '2022-07-14 15:45:19'),
(460, 'Resident updated: 4', 20, '2022-07-14 15:45:49'),
(461, 'Payment created: local employment', 20, '2022-07-14 15:46:53'),
(462, 'Payment created: ', 20, '2022-07-14 15:47:56'),
(463, 'Certificate updated: SAMPLE CERTIFICATION', 20, '2022-07-14 15:48:19'),
(464, 'Certificate created: sample cert', 20, '2022-07-14 15:49:20'),
(465, 'Blotter created: 2', 20, '2022-07-14 15:50:09'),
(466, 'Announcement updated Meeting 1', 20, '2022-07-14 15:52:42'),
(467, 'Announcement updated Meeting 2', 20, '2022-07-14 15:52:47'),
(468, 'Backup generated', 20, '2022-07-14 15:53:00'),
(469, 'Barangay info updated', 20, '2022-07-14 15:55:08'),
(470, 'User logged out', 20, '2022-07-14 15:55:43'),
(471, 'User loggedin', 20, '2022-07-14 15:56:21'),
(472, 'User logged out', 20, '2022-07-14 15:56:47'),
(473, 'User loggedin', 20, '2022-07-14 15:57:05'),
(474, 'Official created: MERALCObolts', 20, '2022-07-14 15:59:27'),
(475, 'Official updated: MERALCObolts', 20, '2022-07-14 15:59:47'),
(476, 'Resident updated: 3', 20, '2022-07-14 16:01:05'),
(477, 'Resident updated: 3', 20, '2022-07-14 16:01:20'),
(478, 'Resident updated: 4', 20, '2022-07-14 16:01:32'),
(479, 'Resident updated: 4', 20, '2022-07-14 16:02:14'),
(480, 'Payment created: ', 20, '2022-07-14 16:03:01'),
(481, 'Certificate created: sample certificate', 20, '2022-07-14 16:04:16'),
(482, 'Payment created: ', 20, '2022-07-14 16:04:41'),
(483, 'Blotter created: 2', 20, '2022-07-14 16:05:02'),
(484, 'Family relation updated: Son in law', 20, '2022-07-14 16:07:04'),
(485, 'Announcement updated Meeting 1', 20, '2022-07-14 16:07:20'),
(486, 'Backup generated', 20, '2022-07-14 16:07:35'),
(487, 'Barangay info updated', 20, '2022-07-14 16:09:01'),
(488, 'User logged out', 20, '2022-07-14 16:09:39'),
(489, 'User loggedin', 20, '2022-07-15 01:07:02'),
(490, 'Certificate created: SAMPLE CERTIFICATE', 20, '2022-07-15 01:08:56'),
(491, 'User logged out', 20, '2022-07-15 01:26:50'),
(492, 'User loggedin', 20, '2022-07-15 01:55:16'),
(493, 'Official updated: jayr dimaculangan', 20, '2022-07-15 01:59:47'),
(494, 'Backup generated', 20, '2022-07-15 02:10:51'),
(495, 'Blotter created: 2', 20, '2022-07-15 02:14:15'),
(496, 'User loggedin', 20, '2022-07-17 12:41:03'),
(497, 'Official deleted: 23', 20, '2022-07-17 12:41:21'),
(498, 'User loggedin', 20, '2022-07-26 22:53:03'),
(499, 'User logged out', 20, '2022-07-26 23:05:27'),
(500, 'User loggedin', 20, '2022-07-26 23:14:51'),
(501, 'Payment created: ', 20, '2022-07-26 23:28:11'),
(502, 'Payment created: asdadasd', 20, '2022-07-26 23:28:44'),
(503, 'Payment created: ', 20, '2022-07-26 23:29:02'),
(504, 'Payment created: ', 20, '2022-07-26 23:29:25'),
(505, 'User loggedin', 20, '2022-07-27 08:26:09'),
(506, 'Resident updated: 5', 20, '2022-07-27 08:27:24'),
(507, 'Resident updated: 3', 20, '2022-07-27 08:29:47'),
(508, 'Backup generated', 20, '2022-07-27 08:41:34'),
(509, 'Barangay info updated', 20, '2022-07-27 08:43:22'),
(510, 'Payment created: Barangay ID', 20, '2022-07-27 08:50:31'),
(511, 'User loggedin', 20, '2022-07-28 04:59:20'),
(512, 'User loggedin', 20, '2022-07-28 05:15:20'),
(513, 'Official updated: Alpha Beta', 20, '2022-07-28 06:12:55'),
(514, 'Payment created: local emolyment', 20, '2022-07-28 06:14:40'),
(515, 'Payment created: ', 20, '2022-07-28 06:31:54'),
(516, 'Business permit updated: SARI-SARI STORE', 20, '2022-07-28 06:38:05'),
(517, 'Payment created: Business Permit', 20, '2022-07-28 06:56:25'),
(518, 'Blotter created: 2022-0001', 20, '2022-07-28 07:09:21'),
(519, 'Backup generated', 20, '2022-07-28 07:33:52'),
(520, 'User loggedin', 20, '2022-08-04 14:19:30'),
(521, 'User loggedin', 20, '2022-08-16 12:15:58'),
(522, 'User loggedin', 20, '2022-09-21 06:01:39'),
(523, 'User logged out', 1, '2022-11-06 13:01:48'),
(524, 'User loggedin', 20, '2022-11-06 13:02:04'),
(525, 'User loggedin', 20, '2022-11-09 02:35:44'),
(526, 'Backup generated', 30, '2022-11-18 07:44:39'),
(527, 'Backup generated', 20, '2022-11-19 03:55:07'),
(528, 'Announcement updated Meeting 2', 20, '2022-11-19 05:31:19'),
(529, 'Household updated: 0001-A', 20, '2022-11-19 05:31:47'),
(530, 'Backup generated', 20, '2022-11-19 05:36:55'),
(531, 'Covid status updated: 5', 20, '2022-11-19 05:38:38'),
(532, 'User logged out', 20, '2022-11-19 05:39:58'),
(533, 'User loggedin', 20, '2022-11-19 05:51:12'),
(534, 'User password changed: admin', 20, '2022-11-19 05:51:41'),
(535, 'Blotter created: 2', 20, '2022-11-19 05:52:28'),
(536, 'User logged out', 20, '2022-11-19 05:53:11'),
(537, 'User logged out', 20, '2022-11-20 08:14:32'),
(538, 'User loggedin', 20, '2022-11-20 08:14:45'),
(539, 'User logged out', 20, '2022-11-20 08:15:07'),
(540, 'User Created: resident', NULL, '2022-11-20 08:15:39'),
(541, 'User loggedin', 31, '2022-11-20 08:15:46'),
(542, 'Request created', 31, '2022-11-20 08:16:23'),
(543, 'User logged out', 31, '2022-11-20 08:16:25'),
(544, 'User loggedin', 20, '2022-11-20 08:16:32'),
(545, 'Request change status', 20, '2022-11-20 08:17:10'),
(546, 'User loggedin', 31, '2022-11-20 08:17:44'),
(547, 'User Updated', 20, '2022-11-21 08:48:10'),
(548, 'User Updated', 20, '2022-11-21 08:48:22'),
(549, 'User Updated', 20, '2022-11-21 08:51:39'),
(550, 'User Updated', 20, '2022-11-21 08:52:13'),
(551, 'User Updated', 20, '2022-11-21 08:59:40'),
(552, 'User Updated', 20, '2022-11-21 09:04:18'),
(553, 'User Updated', 20, '2022-11-21 09:29:35'),
(554, 'User logged out', 1, '2022-11-22 02:05:33'),
(555, 'User loggedin', 20, '2022-11-22 02:05:38'),
(556, 'Barangay info updated', 20, '2022-11-22 02:06:29'),
(557, 'Barangay info updated', 20, '2022-11-22 02:06:53'),
(558, 'User logged out', 20, '2022-11-22 02:09:51'),
(559, 'User loggedin', 31, '2022-11-22 02:10:02'),
(560, 'Request created', 31, '2022-11-22 02:10:53'),
(561, 'User logged out', 31, '2022-11-22 02:10:58'),
(562, 'User loggedin', 20, '2022-11-22 02:11:04'),
(563, 'User logged out', 20, '2022-11-22 02:14:45'),
(564, 'User loggedin', 31, '2022-11-22 02:14:53'),
(565, 'Request created', 31, '2022-11-22 02:15:05'),
(566, 'User logged out', 31, '2022-11-22 02:15:09'),
(567, 'User loggedin', 20, '2022-11-22 02:15:13'),
(568, 'Request change status', 20, '2022-11-22 02:23:52'),
(569, 'Request change status', 20, '2022-11-22 02:23:56'),
(570, 'Request change status', 20, '2022-11-22 02:24:03'),
(571, 'Request change status', 20, '2022-11-22 02:28:20'),
(572, 'User loggedin', 31, '2022-11-22 02:28:54'),
(573, 'Request change status', 20, '2022-11-22 02:31:38'),
(574, 'Request received', 31, '2022-11-22 02:32:01'),
(575, 'User logged out', 20, '2022-11-22 02:36:23'),
(576, 'User loggedin', 31, '2022-11-22 02:36:28'),
(577, 'Request created', 31, '2022-11-22 03:59:56'),
(578, 'User logged out', 31, '2022-11-22 04:00:05'),
(579, 'User loggedin', 20, '2022-11-22 04:00:11'),
(580, 'Request change status', 20, '2022-11-22 04:00:30'),
(581, 'User logged out', 20, '2022-11-22 04:00:41'),
(582, 'User loggedin', 31, '2022-11-22 04:00:49'),
(583, 'Request received', 31, '2022-11-22 04:00:59'),
(584, 'User logged out', 31, '2022-11-22 05:05:52'),
(585, 'User loggedin', 31, '2022-11-22 05:05:55'),
(586, 'User logged out', 31, '2022-11-22 05:06:08'),
(587, 'User loggedin', 20, '2022-11-22 05:06:13'),
(588, 'User logged out', 20, '2022-11-22 05:31:36'),
(589, 'User loggedin', 31, '2022-11-22 05:31:42'),
(590, 'Request cancelled', 31, '2022-11-22 05:31:49'),
(591, 'Request created', 31, '2022-11-22 05:32:19'),
(592, 'User logged out', 31, '2022-11-22 05:32:21'),
(593, 'User loggedin', 20, '2022-11-22 05:32:25'),
(594, 'User logged out', 20, '2022-11-22 05:42:05'),
(595, 'User loggedin', 31, '2022-11-22 05:42:12'),
(596, 'User logged out', 31, '2022-11-22 05:49:39'),
(597, 'User loggedin', 20, '2022-11-22 05:52:59'),
(598, 'Backup generated', 20, '2022-11-22 06:03:09'),
(599, 'User Updated', 20, '2022-11-22 06:59:57'),
(600, 'User loggedin', 20, '2022-11-22 08:44:34'),
(601, 'User loggedin', 20, '2022-11-23 04:08:47'),
(602, 'User Updated', 20, '2022-11-23 04:15:44'),
(603, 'Exported resident', 20, '2022-11-23 04:22:30'),
(604, 'User logged out', 20, '2022-11-23 04:28:33'),
(605, 'User loggedin', 31, '2022-11-23 04:28:40'),
(606, 'User logged out', 31, '2022-11-23 04:29:27'),
(607, 'User loggedin', 20, '2022-11-23 04:29:33'),
(608, 'User logged out', 20, '2022-11-23 04:52:20'),
(609, 'User loggedin', 20, '2022-11-23 05:06:35'),
(610, 'Payment created: 3242244', 20, '2022-11-23 11:44:25'),
(611, 'User logged out', 20, '2022-11-23 13:24:28'),
(612, 'User loggedin', 20, '2022-12-04 14:42:26'),
(613, 'Backup generated', 20, '2022-12-04 14:44:41'),
(614, 'User loggedin', 20, '2022-12-13 04:28:28'),
(615, 'User loggedin', 20, '2022-12-28 07:14:43'),
(616, 'Announcement updated Meeting 1', 20, '2022-12-28 07:15:23'),
(617, 'User logged out', 20, '2022-12-28 07:23:53'),
(618, 'User loggedin', 31, '2022-12-28 07:23:58'),
(619, 'User logged out', 31, '2022-12-28 07:24:56'),
(620, 'User logged out', 1, '2023-01-09 07:30:45'),
(621, 'User loggedin', 29, '2023-01-09 07:30:58'),
(622, 'Resident created: 6', 29, '2023-01-09 07:31:49'),
(623, 'User logged out', 29, '2023-01-09 07:32:02'),
(624, 'User loggedin', 20, '2023-01-11 14:40:35'),
(625, 'User loggedin', 20, '2023-01-26 07:29:15'),
(626, 'Household deleted: 4852', 20, '2023-01-26 07:32:36'),
(627, 'Household created: 0001-a', 20, '2023-01-26 07:32:59'),
(628, 'User logged out', 20, '2023-01-26 07:50:41'),
(629, 'User loggedin', 20, '2023-01-26 07:57:07'),
(630, 'Barangay info updated', 20, '2023-01-26 07:58:37'),
(631, 'User logged out', 13, '2023-01-26 08:06:28'),
(632, 'User loggedin', 31, '2023-01-26 08:06:39'),
(633, 'User logged out', 31, '2023-01-26 08:08:38'),
(634, 'User loggedin', 20, '2023-01-30 07:51:40'),
(635, 'Services updated: BARANGAY CLEARANCE', 20, '2023-01-30 07:54:05'),
(636, 'Services updated: BARANGAY CLEARANCE', 20, '2023-01-30 07:54:28'),
(637, 'Services updated: RESIDENCY CERTIFICATE', 20, '2023-01-30 07:54:57'),
(638, 'Services updated: INDIGENCY CERTIFICATE', 20, '2023-01-30 07:55:20'),
(639, 'Services updated: RESIDENCY CERTIFICATE', 20, '2023-01-30 07:55:32'),
(640, 'Announcement updated Meeting 1', 20, '2023-01-30 07:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `what` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `who` varchar(50) DEFAULT NULL,
  `docs` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `what`, `description`, `date`, `venue`, `who`, `docs`, `status`) VALUES
(8, 'Meeting 1', 'Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', '2023-01-30 13:00:00', 'Meeting Hall', 'Captain', '281062d6b0d75900197a276f8992ae35.jpg', 'Active'),
(11, 'Meeting 2', 'Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', '2022-06-26 12:35:00', 'Meeting Hall', 'Kagawad', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_info`
--

CREATE TABLE `barangay_info` (
  `id` int(11) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `town` text DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `purok` varchar(20) DEFAULT NULL,
  `background` text DEFAULT NULL,
  `starts` varchar(20) DEFAULT NULL,
  `end` varchar(20) DEFAULT NULL,
  `dashboard_text` text DEFAULT NULL,
  `dashboard_img` text DEFAULT NULL,
  `city_logo` text DEFAULT NULL,
  `brgy_logo` text DEFAULT NULL,
  `map` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangay_info`
--

INSERT INTO `barangay_info` (`id`, `province`, `town`, `brgy_name`, `number`, `email`, `street`, `purok`, `background`, `starts`, `end`, `dashboard_text`, `dashboard_img`, `city_logo`, `brgy_logo`, `map`) VALUES
(1, 'Batangas', 'Taysan', 'Barangay Pag-asa', '269-1034', 'brgypag.asa@gmail.com', 'Street 1', 'Sitio', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue tincidunt purus, ac feugiat eros ullamcorper eget. Nulla egestas massa ut lectus ornare pretium. In non metus a magna bibendum lobortis. In nulla enim, ultricies at lacinia at, consequat id quam. In tempor purus et nisi placerat vehicula. Maecenas in eleifend erat. Quisque vitae dui in ligula malesuada euismod.', '1990', '2022', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue tincidunt purus, ac feugiat eros ullamcorper eget. Nulla egestas massa ut lectus ornare pretium. In non metus a magna bibendum lobortis. In nulla enim, ultricies at lacinia at, consequat id quam. In tempor purus et nisi placerat vehicula. Maecenas in eleifend erat. Quisque vitae dui in ligula malesuada euismod.', 'c273e5e8ffb3727aaf4a6dce9012bc5c.png', '9a0f8493e81fe13fed3c7bea534dda71.png', '9e20bca1058f5c5f0eea5555feb3e027.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `block_user`
--

CREATE TABLE `block_user` (
  `blocked_from` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `blocked_to` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `blotter`
--

CREATE TABLE `blotter` (
  `case_no` varchar(100) NOT NULL,
  `respondent` varchar(100) NOT NULL,
  `victim` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `location` text NOT NULL,
  `incident_date` datetime NOT NULL,
  `details` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blotter`
--

INSERT INTO `blotter` (`case_no`, `respondent`, `victim`, `type`, `location`, `incident_date`, `details`, `status`, `created_at`) VALUES
('2', 'MARIAN', 'MARJORIE ', 'Incident', 'CALAMBA', '2022-07-14 22:29:00', 'NANAKIT SA PANININGIL', 'Settled', '2022-07-14 22:29:00'),
('2022-0001', 'angel', 'marjorie ', 'Amicable', 'taysan', '2022-06-25 19:38:00', 'lol', 'Scheduled', '2022-06-25 19:38:00'),
('3', 'JAYR', 'MARIAN ', 'Incident', 'CALAMBA', '2022-07-14 22:31:00', 'NANG AWAY', 'Dismissed', '2022-07-14 22:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`ID`, `title`, `start`, `end`, `description`) VALUES
(1, 'Samsung', '2021-09-30 08:50:00', '2021-10-01 19:48:00', 'fdsfsdfdsfds');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `pic` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cert_settings`
--

CREATE TABLE `cert_settings` (
  `id` int(11) NOT NULL,
  `flag` text DEFAULT NULL,
  `motto` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `watermark` text DEFAULT NULL,
  `color_bg` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cert_settings`
--

INSERT INTO `cert_settings` (`id`, `flag`, `motto`, `signature`, `watermark`, `color_bg`) VALUES
(1, 'c7c4297166e2c5e3715032b5e44c8349.png', 'e7c732cb3a6819d9cac0378db51942b6.png', 'signature.png', 'c545b0b8698dfc6738a5c81cbb2f595f.png', 'transparent');

-- --------------------------------------------------------

--
-- Table structure for table `chairmanship`
--

CREATE TABLE `chairmanship` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chairmanship`
--

INSERT INTO `chairmanship` (`id`, `title`) VALUES
(1, 'PRESIDING OFFICER'),
(3, 'COMMITTEE ON HEALTH'),
(4, 'COMMITTEE ON APPROPRIATION'),
(5, 'COMMITTEE ON ENVIRONMENT'),
(6, 'COMMITTEE ON PEACE AND ORDER'),
(7, 'COMMITTEE ON EDUCATION'),
(8, 'COMMITTEE ON INFRASTRUCTURE'),
(9, 'COMMITTEE ON YOUTH DEVELOPMENT'),
(10, 'COMMITTEE ON GAD'),
(11, 'COMMITTEE ON AGRICULTURE'),
(12, 'COMMITTEE ON BAC'),
(13, 'COMMITTEE ON WAYS AND MEANS'),
(14, 'COMMITTEE ON VAW-C'),
(15, 'COMMITTEE ON SPORTS'),
(16, 'COMMITTEE ON APPROPRIATION / YOUTH DEVELOPMENT'),
(17, 'COMMITTEE ON HEALTH / SPORTS'),
(18, 'COMMITTEE ON INFRASTRUCTURE / BAC / WAYS AND MEANS'),
(19, 'COMMITTEE ON PEACE AND ORDER / SPORTS'),
(20, 'COMMITTEE ON VAW-C / COMMITTEE ON EDUCATION'),
(21, 'COMMITTEE ON ENVIRONMENT / GAD'),
(22, 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `complainants`
--

CREATE TABLE `complainants` (
  `case_no` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `national_id` varchar(50) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complainants`
--

INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES
('2022-0001', 'ad ad', '', '09122789468', 'Male', '31', '', 'mayapa'),
('2', 'ANGLE', '54557854', '092222222', 'Female', '22', 'DI NAGBAYAD NG UTANG', 'CALAMBA CITY'),
('3', 'MARJORIE CLEOFAS', '5787545', '65566', 'Female', '22', 'MANININGIL', 'CALAMBA'),
('3', 'MARJORIE CLEOFAS', '5787545', '65566', 'Female', '22', 'MANININGIL', 'CALAMBA'),
('2022-0001', 'ad ad', '', '09122789468', 'Male', '31', '', 'mayapa'),
('2', 'ANGLE', '54557854', '092222222', 'Female', '22', 'DI NAGBAYAD NG UTANG', 'CALAMBA CITY'),
('3', 'MARJORIE CLEOFAS', '5787545', '65566', 'Female', '22', 'MANININGIL', 'CALAMBA'),
('3', 'MARJORIE CLEOFAS', '5787545', '65566', 'Female', '22', 'MANININGIL', 'CALAMBA');

-- --------------------------------------------------------

--
-- Table structure for table `covid_status`
--

CREATE TABLE `covid_status` (
  `resident_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_vaccinated` date DEFAULT NULL,
  `vaccinator_name` text DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `batch_no` varchar(100) DEFAULT NULL,
  `lot_no` varchar(100) DEFAULT NULL,
  `date_vaccinated_1` date DEFAULT NULL,
  `vaccinator_name_1` varchar(100) DEFAULT NULL,
  `manufacturer_1` text DEFAULT NULL,
  `batch_no_1` varchar(100) DEFAULT NULL,
  `lot_no_1` varchar(100) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `covid_status`
--

INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES
(3, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Positive', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', ''),
(3, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Positive', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', ''),
(6, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `house_number`
--

CREATE TABLE `house_number` (
  `id` int(11) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house_number`
--

INSERT INTO `house_number` (`id`, `number`, `info`) VALUES
(4853, '0001-a', 'asad');

-- --------------------------------------------------------

--
-- Table structure for table `id_settings`
--

CREATE TABLE `id_settings` (
  `id` int(11) NOT NULL,
  `front` text DEFAULT NULL,
  `back` text DEFAULT NULL,
  `bg_color` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `id_settings`
--

INSERT INTO `id_settings` (`id`, `front`, `back`, `bg_color`) VALUES
(1, 'aab0223983f6cd4a924fac2f130538cc.png', 'ee4568489d0a6cfd234d80ae99ca8fb0.png', 'transparent');

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE `officials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `chairmanship` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES
(2, 'Alpha Beta', 1, 3, '2021-05-08', '2025-05-28', 'Active', '97b7dd7e3fd8bab0fd1fc4a6269fe49b.png'),
(3, 'Kgg. Avelina M. Tan', 16, 1, '2021-05-15', '2025-06-03', 'Active', 'c29cc2401b1e9860fe82e990b547cc2d.jpg'),
(4, 'Beta Charlie', 17, 5, '2021-05-22', '2025-04-30', 'Active', '90c28b7971f13300dec4f4d54f257b48.png'),
(5, 'Charlie Delta', 18, 6, '2021-05-01', '2025-05-01', 'Active', '09067e978d67b1a7bd30447961bc3790.png'),
(6, 'Kgg. Angel B. Sandoc', 19, 7, '2021-05-08', '2025-05-08', 'Active', '8d35deade377dc39c32ef9a35b459201.jpg'),
(7, 'Delta Echo', 20, 8, '2021-05-08', '2021-05-08', 'Active', '9d01b01e6aef84cc7425177c748b156f.png'),
(8, 'Echo Foxtrot', 21, 9, '2021-05-08', '2025-05-01', 'Active', '5ab8fc6daeab3b07a51e9f222e557267.png'),
(9, 'Foxtrot Golf', 11, 10, '2021-05-22', '2025-05-15', 'Active', 'adb891478ea9f4d38292302432e0c2a9.png'),
(10, 'Hotel India', 22, 4, '2021-05-01', '2025-05-08', 'Active', '53ee97b2dc85534ed18845c82a9e9492.png'),
(11, 'India Juliet', 22, 11, '2021-05-08', '2025-05-15', 'Active', '16a0c6e5eb5c2eab7271aeb934409c97.png'),
(12, 'Juliet Kilo', 22, 12, '2021-05-01', '2025-05-15', 'Active', '787e4124a63cc38ed8e8c41c46385d7f.png'),
(21, 'Golf Hotel', 14, 14, '2021-09-01', '2021-09-25', 'Active', 'b13187d6360ee3ce1e3a8206d34706ff.png'),
(22, 'MERALCO', 12, 10, '2022-07-14', '2025-11-12', 'Inactive', '73caa28c094e240d7a9cb8117f38fa52.png');

-- --------------------------------------------------------

--
-- Table structure for table `other_details`
--

CREATE TABLE `other_details` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `sss` varchar(50) DEFAULT NULL,
  `tin` varchar(50) DEFAULT NULL,
  `precinct` varchar(50) DEFAULT NULL,
  `gsis` varchar(50) DEFAULT NULL,
  `pagibig` varchar(50) DEFAULT NULL,
  `philhealth` varchar(50) DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `other_details`
--

INSERT INTO `other_details` (`id`, `resident_id`, `sss`, `tin`, `precinct`, `gsis`, `pagibig`, `philhealth`, `blood`) VALUES
(3, 3, '', '', 'Pag-asa-001', '', '', '', '0'),
(4, 4, '', '', NULL, '', '', '', ''),
(5, 5, '', '', NULL, '', '', '', ''),
(6, 6, '', '', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES
(9, 'C E R T I F I C A T I O N Payment', NULL, '500.00', 'admin', NULL, '2022-06-27'),
(14, 'SAMPLE CERTIFICATION Payment', NULL, '250.00', 'admin', NULL, '2022-07-14'),
(15, 'SAMPLE CERTIFICATION Payment', NULL, '305.00', 'staff', NULL, '2022-07-14'),
(16, 'Resident Barangay ID Payment', 'Barangay ID', '20.00', 'staff', 'Alpha Charlie', '2022-07-14'),
(18, 'SAMPLE CERTIFICATION Payment', NULL, '20.00', 'admin', NULL, '2022-07-14'),
(20, 'Sample Certificate Payment', NULL, '250.00', 'admin', NULL, '2022-07-15'),
(21, 'SAMPLE CERTIFICATE Payment', NULL, '200.00', 'admin', NULL, '2022-07-27'),
(25, 'Resident Barangay ID Payment', 'Barangay ID', '200.00', 'admin', 'Alpha Charlie', '2022-07-27'),
(26, 'Barangay Clearance Payment', NULL, '500.00', 'admin', 'Alpha Beta Charlie', '2022-07-28'),
(27, 'SAMPLE CERTIFICATE Payment', NULL, '200.00', 'admin', NULL, '2022-07-28'),
(28, 'Business Clearance Payment', 'Business Permit', '1200.00', 'admin', 'ALPHA BETA', '2022-07-28'),
(29, 'Barangay Clearance Payment', NULL, '2342342.00', 'admin', 'Alpha Beta Charlie', '2022-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `permit`
--

CREATE TABLE `permit` (
  `id` int(11) NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `owner1` varchar(100) DEFAULT NULL,
  `owner2` varchar(100) DEFAULT NULL,
  `nature` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `b_address` text DEFAULT NULL,
  `o_address` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permit`
--

INSERT INTO `permit` (`id`, `b_name`, `owner1`, `owner2`, `nature`, `status`, `expiration_date`, `number`, `b_address`, `o_address`, `remarks`, `created_at`) VALUES
(6, 'SARI-SARI STORE', 'ALPHA BETA', NULL, 'SARI-SARI', 'New', '2026-11-25', '0912245875', 'ORION STREET, RJVILLE SUBD. LUCENA CITY', 'ORION STREET, RJVILLE SUBD. LUCENA CITY', '', '2022-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `pos_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES
(3, 'PUNONG BARANGAY', 1),
(4, 'SK Chairperson', 10),
(5, 'Councilor 2', 3),
(6, 'Councilor 3', 4),
(8, 'Councilor 5', 6),
(9, 'Councilor 6', 7),
(10, 'Councilor 7', 8),
(11, 'Barangay Secretary', 11),
(12, 'Barangay Treasurer', 12),
(13, 'Administrative Aid', 13),
(14, 'Councilor 8', 9);

-- --------------------------------------------------------

--
-- Table structure for table `precinct`
--

CREATE TABLE `precinct` (
  `id` int(11) NOT NULL,
  `precinct_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `precinct`
--

INSERT INTO `precinct` (`id`, `precinct_name`, `details`) VALUES
(4, 'Pag-asa-001', ''),
(5, 'Pag-asa-002', ''),
(6, 'Pag-asa-003', ''),
(7, 'Pag-asa-004', ''),
(8, 'Pag-asa-005', ''),
(9, 'Pag-asa-006', '');

-- --------------------------------------------------------

--
-- Table structure for table `purok`
--

CREATE TABLE `purok` (
  `id` int(11) NOT NULL,
  `purok_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purok`
--

INSERT INTO `purok` (`id`, `purok_name`, `details`) VALUES
(7, 'Sitio 1', ''),
(8, 'Sitio 2', ''),
(9, 'Sitio 3', ''),
(10, 'Sitio 4', ''),
(11, 'Sitio 5', ''),
(12, 'Sitio 6', ''),
(13, 'Sitio 7', ''),
(16, 'Sitio 8', ''),
(17, 'Sitio 9', ''),
(18, 'Sitio 10', '');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `ref_no` varchar(100) DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `files` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `request_stat` int(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `payment_method`, `ref_no`, `purpose`, `resident_id`, `service_id`, `date`, `files`, `status`, `request_stat`, `timestamp`) VALUES
(9, 'Cash on Pick-up', '231211', 'dasad', 3, 1, '2022-11-25', NULL, 'Received', 1, '2022-11-20 08:16:23'),
(10, 'Gcash', '34214', '43242344234', 3, 1, '2022-11-30', NULL, 'Recieved', 1, '2022-11-22 02:10:53'),
(11, 'Cash on Pick-up', '', 'dds', 3, 2, '2022-11-23', NULL, 'Recieved', 1, '2022-11-22 02:15:05'),
(12, 'Gcash', '324234234', 'asdaadsasad', 3, 1, '2022-11-24', NULL, 'Cancelled', 1, '2022-11-22 03:59:56'),
(13, 'Cash on Pick-up', '', 'asaasa', 3, 1, '2022-11-30', NULL, 'Pending', 1, '2022-11-22 05:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(11) NOT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `birthplace` text DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `civilstatus` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `purok` varchar(20) DEFAULT NULL,
  `voterstatus` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `employer_name` varchar(100) DEFAULT NULL,
  `pwd` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `resident_type` varchar(50) DEFAULT 'Alive',
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `voterstatus`, `phone`, `email`, `occupation`, `employer_name`, `pwd`, `address`, `resident_type`, `remarks`) VALUES
(2, '', '', '5e9897f50167041e6de0bf22d2abaa75.png', 'resident', 'of', 'barangay', '', '', '0000-00-00', 2022, NULL, NULL, NULL, NULL, '09187112668', 'ronil.cajan@gmail.com', '', '', NULL, 'PUROK 3\r\nLOOC PROPER', 'Alive', ''),
(3, 'MGT187563092', 'Filipino', '609b72a9e551856f22551da7891b496d.png', 'Alpha', 'Beta', 'Charlie', 'jeh', 'Lucena City', '1990-08-03', 31, 'Single', 'Male', 'Sitio 1', 'Yes', '09122789468', 'jayr@gmail.com', 'Project Coordinator', 'SEMPHIL', 'No', 'Brgy. Mayapa , Calamba City, Laguna', 'Alive', ''),
(4, '1212321321', 'American', '256ad22ba594c347d5d37afc37dcf676.png', 'Alpha', 'Bravo', 'Charlie', 'Delta', 'Lucena City', '1991-03-08', 31, 'Married', 'Female', 'Sitio 2', 'No', '09186222263', 'fasf@gamil.com', 'ELECTRICIAN', 'abshiela', 'Yes', 'purok 3 maligaya', 'Deceased', ''),
(5, '', 'filipino', 'c9e23af056b2e44d747a14804d6e3341.png', 'Bravo', 'Charlie', 'Delta', 'Omicron', 'Quezon City', '2002-06-05', 20, 'Married', 'Male', 'Sitio 7', 'No', '0912245875', 'brgypag.asa@gmail.com', 'vendor', 'Self employed', 'Yes', 'Brgy. Tibay, Sitio DiMagiba', 'Alive', 'Lumipat ng Barangay'),
(6, 'QGI061987542', 'adsdad', NULL, 'adsadsad', 'sdadsad', 'sdadsad', 'sdadsa', 'sdsadasdsa', '0000-00-00', 0, 'Separated', 'Male', NULL, NULL, '09122789468', 'adminnawjeshbd@gmail.com', 'fsfddfsdf', 'dsfsdf', 'Yes', 'sdasdsaddsa', 'Alive', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resident_house`
--

CREATE TABLE `resident_house` (
  `resident_id` int(11) DEFAULT NULL,
  `house_number` varchar(100) DEFAULT NULL,
  `relation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `security_question`
--

CREATE TABLE `security_question` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `question_1` int(11) DEFAULT NULL,
  `answer_1` varchar(100) DEFAULT NULL,
  `question_2` int(11) DEFAULT NULL,
  `answer_2` varchar(100) DEFAULT NULL,
  `question_3` int(11) DEFAULT NULL,
  `answer_3` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `security_question`
--

INSERT INTO `security_question` (`id`, `resident_id`, `username`, `question_1`, `answer_1`, `question_2`, `answer_2`, `question_3`, `answer_3`, `date`) VALUES
(14, 1, 'roncajan', 1, 'Plaridel', 2, 'koki', 3, 'alabastro', '2021-10-22 09:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `requires` text DEFAULT NULL,
  `qr_code` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `fees`, `phone`, `requires`, `qr_code`, `status`) VALUES
(1, 'BARANGAY CLEARANCE', 'View the requirements needed for Barangay Clerance and acquire online now.', '100.00', '09122789468', 'CEDULA', '31181bf649e81222f2fc528a5ce3fa92.JPG', 'Active'),
(2, 'RESIDENCY CERTIFICATE', 'View the requirements needed for Barangay Residency and acquire online now.', '200.00', '09122789468', 'CEDULA and BRGY CLEARANCE', '9b638235f2288e6e91bdde565d468341.JPG', 'Active'),
(3, 'INDIGENCY CERTIFICATE', 'View the requirements needed for Barangay Indigency and acquire online now.', '60.00', '09122789468', 'cedula', '890c7efcac1248b406376e1f8343a13c.JPG', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `settled`
--

CREATE TABLE `settled` (
  `case_no` varchar(50) NOT NULL,
  `updates` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settled`
--

INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES
('2', '', '2022-07-15'),
('2022-0001', '', '2022-06-28'),
('3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `summon`
--

CREATE TABLE `summon` (
  `id` int(11) NOT NULL,
  `case_no` varchar(50) DEFAULT NULL,
  `blotter_update` text DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `summon`
--

INSERT INTO `summon` (`id`, `case_no`, `blotter_update`, `number`, `date`) VALUES
(6, '2022-0001', 'sched ulit', '1st', '2022-06-28 09:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(11) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `acronym` varchar(100) NOT NULL,
  `powered_b` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `sname`, `acronym`, `powered_b`) VALUES
(1, 'E-Record: Barangay Transaction Processing System', 'E-R:BTP System', 'CCC-BSIT CAPSTONE GROUP');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_type` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resident_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `unique_id`, `username`, `fname`, `lname`, `email`, `bio`, `birth`, `phone`, `address`, `password`, `user_type`, `avatar`, `status`, `created_at`, `resident_id`) VALUES
(20, '2bc812', 'admin', 'Admin', 'System', 'admin@example.com', 'dsadasdasd', '2021-10-05', '09187112668', 'PUROK 3', 'efacc4001e857f7eba4ae781c2932dedf843865e', 'administrator', '0a67543417805f44be9cbf5b28d3c4ad.png', NULL, '2021-09-15 23:47:01', NULL),
(29, NULL, 'staff', NULL, NULL, 'jayr@gmail.com', NULL, NULL, NULL, NULL, '6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611', 'staff', 'ffb2b56ac6ca7d15663e5f968d858fec.png', 'Active', '2022-06-23 22:37:40', NULL),
(30, NULL, 'admin2', NULL, NULL, 'jayr12@gmail.com', NULL, NULL, NULL, NULL, '315f166c5aca63a157f7d41007675cb44a948b33', 'administrator', '43fb718a397568ef5460d42baada05c4.jpg', 'Active', '2022-07-09 02:46:21', NULL),
(31, NULL, 'resident', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '891cde22cc4a68f910b34799af7503b8229c74ea', 'resident', NULL, 'Active', '2022-11-20 08:15:39', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `time` datetime(6) NOT NULL,
  `sender_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `receiver_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `message` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay_info`
--
ALTER TABLE `barangay_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blotter`
--
ALTER TABLE `blotter`
  ADD PRIMARY KEY (`case_no`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cert_settings`
--
ALTER TABLE `cert_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chairmanship`
--
ALTER TABLE `chairmanship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complainants`
--
ALTER TABLE `complainants`
  ADD KEY `case_no` (`case_no`);

--
-- Indexes for table `covid_status`
--
ALTER TABLE `covid_status`
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `house_number`
--
ALTER TABLE `house_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `id_settings`
--
ALTER TABLE `id_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_details`
--
ALTER TABLE `other_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `other_details_ibfk_1` (`resident_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permit`
--
ALTER TABLE `permit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `precinct`
--
ALTER TABLE `precinct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purok`
--
ALTER TABLE `purok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resident_house`
--
ALTER TABLE `resident_house`
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `resident_house_ibfk_2` (`house_number`);

--
-- Indexes for table `security_question`
--
ALTER TABLE `security_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settled`
--
ALTER TABLE `settled`
  ADD PRIMARY KEY (`case_no`);

--
-- Indexes for table `summon`
--
ALTER TABLE `summon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_no` (`case_no`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `barangay_info`
--
ALTER TABLE `barangay_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cert_settings`
--
ALTER TABLE `cert_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chairmanship`
--
ALTER TABLE `chairmanship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `house_number`
--
ALTER TABLE `house_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4854;

--
-- AUTO_INCREMENT for table `id_settings`
--
ALTER TABLE `id_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `other_details`
--
ALTER TABLE `other_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permit`
--
ALTER TABLE `permit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `precinct`
--
ALTER TABLE `precinct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purok`
--
ALTER TABLE `purok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `security_question`
--
ALTER TABLE `security_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `summon`
--
ALTER TABLE `summon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complainants`
--
ALTER TABLE `complainants`
  ADD CONSTRAINT `complainants_ibfk_1` FOREIGN KEY (`case_no`) REFERENCES `blotter` (`case_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `covid_status`
--
ALTER TABLE `covid_status`
  ADD CONSTRAINT `covid_status_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `other_details`
--
ALTER TABLE `other_details`
  ADD CONSTRAINT `other_details_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resident_house`
--
ALTER TABLE `resident_house`
  ADD CONSTRAINT `resident_house_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resident_house_ibfk_2` FOREIGN KEY (`house_number`) REFERENCES `house_number` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `summon`
--
ALTER TABLE `summon`
  ADD CONSTRAINT `summon_ibfk_1` FOREIGN KEY (`case_no`) REFERENCES `blotter` (`case_no`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
