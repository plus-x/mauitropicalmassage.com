CREATE TABLE `wp_bad_behavior` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `ip` text NOT NULL,  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',  `request_method` text NOT NULL,  `request_uri` text NOT NULL,  `server_protocol` text NOT NULL,  `http_headers` text NOT NULL,  `user_agent` text NOT NULL,  `request_entity` text NOT NULL,  `key` text NOT NULL,  PRIMARY KEY (`id`),  KEY `ip` (`ip`(15)),  KEY `user_agent` (`user_agent`(10))) ENGINE=InnoDB AUTO_INCREMENT=24088 DEFAULT CHARSET=latin1;
/*!40000 ALTER TABLE `wp_bad_behavior` DISABLE KEYS */;
INSERT INTO `wp_bad_behavior` VALUES('24043', '193.201.224.243', '2018-04-16 00:18:10', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nUser-Agent: Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20100111 Firefox/37.0\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 193.201.224.243\n', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20100111 Firefox/37.0', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24044', '184.154.76.18', '2018-04-16 17:47:00', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.76.18\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24045', '184.154.76.18', '2018-04-16 17:47:02', 'GET', '/th1s_1s_a_4o4.html', 'HTTP/1.1', 'GET /th1s_1s_a_4o4.html HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.76.18\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24046', '184.154.76.18', '2018-04-16 17:47:10', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nReferer: http://www.google.com/url?url=mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.76.18\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24047', '54.67.59.131', '2018-04-17 15:50:06', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nAccept-Encoding: gzip\nHost: www.mauitropicalmassage.com\nUser-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 54.67.59.131\n', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24048', '184.154.139.16', '2018-04-17 17:51:54', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.139.16\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24049', '184.154.139.16', '2018-04-17 17:51:57', 'GET', '/th1s_1s_a_4o4.html', 'HTTP/1.1', 'GET /th1s_1s_a_4o4.html HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.139.16\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24050', '184.154.139.16', '2018-04-17 17:52:05', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nReferer: http://www.google.com/url?url=mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.139.16\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24051', '168.1.128.37', '2018-04-18 08:59:49', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 168.1.128.37\n', '', '', '00000000');
INSERT INTO `wp_bad_behavior` VALUES('24052', '169.54.233.126', '2018-04-18 16:21:17', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 169.54.233.126\n', '', '', '00000000');
INSERT INTO `wp_bad_behavior` VALUES('24053', '173.236.59.218', '2018-04-18 17:52:23', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 173.236.59.218\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24054', '173.236.59.218', '2018-04-18 17:52:26', 'GET', '/th1s_1s_a_4o4.html', 'HTTP/1.1', 'GET /th1s_1s_a_4o4.html HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 173.236.59.218\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24055', '173.236.59.218', '2018-04-18 17:52:31', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nReferer: http://www.google.com/url?url=mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 173.236.59.218\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24056', '173.230.146.176', '2018-04-18 22:18:45', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nUser-Agent: Opera/9.70 (X11; Linux x86_64; sl-SI) Presto/2.11.317 Version/11.00\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 173.230.146.176\n', 'Opera/9.70 (X11; Linux x86_64; sl-SI) Presto/2.11.317 Version/11.00', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24057', '45.33.110.14', '2018-04-19 04:54:27', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nUser-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5360 (KHTML, like Gecko) Chrome/39.0.814.0 Mobile Safari/5360\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 45.33.110.14\n', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5360 (KHTML, like Gecko) Chrome/39.0.814.0 Mobile Safari/5360', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24058', '74.207.240.153', '2018-04-19 11:36:54', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nUser-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/535.24.1 (KHTML, like Gecko) Version/5.0 Safari/535.24.1\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 74.207.240.153\n', 'Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/535.24.1 (KHTML, like Gecko) Version/5.0 Safari/535.24.1', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24059', '23.22.231.82', '2018-04-19 15:46:58', 'GET', '/feed/', 'HTTP/1.1', 'GET /feed/ HTTP/1.1\nAccept-Encoding: gzip\nHost: mauitropicalmassage.com\nUser-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 23.22.231.82\n', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24060', '173.236.59.218', '2018-04-19 17:47:53', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 173.236.59.218\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24061', '173.236.59.218', '2018-04-19 17:47:55', 'GET', '/th1s_1s_a_4o4.html', 'HTTP/1.1', 'GET /th1s_1s_a_4o4.html HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 173.236.59.218\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24062', '173.236.59.218', '2018-04-19 17:47:59', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nReferer: http://www.google.com/url?url=mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 173.236.59.218\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24063', '96.126.97.14', '2018-04-19 18:16:28', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nUser-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/534.32.6 (KHTML, like Gecko) Version/5.0.5 Safari/534.32.6\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 96.126.97.14\n', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/534.32.6 (KHTML, like Gecko) Version/5.0.5 Safari/534.32.6', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24064', '74.207.240.153', '2018-04-20 01:02:40', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nUser-Agent: Mozilla/5.0 (X11; Linux i686) AppleWebKit/5321 (KHTML, like Gecko) Chrome/40.0.863.0 Mobile Safari/5321\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 74.207.240.153\n', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5321 (KHTML, like Gecko) Chrome/40.0.863.0 Mobile Safari/5321', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24065', '96.126.97.14', '2018-04-20 07:56:52', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nUser-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/532.38.6 (KHTML, like Gecko) Version/4.1 Safari/532.38.6\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 96.126.97.14\n', 'Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/532.38.6 (KHTML, like Gecko) Version/4.1 Safari/532.38.6', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24066', '54.67.59.131', '2018-04-20 12:06:45', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nAccept-Encoding: gzip\nHost: www.mauitropicalmassage.com\nUser-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 54.67.59.131\n', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24067', '45.33.51.17', '2018-04-20 15:04:47', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nUser-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_9 rv:2.0; en-US) AppleWebKit/535.18.7 (KHTML, like Gecko) Version/5.1 Safari/535.18.7\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 45.33.51.17\n', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_9 rv:2.0; en-US) AppleWebKit/535.18.7 (KHTML, like Gecko) Version/5.1 Safari/535.18.7', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24068', '173.236.59.218', '2018-04-20 17:52:39', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 173.236.59.218\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24069', '173.236.59.218', '2018-04-20 17:52:42', 'GET', '/th1s_1s_a_4o4.html', 'HTTP/1.1', 'GET /th1s_1s_a_4o4.html HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 173.236.59.218\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24070', '173.236.59.218', '2018-04-20 17:52:48', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nReferer: http://www.google.com/url?url=mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 173.236.59.218\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24071', '169.54.233.120', '2018-04-21 08:31:47', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 169.54.233.120\n', '', '', '00000000');
INSERT INTO `wp_bad_behavior` VALUES('24072', '196.52.43.95', '2018-04-21 12:01:01', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 196.52.43.95\n', '', '', '00000000');
INSERT INTO `wp_bad_behavior` VALUES('24073', '184.154.139.16', '2018-04-21 17:51:48', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.139.16\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24074', '184.154.139.16', '2018-04-21 17:51:50', 'GET', '/th1s_1s_a_4o4.html', 'HTTP/1.1', 'GET /th1s_1s_a_4o4.html HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.139.16\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24075', '184.154.139.16', '2018-04-21 17:51:55', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nReferer: http://www.google.com/url?url=mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.139.16\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24076', '35.205.225.169', '2018-04-22 01:58:06', 'HEAD', '/', 'HTTP/1.1', 'HEAD / HTTP/1.1\nAccept: */*\nHost: www.mauitropicalmassage.com\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 35.205.225.169\n', '', '', '00000000');
INSERT INTO `wp_bad_behavior` VALUES('24077', '35.205.225.169', '2018-04-22 01:58:08', 'HEAD', '/', 'HTTP/1.1', 'HEAD / HTTP/1.1\nAccept: */*\nHost: mauitropicalmassage.com\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 35.205.225.169\n', '', '', '00000000');
INSERT INTO `wp_bad_behavior` VALUES('24078', '35.205.225.169', '2018-04-22 01:58:09', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nAccept: */*\nCookie: wfvt_3591651813=5adbec3035dfb\nHost: www.mauitropicalmassage.com\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 35.205.225.169\n', '', '', '00000000');
INSERT INTO `wp_bad_behavior` VALUES('24079', '35.205.225.169', '2018-04-22 01:58:10', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nAccept: */*\nCookie: wfvt_3591651813=5adbec313a244\nHost: mauitropicalmassage.com\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 35.205.225.169\n', '', '', '00000000');
INSERT INTO `wp_bad_behavior` VALUES('24080', '184.154.164.186', '2018-04-22 17:53:03', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.164.186\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24081', '184.154.164.186', '2018-04-22 17:53:05', 'GET', '/th1s_1s_a_4o4.html', 'HTTP/1.1', 'GET /th1s_1s_a_4o4.html HTTP/1.1\nHost: www.mauitropicalmassage.com\nReferer: http://www.google.com/url?url=www.mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.164.186\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24082', '184.154.164.186', '2018-04-22 17:53:10', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nHost: mauitropicalmassage.com\nReferer: http://www.google.com/url?url=mauitropicalmassage.com&yahoo.com\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 184.154.164.186\n', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24083', '185.158.122.244', '2018-04-22 20:29:00', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nAccept-Encoding: gzip,deflate\nAccept-Language: en-US\nHost: mauitropicalmassage.com\nReferer: http://mauitropicalmassage.com/\nUser-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/533.01.48 (KHTML, like Gecko) Chrome/57.4.9021.4759 Safari/533.31\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 185.158.122.244\n', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/533.01.48 (KHTML, like Gecko) Chrome/57.4.9021.4759 Safari/533.31', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24084', '185.158.122.244', '2018-04-22 20:29:05', 'GET', '//blog/', 'HTTP/1.1', 'GET //blog/ HTTP/1.1\nAccept-Encoding: gzip,deflate\nAccept-Language: en-US\nCookie: wordpress_test_cookie=WP+Cookie+check\nHost: mauitropicalmassage.com\nReferer: http://mauitropicalmassage.com/\nUser-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/533.01.48 (KHTML, like Gecko) Chrome/57.4.9021.4759 Safari/533.31\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 185.158.122.244\n', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/533.01.48 (KHTML, like Gecko) Chrome/57.4.9021.4759 Safari/533.31', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24085', '50.2.38.221', '2018-04-22 22:51:51', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nAccept-Encoding: gzip, deflate\nHost: mauitropicalmassage.com\nReferer: http://mauitropicalmassage.com/\nUser-Agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 50.2.38.221\n', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24086', '50.2.38.32', '2018-04-22 22:51:53', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nAccept-Encoding: gzip, deflate\nHost: mauitropicalmassage.com\nReferer: http://mauitropicalmassage.com/\nUser-Agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 50.2.38.32\n', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', '17566707');
INSERT INTO `wp_bad_behavior` VALUES('24087', '185.120.147.163', '2018-04-22 22:51:56', 'GET', '/', 'HTTP/1.1', 'GET / HTTP/1.1\nAccept-Encoding: gzip, deflate\nHost: mauitropicalmassage.com\nReferer: http://mauitropicalmassage.com/\nUser-Agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36\nX-Http-Proto: HTTP/1.1\nX-Real-Ip: 185.120.147.163\n', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', '17566707');
/*!40000 ALTER TABLE `wp_bad_behavior` ENABLE KEYS */;