CREATE TABLE `wp_wfCrawlers` (  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `patternSig` binary(16) NOT NULL,  `status` char(8) NOT NULL,  `lastUpdate` int(10) unsigned NOT NULL,  `PTR` varchar(255) DEFAULT '',  PRIMARY KEY (`IP`,`patternSig`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40000 ALTER TABLE `wp_wfCrawlers` DISABLE KEYS */;
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùAV', '‹üÀ•>b0«oQ1Œö', 'verified', '1524560223', 'crawl-66-249-65-86.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùAX', '‹üÀ•>b0«oQ1Œö', 'verified', '1524560426', 'crawl-66-249-65-88.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùI', '‹üÀ•>b0«oQ1Œö', 'verified', '1524594818', 'crawl-66-249-73-28.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùI', '‹üÀ•>b0«oQ1Œö', 'verified', '1524594820', 'crawl-66-249-73-27.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùI\Z', '‹üÀ•>b0«oQ1Œö', 'verified', '1524676929', 'crawl-66-249-73-26.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùAT', '‹üÀ•>b0«oQ1Œö', 'verified', '1525136599', 'crawl-66-249-65-84.googlebot.com');
/*!40000 ALTER TABLE `wp_wfCrawlers` ENABLE KEYS */;
