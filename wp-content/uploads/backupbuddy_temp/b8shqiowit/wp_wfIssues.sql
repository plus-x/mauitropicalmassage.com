CREATE TABLE `wp_wfIssues` (  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,  `time` int(10) unsigned NOT NULL,  `lastUpdated` int(10) unsigned NOT NULL,  `status` varchar(10) NOT NULL,  `type` varchar(20) NOT NULL,  `severity` tinyint(3) unsigned NOT NULL,  `ignoreP` char(32) NOT NULL,  `ignoreC` char(32) NOT NULL,  `shortMsg` varchar(255) NOT NULL,  `longMsg` text,  `data` text,  PRIMARY KEY (`id`),  KEY `lastUpdated` (`lastUpdated`),  KEY `status` (`status`),  KEY `ignoreP` (`ignoreP`),  KEY `ignoreC` (`ignoreC`)) ENGINE=MyISAM AUTO_INCREMENT=16734 DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_wfIssues` DISABLE KEYS */;
INSERT INTO `wp_wfIssues` VALUES('16733', '1524409275', '1524409275', 'new', 'wfPluginUpgrade', '2', '1fe08933d561444449ae4517482eec52', '1fe08933d561444449ae4517482eec52', 'The Plugin \"Yoast SEO\" needs an upgrade (7.2 -> 7.3).', 'You need to upgrade \"Yoast SEO\" to the newest version to ensure you have any security fixes the developer has released.', 'a:16:{s:4:\"Name\";s:9:\"Yoast SEO\";s:9:\"PluginURI\";s:18:\"https://yoa.st/1uj\";s:7:\"Version\";s:3:\"7.2\";s:11:\"Description\";s:178:\"The first true all-in-one SEO solution for WordPress, including on-page content analysis, XML sitemaps and much more. <cite>By <a href=\"https://yoa.st/1uk\">Team Yoast</a>.</cite>\";s:6:\"Author\";s:43:\"<a href=\"https://yoa.st/1uk\">Team Yoast</a>\";s:9:\"AuthorURI\";s:18:\"https://yoa.st/1uk\";s:10:\"TextDomain\";s:13:\"wordpress-seo\";s:10:\"DomainPath\";s:11:\"/languages/\";s:7:\"Network\";b:0;s:5:\"Title\";s:42:\"<a href=\"https://yoa.st/1uj\">Yoast SEO</a>\";s:10:\"AuthorName\";s:10:\"Team Yoast\";s:10:\"pluginFile\";s:84:\"/home3/mauibeats/mauitropicalmassage.com/wp-content/plugins/wordpress-seo/wp-seo.php\";s:10:\"newVersion\";s:3:\"7.3\";s:4:\"slug\";s:13:\"wordpress-seo\";s:5:\"wpURL\";s:43:\"https://wordpress.org/plugins/wordpress-seo\";s:10:\"vulnerable\";b:0;}');
/*!40000 ALTER TABLE `wp_wfIssues` ENABLE KEYS */;
