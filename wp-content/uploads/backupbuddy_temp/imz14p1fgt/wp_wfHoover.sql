CREATE TABLE `wp_wfHoover` (  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,  `owner` text,  `host` text,  `path` text,  `hostKey` varbinary(124) DEFAULT NULL,  PRIMARY KEY (`id`),  KEY `k2` (`hostKey`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_wfHoover` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfHoover` ENABLE KEYS */;
