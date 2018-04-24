CREATE TABLE `wp_wfVulnScanners` (  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `ctime` int(10) unsigned NOT NULL,  `hits` int(10) unsigned NOT NULL,  PRIMARY KEY (`IP`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40000 ALTER TABLE `wp_wfVulnScanners` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfVulnScanners` ENABLE KEYS */;
