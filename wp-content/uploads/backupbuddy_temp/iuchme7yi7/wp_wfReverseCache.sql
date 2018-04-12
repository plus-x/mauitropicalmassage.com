CREATE TABLE `wp_wfReverseCache` (  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `host` varchar(255) NOT NULL,  `lastUpdate` int(10) unsigned NOT NULL,  PRIMARY KEY (`IP`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40000 ALTER TABLE `wp_wfReverseCache` DISABLE KEYS */;
INSERT INTO `wp_wfReverseCache` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùI', 'crawl-66-249-73-28.googlebot.com', '1523491765');
/*!40000 ALTER TABLE `wp_wfReverseCache` ENABLE KEYS */;
