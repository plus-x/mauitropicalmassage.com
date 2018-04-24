CREATE TABLE `wp_wfThrottleLog` (  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `startTime` int(10) unsigned NOT NULL,  `endTime` int(10) unsigned NOT NULL,  `timesThrottled` int(10) unsigned NOT NULL,  `lastReason` varchar(255) NOT NULL,  PRIMARY KEY (`IP`),  KEY `k2` (`endTime`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_wfThrottleLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfThrottleLog` ENABLE KEYS */;
