CREATE TABLE `wp_wfScanners` (  `eMin` int(10) unsigned NOT NULL,  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `hits` smallint(5) unsigned NOT NULL,  PRIMARY KEY (`eMin`,`IP`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40000 ALTER TABLE `wp_wfScanners` DISABLE KEYS */;
INSERT INTO `wp_wfScanners` VALUES('25398677', '\0\0\0\0\0\0\0\0\0\0ˇˇ≤ØÅ[', '1');
INSERT INTO `wp_wfScanners` VALUES('25398506', '\0\0\0\0\0\0\0\0\0\0ˇˇºäi?', '1');
/*!40000 ALTER TABLE `wp_wfScanners` ENABLE KEYS */;
