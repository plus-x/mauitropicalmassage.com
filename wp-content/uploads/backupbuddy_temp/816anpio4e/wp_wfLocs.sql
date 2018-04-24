CREATE TABLE `wp_wfLocs` (  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `ctime` int(10) unsigned NOT NULL,  `failed` tinyint(3) unsigned NOT NULL,  `city` varchar(255) DEFAULT '',  `region` varchar(255) DEFAULT '',  `countryName` varchar(255) DEFAULT '',  `countryCode` char(2) DEFAULT '',  `lat` float(10,7) DEFAULT '0.0000000',  `lon` float(10,7) DEFAULT '0.0000000',  PRIMARY KEY (`IP`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_wfLocs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfLocs` ENABLE KEYS */;
