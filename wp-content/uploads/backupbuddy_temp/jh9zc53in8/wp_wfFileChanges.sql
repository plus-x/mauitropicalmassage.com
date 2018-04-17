CREATE TABLE `wp_wfFileChanges` (  `filenameHash` char(64) NOT NULL,  `file` varchar(1000) NOT NULL,  `md5` char(32) NOT NULL,  PRIMARY KEY (`filenameHash`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_wfFileChanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfFileChanges` ENABLE KEYS */;
