CREATE TABLE `wp_wfCrawlers` (  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `patternSig` binary(16) NOT NULL,  `status` char(8) NOT NULL,  `lastUpdate` int(10) unsigned NOT NULL,  `PTR` varchar(255) DEFAULT '',  PRIMARY KEY (`IP`,`patternSig`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40000 ALTER TABLE `wp_wfCrawlers` DISABLE KEYS */;
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0��B�AX', '�����>�b0�oQ1��', 'verified', '1522960695', 'crawl-66-249-65-88.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0��B�I', '�����>�b0�oQ1��', 'verified', '1523491765', 'crawl-66-249-73-28.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0��B�I', '�����>�b0�oQ1��', 'verified', '1523222059', 'crawl-66-249-73-27.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0��B�AV', '�����>�b0�oQ1��', 'verified', '1523053342', 'crawl-66-249-65-86.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0��B�AT', '�����>�b0�oQ1��', 'verified', '1523024268', 'crawl-66-249-65-84.googlebot.com');
/*!40000 ALTER TABLE `wp_wfCrawlers` ENABLE KEYS */;
