CREATE TABLE `wp_wfBlockedCommentLog` (  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `countryCode` varchar(2) NOT NULL,  `blockCount` int(10) unsigned NOT NULL DEFAULT '0',  `unixday` int(10) unsigned NOT NULL,  `blockType` varchar(50) NOT NULL DEFAULT 'gsb',  PRIMARY KEY (`IP`,`unixday`,`blockType`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_wfBlockedCommentLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfBlockedCommentLog` ENABLE KEYS */;
