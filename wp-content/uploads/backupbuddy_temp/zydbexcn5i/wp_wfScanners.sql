CREATE TABLE `wp_wfScanners` (  `eMin` int(10) unsigned NOT NULL,  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `hits` smallint(5) unsigned NOT NULL,  PRIMARY KEY (`eMin`,`IP`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40000 ALTER TABLE `wp_wfScanners` DISABLE KEYS */;
INSERT INTO `wp_wfScanners` VALUES('25393817', '\0\0\0\0\0\0\0\0\0\0��>)', '1');
INSERT INTO `wp_wfScanners` VALUES('25393398', '\0\0\0\0\0\0\0\0\0\0������', '2');
INSERT INTO `wp_wfScanners` VALUES('25392256', '\0\0\0\0\0\0\0\0\0\0��Ú�g', '1');
INSERT INTO `wp_wfScanners` VALUES('25394249', '\0\0\0\0\0\0\0\0\0\0��Ú�L', '1');
INSERT INTO `wp_wfScanners` VALUES('25392622', '\0\0\0\0\0\0\0\0\0\0��Ú�', '1');
/*!40000 ALTER TABLE `wp_wfScanners` ENABLE KEYS */;
