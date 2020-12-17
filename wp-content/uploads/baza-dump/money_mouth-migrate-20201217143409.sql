# WordPress MySQL database migration
#
# Generated: Thursday 17. December 2020 14:34 UTC
# Hostname: localhost
# Database: `money_mouth`
# URL: //localhost/money-mouth-wp
# Path: C:\\wamp64\\www\\Dropbox\\money-mouth-wp
# Tables: wp_actionscheduler_actions, wp_actionscheduler_claims, wp_actionscheduler_groups, wp_actionscheduler_logs, wp_commentmeta, wp_comments, wp_links, wp_nf3_action_meta, wp_nf3_actions, wp_nf3_chunks, wp_nf3_field_meta, wp_nf3_fields, wp_nf3_form_meta, wp_nf3_forms, wp_nf3_object_meta, wp_nf3_objects, wp_nf3_relationships, wp_nf3_upgrades, wp_options, wp_postmeta, wp_posts, wp_sbi_instagram_feeds_posts, wp_sbi_instagram_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users, wp_wpforms_tasks_meta
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, attachment, mc4wp-form, nav_menu_item, nf_sub, page, post, wpforms
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_actionscheduler_actions`
#

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;


#
# Table structure of table `wp_actionscheduler_actions`
#

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_actions`
#
INSERT INTO `wp_actionscheduler_actions` ( `action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(20, 'action_scheduler/migration_hook', 'complete', '2020-12-16 07:02:26', '2020-12-16 07:02:26', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1608102146;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1608102146;s:19:"scheduled_timestamp";i:1608102146;s:9:"timestamp";i:1608102146;}', 1, 1, '2020-12-16 07:02:46', '2020-12-16 07:02:46', 0, NULL),
(21, 'action_scheduler/migration_hook', 'complete', '2020-12-16 07:03:46', '2020-12-16 07:03:46', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1608102226;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1608102226;s:19:"scheduled_timestamp";i:1608102226;s:9:"timestamp";i:1608102226;}', 1, 1, '2020-12-16 07:03:47', '2020-12-16 07:03:47', 0, NULL),
(22, 'wpforms_process_entry_emails_meta_cleanup', 'canceled', '2020-12-17 00:00:00', '2020-12-17 00:00:00', '{"tasks_meta_id":1}', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1608163200;s:18:"\0*\0first_timestamp";i:1608163200;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1608163200;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1608163200;s:15:"first_timestamp";i:1608163200;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1608163200;s:19:"interval_in_seconds";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(23, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{"tasks_meta_id":2}', 'O:28:"ActionScheduler_NullSchedule":0:{}', 2, 1, '2020-12-16 07:03:48', '2020-12-16 07:03:48', 0, NULL) ;

#
# End of data contents of table `wp_actionscheduler_actions`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_claims`
#

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;


#
# Table structure of table `wp_actionscheduler_claims`
#

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_claims`
#

#
# End of data contents of table `wp_actionscheduler_claims`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_groups`
#

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;


#
# Table structure of table `wp_actionscheduler_groups`
#

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_groups`
#
INSERT INTO `wp_actionscheduler_groups` ( `group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wpforms') ;

#
# End of data contents of table `wp_actionscheduler_groups`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_logs`
#

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;


#
# Table structure of table `wp_actionscheduler_logs`
#

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_logs`
#
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 20, 'action created', '2020-12-16 07:01:26', '2020-12-16 07:01:26'),
(2, 20, 'action started via WP Cron', '2020-12-16 07:02:46', '2020-12-16 07:02:46'),
(3, 20, 'action complete via WP Cron', '2020-12-16 07:02:46', '2020-12-16 07:02:46'),
(4, 21, 'action created', '2020-12-16 07:02:46', '2020-12-16 07:02:46'),
(5, 22, 'action created', '2020-12-16 07:02:56', '2020-12-16 07:02:56'),
(6, 23, 'action created', '2020-12-16 07:03:44', '2020-12-16 07:03:44'),
(7, 21, 'action started via Async Request', '2020-12-16 07:03:47', '2020-12-16 07:03:47'),
(8, 21, 'action complete via Async Request', '2020-12-16 07:03:47', '2020-12-16 07:03:47'),
(9, 23, 'action started via Async Request', '2020-12-16 07:03:47', '2020-12-16 07:03:47'),
(10, 23, 'action complete via Async Request', '2020-12-16 07:03:48', '2020-12-16 07:03:48'),
(11, 22, 'action canceled', '2020-12-16 07:36:35', '2020-12-16 07:36:35') ;

#
# End of data contents of table `wp_actionscheduler_logs`
# --------------------------------------------------------



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-12-14 09:27:10', '2020-12-14 09:27:10', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_action_meta`
#

DROP TABLE IF EXISTS `wp_nf3_action_meta`;


#
# Table structure of table `wp_nf3_action_meta`
#

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_action_meta`
#
INSERT INTO `wp_nf3_action_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(79, 5, 'objectType', 'Action', 'objectType', 'Action'),
(80, 5, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(81, 5, 'editActive', '', 'editActive', ''),
(82, 5, 'message', 'Your form has been successfully submitted.', 'message', 'Your form has been successfully submitted.'),
(83, 5, 'order', '1', 'order', '1'),
(84, 5, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(85, 5, 'reply_to', '', 'reply_to', ''),
(86, 5, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(87, 5, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(88, 5, 'email_message_plain', '', 'email_message_plain', ''),
(89, 5, 'from_name', '', 'from_name', ''),
(90, 5, 'from_address', '', 'from_address', ''),
(91, 5, 'email_format', 'html', 'email_format', 'html'),
(92, 5, 'cc', '', 'cc', ''),
(93, 5, 'bcc', '', 'bcc', ''),
(94, 5, 'success_msg', 'Your form has been successfully submitted.', 'success_msg', 'Your form has been successfully submitted.'),
(95, 6, 'objectType', 'Action', 'objectType', 'Action'),
(96, 6, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(97, 6, 'editActive', '', 'editActive', ''),
(98, 6, 'order', '2', 'order', '2'),
(99, 6, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(100, 6, 'reply_to', '', 'reply_to', ''),
(101, 6, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(102, 6, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(103, 6, 'email_message_plain', '', 'email_message_plain', ''),
(104, 6, 'from_name', '', 'from_name', ''),
(105, 6, 'from_address', '', 'from_address', ''),
(106, 6, 'email_format', 'html', 'email_format', 'html'),
(107, 6, 'cc', '', 'cc', ''),
(108, 6, 'bcc', '', 'bcc', ''),
(109, 7, 'objectType', 'Action', 'objectType', 'Action'),
(110, 7, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(111, 7, 'editActive', '', 'editActive', ''),
(112, 7, 'order', '3', 'order', '3'),
(113, 7, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(114, 7, 'reply_to', '', 'reply_to', ''),
(115, 7, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(116, 7, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(117, 7, 'email_message_plain', '', 'email_message_plain', ''),
(118, 7, 'from_name', '', 'from_name', ''),
(119, 7, 'from_address', '', 'from_address', ''),
(120, 7, 'email_format', 'html', 'email_format', 'html'),
(121, 7, 'cc', '', 'cc', ''),
(122, 7, 'bcc', '', 'bcc', ''),
(123, 7, 'success_msg', 'Your form has been successfully submitted.', 'success_msg', 'Your form has been successfully submitted.'),
(124, 7, 'redirect_url', '', 'redirect_url', ''),
(125, 7, 'submitter_email', '', 'submitter_email', ''),
(126, 7, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(127, 7, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(128, 7, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(129, 7, 'subs_expire_time', '90', 'subs_expire_time', '90'),
(130, 7, 'drawerDisabled', '', 'drawerDisabled', ''),
(131, 8, 'title', '', 'title', ''),
(132, 8, 'key', '', 'key', ''),
(133, 8, 'type', 'save', 'type', 'save'),
(134, 8, 'active', '1', 'active', '1'),
(135, 8, 'created_at', '2020-12-16 07:25:42', 'created_at', '2020-12-16 07:25:42'),
(136, 8, 'label', 'Store Submission', 'label', 'Store Submission'),
(137, 8, 'objectType', 'Action', 'objectType', 'Action'),
(138, 8, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(139, 8, 'editActive', '', 'editActive', ''),
(140, 8, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}', 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(141, 8, 'payment_gateways', '', 'payment_gateways', ''),
(142, 8, 'payment_total', '', 'payment_total', ''),
(143, 8, 'tag', '', 'tag', ''),
(144, 8, 'to', '', 'to', ''),
(145, 8, 'email_subject', '', 'email_subject', ''),
(146, 8, 'email_message', '', 'email_message', ''),
(147, 8, 'from_name', '', 'from_name', ''),
(148, 8, 'from_address', '', 'from_address', ''),
(149, 8, 'reply_to', '', 'reply_to', ''),
(150, 8, 'email_format', 'html', 'email_format', 'html'),
(151, 8, 'cc', '', 'cc', ''),
(152, 8, 'bcc', '', 'bcc', ''),
(153, 8, 'attach_csv', '', 'attach_csv', ''),
(154, 8, 'redirect_url', '', 'redirect_url', ''),
(155, 8, 'email_message_plain', '', 'email_message_plain', ''),
(156, 8, 'parent_id', '3', 'parent_id', '3'),
(157, 9, 'title', '', 'title', ''),
(158, 9, 'key', '', 'key', ''),
(159, 9, 'type', 'email', 'type', 'email'),
(160, 9, 'active', '1', 'active', '1'),
(161, 9, 'created_at', '2020-12-16 07:25:42', 'created_at', '2020-12-16 07:25:42'),
(162, 9, 'label', 'Email Confirmation', 'label', 'Email Confirmation'),
(163, 9, 'to', '{field:email}', 'to', '{field:email}'),
(164, 9, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(165, 9, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(166, 9, 'objectType', 'Action', 'objectType', 'Action'),
(167, 9, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(168, 9, 'editActive', '', 'editActive', ''),
(169, 9, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}', 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(170, 9, 'payment_gateways', '', 'payment_gateways', ''),
(171, 9, 'payment_total', '', 'payment_total', ''),
(172, 9, 'tag', '', 'tag', ''),
(173, 9, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(174, 9, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(175, 9, 'from_name', '', 'from_name', ''),
(176, 9, 'from_address', '', 'from_address', ''),
(177, 9, 'reply_to', '', 'reply_to', ''),
(178, 9, 'email_format', 'html', 'email_format', 'html') ;
INSERT INTO `wp_nf3_action_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(179, 9, 'cc', '', 'cc', ''),
(180, 9, 'bcc', '', 'bcc', ''),
(181, 9, 'attach_csv', '', 'attach_csv', ''),
(182, 9, 'email_message_plain', '', 'email_message_plain', ''),
(183, 9, 'parent_id', '3', 'parent_id', '3'),
(184, 10, 'title', '', 'title', ''),
(185, 10, 'key', '', 'key', ''),
(186, 10, 'type', 'email', 'type', 'email'),
(187, 10, 'active', '1', 'active', '1'),
(188, 10, 'created_at', '2020-12-16 07:25:42', 'created_at', '2020-12-16 07:25:42'),
(189, 10, 'label', 'Email Notification', 'label', 'Email Notification'),
(190, 10, 'objectType', 'Action', 'objectType', 'Action'),
(191, 10, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(192, 10, 'editActive', '', 'editActive', ''),
(193, 10, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}', 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(194, 10, 'payment_gateways', '', 'payment_gateways', ''),
(195, 10, 'payment_total', '', 'payment_total', ''),
(196, 10, 'tag', '', 'tag', ''),
(197, 10, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(198, 10, 'email_subject', 'New message from {field:name}', 'email_subject', 'New message from {field:name}'),
(199, 10, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>', 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(200, 10, 'from_name', '', 'from_name', ''),
(201, 10, 'from_address', '', 'from_address', ''),
(202, 10, 'reply_to', '{field:email}', 'reply_to', '{field:email}'),
(203, 10, 'email_format', 'html', 'email_format', 'html'),
(204, 10, 'cc', '', 'cc', ''),
(205, 10, 'bcc', '', 'bcc', ''),
(206, 10, 'attach_csv', '0', 'attach_csv', '0'),
(207, 10, 'email_message_plain', '', 'email_message_plain', ''),
(208, 10, 'parent_id', '3', 'parent_id', '3'),
(209, 11, 'title', '', 'title', ''),
(210, 11, 'key', '', 'key', ''),
(211, 11, 'type', 'successmessage', 'type', 'successmessage'),
(212, 11, 'active', '1', 'active', '1'),
(213, 11, 'created_at', '2020-12-16 07:25:42', 'created_at', '2020-12-16 07:25:42'),
(214, 11, 'label', 'Success Message', 'label', 'Success Message'),
(215, 11, 'message', 'Thank you {field:name} for filling out my form!', 'message', 'Thank you {field:name} for filling out my form!'),
(216, 11, 'objectType', 'Action', 'objectType', 'Action'),
(217, 11, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(218, 11, 'editActive', '', 'editActive', ''),
(219, 11, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}', 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(220, 11, 'payment_gateways', '', 'payment_gateways', ''),
(221, 11, 'payment_total', '', 'payment_total', ''),
(222, 11, 'tag', '', 'tag', ''),
(223, 11, 'to', '', 'to', ''),
(224, 11, 'email_subject', '', 'email_subject', ''),
(225, 11, 'email_message', '', 'email_message', ''),
(226, 11, 'from_name', '', 'from_name', ''),
(227, 11, 'from_address', '', 'from_address', ''),
(228, 11, 'reply_to', '', 'reply_to', ''),
(229, 11, 'email_format', 'html', 'email_format', 'html'),
(230, 11, 'cc', '', 'cc', ''),
(231, 11, 'bcc', '', 'bcc', ''),
(232, 11, 'attach_csv', '', 'attach_csv', ''),
(233, 11, 'redirect_url', '', 'redirect_url', ''),
(234, 11, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>', 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(235, 11, 'email_message_plain', '', 'email_message_plain', ''),
(236, 11, 'parent_id', '3', 'parent_id', '3') ;

#
# End of data contents of table `wp_nf3_action_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_actions`
#

DROP TABLE IF EXISTS `wp_nf3_actions`;


#
# Table structure of table `wp_nf3_actions`
#

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `key` longtext,
  `type` longtext,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `label` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_actions`
#
INSERT INTO `wp_nf3_actions` ( `id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`, `label`) VALUES
(5, NULL, NULL, 'successmessage', 1, 2, '2020-12-16 07:27:16', '2020-12-16 07:27:16', 'Success Message'),
(6, NULL, NULL, 'email', 1, 2, '2020-12-16 07:27:16', '2020-12-16 07:27:16', 'Admin Email'),
(7, NULL, NULL, 'save', 1, 2, '2020-12-16 07:27:16', '2020-12-16 07:27:16', 'Store Submission'),
(8, '', '', 'save', 1, 3, '2020-12-16 07:25:42', NULL, 'Store Submission'),
(9, '', '', 'email', 1, 3, '2020-12-16 07:25:42', NULL, 'Email Confirmation'),
(10, '', '', 'email', 1, 3, '2020-12-16 07:25:42', NULL, 'Email Notification'),
(11, '', '', 'successmessage', 1, 3, '2020-12-16 07:25:42', NULL, 'Success Message') ;

#
# End of data contents of table `wp_nf3_actions`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_chunks`
#

DROP TABLE IF EXISTS `wp_nf3_chunks`;


#
# Table structure of table `wp_nf3_chunks`
#

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_chunks`
#

#
# End of data contents of table `wp_nf3_chunks`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_field_meta`
#

DROP TABLE IF EXISTS `wp_nf3_field_meta`;


#
# Table structure of table `wp_nf3_field_meta`
#

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=564 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_field_meta`
#
INSERT INTO `wp_nf3_field_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(261, 5, 'editActive', '', 'editActive', ''),
(262, 5, 'order', '1', 'order', '1'),
(263, 5, 'type', 'textarea', 'type', 'textarea'),
(264, 5, 'label', '', 'label', ''),
(265, 5, 'key', 'textarea_1608103563950', 'key', 'textarea_1608103563950'),
(266, 5, 'label_pos', 'hidden', 'label_pos', 'hidden'),
(267, 5, 'required', '1', 'required', '1'),
(268, 5, 'default', '', 'default', ''),
(269, 5, 'placeholder', 'Enter your comment', 'placeholder', 'Enter your comment'),
(270, 5, 'container_class', '', 'container_class', ''),
(271, 5, 'element_class', '', 'element_class', ''),
(272, 5, 'input_limit', '', 'input_limit', ''),
(273, 5, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(274, 5, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(275, 5, 'manual_key', '', 'manual_key', ''),
(276, 5, 'admin_label', '', 'admin_label', ''),
(277, 5, 'help_text', '', 'help_text', ''),
(278, 5, 'textarea_rte', '', 'textarea_rte', ''),
(279, 5, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(280, 5, 'textarea_media', '', 'textarea_media', ''),
(281, 5, 'value', '', 'value', ''),
(282, 5, 'drawerDisabled', '', 'drawerDisabled', ''),
(283, 6, 'editActive', '', 'editActive', ''),
(284, 6, 'order', '2', 'order', '2'),
(285, 6, 'type', 'submit', 'type', 'submit'),
(286, 6, 'label', 'Comment', 'label', 'Comment'),
(287, 6, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(288, 6, 'container_class', '', 'container_class', ''),
(289, 6, 'element_class', '', 'element_class', ''),
(290, 6, 'key', 'comment_1608103625151', 'key', 'comment_1608103625151'),
(291, 6, 'drawerDisabled', '', 'drawerDisabled', ''),
(292, 7, 'label', 'Name', 'label', 'Name'),
(293, 7, 'key', 'name', 'key', 'name'),
(294, 7, 'parent_id', '3', 'parent_id', '3'),
(295, 7, 'type', 'textbox', 'type', 'textbox'),
(296, 7, 'created_at', '2020-12-16 07:25:41', 'created_at', '2020-12-16 07:25:41'),
(297, 7, 'label_pos', 'above', 'label_pos', 'above'),
(298, 7, 'required', '1', 'required', '1'),
(299, 7, 'order', '1', 'order', '1'),
(300, 7, 'placeholder', '', 'placeholder', ''),
(301, 7, 'default', '', 'default', ''),
(302, 7, 'wrapper_class', '', 'wrapper_class', ''),
(303, 7, 'element_class', '', 'element_class', ''),
(304, 7, 'objectType', 'Field', 'objectType', 'Field'),
(305, 7, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(306, 7, 'editActive', '', 'editActive', ''),
(307, 7, 'container_class', '', 'container_class', ''),
(308, 7, 'input_limit', '', 'input_limit', ''),
(309, 7, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(310, 7, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(311, 7, 'manual_key', '', 'manual_key', ''),
(312, 7, 'disable_input', '', 'disable_input', ''),
(313, 7, 'admin_label', '', 'admin_label', ''),
(314, 7, 'help_text', '', 'help_text', ''),
(315, 7, 'desc_text', '', 'desc_text', ''),
(316, 7, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(317, 7, 'mask', '', 'mask', ''),
(318, 7, 'custom_mask', '', 'custom_mask', ''),
(319, 7, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(320, 7, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(321, 7, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(322, 7, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(323, 7, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(324, 7, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(325, 7, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(326, 7, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(327, 7, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(328, 7, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(329, 7, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(330, 7, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(331, 7, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(332, 7, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(333, 7, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(334, 7, 'label_styles_border', '', 'label_styles_border', ''),
(335, 7, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(336, 7, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(337, 7, 'label_styles_color', '', 'label_styles_color', ''),
(338, 7, 'label_styles_height', '', 'label_styles_height', ''),
(339, 7, 'label_styles_width', '', 'label_styles_width', ''),
(340, 7, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(341, 7, 'label_styles_margin', '', 'label_styles_margin', ''),
(342, 7, 'label_styles_padding', '', 'label_styles_padding', ''),
(343, 7, 'label_styles_display', '', 'label_styles_display', ''),
(344, 7, 'label_styles_float', '', 'label_styles_float', ''),
(345, 7, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(346, 7, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(347, 7, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(348, 7, 'element_styles_border', '', 'element_styles_border', ''),
(349, 7, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(350, 7, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(351, 7, 'element_styles_color', '', 'element_styles_color', ''),
(352, 7, 'element_styles_height', '', 'element_styles_height', ''),
(353, 7, 'element_styles_width', '', 'element_styles_width', ''),
(354, 7, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(355, 7, 'element_styles_margin', '', 'element_styles_margin', ''),
(356, 7, 'element_styles_padding', '', 'element_styles_padding', ''),
(357, 7, 'element_styles_display', '', 'element_styles_display', ''),
(358, 7, 'element_styles_float', '', 'element_styles_float', ''),
(359, 7, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(360, 7, 'element_styles_advanced', '', 'element_styles_advanced', '') ;
INSERT INTO `wp_nf3_field_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(361, 7, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(362, 8, 'label', 'Email', 'label', 'Email'),
(363, 8, 'key', 'email', 'key', 'email'),
(364, 8, 'parent_id', '3', 'parent_id', '3'),
(365, 8, 'type', 'email', 'type', 'email'),
(366, 8, 'created_at', '2020-12-16 07:25:41', 'created_at', '2020-12-16 07:25:41'),
(367, 8, 'label_pos', 'above', 'label_pos', 'above'),
(368, 8, 'required', '1', 'required', '1'),
(369, 8, 'order', '2', 'order', '2'),
(370, 8, 'placeholder', '', 'placeholder', ''),
(371, 8, 'default', '', 'default', ''),
(372, 8, 'wrapper_class', '', 'wrapper_class', ''),
(373, 8, 'element_class', '', 'element_class', ''),
(374, 8, 'objectType', 'Field', 'objectType', 'Field'),
(375, 8, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(376, 8, 'editActive', '', 'editActive', ''),
(377, 8, 'container_class', '', 'container_class', ''),
(378, 8, 'admin_label', '', 'admin_label', ''),
(379, 8, 'help_text', '', 'help_text', ''),
(380, 8, 'desc_text', '', 'desc_text', ''),
(381, 8, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(382, 8, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(383, 8, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(384, 8, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(385, 8, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(386, 8, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(387, 8, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(388, 8, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(389, 8, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(390, 8, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(391, 8, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(392, 8, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(393, 8, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(394, 8, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(395, 8, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(396, 8, 'label_styles_border', '', 'label_styles_border', ''),
(397, 8, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(398, 8, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(399, 8, 'label_styles_color', '', 'label_styles_color', ''),
(400, 8, 'label_styles_height', '', 'label_styles_height', ''),
(401, 8, 'label_styles_width', '', 'label_styles_width', ''),
(402, 8, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(403, 8, 'label_styles_margin', '', 'label_styles_margin', ''),
(404, 8, 'label_styles_padding', '', 'label_styles_padding', ''),
(405, 8, 'label_styles_display', '', 'label_styles_display', ''),
(406, 8, 'label_styles_float', '', 'label_styles_float', ''),
(407, 8, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(408, 8, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(409, 8, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(410, 8, 'element_styles_border', '', 'element_styles_border', ''),
(411, 8, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(412, 8, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(413, 8, 'element_styles_color', '', 'element_styles_color', ''),
(414, 8, 'element_styles_height', '', 'element_styles_height', ''),
(415, 8, 'element_styles_width', '', 'element_styles_width', ''),
(416, 8, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(417, 8, 'element_styles_margin', '', 'element_styles_margin', ''),
(418, 8, 'element_styles_padding', '', 'element_styles_padding', ''),
(419, 8, 'element_styles_display', '', 'element_styles_display', ''),
(420, 8, 'element_styles_float', '', 'element_styles_float', ''),
(421, 8, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(422, 8, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(423, 8, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(424, 9, 'label', 'Message', 'label', 'Message'),
(425, 9, 'key', 'message', 'key', 'message'),
(426, 9, 'parent_id', '3', 'parent_id', '3'),
(427, 9, 'type', 'textarea', 'type', 'textarea'),
(428, 9, 'created_at', '2020-12-16 07:25:41', 'created_at', '2020-12-16 07:25:41'),
(429, 9, 'label_pos', 'above', 'label_pos', 'above'),
(430, 9, 'required', '1', 'required', '1'),
(431, 9, 'order', '3', 'order', '3'),
(432, 9, 'placeholder', '', 'placeholder', ''),
(433, 9, 'default', '', 'default', ''),
(434, 9, 'wrapper_class', '', 'wrapper_class', ''),
(435, 9, 'element_class', '', 'element_class', ''),
(436, 9, 'objectType', 'Field', 'objectType', 'Field'),
(437, 9, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(438, 9, 'editActive', '', 'editActive', ''),
(439, 9, 'container_class', '', 'container_class', ''),
(440, 9, 'input_limit', '', 'input_limit', ''),
(441, 9, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(442, 9, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(443, 9, 'manual_key', '', 'manual_key', ''),
(444, 9, 'disable_input', '', 'disable_input', ''),
(445, 9, 'admin_label', '', 'admin_label', ''),
(446, 9, 'help_text', '', 'help_text', ''),
(447, 9, 'desc_text', '', 'desc_text', ''),
(448, 9, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(449, 9, 'textarea_rte', '', 'textarea_rte', ''),
(450, 9, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(451, 9, 'textarea_media', '', 'textarea_media', ''),
(452, 9, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(453, 9, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(454, 9, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(455, 9, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(456, 9, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(457, 9, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(458, 9, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(459, 9, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(460, 9, 'wrap_styles_margin', '', 'wrap_styles_margin', '') ;
INSERT INTO `wp_nf3_field_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(461, 9, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(462, 9, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(463, 9, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(464, 9, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(465, 9, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(466, 9, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(467, 9, 'label_styles_border', '', 'label_styles_border', ''),
(468, 9, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(469, 9, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(470, 9, 'label_styles_color', '', 'label_styles_color', ''),
(471, 9, 'label_styles_height', '', 'label_styles_height', ''),
(472, 9, 'label_styles_width', '', 'label_styles_width', ''),
(473, 9, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(474, 9, 'label_styles_margin', '', 'label_styles_margin', ''),
(475, 9, 'label_styles_padding', '', 'label_styles_padding', ''),
(476, 9, 'label_styles_display', '', 'label_styles_display', ''),
(477, 9, 'label_styles_float', '', 'label_styles_float', ''),
(478, 9, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(479, 9, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(480, 9, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(481, 9, 'element_styles_border', '', 'element_styles_border', ''),
(482, 9, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(483, 9, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(484, 9, 'element_styles_color', '', 'element_styles_color', ''),
(485, 9, 'element_styles_height', '', 'element_styles_height', ''),
(486, 9, 'element_styles_width', '', 'element_styles_width', ''),
(487, 9, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(488, 9, 'element_styles_margin', '', 'element_styles_margin', ''),
(489, 9, 'element_styles_padding', '', 'element_styles_padding', ''),
(490, 9, 'element_styles_display', '', 'element_styles_display', ''),
(491, 9, 'element_styles_float', '', 'element_styles_float', ''),
(492, 9, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(493, 9, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(494, 9, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(495, 10, 'label', 'Submit', 'label', 'Submit'),
(496, 10, 'key', 'submit', 'key', 'submit'),
(497, 10, 'parent_id', '3', 'parent_id', '3'),
(498, 10, 'type', 'submit', 'type', 'submit'),
(499, 10, 'created_at', '2020-12-16 07:25:41', 'created_at', '2020-12-16 07:25:41'),
(500, 10, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(501, 10, 'order', '5', 'order', '5'),
(502, 10, 'objectType', 'Field', 'objectType', 'Field'),
(503, 10, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(504, 10, 'editActive', '', 'editActive', ''),
(505, 10, 'container_class', '', 'container_class', ''),
(506, 10, 'element_class', '', 'element_class', ''),
(507, 10, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(508, 10, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(509, 10, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(510, 10, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(511, 10, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(512, 10, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(513, 10, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(514, 10, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(515, 10, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(516, 10, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(517, 10, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(518, 10, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(519, 10, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(520, 10, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(521, 10, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(522, 10, 'label_styles_border', '', 'label_styles_border', ''),
(523, 10, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(524, 10, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(525, 10, 'label_styles_color', '', 'label_styles_color', ''),
(526, 10, 'label_styles_height', '', 'label_styles_height', ''),
(527, 10, 'label_styles_width', '', 'label_styles_width', ''),
(528, 10, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(529, 10, 'label_styles_margin', '', 'label_styles_margin', ''),
(530, 10, 'label_styles_padding', '', 'label_styles_padding', ''),
(531, 10, 'label_styles_display', '', 'label_styles_display', ''),
(532, 10, 'label_styles_float', '', 'label_styles_float', ''),
(533, 10, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(534, 10, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(535, 10, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(536, 10, 'element_styles_border', '', 'element_styles_border', ''),
(537, 10, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(538, 10, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(539, 10, 'element_styles_color', '', 'element_styles_color', ''),
(540, 10, 'element_styles_height', '', 'element_styles_height', ''),
(541, 10, 'element_styles_width', '', 'element_styles_width', ''),
(542, 10, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(543, 10, 'element_styles_margin', '', 'element_styles_margin', ''),
(544, 10, 'element_styles_padding', '', 'element_styles_padding', ''),
(545, 10, 'element_styles_display', '', 'element_styles_display', ''),
(546, 10, 'element_styles_float', '', 'element_styles_float', ''),
(547, 10, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(548, 10, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(549, 10, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(550, 10, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(551, 10, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(552, 10, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(553, 10, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(554, 10, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(555, 10, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(556, 10, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(557, 10, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(558, 10, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(559, 10, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(560, 10, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', '') ;
INSERT INTO `wp_nf3_field_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(561, 10, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(562, 10, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(563, 10, 'cellcid', 'c3287', 'cellcid', 'c3287') ;

#
# End of data contents of table `wp_nf3_field_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_fields`
#

DROP TABLE IF EXISTS `wp_nf3_fields`;


#
# Table structure of table `wp_nf3_fields`
#

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` longtext,
  `key` longtext,
  `type` longtext,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `field_label` longtext,
  `field_key` longtext,
  `order` int(11) DEFAULT NULL,
  `required` bit(1) DEFAULT NULL,
  `default_value` longtext,
  `label_pos` varchar(15) DEFAULT NULL,
  `personally_identifiable` bit(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_fields`
#
INSERT INTO `wp_nf3_fields` ( `id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`, `field_label`, `field_key`, `order`, `required`, `default_value`, `label_pos`, `personally_identifiable`) VALUES
(5, '', 'textarea_1608103563950', 'textarea', 2, NULL, NULL, '', 'textarea_1608103563950', 1, b'1', '', 'hidden', b'0'),
(6, 'Comment', 'comment_1608103625151', 'submit', 2, NULL, NULL, 'Comment', 'comment_1608103625151', 2, b'0', '', '', b'0'),
(7, 'Name', 'name', 'textbox', 3, NULL, NULL, 'Name', 'name', 1, b'1', '', 'above', NULL),
(8, 'Email', 'email', 'email', 3, NULL, NULL, 'Email', 'email', 2, b'1', '', 'above', NULL),
(9, 'Message', 'message', 'textarea', 3, NULL, NULL, 'Message', 'message', 3, b'1', '', 'above', NULL),
(10, 'Submit', 'submit', 'submit', 3, NULL, NULL, 'Submit', 'submit', 5, NULL, NULL, NULL, NULL) ;

#
# End of data contents of table `wp_nf3_fields`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_form_meta`
#

DROP TABLE IF EXISTS `wp_nf3_form_meta`;


#
# Table structure of table `wp_nf3_form_meta`
#

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_form_meta`
#
INSERT INTO `wp_nf3_form_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(99, 2, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(100, 2, 'editActive', '1', 'editActive', '1'),
(101, 2, 'show_title', '0', 'show_title', '0'),
(102, 2, 'allow_public_link', '0', 'allow_public_link', '0'),
(103, 2, 'embed_form', '', 'embed_form', ''),
(104, 2, 'clear_complete', '1', 'clear_complete', '1'),
(105, 2, 'hide_complete', '0', 'hide_complete', '0'),
(106, 2, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(107, 2, 'wrapper_class', 'feedback-form', 'wrapper_class', 'feedback-form'),
(108, 2, 'element_class', '', 'element_class', ''),
(109, 2, 'key', '', 'key', ''),
(110, 2, 'add_submit', '0', 'add_submit', '0'),
(111, 2, 'currency', '', 'currency', ''),
(112, 2, 'unique_field_error', 'A form with this value has already been submitted.', 'unique_field_error', 'A form with this value has already been submitted.'),
(113, 2, 'logged_in', '', 'logged_in', ''),
(114, 2, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(115, 2, 'sub_limit_msg', 'The form has reached its submission limit.', 'sub_limit_msg', 'The form has reached its submission limit.'),
(116, 2, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(117, 2, 'formContentData', 'a:2:{i:0;s:22:"textarea_1608103563950";i:1;s:21:"comment_1608103625151";}', 'formContentData', 'a:2:{i:0;s:22:"textarea_1608103563950";i:1;s:21:"comment_1608103625151";}'),
(118, 2, 'changeEmailErrorMsg', '', 'changeEmailErrorMsg', ''),
(119, 2, 'changeDateErrorMsg', '', 'changeDateErrorMsg', ''),
(120, 2, 'confirmFieldErrorMsg', '', 'confirmFieldErrorMsg', ''),
(121, 2, 'fieldNumberNumMinError', '', 'fieldNumberNumMinError', ''),
(122, 2, 'fieldNumberNumMaxError', '', 'fieldNumberNumMaxError', ''),
(123, 2, 'fieldNumberIncrementBy', '', 'fieldNumberIncrementBy', ''),
(124, 2, 'formErrorsCorrectErrors', '', 'formErrorsCorrectErrors', ''),
(125, 2, 'validateRequiredField', '', 'validateRequiredField', ''),
(126, 2, 'honeypotHoneypotError', '', 'honeypotHoneypotError', ''),
(127, 2, 'fieldsMarkedRequired', '', 'fieldsMarkedRequired', ''),
(128, 2, 'drawerDisabled', '', 'drawerDisabled', ''),
(129, 2, '_seq_num', '3', '_seq_num', '3'),
(130, 3, 'title', 'Contact Me', 'title', 'Contact Me'),
(131, 3, 'key', '', 'key', ''),
(132, 3, 'created_at', '2020-12-16 07:25:41', 'created_at', '2020-12-16 07:25:41'),
(133, 3, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(134, 3, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(135, 3, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(136, 3, 'editActive', '', 'editActive', ''),
(137, 3, 'show_title', '1', 'show_title', '1'),
(138, 3, 'clear_complete', '1', 'clear_complete', '1'),
(139, 3, 'hide_complete', '1', 'hide_complete', '1'),
(140, 3, 'wrapper_class', '', 'wrapper_class', ''),
(141, 3, 'element_class', '', 'element_class', ''),
(142, 3, 'add_submit', '1', 'add_submit', '1'),
(143, 3, 'logged_in', '', 'logged_in', ''),
(144, 3, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(145, 3, 'sub_limit_number', '', 'sub_limit_number', ''),
(146, 3, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(147, 3, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(148, 3, 'formContentData', 'a:4:{i:0;a:2:{s:5:"order";s:1:"0";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:4:"name";}s:5:"width";s:3:"100";}}}i:1;a:2:{s:5:"order";s:1:"1";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:5:"email";}s:5:"width";s:3:"100";}}}i:2;a:2:{s:5:"order";s:1:"2";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:7:"message";}s:5:"width";s:3:"100";}}}i:3;a:2:{s:5:"order";s:1:"3";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:6:"submit";}s:5:"width";s:3:"100";}}}}', 'formContentData', 'a:4:{i:0;a:2:{s:5:"order";s:1:"0";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:4:"name";}s:5:"width";s:3:"100";}}}i:1;a:2:{s:5:"order";s:1:"1";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:5:"email";}s:5:"width";s:3:"100";}}}i:2;a:2:{s:5:"order";s:1:"2";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:7:"message";}s:5:"width";s:3:"100";}}}i:3;a:2:{s:5:"order";s:1:"3";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:6:"submit";}s:5:"width";s:3:"100";}}}}'),
(149, 3, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(150, 3, 'container_styles_border', '', 'container_styles_border', ''),
(151, 3, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(152, 3, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(153, 3, 'container_styles_color', '', 'container_styles_color', ''),
(154, 3, 'container_styles_height', '', 'container_styles_height', ''),
(155, 3, 'container_styles_width', '', 'container_styles_width', ''),
(156, 3, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(157, 3, 'container_styles_margin', '', 'container_styles_margin', ''),
(158, 3, 'container_styles_padding', '', 'container_styles_padding', ''),
(159, 3, 'container_styles_display', '', 'container_styles_display', ''),
(160, 3, 'container_styles_float', '', 'container_styles_float', ''),
(161, 3, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(162, 3, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(163, 3, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(164, 3, 'title_styles_border', '', 'title_styles_border', ''),
(165, 3, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(166, 3, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(167, 3, 'title_styles_color', '', 'title_styles_color', ''),
(168, 3, 'title_styles_height', '', 'title_styles_height', ''),
(169, 3, 'title_styles_width', '', 'title_styles_width', ''),
(170, 3, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(171, 3, 'title_styles_margin', '', 'title_styles_margin', ''),
(172, 3, 'title_styles_padding', '', 'title_styles_padding', ''),
(173, 3, 'title_styles_display', '', 'title_styles_display', ''),
(174, 3, 'title_styles_float', '', 'title_styles_float', ''),
(175, 3, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(176, 3, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(177, 3, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(178, 3, 'row_styles_border', '', 'row_styles_border', ''),
(179, 3, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(180, 3, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(181, 3, 'row_styles_color', '', 'row_styles_color', ''),
(182, 3, 'row_styles_height', '', 'row_styles_height', ''),
(183, 3, 'row_styles_width', '', 'row_styles_width', ''),
(184, 3, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(185, 3, 'row_styles_margin', '', 'row_styles_margin', ''),
(186, 3, 'row_styles_padding', '', 'row_styles_padding', ''),
(187, 3, 'row_styles_display', '', 'row_styles_display', ''),
(188, 3, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(189, 3, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(190, 3, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(191, 3, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(192, 3, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(193, 3, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(194, 3, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(195, 3, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(196, 3, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(197, 3, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(198, 3, 'row-odd_styles_margin', '', 'row-odd_styles_margin', '') ;
INSERT INTO `wp_nf3_form_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(199, 3, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(200, 3, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(201, 3, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(202, 3, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(203, 3, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(204, 3, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(205, 3, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(206, 3, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(207, 3, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(208, 3, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(209, 3, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(210, 3, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(211, 3, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(212, 3, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(213, 3, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(214, 3, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(215, 3, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(216, 3, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(217, 3, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(218, 3, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(219, 3, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(220, 3, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(221, 3, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(222, 3, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(223, 3, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(224, 3, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(225, 3, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(226, 3, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(227, 3, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(228, 3, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', '') ;

#
# End of data contents of table `wp_nf3_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_forms`
#

DROP TABLE IF EXISTS `wp_nf3_forms`;


#
# Table structure of table `wp_nf3_forms`
#

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `key` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext,
  `default_label_pos` varchar(15) DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_forms`
#
INSERT INTO `wp_nf3_forms` ( `id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`, `form_title`, `default_label_pos`, `show_title`, `clear_complete`, `hide_complete`, `logged_in`, `seq_num`) VALUES
(2, 'Feedback', NULL, '2020-12-16 07:27:16', '2020-12-16 07:27:16', NULL, NULL, 'Feedback', 'above', b'0', b'1', b'0', b'0', 3),
(3, 'Contact Me', NULL, '2020-12-16 07:25:41', NULL, NULL, NULL, 'Contact Me', 'above', b'1', b'1', b'1', b'0', NULL) ;

#
# End of data contents of table `wp_nf3_forms`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_object_meta`
#

DROP TABLE IF EXISTS `wp_nf3_object_meta`;


#
# Table structure of table `wp_nf3_object_meta`
#

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_object_meta`
#

#
# End of data contents of table `wp_nf3_object_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_objects`
#

DROP TABLE IF EXISTS `wp_nf3_objects`;


#
# Table structure of table `wp_nf3_objects`
#

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext,
  `title` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `object_title` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_objects`
#

#
# End of data contents of table `wp_nf3_objects`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_relationships`
#

DROP TABLE IF EXISTS `wp_nf3_relationships`;


#
# Table structure of table `wp_nf3_relationships`
#

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_relationships`
#

#
# End of data contents of table `wp_nf3_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf3_upgrades`
#

DROP TABLE IF EXISTS `wp_nf3_upgrades`;


#
# Table structure of table `wp_nf3_upgrades`
#

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext,
  `stage` int(11) NOT NULL DEFAULT '0',
  `maintenance` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `wp_nf3_upgrades`
#
INSERT INTO `wp_nf3_upgrades` ( `id`, `cache`, `stage`, `maintenance`) VALUES
(2, 'a:7:{s:2:"id";i:2;s:20:"show_publish_options";b:0;s:6:"fields";a:2:{i:0;a:2:{s:8:"settings";a:24:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:1;s:4:"type";s:8:"textarea";s:5:"label";s:0:"";s:3:"key";s:22:"textarea_1608103563950";s:9:"label_pos";s:6:"hidden";s:8:"required";i:1;s:7:"default";s:0:"";s:11:"placeholder";s:18:"Enter your comment";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";b:0;s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:12:"textarea_rte";i:0;s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";s:5:"value";s:0:"";s:14:"drawerDisabled";b:0;}s:2:"id";s:1:"5";}i:1;a:2:{s:8:"settings";a:11:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:2;s:4:"type";s:6:"submit";s:5:"label";s:7:"Comment";s:16:"processing_label";s:10:"Processing";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:3:"key";s:21:"comment_1608103625151";s:14:"drawerDisabled";b:0;}s:2:"id";s:1:"6";}}s:7:"actions";a:3:{i:0;a:2:{s:8:"settings";a:20:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:4:"type";s:14:"successmessage";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2020-12-16 07:27:16";s:5:"label";s:15:"Success Message";s:7:"message";s:42:"Your form has been successfully submitted.";s:5:"order";s:1:"1";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:11:"success_msg";s:42:"Your form has been successfully submitted.";}s:2:"id";i:5;}i:1;a:2:{s:8:"settings";a:18:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2020-12-16 07:27:16";s:5:"label";s:11:"Admin Email";s:5:"order";s:1:"2";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";}s:2:"id";i:6;}i:2;a:2:{s:8:"settings";a:26:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:4:"type";s:4:"save";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2020-12-16 07:27:16";s:5:"label";s:16:"Store Submission";s:5:"order";s:1:"3";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:11:"success_msg";s:42:"Your form has been successfully submitted.";s:12:"redirect_url";s:0:"";s:15:"submitter_email";s:0:"";s:18:"fields-save-toggle";s:8:"save_all";s:16:"exception_fields";a:0:{}s:18:"set_subs_to_expire";s:1:"0";s:16:"subs_expire_time";s:2:"90";s:14:"drawerDisabled";s:0:"";}s:2:"id";i:7;}}s:8:"settings";a:31:{s:10:"objectType";s:12:"Form Setting";s:10:"editActive";b:1;s:5:"title";s:8:"Feedback";s:10:"show_title";i:0;s:17:"allow_public_link";i:0;s:10:"embed_form";s:0:"";s:14:"clear_complete";i:1;s:13:"hide_complete";i:0;s:17:"default_label_pos";s:5:"above";s:13:"wrapper_class";s:13:"feedback-form";s:13:"element_class";s:0:"";s:3:"key";s:0:"";s:10:"add_submit";i:0;s:19:"changeEmailErrorMsg";s:0:"";s:18:"changeDateErrorMsg";s:0:"";s:20:"confirmFieldErrorMsg";s:0:"";s:22:"fieldNumberNumMinError";s:0:"";s:22:"fieldNumberNumMaxError";s:0:"";s:22:"fieldNumberIncrementBy";s:0:"";s:23:"formErrorsCorrectErrors";s:0:"";s:21:"validateRequiredField";s:0:"";s:21:"honeypotHoneypotError";s:0:"";s:20:"fieldsMarkedRequired";s:0:"";s:8:"currency";s:0:"";s:18:"unique_field_error";s:50:"A form with this value has already been submitted.";s:9:"logged_in";b:0;s:17:"not_logged_in_msg";s:0:"";s:13:"sub_limit_msg";s:42:"The form has reached its submission limit.";s:12:"calculations";a:0:{}s:15:"formContentData";a:2:{i:0;s:22:"textarea_1608103563950";i:1;s:21:"comment_1608103625151";}s:14:"drawerDisabled";b:0;}s:14:"deleted_fields";a:0:{}s:15:"deleted_actions";a:0:{}}', 4, b'0'),
(3, 'a:4:{s:2:"id";i:3;s:6:"fields";a:4:{i:0;a:2:{s:8:"settings";a:64:{s:7:"cellcid";s:5:"c3281";s:23:"element_styles_advanced";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:20:"element_styles_float";s:0:"";s:22:"element_styles_display";s:0:"";s:22:"element_styles_padding";s:0:"";s:21:"element_styles_margin";s:0:"";s:24:"element_styles_font-size";s:0:"";s:20:"element_styles_width";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_color";s:0:"";s:27:"element_styles_border-color";s:0:"";s:27:"element_styles_border-style";s:0:"";s:21:"element_styles_border";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"label_styles_advanced";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:18:"label_styles_float";s:0:"";s:20:"label_styles_display";s:0:"";s:20:"label_styles_padding";s:0:"";s:19:"label_styles_margin";s:0:"";s:18:"label_styles_width";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_color";s:0:"";s:25:"label_styles_border-color";s:0:"";s:25:"label_styles_border-style";s:0:"";s:19:"label_styles_border";s:0:"";s:29:"label_styles_background-color";s:0:"";s:20:"wrap_styles_advanced";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:17:"wrap_styles_float";s:0:"";s:19:"wrap_styles_display";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:17:"wrap_styles_width";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_color";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:18:"wrap_styles_border";s:0:"";s:9:"desc_text";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:9:"help_text";s:0:"";s:11:"admin_label";s:0:"";s:15:"container_class";s:0:"";s:10:"editActive";s:0:"";s:12:"objectDomain";s:6:"fields";s:10:"objectType";s:5:"Field";s:13:"element_class";s:0:"";s:13:"wrapper_class";s:0:"";s:7:"default";s:0:"";s:11:"placeholder";s:0:"";s:5:"order";s:1:"2";s:8:"required";s:1:"1";s:9:"label_pos";s:5:"above";s:10:"created_at";s:19:"2020-12-16 07:25:41";s:4:"type";s:5:"email";s:9:"parent_id";s:1:"3";s:3:"key";s:5:"email";s:5:"label";s:5:"Email";s:22:"label_styles_font-size";s:0:"";s:11:"field_label";s:5:"Email";s:9:"field_key";s:5:"email";}s:2:"id";i:8;}i:1;a:2:{s:8:"settings";a:72:{s:7:"cellcid";s:5:"c3277";s:23:"element_styles_advanced";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:20:"element_styles_float";s:0:"";s:22:"element_styles_display";s:0:"";s:22:"element_styles_padding";s:0:"";s:21:"element_styles_margin";s:0:"";s:24:"element_styles_font-size";s:0:"";s:20:"element_styles_color";s:0:"";s:27:"element_styles_border-color";s:0:"";s:27:"element_styles_border-style";s:0:"";s:21:"element_styles_border";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"label_styles_advanced";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:18:"label_styles_float";s:0:"";s:20:"label_styles_display";s:0:"";s:20:"label_styles_padding";s:0:"";s:19:"label_styles_margin";s:0:"";s:22:"label_styles_font-size";s:0:"";s:18:"label_styles_width";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_color";s:0:"";s:25:"label_styles_border-color";s:0:"";s:25:"label_styles_border-style";s:0:"";s:19:"label_styles_border";s:0:"";s:29:"label_styles_background-color";s:0:"";s:20:"wrap_styles_advanced";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:17:"wrap_styles_float";s:0:"";s:19:"wrap_styles_display";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:17:"wrap_styles_width";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_color";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:18:"wrap_styles_border";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:11:"custom_mask";s:0:"";s:4:"mask";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:9:"desc_text";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:15:"input_limit_msg";s:17:"Character(s) left";s:16:"input_limit_type";s:10:"characters";s:11:"input_limit";s:0:"";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:12:"objectDomain";s:6:"fields";s:10:"objectType";s:5:"Field";s:13:"element_class";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:11:"placeholder";s:0:"";s:8:"required";s:1:"1";s:5:"order";s:1:"1";s:9:"label_pos";s:5:"above";s:9:"parent_id";s:1:"3";s:4:"type";s:7:"textbox";s:10:"created_at";s:19:"2020-12-16 07:25:41";s:20:"element_styles_width";s:0:"";s:21:"element_styles_height";s:0:"";s:3:"key";s:4:"name";s:5:"label";s:4:"Name";s:11:"field_label";s:4:"Name";s:9:"field_key";s:4:"name";}s:2:"id";i:7;}i:2;a:2:{s:8:"settings";a:73:{s:32:"element_styles_show_advanced_css";s:1:"0";s:20:"element_styles_float";s:0:"";s:22:"element_styles_display";s:0:"";s:22:"element_styles_padding";s:0:"";s:21:"element_styles_margin";s:0:"";s:24:"element_styles_font-size";s:0:"";s:20:"element_styles_width";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_color";s:0:"";s:27:"element_styles_border-color";s:0:"";s:27:"element_styles_border-style";s:0:"";s:21:"element_styles_border";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"label_styles_advanced";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:18:"label_styles_float";s:0:"";s:20:"label_styles_display";s:0:"";s:20:"label_styles_padding";s:0:"";s:19:"label_styles_margin";s:0:"";s:22:"label_styles_font-size";s:0:"";s:18:"label_styles_width";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_color";s:0:"";s:25:"label_styles_border-color";s:0:"";s:25:"label_styles_border-style";s:0:"";s:19:"label_styles_border";s:0:"";s:29:"label_styles_background-color";s:0:"";s:20:"wrap_styles_advanced";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:17:"wrap_styles_float";s:0:"";s:19:"wrap_styles_display";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:17:"wrap_styles_width";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_color";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:18:"wrap_styles_border";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:14:"textarea_media";s:0:"";s:18:"disable_rte_mobile";s:0:"";s:12:"textarea_rte";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:9:"desc_text";s:0:"";s:9:"help_text";s:0:"";s:11:"admin_label";s:0:"";s:13:"disable_input";s:0:"";s:10:"manual_key";s:0:"";s:15:"input_limit_msg";s:17:"Character(s) left";s:16:"input_limit_type";s:10:"characters";s:11:"input_limit";s:0:"";s:15:"container_class";s:0:"";s:10:"editActive";s:0:"";s:12:"objectDomain";s:6:"fields";s:10:"objectType";s:5:"Field";s:13:"element_class";s:0:"";s:13:"wrapper_class";s:0:"";s:7:"default";s:0:"";s:11:"placeholder";s:0:"";s:5:"order";s:1:"3";s:8:"required";s:1:"1";s:9:"label_pos";s:5:"above";s:10:"created_at";s:19:"2020-12-16 07:25:41";s:4:"type";s:8:"textarea";s:9:"parent_id";s:1:"3";s:3:"key";s:7:"message";s:5:"label";s:7:"Message";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3284";s:11:"field_label";s:7:"Message";s:9:"field_key";s:7:"message";}s:2:"id";i:9;}i:3;a:2:{s:8:"settings";a:71:{s:5:"label";s:6:"Submit";s:3:"key";s:6:"submit";s:9:"parent_id";s:1:"3";s:4:"type";s:6:"submit";s:10:"created_at";s:19:"2020-12-16 07:25:41";s:16:"processing_label";s:10:"Processing";s:5:"order";s:1:"5";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:44:"submit_element_hover_styles_background-color";s:0:"";s:34:"submit_element_hover_styles_border";s:0:"";s:40:"submit_element_hover_styles_border-style";s:0:"";s:40:"submit_element_hover_styles_border-color";s:0:"";s:33:"submit_element_hover_styles_color";s:0:"";s:34:"submit_element_hover_styles_height";s:0:"";s:33:"submit_element_hover_styles_width";s:0:"";s:37:"submit_element_hover_styles_font-size";s:0:"";s:34:"submit_element_hover_styles_margin";s:0:"";s:35:"submit_element_hover_styles_padding";s:0:"";s:35:"submit_element_hover_styles_display";s:0:"";s:33:"submit_element_hover_styles_float";s:0:"";s:45:"submit_element_hover_styles_show_advanced_css";s:1:"0";s:36:"submit_element_hover_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3287";s:11:"field_label";s:6:"Submit";s:9:"field_key";s:6:"submit";}s:2:"id";i:10;}}s:7:"actions";a:4:{i:0;a:2:{s:8:"settings";a:26:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:4:"save";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2020-12-16 07:25:42";s:5:"label";s:16:"Store Submission";s:19:"email_message_plain";s:0:"";s:9:"parent_id";s:1:"3";s:12:"redirect_url";s:0:"";s:10:"attach_csv";s:0:"";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:12:"email_format";s:4:"html";s:8:"reply_to";s:0:"";s:12:"from_address";s:0:"";s:13:"email_message";s:0:"";s:9:"from_name";s:0:"";s:13:"email_subject";s:0:"";s:2:"to";s:0:"";s:3:"tag";s:0:"";s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:10:"editActive";s:0:"";s:12:"objectDomain";s:7:"actions";s:10:"objectType";s:6:"Action";}s:2:"id";i:8;}i:1;a:2:{s:8:"settings";a:28:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:14:"successmessage";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2020-12-16 07:25:42";s:5:"label";s:15:"Success Message";s:7:"message";s:47:"Thank you {field:name} for filling out my form!";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:0:"";s:13:"email_subject";s:0:"";s:13:"email_message";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:12:"redirect_url";s:0:"";s:11:"success_msg";s:89:"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>";s:19:"email_message_plain";s:0:"";s:9:"parent_id";s:1:"3";}s:2:"id";i:11;}i:2;a:2:{s:8:"settings";a:25:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2020-12-16 07:25:42";s:5:"label";s:18:"Email Notification";s:13:"email_subject";s:29:"New message from {field:name}";s:2:"to";s:20:"{system:admin_email}";s:3:"tag";s:0:"";s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:10:"editActive";s:0:"";s:12:"objectDomain";s:7:"actions";s:10:"objectType";s:6:"Action";s:13:"email_message";s:60:"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:13:"{field:email}";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:1:"0";s:19:"email_message_plain";s:0:"";s:9:"parent_id";s:1:"3";}s:2:"id";i:10;}i:3;a:2:{s:8:"settings";a:27:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2020-12-16 07:25:42";s:5:"label";s:18:"Email Confirmation";s:9:"parent_id";s:1:"3";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:19:"email_message_plain";s:0:"";s:13:"email_message";s:29:"<p>{all_fields_table}<br></p>";s:3:"tag";s:0:"";s:13:"email_subject";s:24:"Submission Confirmation ";s:13:"payment_total";s:0:"";s:16:"payment_gateways";s:0:"";s:2:"to";s:13:"{field:email}";s:7:"subject";s:24:"This is an email action.";s:7:"message";s:19:"Hello, Ninja Forms!";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}}s:2:"id";i:9;}}s:8:"settings";a:101:{s:5:"title";s:10:"Contact Me";s:10:"created_at";s:19:"2020-12-16 07:25:41";s:10:"form_title";s:10:"Contact Me";s:17:"default_label_pos";s:5:"above";s:10:"show_title";s:1:"1";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:9:"logged_in";s:1:"0";s:7:"seq_num";N;s:23:"row-odd_styles_advanced";s:0:"";s:32:"row-odd_styles_show_advanced_css";s:1:"0";s:22:"row-odd_styles_display";s:0:"";s:22:"row-odd_styles_padding";s:0:"";s:21:"row-odd_styles_margin";s:0:"";s:24:"row-odd_styles_font-size";s:0:"";s:20:"row-odd_styles_width";s:0:"";s:21:"row-odd_styles_height";s:0:"";s:20:"row-odd_styles_color";s:0:"";s:27:"row-odd_styles_border-color";s:0:"";s:23:"row_styles_border-style";s:0:"";s:23:"row_styles_border-color";s:0:"";s:16:"row_styles_color";s:0:"";s:17:"row_styles_height";s:0:"";s:16:"row_styles_width";s:0:"";s:20:"row_styles_font-size";s:0:"";s:17:"row_styles_margin";s:0:"";s:18:"row_styles_padding";s:0:"";s:18:"row_styles_display";s:0:"";s:28:"row_styles_show_advanced_css";s:1:"0";s:19:"row_styles_advanced";s:0:"";s:31:"row-odd_styles_background-color";s:0:"";s:21:"row-odd_styles_border";s:0:"";s:27:"row-odd_styles_border-style";s:0:"";s:17:"row_styles_border";s:0:"";s:27:"row_styles_background-color";s:0:"";s:21:"title_styles_advanced";s:0:"";s:30:"title_styles_show_advanced_css";s:1:"0";s:18:"title_styles_float";s:0:"";s:20:"title_styles_display";s:0:"";s:20:"title_styles_padding";s:0:"";s:19:"title_styles_margin";s:0:"";s:22:"title_styles_font-size";s:0:"";s:18:"title_styles_width";s:0:"";s:19:"title_styles_height";s:0:"";s:18:"title_styles_color";s:0:"";s:25:"title_styles_border-color";s:0:"";s:25:"title_styles_border-style";s:0:"";s:19:"title_styles_border";s:0:"";s:29:"title_styles_background-color";s:0:"";s:25:"container_styles_advanced";s:0:"";s:34:"container_styles_show_advanced_css";s:1:"0";s:22:"container_styles_float";s:0:"";s:24:"container_styles_display";s:0:"";s:24:"container_styles_padding";s:0:"";s:23:"container_styles_margin";s:0:"";s:26:"container_styles_font-size";s:0:"";s:22:"container_styles_width";s:0:"";s:23:"container_styles_height";s:0:"";s:22:"container_styles_color";s:0:"";s:29:"container_styles_border-color";s:0:"";s:29:"container_styles_border-style";s:0:"";s:23:"container_styles_border";s:0:"";s:33:"container_styles_background-color";s:0:"";s:15:"formContentData";a:4:{i:0;a:2:{s:5:"order";s:1:"0";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:4:"name";}s:5:"width";s:3:"100";}}}i:1;a:2:{s:5:"order";s:1:"1";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:5:"email";}s:5:"width";s:3:"100";}}}i:2;a:2:{s:5:"order";s:1:"2";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:7:"message";}s:5:"width";s:3:"100";}}}i:3;a:2:{s:5:"order";s:1:"3";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:6:"submit";}s:5:"width";s:3:"100";}}}}s:12:"calculations";a:0:{}s:13:"sub_limit_msg";s:0:"";s:16:"sub_limit_number";s:0:"";s:17:"not_logged_in_msg";s:0:"";s:10:"add_submit";s:1:"1";s:13:"element_class";s:0:"";s:13:"wrapper_class";s:0:"";s:10:"editActive";s:0:"";s:10:"objectType";s:12:"Form Setting";s:10:"conditions";a:0:{}s:3:"key";s:0:"";s:35:"success-msg_styles_background-color";s:0:"";s:25:"success-msg_styles_border";s:0:"";s:31:"success-msg_styles_border-style";s:0:"";s:31:"success-msg_styles_border-color";s:0:"";s:24:"success-msg_styles_color";s:0:"";s:25:"success-msg_styles_height";s:0:"";s:24:"success-msg_styles_width";s:0:"";s:28:"success-msg_styles_font-size";s:0:"";s:25:"success-msg_styles_margin";s:0:"";s:26:"success-msg_styles_padding";s:0:"";s:26:"success-msg_styles_display";s:0:"";s:36:"success-msg_styles_show_advanced_css";s:1:"0";s:27:"success-msg_styles_advanced";s:0:"";s:33:"error_msg_styles_background-color";s:0:"";s:23:"error_msg_styles_border";s:0:"";s:29:"error_msg_styles_border-style";s:0:"";s:29:"error_msg_styles_border-color";s:0:"";s:22:"error_msg_styles_color";s:0:"";s:23:"error_msg_styles_height";s:0:"";s:22:"error_msg_styles_width";s:0:"";s:26:"error_msg_styles_font-size";s:0:"";s:23:"error_msg_styles_margin";s:0:"";s:24:"error_msg_styles_padding";s:0:"";s:24:"error_msg_styles_display";s:0:"";s:34:"error_msg_styles_show_advanced_css";s:1:"0";s:25:"error_msg_styles_advanced";s:0:"";}}', 4, b'0') ;

#
# End of data contents of table `wp_nf3_upgrades`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=399 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/money-mouth-wp', 'yes'),
(2, 'home', 'http://localhost/money-mouth-wp', 'yes'),
(3, 'blogname', 'Money Month', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'babovic.marko91@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:143:{s:29:"^ninja-forms/([a-zA-Z0-9]+)/?";s:36:"index.php?nf_public_link=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"nf_sub/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"nf_sub/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"nf_sub/([^/]+)/embed/?$";s:39:"index.php?nf_sub=$matches[1]&embed=true";s:27:"nf_sub/([^/]+)/trackback/?$";s:33:"index.php?nf_sub=$matches[1]&tb=1";s:35:"nf_sub/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?nf_sub=$matches[1]&paged=$matches[2]";s:42:"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?nf_sub=$matches[1]&cpage=$matches[2]";s:31:"nf_sub/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?nf_sub=$matches[1]&page=$matches[2]";s:23:"nf_sub/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"nf_sub/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"nf_sub/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:60:"commercial-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?commercial-category=$matches[1]&feed=$matches[2]";s:55:"commercial-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?commercial-category=$matches[1]&feed=$matches[2]";s:36:"commercial-category/([^/]+)/embed/?$";s:52:"index.php?commercial-category=$matches[1]&embed=true";s:48:"commercial-category/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?commercial-category=$matches[1]&paged=$matches[2]";s:30:"commercial-category/([^/]+)/?$";s:41:"index.php?commercial-category=$matches[1]";s:46:"range/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?range=$matches[1]&feed=$matches[2]";s:41:"range/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?range=$matches[1]&feed=$matches[2]";s:22:"range/([^/]+)/embed/?$";s:38:"index.php?range=$matches[1]&embed=true";s:34:"range/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?range=$matches[1]&paged=$matches[2]";s:16:"range/([^/]+)/?$";s:27:"index.php?range=$matches[1]";s:55:"special-offers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?special-offers=$matches[1]&feed=$matches[2]";s:50:"special-offers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?special-offers=$matches[1]&feed=$matches[2]";s:31:"special-offers/([^/]+)/embed/?$";s:47:"index.php?special-offers=$matches[1]&embed=true";s:43:"special-offers/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?special-offers=$matches[1]&paged=$matches[2]";s:25:"special-offers/([^/]+)/?$";s:36:"index.php?special-offers=$matches[1]";s:53:"product-line/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?product-line=$matches[1]&feed=$matches[2]";s:48:"product-line/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?product-line=$matches[1]&feed=$matches[2]";s:29:"product-line/([^/]+)/embed/?$";s:45:"index.php?product-line=$matches[1]&embed=true";s:41:"product-line/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?product-line=$matches[1]&paged=$matches[2]";s:23:"product-line/([^/]+)/?$";s:34:"index.php?product-line=$matches[1]";s:47:"season/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?season=$matches[1]&feed=$matches[2]";s:42:"season/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?season=$matches[1]&feed=$matches[2]";s:23:"season/([^/]+)/embed/?$";s:39:"index.php?season=$matches[1]&embed=true";s:35:"season/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?season=$matches[1]&paged=$matches[2]";s:17:"season/([^/]+)/?$";s:28:"index.php?season=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:19:"my-files(/(.*))?/?$";s:31:"index.php?&my-files=$matches[2]";s:18:"clients(/(.*))?/?$";s:30:"index.php?&clients=$matches[2]";s:28:"distributor-files(/(.*))?/?$";s:40:"index.php?&distributor-files=$matches[2]";s:25:"credit-account(/(.*))?/?$";s:37:"index.php?&credit-account=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:27:"(.?.+?)/my-files(/(.*))?/?$";s:51:"index.php?pagename=$matches[1]&my-files=$matches[3]";s:26:"(.?.+?)/clients(/(.*))?/?$";s:50:"index.php?pagename=$matches[1]&clients=$matches[3]";s:36:"(.?.+?)/distributor-files(/(.*))?/?$";s:60:"index.php?pagename=$matches[1]&distributor-files=$matches[3]";s:33:"(.?.+?)/credit-account(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&credit-account=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:33:"instagram-feed/instagram-feed.php";i:2;s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:3;s:27:"ninja-forms/ninja-forms.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'meneymouth', 'yes'),
(41, 'stylesheet', 'meneymouth', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:0:"";s:4:"text";s:506:"<div class="text"><img class="alignnone wp-image-35" src="http://localhost/money-mouth-wp/wp-content/uploads/2020/12/logo-main-300x297.png" alt="" width="100" height="99" /><span class="white">Money Mouth</span><p>Lorem ipsum dolor sit amet adipiscing Lorem ipsum</p><span class="title">Support, Questions, Feedback:</span><span class="white">support@themoneymouth.com</span><span class="title">Investors, Partnerships, General Company Inquiries:</span><span class="white">hq@themoneymouth.com</span></div>";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:0:"";s:4:"text";s:33:"© 2020 Easy. All right reserved.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:2:{s:27:"ninja-forms/ninja-forms.php";s:21:"ninja_forms_uninstall";s:33:"instagram-feed/instagram-feed.php";s:22:"sb_instagram_uninstall";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1623490029', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:29:"manage_instagram_feed_options";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:8:{s:12:"shop-sidebar";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:19:"wp_inactive_widgets";a:0:{}s:15:"footer-widget-1";a:1:{i:0;s:6:"text-2";}s:15:"footer-widget-2";a:1:{i:0;s:10:"nav_menu-2";}s:15:"footer-widget-3";a:1:{i:0;s:10:"nav_menu-3";}s:15:"footer-widget-4";a:1:{i:0;s:11:"my_widget-2";}s:15:"footer-widget-5";a:1:{i:0;s:6:"text-3";}s:13:"array_version";i:3;}', 'yes'),
(107, 'cron', 'a:14:{i:1608218830;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1608235706;a:1:{s:23:"sb_instagram_twicedaily";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1608240430;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1608283630;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1608283972;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1608283973;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1608559200;a:1:{s:28:"wpforms_email_summaries_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:30:"wpforms_email_summaries_weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1608629230;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1608632748;a:1:{s:23:"sbi_usage_tracking_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1608708343;a:1:{s:22:"nf_marketing_feed_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:9:"nf-weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1608708344;a:1:{s:26:"nf_weekly_promotion_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:9:"nf-weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1609135200;a:2:{s:29:"sb_instagram_feed_issue_email";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:9:"sbiweekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}s:23:"sbi_notification_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:9:"sbiweekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1610782070;a:1:{s:13:"nf_optin_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"nf-monthly";s:4:"args";a:0:{}s:8:"interval";i:2678400;}}}s:7:"version";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:3:{i:2;a:2:{s:5:"title";s:4:"MENU";s:8:"nav_menu";i:2;}i:3;a:2:{s:5:"title";s:6:"Social";s:8:"nav_menu";i:3;}s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(144, 'theme_mods_twentytwentyone', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1607938389;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(145, 'current_theme', 'Money Mouth', 'yes'),
(146, 'theme_mods_money-mouth', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1607947815;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:15:"footer-widget-1";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:15:"footer-widget-2";a:0:{}s:15:"footer-widget-3";a:0:{}s:15:"footer-widget-4";a:0:{}s:14:"subscribe-form";a:0:{}s:12:"shop-sidebar";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(148, 'widget_my_widget', 'a:2:{i:2;N;s:12:"_multiwidget";i:1;}', 'yes'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(152, 'recently_activated', 'a:1:{s:24:"wpforms-lite/wpforms.php";i:1608104195;}', 'yes'),
(153, 'acf_version', '5.9.3', 'yes'),
(162, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TlRFME1qbDhkSGx3WlQxd1pYSnpiMjVoYkh4a1lYUmxQVEl3TVRVdE1ETXRNRFlnTURnNk5UWTZNalU9IjtzOjM6InVybCI7czozMToiaHR0cDovL2xvY2FsaG9zdC9tb25leS1tb3V0aC13cCI7fQ==', 'yes'),
(169, 'theme_mods_meneymouth', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:12:"primary-menu";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(195, 'action_scheduler_hybrid_store_demarkation', '19', 'yes'),
(196, 'schema-ActionScheduler_StoreSchema', '3.0.1608102086', 'yes'),
(197, 'schema-ActionScheduler_LoggerSchema', '2.0.1608102086', 'yes'),
(198, 'wpforms_version', '1.6.3.1', 'yes'),
(199, 'wpforms_version_lite', '1.6.3.1', 'yes'),
(200, 'wpforms_activated', 'a:1:{s:4:"lite";i:1608102086;}', 'yes'),
(203, 'action_scheduler_lock_async-request-runner', '1608104230', 'yes'),
(204, 'widget_wpforms-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(208, 'wpforms_review', 'a:2:{s:4:"time";i:1608102087;s:9:"dismissed";b:0;}', 'yes'),
(212, 'wpforms_notifications', 'a:4:{s:6:"update";i:1608102227;s:4:"feed";a:0:{}s:6:"events";a:0:{}s:9:"dismissed";a:0:{}}', 'yes'),
(229, 'ninja_forms_oauth_client_secret', 'wWffh6xLKIGZLWDZ9gDYlAarP5InVfvOZcbiGSLH', 'yes'),
(230, 'ninja_forms_version', '3.4.33', 'yes'),
(231, 'ninja_forms_db_version', '1.4', 'no'),
(232, 'ninja_forms_required_updates', 'a:6:{s:19:"CacheCollateActions";s:19:"2020-12-16 07:25:41";s:17:"CacheCollateForms";s:19:"2020-12-16 07:25:41";s:18:"CacheCollateFields";s:19:"2020-12-16 07:25:41";s:19:"CacheCollateObjects";s:19:"2020-12-16 07:25:41";s:19:"CacheCollateCleanup";s:19:"2020-12-16 07:25:41";s:25:"CacheFieldReconcilliation";s:19:"2020-12-16 07:25:41";}', 'yes'),
(233, 'ninja_forms_settings', 'a:11:{s:11:"date_format";s:5:"m/d/Y";s:8:"currency";s:3:"USD";s:18:"recaptcha_site_key";s:0:"";s:20:"recaptcha_secret_key";s:0:"";s:14:"recaptcha_lang";s:0:"";s:19:"delete_on_uninstall";i:0;s:21:"disable_admin_notices";s:1:"0";s:16:"builder_dev_mode";s:1:"1";s:18:"opinionated_styles";s:5:"light";s:15:"recaptcha_theme";s:5:"light";s:15:"currency_symbol";s:5:"&#36;";}', 'yes'),
(234, 'ninja_forms_zuul', '89', 'no'),
(237, 'ninja_forms_addons_feed', '[{"title":"Conditional Logic","image":"assets\\/img\\/add-ons\\/conditional-logic.png","content":"Build dynamic forms that can change as a user fills out the form. Show and hide fields. Send certain email, don\'t send others. Redirect to one of many pages. The possibilities are endless!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic","plugin":"ninja-forms-conditionals\\/conditionals.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic+Docs","version":"3.0.28","categories":[{"name":"Look &amp; Feel","slug":"look-feel"},{"name":"Actions","slug":"actions"},{"name":"Developer","slug":"developer"},{"name":"Membership","slug":"membership"},{"name":"User","slug":"user"},{"name":"Business","slug":"business"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"},{"name":"Form Function and Design","slug":"form-function-design"}]},{"title":"Multi Step Forms","image":"assets\\/img\\/add-ons\\/multi-step-forms.png","content":"Give submissions a boost on any longer form by making it a multi-page form. Drag and drop fields between pages, add breadcrumb navigation, a progress bar, and loads more!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms","plugin":"ninja-forms-multi-part\\/multi-part.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms+Docs","version":"3.0.26","categories":[{"name":"Look &amp; Feel","slug":"look-feel"},{"name":"Developer","slug":"developer"},{"name":"Membership","slug":"membership"},{"name":"User","slug":"user"},{"name":"Business","slug":"business"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"},{"name":"Form Function and Design","slug":"form-function-design"}]},{"title":"Front-End Posting","image":"assets\\/img\\/add-ons\\/front-end-posting.png","content":"Let users publish content just by submitting a form! Completely configurable including post type, title, even categories and tags. Set post status, author, and much more!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting","plugin":"ninja-forms-post-creation\\/ninja-forms-post-creation.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting+Docs","version":"3.0.10","categories":[{"name":"Content Management","slug":"content-management"},{"name":"Developer","slug":"developer"},{"name":"Membership","slug":"membership"},{"name":"User","slug":"user"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"},{"name":"User Management","slug":"user-management"}]},{"title":"File Uploads","image":"assets\\/img\\/add-ons\\/file-uploads.png","content":"Upload files to WordPress, Google Drive, Dropbox, or Amazon S3. Upload documents, images, media, and more. Easily control file type and size. Add an upload field to any form!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads","plugin":"ninja-forms-uploads\\/file-uploads.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads+Docs","version":"3.3.10","categories":[{"name":"Content Management","slug":"content-management"},{"name":"Developer","slug":"developer"},{"name":"Membership","slug":"membership"},{"name":"User","slug":"user"},{"name":"Business","slug":"business"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"},{"name":"File Management","slug":"file-management"}]},{"title":"Layout and Styles","image":"assets\\/img\\/add-ons\\/layout-styles.png","content":"Drag and drop fields into columns and rows. Resize fields. Add backgrounds, adjust borders, and more. Design gorgeous forms without being a designer!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles","plugin":"ninja-forms-style\\/ninja-forms-style.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles+Docs","version":"3.0.28","categories":[{"name":"Look &amp; Feel","slug":"look-feel"},{"name":"Developer","slug":"developer"},{"name":"Membership","slug":"membership"},{"name":"User","slug":"user"},{"name":"Business","slug":"business"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"},{"name":"Form Function and Design","slug":"form-function-design"}]},{"title":"Mailchimp","image":"assets\\/img\\/add-ons\\/mailchimp.png","content":"Bring new life to your lists with upgraded Mailchimp signup forms for WordPress! Easy to build and customize with no code required. Link to lists and interest groups!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp","plugin":"ninja-forms-mail-chimp\\/ninja-forms-mail-chimp.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp+Docs","version":"3.2.2","categories":[{"name":"Email Marketing","slug":"email-marketing"},{"name":"Actions","slug":"actions"},{"name":"Membership","slug":"membership"},{"name":"Business","slug":"business"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"}]},{"title":"Campaign Monitor","image":"assets\\/img\\/add-ons\\/campaign-monitor.png","content":"Make any form a custom crafted WordPress signup form for Campaign Monitor. Connect to any list, link form fields to list fields, and watch your lists grow!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor","plugin":"ninja-forms-campaign-monitor\\/ninja-forms-campaign-monitor.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor+Docs","version":"3.0.5","categories":[{"name":"Email Marketing","slug":"email-marketing"},{"name":"Membership","slug":"membership"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"}]},{"title":"User Analytics","image":"assets\\/img\\/add-ons\\/user-analytics.png","content":"Get better data on where your form traffic is coming from with every submission. Add 12+ analytics fields including UTM values,  URL referrer, geo data, and more!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics","plugin":"ninja-forms-user-analytics\\/ninja-forms-user-analytics.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics+Docs","version":"3.0.0","categories":[{"name":"Content Management","slug":"content-management"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"},{"name":"User Management","slug":"user-management"}]},{"title":"Constant Contact","image":"assets\\/img\\/add-ons\\/constant-contact.png","content":"Connect WordPress to Constant Contact with forms that you can build and design just the way you want, no tech skills required! Subscribe users to any list or interest group.","link":"https:\\/\\/ninjaforms.com\\/extensions\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact","plugin":"ninja-forms-constant-contact\\/ninja-forms-constant-contact.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact+Docs","version":"3.0.6","categories":[{"name":"Email Marketing","slug":"email-marketing"},{"name":"Membership","slug":"membership"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"}]},{"title":"AWeber","image":"assets\\/img\\/add-ons\\/aweber.png","content":"Build your lists faster with easy to design, professional quality WordPress signup forms. No technical skills required. Connect WordPress to AWeber with style!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber","plugin":"ninja-forms-aweber\\/ninja-forms-aweber.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber+Docs","version":"3.1.1","categories":[{"name":"Email Marketing","slug":"email-marketing"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"PayPal Express","image":"assets\\/img\\/add-ons\\/paypal-express.png","content":"Set up any form to accept PayPal payments with PayPal Express for WordPress! Base totals on a fixed amount, user entered amount, or a calculated total.","link":"https:\\/\\/ninjaforms.com\\/extensions\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express","plugin":"ninja-forms-paypal-express\\/ninja-forms-paypal-express.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express+Docs","version":"3.0.15","categories":[{"name":"Payment Gateways","slug":"payment-gateways"},{"name":"Developer","slug":"developer"},{"name":"Membership","slug":"membership"},{"name":"User","slug":"user"},{"name":"Business","slug":"business"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"}]},{"title":"MailPoet","image":"assets\\/img\\/add-ons\\/mailpoet.png","content":"Say hello better! Customize your MailPoet signup forms to draw more subscribers than ever before. Connect WordPress to any MailPoet list in minutes!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet","plugin":"ninja-forms-mailpoet\\/nf-mailpoet.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet+Docs","version":"3.0.0","categories":[{"name":"Email Marketing","slug":"email-marketing"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"Zoho CRM","image":"assets\\/img\\/add-ons\\/zoho-crm.png","content":"Customize your forms to get the most out of your connection between WordPress and Zoho. Link form fields directly to Zoho fields, custom fields included, from almost any module.","link":"https:\\/\\/ninjaforms.com\\/extensions\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM","plugin":"ninja-forms-zoho-crm\\/ninja-forms-zoho-crm.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM+Docs","version":"3.4","categories":[{"name":"CRM Integrations","slug":"crm-integrations"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"Capsule CRM","image":"assets\\/img\\/add-ons\\/capsule-crm.png","content":"Boost conversions from WordPress to Capsule with forms tailor made to your audience. Link form fields to Capsule fields from a wide range of modules. Custom fields too!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM","plugin":"ninja-forms-capsule-crm\\/ninja-forms-capsule-crm.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM+Docs","version":"3.4.0","categories":[{"name":"CRM Integrations","slug":"crm-integrations"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"Stripe","image":"assets\\/img\\/add-ons\\/stripe.png","content":"Set up any WordPress form to accept credit card payments or donations through Stripe. Base totals on a fixed amount, user entered amount, or a calculated total!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe","plugin":"ninja-forms-stripe\\/ninja-forms-stripe.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe+Docs","version":"3.1.3","categories":[{"name":"Payment Gateways","slug":"payment-gateways"},{"name":"Developer","slug":"developer"},{"name":"Membership","slug":"membership"},{"name":"User","slug":"user"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"}]},{"title":"Insightly CRM","image":"assets\\/img\\/add-ons\\/insightly-crm.png","content":"Your customer\'s journey begins with your WordPress forms. Send Contacts, Leads, Opportunities, Custom fields and more seamlessly from WordPress to Insightly!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM","plugin":"ninja-forms-insightly-crm\\/ninja-forms-insightly-crm.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM+Docs","version":"3.2.0","categories":[{"name":"CRM Integrations","slug":"crm-integrations"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"PDF Form Submission","image":"assets\\/img\\/add-ons\\/pdf-form-submission.png","content":"Generate a PDF of any WordPress form submission. Export any submission as a PDF, or attach it to an email and send a copy to whoever needs one!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission","plugin":"ninja-forms-pdf-submissions\\/nf-pdf-submissions.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission+Docs","version":"3.1.3","categories":[{"name":"Content Management","slug":"content-management"},{"name":"Membership","slug":"membership"},{"name":"Business","slug":"business"},{"name":"Agency","slug":"agency"},{"name":"File Management","slug":"file-management"}]},{"title":"Trello","image":"assets\\/img\\/add-ons\\/trello.png","content":"Create a new Trello card with data from any WordPress form submission. Map fields to card details, assign members and labels, upload images, embed links.","link":"https:\\/\\/ninjaforms.com\\/extensions\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello","plugin":"ninja-forms-trello\\/ninja-forms-trello.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello+Docs","version":"3.0.3","categories":[{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"},{"name":"Notification and Workflow","slug":"notification-workflow"}]},{"title":"Elavon","image":"assets\\/img\\/add-ons\\/elavon.png","content":"Accept credit card payments from any of your WordPress forms. Pass customer and invoice info from any field securely into Elavon with each payment.","link":"https:\\/\\/ninjaforms.com\\/extensions\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon","plugin":"ninja-forms-elavon-payment-gateway\\/ninja-forms-elavon-payment-gateway.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon+Docs","version":"3.1.0","categories":[{"name":"Payment Gateways","slug":"payment-gateways"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"Zapier","image":"assets\\/img\\/add-ons\\/zapier.png","content":"Don\'t see an add-on integration for a service you love? Don\'t worry! Connect WordPress to more than 1,500 different services through Zapier, no code required!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier","plugin":"ninja-forms-zapier\\/ninja-forms-zapier.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier+Docs","version":"3.0.8","categories":[{"name":"Membership","slug":"membership"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"},{"name":"File Management","slug":"file-management"},{"name":"Notification and Workflow","slug":"notification-workflow"},{"name":"Custom Integrations","slug":"custom-integrations"}]},{"title":"Salesforce CRM","image":"assets\\/img\\/add-ons\\/salesforce-crm.png","content":"Easily map any form field to any Salesforce Object or Field. A better connection to your customers begins with a better WordPress form builder!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM","plugin":"ninja-forms-salesforce-crm\\/ninja-forms-salesforce-crm.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM+Docs","version":"3.2.0","categories":[{"name":"CRM Integrations","slug":"crm-integrations"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"Slack","image":"assets\\/img\\/add-ons\\/slack.png","content":"Get realtime Slack notifications in the workspace and channel of your choice with any new WordPress form submission. @Mention any team member!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack","plugin":"ninja-forms-slack\\/ninja-forms-slack.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack+Docs","version":"3.0.3","categories":[{"name":"Notifications","slug":"notifications"},{"name":"Actions","slug":"actions"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"},{"name":"Notification and Workflow","slug":"notification-workflow"}]},{"title":"CleverReach","image":"assets\\/img\\/add-ons\\/cleverreach.png","content":"Grow the reach of your email marketing with better CleverReach signup forms. Tailor your forms to your audience with this easy to set up integration!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach","plugin":"ninja-forms-cleverreach\\/ninja-forms-cleverreach.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach+Docs","version":"3.1.3","categories":[{"name":"Email Marketing","slug":"email-marketing"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"Webhooks","image":"assets\\/img\\/add-ons\\/webhooks.png","content":"Can\'t find a WordPress integration for the service you love? Send WordPress forms data to any external URL using a simple GET or POST request!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks","plugin":"ninja-forms-webhooks\\/ninja-forms-webhooks.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks+Docs","version":"3.0.5","categories":[{"name":"Notifications","slug":"notifications"},{"name":"Actions","slug":"actions"},{"name":"Developer","slug":"developer"},{"name":"Membership","slug":"membership"},{"name":"User","slug":"user"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"},{"name":"Custom Integrations","slug":"custom-integrations"}]},{"title":"Excel Export","image":"assets\\/img\\/add-ons\\/excel-export.png","content":"Export any form\'s submissions as a Microsoft Excel spreadsheet. Choose a date range, the fields you want to include, and export to Excel! ","link":"https:\\/\\/ninjaforms.com\\/extensions\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export","plugin":"ninja-forms-excel-export\\/ninja-forms-excel-export.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export+Docs","version":"3.3.2","categories":[{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"},{"name":"File Management","slug":"file-management"}]},{"title":"WebMerge","image":"assets\\/img\\/add-ons\\/webmerge.png","content":"Create specifically formatted templates from an uploaded PDF or Word document, then auto-fill them from any WordPress form submission!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=WebMerge","plugin":"ninja-forms-webmerge\\/ninja-forms-webmerge.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=WebMerge+Docs","version":"3.0.3","categories":[{"name":"Content Management","slug":"content-management"},{"name":"Actions","slug":"actions"},{"name":"Developer","slug":"developer"},{"name":"Membership","slug":"membership"},{"name":"User","slug":"user"},{"name":"Agency","slug":"agency"},{"name":"File Management","slug":"file-management"}]},{"title":"Help Scout","image":"assets\\/img\\/add-ons\\/help-scout.png","content":"Offering great support is hard. Tailor your WordPress forms to match your customers\' needs with this Help Scout integration for WordPress.","link":"https:\\/\\/ninjaforms.com\\/extensions\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout","plugin":null,"docs":"https:\\/\\/ninjaforms.com\\/docs\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout+Docs","version":"3.1.3","categories":[{"name":"Actions","slug":"actions"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"},{"name":"User Management","slug":"user-management"}]},{"title":"Emma","image":"assets\\/img\\/add-ons\\/emma.png","content":"Take your email marketing further with handcrafted, easy to build signup forms that connect directly into your Emma account! ","link":"https:\\/\\/ninjaforms.com\\/extensions\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma","plugin":"ninja-forms-emma\\/ninja-forms-emma.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma+Docs","version":"3.0.4","categories":[{"name":"Email Marketing","slug":"email-marketing"},{"name":"Actions","slug":"actions"},{"name":"Developer","slug":"developer"},{"name":"Membership","slug":"membership"},{"name":"User","slug":"user"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"}]},{"title":"ClickSend SMS","image":"assets\\/img\\/add-ons\\/clicksend-sms.png","content":"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS","plugin":"ninja-forms-clicksend\\/ninja-forms-clicksend.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS+Docs","version":"3.0.1","categories":[{"name":"Actions","slug":"actions"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"},{"name":"Notification and Workflow","slug":"notification-workflow"}]},{"title":"Twilio SMS","image":"assets\\/img\\/add-ons\\/twilio-sms.png","content":"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS","plugin":"ninja-forms-twilio\\/ninja-forms-twilio.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS+Docs","version":"3.0.1","categories":[{"name":"Actions","slug":"actions"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"},{"name":"Notification and Workflow","slug":"notification-workflow"}]},{"title":"Recurly","image":"assets\\/img\\/add-ons\\/recurly.png","content":"Subscription plans a part of your business model? Let your users subscribe from any WordPress form & make management easier with Recurly!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly","plugin":"ninja-forms-recurly\\/ninja-forms-recurly.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly+Docs","version":"3.0.4","categories":[{"name":"Payment Gateways","slug":"payment-gateways"},{"name":"Actions","slug":"actions"},{"name":"Membership","slug":"membership"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"}]},{"title":"User Management","image":"assets\\/img\\/add-ons\\/user-management.png","content":"Allow your users to register, login, and manage their own profiles on your website. Customizable template forms for each, or design your own!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management","plugin":"ninja-forms-user-management\\/ninja-forms-user-management.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management+Docs","version":"3.0.12","categories":[{"name":"Content Management","slug":"content-management"},{"name":"Actions","slug":"actions"},{"name":"Membership","slug":"membership"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"},{"name":"User Management","slug":"user-management"}]},{"title":"Save Progress","image":"assets\\/img\\/add-ons\\/save-progress.png","content":"Let your users save their work and reload it all when they have time to return. Don\'t lose out on valuable submissions for longer forms!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress","plugin":"ninja-forms-save-progress\\/ninja-forms-save-progress.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress+Docs","version":"3.0.24.2","categories":[{"name":"Content Management","slug":"content-management"},{"name":"Membership","slug":"membership"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"},{"name":"Form Function and Design","slug":"form-function-design"}]},{"title":"EmailOctopus","image":"assets\\/img\\/add-ons\\/emailoctopus.png","content":"Pair WordPress\' best drag and drop form builder with your EmailOctopus account for incredibly effective signup forms. Easy, complete integration.","link":"https:\\/\\/ninjaforms.com\\/extensions\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus","plugin":"ninja-forms-emailoctopus\\/ninja-forms-emailoctopus.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus+Docs","version":"3.0.0","categories":[{"name":"Email Marketing","slug":"email-marketing"},{"name":"Actions","slug":"actions"},{"name":"Membership","slug":"membership"},{"name":"Business","slug":"business"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"}]},{"title":"PipelineDeals CRM","image":"assets\\/img\\/add-ons\\/pipelinedeals-crm.png","content":"Complete, effortless integration with PipelineDeals CRM. Increase the flow of leads into your sales pipeline with upgraded lead generation forms!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM","plugin":"ninja-forms-zoho-crm\\/zoho-integration.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM+Docs","version":"3.0.1","categories":[{"name":"CRM Integrations","slug":"crm-integrations"},{"name":"Actions","slug":"actions"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"Highrise CRM","image":"assets\\/img\\/add-ons\\/highrise-crm.png","content":"Get more out of the functional simplicity of Highrise CRM with forms that can be designed from the ground up to maximize conversion. ","link":"https:\\/\\/ninjaforms.com\\/extensions\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM","plugin":"ninja-forms-highrise-crm\\/ninja-forms-highrise-crm.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM+Docs","version":"3.0.0","categories":[{"name":"CRM Integrations","slug":"crm-integrations"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"ConvertKit","image":"assets\\/img\\/add-ons\\/convertkit.png","content":"Connect WordPress to your ConvertKit account with completely customizable opt-in forms. Watch your audience & sales grow like never before!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit","plugin":"ninja-forms-convertkit\\/ninja-forms-convertkit.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit+Docs","version":"3.0.2","categories":[{"name":"Email Marketing","slug":"email-marketing"},{"name":"Membership","slug":"membership"},{"name":"Personal","slug":"personal"},{"name":"Professional","slug":"professional"},{"name":"Agency","slug":"agency"}]},{"title":"OnePageCRM","image":"assets\\/img\\/add-ons\\/onepage-crm.png","content":"Integrate WordPress with OnePage CRM seamlessly through highly customizable WordPress forms. Make better conversions <em>your<\\/em> Next Action!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM","plugin":"ninja-forms-onepage-crm\\/ninja-forms-onepage-crm.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM+Docs","version":"3.0.0","categories":[{"name":"CRM Integrations","slug":"crm-integrations"},{"name":"Actions","slug":"actions"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]},{"title":"ActiveCampaign","image":"assets\\/img\\/add-ons\\/active-campaign.png","content":"Design custom forms that link perfectly to your ActiveCampaign account for the ultimate in marketing automation. Better leads begin here!","link":"https:\\/\\/ninjaforms.com\\/extensions\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign","plugin":"ninja-forms-active-campaign\\/ninja-forms-active-campaign.php","docs":"https:\\/\\/ninjaforms.com\\/docs\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign+Docs","version":"3.0.6","categories":[{"name":"Email Marketing","slug":"email-marketing"},{"name":"Membership","slug":"membership"},{"name":"Agency","slug":"agency"}]}]', 'no'),
(238, 'widget_ninja_forms_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(240, 'ninja-forms-views-secret', 'acg634KyYniPqFL3xTASsKNHYI3WN6s0PSdReSYz', 'yes'),
(243, 'ninja_forms_needs_updates', '0', 'yes'),
(244, 'nf_admin_notice', 'a:1:{s:16:"one_week_support";a:2:{s:5:"start";s:10:"12/23/2020";s:3:"int";i:7;}}', 'yes'),
(245, 'nf_form_tel_data', '1,2', 'no'),
(246, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(247, 'ninja_forms_optin_reported', '1', 'yes'),
(248, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(249, 'nf_active_promotions', '{"dashboard":[{"id":"personal-20","location":"dashboard","type":"personal","content":"<a href=\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-20\\" target=\\"_blank\\" class=\\"nf-remove-promo-styling\\"><img src=\\"http:\\/\\/localhost\\/money-mouth-wp\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-20.png\\"><\\/a>","script":""},{"id":"personal-50","location":"dashboard","type":"personal","content":"<a href=\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-50\\" target=\\"_blank\\" class=\\"nf-remove-promo-styling\\"><img src=\\"http:\\/\\/localhost\\/money-mouth-wp\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-50.png\\"><\\/a>","script":""},{"id":"sendwp-banner","location":"dashboard","content":"<span aria-label=\\"SendWP. Getting WordPress email into an inbox shouldn\'t be that hard! Never miss another receipt, form submission, or any WordPress email ever again.\\" style=\\"cursor:pointer;width:800px;height:83px;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;background-image:url(\'http:\\/\\/localhost\\/money-mouth-wp\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-sendwp.png\');display:block;\\"><\\/span>","type":"sendwp","script":"\\n      setTimeout(function(){ \\/* Wait for services to init. *\\/\\n        var data = {\\n          width: 450,\\n          closeOnClick: \'body\',\\n          closeOnEsc: true,\\n          content: \'<p><h2>Frustrated that WordPress email isn\\u2019t being received?<\\/h2><p>Form submission notifications not hitting your inbox? Some of your visitors getting form feedback via email, others not? By default, your WordPress site sends emails through your web host, which can be unreliable. Your host has spent lots of time and money optimizing to serve your pages, not send your emails.<\\/p><h3>Sign up for SendWP today, and never deal with WordPress email issues again!<\\/h3><p>SendWP is an email service that removes your web host from the email equation.<\\/p><ul style=&quot;list-style-type:initial;margin-left: 20px;&quot;><li>Sends email through dedicated email service, increasing email deliverability.<\\/li><li>Keeps form submission emails out of spam by using a trusted email provider.<\\/li><li>On a shared web host? Don\\u2019t worry about emails being rejected because of blocked IP addresses.<\\/li><li><strong>$1 for the first month. $9\\/month after. Cancel anytime!<\\/strong><\\/li><\\/ul><\\/p><br \\/>\',\\n          btnPrimary: {\\n            text: \'Sign me up!\',\\n            callback: function() {\\n              var spinner = document.createElement(\'span\');\\n              spinner.classList.add(\'dashicons\', \'dashicons-update\', \'dashicons-update-spin\');\\n              var w = this.offsetWidth;\\n              this.innerHTML = spinner.outerHTML;\\n              this.style.width = w+\'px\';\\n              ninja_forms_sendwp_remote_install();\\n            }\\n          },\\n          btnSecondary: {\\n            text: \'Cancel\',\\n            callback: function() {\\n              sendwpModal.toggleModal(false);\\n            }\\n          }\\n        }\\n        var sendwpModal = new NinjaModal(data);\\n      }, 500);\\n    "}]}', 'no'),
(253, 'nf_form_tel_sent', 'true', 'no'),
(262, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(264, 'options_phone_header', '', 'no'),
(265, '_options_phone_header', 'field_5a41150aaffbf', 'no'),
(266, 'options_email_header', '', 'no'),
(267, '_options_email_header', 'field_5a411530affc0', 'no'),
(268, 'options_address_header', '', 'no'),
(269, '_options_address_header', 'field_5a4213735166d', 'no'),
(270, 'options_logo_header', '35', 'no'),
(271, '_options_logo_header', 'field_5a411afbd5d40', 'no'),
(272, 'options_favicon_header', '36', 'no'),
(273, '_options_favicon_header', 'field_5a411b13d5d41', 'no'),
(274, 'options_facebook_url', 'http://facebook.com', 'no'),
(275, '_options_facebook_url', 'field_5a4115d07e613', 'no'),
(276, 'options_instagram_url', 'http://instagram.com', 'no'),
(277, '_options_instagram_url', 'field_5a41161c7e615', 'no'),
(284, 'options_twitter_url', 'http://twitter.com', 'no'),
(285, '_options_twitter_url', 'field_5fd9d9c0d9ddb', 'no'),
(302, 'widget_mc4wp_form_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(303, 'mc4wp_version', '4.8.1', 'yes'),
(304, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(305, 'mc4wp', 'a:6:{s:19:"grecaptcha_site_key";s:0:"";s:21:"grecaptcha_secret_key";s:0:"";s:7:"api_key";s:37:"b33bb5ccb2fb668cfb103380801647c8-us10";s:20:"allow_usage_tracking";i:0;s:15:"debug_log_level";s:7:"warning";s:18:"first_activated_on";i:1608124181;}', 'yes'),
(311, 'category_children', 'a:0:{}', 'yes'),
(329, 'sbi_usage_tracking', 'a:2:{s:7:"enabled";b:0;s:9:"last_send";i:0;}', 'yes'),
(330, 'widget_instagram-feed-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(332, 'sbi_usage_tracking_config', 'a:6:{s:3:"day";i:2;s:4:"hour";i:10;s:6:"minute";i:25;s:6:"second";i:48;s:6:"offset";i:210348;s:8:"initsend";i:1608632748;}', 'yes'),
(335, 'sbi_rating_notice', 'pending', 'no'),
(336, 'sbi_statuses', 'a:2:{s:13:"first_install";i:1608192506;s:4:"gdpr";a:1:{s:19:"from_update_success";b:1;}}', 'no'),
(337, 'sbi_db_version', '1.7', 'yes'),
(338, 'sbi_notifications', 'a:4:{s:6:"update";i:1608192507;s:4:"feed";a:0:{}s:6:"events";a:0:{}s:9:"dismissed";a:0:{}}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(339, 'sbi_newuser_notifications', 'a:4:{s:6:"update";i:1608192507;s:4:"feed";a:2:{s:6:"review";a:6:{s:5:"title";s:22:"Could you help us out?";s:7:"content";s:273:"It\'s great to see that you\'ve been using the <strong><span>{plugin}</span></strong> plugin for a while now. Hopefully you\'re happy with it!&nbsp; If so, would you consider leaving a positive review? It really helps to support the plugin and helps others to discover it too!";s:2:"id";s:6:"review";s:5:"image";s:12:"sbi-icon.png";s:4:"btns";a:4:{s:7:"primary";a:4:{s:3:"url";s:12:"{review-url}";s:4:"attr";a:1:{i:0;s:11:"targetblank";}s:5:"class";s:31:"sbi_notice_dismiss sbi_main_cta";s:4:"text";s:18:"Sure, I\'d love to!";}s:7:"dismiss";a:3:{s:3:"url";a:1:{s:28:"sbi_ignore_rating_notice_nag";s:1:"1";}s:5:"class";s:18:"sbi_notice_dismiss";s:4:"text";s:9:"No thanks";}s:8:"complete";a:3:{s:3:"url";a:1:{s:28:"sbi_ignore_rating_notice_nag";s:1:"1";}s:5:"class";s:18:"sbi_notice_dismiss";s:4:"text";s:27:"I\'ve already given a review";}s:5:"later";a:3:{s:3:"url";a:1:{s:28:"sbi_ignore_rating_notice_nag";s:5:"later";}s:5:"class";s:18:"sbi_notice_dismiss";s:4:"text";s:12:"Ask Me Later";}}s:4:"wait";s:2:"14";}s:8:"discount";a:8:{s:5:"title";s:28:"Attention {platform} Lovers!";s:7:"content";s:221:"<strong><span>Exclusive offer!</span></strong> We don\'t run promotions very often, but for a limited time we\'re offering <strong><span>{amount} off</span></strong> our Pro version to all users of our free {plugin} plugin.";s:2:"id";s:8:"discount";s:6:"amount";s:3:"60%";s:5:"image";s:12:"sbi-icon.png";s:13:"image_overlay";s:7:"60% off";s:4:"btns";a:2:{s:7:"primary";a:4:{s:3:"url";s:127:"https://smashballoon.com/{slug}/?utm_campaign={campaign}&utm_source=notices&utm_medium=newuser&discount={lowerplatform}thankyou";s:5:"class";s:32:"sbi_notice_dismiss sbi_offer_btn";s:4:"text";s:14:"Get this offer";s:4:"attr";a:1:{i:0;s:11:"targetblank";}}s:7:"dismiss";a:3:{s:3:"url";a:1:{s:31:"sbi_ignore_new_user_sale_notice";s:6:"always";}s:5:"class";s:18:"sbi_notice_dismiss";s:4:"text";s:18:"I\'m not interested";}}s:4:"wait";s:2:"30";}}s:6:"events";a:0:{}s:9:"dismissed";a:0:{}}', 'yes'),
(341, 'sb_instagram_settings', 'a:57:{s:15:"sb_instagram_at";s:0:"";s:20:"sb_instagram_user_id";a:1:{i:0;s:17:"17841400863872670";}s:30:"sb_instagram_preserve_settings";s:0:"";s:23:"sb_instagram_cache_time";i:1;s:28:"sb_instagram_cache_time_unit";s:5:"hours";s:16:"sbi_caching_type";s:4:"page";s:23:"sbi_cache_cron_interval";s:7:"12hours";s:19:"sbi_cache_cron_time";s:1:"1";s:20:"sbi_cache_cron_am_pm";s:2:"am";s:18:"sb_instagram_width";i:100;s:23:"sb_instagram_width_unit";s:1:"%";s:28:"sb_instagram_feed_width_resp";s:0:"";s:19:"sb_instagram_height";s:0:"";s:16:"sb_instagram_num";i:8;s:24:"sb_instagram_height_unit";s:2:"px";s:17:"sb_instagram_cols";s:1:"4";s:27:"sb_instagram_disable_mobile";s:0:"";s:26:"sb_instagram_image_padding";s:0:"";s:31:"sb_instagram_image_padding_unit";s:2:"px";s:17:"sb_instagram_sort";s:4:"none";s:23:"sb_instagram_background";s:0:"";s:21:"sb_instagram_show_btn";s:2:"on";s:27:"sb_instagram_btn_background";s:0:"";s:27:"sb_instagram_btn_text_color";s:0:"";s:21:"sb_instagram_btn_text";s:12:"Load More...";s:22:"sb_instagram_image_res";s:4:"auto";s:24:"sb_instagram_show_header";s:2:"on";s:24:"sb_instagram_header_size";s:5:"small";s:25:"sb_instagram_header_color";s:0:"";s:23:"sb_instagram_custom_bio";s:0:"";s:26:"sb_instagram_custom_avatar";s:0:"";s:28:"sb_instagram_show_follow_btn";s:2:"on";s:33:"sb_instagram_folow_btn_background";s:0:"";s:34:"sb_instagram_follow_btn_text_color";s:0:"";s:28:"sb_instagram_follow_btn_text";s:19:"Follow on Instagram";s:23:"sb_instagram_custom_css";s:0:"";s:22:"sb_instagram_custom_js";s:0:"";s:17:"sb_instagram_cron";s:2:"no";s:19:"sb_instagram_backup";s:2:"on";s:15:"sb_ajax_initial";s:0:"";s:24:"enqueue_css_in_shortcode";s:0:"";s:23:"sb_instagram_ajax_theme";s:0:"";s:4:"gdpr";s:4:"auto";s:27:"sb_instagram_disable_resize";s:0:"";s:24:"sb_instagram_favor_local";s:2:"on";s:19:"sb_instagram_minnum";s:1:"0";s:24:"disable_js_image_loading";s:0:"";s:18:"enqueue_js_in_head";s:0:"";s:30:"sb_instagram_disable_mob_swipe";b:0;s:15:"custom_template";s:0:"";s:20:"disable_admin_notice";s:0:"";s:19:"enable_email_report";s:2:"on";s:18:"email_notification";s:6:"monday";s:28:"email_notification_addresses";s:25:"babovic.marko91@gmail.com";s:28:"sb_instagram_disable_awesome";b:0;s:18:"connected_accounts";a:1:{i:17841400863872670;a:10:{s:12:"access_token";s:154:"IGQVJVOFF1a1dUX634hgdf83hjdj21ptaHJBR29FU1lxUzBEUzY1aHBuVXdka1gyVkpjSFhwOXVKczI4SDROSEJiY2VXZAVB5bURKaFJQQUJNWk44QlJsVWxSRXNoOVhjaHRlYnB0VUk0ZAnd0aEJ4Q1RB";s:7:"user_id";s:17:"17841400863872670";s:8:"username";s:22:"markoronimo_saurus_rex";s:8:"is_valid";b:1;s:12:"last_checked";i:1608192657;s:17:"expires_timestamp";i:1613376653;s:15:"profile_picture";s:0:"";s:12:"account_type";s:8:"personal";s:4:"type";s:5:"basic";s:12:"local_avatar";b:0;}}s:21:"sb_instagram_show_bio";s:2:"on";}', 'yes'),
(352, 'sb_instagram_ajax_status', 'a:2:{s:6:"tested";b:1;s:10:"successful";b:0;}', 'yes'),
(353, 'sb_instagram_errors', 'a:0:{}', 'no'),
(356, '!sbi_17841400863872670#20', '{"data":[{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/120659664_3967979706552561_6962314046826748204_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8ae9d6&_nc_ohc=FwO6kwJ8BRwAX_9VdEM&_nc_ht=scontent.cdninstagram.com&oh=5c4f28026203f44e2777eafd2b7eecc3&oe=5FFFBD69","id":"17863639061112928","media_type":"IMAGE","timestamp":"2020-10-03T15:23:08+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CF4uJVFFe0h\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/118702042_325613865316542_1448604974269613806_n.jpg?_nc_cat=106&ccb=2&_nc_sid=8ae9d6&_nc_ohc=Axw5d_0X4AUAX9O_qKl&_nc_ht=scontent.cdninstagram.com&oh=ab1d8de60d350aa3973891829b6bc3cb&oe=5FFFD04C","caption":"Kazu da mi je rodjaka, da ne kazem sestra.","id":"17852546786229813","media_type":"IMAGE","timestamp":"2020-09-05T16:30:02+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CEwvivZlAoE\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/118730025_113726286998775_8472605763671053621_n.jpg?_nc_cat=104&ccb=2&_nc_sid=8ae9d6&_nc_ohc=zdpVBaeoNhcAX8Nh-qt&_nc_ht=scontent.cdninstagram.com&oh=af3a71be45dba60cd83a3b297474c153&oe=60008CA0","caption":"Standardna subota i kafa sa prijateljima.","id":"17920695268447285","media_type":"IMAGE","timestamp":"2020-09-05T10:17:35+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CEwE62rF3tG\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/118397454_2374315432877901_5726139109898619726_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8ae9d6&_nc_ohc=aP9FNKskR5QAX_2oV23&_nc_ht=scontent.cdninstagram.com&oh=a336fad82dedaac77675a63b24d13c96&oe=5FFF80A4","id":"17865031268032142","media_type":"IMAGE","timestamp":"2020-08-29T17:05:18+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CEeyA8bBGnD\\/"},{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/105485069_268829197782627_422647905955110200_n.mp4?_nc_cat=105&vs=17866696234859986_2309162475&_nc_vs=HBksFQAYJEdBMlRTUVpqenRhc2YtUUFBRGhkaFBzSGpOMEZia1lMQUFBRhUAAsgBABUAGCRHRndnVWdZVWxrZjdtZkVBQUlyZGNIMU1vNjE1YmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaks%2FGDzOq8PxUCKAJDMywXQDm7peNT988YEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=E9i1V-5yHmYAX8ZOgXr&_nc_ht=video.cdninstagram.com&oh=266d4e7dc4f22f45889ca17d6218ba86&oe=600296B6&_nc_rid=2fc8dd7fe1","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/105933941_271962830565135_7441823946842835578_n.jpg?_nc_cat=105&ccb=2&_nc_sid=8ae9d6&_nc_ohc=TwJeEwYQ4DkAX_WgsC2&_nc_ht=scontent.cdninstagram.com&oh=16a17c9afe8b98aa01ecabb50e33f9c9&oe=5FFF8542","caption":"Za\\u0161to Pet Tag?\\n\\nPet Tag je personalizovana kartica na kojoj se nalaze, kako podaci o Va\\u0161em ljubimcu, tako i Va\\u0161 kontakt telefon. \\nNa pole\\u0111ini kartice je li\\u010dni identifikacioni broj i QR kod. Uno\\u0161enjem ID broja na stranici izgubljeni-ljubimac ili skeniranjem QR koda, pronalaza\\u010d dobija sve potrebne informacije o vlasniku i mogu\\u0107nost da stupi u kontakt sa njim.\\n\\nUkoliko iz bilo kog razloga niste u stanju da dobijete vlasnika na broj telefona, jednostavnim klikom na dugme Obavesti vlasnika i ispunjavanjem kratke kontakt forme, vlasnik \\u0107e biti obave\\u0161ten putem email-a. \\n#pet__tag","id":"18122015518099105","media_type":"VIDEO","timestamp":"2020-06-26T09:08:08+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CB5IgQJFtua\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/79979280_194288815224487_3778230865777059452_n.jpg?_nc_cat=108&ccb=2&_nc_sid=8ae9d6&_nc_ohc=WwTzFvy34UcAX9e0htV&_nc_ht=scontent.cdninstagram.com&oh=4f56473a749a18e6f3c71cd11a5c3a11&oe=5FFF5A95","caption":"Od ideje do realizacije je pro\\u0161lo vi\\u0161e od tri meseca i @pet__tag  je konacno gotov. Poru\\u010dite jo\\u0161 danas personalizovani tag za va\\u0161eg ljubimca! \\npet-tag.rs\\n#ns #bg #ljubimac #pet #petlovers #pettag","id":"17880784726640412","media_type":"IMAGE","timestamp":"2020-06-19T16:22:24+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CBn4qq0FDbL\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/97205461_684939992263923_1603010574511373800_n.jpg?_nc_cat=107&ccb=2&_nc_sid=8ae9d6&_nc_ohc=i7whlvkQCd0AX8uSRBQ&_nc_oc=AQkQ4VrxzYIwF4ZybqnuhsWDflkMNUKyu-C5PXJuPkED-SIR97QzIo18spre_VUio-s&_nc_ht=scontent.cdninstagram.com&oh=8af878ea033cdb993c8b7dd849c86abf&oe=6002576F","id":"17844383480133413","media_type":"IMAGE","timestamp":"2020-05-10T11:42:10+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CAAYzHRFEWj\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/92777260_148425016670839_3372315936919437030_n.jpg?_nc_cat=102&ccb=2&_nc_sid=8ae9d6&_nc_ohc=MSwEydngQm8AX8m5RIg&_nc_ht=scontent.cdninstagram.com&oh=17ed8d5abffdbf1a7c5594b8110e2e7c&oe=60010334","caption":"Uvek sam ovako sredjen, pogotovo kad sam ceo dan u stanu.","id":"18137924887035235","media_type":"IMAGE","timestamp":"2020-04-09T19:41:27+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B-xbAbql3Sb\\/"},{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/89163815_621448098679456_4301658123420161560_n.mp4?_nc_cat=102&vs=17873299297580541_1710918891&_nc_vs=HBksFQAYJEdDZUlVQVdnQ2lzcE5EVUNBQmpXb2FkRmo3STdia1lMQUFBRhUAAsgBABUAGCRHRi1KTlFXMjJYVzJjWFFFQUNaemE2WmVVODRPYmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACb6z%2FC0%2BOq%2FPxUCKAJDMywXQDfMzMzMzM0YEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=g344A5nhE7kAX-FPOWE&_nc_ht=video.cdninstagram.com&oh=f82e31a0653053396c7aa0aa0f7586ed&oe=60010FF1&_nc_rid=916b01ddc2","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/87590513_2997472996940096_35877396274776386_n.jpg?_nc_cat=101&ccb=2&_nc_sid=8ae9d6&_nc_ohc=SHQPG6dNSZ4AX9YoNOv&_nc_ht=scontent.cdninstagram.com&oh=525382530a3ed1781766b77d2601195e&oe=60007992","caption":"Nova pesma i spot za Zaokret.\\nLink ka YouTube-u u opisu profila! \\ud83c\\udfb8\\ud83e\\udd41\\ud83c\\udfa4\\ud83c\\udf99\\ud83c\\udf9b\\ud83c\\udfac","id":"17878164910528206","media_type":"VIDEO","timestamp":"2020-03-05T15:57:23+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B9W5gmrByi5\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/84358898_254795178879326_595378566034734848_n.jpg?_nc_cat=104&ccb=2&_nc_sid=8ae9d6&_nc_ohc=ph6AK2qqOGoAX8nFmc-&_nc_ht=scontent.cdninstagram.com&oh=9335c076d4f857eb1b807468facbb6c6&oe=6001887B","caption":"Dobar dan, na fotografiji je dosta stvari laz pa i ta da ja znam slepo kucanje. Laptop nije ni ukljucen, a papiri ispred su prazni i na njima nista ne pise. Nosim lazne naocare, jer za one prave nemam dioptriju.","id":"17843521886023309","media_type":"IMAGE","timestamp":"2020-03-03T18:16:11+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B9R_1f1BTMS\\/"},{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/86336601_182734916332063_2188311431905750257_n.mp4?_nc_cat=110&vs=18095433133186625_3050650613&_nc_vs=HBksFQAYJEdGbGtKUVVmcXNaSk1xWUFBUEVzcXpTbmNWNGVia1lMQUFBRhUAAsgBABUAGCRHTXVQSXdYYzdpMUxaMEFDQUhtcUZndHROcllHYmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaC5LnU6uykQBUCKAJDMywXQDE7peNT988YEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=-4RMoRjUkaMAX_sjk90&_nc_ht=video.cdninstagram.com&oh=38d8e29d35c5a61d520c1a8244f52241&oe=60019AB0&_nc_rid=138b03190e","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/84558489_137502521073073_7633758110815346322_n.jpg?_nc_cat=103&ccb=2&_nc_sid=8ae9d6&_nc_ohc=_dFn-WnP0fcAX-GCu06&_nc_ht=scontent.cdninstagram.com&oh=227f5971c3649b895c8116c7761fe45b&oe=6001E07B","caption":"I ne boj se buke, to \\u0161to svira to su ruke!","id":"18050034175219452","media_type":"VIDEO","timestamp":"2020-02-15T17:11:58+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B8mG8rZhWxr\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/83635920_162013075106656_957330709278224677_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8ae9d6&_nc_ohc=xFOwFl0M7EcAX-w84Ce&_nc_ht=scontent.cdninstagram.com&oh=eff4b174f56d83fafa7d61e9588d2677&oe=60020B63","caption":"Moj drug Stefan Nestorovic i moja malenkost na koktelu kod kraljice Elizabete Druge povodom nastavka serije \\"Ranjen i orao\\". Foto:\\n@irena.cuckovic","id":"18102427726111913","media_type":"IMAGE","timestamp":"2020-01-19T20:44:16+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B7g9zkvhiMv\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/81677632_1408582639303589_7188068003732093726_n.jpg?_nc_cat=106&ccb=2&_nc_sid=8ae9d6&_nc_ohc=rUqOMXd-hqEAX_kqiMC&_nc_oc=AQmiwoDz9vcNy_QZ95_pQ16czCZgJhtO6qkM_77K7hSaFIJ2HspmZS4qNSrRs0aq18E&_nc_ht=scontent.cdninstagram.com&oh=7d1ad07f1379a10e26a69f8adc1105d9&oe=600218CC","caption":"Dobro wc, mi smo neki tamo ljudi koji smo korektni.","id":"18088040566190747","media_type":"IMAGE","timestamp":"2019-12-31T23:41:11+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B6wW8sChHkD\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/74600026_462516004672182_253580847179183411_n.jpg?_nc_cat=104&ccb=2&_nc_sid=8ae9d6&_nc_ohc=6L1eL7IdDhQAX8zncXZ&_nc_ht=scontent.cdninstagram.com&oh=d47fdeb0268d6726260f7d458952f75d&oe=5FFF8B5F","caption":"#hauptbahnhof #wien","id":"18069458431172238","media_type":"IMAGE","timestamp":"2019-12-20T18:02:58+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B6Tbf_mBJO_\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/80495452_429956847912910_5712109932461432349_n.jpg?_nc_cat=102&ccb=2&_nc_sid=8ae9d6&_nc_ohc=3KYeJpDkPNkAX_9R_0J&_nc_ht=scontent.cdninstagram.com&oh=b6cfc0ef948eb2e018085d3168b6bce4&oe=5FFF5C61","caption":"#kunstmuseum #vienna","id":"18079737358153300","media_type":"IMAGE","timestamp":"2019-12-20T11:41:03+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B6SvywnFI9z\\/"},{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/79841230_440747306612002_5733904477455545666_n.mp4?_nc_cat=100&vs=18029254480243813_2677774276&_nc_vs=HBksFQAYJEdNNUh3Z1FpZGFWNjI1QUJBRUoxd2lLXzY1SlBia1lMQUFBRhUAAsgBABUAGCRHUFpteWdRbGhEdTlkM3dBQUltdjBYdWNtREpXYmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbKpKb52uCGQBUCKAJDMywXQEkmZmZmZmYYEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=43JgO4MT4tEAX-2YBif&_nc_ht=video.cdninstagram.com&oh=421a3cc2efc165d6d83830b2faeff450&oe=60028EDE&_nc_rid=3775e462b2","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/77222950_2288263281471790_3338351822484996729_n.jpg?_nc_cat=101&ccb=2&_nc_sid=8ae9d6&_nc_ohc=buP6R-RUgUMAX8MPwZK&_nc_ht=scontent.cdninstagram.com&oh=91058fc64f88b2cafc4a8e2607f84fc2&oe=5FFFE792","caption":"#margina","id":"18009583024267749","media_type":"VIDEO","timestamp":"2019-12-08T14:38:02+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B50KYXLFR90\\/"},{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/80288769_454141512149606_3851506151627781786_n.mp4?_nc_cat=103&vs=18118025884030523_748478274&_nc_vs=HBksFQAYJEdBRWN5UVJtYW9JUENwMEJBSnAyQVZKd1RITTFia1lMQUFBRhUAAsgBABUAGCRHR3FndWdSNmhTUjNUTW9DQUNTMllrYTJnMWM4YmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACb2kZbI8o%2BvQBUCKAJDMywXQEwd0vGp%2B%2BcYEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=FBdbaHdCmpIAX9aQQBX&_nc_ht=video.cdninstagram.com&oh=ad7a7dd98d864382bbcee8aa26468a99&oe=6000FF2A&_nc_rid=f27f3219a3","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/78985010_114567166465802_4151193946132190483_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8ae9d6&_nc_ohc=NNvx5Whqf6IAX8Fbi87&_nc_ht=scontent.cdninstagram.com&oh=7d8baf6cb942158ed964d883806bac47&oe=60018ABB","caption":"Ostarilo se.","id":"17842311988862591","media_type":"VIDEO","timestamp":"2019-12-06T14:50:22+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B5vCOMeF4Oo\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/71080258_201571864205271_8023172230388593717_n.jpg?_nc_cat=111&ccb=2&_nc_sid=8ae9d6&_nc_ohc=caQxlehO7qsAX_yMpKJ&_nc_ht=scontent.cdninstagram.com&oh=dd8d8e08325691bdc3b8f3dc4a0985c9&oe=5FFFD93D","id":"17894730187417960","media_type":"IMAGE","timestamp":"2019-11-20T15:19:29+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B5F48SpFJIy\\/"},{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/76758336_107959400510672_6358186604184537586_n.mp4?_nc_cat=106&vs=17843296561763134_3841773476&_nc_vs=HBksFQAYJEdFQTlrd1RRdExkQk1HSUFBUElKRVlZSDBUeFlia1lMQUFBRhUAAsgBABUAGCRHSHpCZkFROWtOYVRsQWNDQUF2VzNQaGd5UDVvYmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACb8q%2FrJxJiyPxUCKAJDMywXQETIcrAgxJwYEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=FVW2-Oub8v4AX9qQLWG&_nc_ht=video.cdninstagram.com&oh=3da4af18361f1b2ab07af202dc07ced9&oe=5FFF3255&_nc_rid=55133836aa","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/75266948_988636471491137_3168048331128365276_n.jpg?_nc_cat=109&ccb=2&_nc_sid=8ae9d6&_nc_ohc=nU7_jd-u4WAAX-Fk7la&_nc_ht=scontent.cdninstagram.com&oh=8e0bb2c7b1e69365e8a83fc3af35de51&oe=6000C0E8","caption":"Delic atmosfere sa finala Takt festivala i pesma Obojimo svet.","id":"18027579421234516","media_type":"VIDEO","timestamp":"2019-11-02T15:44:09+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B4XlJ0YlawI\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/70730795_3158273637548658_7306693191840330815_n.jpg?_nc_cat=100&ccb=2&_nc_sid=8ae9d6&_nc_ohc=51FYduLcIiUAX-D-cAb&_nc_ht=scontent.cdninstagram.com&oh=b62fc640af76e49a6fe5a5b15c531be5&oe=5FFF4E74","caption":"Tre\\u0107e mesto na @taktfestival -u i kao nagrada kahon. \\nNadam se da \\u0107e kom\\u0161ije imati razumevanja. :D\\n#soulpaddler #takt","id":"18082411297112647","media_type":"IMAGE","timestamp":"2019-09-23T10:29:52+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B2wBsXBCH_h\\/"}],"pagination":{"17841400863872670_users":"https:\\/\\/graph.instagram.com\\/v1.0\\/17841400863872670\\/media?access_token=IGQVJVOFF1a1dUX1ptaHJBR29FU1lxUzBEUzY1aHBuVXdka1gyVkpjSFhwOXVKczI4SDROSEJiY2VXZAVB5bURKaFJQQUJNWk44QlJsVWxSRXNoOVhjaHRlYnB0VUk0ZAnd0aEJ4Q1RB&fields=media_url%2Cthumbnail_url%2Ccaption%2Cid%2Cmedia_type%2Ctimestamp%2Cusername%2Ccomments_count%2Clike_count%2Cpermalink%2Cchildren%7Bmedia_url%2Cid%2Cmedia_type%2Ctimestamp%2Cpermalink%2Cthumbnail_url%7D&limit=20&after=QVFIUk9PbmhSVGd5QVU0ZAUI2YWZAFTDRnTndLTHlNWDA0Wm16dC04MUNVZAXpuS09uZAW43MUplVlhvMWRQVEdyMTFmajhVeEZAPejBTdDlqREtBY2o3VGVlbW9B"}}', 'no'),
(359, '!sbi_header_17841400863872670#20', '{"id":"17841400863872670","username":"markoronimo_saurus_rex","media_count":169}', 'no'),
(360, 'mc4wp_default_form_id', '99', 'yes'),
(364, '!sbi_17841400863872670#8', '{"data":[{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/120659664_3967979706552561_6962314046826748204_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8ae9d6&_nc_ohc=FwO6kwJ8BRwAX_9VdEM&_nc_ht=scontent.cdninstagram.com&oh=5c4f28026203f44e2777eafd2b7eecc3&oe=5FFFBD69","id":"17863639061112928","media_type":"IMAGE","timestamp":"2020-10-03T15:23:08+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CF4uJVFFe0h\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/118702042_325613865316542_1448604974269613806_n.jpg?_nc_cat=106&ccb=2&_nc_sid=8ae9d6&_nc_ohc=ZKQcBfrItlMAX8XkAP3&_nc_ht=scontent.cdninstagram.com&oh=c567bf4e31b4502d11623f042eba75be&oe=5FFFD04C","caption":"Kazu da mi je rodjaka, da ne kazem sestra.","id":"17852546786229813","media_type":"IMAGE","timestamp":"2020-09-05T16:30:02+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CEwvivZlAoE\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/118730025_113726286998775_8472605763671053621_n.jpg?_nc_cat=104&ccb=2&_nc_sid=8ae9d6&_nc_ohc=zdpVBaeoNhcAX8Nh-qt&_nc_ht=scontent.cdninstagram.com&oh=af3a71be45dba60cd83a3b297474c153&oe=60008CA0","caption":"Standardna subota i kafa sa prijateljima.","id":"17920695268447285","media_type":"IMAGE","timestamp":"2020-09-05T10:17:35+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CEwE62rF3tG\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/118397454_2374315432877901_5726139109898619726_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8ae9d6&_nc_ohc=aP9FNKskR5QAX_2oV23&_nc_ht=scontent.cdninstagram.com&oh=a336fad82dedaac77675a63b24d13c96&oe=5FFF80A4","id":"17865031268032142","media_type":"IMAGE","timestamp":"2020-08-29T17:05:18+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CEeyA8bBGnD\\/"},{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/105485069_268829197782627_422647905955110200_n.mp4?_nc_cat=105&vs=17866696234859986_2309162475&_nc_vs=HBksFQAYJEdBMlRTUVpqenRhc2YtUUFBRGhkaFBzSGpOMEZia1lMQUFBRhUAAsgBABUAGCRHRndnVWdZVWxrZjdtZkVBQUlyZGNIMU1vNjE1YmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaks%2FGDzOq8PxUCKAJDMywXQDm7peNT988YEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=E9i1V-5yHmYAX8ZOgXr&_nc_ht=video.cdninstagram.com&oh=266d4e7dc4f22f45889ca17d6218ba86&oe=600296B6&_nc_rid=eb28917738","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/105933941_271962830565135_7441823946842835578_n.jpg?_nc_cat=105&ccb=2&_nc_sid=8ae9d6&_nc_ohc=TwJeEwYQ4DkAX_WgsC2&_nc_ht=scontent.cdninstagram.com&oh=16a17c9afe8b98aa01ecabb50e33f9c9&oe=5FFF8542","caption":"Za\\u0161to Pet Tag?\\n\\nPet Tag je personalizovana kartica na kojoj se nalaze, kako podaci o Va\\u0161em ljubimcu, tako i Va\\u0161 kontakt telefon. \\nNa pole\\u0111ini kartice je li\\u010dni identifikacioni broj i QR kod. Uno\\u0161enjem ID broja na stranici izgubljeni-ljubimac ili skeniranjem QR koda, pronalaza\\u010d dobija sve potrebne informacije o vlasniku i mogu\\u0107nost da stupi u kontakt sa njim.\\n\\nUkoliko iz bilo kog razloga niste u stanju da dobijete vlasnika na broj telefona, jednostavnim klikom na dugme Obavesti vlasnika i ispunjavanjem kratke kontakt forme, vlasnik \\u0107e biti obave\\u0161ten putem email-a. \\n#pet__tag","id":"18122015518099105","media_type":"VIDEO","timestamp":"2020-06-26T09:08:08+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CB5IgQJFtua\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/79979280_194288815224487_3778230865777059452_n.jpg?_nc_cat=108&ccb=2&_nc_sid=8ae9d6&_nc_ohc=WwTzFvy34UcAX9e0htV&_nc_ht=scontent.cdninstagram.com&oh=4f56473a749a18e6f3c71cd11a5c3a11&oe=5FFF5A95","caption":"Od ideje do realizacije je pro\\u0161lo vi\\u0161e od tri meseca i @pet__tag  je konacno gotov. Poru\\u010dite jo\\u0161 danas personalizovani tag za va\\u0161eg ljubimca! \\npet-tag.rs\\n#ns #bg #ljubimac #pet #petlovers #pettag","id":"17880784726640412","media_type":"IMAGE","timestamp":"2020-06-19T16:22:24+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CBn4qq0FDbL\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/97205461_684939992263923_1603010574511373800_n.jpg?_nc_cat=107&ccb=2&_nc_sid=8ae9d6&_nc_ohc=i7whlvkQCd0AX8uSRBQ&_nc_oc=AQkQ4VrxzYIwF4ZybqnuhsWDflkMNUKyu-C5PXJuPkED-SIR97QzIo18spre_VUio-s&_nc_ht=scontent.cdninstagram.com&oh=8af878ea033cdb993c8b7dd849c86abf&oe=6002576F","id":"17844383480133413","media_type":"IMAGE","timestamp":"2020-05-10T11:42:10+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CAAYzHRFEWj\\/"},{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/92777260_148425016670839_3372315936919437030_n.jpg?_nc_cat=102&ccb=2&_nc_sid=8ae9d6&_nc_ohc=MSwEydngQm8AX8m5RIg&_nc_ht=scontent.cdninstagram.com&oh=17ed8d5abffdbf1a7c5594b8110e2e7c&oe=60010334","caption":"Uvek sam ovako sredjen, pogotovo kad sam ceo dan u stanu.","id":"18137924887035235","media_type":"IMAGE","timestamp":"2020-04-09T19:41:27+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B-xbAbql3Sb\\/"}],"pagination":{"17841400863872670_users":"https:\\/\\/graph.instagram.com\\/v1.0\\/17841400863872670\\/media?access_token=IGQVJVOFF1a1dUX1ptaHJBR29FU1lxUzBEUzY1aHBuVXdka1gyVkpjSFhwOXVKczI4SDROSEJiY2VXZAVB5bURKaFJQQUJNWk44QlJsVWxSRXNoOVhjaHRlYnB0VUk0ZAnd0aEJ4Q1RB&fields=media_url%2Cthumbnail_url%2Ccaption%2Cid%2Cmedia_type%2Ctimestamp%2Cusername%2Ccomments_count%2Clike_count%2Cpermalink%2Cchildren%7Bmedia_url%2Cid%2Cmedia_type%2Ctimestamp%2Cpermalink%2Cthumbnail_url%7D&limit=8&after=QVFIUkxoQU5jbFAyV1h0aWQ0SHFEVzh2Uktwd09COU9nZA0s3dlR2c2tkLUsxdlE2b0VGVWxZAN29lUkdIR0dsWXMta0VDWE9kTllQaTYxRG03QTdoUW41ZAENR"}}', 'no'),
(367, '!sbi_header_17841400863872670#8', '{"id":"17841400863872670","username":"markoronimo_saurus_rex","media_count":169}', 'no'),
(379, 'mc4wp_form_stylesheets', 'a:0:{}', 'yes'),
(382, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1608215649;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1607941119:1'),
(5, 2, '_edit_lock', '1607945574:1'),
(6, 1, '_edit_lock', '1607946732:1'),
(7, 2, '_wp_trash_meta_status', 'publish'),
(8, 2, '_wp_trash_meta_time', '1607945762'),
(9, 2, '_wp_desired_post_slug', 'sample-page'),
(10, 7, '_edit_lock', '1608215546:1'),
(11, 7, '_wp_page_template', ''),
(12, 9, '_edit_lock', '1607945654:1'),
(13, 10, '_edit_lock', '1607945665:1'),
(14, 10, '_wp_page_template', 'template-who_we_are.php'),
(15, 12, '_edit_lock', '1607946610:1'),
(16, 13, '_edit_lock', '1607946631:1'),
(17, 14, '_edit_lock', '1607946717:1'),
(18, 15, '_edit_lock', '1608191853:1'),
(19, 15, '_wp_page_template', 'template-styleguide.php'),
(20, 20, '_field_5', 'ovo je bre extra'),
(21, 20, '_form_id', '2'),
(22, 20, '_seq_num', '1'),
(23, 20, '_edit_lock', '1608103699:1'),
(24, 21, '_field_5', ''),
(25, 21, '_form_id', '2'),
(26, 21, '_seq_num', '2'),
(27, 21, '_wp_trash_meta_status', 'publish'),
(28, 21, '_wp_trash_meta_time', '1608104377'),
(29, 21, '_wp_desired_post_slug', '21'),
(30, 20, '_wp_trash_meta_status', 'publish'),
(31, 20, '_wp_trash_meta_time', '1608104377'),
(32, 20, '_wp_desired_post_slug', '20'),
(33, 22, '_menu_item_type', 'post_type'),
(34, 22, '_menu_item_menu_item_parent', '0'),
(35, 22, '_menu_item_object_id', '7'),
(36, 22, '_menu_item_object', 'page'),
(37, 22, '_menu_item_target', ''),
(38, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 22, '_menu_item_xfn', ''),
(40, 22, '_menu_item_url', ''),
(42, 23, '_menu_item_type', 'post_type'),
(43, 23, '_menu_item_menu_item_parent', '0'),
(44, 23, '_menu_item_object_id', '10'),
(45, 23, '_menu_item_object', 'page'),
(46, 23, '_menu_item_target', ''),
(47, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 23, '_menu_item_xfn', ''),
(49, 23, '_menu_item_url', ''),
(51, 24, '_menu_item_type', 'custom'),
(52, 24, '_menu_item_menu_item_parent', '0'),
(53, 24, '_menu_item_object_id', '24'),
(54, 24, '_menu_item_object', 'custom'),
(55, 24, '_menu_item_target', ''),
(56, 24, '_menu_item_classes', 'a:1:{i:0;s:9:"highlight";}'),
(57, 24, '_menu_item_xfn', ''),
(58, 24, '_menu_item_url', '#'),
(60, 35, '_wp_attached_file', '2020/12/logo-main.png'),
(61, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:657;s:6:"height";i:651;s:4:"file";s:21:"2020/12/logo-main.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:21:"logo-main-300x297.png";s:5:"width";i:300;s:6:"height";i:297;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"logo-main-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(62, 36, '_wp_attached_file', '2020/12/favocon.png'),
(63, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:19:"2020/12/favocon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(64, 25, '_edit_lock', '1608119844:1'),
(65, 25, '_edit_last', '1'),
(66, 38, '_menu_item_type', 'custom'),
(67, 38, '_menu_item_menu_item_parent', '0'),
(68, 38, '_menu_item_object_id', '38'),
(69, 38, '_menu_item_object', 'custom'),
(70, 38, '_menu_item_target', ''),
(71, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 38, '_menu_item_xfn', ''),
(73, 38, '_menu_item_url', 'https://facebook.com'),
(75, 39, '_menu_item_type', 'custom'),
(76, 39, '_menu_item_menu_item_parent', '0'),
(77, 39, '_menu_item_object_id', '39'),
(78, 39, '_menu_item_object', 'custom'),
(79, 39, '_menu_item_target', ''),
(80, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 39, '_menu_item_xfn', ''),
(82, 39, '_menu_item_url', 'https://instagram.com'),
(84, 40, '_menu_item_type', 'custom'),
(85, 40, '_menu_item_menu_item_parent', '0'),
(86, 40, '_menu_item_object_id', '40'),
(87, 40, '_menu_item_object', 'custom'),
(88, 40, '_menu_item_target', ''),
(89, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 40, '_menu_item_xfn', ''),
(91, 40, '_menu_item_url', 'https://twitter.com'),
(93, 41, '_edit_last', '1'),
(94, 41, '_edit_lock', '1608211210:1'),
(95, 7, '_edit_last', '1'),
(96, 51, '_edit_lock', '1608124326:1'),
(97, 51, '_wp_page_template', 'template-home.php'),
(98, 51, '_edit_last', '1'),
(99, 53, '_edit_last', '1'),
(100, 53, '_edit_lock', '1608191835:1'),
(101, 58, '_wp_attached_file', '2020/12/component-image-02.png'),
(102, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1531;s:6:"height";i:1819;s:4:"file";s:30:"2020/12/component-image-02.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:30:"component-image-02-253x300.png";s:5:"width";i:253;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:31:"component-image-02-862x1024.png";s:5:"width";i:862;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:30:"component-image-02-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:30:"component-image-02-768x912.png";s:5:"width";i:768;s:6:"height";i:912;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:32:"component-image-02-1293x1536.png";s:5:"width";i:1293;s:6:"height";i:1536;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(103, 1, '_wp_trash_meta_status', 'publish'),
(104, 1, '_wp_trash_meta_time', '1608134317'),
(105, 1, '_wp_desired_post_slug', 'hello-world'),
(106, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(107, 71, '_edit_lock', '1608134702:1'),
(110, 71, '_edit_last', '1'),
(113, 73, '_wp_attached_file', '2020/12/article-img1.jpeg'),
(114, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2320;s:6:"height";i:1305;s:4:"file";s:25:"2020/12/article-img1.jpeg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:25:"article-img1-300x169.jpeg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"article-img1-1024x576.jpeg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:25:"article-img1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"article-img1-768x432.jpeg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:26:"article-img1-1536x864.jpeg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:27:"article-img1-2048x1152.jpeg";s:5:"width";i:2048;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(115, 71, '_thumbnail_id', '73'),
(118, 74, '_edit_lock', '1608134592:1'),
(119, 75, '_edit_lock', '1608134659:1'),
(122, 75, '_thumbnail_id', '73'),
(123, 75, '_edit_last', '1'),
(126, 77, '_edit_lock', '1608135908:1'),
(129, 77, '_thumbnail_id', '73'),
(130, 77, '_edit_last', '1'),
(133, 79, '_edit_lock', '1608134775:1'),
(136, 79, '_thumbnail_id', '73'),
(137, 79, '_edit_last', '1'),
(138, 79, '_pingme', '1'),
(139, 79, '_encloseme', '1'),
(140, 81, '_edit_last', '1'),
(141, 81, '_edit_lock', '1608149102:1'),
(142, 100, '_edit_last', '1'),
(143, 100, '_edit_lock', '1608196015:1'),
(144, 105, '_edit_last', '1'),
(145, 105, '_edit_lock', '1608210476:1'),
(146, 119, '_edit_last', '1'),
(147, 119, '_edit_lock', '1608210885:1'),
(148, 99, '_mc4wp_settings', 'a:9:{s:15:"required_fields";s:5:"EMAIL";s:12:"double_optin";s:1:"1";s:15:"update_existing";s:1:"0";s:17:"replace_interests";s:1:"1";s:15:"subscriber_tags";s:0:"";s:18:"hide_after_success";s:1:"0";s:8:"redirect";s:0:"";s:3:"css";s:1:"0";s:5:"lists";a:1:{i:0;s:10:"e11c4999c4";}}'),
(149, 99, 'text_subscribed', 'Thank you, your sign-up request was successful! Please check your email inbox to confirm.'),
(150, 99, 'text_invalid_email', 'Please provide a valid email address.'),
(151, 99, 'text_required_field_missing', 'Please fill in the required fields.'),
(152, 99, 'text_already_subscribed', 'Given email address is already subscribed, thank you!'),
(153, 99, 'text_error', 'Oops. Something went wrong. Please try again later.'),
(154, 99, 'text_unsubscribed', 'You were successfully unsubscribed.'),
(155, 99, 'text_not_subscribed', 'Given email address is not subscribed.'),
(156, 99, 'text_no_lists_selected', 'Please select at least one list.'),
(157, 99, 'text_updated', 'Thank you, your records have been updated!') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-12-14 09:27:10', '2020-12-14 09:27:10', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2020-12-16 15:58:37', '2020-12-16 15:58:37', '', 0, 'http://localhost/money-mouth-wp/?p=1', 0, 'post', '', 1),
(2, 1, '2020-12-14 09:27:10', '2020-12-14 09:27:10', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/money-mouth-wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-12-14 11:36:02', '2020-12-14 11:36:02', '', 0, 'http://localhost/money-mouth-wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-12-14 09:27:10', '2020-12-14 09:27:10', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/money-mouth-wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-12-14 09:27:10', '2020-12-14 09:27:10', '', 0, 'http://localhost/money-mouth-wp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-12-14 09:32:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-14 09:32:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/money-mouth-wp/?p=4', 0, 'post', '', 0),
(5, 1, '2020-12-14 10:21:00', '2020-12-14 10:21:00', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:14:"acf/demo-block";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Demo block', 'demo-block', 'publish', 'closed', 'closed', '', 'group_5fd73c82792d3', '', '', '2020-12-14 10:21:00', '2020-12-14 10:21:00', '', 0, 'http://localhost/money-mouth-wp/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2020-12-14 11:36:02', '2020-12-14 11:36:02', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/money-mouth-wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-14 11:36:02', '2020-12-14 11:36:02', '', 2, 'http://localhost/money-mouth-wp/2020/12/14/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-12-14 11:36:11', '2020-12-14 11:36:11', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "[mc4wp_form id=\\"99\\"]",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/feedback-form-block {\n    "id": "block_5fdb58f8570dd",\n    "name": "acf\\/feedback-form-block",\n    "data": {\n        "heading_text": "<h2><span class=\\"mm-color--light-black\\">Let Us Know What <\\/span>You Think!<\\/h2>\\r\\n<h4>Leave us feedback below<\\/h4>",\n        "_heading_text": "field_5fdb58ccafa7b",\n        "shortcode": "[ninja_form id=2]",\n        "_shortcode": "field_5fdb58d9afa7c"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-12-17 13:18:46', '2020-12-17 13:18:46', '', 0, 'http://localhost/money-mouth-wp/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-12-14 11:36:11', '2020-12-14 11:36:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-14 11:36:11', '2020-12-14 11:36:11', '', 7, 'http://localhost/money-mouth-wp/2020/12/14/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-12-14 11:36:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-14 11:36:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/money-mouth-wp/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-12-14 11:36:48', '2020-12-14 11:36:48', '', 'Who we are', '', 'publish', 'closed', 'closed', '', 'who-we-are', '', '', '2020-12-14 11:36:48', '2020-12-14 11:36:48', '', 0, 'http://localhost/money-mouth-wp/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-12-14 11:36:48', '2020-12-14 11:36:48', '', 'Who we are', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-12-14 11:36:48', '2020-12-14 11:36:48', '', 10, 'http://localhost/money-mouth-wp/2020/12/14/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-12-14 11:51:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-14 11:51:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/money-mouth-wp/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-12-14 11:52:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-14 11:52:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/money-mouth-wp/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-12-14 11:53:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-14 11:53:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/money-mouth-wp/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-12-14 11:54:51', '2020-12-14 11:54:51', '', 'Style guide', '', 'publish', 'closed', 'closed', '', 'style-guide', '', '', '2020-12-14 11:54:51', '2020-12-14 11:54:51', '', 0, 'http://localhost/money-mouth-wp/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-12-14 11:54:51', '2020-12-14 11:54:51', '', 'Style guide', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-12-14 11:54:51', '2020-12-14 11:54:51', '', 15, 'http://localhost/money-mouth-wp/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-12-14 13:21:01', '2020-12-14 13:21:01', '<!-- wp:heading {"level":1} -->\n<h1>naslov <span class="has-inline-color has-vivid-green-cyan-color">i neki span</span></h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>marko babovic</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-14 13:21:01', '2020-12-14 13:21:01', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-12-16 07:01:45', '2020-12-16 07:01:45', '{"id":"19","field_id":2,"fields":{"1":{"id":"1","type":"textarea","label":"","description":"","size":"medium","placeholder":"Enter your comment","limit_count":"1","limit_mode":"characters","default_value":"","css":""}},"settings":{"form_title":"Feedback","form_desc":"","form_class":"","submit_text":"Comment","submit_text_processing":"Sending...","submit_class":"","antispam":"1","notification_enable":"1","notifications":{"1":{"email":"{admin_email}","subject":"New Feedback Entry","sender_name":"Money Month","sender_address":"{admin_email}","replyto":"","message":"{all_fields}"}},"confirmations":{"1":{"type":"message","message":"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>","message_scroll":"1","page":"7","redirect":""}}},"meta":{"template":"blank"}}', 'Feedback', '', 'publish', 'closed', 'closed', '', 'feedback', '', '', '2020-12-16 07:03:24', '2020-12-16 07:03:24', '', 0, 'http://localhost/money-mouth-wp/?post_type=wpforms&#038;p=19', 0, 'wpforms', '', 0),
(20, 1, '2020-12-16 07:30:20', '2020-12-16 07:30:20', '', '', '', 'trash', 'closed', 'closed', '', '20__trashed', '', '', '2020-12-16 07:39:37', '2020-12-16 07:39:37', '', 0, 'http://localhost/money-mouth-wp/nf_sub/20/', 0, 'nf_sub', '', 0),
(21, 1, '2020-12-16 07:34:01', '2020-12-16 07:34:01', '', '', '', 'trash', 'closed', 'closed', '', '21__trashed', '', '', '2020-12-16 07:39:37', '2020-12-16 07:39:37', '', 0, 'http://localhost/money-mouth-wp/nf_sub/21/', 0, 'nf_sub', '', 0),
(22, 1, '2020-12-16 07:56:03', '2020-12-16 07:56:03', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-12-16 08:45:14', '2020-12-16 08:45:14', '', 0, 'http://localhost/money-mouth-wp/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2020-12-16 07:56:03', '2020-12-16 07:56:03', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2020-12-16 08:45:14', '2020-12-16 08:45:14', '', 0, 'http://localhost/money-mouth-wp/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2020-12-16 07:56:03', '2020-12-16 07:56:03', '', 'Sign in', '', 'publish', 'closed', 'closed', '', 'sign-in', '', '', '2020-12-16 08:45:14', '2020-12-16 08:45:14', '', 0, 'http://localhost/money-mouth-wp/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2020-12-16 08:57:30', '2020-12-16 08:57:30', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:27:"acf-options-website-options";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Website options', 'website-options', 'publish', 'closed', 'closed', '', 'group_5a41145b85cc8', '', '', '2020-12-16 09:56:31', '2020-12-16 09:56:31', '', 0, 'http://localhost/money-mouth-wp/?p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2020-12-16 08:57:30', '2020-12-16 08:57:30', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Header', '', 'publish', 'closed', 'closed', '', 'field_5a411467494fe', '', '', '2020-12-16 08:57:30', '2020-12-16 08:57:30', '', 25, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2020-12-16 08:57:30', '2020-12-16 08:57:30', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Phone', 'phone_header', 'publish', 'closed', 'closed', '', 'field_5a41150aaffbf', '', '', '2020-12-16 08:57:30', '2020-12-16 08:57:30', '', 25, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2020-12-16 08:57:30', '2020-12-16 08:57:30', 'a:9:{s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'E-mail', 'email_header', 'publish', 'closed', 'closed', '', 'field_5a411530affc0', '', '', '2020-12-16 08:57:30', '2020-12-16 08:57:30', '', 25, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=28', 2, 'acf-field', '', 0),
(29, 1, '2020-12-16 08:57:30', '2020-12-16 08:57:30', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Address', 'address_header', 'publish', 'closed', 'closed', '', 'field_5a4213735166d', '', '', '2020-12-16 08:57:30', '2020-12-16 08:57:30', '', 25, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=29', 3, 'acf-field', '', 0),
(30, 1, '2020-12-16 08:57:30', '2020-12-16 08:57:30', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'logo_header', 'publish', 'closed', 'closed', '', 'field_5a411afbd5d40', '', '', '2020-12-16 08:57:30', '2020-12-16 08:57:30', '', 25, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=30', 4, 'acf-field', '', 0),
(31, 1, '2020-12-16 08:57:30', '2020-12-16 08:57:30', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";i:64;s:10:"max_height";i:64;s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Favicon', 'favicon_header', 'publish', 'closed', 'closed', '', 'field_5a411b13d5d41', '', '', '2020-12-16 08:57:30', '2020-12-16 08:57:30', '', 25, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=31', 5, 'acf-field', '', 0),
(32, 1, '2020-12-16 08:57:30', '2020-12-16 08:57:30', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Social icons', '', 'publish', 'closed', 'closed', '', 'field_5a4115b17e612', '', '', '2020-12-16 08:57:30', '2020-12-16 08:57:30', '', 25, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=32', 6, 'acf-field', '', 0),
(33, 1, '2020-12-16 08:57:30', '2020-12-16 08:57:30', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Facebook', 'facebook_url', 'publish', 'closed', 'closed', '', 'field_5a4115d07e613', '', '', '2020-12-16 08:57:30', '2020-12-16 08:57:30', '', 25, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=33', 7, 'acf-field', '', 0),
(34, 1, '2020-12-16 08:57:30', '2020-12-16 08:57:30', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Instagram', 'instagram_url', 'publish', 'closed', 'closed', '', 'field_5a41161c7e615', '', '', '2020-12-16 08:57:30', '2020-12-16 08:57:30', '', 25, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=34', 8, 'acf-field', '', 0),
(35, 1, '2020-12-16 08:58:17', '2020-12-16 08:58:17', '', 'logo-main', '', 'inherit', 'open', 'closed', '', 'logo-main', '', '', '2020-12-16 08:58:17', '2020-12-16 08:58:17', '', 0, 'http://localhost/money-mouth-wp/wp-content/uploads/2020/12/logo-main.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2020-12-16 08:59:53', '2020-12-16 08:59:53', '', 'favocon', '', 'inherit', 'open', 'closed', '', 'favocon', '', '', '2020-12-16 08:59:53', '2020-12-16 08:59:53', '', 0, 'http://localhost/money-mouth-wp/wp-content/uploads/2020/12/favocon.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2020-12-16 09:56:31', '2020-12-16 09:56:31', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Twitter', 'twitter_url', 'publish', 'closed', 'closed', '', 'field_5fd9d9c0d9ddb', '', '', '2020-12-16 09:56:31', '2020-12-16 09:56:31', '', 25, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=37', 9, 'acf-field', '', 0),
(38, 1, '2020-12-16 12:00:51', '2020-12-16 12:00:51', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-12-16 12:00:51', '2020-12-16 12:00:51', '', 0, 'http://localhost/money-mouth-wp/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2020-12-16 12:00:51', '2020-12-16 12:00:51', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-12-16 12:00:51', '2020-12-16 12:00:51', '', 0, 'http://localhost/money-mouth-wp/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2020-12-16 12:00:51', '2020-12-16 12:00:51', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-12-16 12:00:51', '2020-12-16 12:00:51', '', 0, 'http://localhost/money-mouth-wp/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2020-12-16 12:10:55', '2020-12-16 12:10:55', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:21:"acf/page-banner-block";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Page Banner Block', 'page-banner-block', 'publish', 'closed', 'closed', '', 'group_5fd9f9405e9cb', '', '', '2020-12-16 12:32:52', '2020-12-16 12:32:52', '', 0, 'http://localhost/money-mouth-wp/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2020-12-16 12:11:50', '2020-12-16 12:11:50', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Banner text', 'banner_text', 'publish', 'closed', 'closed', '', 'field_5fd9f952273eb', '', '', '2020-12-16 12:32:52', '2020-12-16 12:32:52', '', 41, 'http://localhost/money-mouth-wp/?post_type=acf-field&#038;p=42', 0, 'acf-field', '', 0),
(43, 1, '2020-12-16 12:11:50', '2020-12-16 12:11:50', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Form shortcode', 'form_shortcode', 'publish', 'closed', 'closed', '', 'field_5fd9f976273ec', '', '', '2020-12-16 12:11:50', '2020-12-16 12:11:50', '', 41, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=43', 1, 'acf-field', '', 0),
(44, 1, '2020-12-16 12:12:28', '2020-12-16 12:12:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 12:12:28', '2020-12-16 12:12:28', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-12-16 12:30:23', '2020-12-16 12:30:23', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "block_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_block_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 12:30:23', '2020-12-16 12:30:23', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-12-16 12:30:23', '2020-12-16 12:30:23', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "block_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_block_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 12:30:23', '2020-12-16 12:30:23', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-12-16 12:33:19', '2020-12-16 12:33:19', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 12:33:19', '2020-12-16 12:33:19', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-12-16 12:33:19', '2020-12-16 12:33:19', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 12:33:19', '2020-12-16 12:33:19', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-12-16 12:40:24', '2020-12-16 12:40:24', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 12:40:24', '2020-12-16 12:40:24', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-12-16 13:12:05', '2020-12-16 13:12:05', '', 'home 2', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2020-12-16 13:12:06', '2020-12-16 13:12:06', '', 0, 'http://localhost/money-mouth-wp/?page_id=51', 0, 'page', '', 0),
(52, 1, '2020-12-16 13:12:05', '2020-12-16 13:12:05', '', 'home 2', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-12-16 13:12:05', '2020-12-16 13:12:05', '', 51, 'http://localhost/money-mouth-wp/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-12-16 13:22:32', '2020-12-16 13:22:32', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:20:"acf/image-text-block";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Image with text block', 'image-with-text-block', 'publish', 'closed', 'closed', '', 'group_5fda09bf00c80', '', '', '2020-12-16 13:36:10', '2020-12-16 13:36:10', '', 0, 'http://localhost/money-mouth-wp/?post_type=acf-field-group&#038;p=53', 0, 'acf-field-group', '', 0),
(54, 1, '2020-12-16 13:22:32', '2020-12-16 13:22:32', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Heading text', 'heading_text', 'publish', 'closed', 'closed', '', 'field_5fda09c8c9ac2', '', '', '2020-12-16 13:22:32', '2020-12-16 13:22:32', '', 53, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2020-12-16 13:22:32', '2020-12-16 13:22:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5fda09f4c9ac4', '', '', '2020-12-16 13:22:32', '2020-12-16 13:22:32', '', 53, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2020-12-16 13:22:32', '2020-12-16 13:22:32', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Text content', 'text_content', 'publish', 'closed', 'closed', '', 'field_5fda09e2c9ac3', '', '', '2020-12-16 13:22:32', '2020-12-16 13:22:32', '', 53, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(58, 1, '2020-12-16 13:24:23', '2020-12-16 13:24:23', '', 'component-image-02', '', 'inherit', 'open', 'closed', '', 'component-image-02', '', '', '2020-12-16 13:24:23', '2020-12-16 13:24:23', '', 7, 'http://localhost/money-mouth-wp/wp-content/uploads/2020/12/component-image-02.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2020-12-16 13:25:35', '2020-12-16 13:25:35', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 13:25:35', '2020-12-16 13:25:35', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-12-16 13:25:35', '2020-12-16 13:25:35', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 13:25:35', '2020-12-16 13:25:35', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-12-16 13:26:41', '2020-12-16 13:26:41', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 13:26:41', '2020-12-16 13:26:41', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-12-16 13:36:10', '2020-12-16 13:36:10', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'Button 1', 'button_1', 'publish', 'closed', 'closed', '', 'field_5fda0ce458f44', '', '', '2020-12-16 13:36:10', '2020-12-16 13:36:10', '', 53, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=62', 3, 'acf-field', '', 0),
(63, 1, '2020-12-16 13:36:10', '2020-12-16 13:36:10', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Button Label', 'button_label', 'publish', 'closed', 'closed', '', 'field_5fda0d1558f45', '', '', '2020-12-16 13:36:10', '2020-12-16 13:36:10', '', 62, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 1, '2020-12-16 13:36:10', '2020-12-16 13:36:10', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Button URL', 'button_url', 'publish', 'closed', 'closed', '', 'field_5fda0d2658f46', '', '', '2020-12-16 13:36:10', '2020-12-16 13:36:10', '', 62, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=64', 1, 'acf-field', '', 0),
(65, 1, '2020-12-16 13:36:10', '2020-12-16 13:36:10', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'Button 2', 'button_2', 'publish', 'closed', 'closed', '', 'field_5fda0d3d58f47', '', '', '2020-12-16 13:36:10', '2020-12-16 13:36:10', '', 53, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=65', 4, 'acf-field', '', 0),
(66, 1, '2020-12-16 13:36:10', '2020-12-16 13:36:10', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Button Label', 'button_label', 'publish', 'closed', 'closed', '', 'field_5fda0d3d58f48', '', '', '2020-12-16 13:36:10', '2020-12-16 13:36:10', '', 65, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 1, '2020-12-16 13:36:10', '2020-12-16 13:36:10', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Button URL', 'button_url', 'publish', 'closed', 'closed', '', 'field_5fda0d3d58f49', '', '', '2020-12-16 13:36:10', '2020-12-16 13:36:10', '', 65, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=67', 1, 'acf-field', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(68, 1, '2020-12-16 13:36:50', '2020-12-16 13:36:50', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 13:36:50', '2020-12-16 13:36:50', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-12-16 13:36:50', '2020-12-16 13:36:50', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 13:36:50', '2020-12-16 13:36:50', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-12-16 15:58:37', '2020-12-16 15:58:37', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-16 15:58:37', '2020-12-16 15:58:37', '', 1, 'http://localhost/money-mouth-wp/1-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-12-16 15:59:43', '2020-12-16 15:59:43', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisiLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->', 'How to cowork in the best way in the Super offices', '', 'publish', 'open', 'open', '', 'how-to-cowork-in-the-best-way-in-the-super-offices', '', '', '2020-12-16 16:05:08', '2020-12-16 16:05:08', '', 0, 'http://localhost/money-mouth-wp/?p=71', 0, 'post', '', 0),
(72, 1, '2020-12-16 15:59:43', '2020-12-16 15:59:43', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisiLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->', 'How to cowork in the best way in the Super offices', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-12-16 15:59:43', '2020-12-16 15:59:43', '', 71, 'http://localhost/money-mouth-wp/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-12-16 16:04:57', '2020-12-16 16:04:57', '', 'article-img1', '', 'inherit', 'open', 'closed', '', 'article-img1', '', '', '2020-12-16 16:04:57', '2020-12-16 16:04:57', '', 71, 'http://localhost/money-mouth-wp/wp-content/uploads/2020/12/article-img1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-12-16 16:05:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-16 16:05:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/money-mouth-wp/?p=74', 0, 'post', '', 0),
(75, 1, '2020-12-16 16:06:39', '2020-12-16 16:06:39', '<!-- wp:paragraph -->\n<p id="block-c7d6966b-1afe-437b-85b0-9b426cd10564">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id="block-c2f7cdaa-325d-4916-abe3-74dd18ea1acd">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id="block-3648bb16-5428-46ba-adb5-7ce05e986e4c">Lorem ipsum dolor sit amet, consectetur adipiscing</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id="block-5086abb8-e5fa-4555-96fa-62a7765f95bf">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id="block-358f5ad5-2dd2-4b24-aa35-c736813434ce">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisiLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->', 'How to cowork in the best way in the Super offices', '', 'publish', 'open', 'open', '', 'how-to-cowork-in-the-best-way-in-the-super-offices-2', '', '', '2020-12-16 16:06:40', '2020-12-16 16:06:40', '', 0, 'http://localhost/money-mouth-wp/?p=75', 0, 'post', '', 0),
(76, 1, '2020-12-16 16:06:39', '2020-12-16 16:06:39', '<!-- wp:paragraph -->\n<p id="block-c7d6966b-1afe-437b-85b0-9b426cd10564">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id="block-c2f7cdaa-325d-4916-abe3-74dd18ea1acd">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id="block-3648bb16-5428-46ba-adb5-7ce05e986e4c">Lorem ipsum dolor sit amet, consectetur adipiscing</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id="block-5086abb8-e5fa-4555-96fa-62a7765f95bf">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id="block-358f5ad5-2dd2-4b24-aa35-c736813434ce">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisiLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->', 'How to cowork in the best way in the Super offices', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-12-16 16:06:39', '2020-12-16 16:06:39', '', 75, 'http://localhost/money-mouth-wp/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-12-16 16:07:15', '2020-12-16 16:07:15', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisiLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->', 'Some random title', '', 'publish', 'open', 'open', '', 'some-random-title', '', '', '2020-12-16 16:07:16', '2020-12-16 16:07:16', '', 0, 'http://localhost/money-mouth-wp/?p=77', 0, 'post', '', 0),
(78, 1, '2020-12-16 16:07:15', '2020-12-16 16:07:15', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisiLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->', 'Some random title', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2020-12-16 16:07:15', '2020-12-16 16:07:15', '', 77, 'http://localhost/money-mouth-wp/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-12-16 16:07:50', '2020-12-16 16:07:50', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisiLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->', 'Title 2 random', '', 'publish', 'open', 'open', '', 'title-2-random', '', '', '2020-12-16 16:07:51', '2020-12-16 16:07:51', '', 0, 'http://localhost/money-mouth-wp/?p=79', 0, 'post', '', 0),
(80, 1, '2020-12-16 16:07:50', '2020-12-16 16:07:50', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisiLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim<br>veniam, quis nostrud exercitation ullamco laboris nisi</p>\n<!-- /wp:paragraph -->', 'Title 2 random', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2020-12-16 16:07:50', '2020-12-16 16:07:50', '', 79, 'http://localhost/money-mouth-wp/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-12-16 16:33:49', '2020-12-16 16:33:49', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:20:"acf/posts-list-block";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Posts list block', 'posts-list-block', 'publish', 'closed', 'closed', '', 'group_5fda36e1a2cdc', '', '', '2020-12-16 16:41:28', '2020-12-16 16:41:28', '', 0, 'http://localhost/money-mouth-wp/?post_type=acf-field-group&#038;p=81', 0, 'acf-field-group', '', 0),
(82, 1, '2020-12-16 16:36:57', '2020-12-16 16:36:57', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Heading text', 'heading_text', 'publish', 'closed', 'closed', '', 'field_5fda379f7ab0f', '', '', '2020-12-16 16:36:57', '2020-12-16 16:36:57', '', 81, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=82', 0, 'acf-field', '', 0),
(83, 1, '2020-12-16 16:37:54', '2020-12-16 16:37:54', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 16:37:54', '2020-12-16 16:37:54', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-12-16 16:37:55', '2020-12-16 16:37:55', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 16:37:55', '2020-12-16 16:37:55', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-12-16 16:41:28', '2020-12-16 16:41:28', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";}', 'Number of posts to show', 'number_of_posts_to_show', 'publish', 'closed', 'closed', '', 'field_5fda3894c90fb', '', '', '2020-12-16 16:41:28', '2020-12-16 16:41:28', '', 81, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=86', 1, 'acf-field', '', 0),
(87, 1, '2020-12-16 16:41:41', '2020-12-16 16:41:41', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 16:41:41', '2020-12-16 16:41:41', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-12-16 16:41:42', '2020-12-16 16:41:42', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-16 16:41:42', '2020-12-16 16:41:42', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-12-17 08:03:18', '2020-12-17 08:03:18', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who <span class=\\"mm-color--light-black\\">we are<\\/span><\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 08:03:18', '2020-12-17 08:03:18', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-12-17 08:03:19', '2020-12-17 08:03:19', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who <span class=\\"mm-color--light-black\\">we are<\\/span><\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet mouth is<\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 08:03:19', '2020-12-17 08:03:19', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-12-17 08:04:11', '2020-12-17 08:04:11', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 08:04:11', '2020-12-17 08:04:11', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-12-17 08:04:12', '2020-12-17 08:04:12', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 08:04:12', '2020-12-17 08:04:12', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-12-17 08:13:26', '2020-12-17 08:13:26', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:shortcode -->\n[instagram-feed user="smashballoon"]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 08:13:26', '2020-12-17 08:13:26', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(96, 1, '2020-12-17 08:13:26', '2020-12-17 08:13:26', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:shortcode -->\n[instagram-feed user="smashballoon"]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 08:13:26', '2020-12-17 08:13:26', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2020-12-17 08:13:57', '2020-12-17 08:13:57', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:shortcode -->\n[instagram-feed]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 08:13:57', '2020-12-17 08:13:57', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-12-17 08:13:58', '2020-12-17 08:13:58', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:shortcode -->\n[instagram-feed]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 08:13:58', '2020-12-17 08:13:58', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2020-12-17 14:31:41', '2020-12-17 14:31:41', '<div class="sing-up-form">\r\n  <div class="input-field email">\r\n	<input type="email" name="EMAIL" placeholder="Enter your email" required />\r\n  </div>\r\n  <div class="input-field">\r\n	<input type="submit" value="Sign up" class="mm-button primary" />\r\n  </div>\r\n</div>', 'Subscribe', '', 'publish', 'closed', 'closed', '', 'subscribe', '', '', '2020-12-17 14:31:41', '2020-12-17 14:31:41', '', 0, 'http://localhost/money-mouth-wp/mc4wp-form/subscribe/', 0, 'mc4wp-form', '', 0),
(100, 1, '2020-12-17 08:53:01', '2020-12-17 08:53:01', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:27:"acf/social-share-wall-block";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Social share wall block', 'social-share-wall-block', 'publish', 'closed', 'closed', '', 'group_5fdb1c4f27b74', '', '', '2020-12-17 08:53:01', '2020-12-17 08:53:01', '', 0, 'http://localhost/money-mouth-wp/?post_type=acf-field-group&#038;p=100', 0, 'acf-field-group', '', 0),
(101, 1, '2020-12-17 08:53:01', '2020-12-17 08:53:01', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Heading text', 'heading_text', 'publish', 'closed', 'closed', '', 'field_5fdb1c5ad34cc', '', '', '2020-12-17 08:53:01', '2020-12-17 08:53:01', '', 100, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=101', 0, 'acf-field', '', 0),
(102, 1, '2020-12-17 08:53:01', '2020-12-17 08:53:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Shortcode', 'shortcode', 'publish', 'closed', 'closed', '', 'field_5fdb1c65d34cd', '', '', '2020-12-17 08:53:01', '2020-12-17 08:53:01', '', 100, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=102', 1, 'acf-field', '', 0),
(103, 1, '2020-12-17 08:53:53', '2020-12-17 08:53:53', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 08:53:53', '2020-12-17 08:53:53', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2020-12-17 08:53:54', '2020-12-17 08:53:54', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 08:53:54', '2020-12-17 08:53:54', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2020-12-17 09:10:49', '2020-12-17 09:10:49', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:24:"acf/accordion-tabs-block";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Accordian tabs block', 'accordian-tabs-block', 'publish', 'closed', 'closed', '', 'group_5fdb2041ba4ea', '', '', '2020-12-17 09:11:44', '2020-12-17 09:11:44', '', 0, 'http://localhost/money-mouth-wp/?post_type=acf-field-group&#038;p=105', 0, 'acf-field-group', '', 0),
(106, 1, '2020-12-17 09:10:49', '2020-12-17 09:10:49', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Heading text', 'heading_text', 'publish', 'closed', 'closed', '', 'field_5fdb204b707f7', '', '', '2020-12-17 09:10:49', '2020-12-17 09:10:49', '', 105, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=106', 0, 'acf-field', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(107, 1, '2020-12-17 09:10:49', '2020-12-17 09:10:49', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"block";s:12:"button_label";s:0:"";}', 'Accordian item', 'accordian_item', 'publish', 'closed', 'closed', '', 'field_5fdb205f707f8', '', '', '2020-12-17 09:11:44', '2020-12-17 09:11:44', '', 105, 'http://localhost/money-mouth-wp/?post_type=acf-field&#038;p=107', 1, 'acf-field', '', 0),
(108, 1, '2020-12-17 09:10:49', '2020-12-17 09:10:49', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Head text', 'head_text', 'publish', 'closed', 'closed', '', 'field_5fdb2074707f9', '', '', '2020-12-17 09:10:49', '2020-12-17 09:10:49', '', 107, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=108', 0, 'acf-field', '', 0),
(109, 1, '2020-12-17 09:10:49', '2020-12-17 09:10:49', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Body text', 'body_text', 'publish', 'closed', 'closed', '', 'field_5fdb207e707fa', '', '', '2020-12-17 09:10:49', '2020-12-17 09:10:49', '', 107, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=109', 1, 'acf-field', '', 0),
(110, 1, '2020-12-17 09:11:38', '2020-12-17 09:11:38', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item": 1,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 09:11:38', '2020-12-17 09:11:38', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-12-17 09:11:39', '2020-12-17 09:11:39', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item": 1,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 09:11:39', '2020-12-17 09:11:39', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2020-12-17 09:12:43', '2020-12-17 09:12:43', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "<div class=\\"tab active\\">\\r\\n<div class=\\"tab-text\\">\\r\\n\\r\\nPoints are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"tab\\">\\r\\n<div class=\\"tab-heading\\">\\r\\n<div class=\\"tab-heading-icon\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "<div class=\\"tab active\\">\\r\\n<div class=\\"tab-text\\">\\r\\n\\r\\nPoints are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"tab\\">\\r\\n<div class=\\"tab-heading\\">\\r\\n<div class=\\"tab-heading-icon\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 09:12:43', '2020-12-17 09:12:43', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-12-17 09:12:43', '2020-12-17 09:12:43', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "<div class=\\"tab active\\">\\r\\n<div class=\\"tab-text\\">\\r\\n\\r\\nPoints are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"tab\\">\\r\\n<div class=\\"tab-heading\\">\\r\\n<div class=\\"tab-heading-icon\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "<div class=\\"tab active\\">\\r\\n<div class=\\"tab-text\\">\\r\\n\\r\\nPoints are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"tab\\">\\r\\n<div class=\\"tab-heading\\">\\r\\n<div class=\\"tab-heading-icon\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 09:12:43', '2020-12-17 09:12:43', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-12-17 09:14:37', '2020-12-17 09:14:37', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "<div class=\\"tab active\\">\\r\\n<div class=\\"tab-text\\">\\r\\n\\r\\nPoints are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"tab\\">\\r\\n<div class=\\"tab-heading\\">\\r\\n<div class=\\"tab-heading-icon\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "<div class=\\"tab active\\">\\r\\n<div class=\\"tab-text\\">\\r\\n\\r\\nPoints are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"tab\\">\\r\\n<div class=\\"tab-heading\\">\\r\\n<div class=\\"tab-heading-icon\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 09:14:37', '2020-12-17 09:14:37', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2020-12-17 09:14:37', '2020-12-17 09:14:37', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "<div class=\\"tab active\\">\\r\\n<div class=\\"tab-text\\">\\r\\n\\r\\nPoints are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"tab\\">\\r\\n<div class=\\"tab-heading\\">\\r\\n<div class=\\"tab-heading-icon\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "<div class=\\"tab active\\">\\r\\n<div class=\\"tab-text\\">\\r\\n\\r\\nPoints are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"tab\\">\\r\\n<div class=\\"tab-heading\\">\\r\\n<div class=\\"tab-heading-icon\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 09:14:37', '2020-12-17 09:14:37', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-12-17 09:20:56', '2020-12-17 09:20:56', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 09:20:56', '2020-12-17 09:20:56', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(117, 1, '2020-12-17 09:20:57', '2020-12-17 09:20:57', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 09:20:57', '2020-12-17 09:20:57', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2020-12-17 13:11:06', '2020-12-17 13:11:06', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:23:"acf/feedback-form-block";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Feedback form block', 'feedback-form-block', 'publish', 'closed', 'closed', '', 'group_5fdb58be04d3a', '', '', '2020-12-17 13:11:06', '2020-12-17 13:11:06', '', 0, 'http://localhost/money-mouth-wp/?post_type=acf-field-group&#038;p=119', 0, 'acf-field-group', '', 0),
(120, 1, '2020-12-17 13:11:06', '2020-12-17 13:11:06', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Heading text', 'heading_text', 'publish', 'closed', 'closed', '', 'field_5fdb58ccafa7b', '', '', '2020-12-17 13:11:06', '2020-12-17 13:11:06', '', 119, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=120', 0, 'acf-field', '', 0),
(121, 1, '2020-12-17 13:11:06', '2020-12-17 13:11:06', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Shortcode', 'shortcode', 'publish', 'closed', 'closed', '', 'field_5fdb58d9afa7c', '', '', '2020-12-17 13:11:06', '2020-12-17 13:11:06', '', 119, 'http://localhost/money-mouth-wp/?post_type=acf-field&p=121', 1, 'acf-field', '', 0),
(122, 1, '2020-12-17 13:13:32', '2020-12-17 13:13:32', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/feedback-form-block {\n    "id": "block_5fdb58f8570dd",\n    "name": "acf\\/feedback-form-block",\n    "data": {\n        "heading_text": "<h2><span class=\\"mm-color--light-black\\">Let Us Know What <\\/span>You Think! <\\/h2>\\r\\n<h4>Leave us feedback below<\\/h4>",\n        "_heading_text": "field_5fdb58ccafa7b",\n        "shortcode": "[ninja_form id=2]",\n        "_shortcode": "field_5fdb58d9afa7c"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 13:13:32', '2020-12-17 13:13:32', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2020-12-17 13:13:33', '2020-12-17 13:13:33', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/feedback-form-block {\n    "id": "block_5fdb58f8570dd",\n    "name": "acf\\/feedback-form-block",\n    "data": {\n        "heading_text": "<h2><span class=\\"mm-color--light-black\\">Let Us Know What <\\/span>You Think! <\\/h2>\\r\\n<h4>Leave us feedback below<\\/h4>",\n        "_heading_text": "field_5fdb58ccafa7b",\n        "shortcode": "[ninja_form id=2]",\n        "_shortcode": "field_5fdb58d9afa7c"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 13:13:33', '2020-12-17 13:13:33', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2020-12-17 13:18:46', '2020-12-17 13:18:46', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "[mc4wp_form id=\\"99\\"]",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/feedback-form-block {\n    "id": "block_5fdb58f8570dd",\n    "name": "acf\\/feedback-form-block",\n    "data": {\n        "heading_text": "<h2><span class=\\"mm-color--light-black\\">Let Us Know What <\\/span>You Think!<\\/h2>\\r\\n<h4>Leave us feedback below<\\/h4>",\n        "_heading_text": "field_5fdb58ccafa7b",\n        "shortcode": "[ninja_form id=2]",\n        "_shortcode": "field_5fdb58d9afa7c"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 13:18:46', '2020-12-17 13:18:46', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2020-12-17 13:18:46', '2020-12-17 13:18:46', '<!-- wp:acf/page-banner-block {\n    "id": "block_5fd9fcd97ab12",\n    "name": "acf\\/page-banner-block",\n    "data": {\n        "banner_text": "<h1>MoneyMouth - the Easiest way to bet on anything!<\\/h1>\\r\\nEnter your email below to get the latest updates on MoneyMouth",\n        "_banner_text": "field_5fd9f952273eb",\n        "form_shortcode": "[mc4wp_form id=\\"99\\"]",\n        "_form_shortcode": "field_5fd9f976273ec"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/image-text-block {\n    "id": "block_5fda0a38d4911",\n    "name": "acf\\/image-text-block",\n    "data": {\n        "heading_text": "<h2>Who we are<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda09c8c9ac2",\n        "image": 58,\n        "_image": "field_5fda09f4c9ac4",\n        "text_content": "<h3>Monet <span class=\\"mm-color--light-black\\">mouth is<\\/span><\\/h3>\\r\\nMoneyMouth’s mission is to increase global fun, connectivity, and growth by enabling the world\\r\\nto bet anyone on anything. We believe fun should\\r\\nalways come first, and life is a game. We understand\\r\\nthat everyone we meet in life is a human just like us.\\r\\nAnd we think that healthy competition drives growth.\\r\\nWe know that to win, we have to take the risk.\\r\\n<strong>\\r\\nBecause of this - we put our money where our mouth is - and created an App.\\r\\n<\\/strong>\\r\\n<ul>\\r\\n \\t<li>Our App is completely free to play: bet with points. The App tracks your wins so you can show off<\\/li>\\r\\n \\t<li>Improve your ranking and share your wins<\\/li>\\r\\n \\t<li>The App lets you engage your friends or challenge the MoneyMouth community<\\/li>\\r\\n \\t<li>Create a bet based on your knowledge and strengths or find a bet already open based on your interests<\\/li>\\r\\n<\\/ul>",\n        "_text_content": "field_5fda09e2c9ac3",\n        "button_1_button_label": "Download now",\n        "_button_1_button_label": "field_5fda0d1558f45",\n        "button_1_button_url": "#",\n        "_button_1_button_url": "field_5fda0d2658f46",\n        "button_1": "",\n        "_button_1": "field_5fda0ce458f44",\n        "button_2_button_label": "Learn more",\n        "_button_2_button_label": "field_5fda0d3d58f48",\n        "button_2_button_url": "#",\n        "_button_2_button_url": "field_5fda0d3d58f49",\n        "button_2": "",\n        "_button_2": "field_5fda0d3d58f47"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/posts-list-block {\n    "id": "block_5fda37c8ee4ca",\n    "name": "acf\\/posts-list-block",\n    "data": {\n        "heading_text": "<h2>Bet your crew<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do",\n        "_heading_text": "field_5fda379f7ab0f",\n        "number_of_posts_to_show": "10",\n        "_number_of_posts_to_show": "field_5fda3894c90fb"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/accordion-tabs-block {\n    "id": "block_5fdb20b0b0681",\n    "name": "acf\\/accordion-tabs-block",\n    "data": {\n        "heading_text": "<h2>FAQ’s<\\/h2>\\r\\n<div class=\\"component-heading\\">\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscingelit, sed do\\r\\n\\r\\n<\\/div>",\n        "_heading_text": "field_5fdb204b707f7",\n        "accordian_item_0_head_text": "What are Points for",\n        "_accordian_item_0_head_text": "field_5fdb2074707f9",\n        "accordian_item_0_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_0_body_text": "field_5fdb207e707fa",\n        "accordian_item_1_head_text": "What are Points for",\n        "_accordian_item_1_head_text": "field_5fdb2074707f9",\n        "accordian_item_1_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings\\r\\n",\n        "_accordian_item_1_body_text": "field_5fdb207e707fa",\n        "accordian_item_2_head_text": "What are Points for",\n        "_accordian_item_2_head_text": "field_5fdb2074707f9",\n        "accordian_item_2_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_2_body_text": "field_5fdb207e707fa",\n        "accordian_item_3_head_text": "What are Points for",\n        "_accordian_item_3_head_text": "field_5fdb2074707f9",\n        "accordian_item_3_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_3_body_text": "field_5fdb207e707fa",\n        "accordian_item_4_head_text": "What are Points for",\n        "_accordian_item_4_head_text": "field_5fdb2074707f9",\n        "accordian_item_4_body_text": "Points are how you make your bets. The more confident you are, the more points you want to bet. If you see a bet you like - feel free to negotiate a unique point amount with the competitor Points are used to create the rankings",\n        "_accordian_item_4_body_text": "field_5fdb207e707fa",\n        "accordian_item": 5,\n        "_accordian_item": "field_5fdb205f707f8"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/social-share-wall-block {\n    "id": "block_5fdb1c790a4f1",\n    "name": "acf\\/social-share-wall-block",\n    "data": {\n        "heading_text": "<h2>Instagram<\\/h2>\\r\\nLorem ipsum dolor sit amet, consectetur\\r\\nadipiscingelit, sed do",\n        "_heading_text": "field_5fdb1c5ad34cc",\n        "shortcode": "[instagram-feed]",\n        "_shortcode": "field_5fdb1c65d34cd"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:acf/feedback-form-block {\n    "id": "block_5fdb58f8570dd",\n    "name": "acf\\/feedback-form-block",\n    "data": {\n        "heading_text": "<h2><span class=\\"mm-color--light-black\\">Let Us Know What <\\/span>You Think!<\\/h2>\\r\\n<h4>Leave us feedback below<\\/h4>",\n        "_heading_text": "field_5fdb58ccafa7b",\n        "shortcode": "[ninja_form id=2]",\n        "_shortcode": "field_5fdb58d9afa7c"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-17 13:18:46', '2020-12-17 13:18:46', '', 7, 'http://localhost/money-mouth-wp/7-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_sbi_instagram_feeds_posts`
#

DROP TABLE IF EXISTS `wp_sbi_instagram_feeds_posts`;


#
# Table structure of table `wp_sbi_instagram_feeds_posts`
#

CREATE TABLE `wp_sbi_instagram_feeds_posts` (
  `record_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) unsigned NOT NULL,
  `instagram_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `feed_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`record_id`),
  KEY `feed_id` (`feed_id`(100))
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_sbi_instagram_feeds_posts`
#
INSERT INTO `wp_sbi_instagram_feeds_posts` ( `record_id`, `id`, `instagram_id`, `feed_id`) VALUES
(1, 1, '17863639061112928', 'sbi_17841400863872670'),
(2, 2, '17852546786229813', 'sbi_17841400863872670'),
(3, 3, '17920695268447285', 'sbi_17841400863872670'),
(4, 4, '17865031268032142', 'sbi_17841400863872670'),
(5, 5, '18122015518099105', 'sbi_17841400863872670'),
(6, 6, '17880784726640412', 'sbi_17841400863872670'),
(7, 7, '17844383480133413', 'sbi_17841400863872670'),
(8, 8, '18137924887035235', 'sbi_17841400863872670'),
(9, 9, '17878164910528206', 'sbi_17841400863872670'),
(10, 10, '17843521886023309', 'sbi_17841400863872670'),
(11, 11, '18050034175219452', 'sbi_17841400863872670'),
(12, 12, '18102427726111913', 'sbi_17841400863872670'),
(13, 13, '18088040566190747', 'sbi_17841400863872670'),
(14, 14, '18069458431172238', 'sbi_17841400863872670'),
(15, 15, '18079737358153300', 'sbi_17841400863872670'),
(16, 16, '18009583024267749', 'sbi_17841400863872670'),
(17, 17, '17842311988862591', 'sbi_17841400863872670'),
(18, 18, '17894730187417960', 'sbi_17841400863872670'),
(19, 19, '18027579421234516', 'sbi_17841400863872670'),
(20, 20, '18082411297112647', 'sbi_17841400863872670') ;

#
# End of data contents of table `wp_sbi_instagram_feeds_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_sbi_instagram_posts`
#

DROP TABLE IF EXISTS `wp_sbi_instagram_posts`;


#
# Table structure of table `wp_sbi_instagram_posts`
#

CREATE TABLE `wp_sbi_instagram_posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `instagram_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `time_stamp` datetime DEFAULT NULL,
  `top_time_stamp` datetime DEFAULT NULL,
  `json_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `media_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sizes` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `aspect_ratio` decimal(4,2) NOT NULL DEFAULT '0.00',
  `images_done` tinyint(1) NOT NULL DEFAULT '0',
  `last_requested` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_sbi_instagram_posts`
#
INSERT INTO `wp_sbi_instagram_posts` ( `id`, `created_on`, `instagram_id`, `time_stamp`, `top_time_stamp`, `json_data`, `media_id`, `sizes`, `aspect_ratio`, `images_done`, `last_requested`) VALUES
(1, '2020-12-17 08:14:00', '17863639061112928', '2020-10-03 15:23:08', '2020-10-03 15:23:08', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/120659664_3967979706552561_6962314046826748204_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8ae9d6&_nc_ohc=FwO6kwJ8BRwAX_9VdEM&_nc_ht=scontent.cdninstagram.com&oh=5c4f28026203f44e2777eafd2b7eecc3&oe=5FFFBD69","id":"17863639061112928","media_type":"IMAGE","timestamp":"2020-10-03T15:23:08+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CF4uJVFFe0h\\/"}', '120659664_3967979706552561_6962314046826748204_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.38', 1, '2020-12-17'),
(2, '2020-12-17 08:14:01', '17852546786229813', '2020-09-05 16:30:02', '2020-09-05 16:30:02', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/118702042_325613865316542_1448604974269613806_n.jpg?_nc_cat=106&ccb=2&_nc_sid=8ae9d6&_nc_ohc=Axw5d_0X4AUAX9O_qKl&_nc_ht=scontent.cdninstagram.com&oh=ab1d8de60d350aa3973891829b6bc3cb&oe=5FFFD04C","caption":"Kazu da mi je rodjaka, da ne kazem sestra.","id":"17852546786229813","media_type":"IMAGE","timestamp":"2020-09-05T16:30:02+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CEwvivZlAoE\\/"}', '118702042_325613865316542_1448604974269613806_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '0.80', 1, '2020-12-17'),
(3, '2020-12-17 08:14:01', '17920695268447285', '2020-09-05 10:17:35', '2020-09-05 10:17:35', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/118730025_113726286998775_8472605763671053621_n.jpg?_nc_cat=104&ccb=2&_nc_sid=8ae9d6&_nc_ohc=zdpVBaeoNhcAX8Nh-qt&_nc_ht=scontent.cdninstagram.com&oh=af3a71be45dba60cd83a3b297474c153&oe=60008CA0","caption":"Standardna subota i kafa sa prijateljima.","id":"17920695268447285","media_type":"IMAGE","timestamp":"2020-09-05T10:17:35+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CEwE62rF3tG\\/"}', '118730025_113726286998775_8472605763671053621_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '0.80', 1, '2020-12-17'),
(4, '2020-12-17 08:14:02', '17865031268032142', '2020-08-29 17:05:18', '2020-08-29 17:05:18', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.29350-15\\/118397454_2374315432877901_5726139109898619726_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8ae9d6&_nc_ohc=aP9FNKskR5QAX_2oV23&_nc_ht=scontent.cdninstagram.com&oh=a336fad82dedaac77675a63b24d13c96&oe=5FFF80A4","id":"17865031268032142","media_type":"IMAGE","timestamp":"2020-08-29T17:05:18+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CEeyA8bBGnD\\/"}', '118397454_2374315432877901_5726139109898619726_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.30', 1, '2020-12-17'),
(5, '2020-12-17 08:14:02', '18122015518099105', '2020-06-26 09:08:08', '2020-06-26 09:08:08', '{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/105485069_268829197782627_422647905955110200_n.mp4?_nc_cat=105&vs=17866696234859986_2309162475&_nc_vs=HBksFQAYJEdBMlRTUVpqenRhc2YtUUFBRGhkaFBzSGpOMEZia1lMQUFBRhUAAsgBABUAGCRHRndnVWdZVWxrZjdtZkVBQUlyZGNIMU1vNjE1YmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaks%2FGDzOq8PxUCKAJDMywXQDm7peNT988YEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=E9i1V-5yHmYAX8ZOgXr&_nc_ht=video.cdninstagram.com&oh=266d4e7dc4f22f45889ca17d6218ba86&oe=600296B6&_nc_rid=2fc8dd7fe1","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/105933941_271962830565135_7441823946842835578_n.jpg?_nc_cat=105&ccb=2&_nc_sid=8ae9d6&_nc_ohc=TwJeEwYQ4DkAX_WgsC2&_nc_ht=scontent.cdninstagram.com&oh=16a17c9afe8b98aa01ecabb50e33f9c9&oe=5FFF8542","caption":"Za\\u0161to Pet Tag?\\n\\nPet Tag je personalizovana kartica na kojoj se nalaze, kako podaci o Va\\u0161em ljubimcu, tako i Va\\u0161 kontakt telefon. \\nNa pole\\u0111ini kartice je li\\u010dni identifikacioni broj i QR kod. Uno\\u0161enjem ID broja na stranici izgubljeni-ljubimac ili skeniranjem QR koda, pronalaza\\u010d dobija sve potrebne informacije o vlasniku i mogu\\u0107nost da stupi u kontakt sa njim.\\n\\nUkoliko iz bilo kog razloga niste u stanju da dobijete vlasnika na broj telefona, jednostavnim klikom na dugme Obavesti vlasnika i ispunjavanjem kratke kontakt forme, vlasnik \\u0107e biti obave\\u0161ten putem email-a. \\n#pet__tag","id":"18122015518099105","media_type":"VIDEO","timestamp":"2020-06-26T09:08:08+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CB5IgQJFtua\\/"}', '105933941_271962830565135_7441823946842835578_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.77', 1, '2020-12-17'),
(6, '2020-12-17 08:14:03', '17880784726640412', '2020-06-19 16:22:24', '2020-06-19 16:22:24', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/79979280_194288815224487_3778230865777059452_n.jpg?_nc_cat=108&ccb=2&_nc_sid=8ae9d6&_nc_ohc=WwTzFvy34UcAX9e0htV&_nc_ht=scontent.cdninstagram.com&oh=4f56473a749a18e6f3c71cd11a5c3a11&oe=5FFF5A95","caption":"Od ideje do realizacije je pro\\u0161lo vi\\u0161e od tri meseca i @pet__tag  je konacno gotov. Poru\\u010dite jo\\u0161 danas personalizovani tag za va\\u0161eg ljubimca! \\npet-tag.rs\\n#ns #bg #ljubimac #pet #petlovers #pettag","id":"17880784726640412","media_type":"IMAGE","timestamp":"2020-06-19T16:22:24+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CBn4qq0FDbL\\/"}', '79979280_194288815224487_3778230865777059452_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.09', 1, '2020-12-17'),
(7, '2020-12-17 08:14:03', '17844383480133413', '2020-05-10 11:42:10', '2020-05-10 11:42:10', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/97205461_684939992263923_1603010574511373800_n.jpg?_nc_cat=107&ccb=2&_nc_sid=8ae9d6&_nc_ohc=i7whlvkQCd0AX8uSRBQ&_nc_oc=AQkQ4VrxzYIwF4ZybqnuhsWDflkMNUKyu-C5PXJuPkED-SIR97QzIo18spre_VUio-s&_nc_ht=scontent.cdninstagram.com&oh=8af878ea033cdb993c8b7dd849c86abf&oe=6002576F","id":"17844383480133413","media_type":"IMAGE","timestamp":"2020-05-10T11:42:10+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/CAAYzHRFEWj\\/"}', '97205461_684939992263923_1603010574511373800_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.33', 1, '2020-12-17'),
(8, '2020-12-17 08:14:04', '18137924887035235', '2020-04-09 19:41:27', '2020-04-09 19:41:27', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/92777260_148425016670839_3372315936919437030_n.jpg?_nc_cat=102&ccb=2&_nc_sid=8ae9d6&_nc_ohc=MSwEydngQm8AX8m5RIg&_nc_ht=scontent.cdninstagram.com&oh=17ed8d5abffdbf1a7c5594b8110e2e7c&oe=60010334","caption":"Uvek sam ovako sredjen, pogotovo kad sam ceo dan u stanu.","id":"18137924887035235","media_type":"IMAGE","timestamp":"2020-04-09T19:41:27+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B-xbAbql3Sb\\/"}', '92777260_148425016670839_3372315936919437030_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '0.80', 1, '2020-12-17'),
(9, '2020-12-17 08:14:04', '17878164910528206', '2020-03-05 15:57:23', '2020-03-05 15:57:23', '{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/89163815_621448098679456_4301658123420161560_n.mp4?_nc_cat=102&vs=17873299297580541_1710918891&_nc_vs=HBksFQAYJEdDZUlVQVdnQ2lzcE5EVUNBQmpXb2FkRmo3STdia1lMQUFBRhUAAsgBABUAGCRHRi1KTlFXMjJYVzJjWFFFQUNaemE2WmVVODRPYmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACb6z%2FC0%2BOq%2FPxUCKAJDMywXQDfMzMzMzM0YEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=g344A5nhE7kAX-FPOWE&_nc_ht=video.cdninstagram.com&oh=f82e31a0653053396c7aa0aa0f7586ed&oe=60010FF1&_nc_rid=916b01ddc2","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/87590513_2997472996940096_35877396274776386_n.jpg?_nc_cat=101&ccb=2&_nc_sid=8ae9d6&_nc_ohc=SHQPG6dNSZ4AX9YoNOv&_nc_ht=scontent.cdninstagram.com&oh=525382530a3ed1781766b77d2601195e&oe=60007992","caption":"Nova pesma i spot za Zaokret.\\nLink ka YouTube-u u opisu profila! \\ud83c\\udfb8\\ud83e\\udd41\\ud83c\\udfa4\\ud83c\\udf99\\ud83c\\udf9b\\ud83c\\udfac","id":"17878164910528206","media_type":"VIDEO","timestamp":"2020-03-05T15:57:23+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B9W5gmrByi5\\/"}', '87590513_2997472996940096_35877396274776386_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.00', 1, '2020-12-17'),
(10, '2020-12-17 08:14:05', '17843521886023309', '2020-03-03 18:16:11', '2020-03-03 18:16:11', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/84358898_254795178879326_595378566034734848_n.jpg?_nc_cat=104&ccb=2&_nc_sid=8ae9d6&_nc_ohc=ph6AK2qqOGoAX8nFmc-&_nc_ht=scontent.cdninstagram.com&oh=9335c076d4f857eb1b807468facbb6c6&oe=6001887B","caption":"Dobar dan, na fotografiji je dosta stvari laz pa i ta da ja znam slepo kucanje. Laptop nije ni ukljucen, a papiri ispred su prazni i na njima nista ne pise. Nosim lazne naocare, jer za one prave nemam dioptriju.","id":"17843521886023309","media_type":"IMAGE","timestamp":"2020-03-03T18:16:11+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B9R_1f1BTMS\\/"}', '84358898_254795178879326_595378566034734848_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '0.80', 1, '2020-12-17'),
(11, '2020-12-17 08:14:06', '18050034175219452', '2020-02-15 17:11:58', '2020-02-15 17:11:58', '{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/86336601_182734916332063_2188311431905750257_n.mp4?_nc_cat=110&vs=18095433133186625_3050650613&_nc_vs=HBksFQAYJEdGbGtKUVVmcXNaSk1xWUFBUEVzcXpTbmNWNGVia1lMQUFBRhUAAsgBABUAGCRHTXVQSXdYYzdpMUxaMEFDQUhtcUZndHROcllHYmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaC5LnU6uykQBUCKAJDMywXQDE7peNT988YEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=-4RMoRjUkaMAX_sjk90&_nc_ht=video.cdninstagram.com&oh=38d8e29d35c5a61d520c1a8244f52241&oe=60019AB0&_nc_rid=138b03190e","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/84558489_137502521073073_7633758110815346322_n.jpg?_nc_cat=103&ccb=2&_nc_sid=8ae9d6&_nc_ohc=_dFn-WnP0fcAX-GCu06&_nc_ht=scontent.cdninstagram.com&oh=227f5971c3649b895c8116c7761fe45b&oe=6001E07B","caption":"I ne boj se buke, to \\u0161to svira to su ruke!","id":"18050034175219452","media_type":"VIDEO","timestamp":"2020-02-15T17:11:58+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B8mG8rZhWxr\\/"}', '84558489_137502521073073_7633758110815346322_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.00', 1, '2020-12-17'),
(12, '2020-12-17 08:14:06', '18102427726111913', '2020-01-19 20:44:16', '2020-01-19 20:44:16', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/83635920_162013075106656_957330709278224677_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8ae9d6&_nc_ohc=xFOwFl0M7EcAX-w84Ce&_nc_ht=scontent.cdninstagram.com&oh=eff4b174f56d83fafa7d61e9588d2677&oe=60020B63","caption":"Moj drug Stefan Nestorovic i moja malenkost na koktelu kod kraljice Elizabete Druge povodom nastavka serije \\"Ranjen i orao\\". Foto:\\n@irena.cuckovic","id":"18102427726111913","media_type":"IMAGE","timestamp":"2020-01-19T20:44:16+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B7g9zkvhiMv\\/"}', '83635920_162013075106656_957330709278224677_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.50', 1, '2020-12-17'),
(13, '2020-12-17 08:14:06', '18088040566190747', '2019-12-31 23:41:11', '2019-12-31 23:41:11', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/81677632_1408582639303589_7188068003732093726_n.jpg?_nc_cat=106&ccb=2&_nc_sid=8ae9d6&_nc_ohc=rUqOMXd-hqEAX_kqiMC&_nc_oc=AQmiwoDz9vcNy_QZ95_pQ16czCZgJhtO6qkM_77K7hSaFIJ2HspmZS4qNSrRs0aq18E&_nc_ht=scontent.cdninstagram.com&oh=7d1ad07f1379a10e26a69f8adc1105d9&oe=600218CC","caption":"Dobro wc, mi smo neki tamo ljudi koji smo korektni.","id":"18088040566190747","media_type":"IMAGE","timestamp":"2019-12-31T23:41:11+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B6wW8sChHkD\\/"}', '81677632_1408582639303589_7188068003732093726_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.33', 1, '2020-12-17'),
(14, '2020-12-17 08:14:07', '18069458431172238', '2019-12-20 18:02:58', '2019-12-20 18:02:58', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/74600026_462516004672182_253580847179183411_n.jpg?_nc_cat=104&ccb=2&_nc_sid=8ae9d6&_nc_ohc=6L1eL7IdDhQAX8zncXZ&_nc_ht=scontent.cdninstagram.com&oh=d47fdeb0268d6726260f7d458952f75d&oe=5FFF8B5F","caption":"#hauptbahnhof #wien","id":"18069458431172238","media_type":"IMAGE","timestamp":"2019-12-20T18:02:58+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B6Tbf_mBJO_\\/"}', '74600026_462516004672182_253580847179183411_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.33', 1, '2020-12-17'),
(15, '2020-12-17 08:14:08', '18079737358153300', '2019-12-20 11:41:03', '2019-12-20 11:41:03', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/80495452_429956847912910_5712109932461432349_n.jpg?_nc_cat=102&ccb=2&_nc_sid=8ae9d6&_nc_ohc=3KYeJpDkPNkAX_9R_0J&_nc_ht=scontent.cdninstagram.com&oh=b6cfc0ef948eb2e018085d3168b6bce4&oe=5FFF5C61","caption":"#kunstmuseum #vienna","id":"18079737358153300","media_type":"IMAGE","timestamp":"2019-12-20T11:41:03+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B6SvywnFI9z\\/"}', '80495452_429956847912910_5712109932461432349_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.33', 1, '2020-12-17'),
(16, '2020-12-17 08:14:08', '18009583024267749', '2019-12-08 14:38:02', '2019-12-08 14:38:02', '{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/79841230_440747306612002_5733904477455545666_n.mp4?_nc_cat=100&vs=18029254480243813_2677774276&_nc_vs=HBksFQAYJEdNNUh3Z1FpZGFWNjI1QUJBRUoxd2lLXzY1SlBia1lMQUFBRhUAAsgBABUAGCRHUFpteWdRbGhEdTlkM3dBQUltdjBYdWNtREpXYmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbKpKb52uCGQBUCKAJDMywXQEkmZmZmZmYYEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=43JgO4MT4tEAX-2YBif&_nc_ht=video.cdninstagram.com&oh=421a3cc2efc165d6d83830b2faeff450&oe=60028EDE&_nc_rid=3775e462b2","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/77222950_2288263281471790_3338351822484996729_n.jpg?_nc_cat=101&ccb=2&_nc_sid=8ae9d6&_nc_ohc=buP6R-RUgUMAX8MPwZK&_nc_ht=scontent.cdninstagram.com&oh=91058fc64f88b2cafc4a8e2607f84fc2&oe=5FFFE792","caption":"#margina","id":"18009583024267749","media_type":"VIDEO","timestamp":"2019-12-08T14:38:02+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B50KYXLFR90\\/"}', '77222950_2288263281471790_3338351822484996729_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.77', 1, '2020-12-17'),
(17, '2020-12-17 08:14:09', '17842311988862591', '2019-12-06 14:50:22', '2019-12-06 14:50:22', '{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/80288769_454141512149606_3851506151627781786_n.mp4?_nc_cat=103&vs=18118025884030523_748478274&_nc_vs=HBksFQAYJEdBRWN5UVJtYW9JUENwMEJBSnAyQVZKd1RITTFia1lMQUFBRhUAAsgBABUAGCRHR3FndWdSNmhTUjNUTW9DQUNTMllrYTJnMWM4YmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACb2kZbI8o%2BvQBUCKAJDMywXQEwd0vGp%2B%2BcYEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=FBdbaHdCmpIAX9aQQBX&_nc_ht=video.cdninstagram.com&oh=ad7a7dd98d864382bbcee8aa26468a99&oe=6000FF2A&_nc_rid=f27f3219a3","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/78985010_114567166465802_4151193946132190483_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8ae9d6&_nc_ohc=NNvx5Whqf6IAX8Fbi87&_nc_ht=scontent.cdninstagram.com&oh=7d8baf6cb942158ed964d883806bac47&oe=60018ABB","caption":"Ostarilo se.","id":"17842311988862591","media_type":"VIDEO","timestamp":"2019-12-06T14:50:22+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B5vCOMeF4Oo\\/"}', '78985010_114567166465802_4151193946132190483_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.77', 1, '2020-12-17'),
(18, '2020-12-17 08:14:09', '17894730187417960', '2019-11-20 15:19:29', '2019-11-20 15:19:29', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/71080258_201571864205271_8023172230388593717_n.jpg?_nc_cat=111&ccb=2&_nc_sid=8ae9d6&_nc_ohc=caQxlehO7qsAX_yMpKJ&_nc_ht=scontent.cdninstagram.com&oh=dd8d8e08325691bdc3b8f3dc4a0985c9&oe=5FFFD93D","id":"17894730187417960","media_type":"IMAGE","timestamp":"2019-11-20T15:19:29+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B5F48SpFJIy\\/"}', '71080258_201571864205271_8023172230388593717_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.15', 1, '2020-12-17'),
(19, '2020-12-17 08:14:10', '18027579421234516', '2019-11-02 15:44:09', '2019-11-02 15:44:09', '{"media_url":"https:\\/\\/video.cdninstagram.com\\/v\\/t50.2886-16\\/76758336_107959400510672_6358186604184537586_n.mp4?_nc_cat=106&vs=17843296561763134_3841773476&_nc_vs=HBksFQAYJEdFQTlrd1RRdExkQk1HSUFBUElKRVlZSDBUeFlia1lMQUFBRhUAAsgBABUAGCRHSHpCZkFROWtOYVRsQWNDQUF2VzNQaGd5UDVvYmtZTEFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACb8q%2FrJxJiyPxUCKAJDMywXQETIcrAgxJwYEmRhc2hfYmFzZWxpbmVfMV92MREAdeoHAA%3D%3D&ccb=2&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5mZWVkIn0%3D&_nc_ohc=FVW2-Oub8v4AX9qQLWG&_nc_ht=video.cdninstagram.com&oh=3da4af18361f1b2ab07af202dc07ced9&oe=5FFF3255&_nc_rid=55133836aa","thumbnail_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/75266948_988636471491137_3168048331128365276_n.jpg?_nc_cat=109&ccb=2&_nc_sid=8ae9d6&_nc_ohc=nU7_jd-u4WAAX-Fk7la&_nc_ht=scontent.cdninstagram.com&oh=8e0bb2c7b1e69365e8a83fc3af35de51&oe=6000C0E8","caption":"Delic atmosfere sa finala Takt festivala i pesma Obojimo svet.","id":"18027579421234516","media_type":"VIDEO","timestamp":"2019-11-02T15:44:09+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B4XlJ0YlawI\\/"}', '75266948_988636471491137_3168048331128365276_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '1.77', 1, '2020-12-17'),
(20, '2020-12-17 08:14:10', '18082411297112647', '2019-09-23 10:29:52', '2019-09-23 10:29:52', '{"media_url":"https:\\/\\/scontent.cdninstagram.com\\/v\\/t51.2885-15\\/70730795_3158273637548658_7306693191840330815_n.jpg?_nc_cat=100&ccb=2&_nc_sid=8ae9d6&_nc_ohc=51FYduLcIiUAX-D-cAb&_nc_ht=scontent.cdninstagram.com&oh=b62fc640af76e49a6fe5a5b15c531be5&oe=5FFF4E74","caption":"Tre\\u0107e mesto na @taktfestival -u i kao nagrada kahon. \\nNadam se da \\u0107e kom\\u0161ije imati razumevanja. :D\\n#soulpaddler #takt","id":"18082411297112647","media_type":"IMAGE","timestamp":"2019-09-23T10:29:52+0000","username":"markoronimo_saurus_rex","permalink":"https:\\/\\/www.instagram.com\\/p\\/B2wBsXBCH_h\\/"}', '70730795_3158273637548658_7306693191840330815_n', 'a:2:{s:4:"full";i:640;s:3:"low";i:320;}', '0.80', 1, '2020-12-17') ;

#
# End of data contents of table `wp_sbi_instagram_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 1, 0),
(38, 3, 0),
(39, 3, 0),
(40, 3, 0),
(71, 6, 0),
(75, 4, 0),
(75, 5, 0),
(77, 5, 0),
(79, 4, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'Social links', 'social-links', 0),
(4, 'Sport', 'sport', 0),
(5, 'Stocks', 'stocks', 0),
(6, 'Crypto', 'crypto', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'babovic'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"cc3a93d024707062ac7531cbe429d6f321db1805323e6e28386e0381ca119dbd";a:4:{s:10:"expiration";i:1609147971;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36";s:5:"login";i:1607938371;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_nf_form_preview_tmp-1608103556', 'a:4:{s:2:"id";s:14:"tmp-1608103556";s:8:"settings";a:20:{s:10:"objectType";s:12:"Form Setting";s:10:"editActive";b:0;s:5:"title";s:0:"";s:10:"show_title";i:1;s:17:"allow_public_link";i:0;s:10:"embed_form";s:0:"";s:14:"clear_complete";i:1;s:13:"hide_complete";i:1;s:17:"default_label_pos";s:5:"above";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:3:"key";s:0:"";s:10:"add_submit";i:1;s:8:"currency";s:0:"";s:18:"unique_field_error";s:50:"A form with this value has already been submitted.";s:9:"logged_in";b:0;s:17:"not_logged_in_msg";s:0:"";s:13:"sub_limit_msg";s:42:"The form has reached its submission limit.";s:12:"calculations";a:0:{}s:15:"formContentData";a:2:{i:0;s:22:"textarea_1608103563950";i:1;s:21:"comment_1608103625151";}}s:6:"fields";a:2:{s:5:"tmp-1";a:1:{s:8:"settings";a:24:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:1;s:4:"type";s:8:"textarea";s:5:"label";s:0:"";s:3:"key";s:22:"textarea_1608103563950";s:9:"label_pos";s:7:"default";s:8:"required";i:0;s:7:"default";s:0:"";s:11:"placeholder";s:18:"Enter your comment";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";b:0;s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:12:"textarea_rte";s:0:"";s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";s:5:"value";s:0:"";s:14:"drawerDisabled";b:0;}}s:5:"tmp-2";a:1:{s:8:"settings";a:11:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:2;s:4:"type";s:6:"submit";s:5:"label";s:7:"Comment";s:16:"processing_label";s:10:"Processing";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:3:"key";s:21:"comment_1608103625151";s:14:"drawerDisabled";b:0;}}}s:7:"actions";a:3:{s:5:"tmp-1";a:1:{s:8:"settings";a:19:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"label";s:15:"Success Message";s:4:"type";s:14:"successmessage";s:7:"message";s:42:"Your form has been successfully submitted.";s:5:"order";i:1;s:6:"active";b:1;s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:11:"success_msg";s:42:"Your form has been successfully submitted.";}}s:5:"tmp-2";a:1:{s:8:"settings";a:17:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"label";s:11:"Admin Email";s:4:"type";s:5:"email";s:5:"order";i:2;s:6:"active";b:1;s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";}}s:5:"tmp-3";a:1:{s:8:"settings";a:24:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"label";s:16:"Store Submission";s:4:"type";s:4:"save";s:5:"order";i:3;s:6:"active";b:1;s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:11:"success_msg";s:42:"Your form has been successfully submitted.";s:12:"redirect_url";s:0:"";s:15:"submitter_email";s:0:"";s:18:"fields-save-toggle";s:8:"save_all";s:16:"exception_fields";a:0:{}s:18:"set_subs_to_expire";i:0;s:16:"subs_expire_time";s:2:"90";}}}}'),
(20, 1, 'manageedit-nf_subcolumnshidden', 'a:0:{}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:12:"add-post_tag";i:1;s:23:"add-commercial-category";i:2;s:9:"add-range";i:3;s:18:"add-special-offers";i:4;s:16:"add-product-line";i:5;s:10:"add-season";}'),
(27, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(28, 1, 'wp_user-settings-time', '1608125196'),
(29, 1, 'nav_menu_recently_edited', '3'),
(30, 1, 'seen_more_plugins_page_1', 'true'),
(31, 1, 'wp_nf_form_preview_2', 'a:4:{s:2:"id";i:2;s:8:"settings";a:31:{s:10:"objectType";s:12:"Form Setting";s:10:"editActive";b:1;s:5:"title";s:8:"Feedback";s:10:"show_title";i:0;s:17:"allow_public_link";i:0;s:10:"embed_form";s:0:"";s:14:"clear_complete";i:1;s:13:"hide_complete";i:0;s:17:"default_label_pos";s:5:"above";s:13:"wrapper_class";s:13:"feedback-form";s:13:"element_class";s:0:"";s:3:"key";s:0:"";s:10:"add_submit";i:0;s:19:"changeEmailErrorMsg";s:0:"";s:18:"changeDateErrorMsg";s:0:"";s:20:"confirmFieldErrorMsg";s:0:"";s:22:"fieldNumberNumMinError";s:0:"";s:22:"fieldNumberNumMaxError";s:0:"";s:22:"fieldNumberIncrementBy";s:0:"";s:23:"formErrorsCorrectErrors";s:0:"";s:21:"validateRequiredField";s:0:"";s:21:"honeypotHoneypotError";s:0:"";s:20:"fieldsMarkedRequired";s:0:"";s:8:"currency";s:0:"";s:18:"unique_field_error";s:50:"A form with this value has already been submitted.";s:9:"logged_in";b:0;s:17:"not_logged_in_msg";s:0:"";s:13:"sub_limit_msg";s:42:"The form has reached its submission limit.";s:12:"calculations";a:0:{}s:15:"formContentData";a:2:{i:0;s:22:"textarea_1608103563950";i:1;s:21:"comment_1608103625151";}s:14:"drawerDisabled";b:0;}s:6:"fields";a:2:{i:5;a:1:{s:8:"settings";a:24:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:1;s:4:"type";s:8:"textarea";s:5:"label";s:0:"";s:3:"key";s:22:"textarea_1608103563950";s:9:"label_pos";s:6:"hidden";s:8:"required";i:1;s:7:"default";s:0:"";s:11:"placeholder";s:18:"Enter your comment";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";b:0;s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:12:"textarea_rte";i:0;s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";s:5:"value";s:0:"";s:14:"drawerDisabled";b:0;}}i:6;a:1:{s:8:"settings";a:11:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:2;s:4:"type";s:6:"submit";s:5:"label";s:7:"Comment";s:16:"processing_label";s:10:"Processing";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:3:"key";s:21:"comment_1608103625151";s:14:"drawerDisabled";b:0;}}}s:7:"actions";a:3:{i:7;a:1:{s:8:"settings";a:28:{s:5:"title";N;s:3:"key";N;s:4:"type";s:4:"save";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2020-12-16 07:27:16";s:5:"label";s:16:"Store Submission";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"order";s:1:"3";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:11:"success_msg";s:42:"Your form has been successfully submitted.";s:12:"redirect_url";s:0:"";s:15:"submitter_email";s:0:"";s:18:"fields-save-toggle";s:8:"save_all";s:16:"exception_fields";a:0:{}s:18:"set_subs_to_expire";s:1:"0";s:16:"subs_expire_time";s:2:"90";s:14:"drawerDisabled";s:0:"";}}i:5;a:1:{s:8:"settings";a:23:{s:5:"title";N;s:3:"key";N;s:4:"type";s:14:"successmessage";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2020-12-16 07:27:16";s:5:"label";s:15:"Success Message";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:7:"message";s:42:"Your form has been successfully submitted.";s:5:"order";s:1:"1";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:11:"success_msg";s:42:"Your form has been successfully submitted.";s:14:"drawerDisabled";b:0;}}i:6;a:1:{s:8:"settings";a:20:{s:5:"title";N;s:3:"key";N;s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2020-12-16 07:27:16";s:5:"label";s:11:"Admin Email";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"order";s:1:"2";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";}}}}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'babovic', '$P$BkS/3w.IVFD19uBvFr69K4bHpgA4OL/', 'babovic', 'babovic.marko91@gmail.com', 'http://localhost/money-mouth-wp', '2020-12-14 09:27:10', '', 0, 'babovic') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpforms_tasks_meta`
#

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;


#
# Table structure of table `wp_wpforms_tasks_meta`
#

CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpforms_tasks_meta`
#
INSERT INTO `wp_wpforms_tasks_meta` ( `id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2020-12-16 07:02:56'),
(2, 'wpforms_admin_notifications_update', 'W10=', '2020-12-16 07:03:44') ;

#
# End of data contents of table `wp_wpforms_tasks_meta`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

