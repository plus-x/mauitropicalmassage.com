CREATE TABLE `wp_wfBlocksAdv` (  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,  `blockType` char(2) NOT NULL,  `blockString` varchar(255) NOT NULL,  `ctime` int(10) unsigned NOT NULL,  `reason` varchar(255) NOT NULL,  `totalBlocked` int(10) unsigned DEFAULT '0',  `lastBlocked` int(10) unsigned DEFAULT '0',  PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_wfBlocksAdv` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfBlocksAdv` ENABLE KEYS */;
