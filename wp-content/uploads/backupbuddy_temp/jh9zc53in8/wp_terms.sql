CREATE TABLE `wp_terms` (  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `term_group` bigint(10) NOT NULL DEFAULT '0',  PRIMARY KEY (`term_id`),  KEY `slug` (`slug`(191)),  KEY `name` (`name`(191))) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES('1', 'Uncategorized', 'uncategorized', '0');
INSERT INTO `wp_terms` VALUES('2', 'Main', 'main', '0');
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
