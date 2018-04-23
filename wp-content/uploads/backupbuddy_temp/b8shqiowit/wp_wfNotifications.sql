CREATE TABLE `wp_wfNotifications` (  `id` varchar(32) NOT NULL DEFAULT '',  `new` tinyint(3) unsigned NOT NULL DEFAULT '1',  `category` varchar(255) NOT NULL,  `priority` int(11) NOT NULL DEFAULT '1000',  `ctime` int(10) unsigned NOT NULL,  `html` text NOT NULL,  `links` text NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_wfNotifications` DISABLE KEYS */;
INSERT INTO `wp_wfNotifications` VALUES('network-GB', '0', 'release630', '400', '1488927970', '<div style=\"padding:1rem 0px;\"><b>Announcing Wordfence 6.3.0 - Exciting Improvements</b><br>\nThis morning we are officially releasing Wordfence 6.3.0. If you have Wordfence auto-update enabled, your site may have already been updated automatically. This is a very exciting release for us with a host of improvements. The user interface has changed and we have added a new \'Dashboard\' menu option. You\'ll also notice the Wordfence menu structure has changed. <br><br>\n\nWe have tried to keep everything familiar, but easier to find and access. You can find the help documentation for the new dashboard <a href=\"https://docs.wordfence.com/en/Wordfence_Dashboard\">here</a>.<br><br>\n\n<a href=\"https://www.wordfence.com/blog/2017/01/wordfence-6-3-0/\">You can find the full announcement and details of the changes on our blog....</a></div>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-AEAAAAA', '0', 'wfplugin_updates', '502', '1497915027', '<a href=\"http://mauitropicalmassage.com/wp-admin/update-core.php\">Updates are available for 6 themes</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-AIAAAAA', '0', 'wfplugin_scan', '500', '1491519519', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">16 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('network-GC', '0', 'digest201701', '1000', '1488927970', '<div style=\"padding:1rem 0px;\">\n		<p style=\"font-weight:bold;font-size:0.8rem;color:#11967A;margin-top: 0;\">Recent Blog Highlights</p>\n		<div style=\"display:flex;flex-direction:row;max-width:100%;overflow-x:auto;flex-basis:auto;\">\n			<div style=\"margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;\">\n				<a href=\"https://www.wordfence.com/blog/2017/01/xmlrpc-wp-login-brute-force/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert\" style=\"display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;\">XMLRPC or WP-Login: Which do Brute Force Attackers Prefer</a>\n				<div style=\"font-size:0.9rem;color:#2d2d2d;\">A close look at brute force attack targets yielded some surprising results.</div>\n			</div>\n			<div style=\"margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;\">\n				<a href=\"https://www.wordfence.com/blog/2017/01/wordpress-security-plugin/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert\" style=\"display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;\">Do you Need a WordPress Security Plugin?</a>\n\n				<div style=\"font-size:0.9rem;color:#2d2d2d;\">This easy to follow post makes the clear case for running both a malware scanner and firewall on your WordPress site.</div>\n			</div>\n\n			<div style=\"margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;\">\n				<a href=\"https://www.wordfence.com/blog/2017/01/wordpress-botnet-monetization/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert\" style=\"display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;\">Analysis: Methods and Monetization of a Botnet Attacking WordPress</a>\n\n				<div style=\"font-size:0.9rem;color:#2d2d2d;\">\n				A deep dive on the methods and profit motive of an active Botnet.\n				</div>\n			</div>\n\n			<div style=\"margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;\">\n				<a href=\"https://www.wordfence.com/blog/2017/01/chrome-56-ssl-https-wordpress/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert\" style=\"display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;\">Imminent: Non-HTTPS Sites Labeled “Not Secure” by Chrome</a>\n\n				<div style=\"font-size:0.9rem;color:#2d2d2d;\">\n				An overview of changes to Google Chrome that will impact non-https site owners.\n				</div>\n			</div>\n\n			<div style=\"margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;\">\n				<a href=\"https://www.wordfence.com/blog/2017/01/gmail-phishing-data-uri/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert\" style=\"display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;\">Wide Impact: Highly Effective Gmail Phishing Technique Being Exploited</a>\n\n				<div style=\"font-size:0.9rem;color:#2d2d2d;\">\n				We profile a new phishing technique that is fooling even experienced technical users.\n				</div>\n			</div>\n\n			<div style=\"margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;\">\n				<a href=\"https://www.wordfence.com/blog/2017/01/how-wordpress-firewall-works/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert\" style=\"display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;\">How the Wordfence Firewall Works</a>\n\n				<div style=\"font-size:0.9rem;color:#2d2d2d;\">\n				We explain how the Wordfence firewall protects your website from attacks.\n				</div>\n			</div>\n\n			<div style=\"margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;\">\n				<a href=\"https://www.wordfence.com/blog/2017/01/december-2016-wordpress-attack-activity-report/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert\" style=\"display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;\">The December 2016 WordPress Attack Activity Report</a>\n\n				<div style=\"font-size:0.9rem;color:#2d2d2d;\">\n				Stats and insights from Wordfence Network from December.\n				</div>\n                </div>\n		</div>\n	</div><script type=\"application/javascript\">jQuery(\'.wf-dashboard-item-list-title\').css(\'min-width\', 0);</script>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-ZIAAAAA', '0', 'wfplugin_scan', '500', '1491654315', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">16 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-2AAAAAA', '0', 'wfplugin_scan', '500', '1492839475', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">16 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-A4AQAAA', '0', 'wfplugin_scan', '500', '1493516960', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">16 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-EYAQAAA', '0', 'wfplugin_scan', '502', '1497010141', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">10 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('network-GD', '0', 'gravityscan', '300', '1497845947', '<p><strong>Say hello to Gravityscan, the free malware and vulnerability scanner for any website</strong></p>\n\n<p>Today we are excited to share a new product we have been working on for the last year. It is free to use, works on any website and you don’t need to install anything to use it. We think you’ll find it to be a great complement to the WordPress protection you’re already getting with Wordfence. And we know that for a lot of you WordPress isn’t the only platform you need to secure, so we built Gravityscan to work with all of your sites.</p>\n\n<p><a href=\"https://www.gravityscan.com?utm_source=plugin&utm_medium=pluginalert&utm_campaign=la061817\" target=\"_blank\" class=\"wf-btn wf-btn-primary\">Scan your site now</a></p>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('network-GE', '0', 'siteaudit', '400', '1497845947', '<p><strong>Announcing New Site Security Audit Service</strong></p>\n<p>We are very excited to announce that we have officially launched a new WordPress Site Security Audit Service.</p>\n<p>We have been providing this service to select customers for several weeks prior to the official launch. We are now live with the service and making it available to all of our customers.</p>\n<p>We have written about the service on our blog, where we explain a few of the benefits of having our dedicated Security Services Team evaluate and secure your site.</p>\n<p><a href=\"https://www.wordfence.com/blog/2017/05/wordpress-security-audit/?utm_source=plugin&utm_medium=pluginalert&utm_campaign=sa052517\" target=\"_blank\">You can find the full announcement on our blog...</a></p>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-5QAQAAA', '0', 'wfplugin_scan', '502', '1497067427', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">10 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-5YAQAAA', '0', 'wfplugin_scan', '502', '1497915066', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">5 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-CQBAAAA', '0', 'wfplugin_scan', '502', '1498072456', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">6 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-DEBAAAA', '0', 'wfplugin_updates', '502', '1514328308', '<a href=\"http://mauitropicalmassage.com/wp-admin/update-core.php\">Updates are available for 6 themes</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-DIBAAAA', '0', 'wfplugin_scan', '502', '1498733660', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">6 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-GYBAAAA', '0', 'wfplugin_scan', '502', '1498985375', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">6 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-H4BAAAA', '0', 'wfplugin_scan', '502', '1499892514', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">8 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-NIBAAAA', '0', 'wfplugin_scan', '502', '1500185169', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">9 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-OQBAAAA', '0', 'wfplugin_scan', '502', '1514467397', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">5 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('network-GF', '0', 'gravityscanbadge', '500', '1501352301', '<p><strong style=\"color:#00709E;\">Introducing a Free Trust Badge With Blacklist and SEO Monitoring</strong></p>\n<p>Today we are excited to officially launch the Gravityscan trust badge program. As you know, Gravityscan is a project by the Wordfence team to bring malware and vulnerability scanning to all websites. Until now, daily monitoring had been a paid feature of Gravityscan, priced at around $120 per year.  The new badge program provides free daily security monitoring for any website.</p>\n<p>The Gravityscan trust badge checks your website daily against over 20 blacklists and ensures that your content does not contain links to malicious sites. The program also includes a comprehensive daily scan for malware.</p>\n<p>The Gravityscan trust badge also helps improve conversion rates and visitor confidence in your website. To learn more about this exciting and completely free program, you can find the <a href=\"https://www.gravityscan.com/blog/gravityscan-badge?utm_source=plugin&utm_medium=pluginalert&utm_campaign=072617\" target=\"_blank\">full details on the Gravityscan blog</a>.</p>\n<p class=\"wf-center\"><a href=\"https://www.gravityscan.com/sign-up?plan=free-monitoring&utm_source=plugin&utm_medium=pluginalert&utm_campaign=072617\" target=\"_blank\" style=\"text-align: center;text-transform: uppercase;font-weight: bold;background-color: #11967A;height: 44px;line-height: 44px;padding: 0px 20px;color: #ffffff;text-decoration: none;display: inline-block;border-radius: 3px;\">Get Free Trust Badge</a></p>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('network-GG', '0', 'blogpost082917', '400', '1505483743', '<p><strong>Better Data Means Better Protection</strong></p>\n<p>Mission-critical sites rely on the real-time protection provided by Wordfence Premium. Learn how the 30-strong team at Wordfence stays on top of the latest threats, providing Premium customers with the real-time threat intelligence they need to stay safe.</p>\n<p><a href=\"https://www.wordfence.com/blog/2017/08/benefits-wordfence-premium/?utm_source=plugin&amp;utm_medium=pluginalert&amp;utm_campaign=bp082917\" class=\"wf-btn wf-btn-callout wf-btn-primary\" target=\"_blank\">Learn More</a></p>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-VICAAAA', '0', 'wfplugin_scan', '502', '1523323023', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">3 issues found in most recent scan</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-VMCAAAA', '0', 'wfplugin_updates', '502', '1523323023', '<a href=\"http://mauitropicalmassage.com/wp-admin/update-core.php\">Updates are available for 3 plugins</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-54CQAAA', '1', 'wfplugin_updates', '502', '1524409272', '<a href=\"http://mauitropicalmassage.com/wp-admin/update-core.php\">An update is available for 1 plugin</a>', '[]');
INSERT INTO `wp_wfNotifications` VALUES('site-6ACQAAA', '1', 'wfplugin_scan', '502', '1524409275', '<a href=\"http://mauitropicalmassage.com/wp-admin/admin.php?page=WordfenceScan\">1 issue found in most recent scan</a>', '[]');
/*!40000 ALTER TABLE `wp_wfNotifications` ENABLE KEYS */;
