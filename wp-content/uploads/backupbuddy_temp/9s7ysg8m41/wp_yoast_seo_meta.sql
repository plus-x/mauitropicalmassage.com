CREATE TABLE `wp_yoast_seo_meta` (  `object_id` bigint(20) unsigned NOT NULL,  `internal_link_count` int(10) unsigned DEFAULT NULL,  `incoming_link_count` int(10) unsigned DEFAULT NULL,  UNIQUE KEY `object_id` (`object_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_yoast_seo_meta` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_meta` VALUES('587', '0', '0');
INSERT INTO `wp_yoast_seo_meta` VALUES('593', '0', '0');
/*!40000 ALTER TABLE `wp_yoast_seo_meta` ENABLE KEYS */;
