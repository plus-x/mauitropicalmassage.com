CREATE TABLE `wp_wfLockedOut` (  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `blockedTime` bigint(20) NOT NULL,  `reason` varchar(255) NOT NULL,  `lastAttempt` int(10) unsigned DEFAULT '0',  `blockedHits` int(10) unsigned DEFAULT '0',  PRIMARY KEY (`IP`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_wfLockedOut` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfLockedOut` ENABLE KEYS */;
