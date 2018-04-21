CREATE TABLE `wp_wfCrawlers` (  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',  `patternSig` binary(16) NOT NULL,  `status` char(8) NOT NULL,  `lastUpdate` int(10) unsigned NOT NULL,  `PTR` varchar(255) DEFAULT '',  PRIMARY KEY (`IP`,`patternSig`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40000 ALTER TABLE `wp_wfCrawlers` DISABLE KEYS */;
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùAš', '‹üÀ•>b0«oQ1Œö', 'verified', '1523696851', 'crawl-66-249-65-154.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùAœ', '‹üÀ•>b0«oQ1Œö', 'verified', '1523696852', 'crawl-66-249-65-156.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùAb', '‹üÀ•>b0«oQ1Œö', 'verified', '1524142457', 'crawl-66-249-65-98.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùA˜', '‹üÀ•>b0«oQ1Œö', 'verified', '1523740401', 'crawl-66-249-65-152.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùA', '‹üÀ•>b0«oQ1Œö', 'verified', '1523696850', 'crawl-66-249-65-127.googlebot.com');
INSERT INTO `wp_wfCrawlers` VALUES('\0\0\0\0\0\0\0\0\0\0ÿÿBùAe', '‹üÀ•>b0«oQ1Œö', 'verified', '1523696848', 'crawl-66-249-65-101.googlebot.com');
/*!40000 ALTER TABLE `wp_wfCrawlers` ENABLE KEYS */;
