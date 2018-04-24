CREATE TABLE `wp_users` (  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_status` int(11) NOT NULL DEFAULT '0',  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  PRIMARY KEY (`ID`),  KEY `user_login_key` (`user_login`),  KEY `user_nicename` (`user_nicename`),  KEY `user_email` (`user_email`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES('1', 'christina.amar@gmail.com', '$P$BgT.fURyK6RCB0O2Y3b6VBPDxKjeTi.', 'christina-amargmail-com', 'christina.amar@gmail.com', '', '2013-07-12 04:37:55', '', '0', 'christina.amar@gmail.com');
INSERT INTO `wp_users` VALUES('2', 'Adrian', '$P$BUm3eSYn5LM0H8VH84/yjjmbivgbFO/', 'adrian', 'bioniclove@gmail.com', '', '2013-07-12 05:17:47', '', '0', 'Adrian Blackhurst');
INSERT INTO `wp_users` VALUES('3', 'jricks', '$P$B2ld8JAP3.UqXnnsJH/PzBs966PNeJ0', 'jricks', 'jerry.ricks@gmail.com', '', '2013-07-27 08:56:13', '', '0', 'Jerry Ricks');
INSERT INTO `wp_users` VALUES('4', 'carlos', '$P$BAV5KIRhFQj5EjmEL.LUP5CxSi/Fpo.', 'carlos', 'carlos@plu.sx', 'http://+x', '2014-09-15 10:00:32', '', '0', 'Carlos Saenz');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
