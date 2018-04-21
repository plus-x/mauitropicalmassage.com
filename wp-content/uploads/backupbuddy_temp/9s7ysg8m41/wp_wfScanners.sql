CREATE TABLE `wp_wfScanners` (  `eMin` int(10) unsigned NOT NULL,  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `hits` smallint(5) unsigned NOT NULL,  PRIMARY KEY (`eMin`,`IP`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40000 ALTER TABLE `wp_wfScanners` DISABLE KEYS */;
INSERT INTO `wp_wfScanners` VALUES('25403708', '\0\0\0\0\0\0\0\0\0\0ÿÿÌÓ8', '4');
INSERT INTO `wp_wfScanners` VALUES('25402875', '\0\0\0\0\0\0\0\0\0\0ÿÿÁF\"Ñ', '1');
INSERT INTO `wp_wfScanners` VALUES('25402737', '\0\0\0\0\0\0\0\0\0\0ÿÿ¼Ši', '1');
/*!40000 ALTER TABLE `wp_wfScanners` ENABLE KEYS */;
