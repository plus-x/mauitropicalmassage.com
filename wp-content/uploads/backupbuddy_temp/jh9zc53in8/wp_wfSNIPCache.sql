CREATE TABLE `wp_wfSNIPCache` (  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,  `IP` varchar(45) NOT NULL DEFAULT '',  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,  `body` varchar(255) NOT NULL DEFAULT '',  `count` int(10) unsigned NOT NULL DEFAULT '0',  `type` int(10) unsigned NOT NULL DEFAULT '0',  PRIMARY KEY (`id`),  KEY `expiration` (`expiration`),  KEY `IP` (`IP`),  KEY `type` (`type`)) ENGINE=MyISAM AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_wfSNIPCache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfSNIPCache` ENABLE KEYS */;
