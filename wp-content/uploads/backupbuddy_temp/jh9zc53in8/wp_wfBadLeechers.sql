CREATE TABLE `wp_wfBadLeechers` (  `eMin` int(10) unsigned NOT NULL,  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `hits` int(10) unsigned NOT NULL,  PRIMARY KEY (`eMin`,`IP`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40000 ALTER TABLE `wp_wfBadLeechers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfBadLeechers` ENABLE KEYS */;
