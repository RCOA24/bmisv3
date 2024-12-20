#
# TABLE STRUCTURE FOR: activity_log
#

DROP TABLE IF EXISTS `activity_log`;

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=712 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (135, 'Barangay info updated', 20, '2022-06-23 18:46:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (136, 'Backup generated', 20, '2022-06-23 18:46:33');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (137, 'System info updated', 20, '2022-06-23 18:50:00');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (138, 'User Updated', 20, '2022-06-23 19:09:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (139, 'Backup generated', 20, '2022-06-23 19:26:10');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (140, 'Purok created: Sitio 1', 20, '2022-06-23 19:26:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (141, 'Purok created: Sitio 2', 20, '2022-06-23 19:26:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (142, 'Purok created: 3', 20, '2022-06-23 19:26:51');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (143, 'Purok created: 4', 20, '2022-06-23 19:26:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (144, 'Purok updated: Sitio 3', 20, '2022-06-23 19:27:13');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (145, 'Purok updated: Sitio 4', 20, '2022-06-23 19:27:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (146, 'Purok created: Sitio 5', 20, '2022-06-23 19:27:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (147, 'Purok created: Sitio 6', 20, '2022-06-23 19:27:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (148, 'Purok created: Sitio 7', 20, '2022-06-23 19:27:43');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (149, 'Purok created: Sitio 9', 20, '2022-06-23 19:27:54');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (150, 'Purok created: Sitio 10', 20, '2022-06-23 19:28:01');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (151, 'Purok created: Sitio 8', 20, '2022-06-23 19:28:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (152, 'Purok deleted: 14', 20, '2022-06-23 19:28:37');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (153, 'Purok deleted: 15', 20, '2022-06-23 19:28:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (154, 'Purok created: Sitio 9', 20, '2022-06-23 19:28:59');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (155, 'Purok created: Sitio 10', 20, '2022-06-23 19:29:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (156, 'Precinct created: Pag-asa-001', 20, '2022-06-23 19:30:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (157, 'Precinct created: Pag-asa-002', 20, '2022-06-23 19:30:44');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (158, 'Precinct created: Pag-asa-003', 20, '2022-06-23 19:30:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (159, 'Precinct created: Pag-asa-004', 20, '2022-06-23 19:30:55');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (160, 'Precinct created: Pag-asa-005', 20, '2022-06-23 19:31:08');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (161, 'Precinct created: Pag-asa-006', 20, '2022-06-23 19:31:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (162, 'Official updated: Alpha Beta', 20, '2022-06-23 19:32:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (163, 'Official updated: Beta Charlie', 20, '2022-06-23 19:32:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (164, 'Official updated: Charlie Delta', 20, '2022-06-23 19:32:59');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (165, 'Official updated: Delta Echo', 20, '2022-06-23 19:33:13');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (166, 'Official updated: Echo Foxtrot', 20, '2022-06-23 19:33:29');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (167, 'Official updated: Foxtrot Golf', 20, '2022-06-23 19:33:42');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (168, 'Official updated: Golf Hotel', 20, '2022-06-23 19:33:57');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (169, 'Official updated: Hotel India', 20, '2022-06-23 19:34:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (170, 'Official updated: India Juliet', 20, '2022-06-23 19:34:29');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (171, 'Official updated: Juliet Kilo', 20, '2022-06-23 19:34:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (172, 'Announcement updated Meeting 2', 20, '2022-06-23 21:03:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (173, 'Household created: 0001-A', 20, '2022-06-23 21:06:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (174, 'Resident created: 3', 20, '2022-06-23 21:07:14');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (175, 'Payment created: local employment', 20, '2022-06-23 21:08:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (176, 'Ceritificate setting updated', 20, '2022-06-23 21:09:46');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (177, 'Ceritificate setting updated', 20, '2022-06-23 21:10:16');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (178, 'Ceritificate setting updated', 20, '2022-06-23 21:10:42');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (179, 'Payment created: ', 20, '2022-06-23 21:11:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (180, 'Announcement updated Meeting 1', 20, '2022-06-23 21:12:24');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (181, 'User logged out', 20, '2022-06-23 21:13:16');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (182, 'User loggedin', 29, '2022-06-23 21:13:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (183, 'User Updated', 29, '2022-06-23 21:16:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (184, 'Payment created: ', 29, '2022-06-23 21:16:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (185, 'Certificate updated: C E R T I F I C A T I O N', 29, '2022-06-23 21:19:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (186, 'Certificate updated: C E R T I F I C A T I O N', 29, '2022-06-23 21:19:35');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (187, 'Certificate updated: C E R T I F I C A T I O N', 29, '2022-06-23 21:20:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (188, 'Payment created: ', 29, '2022-06-23 21:20:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (189, 'User logged out', 29, '2022-06-24 01:58:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (190, 'User loggedin', 20, '2022-06-24 04:20:08');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (191, 'User Updated', 20, '2022-06-24 05:29:18');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (192, 'User loggedin', 20, '2022-06-25 02:46:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (193, 'User loggedin', 20, '2022-06-25 05:42:23');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (194, 'User Updated', 20, '2022-06-25 07:36:27');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (195, 'Blotter created: 2022-0001', 20, '2022-06-25 07:41:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (196, 'User loggedin', 20, '2022-06-25 20:01:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (197, 'User Updated', 20, '2022-06-25 20:04:22');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (198, 'User logged out', 20, '2022-06-25 20:04:33');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (199, 'User loggedin', 20, '2022-06-25 20:04:36');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (200, 'User logged out', 20, '2022-06-25 20:15:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (201, 'User loggedin', 20, '2022-06-25 20:15:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (202, 'User Updated', 20, '2022-06-25 20:16:27');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (203, 'User logged out', 20, '2022-06-25 20:20:44');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (204, 'User loggedin', 20, '2022-06-25 20:20:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (205, 'User logged out', 20, '2022-06-25 20:21:14');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (206, 'User loggedin', 29, '2022-06-25 20:21:18');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (207, 'User logged out', 29, '2022-06-25 20:21:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (208, 'User loggedin', 29, '2022-06-25 20:21:54');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (209, 'User logged out', 29, '2022-06-25 20:21:57');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (210, 'User loggedin', 20, '2022-06-25 20:22:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (211, 'User Updated', 20, '2022-06-25 20:26:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (212, 'User logged out', 20, '2022-06-25 20:27:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (213, 'User loggedin', 20, '2022-06-25 20:27:52');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (214, 'User logged out', 20, '2022-06-25 20:29:04');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (215, 'User loggedin', 20, '2022-06-25 20:29:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (216, 'User Updated', 20, '2022-06-25 20:29:18');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (217, 'User logged out', 20, '2022-06-25 20:29:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (218, 'User loggedin', 20, '2022-06-25 20:29:32');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (219, 'User Updated', 20, '2022-06-25 20:32:52');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (220, 'User logged out', 20, '2022-06-25 20:46:15');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (221, 'User loggedin', 20, '2022-06-25 20:46:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (222, 'User logged out', 20, '2022-06-25 20:47:42');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (223, 'User loggedin', 20, '2022-06-25 20:47:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (224, 'User loggedin', 20, '2022-06-25 20:52:01');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (225, 'User loggedin', 20, '2022-06-25 20:52:04');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (226, 'User loggedin', 20, '2022-06-25 20:52:08');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (227, 'User loggedin', 20, '2022-06-25 20:52:21');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (228, 'User Updated', 20, '2022-06-25 20:53:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (229, 'User logged out', 20, '2022-06-25 20:53:54');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (230, 'User loggedin', 20, '2022-06-25 20:53:57');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (231, 'User Updated', 20, '2022-06-25 20:55:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (232, 'User logged out', 20, '2022-06-25 20:55:16');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (233, 'User loggedin', 20, '2022-06-25 20:59:16');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (234, 'User Updated', 20, '2022-06-25 20:59:43');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (235, 'User logged out', 20, '2022-06-25 20:59:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (236, 'User loggedin', 20, '2022-06-25 20:59:51');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (237, 'User Updated', 20, '2022-06-25 21:01:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (238, 'User logged out', 20, '2022-06-25 21:02:00');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (239, 'User loggedin', 20, '2022-06-26 01:47:58');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (240, 'User logged out', 20, '2022-06-26 01:51:57');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (241, 'User loggedin', 20, '2022-06-26 01:52:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (242, 'User logged out', 20, '2022-06-26 01:52:36');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (243, 'User loggedin', 20, '2022-06-26 01:52:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (244, 'User logged out', 20, '2022-06-26 01:52:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (245, 'User loggedin', 20, '2022-06-26 01:52:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (246, 'User logged out', 20, '2022-06-26 01:55:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (247, 'User loggedin', 20, '2022-06-26 01:55:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (248, 'User logged out', 20, '2022-06-26 01:56:52');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (249, 'User loggedin', 20, '2022-06-26 02:01:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (250, 'User logged out', 20, '2022-06-26 02:21:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (251, 'User loggedin', 20, '2022-06-26 02:21:14');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (252, 'User logged out', 1, '2022-06-26 03:16:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (253, 'User loggedin', 20, '2022-06-26 03:16:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (254, 'User logged out', 20, '2022-06-26 03:16:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (255, 'User loggedin', 20, '2022-06-26 03:16:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (256, 'User logged out', 20, '2022-06-26 03:17:06');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (257, 'User loggedin', 20, '2022-06-26 03:17:08');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (258, 'User logged out', 20, '2022-06-26 03:20:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (259, 'User loggedin', 20, '2022-06-26 03:20:33');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (260, 'User logged out', 20, '2022-06-26 03:20:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (261, 'User loggedin', 20, '2022-06-26 03:21:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (262, 'User logged out', 20, '2022-06-26 03:21:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (263, 'User loggedin', 20, '2022-06-26 03:21:24');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (264, 'User logged out', 20, '2022-06-26 03:21:32');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (265, 'User loggedin', 20, '2022-06-26 03:21:46');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (266, 'User logged out', 20, '2022-06-26 03:29:27');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (267, 'User loggedin', 20, '2022-06-26 03:29:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (268, 'User logged out', 20, '2022-06-26 03:30:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (269, 'User loggedin', 20, '2022-06-26 03:31:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (270, 'User logged out', 20, '2022-06-26 03:35:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (271, 'User loggedin', 29, '2022-06-26 03:35:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (272, 'User logged out', 29, '2022-06-26 03:35:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (273, 'User loggedin', 29, '2022-06-26 03:35:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (274, 'User logged out', 29, '2022-06-26 03:35:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (275, 'User loggedin', 29, '2022-06-26 03:35:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (276, 'User logged out', 29, '2022-06-26 03:35:35');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (277, 'User loggedin', 20, '2022-06-26 03:35:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (278, 'User logged out', 20, '2022-06-26 03:36:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (279, 'User loggedin', 20, '2022-06-26 03:37:32');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (280, 'User logged out', 20, '2022-06-26 03:37:37');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (281, 'User loggedin', 20, '2022-06-26 03:46:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (282, 'User logged out', 20, '2022-06-26 03:46:18');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (283, 'User loggedin', 20, '2022-06-26 03:50:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (284, 'User logged out', 20, '2022-06-26 03:50:51');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (285, 'User loggedin', 20, '2022-06-26 04:07:57');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (286, 'Backup generated', 20, '2022-06-26 04:11:08');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (287, 'User logged out', 20, '2022-06-26 05:05:24');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (288, 'User loggedin', 20, '2022-06-26 06:27:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (289, 'Announcement updated Meeting 2', 20, '2022-06-26 08:27:32');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (290, 'User logged out', 20, '2022-06-26 10:02:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (291, 'User loggedin', 20, '2022-06-26 18:29:54');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (292, 'User logged out', 1, '2022-06-26 18:31:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (293, 'User loggedin', 20, '2022-06-26 18:31:42');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (294, 'Payment created: local employment', 20, '2022-06-26 18:35:37');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (295, 'User loggedin', 20, '2022-06-27 01:18:13');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (296, 'User logged out', 20, '2022-06-27 02:04:00');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (297, 'User loggedin', 20, '2022-06-27 02:04:06');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (298, 'User logged out', 20, '2022-06-27 02:04:15');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (299, 'User loggedin', 20, '2022-06-27 02:14:16');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (300, 'User logged out', 20, '2022-06-27 02:14:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (301, 'User loggedin', 20, '2022-06-27 02:49:55');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (302, 'User logged out', 20, '2022-06-27 02:49:59');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (303, 'User loggedin', 20, '2022-06-27 02:55:55');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (304, 'User logged out', 20, '2022-06-27 02:56:01');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (305, 'User loggedin', 20, '2022-06-27 02:56:32');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (306, 'User logged out', 20, '2022-06-27 02:56:37');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (307, 'User loggedin', 20, '2022-06-27 02:56:46');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (308, 'User logged out', 20, '2022-06-27 02:57:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (309, 'User loggedin', 20, '2022-06-27 02:58:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (310, 'User logged out', 20, '2022-06-27 02:58:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (311, 'User loggedin', 20, '2022-06-27 03:07:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (312, 'User logged out', 20, '2022-06-27 03:07:13');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (313, 'User loggedin', 20, '2022-06-27 03:13:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (314, 'User logged out', 20, '2022-06-27 03:13:21');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (315, 'User loggedin', 20, '2022-06-27 03:13:27');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (316, 'User logged out', 20, '2022-06-27 03:15:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (317, 'User loggedin', 20, '2022-06-27 03:19:10');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (318, 'User logged out', 20, '2022-06-27 03:19:13');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (319, 'User loggedin', 20, '2022-06-27 03:33:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (320, 'User logged out', 20, '2022-06-27 03:33:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (321, 'User loggedin', 20, '2022-06-27 03:33:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (322, 'User logged out', 20, '2022-06-27 03:35:46');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (323, 'User loggedin', 20, '2022-06-27 03:35:52');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (324, 'User loggedin', 20, '2022-06-27 03:36:45');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (325, 'User logged out', 20, '2022-06-27 03:58:21');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (326, 'User loggedin', 20, '2022-06-27 04:01:06');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (327, 'User logged out', 20, '2022-06-27 04:01:10');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (328, 'User loggedin', 20, '2022-06-27 04:06:46');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (329, 'User logged out', 20, '2022-06-27 04:08:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (330, 'User loggedin', 20, '2022-06-27 04:09:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (331, 'User logged out', 20, '2022-06-27 04:10:25');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (332, 'User logged out', NULL, '2022-06-27 04:10:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (333, 'User loggedin', 20, '2022-06-27 04:13:52');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (334, 'User logged out', 20, '2022-06-27 04:14:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (335, 'User loggedin', 20, '2022-06-27 04:18:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (336, 'User logged out', 20, '2022-06-27 04:21:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (337, 'User loggedin', 20, '2022-06-27 04:23:10');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (338, 'User logged out', 20, '2022-06-27 04:23:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (339, 'User loggedin', 20, '2022-06-27 04:23:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (340, 'User logged out', 20, '2022-06-27 04:24:54');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (341, 'User loggedin', 20, '2022-06-27 04:24:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (342, 'User logged out', 20, '2022-06-27 04:29:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (343, 'User loggedin', 20, '2022-06-27 04:30:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (344, 'User logged out', 20, '2022-06-27 04:31:15');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (345, 'User loggedin', 20, '2022-06-27 04:31:29');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (346, 'User logged out', 20, '2022-06-27 04:34:24');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (347, 'User loggedin', 20, '2022-06-27 04:56:54');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (348, 'User logged out', 20, '2022-06-27 04:57:18');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (349, 'User loggedin', 20, '2022-06-27 06:46:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (350, 'User logged out', 20, '2022-06-27 06:46:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (351, 'User loggedin', 20, '2022-06-27 06:49:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (352, 'User logged out', 20, '2022-06-27 06:49:37');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (353, 'User loggedin', 20, '2022-06-27 07:00:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (354, 'System info updated', 20, '2022-06-27 08:40:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (355, 'Certificate updated: C E R T I F I C A T I O N', 20, '2022-06-27 08:41:15');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (356, 'Payment created: ', 20, '2022-06-27 08:42:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (357, 'Ceritificate setting updated', 20, '2022-06-27 08:43:00');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (358, 'Barangay ID updated', 20, '2022-06-27 08:52:22');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (359, 'Barangay ID updated', 20, '2022-06-27 08:52:36');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (360, 'Payment created: Barangay ID', 20, '2022-06-27 08:52:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (361, 'User logged out', 20, '2022-06-27 09:01:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (362, 'User loggedin', 20, '2022-06-27 09:02:59');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (363, 'Payment created: ', 20, '2022-06-27 09:07:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (364, 'Payment created: local employment', 20, '2022-06-27 09:29:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (365, 'User loggedin', 20, '2022-06-27 20:51:43');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (366, 'Blotter created: 2022-0001', 20, '2022-06-27 20:54:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (367, 'Blotter created: 2022-0001', 20, '2022-06-27 20:54:58');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (368, 'Blotter created: 2022-0001', 20, '2022-06-27 20:55:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (369, 'Blotter created: 2022-0001', 20, '2022-06-27 21:06:59');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (370, 'Summon created: 2022-0001', 20, '2022-06-27 21:07:42');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (371, 'Blotter created: 2022-0001', 20, '2022-06-27 21:12:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (372, 'Blotter created: 2022-0001', 20, '2022-06-27 21:22:06');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (373, 'Blotter created: 2022-0001', 20, '2022-06-27 21:22:37');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (374, 'Blotter created: 2022-0001', 20, '2022-06-27 21:23:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (375, 'Blotter created: 2022-0001', 20, '2022-06-27 21:26:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (376, 'User loggedin', 20, '2022-06-28 04:10:43');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (377, 'User logged out', 20, '2022-06-28 04:10:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (378, 'User loggedin', 20, '2022-06-28 04:11:24');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (379, 'Resident updated: 3', 20, '2022-06-28 04:13:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (380, 'Resident updated: 3', 20, '2022-06-28 04:14:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (381, 'Resident updated: 3', 20, '2022-06-28 04:14:38');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (382, 'User logged out', 20, '2022-06-28 04:15:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (383, 'User loggedin', 20, '2022-06-28 04:49:23');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (384, 'Announcement deleted 16', 20, '2022-06-28 07:43:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (385, 'Announcement deleted 15', 20, '2022-06-28 07:43:24');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (386, 'User loggedin', 20, '2022-07-01 00:13:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (387, 'User loggedin', 20, '2022-07-08 22:01:18');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (388, 'User logged out', 20, '2022-07-08 22:01:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (389, 'User loggedin', 20, '2022-07-08 22:02:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (390, 'User loggedin', 20, '2022-07-08 22:05:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (391, 'User logged out', 20, '2022-07-08 22:05:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (392, 'User loggedin', 20, '2022-07-08 22:06:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (393, 'User logged out', 20, '2022-07-08 22:06:46');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (394, 'User loggedin', 20, '2022-07-08 22:07:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (395, 'User logged out', 20, '2022-07-08 22:10:10');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (396, 'User loggedin', 20, '2022-07-08 22:10:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (397, 'Blotter created: 2022-0001', 20, '2022-07-08 22:11:21');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (398, 'User logged out', 20, '2022-07-08 22:15:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (399, 'User loggedin', 20, '2022-07-08 22:16:10');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (400, 'User Created: admin2', 20, '2022-07-08 22:46:21');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (401, 'User loggedin', 20, '2022-07-09 07:41:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (402, 'Resident created: 4', 20, '2022-07-09 07:44:33');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (403, 'User loggedin', 20, '2022-07-10 08:49:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (404, 'User logged out', 20, '2022-07-10 08:50:01');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (405, 'User loggedin', 20, '2022-07-10 08:58:06');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (406, 'Backup generated', 20, '2022-07-10 09:02:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (407, 'User logged out', 20, '2022-07-10 09:03:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (408, 'User loggedin', 20, '2022-07-11 08:20:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (409, 'User logged out', 20, '2022-07-11 08:21:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (410, 'User loggedin', 29, '2022-07-11 08:21:43');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (411, 'User loggedin', 20, '2022-07-11 08:22:29');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (412, 'Official updated: Alpha Beta', 29, '2022-07-11 08:24:18');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (413, 'Official updated: Alpha Beta', 29, '2022-07-11 08:25:43');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (414, 'User logged out', 29, '2022-07-11 09:57:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (415, 'User loggedin', 20, '2022-07-11 09:58:00');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (416, 'User loggedin', 20, '2022-07-11 21:08:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (417, 'User loggedin', 20, '2022-07-11 21:32:14');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (418, 'User loggedin', 20, '2022-07-12 06:17:24');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (419, 'User loggedin', 20, '2022-07-13 08:36:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (420, 'User logged out', 20, '2022-07-13 08:55:44');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (421, 'User loggedin', 20, '2022-07-13 09:11:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (422, 'User loggedin', 20, '2022-07-14 08:54:14');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (423, 'Resident updated: 4', 20, '2022-07-14 09:25:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (424, 'Resident updated: 4', 20, '2022-07-14 09:26:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (425, 'Resident created: 5', 20, '2022-07-14 09:28:57');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (426, 'Resident updated: 5', 20, '2022-07-14 09:29:43');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (427, 'Exported resident', 20, '2022-07-14 09:54:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (428, 'Resident updated: 4', 20, '2022-07-14 10:01:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (429, 'Resident updated: 4', 20, '2022-07-14 10:03:29');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (430, 'Payment created: local employment', 20, '2022-07-14 10:14:54');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (431, 'Business permit created: SARI-SARI STORE', 20, '2022-07-14 10:28:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (432, 'Blotter created: 3', 20, '2022-07-14 10:34:21');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (433, 'Backup generated', 20, '2022-07-14 11:08:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (434, 'Announcement deleted 14', 20, '2022-07-14 11:08:15');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (435, 'Announcement deleted 13', 20, '2022-07-14 11:08:18');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (436, 'Announcement deleted 12', 20, '2022-07-14 11:08:22');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (437, 'Backup generated', 20, '2022-07-14 11:09:01');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (438, 'Backup generated', 20, '2022-07-14 11:15:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (439, 'User logged out', 20, '2022-07-14 11:25:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (440, 'User loggedin', 20, '2022-07-14 11:25:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (441, 'User logged out', 20, '2022-07-14 11:25:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (442, 'User loggedin', 29, '2022-07-14 11:26:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (443, 'User logged out', 29, '2022-07-14 11:26:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (444, 'User loggedin', 20, '2022-07-14 11:26:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (445, 'Certificate created: SAMPLE CERTIFICATION', 20, '2022-07-14 11:31:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (446, 'Payment created: ', 20, '2022-07-14 11:33:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (447, 'User logged out', 20, '2022-07-14 11:34:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (448, 'User loggedin', 29, '2022-07-14 11:34:13');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (449, 'Payment created: ', 29, '2022-07-14 11:34:36');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (450, 'Payment created: Barangay ID', 29, '2022-07-14 11:35:46');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (451, 'User logged out', 29, '2022-07-14 11:36:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (452, 'User loggedin', 20, '2022-07-14 11:37:22');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (453, 'User logged out', 20, '2022-07-14 11:38:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (454, 'User loggedin', 20, '2022-07-14 11:39:27');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (455, 'User logged out', 20, '2022-07-14 11:39:51');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (456, 'User loggedin', 20, '2022-07-14 11:40:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (457, 'Official created: MERALCO', 20, '2022-07-14 11:43:35');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (458, 'Official updated: MERALCO', 20, '2022-07-14 11:44:01');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (459, 'Resident updated: 4', 20, '2022-07-14 11:45:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (460, 'Resident updated: 4', 20, '2022-07-14 11:45:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (461, 'Payment created: local employment', 20, '2022-07-14 11:46:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (462, 'Payment created: ', 20, '2022-07-14 11:47:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (463, 'Certificate updated: SAMPLE CERTIFICATION', 20, '2022-07-14 11:48:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (464, 'Certificate created: sample cert', 20, '2022-07-14 11:49:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (465, 'Blotter created: 2', 20, '2022-07-14 11:50:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (466, 'Announcement updated Meeting 1', 20, '2022-07-14 11:52:42');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (467, 'Announcement updated Meeting 2', 20, '2022-07-14 11:52:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (468, 'Backup generated', 20, '2022-07-14 11:53:00');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (469, 'Barangay info updated', 20, '2022-07-14 11:55:08');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (470, 'User logged out', 20, '2022-07-14 11:55:43');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (471, 'User loggedin', 20, '2022-07-14 11:56:21');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (472, 'User logged out', 20, '2022-07-14 11:56:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (473, 'User loggedin', 20, '2022-07-14 11:57:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (474, 'Official created: MERALCObolts', 20, '2022-07-14 11:59:27');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (475, 'Official updated: MERALCObolts', 20, '2022-07-14 11:59:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (476, 'Resident updated: 3', 20, '2022-07-14 12:01:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (477, 'Resident updated: 3', 20, '2022-07-14 12:01:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (478, 'Resident updated: 4', 20, '2022-07-14 12:01:32');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (479, 'Resident updated: 4', 20, '2022-07-14 12:02:14');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (480, 'Payment created: ', 20, '2022-07-14 12:03:01');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (481, 'Certificate created: sample certificate', 20, '2022-07-14 12:04:16');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (482, 'Payment created: ', 20, '2022-07-14 12:04:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (483, 'Blotter created: 2', 20, '2022-07-14 12:05:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (484, 'Family relation updated: Son in law', 20, '2022-07-14 12:07:04');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (485, 'Announcement updated Meeting 1', 20, '2022-07-14 12:07:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (486, 'Backup generated', 20, '2022-07-14 12:07:35');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (487, 'Barangay info updated', 20, '2022-07-14 12:09:01');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (488, 'User logged out', 20, '2022-07-14 12:09:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (489, 'User loggedin', 20, '2022-07-14 21:07:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (490, 'Certificate created: SAMPLE CERTIFICATE', 20, '2022-07-14 21:08:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (491, 'User logged out', 20, '2022-07-14 21:26:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (492, 'User loggedin', 20, '2022-07-14 21:55:16');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (493, 'Official updated: jayr dimaculangan', 20, '2022-07-14 21:59:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (494, 'Backup generated', 20, '2022-07-14 22:10:51');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (495, 'Blotter created: 2', 20, '2022-07-14 22:14:15');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (496, 'User loggedin', 20, '2022-07-17 08:41:03');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (497, 'Official deleted: 23', 20, '2022-07-17 08:41:21');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (498, 'User loggedin', 20, '2022-07-26 18:53:03');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (499, 'User logged out', 20, '2022-07-26 19:05:27');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (500, 'User loggedin', 20, '2022-07-26 19:14:51');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (501, 'Payment created: ', 20, '2022-07-26 19:28:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (502, 'Payment created: asdadasd', 20, '2022-07-26 19:28:44');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (503, 'Payment created: ', 20, '2022-07-26 19:29:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (504, 'Payment created: ', 20, '2022-07-26 19:29:25');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (505, 'User loggedin', 20, '2022-07-27 04:26:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (506, 'Resident updated: 5', 20, '2022-07-27 04:27:24');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (507, 'Resident updated: 3', 20, '2022-07-27 04:29:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (508, 'Backup generated', 20, '2022-07-27 04:41:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (509, 'Barangay info updated', 20, '2022-07-27 04:43:22');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (510, 'Payment created: Barangay ID', 20, '2022-07-27 04:50:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (511, 'User loggedin', 20, '2022-07-28 00:59:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (512, 'User loggedin', 20, '2022-07-28 01:15:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (513, 'Official updated: Alpha Beta', 20, '2022-07-28 02:12:55');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (514, 'Payment created: local emolyment', 20, '2022-07-28 02:14:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (515, 'Payment created: ', 20, '2022-07-28 02:31:54');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (516, 'Business permit updated: SARI-SARI STORE', 20, '2022-07-28 02:38:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (517, 'Payment created: Business Permit', 20, '2022-07-28 02:56:25');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (518, 'Blotter created: 2022-0001', 20, '2022-07-28 03:09:21');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (519, 'Backup generated', 20, '2022-07-28 03:33:52');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (520, 'User loggedin', 20, '2022-08-04 10:19:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (521, 'User loggedin', 20, '2022-08-16 08:15:58');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (522, 'User loggedin', 20, '2022-09-21 02:01:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (523, 'User logged out', 1, '2022-11-06 08:01:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (524, 'User loggedin', 20, '2022-11-06 08:02:04');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (525, 'User loggedin', 20, '2022-11-08 21:35:44');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (526, 'Backup generated', 30, '2022-11-18 02:44:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (527, 'Backup generated', 20, '2022-11-18 22:55:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (528, 'Announcement updated Meeting 2', 20, '2022-11-19 00:31:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (529, 'Household updated: 0001-A', 20, '2022-11-19 00:31:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (530, 'Backup generated', 20, '2022-11-19 00:36:55');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (531, 'Covid status updated: 5', 20, '2022-11-19 00:38:38');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (532, 'User logged out', 20, '2022-11-19 00:39:58');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (533, 'User loggedin', 20, '2022-11-19 00:51:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (534, 'User password changed: admin', 20, '2022-11-19 00:51:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (535, 'Blotter created: 2', 20, '2022-11-19 00:52:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (536, 'User logged out', 20, '2022-11-19 00:53:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (537, 'User logged out', 20, '2022-11-20 03:14:32');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (538, 'User loggedin', 20, '2022-11-20 03:14:45');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (539, 'User logged out', 20, '2022-11-20 03:15:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (540, 'User Created: resident', NULL, '2022-11-20 03:15:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (541, 'User loggedin', 31, '2022-11-20 03:15:46');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (542, 'Request created', 31, '2022-11-20 03:16:23');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (543, 'User logged out', 31, '2022-11-20 03:16:25');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (544, 'User loggedin', 20, '2022-11-20 03:16:32');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (545, 'Request change status', 20, '2022-11-20 03:17:10');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (546, 'User loggedin', 31, '2022-11-20 03:17:44');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (547, 'User Updated', 20, '2022-11-21 03:48:10');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (548, 'User Updated', 20, '2022-11-21 03:48:22');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (549, 'User Updated', 20, '2022-11-21 03:51:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (550, 'User Updated', 20, '2022-11-21 03:52:13');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (551, 'User Updated', 20, '2022-11-21 03:59:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (552, 'User Updated', 20, '2022-11-21 04:04:18');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (553, 'User Updated', 20, '2022-11-21 04:29:35');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (554, 'User logged out', 1, '2022-11-21 21:05:33');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (555, 'User loggedin', 20, '2022-11-21 21:05:38');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (556, 'Barangay info updated', 20, '2022-11-21 21:06:29');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (557, 'Barangay info updated', 20, '2022-11-21 21:06:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (558, 'User logged out', 20, '2022-11-21 21:09:51');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (559, 'User loggedin', 31, '2022-11-21 21:10:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (560, 'Request created', 31, '2022-11-21 21:10:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (561, 'User logged out', 31, '2022-11-21 21:10:58');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (562, 'User loggedin', 20, '2022-11-21 21:11:04');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (563, 'User logged out', 20, '2022-11-21 21:14:45');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (564, 'User loggedin', 31, '2022-11-21 21:14:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (565, 'Request created', 31, '2022-11-21 21:15:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (566, 'User logged out', 31, '2022-11-21 21:15:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (567, 'User loggedin', 20, '2022-11-21 21:15:13');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (568, 'Request change status', 20, '2022-11-21 21:23:52');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (569, 'Request change status', 20, '2022-11-21 21:23:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (570, 'Request change status', 20, '2022-11-21 21:24:03');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (571, 'Request change status', 20, '2022-11-21 21:28:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (572, 'User loggedin', 31, '2022-11-21 21:28:54');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (573, 'Request change status', 20, '2022-11-21 21:31:38');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (574, 'Request received', 31, '2022-11-21 21:32:01');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (575, 'User logged out', 20, '2022-11-21 21:36:23');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (576, 'User loggedin', 31, '2022-11-21 21:36:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (577, 'Request created', 31, '2022-11-21 22:59:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (578, 'User logged out', 31, '2022-11-21 23:00:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (579, 'User loggedin', 20, '2022-11-21 23:00:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (580, 'Request change status', 20, '2022-11-21 23:00:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (581, 'User logged out', 20, '2022-11-21 23:00:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (582, 'User loggedin', 31, '2022-11-21 23:00:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (583, 'Request received', 31, '2022-11-21 23:00:59');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (584, 'User logged out', 31, '2022-11-22 00:05:52');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (585, 'User loggedin', 31, '2022-11-22 00:05:55');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (586, 'User logged out', 31, '2022-11-22 00:06:08');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (587, 'User loggedin', 20, '2022-11-22 00:06:13');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (588, 'User logged out', 20, '2022-11-22 00:31:36');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (589, 'User loggedin', 31, '2022-11-22 00:31:42');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (590, 'Request cancelled', 31, '2022-11-22 00:31:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (591, 'Request created', 31, '2022-11-22 00:32:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (592, 'User logged out', 31, '2022-11-22 00:32:21');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (593, 'User loggedin', 20, '2022-11-22 00:32:25');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (594, 'User logged out', 20, '2022-11-22 00:42:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (595, 'User loggedin', 31, '2022-11-22 00:42:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (596, 'User logged out', 31, '2022-11-22 00:49:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (597, 'User loggedin', 20, '2022-11-22 00:52:59');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (598, 'Backup generated', 20, '2022-11-22 01:03:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (599, 'User Updated', 20, '2022-11-22 01:59:57');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (600, 'User loggedin', 20, '2022-11-22 03:44:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (601, 'User loggedin', 20, '2022-11-22 23:08:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (602, 'User Updated', 20, '2022-11-22 23:15:44');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (603, 'Exported resident', 20, '2022-11-22 23:22:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (604, 'User logged out', 20, '2022-11-22 23:28:33');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (605, 'User loggedin', 31, '2022-11-22 23:28:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (606, 'User logged out', 31, '2022-11-22 23:29:27');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (607, 'User loggedin', 20, '2022-11-22 23:29:33');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (608, 'User logged out', 20, '2022-11-22 23:52:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (609, 'User loggedin', 20, '2022-11-23 00:06:35');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (610, 'Payment created: 3242244', 20, '2022-11-23 06:44:25');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (611, 'User logged out', 20, '2022-11-23 08:24:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (612, 'User loggedin', 20, '2022-12-04 09:42:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (613, 'Backup generated', 20, '2022-12-04 09:44:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (614, 'User loggedin', 20, '2022-12-12 23:28:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (615, 'User loggedin', 20, '2022-12-28 02:14:43');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (616, 'Announcement updated Meeting 1', 20, '2022-12-28 02:15:23');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (617, 'User logged out', 20, '2022-12-28 02:23:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (618, 'User loggedin', 31, '2022-12-28 02:23:58');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (619, 'User logged out', 31, '2022-12-28 02:24:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (620, 'User logged out', 1, '2023-01-09 02:30:45');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (621, 'User loggedin', 29, '2023-01-09 02:30:58');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (622, 'Resident created: 6', 29, '2023-01-09 02:31:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (623, 'User logged out', 29, '2023-01-09 02:32:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (624, 'User loggedin', 20, '2023-01-11 09:40:35');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (625, 'User loggedin', 20, '2023-01-26 02:29:15');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (626, 'Household deleted: 4852', 20, '2023-01-26 02:32:36');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (627, 'Household created: 0001-a', 20, '2023-01-26 02:32:59');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (628, 'User logged out', 20, '2023-01-26 02:50:41');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (629, 'User loggedin', 20, '2023-01-26 02:57:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (630, 'Barangay info updated', 20, '2023-01-26 02:58:37');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (631, 'User logged out', 13, '2023-01-26 03:06:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (632, 'User loggedin', 31, '2023-01-26 03:06:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (633, 'User logged out', 31, '2023-01-26 03:08:38');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (634, 'User loggedin', 20, '2023-01-30 02:51:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (635, 'Services updated: BARANGAY CLEARANCE', 20, '2023-01-30 02:54:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (636, 'Services updated: BARANGAY CLEARANCE', 20, '2023-01-30 02:54:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (637, 'Services updated: RESIDENCY CERTIFICATE', 20, '2023-01-30 02:54:57');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (638, 'Services updated: INDIGENCY CERTIFICATE', 20, '2023-01-30 02:55:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (639, 'Services updated: RESIDENCY CERTIFICATE', 20, '2023-01-30 02:55:32');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (640, 'Announcement updated Meeting 1', 20, '2023-01-30 02:58:25');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (641, 'User loggedin', 20, '2023-11-15 10:19:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (642, 'User loggedin', 20, '2023-11-15 10:29:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (643, 'Official updated: Lourie Ann E. Tuliao', 20, '2023-11-15 10:31:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (644, 'Official updated: LOURIE ANN EDER TULIAO', 20, '2023-11-15 10:32:18');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (645, 'Official updated: TEEDULFO MADARIAGA', 20, '2023-11-15 10:36:46');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (646, 'Official updated: TEODULFO MADARIAGA', 20, '2023-11-15 10:37:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (647, 'Request change status', 20, '2023-11-15 10:41:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (648, 'Barangay info updated', 20, '2023-11-15 10:44:42');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (649, 'Position updated: Councilor 1', 20, '2023-11-15 10:45:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (650, 'Position updated: Councilor 2', 20, '2023-11-15 10:45:28');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (651, 'Position updated: Councilor 3', 20, '2023-11-15 10:45:39');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (652, 'Position updated: Councilor 4', 20, '2023-11-15 10:45:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (653, 'Position updated: Councilor 5', 20, '2023-11-15 10:45:58');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (654, 'Position updated: Councilor 6', 20, '2023-11-15 10:46:16');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (655, 'Position created: Councilor 7', 20, '2023-11-15 10:47:20');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (656, 'Position updated: Councilor 1', 20, '2023-11-15 10:48:00');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (657, 'Position updated: Councilor 2', 20, '2023-11-15 10:48:15');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (658, 'Position updated: Councilor 3', 20, '2023-11-15 10:48:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (659, 'Position updated: Councilor 4', 20, '2023-11-15 10:48:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (660, 'Position updated: Councilor 5', 20, '2023-11-15 10:49:11');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (661, 'Position updated: Councilor 6', 20, '2023-11-15 10:49:32');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (662, 'Position updated: Councilor 7', 20, '2023-11-15 10:49:47');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (663, 'Position updated: SK Chairperson', 20, '2023-11-15 10:50:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (664, 'Position updated: Barangay Secretary', 20, '2023-11-15 10:50:29');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (665, 'Position updated: Barangay Treasurer', 20, '2023-11-15 10:50:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (666, 'Position updated: Administrative Aid', 20, '2023-11-15 10:51:02');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (667, 'Purok deleted: 18', 20, '2023-11-15 10:53:00');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (668, 'Purok deleted: 17', 20, '2023-11-15 10:53:08');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (669, 'Purok deleted: 16', 20, '2023-11-15 10:53:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (670, 'Purok updated: Sector 1', 20, '2023-11-15 10:53:33');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (671, 'Purok updated: Sector 2', 20, '2023-11-15 10:54:06');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (672, 'Purok updated: Sector 3', 20, '2023-11-15 10:54:19');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (673, 'Purok updated: Sector 4', 20, '2023-11-15 10:54:34');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (674, 'Purok updated: Sector 5', 20, '2023-11-15 10:54:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (675, 'Purok updated: Sector 6', 20, '2023-11-15 10:55:00');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (676, 'Purok updated: Sector 7', 20, '2023-11-15 10:55:13');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (677, 'Position updated: Administrative Adviser', 20, '2023-11-15 10:57:33');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (678, 'Official created: Chief', 20, '2023-11-15 10:59:42');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (679, 'Official updated: LOVELY JOY MADARIAGA', 20, '2023-11-15 11:00:38');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (680, 'Official updated: JERIC COLOMA', 20, '2023-11-15 11:01:12');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (681, 'Official updated: ROSEPHIL RAMONES', 20, '2023-11-15 11:02:16');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (682, 'Official updated: ROSEPHIL RAMONES', 20, '2023-11-15 11:03:35');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (683, 'Official updated: Echo Foxtrot', 20, '2023-11-15 11:03:53');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (684, 'Official updated: Foxtrot Golf', 20, '2023-11-15 11:04:05');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (685, 'Official updated: MERALCO', 20, '2023-11-15 11:04:25');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (686, 'User Updated', 20, '2023-11-15 11:11:43');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (687, 'User Updated', 20, '2023-11-15 11:13:09');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (688, 'User Updated', 20, '2023-11-15 11:13:56');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (689, 'Resident deleted: 6', 20, '2023-11-15 11:14:59');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (690, 'Resident updated: 4', 20, '2023-11-15 11:22:15');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (691, 'Household updated: 0001-a', 20, '2023-11-15 11:31:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (692, 'User loggedin', 20, '2023-11-15 19:43:17');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (693, 'Resident deleted: 3', 20, '2023-11-15 20:07:59');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (694, 'Resident deleted: 4', 20, '2023-11-15 20:08:16');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (695, 'Resident updated: 5', 20, '2023-11-15 20:09:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (696, 'User loggedin', 20, '2023-11-15 21:27:30');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (697, 'Official updated: MIRIAM BADUA', 20, '2023-11-15 21:29:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (698, 'Official updated: JAY ACOBA', 20, '2023-11-15 21:30:49');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (699, 'Official updated: ROSIE ADDU', 20, '2023-11-15 21:31:26');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (700, 'Official updated: ELIZA A. QUINTINIO', 20, '2023-11-15 21:31:50');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (701, 'Official updated: CHIEF \"t\"', 20, '2023-11-15 21:32:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (702, 'Official updated: MANDO', 20, '2023-11-15 21:33:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (703, 'Official updated: AWEI', 20, '2023-11-15 21:34:07');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (704, 'Official updated: LOURIE ANN E. TULIAO', 20, '2023-11-15 21:34:29');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (705, 'Official updated: MANDO', 20, '2023-11-15 21:38:31');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (706, 'Official updated: AWEI', 20, '2023-11-15 21:38:48');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (707, 'Official updated: AWEI', 20, '2023-11-15 21:48:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (708, 'User loggedin', 20, '2023-11-16 00:22:55');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (709, 'Resident updated: 5', 20, '2023-11-16 00:26:40');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (710, 'User loggedin', 20, '2023-11-16 01:02:35');
INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES (711, 'Backup generated', 20, '2023-11-16 01:03:14');


#
# TABLE STRUCTURE FOR: announcement
#

DROP TABLE IF EXISTS `announcement`;

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `what` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `who` varchar(50) DEFAULT NULL,
  `docs` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `announcement` (`id`, `what`, `description`, `date`, `venue`, `who`, `docs`, `status`) VALUES (8, 'Meeting 1', 'Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', '2023-01-30 13:00:00', 'Meeting Hall', 'Captain', '281062d6b0d75900197a276f8992ae35.jpg', 'Active');
INSERT INTO `announcement` (`id`, `what`, `description`, `date`, `venue`, `who`, `docs`, `status`) VALUES (11, 'Meeting 2', 'Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', '2022-06-26 12:35:00', 'Meeting Hall', 'Kagawad', NULL, 'Active');


#
# TABLE STRUCTURE FOR: barangay_info
#

DROP TABLE IF EXISTS `barangay_info`;

CREATE TABLE `barangay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `map` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `barangay_info` (`id`, `province`, `town`, `brgy_name`, `number`, `email`, `street`, `purok`, `background`, `starts`, `end`, `dashboard_text`, `dashboard_img`, `city_logo`, `brgy_logo`, `map`) VALUES (1, 'Ilocos Norte', 'Bacarra', 'Barangay 12, Sta. Filomena II', '269-1034', 'brgypag.asa@gmail.com', 'Street 1', 'Sitio', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue tincidunt purus, ac feugiat eros ullamcorper eget. Nulla egestas massa ut lectus ornare pretium. In non metus a magna bibendum lobortis. In nulla enim, ultricies at lacinia at, consequat id quam. In tempor purus et nisi placerat vehicula. Maecenas in eleifend erat. Quisque vitae dui in ligula malesuada euismod.', '1990', '2022', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue tincidunt purus, ac feugiat eros ullamcorper eget. Nulla egestas massa ut lectus ornare pretium. In non metus a magna bibendum lobortis. In nulla enim, ultricies at lacinia at, consequat id quam. In tempor purus et nisi placerat vehicula. Maecenas in eleifend erat. Quisque vitae dui in ligula malesuada euismod.', 'c273e5e8ffb3727aaf4a6dce9012bc5c.png', '9a0f8493e81fe13fed3c7bea534dda71.png', '9e20bca1058f5c5f0eea5555feb3e027.png', NULL);


#
# TABLE STRUCTURE FOR: block_user
#

DROP TABLE IF EXISTS `block_user`;

CREATE TABLE `block_user` (
  `blocked_from` varchar(10) NOT NULL,
  `blocked_to` varchar(10) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# TABLE STRUCTURE FOR: blotter
#

DROP TABLE IF EXISTS `blotter`;

CREATE TABLE `blotter` (
  `case_no` varchar(100) NOT NULL,
  `respondent` varchar(100) NOT NULL,
  `victim` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `location` text NOT NULL,
  `incident_date` datetime NOT NULL,
  `details` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`case_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `blotter` (`case_no`, `respondent`, `victim`, `type`, `location`, `incident_date`, `details`, `status`, `created_at`) VALUES ('2', 'MARIAN', 'MARJORIE ', 'Incident', 'CALAMBA', '2022-07-14 22:29:00', 'NANAKIT SA PANININGIL', 'Settled', '2022-07-14 22:29:00');
INSERT INTO `blotter` (`case_no`, `respondent`, `victim`, `type`, `location`, `incident_date`, `details`, `status`, `created_at`) VALUES ('2022-0001', 'angel', 'marjorie ', 'Amicable', 'taysan', '2022-06-25 19:38:00', 'lol', 'Scheduled', '2022-06-25 19:38:00');
INSERT INTO `blotter` (`case_no`, `respondent`, `victim`, `type`, `location`, `incident_date`, `details`, `status`, `created_at`) VALUES ('3', 'JAYR', 'MARIAN ', 'Incident', 'CALAMBA', '2022-07-14 22:31:00', 'NANG AWAY', 'Dismissed', '2022-07-14 22:31:00');


#
# TABLE STRUCTURE FOR: calendar_events
#

DROP TABLE IF EXISTS `calendar_events`;

CREATE TABLE `calendar_events` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `calendar_events` (`ID`, `title`, `start`, `end`, `description`) VALUES (1, 'Samsung', '2021-09-30 08:50:00', '2021-10-01 19:48:00', 'fdsfsdfdsfds');


#
# TABLE STRUCTURE FOR: cert_settings
#

DROP TABLE IF EXISTS `cert_settings`;

CREATE TABLE `cert_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` text DEFAULT NULL,
  `motto` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `watermark` text DEFAULT NULL,
  `color_bg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `cert_settings` (`id`, `flag`, `motto`, `signature`, `watermark`, `color_bg`) VALUES (1, 'c7c4297166e2c5e3715032b5e44c8349.png', 'e7c732cb3a6819d9cac0378db51942b6.png', 'signature.png', 'c545b0b8698dfc6738a5c81cbb2f595f.png', 'transparent');


#
# TABLE STRUCTURE FOR: certificates
#

DROP TABLE IF EXISTS `certificates`;

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: chairmanship
#

DROP TABLE IF EXISTS `chairmanship`;

CREATE TABLE `chairmanship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `chairmanship` (`id`, `title`) VALUES (1, 'PRESIDING OFFICER');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (3, 'COMMITTEE ON HEALTH');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (4, 'COMMITTEE ON APPROPRIATION');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (5, 'COMMITTEE ON ENVIRONMENT');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (6, 'COMMITTEE ON PEACE AND ORDER');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (7, 'COMMITTEE ON EDUCATION');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (8, 'COMMITTEE ON INFRASTRUCTURE');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (9, 'COMMITTEE ON YOUTH DEVELOPMENT');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (10, 'COMMITTEE ON GAD');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (11, 'COMMITTEE ON AGRICULTURE');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (12, 'COMMITTEE ON BAC');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (13, 'COMMITTEE ON WAYS AND MEANS');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (14, 'COMMITTEE ON VAW-C');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (15, 'COMMITTEE ON SPORTS');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (16, 'COMMITTEE ON APPROPRIATION / YOUTH DEVELOPMENT');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (17, 'COMMITTEE ON HEALTH / SPORTS');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (18, 'COMMITTEE ON INFRASTRUCTURE / BAC / WAYS AND MEANS');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (19, 'COMMITTEE ON PEACE AND ORDER / SPORTS');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (20, 'COMMITTEE ON VAW-C / COMMITTEE ON EDUCATION');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (21, 'COMMITTEE ON ENVIRONMENT / GAD');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (22, 'NONE');


#
# TABLE STRUCTURE FOR: complainants
#

DROP TABLE IF EXISTS `complainants`;

CREATE TABLE `complainants` (
  `case_no` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `national_id` varchar(50) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  KEY `case_no` (`case_no`),
  CONSTRAINT `complainants_ibfk_1` FOREIGN KEY (`case_no`) REFERENCES `blotter` (`case_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('2022-0001', 'ad ad', '', '09122789468', 'Male', '31', '', 'mayapa');
INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('2', 'ANGLE', '54557854', '092222222', 'Female', '22', 'DI NAGBAYAD NG UTANG', 'CALAMBA CITY');
INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('3', 'MARJORIE CLEOFAS', '5787545', '65566', 'Female', '22', 'MANININGIL', 'CALAMBA');
INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('3', 'MARJORIE CLEOFAS', '5787545', '65566', 'Female', '22', 'MANININGIL', 'CALAMBA');
INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('2022-0001', 'ad ad', '', '09122789468', 'Male', '31', '', 'mayapa');
INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('2', 'ANGLE', '54557854', '092222222', 'Female', '22', 'DI NAGBAYAD NG UTANG', 'CALAMBA CITY');
INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('3', 'MARJORIE CLEOFAS', '5787545', '65566', 'Female', '22', 'MANININGIL', 'CALAMBA');
INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('3', 'MARJORIE CLEOFAS', '5787545', '65566', 'Female', '22', 'MANININGIL', 'CALAMBA');


#
# TABLE STRUCTURE FOR: covid_status
#

DROP TABLE IF EXISTS `covid_status`;

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
  `remarks` text DEFAULT NULL,
  KEY `resident_id` (`resident_id`),
  CONSTRAINT `covid_status_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (5, 'Positive', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '');
INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (5, 'Positive', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '');


#
# TABLE STRUCTURE FOR: house_number
#

DROP TABLE IF EXISTS `house_number`;

CREATE TABLE `house_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(100) DEFAULT NULL,
  `info` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=4854 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (4853, '0001-a', '043 Madariaga St');


#
# TABLE STRUCTURE FOR: id_settings
#

DROP TABLE IF EXISTS `id_settings`;

CREATE TABLE `id_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `front` text DEFAULT NULL,
  `back` text DEFAULT NULL,
  `bg_color` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `id_settings` (`id`, `front`, `back`, `bg_color`) VALUES (1, 'aab0223983f6cd4a924fac2f130538cc.png', 'ee4568489d0a6cfd234d80ae99ca8fb0.png', 'transparent');


#
# TABLE STRUCTURE FOR: officials
#

DROP TABLE IF EXISTS `officials`;

CREATE TABLE `officials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `chairmanship` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (2, 'LOURIE ANN E. TULIAO', 1, 3, '2023-11-30', '2025-05-28', 'Active', '97b7dd7e3fd8bab0fd1fc4a6269fe49b.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (3, 'Kgg. Avelina M. Tan', 16, 1, '2021-05-15', '2025-06-03', 'Active', 'c29cc2401b1e9860fe82e990b547cc2d.jpg');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (4, 'TEODULFO MADARIAGA', 17, 5, '2023-11-30', '2025-04-30', 'Active', '90c28b7971f13300dec4f4d54f257b48.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (5, 'JERIC COLOMA', 4, 6, '2021-05-01', '2025-05-01', 'Active', '09067e978d67b1a7bd30447961bc3790.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (6, 'Kgg. Angel B. Sandoc', 19, 7, '2021-05-08', '2025-05-08', 'Active', '8d35deade377dc39c32ef9a35b459201.jpg');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (7, 'ROSEPHIL RAMONES', 5, 15, '2021-05-08', '2021-05-08', 'Active', '9d01b01e6aef84cc7425177c748b156f.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (8, 'AWEI', 6, 8, '2021-05-08', '2025-05-01', 'Active', '5ab8fc6daeab3b07a51e9f222e557267.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (9, 'MANDO', 11, 9, '2021-05-22', '2025-05-15', 'Active', 'adb891478ea9f4d38292302432e0c2a9.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (10, 'LOVELY JOY MADARIAGA', 22, 4, '2023-11-30', '2025-05-08', 'Active', '53ee97b2dc85534ed18845c82a9e9492.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (11, 'ROSIE ADDU', 22, 11, '2021-05-08', '2025-05-15', 'Active', '16a0c6e5eb5c2eab7271aeb934409c97.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (12, 'ELIZA A. QUINTINIO', 22, 12, '2021-05-01', '2025-05-15', 'Active', '787e4124a63cc38ed8e8c41c46385d7f.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (21, 'JAY ACOBA', 8, 14, '2021-09-01', '2021-09-25', 'Active', 'b13187d6360ee3ce1e3a8206d34706ff.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (22, 'MERALCO', 12, 10, '2022-07-14', '2025-11-12', 'Active', '73caa28c094e240d7a9cb8117f38fa52.png');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES (24, 'CHIEF \"t\"', 22, 13, '2023-11-30', '2025-04-30', 'Active', NULL);


#
# TABLE STRUCTURE FOR: other_details
#

DROP TABLE IF EXISTS `other_details`;

CREATE TABLE `other_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resident_id` int(11) DEFAULT NULL,
  `sss` varchar(50) DEFAULT NULL,
  `tin` varchar(50) DEFAULT NULL,
  `precinct` varchar(50) DEFAULT NULL,
  `gsis` varchar(50) DEFAULT NULL,
  `pagibig` varchar(50) DEFAULT NULL,
  `philhealth` varchar(50) DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `other_details_ibfk_1` (`resident_id`),
  CONSTRAINT `other_details_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `other_details` (`id`, `resident_id`, `sss`, `tin`, `precinct`, `gsis`, `pagibig`, `philhealth`, `blood`) VALUES (5, 5, '', '', NULL, '', '', '', '');


#
# TABLE STRUCTURE FOR: payments
#

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (9, 'C E R T I F I C A T I O N Payment', NULL, '500.00', 'admin', NULL, '2022-06-27');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (14, 'SAMPLE CERTIFICATION Payment', NULL, '250.00', 'admin', NULL, '2022-07-14');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (15, 'SAMPLE CERTIFICATION Payment', NULL, '305.00', 'staff', NULL, '2022-07-14');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (16, 'Resident Barangay ID Payment', 'Barangay ID', '20.00', 'staff', 'Alpha Charlie', '2022-07-14');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (18, 'SAMPLE CERTIFICATION Payment', NULL, '20.00', 'admin', NULL, '2022-07-14');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (20, 'Sample Certificate Payment', NULL, '250.00', 'admin', NULL, '2022-07-15');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (21, 'SAMPLE CERTIFICATE Payment', NULL, '200.00', 'admin', NULL, '2022-07-27');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (25, 'Resident Barangay ID Payment', 'Barangay ID', '200.00', 'admin', 'Alpha Charlie', '2022-07-27');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (26, 'Barangay Clearance Payment', NULL, '500.00', 'admin', 'Alpha Beta Charlie', '2022-07-28');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (27, 'SAMPLE CERTIFICATE Payment', NULL, '200.00', 'admin', NULL, '2022-07-28');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (28, 'Business Clearance Payment', 'Business Permit', '1200.00', 'admin', 'ALPHA BETA', '2022-07-28');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (29, 'Barangay Clearance Payment', NULL, '2342342.00', 'admin', 'Alpha Beta Charlie', '2022-11-23');


#
# TABLE STRUCTURE FOR: permit
#

DROP TABLE IF EXISTS `permit`;

CREATE TABLE `permit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `permit` (`id`, `b_name`, `owner1`, `owner2`, `nature`, `status`, `expiration_date`, `number`, `b_address`, `o_address`, `remarks`, `created_at`) VALUES (6, 'SARI-SARI STORE', 'ALPHA BETA', NULL, 'SARI-SARI', 'New', '2026-11-25', '0912245875', 'ORION STREET, RJVILLE SUBD. LUCENA CITY', 'ORION STREET, RJVILLE SUBD. LUCENA CITY', '', '2022-07-14');


#
# TABLE STRUCTURE FOR: position
#

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `pos_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (3, 'PUNONG BARANGAY', 1);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (4, 'SK Chairperson', 9);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (5, 'Councilor 1', 2);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (6, 'Councilor 2', 3);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (8, 'Councilor 4', 5);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (9, 'Councilor 5', 6);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (10, 'Councilor 6', 7);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (11, 'Barangay Secretary', 10);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (12, 'Barangay Treasurer', 11);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (13, 'Administrative Adviser', 12);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (14, 'Councilor 7', 8);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (15, 'Councilor 3', 4);


#
# TABLE STRUCTURE FOR: precinct
#

DROP TABLE IF EXISTS `precinct`;

CREATE TABLE `precinct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precinct_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `precinct` (`id`, `precinct_name`, `details`) VALUES (4, 'Pag-asa-001', '');
INSERT INTO `precinct` (`id`, `precinct_name`, `details`) VALUES (5, 'Pag-asa-002', '');
INSERT INTO `precinct` (`id`, `precinct_name`, `details`) VALUES (6, 'Pag-asa-003', '');
INSERT INTO `precinct` (`id`, `precinct_name`, `details`) VALUES (7, 'Pag-asa-004', '');
INSERT INTO `precinct` (`id`, `precinct_name`, `details`) VALUES (8, 'Pag-asa-005', '');
INSERT INTO `precinct` (`id`, `precinct_name`, `details`) VALUES (9, 'Pag-asa-006', '');


#
# TABLE STRUCTURE FOR: purok
#

DROP TABLE IF EXISTS `purok`;

CREATE TABLE `purok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purok_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `purok` (`id`, `purok_name`, `details`) VALUES (7, 'Sector 1', '');
INSERT INTO `purok` (`id`, `purok_name`, `details`) VALUES (8, 'Sector 2', '');
INSERT INTO `purok` (`id`, `purok_name`, `details`) VALUES (9, 'Sector 3', '');
INSERT INTO `purok` (`id`, `purok_name`, `details`) VALUES (10, 'Sector 4', '');
INSERT INTO `purok` (`id`, `purok_name`, `details`) VALUES (11, 'Sector 5', '');
INSERT INTO `purok` (`id`, `purok_name`, `details`) VALUES (12, 'Sector 6', '');
INSERT INTO `purok` (`id`, `purok_name`, `details`) VALUES (13, 'Sector 7', '');


#
# TABLE STRUCTURE FOR: request
#

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(20) DEFAULT NULL,
  `ref_no` varchar(100) DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `files` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `request_stat` int(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `resident_id` (`resident_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `request_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `request_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: resident_house
#

DROP TABLE IF EXISTS `resident_house`;

CREATE TABLE `resident_house` (
  `resident_id` int(11) DEFAULT NULL,
  `house_number` varchar(100) DEFAULT NULL,
  `relation` varchar(50) DEFAULT NULL,
  KEY `resident_id` (`resident_id`),
  KEY `resident_house_ibfk_2` (`house_number`),
  CONSTRAINT `resident_house_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `resident_house_ibfk_2` FOREIGN KEY (`house_number`) REFERENCES `house_number` (`number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: residents
#

DROP TABLE IF EXISTS `residents`;

CREATE TABLE `residents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `remarks` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `residents` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `voterstatus`, `phone`, `email`, `occupation`, `employer_name`, `pwd`, `address`, `resident_type`, `remarks`) VALUES (2, '', '', '5e9897f50167041e6de0bf22d2abaa75.png', 'resident', 'of', 'barangay', '', '', '0000-00-00', 2022, NULL, NULL, NULL, NULL, '09187112668', 'ronil.cajan@gmail.com', '', '', NULL, 'PUROK 3\r\nLOOC PROPER', 'Alive', '');
INSERT INTO `residents` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `voterstatus`, `phone`, `email`, `occupation`, `employer_name`, `pwd`, `address`, `resident_type`, `remarks`) VALUES (5, '', 'filipino', 'c9e23af056b2e44d747a14804d6e3341.png', 'Bravo', 'Charlie', 'Delta', 'Omicron', 'Quezon City', '2001-06-05', 22, 'Married', 'Male', 'Sector 1', 'Yes', '0912245875', 'brgypag.asa@gmail.com', 'vendor', 'Self employed', 'No', 'Brgy. Tibay, Sitio DiMagiba', 'Alive', 'Lumipat ng Barangay');


#
# TABLE STRUCTURE FOR: security_question
#

DROP TABLE IF EXISTS `security_question`;

CREATE TABLE `security_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resident_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `question_1` int(11) DEFAULT NULL,
  `answer_1` varchar(100) DEFAULT NULL,
  `question_2` int(11) DEFAULT NULL,
  `answer_2` varchar(100) DEFAULT NULL,
  `question_3` int(11) DEFAULT NULL,
  `answer_3` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `security_question` (`id`, `resident_id`, `username`, `question_1`, `answer_1`, `question_2`, `answer_2`, `question_3`, `answer_3`, `date`) VALUES (14, 1, 'roncajan', 1, 'Plaridel', 2, 'koki', 3, 'alabastro', '2021-10-22 09:49:37');


#
# TABLE STRUCTURE FOR: services
#

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `requires` text DEFAULT NULL,
  `qr_code` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `services` (`id`, `title`, `description`, `fees`, `phone`, `requires`, `qr_code`, `status`) VALUES (1, 'BARANGAY CLEARANCE', 'View the requirements needed for Barangay Clerance and acquire online now.', '100.00', '09122789468', 'CEDULA', '31181bf649e81222f2fc528a5ce3fa92.JPG', 'Active');
INSERT INTO `services` (`id`, `title`, `description`, `fees`, `phone`, `requires`, `qr_code`, `status`) VALUES (2, 'RESIDENCY CERTIFICATE', 'View the requirements needed for Barangay Residency and acquire online now.', '200.00', '09122789468', 'CEDULA and BRGY CLEARANCE', '9b638235f2288e6e91bdde565d468341.JPG', 'Active');
INSERT INTO `services` (`id`, `title`, `description`, `fees`, `phone`, `requires`, `qr_code`, `status`) VALUES (3, 'INDIGENCY CERTIFICATE', 'View the requirements needed for Barangay Indigency and acquire online now.', '60.00', '09122789468', 'cedula', '890c7efcac1248b406376e1f8343a13c.JPG', 'Active');


#
# TABLE STRUCTURE FOR: settled
#

DROP TABLE IF EXISTS `settled`;

CREATE TABLE `settled` (
  `case_no` varchar(50) NOT NULL,
  `updates` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`case_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES ('2', '', '2022-07-15');
INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES ('2022-0001', '', '2022-06-28');
INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES ('3', NULL, NULL);


#
# TABLE STRUCTURE FOR: summon
#

DROP TABLE IF EXISTS `summon`;

CREATE TABLE `summon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_no` varchar(50) DEFAULT NULL,
  `blotter_update` text DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_no` (`case_no`),
  CONSTRAINT `summon_ibfk_1` FOREIGN KEY (`case_no`) REFERENCES `blotter` (`case_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `summon` (`id`, `case_no`, `blotter_update`, `number`, `date`) VALUES (6, '2022-0001', 'sched ulit', '1st', '2022-06-28 09:07:00');


#
# TABLE STRUCTURE FOR: support
#

DROP TABLE IF EXISTS `support`;

CREATE TABLE `support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: system_info
#

DROP TABLE IF EXISTS `system_info`;

CREATE TABLE `system_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) NOT NULL,
  `acronym` varchar(100) NOT NULL,
  `powered_b` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `system_info` (`id`, `sname`, `acronym`, `powered_b`) VALUES (1, 'E-Record: Barangay Transaction Processing System', 'E-R:BTP System', 'CCC-BSIT CAPSTONE GROUP');


#
# TABLE STRUCTURE FOR: user_messages
#

DROP TABLE IF EXISTS `user_messages`;

CREATE TABLE `user_messages` (
  `time` datetime(6) NOT NULL,
  `sender_message_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `receiver_message_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `resident_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `unique_id`, `username`, `fname`, `lname`, `email`, `bio`, `birth`, `phone`, `address`, `password`, `user_type`, `avatar`, `status`, `created_at`, `resident_id`) VALUES (20, '2bc812', 'admin', 'Admin', 'System', 'tikya1004@gmail.com', 'dsadasdasd', '2021-10-05', '09187112668', 'PUROK 3', 'efacc4001e857f7eba4ae781c2932dedf843865e', 'administrator', 'e0d86cb90e1a381d0163a8ea8d2dd4c1.jpg', NULL, '2021-09-15 19:47:01', NULL);
INSERT INTO `users` (`id`, `unique_id`, `username`, `fname`, `lname`, `email`, `bio`, `birth`, `phone`, `address`, `password`, `user_type`, `avatar`, `status`, `created_at`, `resident_id`) VALUES (29, NULL, 'staff', NULL, NULL, 'jayr@gmail.com', NULL, NULL, NULL, NULL, '6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611', 'staff', 'ffb2b56ac6ca7d15663e5f968d858fec.png', 'Active', '2022-06-23 18:37:40', NULL);
INSERT INTO `users` (`id`, `unique_id`, `username`, `fname`, `lname`, `email`, `bio`, `birth`, `phone`, `address`, `password`, `user_type`, `avatar`, `status`, `created_at`, `resident_id`) VALUES (30, NULL, 'admin2', NULL, NULL, 'jayr12@gmail.com', NULL, NULL, NULL, NULL, '315f166c5aca63a157f7d41007675cb44a948b33', 'administrator', '43fb718a397568ef5460d42baada05c4.jpg', 'Active', '2022-07-08 22:46:21', NULL);
INSERT INTO `users` (`id`, `unique_id`, `username`, `fname`, `lname`, `email`, `bio`, `birth`, `phone`, `address`, `password`, `user_type`, `avatar`, `status`, `created_at`, `resident_id`) VALUES (31, NULL, 'resident', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '891cde22cc4a68f910b34799af7503b8229c74ea', 'resident', NULL, 'Active', '2022-11-20 03:15:39', 3);


