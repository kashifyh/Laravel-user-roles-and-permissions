CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(320) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `group_id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(3, 'kashif', 'horani', 1, 'kashif', 'kashifyh@gmail.com', '$2y$08$f7IjMT9Ef5y9QLWzLD7qJu417XJhpQkxafl69aawAmUMw/2HWG076', '2013-12-14 06:16:23', '2013-12-18 05:00:47'),
(15, 'Muhammad', 'Kashif', 1, 'kashifhorani', 'kashif@gmail.com', '$2y$08$f7IjMT9Ef5y9QLWzLD7qJu417XJhpQkxafl69aawAmUMw/2HWG076', '2013-12-16 09:19:43', '2013-12-16 09:19:43');




CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `view` tinyint(4) DEFAULT '0',
  `add` tinyint(4) DEFAULT '0',
  `edit` tinyint(4) DEFAULT '0',
  `delete` tinyint(4) DEFAULT '0',
  `list` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;


INSERT INTO `permissions` (`id`, `view`, `add`, `edit`, `delete`, `list`, `module_id`, `group_id`, `updated_at`, `created_at`) VALUES
(1, 0, 0, 1, 1, 1, 1, 1, '2013-12-17 15:40:26', ''),
(2, 1, 0, 0, 1, 0, 2, 1, '', ''),
(3, 0, 1, 0, 1, 0, 4, 1, '', ''),
(5, 0, 1, 1, 1, 0, 3, 1, '2013-12-17 15:40:37', '2013-12-17 15:40:37'),
(7, 1, 1, 1, 1, 1, 6, 1, '', '');


CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;



INSERT INTO `groups` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'Admin', '', ''),
(2, 'HR', '2013-12-16 14:24:09', '2013-12-16 14:24:09');


CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'User', '2013-12-24 13:34:20', ''),
(2, 'Quote', '', ''),
(3, 'HR', '', ''),
(4, 'Invoice', '', ''),
(5, 'Report', '', ''),
(6, 'Module', '', '');
