-- phpMyAdmin SQL Dump
-- version 4.2.9.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 05, 2015 at 10:51 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `giroptic`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_3_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_comments`
--

CREATE TABLE IF NOT EXISTS `wp_3_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_comments`
--

INSERT INTO `wp_3_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://giroptic.tv/', '', '2015-04-17 07:08:29', '2015-04-17 07:08:29', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_links`
--

CREATE TABLE IF NOT EXISTS `wp_3_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_options`
--

CREATE TABLE IF NOT EXISTS `wp_3_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_options`
--

INSERT INTO `wp_3_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://giroptic.tv/new', 'yes'),
(2, 'home', 'http://giroptic.tv/new', 'yes'),
(3, 'blogname', 'Новий сайт', 'yes'),
(4, 'blogdescription', 'Якийсь опис', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@admin.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'giroptic', 'yes'),
(42, 'stylesheet', 'giroptic', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'wp_3_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:68:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"wysija_newsletters";b:1;s:18:"wysija_subscribers";b:1;s:13:"wysija_config";b:1;s:16:"wysija_theme_tab";b:1;s:16:"wysija_style_tab";b:1;s:22:"wysija_stats_dashboard";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(89, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(90, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:12:"home_right_1";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:21:"zwt_multilingual_ls-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'WPLANG', 'uk_UA', 'yes'),
(97, 'cron', 'a:3:{i:1429340912;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1429341034;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'post_count', '1', 'yes'),
(111, 'allowedthemes', 'a:1:{s:8:"giroptic";b:1;}', 'yes'),
(112, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429255614;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(113, 'current_theme', 'giroptic', 'yes'),
(114, 'theme_mods_giroptic', 'a:2:{i:0;b:0;s:18:"giroptic_copyright";s:19:"Все хорошо";}', 'yes'),
(115, 'theme_switched', '', 'yes'),
(116, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(117, 'wysija_post_type_updated', '1429255739', 'yes'),
(119, 'wysija_post_type_created', '1429255739', 'yes'),
(120, 'acf_version', '4.4.1', 'yes'),
(121, 'installation_step', '16', 'yes'),
(122, 'wysija', 'YToxNzp7czo5OiJmcm9tX25hbWUiO3M6NToiYWRtaW4iO3M6MTI6InJlcGx5dG9fbmFtZSI7czo1OiJhZG1pbiI7czoxNToiZW1haWxzX25vdGlmaWVkIjtzOjIwOiJsYXBjaHVrLm9sQGdtYWlsLmNvbSI7czoxMDoiZnJvbV9lbWFpbCI7czoxOToiaW5mb0BnaXJvcHRpYy5sb2NhbCI7czoxMzoicmVwbHl0b19lbWFpbCI7czoxOToiaW5mb0BnaXJvcHRpYy5sb2NhbCI7czoxNToiZGVmYXVsdF9saXN0X2lkIjtpOjE7czoxNzoidG90YWxfc3Vic2NyaWJlcnMiO3M6MToiMSI7czoxNjoiaW1wb3J0d3BfbGlzdF9pZCI7aToyO3M6MTg6ImNvbmZpcm1fZW1haWxfbGluayI7aToxMDtzOjEyOiJ1cGxvYWRmb2xkZXIiO3M6NTc6Ii92YXIvd3d3L2h0bWwvZ2lyb3B0aWMvd3AtY29udGVudC91cGxvYWRzL3NpdGVzLzMvd3lzaWphLyI7czo5OiJ1cGxvYWR1cmwiO3M6NjA6Imh0dHA6Ly9naXJvcHRpYy5sb2NhbC9uZXcvd3AtY29udGVudC91cGxvYWRzL3NpdGVzLzMvd3lzaWphLyI7czoxNjoiY29uZmlybV9lbWFpbF9pZCI7aToyO3M6OToiaW5zdGFsbGVkIjtiOjE7czoyMDoibWFuYWdlX3N1YnNjcmlwdGlvbnMiO2I6MTtzOjE0OiJpbnN0YWxsZWRfdGltZSI7aToxNDI5MjU4ODU3O3M6MTc6Ind5c2lqYV9kYl92ZXJzaW9uIjtzOjY6IjIuNi4xNSI7czoxMToiZGtpbV9kb21haW4iO3M6MTQ6Imdpcm9wdGljLmxvY2FsIjt9', 'yes'),
(123, 'rewrite_rules', 'a:70:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(124, 'wysija_reinstall', '0', 'no'),
(125, 'wysija_schedules', 'a:5:{s:5:"queue";a:3:{s:13:"next_schedule";i:1429274546;s:13:"prev_schedule";b:0;s:7:"running";b:0;}s:6:"bounce";a:3:{s:13:"next_schedule";i:1429345262;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:5:"daily";a:3:{s:13:"next_schedule";i:1429345262;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:6:"weekly";a:3:{s:13:"next_schedule";i:1429863662;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:7:"monthly";a:3:{s:13:"next_schedule";i:1431678062;s:13:"prev_schedule";i:0;s:7:"running";b:0;}}', 'yes'),
(126, 'new_admin_email', 'admin@admin.com', 'yes'),
(129, '_zwt_cache', 'a:3:{s:31:"translation_network_cache_class";a:2:{s:13:"trans_net_id3";s:1:"1";s:15:"trans_network_3";a:2:{i:0;a:2:{s:7:"blog_id";s:1:"1";s:9:"lang_code";s:5:"en_US";}i:1;a:2:{s:7:"blog_id";s:1:"3";s:9:"lang_code";s:5:"uk_UA";}}}s:21:"lang_name_cache_class";a:3:{s:10:"en_USen_US";s:7:"English";s:10:"en_USuk_UA";s:7:"English";s:10:"uk_UAuk_UA";s:9:"Ukrainian";}s:23:"locale_code_cache_class";a:2:{s:10:"code_en_US";s:2:"en";s:10:"code_uk_UA";s:2:"uk";}}', 'yes'),
(130, 'anh_notices', 'a:2:{s:6:"update";a:0:{}s:5:"error";a:0:{}}', 'yes'),
(132, 'zwt_zanto_settings', 'a:5:{s:14:"zanto_settings";a:1:{s:10:"db-version";s:5:"0.3.4";}s:10:"blog_setup";a:4:{s:20:"auto_add_subscribers";i:0;s:21:"browser_lang_redirect";i:0;s:15:"browser_lr_time";i:24;s:15:"site_visibility";i:1;}s:20:"translation_settings";a:3:{s:20:"default_admin_locale";s:5:"en_US";s:15:"lang_url_format";i:0;s:24:"download_wp_translations";b:0;}s:12:"setup_status";a:2:{s:12:"setup_wizard";s:8:"complete";s:15:"setup_interface";s:4:"four";}s:13:"lang_switcher";a:18:{s:21:"alt_lang_availability";i:0;s:26:"alt_lang_availability_text";s:33:"This article is also available in";s:20:"show_footer_selector";i:1;s:14:"language_order";N;s:8:"elements";a:3:{s:4:"flag";i:1;s:11:"native_name";i:1;s:15:"translated_name";i:1;}s:18:"skip_missing_trans";i:0;s:16:"front_page_trans";i:0;s:16:"post_trans_links";i:0;s:16:"post_tl_position";s:5:"below";s:22:"post_availability_text";s:34:"This post is also available in: %s";s:12:"zwt_ls_theme";i:0;s:17:"zwt_ls_custom_css";s:0:"";s:18:"switcher_in_wpmenu";i:0;s:11:"menu_for_ls";s:0:"";s:13:"post_tl_style";i:0;s:15:"custom_flag_url";i:0;s:15:"custom_flag_ext";s:3:"png";s:16:"use_custom_flags";i:0;}}', 'yes'),
(133, '_transient_timeout_plugin_slugs', '1429346202', 'no'),
(134, '_transient_plugin_slugs', 'a:10:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";i:3;s:9:"hello.php";i:4;s:28:"wysija-newsletters/index.php";i:5;s:25:"menu-image/menu-image.php";i:6;s:39:"siteorigin-panels/siteorigin-panels.php";i:7;s:39:"so-widgets-bundle/so-widgets-bundle.php";i:8;s:46:"wordpress-mu-domain-mapping/domain_mapping.php";i:9;s:15:"zanto/zanto.php";}', 'no'),
(135, 'recently_activated', 'a:0:{}', 'yes'),
(136, 'widget_zwt_multilingual_ls', 'a:2:{i:2;a:2:{s:5:"title";s:15:"Choose Language";s:18:"lang_switcher_type";s:9:"drop_down";}s:12:"_multiwidget";i:1;}', 'yes'),
(137, 'wysija_check_pn', '1429270946.6969', 'yes'),
(138, 'wysija_last_scheduled_check', '1429270946', 'yes'),
(139, 'wysija_last_php_cron_call', '1429628799', 'yes'),
(140, '_transient_doing_cron', '1429628799.1611690521240234375000', 'yes'),
(141, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1429672002', 'no');
INSERT INTO `wp_3_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(142, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Apr 2015 18:34:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:37:"http://wordpress.org/?v=4.2-RC2-32242";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.2 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2015/04/wordpress-4-2-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wordpress.org/news/2015/04/wordpress-4-2-release-candidate/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Apr 2015 19:07:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3609";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:334:"The release candidate for WordPress 4.2 is now available. We&#8217;ve made more than 140 changes since releasing Beta 4 a week and a half ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.2 on Wednesday, [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Drew Jaynes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2328:"<p>The release candidate for WordPress 4.2 is now available.</p>\n<p>We&#8217;ve made more than <a href="https://core.trac.wordpress.org/log?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=32136&amp;stop_rev=31996&amp;limit=100">140 changes</a> since releasing Beta 4 a week and a half ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.2 on <strong>Wednesday, April 22</strong>, but we need your help to get there.</p>\n<p>If you haven’t tested 4.2 yet, now is the time! (Please though, not on your live site unless you’re adventurous.)</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.2 RC1, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.2-RC1.zip">download the release candidate here</a> (zip). </p>\n<p>For more information about what’s new in version 4.2, check out the <a href="https://wordpress.org/news/2015/03/wordpress-4-2-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2015/03/wordpress-4-2-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2015/03/wordpress-4-2-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2015/04/wordpress-4-2-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.2 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.2 before next week. If you find compatibility problems, we never want to break things, so please be sure to post to the support forums so we can figure those out before the final release.</p>\n<p>Be sure to <a href="https://make.wordpress.org/core/">follow along the core development blog</a>, where we&#8217;ll continue to post <a href="https://make.wordpress.org/core/tag/4-2-dev-notes/">notes for developers</a> for 4.2.</p>\n<p><em>Im-Press-ive saving</em><br />\n<em>Achievement unlocked: RC</em><br />\n<em>Release here we come</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2015/04/wordpress-4-2-release-candidate/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"Improvements to WordPress.org";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2015/04/improvements-to-wordpress-org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:74:"https://wordpress.org/news/2015/04/improvements-to-wordpress-org/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 04 Apr 2015 20:19:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:4:"Meta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3494";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:335:"If you visit WordPress.org regularly you might have noticed some changes around the place. If you don’t, now’s the time to check them out! We’ve been working hard to improve the site to make it more useful to everyone, both developers and users, and we hope you like what we’ve done. New Theme and Plugin Directories [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Samuel Sidler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5551:"<p>If you visit WordPress.org regularly you might have noticed some changes around the place. If you don’t, now’s the time to check them out! We’ve been working hard to improve the site to make it more useful to everyone, both developers and users, and we hope you like what we’ve done.</p>\n<h2>New Theme and Plugin Directories</h2>\n<p>Since WordPress 3.8, you’ve been enjoying improved theme management in your WordPress admin, and in WordPress 4.0 plugin management was refined. We’ve brought these experiences from your admin and re-created them right here on WordPress.org.</p>\n<h3>Theme Directory</h3>\n<p>The <a href="https://wordpress.org/themes/">Theme Directory</a> has a better browsing experience, with handy tabs where you can view featured, popular, and the latest themes. As with the theme experience in your admin, you can use the feature filter to browse for just the right theme for your WordPress website.</p>\n<p><img class="alignnone size-large wp-image-3572" src="https://wordpress.org/news/files/2015/04/theme-directory-1024x768.png" alt="theme-directory" width="692" height="519" /></p>\n<p>Click on a theme to get more information about it, including shiny screenshots, ratings, and statistics.</p>\n<p><img class="alignnone size-large wp-image-3573" src="https://wordpress.org/news/files/2015/04/theme-directory-individual-1024x768.png" alt="theme-directory-individual" width="692" height="519" /></p>\n<p>Konstantin Obenland <a href="https://make.wordpress.org/meta/2015/03/10/new-theme-directory/">posted a good overview</a> of everything involved with the theme directory overhaul and followed up with <a href="https://make.wordpress.org/meta/2015/03/31/theme-directory-stats/">a post on improved statistics</a>.</p>\n<h3>Plugin Directory</h3>\n<p>The <a href="https://wordpress.org/plugins/">Plugin Directory</a> has a brand new theme that mirrors the experience in your WordPress admin, with a more visual experience, and better search and statistics.</p>\n<p><img class="alignnone size-large wp-image-3594" src="https://wordpress.org/news/files/2015/04/plugin-directory-1024x768.png" alt="plugin-directory" width="692" height="519" /></p>\n<p>As well as a facelift, there are some great new features for you to play around with:</p>\n<ul>\n<li>Favorites – when you’re logged in to you WordPress.org account, this page gives you direct access to the plugins that you have favorited.</li>\n<li>Beta Testing – try out plugins where developers are experimenting with new features for WordPress.</li>\n<li>Search by plugin author – you can search for a plugin author using their username.</li>\n<li>Better statistics – listings now display the number of active installs so you can see how many people are actually using a plugin.</li>\n</ul>\n<p>An <a href="https://make.wordpress.org/meta/2015/03/04/new-plugin-directory-theme/">overview of the new theme</a> was posted by Scott Reilly.</p>\n<h2>Better Statistics</h2>\n<p>We’ve made huge improvements to <a href="https://wordpress.org/about/stats/">our statistics</a>. This gives us more useful information about the WordPress versions people are using, their PHP version, and their MySQL version.</p>\n<p>Already these new statistics have provided us with useful insights into WordPress usage.</p>\n<ul>\n<li>More than 43% of all sites are running the latest version of WordPress. Previously, we thought only 10% of sites were up-to-date. By excluding sites that are no longer online we were able to improve these statistics.</li>\n<li>We were able to clear up the data around WordPress 3.0, bringing it more in line with expectations. This anomaly was a by-product of spammers.</li>\n<li>Only 15.9% of sites are using PHP 5.2, which is better than we thought.</li>\n</ul>\n<p>Over the coming months we’ll be able to use these statistics to bring you new tools and improvements, and to make more informed decisions across the board. Read <a href="https://make.wordpress.org/meta/2015/03/01/major-update-to-our-version-stats-for-php-mysql-and-wordpress/">Andrew Nacin&#8217;s post about these changes</a> for more background.</p>\n<h2>Thanks!</h2>\n<p>Thanks to everyone who contributed to the theme directory redesign, the plugin directory refresh, and improved statistics: <a href="https://profiles.wordpress.org/deconf">Alin Marcu</a>, <a href="https://profiles.wordpress.org/colorful-tones/">Damon Cook</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/mj12982">Jan Cavan Boulas</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/BrashRebel">Kyle Maurer</a>, <a href="https://profiles.wordpress.org/matveb">Matías Ventura</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/nataliemac">Natalie MacLees</a>, <a href="https://profiles.wordpress.org/pauldewouters">Paul de Wouters</a>, <a href="https://profiles.wordpress.org/samuelsidler">Samuel Sidler</a>, <a href="https://profiles.wordpress.org/Otto42">Samuel Wood (Otto)</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/siobhan">Siobhan McKeown</a>.</p>\n<p>If you want to help out or follow along with future WordPress.org projects, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/meta/">meta development blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:70:"https://wordpress.org/news/2015/04/improvements-to-wordpress-org/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.2 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/04/wordpress-4-2-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2015/04/wordpress-4-2-beta-4/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 03 Apr 2015 13:05:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3566";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.2 Beta 4 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.2, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Drew Jaynes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2694:"<p>WordPress 4.2 Beta 4 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.2, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.2-beta4.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.2, check out the <a href="https://wordpress.org/news/2015/03/wordpress-4-2-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2015/03/wordpress-4-2-beta-2/">Beta 2</a>, and <a href="https://wordpress.org/news/2015/03/wordpress-4-2-beta-3/">Beta 3</a> blog posts. Some of the changes in Beta 4 include:</p>\n<ul>\n<li>Incrementally improved the experience when <strong>accessing the Customizer on mobile</strong>. Please test on your mobile devices and let us know if anything seems wonky.</li>\n<li>Added the ability to make <strong>admin notices dismissible</strong>. Plugin and theme authors: adding <code>.notice</code> and <code>.is-dismissible</code> as adjacent classes to your notice containers should automatically make them dismissible. Please test.</li>\n<li>Fixed some reported issues with <strong>backward-compatibility issues</strong> caused by the modularization of core JS files.</li>\n<li>Removed the <strong>ability to swipe the admin menu open and closed</strong> on touch devices due to reports of some issues with built-in history navigation on certain platforms.</li>\n<li>Improved <strong>accessibility of the WordPress admin</strong> by adding landmark roles. Screen reader users: please test in any core admin screens.</li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=31996&amp;stop_rev=31902&amp;limit=100">more than 90 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.2">everything we’ve fixed</a>.</p>\n<p><em>Dismiss notices</em><br />\n<em>Customizer on mobile</em><br />\n<em>RC nearly here</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/04/wordpress-4-2-beta-4/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.2 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/03/wordpress-4-2-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2015/03/wordpress-4-2-beta-3/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 26 Mar 2015 18:32:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3522";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.2 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.2, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Drew Jaynes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2986:"<p>WordPress 4.2 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.2, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.2-beta3.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.2, check out the <a href="https://wordpress.org/news/2015/03/wordpress-4-2-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2015/03/wordpress-4-2-beta-2/">Beta 2</a> blog posts. Some of the changes in Beta 3 include:</p>\n<ul>\n<li>Removed <strong>Shiny Installs</strong> functionality due to concerns about the activation workflow. Please test the remaining &#8220;Shiny Updates&#8221; functionality from both the Plugins &gt; Add New and Plugins screens to ensure in-line updating still works as well as before.</li>\n<li>Fixed an issue with the <strong>Comments Quick Edit</strong> layout breaking on smaller screens. Please test on your mobile devices.</li>\n<li>Improved <strong>accessibility of login screen errors</strong>. Screen reader users: please let us know if you encounter any issues.</li>\n<li>Refined the <strong>emoji compatibility</strong> script to only load on the front- and back-end if the browser requires it. If you&#8217;re using a legacy web browser, please test.</li>\n<li>Fixed several issues in <strong>Press This</strong> with inserted images being improperly linked to locations other than the source site. Go ahead, &#8220;press&#8221; a site with images on the page and tell us if the image links aren&#8217;t working as you&#8217;d expect.</li>\n<li>Standardized the <strong>time display format</strong> in a variety of admin screens, switching to 24-hour notation where a.m. or p.m. are not specified. Please let us know if you notice you notice anything amiss!</li>\n<li><strong>Various other bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=31901&amp;stop_rev=31835&amp;limit=100">more than 65 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.2">everything we’ve fixed</a>.</p>\n<p><em>Emoji loader</em><br />\n<em>&#8220;Shiny Updates&#8221; still stand firm</em><br />\n<em>Beta 3, please test!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/03/wordpress-4-2-beta-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.2 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/03/wordpress-4-2-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2015/03/wordpress-4-2-beta-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 19 Mar 2015 19:30:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3498";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.2 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.2, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Drew Jaynes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2326:"<p>WordPress 4.2 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.2, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.2-beta2.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.2, <a href="https://wordpress.org/news/2015/03/wordpress-4-2-beta-1/">check out the Beta 1 blog post</a>. Some of the changes in Beta 2 include:</p>\n<ul>\n<li>Added support for entering FTP and SSH credentials when <strong>updating plugins in-place</strong>. FTP and SSH users, please test!</li>\n<li><strong>Improved cross-browser support for emoji</strong> throughout WordPress. If you&#8217;re using an older web browser, please tell us if you have problems using emoji.</li>\n<li>Further <strong>refined Press This authoring</strong> with auto-embedded media and better content scanning. We&#8217;d love to know how auto-embeds work for you.</li>\n<li>Added a constructor and improved method consistency in <code>WP_Comment_Query</code>. Developers: if you&#8217;re extending <code>WP_Comment_Query</code>, please let us know if you run into any issues.</li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=31834&amp;stop_rev=31763&amp;limit=100">more than 70 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.2">everything we’ve fixed</a>.</p>\n<p><em>Test some emoji</em><br />\n<em>FTP and SSH</em><br />\n<em>Let&#8217;s &#8220;Press&#8221; some embeds!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/03/wordpress-4-2-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.2 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/03/wordpress-4-2-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2015/03/wordpress-4-2-beta-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 12 Mar 2015 23:22:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3446";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.2 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.2, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Drew Jaynes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4275:"<p>WordPress 4.2 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.2, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.2-beta1.zip">download the beta here</a> (zip).</p>\n<p>4.2 is due out next month, but to get there, we need your help testing what we&#8217;ve been working on:</p>\n<ul>\n<li><strong>Press This</strong> has been completely revamped to make sharing content from around the web easier than ever. The new workflow is mobile friendly, and we&#8217;d love for you to try it out on all of your devices. Navigate to the Tools screen in your WordPress backend to get started (<a href="https://core.trac.wordpress.org/ticket/31373">#31373</a>). </li>\n<li><strong>Browsing and switching installed themes</strong> has been added to the Customizer to make switching faster and more convenient. We&#8217;re especially interested to know if this helps streamline the process of setting up your site (<a href="https://core.trac.wordpress.org/ticket/31303">#31303</a>).</li>\n<li>The workflow for <strong>updating and installing plugins</strong> just got more intuitive with the ability to install or update in-place from the Plugins screens. Try it out and let us know what you think! (<a href="https://core.trac.wordpress.org/ticket/29820">#29820</a>)</li>\n<li>If you felt like <strong>emoji</strong> were starkly missing from your content toolbox, worry no more. We&#8217;ve added emoji support nearly everywhere, even post slugs <img src="https://s.w.org/images/core/emoji/72x72/1f44d.png" alt="', 'no'),
(143, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1429672002', 'no'),
(144, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1429628802', 'no'),
(145, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1429672004', 'no');
INSERT INTO `wp_3_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(146, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Matt: Intermittent Fasting";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44966";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"http://ma.tt/2015/04/intermittent-fasting/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:995:"<p>I&#8217;m going to try out intermittent fasting for a few weeks, after hearing about it for several years from fit-minded friends. It&#8217;s tough to find a link on it that doesn&#8217;t have some sort of newsletter popup or sell an ebook, but <a href="http://fourhourworkweek.com/2008/03/02/postponing-death-caloric-restriction-vs-intermittent-fasting-part-1/">Tim had a good guest post on it in 2008</a> which ends on a skeptical note, and this <a href="http://jamesclear.com/the-beginners-guide-to-intermittent-fasting">beginner&#8217;s guide to intermittent fasting by James Clear</a> is awesome for its graphics and straightforward way of introducing the concept and ways to approach it. I&#8217;m going to aim for a late lunch and a normal-timed dinner, since like James dinner is often my most social meal.</p>\n<p><strong>Update:</strong> <a href="http://ma.tt/2015/01/fasting/">I also forgot that I wrote about this with a few more links and some good comments in January</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 21 Apr 2015 04:24:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"WPTavern: Applications to Host WordCamp Europe 2016 Closing Soon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42413";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"http://wptavern.com/applications-to-host-wordcamp-europe-2016-closing-soon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3141:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/wceu-volunteers.jpg" rel="prettyphoto[42413]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/wceu-volunteers.jpg?resize=1025%2C485" alt="wceu-volunteers" class="aligncenter size-full wp-image-31631" /></a></p>\n<p><a href="http://wptavern.com/seville-spain-to-host-wordcamp-europe-2015" target="_blank">WordCamp Europe 2015</a> will be held at the end of June in Seville, Spain, but organizers are already finalizing host city applications for the 2016 event. A <a href="http://europe.wordcamp.org/2015/call-for-applications-to-organise-wordcamp-europe-2016-closes-in-5-days/" target="_blank">final call</a> for host cities went out today and organizers announced that applications will close on Friday, April 24.</p>\n<p>This highly anticipated WordPress event is expected to bring in roughly 1,000 attendees from around the world. Such a massive undertaking requires a revolving planning process that prepares for the next year&#8217;s event while simultaneously planning the current year.</p>\n<p>Organizers for 2016 will be required to attend and assist in organizing the 2015 event as part of the <a href="http://wptavern.com/wordcamp-europe-now-taking-applications-for-2016-host-city" target="_blank">new organizer mentoring program</a> the team is piloting this year. Candidates must demonstrate excellent communication skills and become a reliable point of contact before being selected to the learn the ropes for the 2016 event.</p>\n<p>&#8220;We think it&#8217;s important for next year&#8217;s team to get involved in this year&#8217;s organization,&#8221; co-organizer Petya Raykovska said. &#8220;That&#8217;s why we started early and one of the requirements for the applying teams is to be available to join the team in Seville if chosen.&#8221;</p>\n<p>WordPress representatives in cities vying for the chance to host WCEU 2016 are required to complete a budget for each proposed venue and a detailed application form, which includes a team member summary, transportation and hotel information, and several other aspects of the event.</p>\n<p>&#8220;Compiling the application takes time and it&#8217;s understandable they&#8217;ll all come in the last week,&#8221; Raykovska said. She and other members of the organization team have been in contact with several local WordPress communities that will be applying, as the prospect can be somewhat daunting given the level of detail required.</p>\n<p>&#8220;Some teams need a bit of a nudge to feel confident enough to apply, even if they&#8217;ve done exceptional work organizing their local events,&#8221; she said.</p>\n<p>The host city for WCEU 2016 will be selected by mid-May, which will give the new organizers enough time to get involved in the most active and important stages of the 2015 event. A sample budget and application form are <a href="http://europe.wordcamp.org/2015/call-for-applications-to-organise-wordcamp-europe-2016-closes-in-5-days/" target="_blank">available on the WordCamp Europe website</a>. Local European WordPress communities have five remaining days to apply.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 20 Apr 2015 22:18:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:88:"WPTavern: GitHub Launches Licenses API to Help Open Source Developers License Their Code";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42389";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"http://wptavern.com/github-launches-licenses-api-to-help-open-source-developers-license-their-code";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4884:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/github-octocat.jpg" rel="prettyphoto[42389]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/github-octocat.jpg?resize=857%2C400" alt="github-octocat" class="aligncenter size-full wp-image-42456" /></a></p>\n<p>Open source software makes up the vast majority of licensed code hosted on <a href="https://github.com" target="_blank">GitHub</a>, as one of the primary features of the site is code sharing and collaboration. In of April 2015, GitHub reported <a href="https://github.com/about/press" target="_blank">9.2 million users collaborating across 21.8 million repositories</a>. For the past seven years since the site&#8217;s launch, one of the most difficult challenges has been getting users to add a license to their projects.</p>\n<p>Recent <a href="https://github.com/blog/1964-open-source-license-usage-on-github-com" target="_blank">open source license usage stats</a> show MIT, GPL, and Apache licenses coming in as the most popular choices with 44.69%, 12.96%, and 11.19% respectively. However, GitHub&#8217;s reckoning shows that licensing numbers are still very low and continue to drop. Only 20% of unforked repositories on the site are currently licensed (30% if you count forked repositories.)</p>\n<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/percentage-of-github-repositories-licensed.png" rel="prettyphoto[42389]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/percentage-of-github-repositories-licensed.png?resize=762%2C445" alt="credit: GitHub.com" class="size-full wp-image-42417" /></a>credit: <a href="https://github.com/blog/1964-open-source-license-usage-on-github-com">GitHub.com</a>\n<p>Last month GitHub launched its <a href="https://developer.github.com/v3/licenses/" target="_blank">Licenses API</a> in order to combat the continual decline in licensing numbers. &#8220;We want to make it easier for open source developers to license their code, and for open source consumers to verify that they are using open source projects under an appropriate license,&#8221; the announcement said.</p>\n<p>The new Licenses API returns metadata about popular open source licenses and can detect a project&#8217;s license from the repository&#8217;s <code>LICENSE</code> file. Developers are welcome to preview the API while it&#8217;s still under development. Ultimately, GitHub is aiming to use the API to collect and provide more information about the open source licenses in use on the site, as well as the projects that are using them.</p>\n<p>When a project doesn&#8217;t possess a license, it&#8217;s difficult for others to know what their freedoms and limitations are for reproducing, distributing, and modifying the code. Many companies have very strict licensing requirements when it comes to the code they choose to include in their projects.</p>\n<p>In an effort to encourage users to add a license to their projects, GitHub created a handy tool called <a href="http://choosealicense.com/" target="_blank">ChooseALicense.com</a> that helps users select from the more popular open source licenses. The site uses plain language to make it easy to understand what is required, permitted, and forbidden for each license:</p>\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/gpl3-license-info-github.png" rel="prettyphoto[42389]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/gpl3-license-info-github.png?resize=923%2C161" alt="gpl3-license-info-github" class="aligncenter size-full wp-image-42450" /></a></p>\n<p>Repositories with licenses had bottomed out at around 15% on GitHub shortly before it <a href="https://github.com/blog/1530-choosing-an-open-source-license" target="_blank">launched the license picker tool</a>. The sharp increase in licensing in 2013 in the graph above can be attributed to <a href="http://choosealicense.com/" target="_blank">ChooseALicense.com</a>. Unfortunately, over the past two years the number of licensed repositories began to decline again.</p>\n<p>Adding a license to your project is fundamental to sharing your code and empowering others to use it. Open source developers with struggling projects often complain about a lack of contribution. One of the most important things you can do to help your project get a good start is to carefully select an open source license that will be well-suited to the community you&#8217;re trying to build.</p>\n<p>GitHub is aiming to provide more in-depth analysis in the coming weeks using data from the new Licenses API, and also plans to publish how license usage affects project success. If you&#8217;re struggling to select a license for a project that you maintain, check out GitHub&#8217;s <a href="https://help.github.com/articles/open-source-licensing/" target="_blank">Guide to Open Source Licensing</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 20 Apr 2015 20:33:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"WPTavern: XSS Vulnerability Affects More Than a Dozen Popular WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42387";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"http://wptavern.com/xss-vulnerability-affects-more-than-a-dozen-popular-wordpress-plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8103:"<p>For the past week, security firm <a title="https://blog.sucuri.net/" href="https://blog.sucuri.net/">Sucuri</a> has <a title="https://blog.sucuri.net/2015/04/security-advisory-xss-vulnerability-affecting-multiple-wordpress-plugins" href="https://blog.sucuri.net/2015/04/security-advisory-xss-vulnerability-affecting-multiple-wordpress-plugins">worked with the WordPress core security team</a> to address a cross site scripting vulnerability discovered in more than a dozen popular WordPress plugins. The vulnerability stems from the improper use of the <a title="https://codex.wordpress.org/Function_Reference/add_query_arg" href="https://codex.wordpress.org/Function_Reference/add_query_arg"><i>add_query_arg()</i></a> and <a title="https://codex.wordpress.org/Function_Reference/remove_query_arg" href="https://codex.wordpress.org/Function_Reference/remove_query_arg"><i>remove_query_arg()</i></a> functions. Inaccurate information within the WordPress Codex lead many developers to assume these functions would properly escape user input.</p>\n<p>The Codex pages were created in 2009, but earlier this year, Samuel &#8216;Otto&#8217; Wood updated both pages to include information on using esc_url(). Inaccurate information has existed on both pages for more than five years, leading hundreds, if not thousands, of developers to use insecure code in plugins.</p>\n<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/UpdatingTheCodex.png" rel="prettyphoto[42387]"><img class="wp-image-42392 size-full" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/UpdatingTheCodex.png?resize=940%2C607" alt="The Updated Codex Pages" /></a>The Updated Codex Pages\n<p>The vulnerability was <a title="https://yoast.com/coordinated-security-release/" href="https://yoast.com/coordinated-security-release/">first reported by Joost de Valk</a> who has an excellent post describing the issue. Sucuri worked with Yoast and discovered the problem affects a lot more plugins than just WordPress SEO. Sucuri has audited the top 300-400 plugins in the directory and found at least 15 plugins to contain vulnerable code.</p>\n<ul>\n<li><a title="http://jetpack.me/2015/04/20/jetpack-3-4-3-coordinated-security-update/" href="http://jetpack.me/2015/04/20/jetpack-3-4-3-coordinated-security-update/">Jetpack</a></li>\n<li><a href="https://yoast.com/coordinated-security-release/">WordPress SEO</a></li>\n<li><a title="https://yoast.com/google-analytics-5-4-notes/%" href="https://yoast.com/google-analytics-5-4-notes/%">Google Analytics</a></li>\n<li><a title="http://semperfiwebdesign.com/blog/update-to-all-in-one-seo-pack-to-patch-security-vulnerability/" href="http://semperfiwebdesign.com/blog/update-to-all-in-one-seo-pack-to-patch-security-vulnerability/">All In one SEO</a></li>\n<li><a title="http://www.gravityhelp.com/gravity-forms-v1-9-6-released/" href="http://www.gravityhelp.com/gravity-forms-v1-9-6-released/">Gravity Forms</a></li>\n<li>Multiple Plugins from <a href="https://easydigitaldownloads.com/?p=500387">Easy Digital Downloads</a></li>\n<li><a title="https://updraftplus.com/updraftplus-1-9-64-2-9-64/" href="https://updraftplus.com/updraftplus-1-9-64-2-9-64/">UpdraftPlus</a></li>\n<li><a title="https://wpecommerce.org/news/important-security-release-for-all-wp-ecommerce-users/" href="https://wpecommerce.org/news/important-security-release-for-all-wp-ecommerce-users/">WP e-Commerce</a></li>\n<li>WPTouch</li>\n<li>Download Monitor</li>\n<li>P3 Profiler</li>\n<li><a title="https://wordimpress.com/how-open-source-benefits-web-security/" href="https://wordimpress.com/how-open-source-benefits-web-security/">Give</a></li>\n<li><a title="https://ithemes.com/2015/04/20/coordinated-wordpress-plugin-security-update/" href="https://ithemes.com/2015/04/20/coordinated-wordpress-plugin-security-update/">iThemes Exchange</a></li>\n<li>Broken-Link-Checker</li>\n<li><a title="https://ninjaforms.com/security-release-v2-9-11/" href="https://ninjaforms.com/security-release-v2-9-11/">Ninja Forms</a></li>\n<li><a title="http://aesopstoryengine.com/releases/security-release-1-6-1/" href="http://aesopstoryengine.com/releases/security-release-1-6-1/">Aesop Story Engine</a></li>\n<li><a title="https://www.joedolson.com/2015/04/important-security-fix-for-my-calendar/?utm_content=bufferdc550&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer" href="https://www.joedolson.com/2015/04/important-security-fix-for-my-calendar/?utm_content=bufferdc550&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer">My Calendar</a></li>\n</ul>\n<p>With over <a title="https://wordpress.org/plugins/" href="https://wordpress.org/plugins/">37,000 plugins in the directory</a>, 400 is just scratching the surface. Gary Pendergast, who is helping to manage the coordinated effort says, he doesn&#8217;t have an official headcount of the number of plugins affected. &#8220;There is no official head count on how many plugins are affected, as it’s a case-by-case thing to check.&#8221; Some of the vulnerable plugins within the list have opted-out of automatic updates. &#8220;Jetpack, EDD, P3, Download Monitor and Related Posts for WP opted-in to auto updates. I didn’t keep track of who opted out,&#8221; he said.</p>\n<p>So far, there is no evidence that suggests the vulnerability is being actively exploited. It&#8217;s extremely important that plugin authors revisit your code to make sure you&#8217;re not improperly using the <a title="https://codex.wordpress.org/Function_Reference/add_query_arg" href="https://codex.wordpress.org/Function_Reference/add_query_arg"><i>add_query_arg()</i></a> and <a title="https://codex.wordpress.org/Function_Reference/remove_query_arg" href="https://codex.wordpress.org/Function_Reference/remove_query_arg"><i>remove_query_arg()</i></a> functions. The Make WordPress Plugins site <a title="https://make.wordpress.org/plugins/2015/04/20/fixing-add_query_arg-and-remove_query_arg-usage/" href="https://make.wordpress.org/plugins/2015/04/20/fixing-add_query_arg-and-remove_query_arg-usage/">has a post</a> that provides in-depth information on how to check and fix your plugins.</p>\n<h2>This Vulnerability is Not New</h2>\n<p>Mike Jolley, lead developer for <a title="http://www.woothemes.com/" href="http://www.woothemes.com/">WooThemes</a>, published a post in 2013 on the use of <a title="http://mikejolley.com/2013/12/use-wordpress-url-manipulation-functions/" href="http://mikejolley.com/2013/12/use-wordpress-url-manipulation-functions/">WordPress&#8217; URL manipulation functions</a>. The post features <a title="https://codex.wordpress.org/Function_Reference/add_query_arg" href="https://codex.wordpress.org/Function_Reference/add_query_arg"><i>add_query_arg()</i></a> and <a title="https://codex.wordpress.org/Function_Reference/remove_query_arg" href="https://codex.wordpress.org/Function_Reference/remove_query_arg"><i>remove_query_arg()</i></a>, but near the end of the post, Jolly reminds developers to escape everything.</p>\n<blockquote><p>This caught me out a few weeks ago when I found out (the hard way) that WordPress doesn’t automatically sanitize the current URL if you don’t pass in your own. You need to use esc_url during output:</p>\n<p>echo esc_url( add_query_arg( $key, $value ) );</p>\n<p>If you forget to do this, a malicious URL, for example one containing some JavaScript, could potentially be output and executed on your page. Escape all the things to be safe!</p></blockquote>\n<h2>Battle Testing the Automatic Updater</h2>\n<p>To date, this is the largest coordinated effort between an outside party, the WordPress core and security teams, and plugin developers. According to Sucuri, affected plugin developers banded together for the common good. Pendergast confirmed that the auto updates only contain code needed to fix the security vulnerability. This should limit the possibility of auto updates breaking sites.</p>\n<p>The plugins listed above have already been patched and updates should be available to all users. Browse to <strong>Dashboard &#8211; Updates</strong> to check for and install any available updates.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 20 Apr 2015 17:19:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:107:"Post Status: Coordinated plugin updates to address security vulnerability in many popular WordPress plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=12357";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:118:"https://poststatus.com/coordinated-plugin-updates-to-address-security-vulnerability-in-many-popular-wordpress-plugins/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9949:"<p>The common vulnerability that triggered a coordinated plugin update of many popular plugins this morning is caused by a lack of escaping of two WordPress functions, <code>add_query_arg()</code> and <code>remove_query_arg()</code>.</p>\n<p>It appears it was a common misunderstanding that the functions needed additional escaping when in use, and the WordPress Codex documentation for the functions did not show proper escaping in the example use cases for several years.</p>\n<p>The exact number of plugins affected is unknown, but a number of <a title="The most popular WordPress plugins" href="https://poststatus.com/popular-wordpress-plugins/">the most popular WordPress plugins</a> are affected.</p>\n<p>The vulnerability was originally disclosed to the team at Yoast by Johannes Schmitt of Scrutinizer CI. Joost de Valk took the issue to their security partner, Sucuri, and together they understood that the issue could affect far more than plugins than WordPress SEO and Google Analytics by Yoast.</p>\n<p>They worked with WordPress lead developer and WordPress.org plugin team member Dion Hulse to evaluate how many other top plugins may be vulnerable. Combined, Joost <a href="https://yoast.com/coordinated-security-release/">notes in his security notice post</a> that 44 people joined a dedicated WordPress Slack channel to work on the updates, which resulted in the coordinated release.</p>\n<h3>Millions of websites affected</h3>\n<p>Millions of websites are vulnerable due to this issue. Jetpack and Yoast&#8217;s WordPress SEO alone are active on well over a million websites.</p>\n<p><a href="https://blog.sucuri.net/2015/04/security-advisory-xss-vulnerability-affecting-multiple-wordpress-plugins">Sucuri has identified</a> a minimum of fifteen plugins affected, but they note they&#8217;ve only looked into the top &#8220;300-400&#8243; and others that were notable.</p>\n<p>In all likelihood, many more plugins than those listed will have similar vulnerabilities. <code>add_query_arg()</code> and <code>remove_query_arg()</code> are relatively common functions in advanced WordPress development.</p>\n<h3>Not always a high risk vulnerability</h3>\n<p>It&#8217;s hard to speak for exactly how high risk the mis-use of the functions could be, as they are used in different ways in different plugins; and even within a certain plugin codebase, they could be used many times and have different risk levels in each instance.</p>\n<p>Escaping is a fundamental development principal. One of my favorite coffee mugs (pictured above) is from WordPress.com VIP and says, &#8220;Sanitize early, escape late, and drink often.&#8221;</p>\n<p>It is therefore concerning that there was such broad misuse of a WordPress function for so long, and it went unchecked in the Codex.</p>\n<p>The Codex previously had examples without escaping, and it had no indication whether the return value was escaped or not. It simply stated that the return value as, &#8220;New URL query string.&#8221;</p>\n<p>This has been updated, both in the examples and the return value section, to note that it can potentially return unescaped data.</p>\n<blockquote><p>New URL query string. Note that this string may contain unescaped data not intended for a URL, especially if the data added comes from user input. The result should be passed through esc_url() before being output as HTML, in a link.</p></blockquote>\n<p>That said, of the developers I&#8217;ve spoken to, even with the vulnerabilities in place they say that the risk of exploitation is small, due to the privileges required of users to attack. Though it is important to note that <em>that is no guarantee</em>, and it is important to update your plugins if you have updates available.</p>\n<p>The Codex is a wiki. It&#8217;s not a fundamental issue of WordPress that this was poorly documented, however it does point to some of the problems that have been noted for some time in regard to the value of the Codex. In fact, just this morning the Codex page for <a href="https://developer.wordpress.org/reference/functions/add_query_arg/">add_query_arg()</a> was redirected to the new developer.wordpress.org page for the function instead.</p>\n<p>Eventually, the Codex will go away for most functions that can point to the <a href="https://developer.wordpress.org">new developer reference</a>.</p>\n<h3>Five plugins opting in to forced updates</h3>\n<p>Jetpack, Easy Digital Downloads, P3 Plugin Profiler, Download Monitor, and Related Posts for WordPress are all opting in to automated forced updates from WordPress.org. This means that these plugins have created new releases for each major branch of their plugins to be distributed and automatically updated by the WordPress.org team.</p>\n<p>Other plugins are not opting in. Notably, Yoast did not opt in for WordPress SEO or their Google Analytics plugin. Joost de Valk cites concerns that some site owners had their plugins deactivated during the <a href="https://yoast.com/wordpress-seo-security-release/">last forced upgrade process</a> they went through.</p>\n<p>Indeed, my own site has had plugins deactivate when forced updated each time it&#8217;s occurred. I took this issue to members of the WordPress.org update team, and was told that they believe it is an edge case occurrence, and that while they are monitoring new updates, there is not currently a plan to change practices for the updates. I will be very interested with the updates today how commonly this happens.</p>\n<h3>Other posts and resources</h3>\n<p>I will continue to collect plugin update posts, changelogs, and other resources for this update. If you run a WordPress website, these updates will likely affect you.</p>\n<p>There is no reason for panic or to be too concerned, but you should update your plugins as soon as you can to reduce your risk of vulnerability.</p>\n<ul>\n<li><a href="https://blog.sucuri.net/2015/04/security-advisory-xss-vulnerability-affecting-multiple-wordpress-plugins">Sucuri security notice</a></li>\n<li><a href="https://yoast.com/coordinated-security-release/">Yoast</a> post</li>\n<li><a href="http://jetpack.me/2015/04/20/jetpack-3-4-3-critical-security-update/">Jetpack</a> post</li>\n<li><a href="https://easydigitaldownloads.com/blog/security-fix-released/">Easy Digital Downloads</a> post</li>\n<li><a href="http://www.gravityhelp.com/gravity-forms-v1-9-6-released/">Gravity Forms</a> post</li>\n<li><a href="https://ninjaforms.com/security-release-v2-9-11/">Ninja Forms</a> post</li>\n<li><a href="https://wpecommerce.org/news/important-security-release-for-all-wp-ecommerce-users/">WP eCommerce</a> post</li>\n<li><a href="https://updraftplus.com/updraftplus-1-9-64-2-9-64/">UpdraftPlus</a> post</li>\n<li><a href="https://ithemes.com/2015/04/20/coordinated-wordpress-plugin-security-update/">iThemes Exchange</a> post</li>\n<li><a href="http://aesopstoryengine.com/releases/security-release-1-6-1/">Aesop Story Engine</a> post</li>\n<li><a href="https://wordpress.org/plugins/download-monitor/changelog/">Download Monitor</a> changelog</li>\n<li><a href="http://semperfiwebdesign.com/blog/all-in-one-seo-pack/all-in-one-seo-pack-release-history/">All In One SEO</a> changelog</li>\n<li><a href="https://www.joedolson.com/2015/04/important-security-fix-for-my-calendar/">My Calendar</a> post</li>\n<li><a href="https://github.com/WordImpress/Give/commit/b88fea00999534355e0a124d0b7c4d0cee164d39">Give</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/broken-link-checker/changelog/">Broken Link Checker</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/wptouch/changelog/">WPTouch</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/p3-profiler/changelog/">P3 Profiler</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/related-posts-for-wp/changelog/">Related Posts for WP</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/link-library/changelog/">Link Library</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/google-analytics-top-posts-widget/changelog/">Google Analytics Top Posts Widget</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/bilingual-linker/changelog/">Bilingual Linker</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/ultimate-member/changelog/">Ultimate Member</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/piklist/changelog/">Piklist</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/seriously-simple-podcasting/changelog/">Seriously Simple Podcasting</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/cachify/changelog/">Cachify</a> changelog</li>\n<li><a href="https://bbpress.org/blog/2015/04/bbpress-2-5-7-security-release/">bbPress</a> post</li>\n<li><a href="https://buddypress.org/2015/04/buddypress-2-2-3-security-release/">BuddyPress</a> post</li>\n<li><a href="https://wordpress.org/plugins/buddydrive/changelog/">BuddyDrive</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/sprout-invoices/changelog/">Sprout Invoices</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/wp-idea-stream/changelog/">WP Idea Stream</a> changelog</li>\n<li><a href="https://github.com/churchthemes/church-theme-content/releases/tag/1.3.2">Church Themes Content</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/apppresser/changelog/">AppPresser</a> changelog</li>\n<li><a href="https://plugins.trac.wordpress.org/changeset/1139792/wp-to-twitter/tags/3.0.6/wpt-feed.php?old=1129896&old_path=wp-to-twitter%2Ftags%2F3.0.5%2Fwpt-feed.php">WP to Twitter</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/wp-print-friendly/changelog/">WP Print Friendly</a> changelog</li>\n<li><a href="https://github.com/thomasgriffin/TGM-Plugin-Activation/commit/5420ef032cf6eae3dd73be0575bfa978837e047e">TGM plugin activation</a> changelog</li>\n<li><a href="https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/changelog/">All In One WP Security</a> changelog</li>\n</ul>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 20 Apr 2015 17:00:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Matt: Hit the Road by MAJOR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44964";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"http://ma.tt/2015/04/hit-the-road-by-major/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:140:"<p>A cool new track from an up-and-coming artist MAJOR with a fun, soulful vibe. Major and I went to school together in Houston.</p>\n<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 19 Apr 2015 22:39:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"Matt: Amazing Cover of Radiohead’s Creep";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44950";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://ma.tt/2015/04/amazing-cover-of-radioheads-creep/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:42:"<p><span class="embed-youtube"></span></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 19 Apr 2015 04:43:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Matt: Intuit Fighting Simpler Tax Returns";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44957";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://ma.tt/2015/04/intuit-fighting-simpler-tax-returns/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:238:"<p><a href="http://www.propublica.org/article/turbotax-maker-linked-to-grassroots-campaign-against-free-simple-tax-filing">TurboTax Maker Linked to ‘Grassroots’ Campaign Against Free, Simple Tax Filing</a>. That&#8217;s just evil.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 18 Apr 2015 03:30:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"WPTavern: WordCamp Belgrade Will Be Streaming Live Saturday, April 18";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42213";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"http://wptavern.com/wordcamp-belgrade-will-be-streaming-live-saturday-april-18";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1841:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/wordcamp-belgrade.jpg" rel="prettyphoto[42213]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/wordcamp-belgrade.jpg?resize=1025%2C487" alt="wordcamp-belgrade" class="aligncenter size-full wp-image-41363" /></a></p>\n<p><a href="http://belgrade.wordcamp.org/2015/" target="_blank">WordCamp Belgrade</a> will take place this weekend, April 18-19. Two years ago the WordPress community in Serbia was virtually non-existent but has <a href="http://wptavern.com/a-glimpse-into-serbias-rapidly-growing-wordpress-community" target="_blank">grown rapidly</a> and is now large enough to host the very first WordCamp in Belgrade. Registration kicks off at 8AM tomorrow morning where organizers will debut <a href="http://wptavern.com/meet-wapuujlo-official-mascot-of-wordcamp-belgrade" target="_blank">Wapuujlo</a>, the official mascot of the event.</p>\n<p>WordCamp Belgrade features speakers from around Europe and 8/10 of the <a href="http://belgrade.wordcamp.org/2015/schedule/" target="_blank">presentations</a> will be in English. Topics include Building SaaS with WordPress, A/B testing and usability testing, Git Tricks, the WP REST API, and more.</p>\n<p>Tickets are no longer available, since the event completely sold out, but those who cannot attend can still catch the presentations live. The organizers will offer free live streaming of the event starting at <a href="http://time.is/compare/0900AM_18_Apr_2015_in_Belgrade" target="_blank">9AM in Belgrade</a> (1 AM EST). The link for live streaming will be posted to the <a href="http://belgrade.wordcamp.org/" target="_blank">WordCamp Belgrade homepage</a>, and you can also follow the <a href="https://twitter.com/hashtag/wcbg?src=hash" target="_blank">#wcbg</a> hashtag on Twitter for updates.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 18 Apr 2015 00:09:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WPTavern: Confessions of a WordPress Trac Ticket Lobbyist";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42322";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://wptavern.com/confessions-of-a-wordpress-trac-ticket-lobbyist";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5149:"<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/RobertDall.jpg" rel="prettyphoto[42322]"><img class="wp-image-42348 size-medium" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/RobertDall.jpg?resize=300%2C199" alt="Robert Dall" /></a>Robert Dall\n<p>This post was contributed by <a title="http://robertdall.com/" href="http://robertdall.com/">Robert Dall</a>. Studying web design in college, he stumbled upon WordPress.com early in his career. Dall made the natural progression from WordPress.com to the self-hosted version of WordPress. Since then, he&#8217;s worked almost exclusively with WordPress using it as a blog, CMS, portfolio, and e-commerce. He&#8217;s also an avid photographer.</p>\n<hr />\n<p>Coming in WordPress 4.2 is something that has been long overdue and something I have encountered as a former photographer working with WordPress. When you import a photo into WordPress that has IPTC data, the caption populates the description field and not the caption field.</p>\n<p>This is mainly due to the fact that the <a title="Website of the IPTC and it''s standards for photo metadata" href="https://iptc.org/standards/photo-metadata/">IPTC</a> (International Press Telecommunications Council) calls the caption the description. When WordPress integrated all of the camera metadata (also called EXIF meta data) and caption data, they mistakenly populated the caption field into the wrong field.</p>\n<p>In <a title="http://ottopress.com/2011/picasa-and-wordpress-and-captions/" href="http://ottopress.com/2011/picasa-and-wordpress-and-captions/">this blog post</a>, Samuel “Otto” Wood points out the problem and created a plugin to address the issue. While this is a good fix for projects like the new <a title="Art Wolfe website" href="http://artwolfe.com/">Art Wolfe</a> website, I knew WordPress could be easier to use for photographers who use the IPTC data fields. Those who don’t wouldn&#8217;t notice a change.</p>\n<h2>The Benefits of This Small Change</h2>\n<p>I think media organizations that use WordPress and those that might in the future, will benefit from this industry standard being properly integrated into something that powers more than 20% of the internet.</p>\n<p>Photography plugin developers such as <a title="WooCommerce Photography Plugin" href="http://www.woothemes.com/products/woocommerce-photography/" target="_blank">WooCommerce Photography,</a> could really benefit from this small change to core as similar plugins inherently use the built-in media uploader in WordPress. The problem is that it requires unit tests to be written and some changes to WordPress core, stuff that is well beyond my WordPress knowledge.</p>\n<p>The <a href="http://artwolfe.com/">Art Wolfe</a> project has allowed me to work with a great WordPress developer named <a title="Sergey Biryukov" href="https://profiles.wordpress.org/SergeyBiryukov" target="_blank">Sergey Biryukov</a>. I knew if I gathered enough interest in a patch, I could approach Biryukov with the idea that we might get this fix into WordPress and put a <a title="Use Exif description to autofill the caption" href="https://core.trac.wordpress.org/ticket/7580">seven-year-old trac ticket</a> to bed.</p>\n<h2>What I Did to Get This Issue Fixed</h2>\n<p>I didn’t write a lick of code, write the ticket, and no props are coming my way, nor should they. It was <a title="https://core.trac.wordpress.org/changeset/31694" href="https://core.trac.wordpress.org/changeset/31694">Biryukov</a> who wrote the final patch and got it committed with props to <a title="https://profiles.wordpress.org/beaulebens" href="https://profiles.wordpress.org/beaulebens">@beaulebens</a>, <a title="https://profiles.wordpress.org/ericlewis" href="https://profiles.wordpress.org/ericlewis">@ericlewis</a>, and <a title="https://profiles.wordpress.org/bendoh" href="https://profiles.wordpress.org/bendoh">@bendoh</a>.</p>\n<p>I attended every core meeting until it was committed. Whenever there was an “open discussion” time during the meeting, I mentioned the ticket. I also let Drew Jaynes, 4.2 release lead and former photographer, know of my intentions. I tested the patch on a number of <a title="WordPress gallery plugins " href="https://core.trac.wordpress.org/ticket/22768#comment:20">heavily used photography plugins</a> to see if there would be any adverse impact on them. Subsequently, I haven’t found any that were directly attributed to the patch.</p>\n<p>Since I am mainly self-employed, I had the ability to lobby this ticket during what would be considered working hours and, like <a title="Rick Ashley Never gonna give you up gif" href="http://robertdall.com/wp-content/uploads/2015/04/Never-gonna-give-you-up.gif" rel="prettyphoto[42322]">Rick Astley, “I was never going to give you up.” </a>So photographers rejoice! Caption information will be automatically imported into WordPress and your work flow of importing, editing, and captioning using the <a title="https://iptc.org/standards/photo-metadata/" href="https://iptc.org/standards/photo-metadata/">IPTC standard</a> will be completely integrated into WordPress.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Apr 2015 23:30:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"Post Status: The Excerpt Episode 4 — WordPress news with Daniel Espinoza";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=12337";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"https://poststatus.com/the-excerpt-episode-4-wordpress-news-with-daniel-espinoza/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2013:"<p>Welcome to <a href="https://poststatus.com/category/draft/the-excerpt/">The Excerpt</a> Episode 4, part of the <a href="https://poststatus.com/category/draft/">Post Status Draft podcast</a>, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>. With The Excerpt, we cover a few of our favorite stories from the <a title="Post Status Membership Club" href="https://poststatus.com/club/">Post Status Club</a> over the last week or two. The primary goal is to keep it short and informational: we keep the podcast to around 15 minutes.</p>\n<p>In Episode 3, I&#8217;m joined by <a href="https://twitter.com/d_espi">Daniel Espinoza</a>, who is a WordPress developer with a focus on eCommerce, and he also owns <a href="http://shopplugins.com">ShopPlugins</a>, an eCommerce plugin marketplace for EDD and WooCommerce.</p>\n<p>Listen now:</p>\n<!--[if lt IE 9]><script>document.createElement(''audio'');</script><![endif]-->\n<a href="https://audio.simplecast.fm/10521.mp3">https://audio.simplecast.fm/10521.mp3</a>\n<p><a href="https://audio.simplecast.fm/10521.mp3">Direct Download</a></p>\n<p>Stories discussed:</p>\n<ul>\n<li><a title="WordPress versus Automattic" href="https://poststatus.com/resources/wordpress-versus-automattic/">Automattic versus WordPress</a></li>\n<li><a href="https://wordpress.org/news/2015/04/wordpress-4-2-release-candidate/">WordPress 4.2, RC 1</a></li>\n<li><a href="http://fusion.net/list/120532/5-real-futures-you-never-thought-possible-with-wp-api/">Clever use cases for the WordPress REST API</a></li>\n<li><a title="Tax day in the US" href="https://poststatus.com/notes/tax-day-in-the-us/">Taxes</a>! (members only)</li>\n<li><a href="https://www.ostraining.com/blog/general/marketing-saas/">Big marketing</a> for hosted website solutions. Also <a title="Mega marketing of hosted website solutions" href="https://poststatus.com/notes/mega-marketing-of-hosted-website-solutions/">in Notes</a> (members only)</li>\n</ul>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Apr 2015 20:47:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"WPTavern: BuddyPress 2.3 Will Improve Avatar Uploads with the New BP Attachments API";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42306";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:94:"http://wptavern.com/buddypress-2-3-will-improve-avatar-uploads-with-the-new-bp-attachments-api";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3381:"<p>BuddyPress contributors are polishing up new and existing APIs for the upcoming <a href="http://wptavern.com/buddypress-2-3-development-kicks-off-contributors-prioritize-work-on-new-apis" target="_blank">2.3 release</a>. For the past several months, core developer <a href="http://imathi.eu/" target="_blank">Mathieu Viet</a> (@imath) has been spearheading the effort to get the new Attachments API ready for 2.3 with the help of contributions and feedback from the core team.</p>\n<p>The <a href="https://buddypress.trac.wordpress.org/ticket/5429" target="_blank">Attachments API</a> is a new library that will allow developers to create components that have the ability to manage uploads. The first example of this API in action is a vastly improved core interface for uploading, cropping, and setting profile photos for users and groups. This new <a href="https://buddypress.trac.wordpress.org/ticket/6290" target="_blank">extensible avatar UI</a> landed in BP trunk yesterday.</p>\n<p>As you can see below, the new interface allows for the traditional image upload. It also adds the ability for users to access their device camera to capture a profile photo, if they are using a browser that supports <a href="http://caniuse.com/#feat=stream" target="_blank">getUserMedia</a>.</p>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/user-camera-capture.png" rel="prettyphoto[42306]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/user-camera-capture.png?resize=776%2C890" alt="user-camera-capture" class="aligncenter size-full wp-image-42330" /></a></p>\n<p>Administrators can also easily edit a member&#8217;s profile photo from the extended profile screen in the admin.</p>\n<p>For those who prefer the legacy interface, you can use a filter to disable the new UI. This allows you to still keep your BuddyPress core updated, even if you don&#8217;t want to add the new avatar interface to your community. Check out @imath&#8217;s <a href="https://bpdevel.wordpress.com/2015/04/17/a-good-way-to-shape-the-future-of-buddypress-attachments-is-to-take-care-of-avatars/" target="_blank">post</a> on the BuddyPress development blog for details on using the filter, as well as more information on the applicable templates and theme compatibility.</p>\n<p>One of the most exciting things about the new avatar UI is that plugin developers can easily extend it for their own unique purposes.</p>\n<p>&#8220;Regarding extensibility: In the long run, we want plugins to be able to add their own versions of the uploader, ideally with a minimal amount of work,&#8221; BP lead developer <a href="http://boone.gorg.es/" target="_blank">Boone Gorges</a> said in discussion on the <a href="https://buddypress.trac.wordpress.org/ticket/6290" target="_blank">ticket</a>. &#8220;@imath has already demonstrated that it&#8217;s not too difficult, and in the future I imagine that we&#8217;ll discover ways to make it even easier.&#8221;</p>\n<p>Gorges emphasized that the focus at the moment is to build a solid replacement for the avatar upload system in 2.3 and then work on continually improving the API over time.</p>\n<p>Check out the <a href="https://buddypress.trac.wordpress.org/milestone/2.3" target="_blank">roadmap</a> to view other specific tickets that are in progress for the 2.3 release, which should be available in six weeks at the end of May.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Apr 2015 19:33:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WPTavern: VersionPress 1.0 Sees the Light of Day";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42209";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wptavern.com/versionpress-1-0-sees-the-light-of-day";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4267:"<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/06/VersionPressFeaturedImage.png" rel="prettyphoto[42209]"><img class="size-full wp-image-24643" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/06/VersionPressFeaturedImage.png?resize=650%2C200" alt="Version Control Featured Image" /></a>Version Control Featured Image\n<p>In mid 2014, <a href="https://twitter.com/borekb">Borek Bernard</a> and <a href="https://twitter.com/JanVoracek">Jan Voráček</a> from the Czech Republic, <a title="http://wptavern.com/versionpress-hopes-to-bring-version-control-to-the-masses" href="http://wptavern.com/versionpress-hopes-to-bring-version-control-to-the-masses">launched a crowdfunding campaign</a> to fund the development of <a title="http://versionpress.net/" href="http://versionpress.net/">VersionPress</a>. VersionPress is a <strong>version control plugin</strong> for WordPress. It keeps the whole site in a Git repository enabling things like <strong>site-wide reverts, safe updates, </strong>and<strong> easy staging</strong>. Despite not reaching their funding goal, the team pressed on and <a title="http://blog.versionpress.net/2015/04/versionpress-1-0-released/" href="http://blog.versionpress.net/2015/04/versionpress-1-0-released/">has released the first stable version</a> to early backers of the project.</p>\n<p>I&#8217;ve been excited to try VersionPress ever since I learned about it last year. After downloading 1.0, I uploaded it to my test site hosted on BlueHost which is optimized for WordPress. When activated, it will go through a checklist to make sure the server meets the minimum requirements. The minimum requirements are as follows:</p>\n<ul>\n<li>PHP 5.3</li>\n<li>Execute external commands</li>\n<li>Git 1.9+ installed</li>\n<li>Write access on the filesystem</li>\n<li>db.php hook</li>\n<li>Not multisite</li>\n<li>Standard directory layout</li>\n<li>.gitignore</li>\n<li>.htaccess or web.config support</li>\n</ul>\n<p>Unfortunately, I&#8217;m unable to use VersionPress on my hosting account because it doesn&#8217;t have Git 1.9+ installed. I contacted BlueHost to see if it can be installed on the server and it can&#8217;t. If I want to use Git, I&#8217;d have to upgrade to a VPS or Dedicated hosting plan.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/VersionPressNeedsGit2.png" rel="prettyphoto[42209]"><img class="size-full wp-image-42309" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/VersionPressNeedsGit2.png?resize=1025%2C512" alt="VersionPress Needs Git" /></a>VersionPress Needs Git\n<p>If Git 1.9+ is not installed on a majority of shared webhosting servers, that&#8217;s a huge audience unable to use VersionPress. To be fair, functionally similar plugins such as <a title="https://revisr.io/" href="https://revisr.io/">Revisr</a> and <a title="http://www.presslabs.com/gitium/" href="http://www.presslabs.com/gitium/">Gitium</a> also require Git to be installed on the server. I asked Bernard why Git is needed to use the plugin, &#8220;To use Git was an important decision that enables all the nice things VersionPress provides but it also means that Git is required on the server, currently. In the future, we plan to relax this requirement but for version 1.0, Git is required,&#8221; Bernard said.</p>\n<p>VersionPress is only available through the <a title="http://versionpress.net/#get" href="http://versionpress.net/#get">Early Access Program</a> which is a cross between early access, crowd-funding, and a standard support plan. The team plans on releasing a new version approximately every three months.</p>\n<p>To say that I&#8217;m disappointed is an understatement. My excitement for VersionPress to be the undo button for WordPress is tempered due to not being able to use it on a live site. I could run Git on my local server, but I want to see how it works in a live environment. Although managed WordPress hosting has become a popular option, the majority of sites on the web use shared hosting. Hopefully, the team can come up with a way to use its plugin without Git being required on the same server where VersionPress is installed.</p>\n<p>If you know of a shared webhosting company that runs Git 1.9+ on its servers, tell us about them in the comments.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Apr 2015 18:14:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"Matt: Jiro Ono and René Redzepi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44961";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:47:"http://ma.tt/2015/04/jiro-ono-and-rene-redzepi/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:219:"<p>An interesting and thoughtful conversation over a cup of tea between two food masters of our time, Jiro Ono and René Redzepi, <a href="http://www.madfeed.co/">from the MAD site</a>. (WordPress-powered!)</p>\n<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Apr 2015 02:30:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: Documentation Post Type: A WordPress Plugin for Documenting Products";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42276";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"http://wptavern.com/documentation-post-type-a-wordpress-plugin-for-documenting-products";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2696:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/documentation.jpg" rel="prettyphoto[42276]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/documentation.jpg?resize=1025%2C519" alt="documentation" class="aligncenter size-full wp-image-42279" /></a></p>\n<p>A product&#8217;s documentation is usually a strong indicator of its quality, but creating docs is often the least exciting aspect of launching something new. Products that lack documentation can create a greater support burden, forcing you to write docs as a defensive measure after the fact.</p>\n<p>The free <a href="https://github.com/devinsays/documentation-post-type" target="_blank">Documentation Post Type</a> plugin may be just the push you need to get started writing docs without a lot of hassle. The plugin creates a custom post type for product documentation. The advantage of storing docs in a custom post type is that you&#8217;ll be able to easily organize, export, and maintain your documentation to be separate from your regular posts and pages.</p>\n<p>The Documentation Post Type plugin features the following:</p>\n<ul>\n<li>Registers a &#8220;documentation&#8221; post type</li>\n<li>Registers a &#8220;documentation-category&#8221; taxonomy</li>\n<li>Registers a &#8220;documentation-tag&#8221; taxonomy</li>\n<li>Registers a &#8220;product-tag&#8221; taxonomy</li>\n<li>Adds the post count to the admin dashboard</li>\n</ul>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/documentation-post-type.jpg" rel="prettyphoto[42276]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/documentation-post-type.jpg?resize=1025%2C559" alt="documentation-post-type" class="aligncenter size-full wp-image-42278" /></a></p>\n<p><a href="http://wptheming.com/" target="_blank">Devin Price</a>, owner of <a href="https://devpress.com/" target="_blank">DevPress</a>, created the plugin primarily for product documentation but encourages users to adapt it for any purpose. He created it based off of code from Gary Jones&#8217; <a href="https://github.com/GaryJones/Gamajo-Dashboard-Glancer" target="_blank">Dashboard Glancer</a> class and <a href="https://github.com/GaryJones/portfolio-post-type" target="_blank">Portfolio Post Type</a> plugin.</p>\n<p>The project also includes a Gruntfile.js and package.json file, which Price added for building translation files (.pot). If this isn&#8217;t necessary for your project, you can remove them from the plugin package. If you need a quick way to start documenting your products, download the zip file or <a href="https://github.com/devinsays/documentation-post-type" target="_blank">fork the plugin on GitHub</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Apr 2015 01:13:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:115:"WPTavern: Array Returns to Themeforest After Disappointing Experiences Selling on Creative Market and WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42143";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:125:"http://wptavern.com/array-returns-to-themeforest-after-disappointing-experiences-selling-on-creative-market-and-wordpress-com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6182:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/04/array.jpg" rel="prettyphoto[42143]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/04/array.jpg?resize=1025%2C519" alt="array" class="aligncenter size-full wp-image-20211" /></a></p>\n<p>The <a href="https://array.is/" target="_blank">Array</a> theme shop, founded by Mike McAlister, is celebrating one year since becoming a completely independent operation. Array, formerly known as Okay Themes, <a href="http://wptavern.com/okay-themes-pulls-out-of-themeforest-rebrands-as-array" target="_blank">pulled out of Envato&#8217;s marketplace last April</a> to rebrand and relaunch with the freedom to further build the business.</p>\n<p>At that time, McAlister said, “After fighting the good fight for five years, my body of work has officially outgrown the ThemeForest marketplace. Although it has been a great platform for starting my business, my own ethos and aspirations have evolved.”</p>\n<p>In a surprise about-face, Array is returning to Themeforest with a selection of themes and selling as a non-exclusive author. McAlister considers this an expansion of their independent shop, which has experimented with a number of different distribution channels.</p>\n<p>&#8220;The thing is, Themeforest dominates when it comes to market share,&#8221; he said in a recent <a href="https://array.is/a-year-in-review/" target="_blank">post</a> explaining the change. &#8220;<span class="pullquote alignleft">With all of the various avenues we tried, none came close to the reach or revenue that Themeforest has provided in years past.</span>&#8221;</p>\n<p>McAlister <a href="https://wpchat.com/t/array-is-moving-back-onto-themeforest/789/3?u=pollyplummer" target="_blank">replied</a> to a thread on WP Chat to clarify that the decision was not motivated by a lack of sales or desire to cut back on Array. Rather, they see Themeforest as an opportunity to increase exposure to the brand, despite the fact that Array will now make just $19 per theme sale on the marketplace while still attempting to provide quality support.</p>\n<p>&#8220;We’ve definitely been selling more themes at the $49 price point in the short term, but we’re still quantifying that data to see if it’s where we want to be ultimately,&#8221; McAlister said.</p>\n<h3>Drawbacks of Selling with WordPress.com and Creative Market</h3>\n<p>Even more interesting than Array&#8217;s move back to Themeforest are the insights McAlister shared about selling via other marketplaces. After exploring multiple avenues of distribution during the past year, he found the most significant drawbacks came with <a href="https://creativemarket.com/" target="_blank">Creative Market</a> and <a href="https://wordpress.com/" target="_blank">WordPress.com</a>.</p>\n<p>&#8220;The first few months of our time on Creative Market, we&#8217;ve only seen ~20 sales per month,&#8221; he said. &#8220;Although there is a ton of activity for other kinds of digital goods, the WordPress category simply doesn&#8217;t seem to be thriving.&#8221;</p>\n<p>Array&#8217;s experience with WordPress.com was similarly disappointing, due to the company&#8217;s recent promotion of free themes in the past several months and lengthy wait times in the approval queue.</p>\n<p>&#8220;The review process on WordPress.com is long,&#8221; McAlister said. &#8220;I’m not talking about weeks long, I’m talking about months long. Each Array theme review has taken at least a month, usually longer. Our latest theme for WP.com, Camera, took four months from the day I submitted it to the day it was released.&#8221;</p>\n<p>While his experience may not represent that of all theme authors on WordPress.com, the structure of the selling process makes it difficult for authors to build a reliable source of income.</p>\n<p>&#8220;At any rate, as you can imagine, releasing products this far apart makes it difficult to gain momentum, predict sales figures, and establish a reliable stream of income,&#8221; he said. &#8220;On top of that, because theme sales aren&#8217;t calculated until after the refund window has passed (understandably), it can be several months until you see return on a theme.&#8221;</p>\n<p>McAlister&#8217;s disappointing experiences with Creative Market and WordPress.com contributed to his decision to move back to Themeforest. Although Array is currently bringing in double the monthly revenue it was making on Themeforest previously, the shop still relies on outside distribution channels.</p>\n<p>&#8220;It would be super great if Array was suddenly wildly successful and we could just sell themes solely through the site and not rely on marketplaces, but that’s not the reality of the commercial theme world right now,&#8221; McAlister <a href="https://array.is/a-year-in-review/#comment-10012" target="_blank">said</a> in response to comments on his announcement.</p>\n<p>No marketplace is perfect and each has its own unique drawbacks, but Array&#8217;s experiences this past year re-established Themeforest as the clear winner for the shop&#8217;s current needs.</p>\n<blockquote><p>Furthermore, as <a href="http://philiparthurmoore.com/2015/02/26/themeforest/" target="_blank">poignantly stated</a> by Philip Moore recently, there exists no better or more accessible platform for developers to distribute commercial WordPress themes right now. WordPress.com isn&#8217;t accepting new partners, Creative Market doesn&#8217;t have a sustainable market for themes, and starting a new theme shop without an established following would be nothing more than an exercise in futility.</p></blockquote>\n<p>McAlister hopes that Array can have a positive impact on the Themeforest marketplace, instead of remaining among those that criticize from the sidelines.</p>\n<p>&#8220;Given that we spend a great deal of time crafting themes to high standards, in both form and function, we want to help further promote the idea of design-driven, feature-conscious themes, without sacrificing quality or selling your soul to the devil,&#8221; he said.</p>\n<p>&#8220;We want to show people that you can, in fact, make a living creating honest products.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Apr 2015 22:12:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"WPTavern: Cloudup Refreshes Its Web Interface and OSX 10.10 Desktop App";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42232";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"http://wptavern.com/cloudup-refreshes-its-web-interface-and-osx-10-10-desktop-app";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2358:"<p><a title="https://cloudup.com" href="https://cloudup.com">Cloudup</a>, the file storage and sharing service <a title="https://cloudup.com/blog/cloudup-automattic" href="https://cloudup.com/blog/cloudup-automattic">acquired by Automattic</a> in 2013, has <a title="https://cloudup.com/blog/the-new-look-crisp-clean-fresh" href="https://cloudup.com/blog/the-new-look-crisp-clean-fresh">refreshed its web interface</a>. Many of the changes are subtle and place more emphasis on your content.</p>\n<p>Stats and FAQ links have been moved under the account menu. On the desktop and mobile versions of the site, the add new file button is permanently fixed to the bottom right part of the screen. Streams have a better looking exit icon with less redundancy on the edit sidebar.</p>\n<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/CloudUpDesktopInterface.png" rel="prettyphoto[42232]"><img class="size-full wp-image-42240" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/CloudUpDesktopInterface.png?resize=1025%2C583" alt="CloudUp Dashboard Web Interface" /></a>Cloudup Dashboard Web Interface\n<p>Cloudup for OSX 10.10 looks more modern and is fully compatible with Yosemite. The service has also made some architectural enhancements to improve scalability and security. Details of these improvements are not available, but the service plans to publish them at a later date.</p>\n<p>I rarely visit the dashboard, but I appreciate these subtle changes. One thing I don&#8217;t like is having to click my avatar image to access the menu that contains account settings and other useful links. There&#8217;s nothing on the site that indicates this action is necessary. I think it should be a drop down menu to eliminate possible confusion. If not a drop down menu, then at least one text label next to my avatar image that when clicked, opens the menu.</p>\n<p>Cloudup continues to be a service I value and use almost every day to quickly upload and share images and since <a title="http://wptavern.com/jetpack-2-7-introduces-google-publicize-support-and-adds-cloudup-oembed" href="http://wptavern.com/jetpack-2-7-introduces-google-publicize-support-and-adds-cloudup-oembed">Jetpack supports oEmbeds</a> for Cloudup, embedding content into posts is easy. If you use Cloudup, let us know what you think of the service in the comments.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Apr 2015 22:12:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"WPTavern: WPWeekly Episode 188 – The Nearly Perfect WordPress Role Model";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wptavern.com?p=42217&preview_id=42217";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"http://wptavern.com/wpweekly-episode-188-the-nearly-perfect-wordpress-role-model";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3903:"<p><a title="http://marcuscouch.com/" href="http://marcuscouch.com/">Marcus Couch</a> and I didn&#8217;t have a guest on this week&#8217;s episode, so we used the time to get you caught up on the week&#8217;s headlines. We discussed the release of WordPress 4.2 RC1 and if all goes well, expect to see the release of 4.2 next Wednesday. If you use iThemes Security, you&#8217;ll want to update as soon as possible to fix a security vulnerability.</p>\n<p>Easy Digital Downloads celebrated its third birthday. We discussed the impacts successful software can have on people&#8217;s lives. Marcus and I both agree that Pippin Williamson, founder of Easy Digital Downloads, sets the bar when it comes to being a role model in the WordPress ecosystem. I closed out the show with a rant on how media companies fail to recognize the distinct differences between Automattic, WordPress.com, and WordPress.org.</p>\n<h2>Stories Discussed:</h2>\n<p><a title="https://wordpress.org/news/2015/04/wordpress-4-2-release-candidate/" href="https://wordpress.org/news/2015/04/wordpress-4-2-release-candidate/">WordPress 4.2 Release Candidate</a><br />\n<a title="http://wptavern.com/ithemes-patches-vulnerability-that-affects-all-versions-of-the-ithemes-security-plugin" href="http://wptavern.com/ithemes-patches-vulnerability-that-affects-all-versions-of-the-ithemes-security-plugin">iThemes Patches Vulnerability that Affects All Versions of the iThemes Security Plugin</a><br />\n<a title="http://scottbolinger.com/ionic-wordpress-app/" href="http://scottbolinger.com/ionic-wordpress-app/">Ionic WordPress App from Scott Bollinger on GitHub</a><br />\n<a title="http://wptavern.com/easy-digital-downloads-turns-3-years-old" href="http://wptavern.com/easy-digital-downloads-turns-3-years-old">Easy Digital Downloads Turns 3 Years Old</a><br />\n<a title="http://wptavern.com/quick-reference-guide-for-those-writing-about-wordpress" href="http://wptavern.com/quick-reference-guide-for-those-writing-about-wordpress">Quick Reference Guide For Those Writing About WordPress</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a title="https://wordpress.org/plugins/custom-post-type-calculator/" href="https://wordpress.org/plugins/custom-post-type-calculator/">Custom Post Type Calculator</a> allows you to create a multipurpose category based calculator and use it to calculate item amounts and values.</p>\n<p><a title="https://wordpress.org/plugins/time-lord/" href="https://wordpress.org/plugins/time-lord/">Time Lord</a> lets you make modifications to your content based on a set of time parameters. You can show or hide part of a post at a given point in the future, calculate age, and more.</p>\n<p><a title="https://wordpress.org/plugins/plugin-groups/" href="https://wordpress.org/plugins/plugin-groups/">Plugin Groups</a> allows you to organize plugins into groups. For example, if you use a group of extensions tied to an e-commerce plugin, you can group them  together for easy sorting. Read <a title="http://wptavern.com/group-and-filter-plugins-by-functionality-with-plugin-groups-by-calderawp" href="http://wptavern.com/group-and-filter-plugins-by-functionality-with-plugin-groups-by-calderawp">our review of Plugin Groups</a> to see it in action.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, April 22nd 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="http://www.wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #188:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Apr 2015 19:53:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:77:"WPTavern: Banking on WordPress: Matt Mullenweg Weighs in on Security Concerns";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42172";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"http://wptavern.com/banking-on-wordpress-matt-mullenweg-weighs-in-on-security-concerns";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4018:"<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/04/security-release.jpg" rel="prettyphoto[42172]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/04/security-release.jpg?resize=1024%2C505" alt="photo credit: Will Montague - cc" class="size-full wp-image-20655" /></a>photo credit: <a href="http://www.flickr.com/photos/willmontague/3813295674/">Will Montague</a> &#8211; <a href="http://creativecommons.org/licenses/by-nc/2.0/">cc</a>\n<p>If you follow WordPress topics on Quora, you may have noticed a popular question making the rounds regarding security. The <a href="http://www.quora.com/I-am-powering-a-banks-website-using-WordPress-What-security-measures-should-I-take" target="_blank">question</a> has been viewed more than 30,000 times:</p>\n<blockquote><p>I am powering a bank&#8217;s website using WordPress. What security measures should I take?</p></blockquote>\n<p>Ordinarily, such a question is a magnet for trollish responses and uninformed WordPress bashing. However, this time Quora users were delighted to find that Matt Mullenweg, co-creator of WordPress, dropped by to offer an <a href="http://www.quora.com/I-am-powering-a-banks-website-using-WordPress-What-security-measures-should-I-take/answer/Matt-Mullenweg" target="_blank">answer</a> to the question.</p>\n<p>Following a barrage of anti-WordPress remarks from other users, Mullenweg chimed in to clarify how WordPress can be used successfully in the banking industry.</p>\n<blockquote><p>I agree there&#8217;s probably not a ton of benefit to having the online banking / billpay / etc portion of a bank&#8217;s website on WordPress, however there is no reason you couldn&#8217;t run the front-end and marketing side of the site on WordPress, and in fact you&#8217;d be leveraging WordPress&#8217; strength as a content management platform that is flexible, customizable, and easy to update and maintain.</p></blockquote>\n<p>He follows it up with two simple tips for keeping WordPress secure, including making sure the software is updated diligently, and using strong passwords for all user accounts. Mullenweg also solicited examples of WordPress-powered bank websites on his <a href="http://ma.tt/2015/04/a-bank-website-on-wordpress/" target="_blank">post</a> highlighting his Quora response, and several commenters provided links to their work.</p>\n<p>WordPress is often singled out for security concerns, given its high profile and dominant CMS marketshare. The platform is also regularly the target of hackers looking to maximize the return on their efforts. According to Mullenweg, WordPress&#8217; security boils down to how you deploy it:</p>\n<blockquote><p>As the most widely used CMS in the world, many people use and deploy the open source version of WordPress in a sub-optimal and insecure way, but the same could be said of Linux, Apache, MySQL, Node, Rails, Java, or any widely-used software. It is possible and actually not that hard to run WordPress in a way that is secure enough for a bank, government site, media site, or anything.</p></blockquote>\n<p>In other words, the security of a WordPress-powered banking website depends entirely on whether or not its developers have the necessary security expertise to manage the technology in a responsible way.</p>\n<p>Even with all of the negative reactions to the Quora question, the other answers are important to consider, as it offers a window into how people perceive WordPress. Battling negative perceptions about security is one of the biggest challenges facing the platform today.</p>\n<p>The <a href="http://wptavern.com/fbi-warns-of-isil-defacement-attacks-on-wordpress-sites" target="_blank">recent rash of security vulnerabilities</a> popping up in some of WordPress&#8217; most popular plugins has exposed the need for better education on basic security measures, such as regularly updating your software. Hopefully, a few words of clarification from the project&#8217;s co-founder can go a long way towards building consumer confidence.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Apr 2015 03:43:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"WPTavern: Easy Digital Downloads Turns 3 Years Old";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42170";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wptavern.com/easy-digital-downloads-turns-3-years-old";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3932:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/03/EasyDigitalDownloadsFeaturedImage-e1429138648237.png" rel="prettyphoto[42170]"><img class="aligncenter size-full wp-image-40496" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/03/EasyDigitalDownloadsFeaturedImage-e1429138648237.png?resize=620%2C220" alt="EasyDigitalDownloadsFeaturedImage" /></a>Pippin Williamson, founder of <a title="https://easydigitaldownloads.com/" href="https://easydigitaldownloads.com/">Easy Digital Downloads</a>, <a title="https://pippinsplugins.com/three-years-of-building-an-ecommerce-platform/" href="https://pippinsplugins.com/three-years-of-building-an-ecommerce-platform/">looks back</a> on three years of building an e-Commerce product for WordPress. Williamson describes the last three years as containing some of the highest and lowest points of his life.</p>\n<p>Williamson acknowledged that without his dedicated team, the product wouldn&#8217;t be anywhere close to what it is today. For example, when EDD was first released, it contained 8,085 lines of PHP. Today, EDD has 64,195 lines of PHP, which is nearly an 800% increase.</p>\n<p>He describes what it was like to discover the first severe security vulnerability in EDD that didn&#8217;t require special knowledge to exploit:</p>\n<blockquote><p>On Valentine’s day, 2013, I was notified of a critical security flaw in Easy Digital Downloads that made it possible for someone to gain full admin access to EDD sites that were running a specific configuration of settings in the plugin. Exploiting the flaw was trivial and required no special knowledge of typical exploit methods. With the click of a button, any unauthenticated visitor could become a full admin.</p>\n<p>Realizing that flaw was out in the wild was <strong>terrifying</strong>, and I hated myself for allowing it to happen. Suddenly I was faced with the very real possibility of being the person responsible for the compromise of a large number of sites. To say that I slept poorly that night would be a vast understatement.</p></blockquote>\n<p>Besides the stats, growth, and personal experiences, the thing I find most impressive is the last part of the article where Williamson discusses the impact EDD has had on the lives of those who work on it.</p>\n<blockquote><p>Of all reasons to be happy about earning more, the one I like the most is the excellent set of opportunities that open up. I’m not talking about expensive cars, luxury vacations, fancy houses or anything of that nature. No, I’m referring to the opportunities to change peoples lives.</p></blockquote>\n<p>He shares the personal stories of Dan Griffiths, Chris Christoff, Sean Davis and others who are able to make a comfortable living thanks to the success of EDD.</p>\n<p>Griffiths was homeless for five years before he started contributing to EDD. After creating a few successful extensions for the <a title="https://easydigitaldownloads.com/blog/author/ghost1227/" href="https://easydigitaldownloads.com/blog/author/ghost1227/">marketplace</a>, he found himself in a welcoming community that valued his ideas and contributions. Through his involvement with EDD, he was able to move off the streets, become an active contributor to the project, and regularly attend WordCamps.</p>\n<p>I asked Williamson how long it took to come up with the words to describe the impact his product is having on people&#8217;s lives, <a title="https://twitter.com/pippinsplugins/status/588438395279515650" href="https://twitter.com/pippinsplugins/status/588438395279515650">he responded</a>, &#8220;It took all day.&#8221; If I were in his position, I too would likely have a difficult time putting the impact into words.</p>\n<p>All too often, I think we focus so much on the product that we forget about the impact it has on people&#8217;s lives. For Williamson and his team at EDD, the impact is well documented and celebrated.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Apr 2015 23:04:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Matt: A Bank Website on WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44952";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"http://ma.tt/2015/04/a-bank-website-on-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3110:"<p>There&#8217;s a thread on Quora asking &#8220;I am powering a bank&#8217;s website using WordPress. What security measures should I take?&#8221; The answers have mostly been ignorant junk along the lines of &#8220;Oh NOES WP is INSECURE! let me take my money out of that bank&#8221;, <a href="http://www.quora.com/I-am-powering-a-banks-website-using-WordPress-What-security-measures-should-I-take/answer/Matt-Mullenweg">so I wrote one myself</a>, which I&#8217;ve copied below.</p>\n<blockquote><p>I agree there&#8217;s probably not a ton of benefit to having the online banking / billpay / etc portion of a bank&#8217;s website on WordPress, however there is no reason you couldn&#8217;t run the front-end and marketing side of the site on WordPress, and in fact you&#8217;d be leveraging WordPress&#8217; strength as a content management platform that is flexible, customizable, and easy to update and maintain.</p>\n<p>In terms of security, there are a two simple points:</p>\n<ol>\n<li>Make sure you&#8217;re on the latest version of core and all the plugins you run, and update as soon as new version become available.</li>\n<li>Use strong passwords for all user accounts. For extra credit you could enable a 2-factor plugin, use <a href="http://jetpack.me/">Jetpack&#8217;s WordPress.com login system</a>, or restrict logged-in users to a certain IP range (like behind a VPN).</li>\n</ol>\n<p>If your host doesn&#8217;t handle it, make sure you stay up-to-date for everything in your stack as well from the OS on up. Most modern WP hosts handle this (and updates) for you, and of course you could always run your site on <a id="qlink_8whpnsgvws" class="qlink qtext_editor_link_text" href="http://vip.wordpress.com/">WordPress.com VIP</a> alongside some of the top sites in the world. If you use any non-core third party code, no harm in having a security firm audit the source as well (an advantage of using open source).</p>\n<p>For an example of a beautiful, responsive banking website built on WordPress, check out <a href="http://gcbaz.com/">Gateway Bank of Mesa AZ</a>. WordPress is also trusted to run sites for some of the largest and most security-conscious organizations in the world, including Facebook, SAP, Glenn Greenwald&#8217;s The Intercept, eBay, McAfee, Sophos, GNOME, Mozilla, MIT, Reuters, CNN, Google Ventures, NASA, and literally hundreds more.</p>\n<p>As the most widely used CMS in the world, many people use and deploy the open source version of WordPress in a sub-optimal and insecure way, but the same could be said of Linux, Apache, MySQL, Node, Rails, Java, or any widely-used software. It is possible and actually not that hard to run WordPress in a way that is secure enough for a bank, government site, media site, or anything.</p>\n<p>If you wanted any help on this feel free to reach out to Automattic as well, we have a decade of experience now dealing with high-risk, high-scale deployments, and also addressing the sort of uninformed FUD you see in this thread.</p></blockquote>\n<p>If you&#8217;ve developed a major bank site in WordPress leave a link in the comments.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Apr 2015 19:19:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:87:"WPTavern: WooCommerce Dominates Global E-Commerce Platforms, Passes 7 Million Downloads";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"http://wptavern.com/woocommerce-dominates-global-e-commerce-platforms-passes-7-million-downloads";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4306:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/woo-commerce.png" rel="prettyphoto[42000]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/woo-commerce.png?resize=662%2C300" alt="woo-commerce" class="aligncenter size-full wp-image-42166" /></a></p>\n<p>Last week WooCommerce announced that the <a href="https://wordpress.org/plugins/woocommerce/" target="_blank">plugin</a> had <a href="http://www.woothemes.com/2015/04/woocommerce-7-million-downloads/" target="_blank">passed 7 million downloads</a> and the WordPress.org plugin directory reports that it is currently in use on over a million websites.</p>\n<p><a href="http://www.woothemes.com/woocommerce/" target="_blank">WooCommerce</a> is not only head of the pack when it comes to WordPress e-commerce solutions, the plugin is also the global leader among e-commerce platforms. According to recent stats from <a href="http://builtwith.com/" target="_blank">BuiltWith</a>, WooCommerce is currently powering roughly 30% of all online stores.</p>\n<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/wc-percentages-620x571.png" rel="prettyphoto[42000]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/wc-percentages-620x571.png?resize=620%2C571" alt="wc-percentages-620x571" class="aligncenter size-full wp-image-42150" /></a></p>\n<h3>WooCommerce Accounts for 85% of Overall Sales at WooThemes</h3>\n<p>WooThemes supports the product through the sale of <a href="http://www.woothemes.com/product-category/woocommerce-extensions/" target="_blank">extensions</a> and <a href="http://www.woothemes.com/product-category/themes/woocommerce/" target="_blank">themes</a> for WooCommerce. However, when <a href="http://wpcandy.com/reports/woothemes-forks-jigoshop-into-woocommerce/#.VS6gJ_nF_gg" target="_blank">WooThemes first forked Jigoshop</a> to create the plugin, they had no idea that it would become the staple of their business.</p>\n<p>&#8220;We saw potential, but didn’t envision such a drastic change of direction for our overall business,&#8221; WooThemes co-founder <a href="http://jepson.no/" target="_blank">Magnus Jepson</a> told the Tavern. &#8220;When we initially had the idea for eCommerce for WordPress, our goal was to increase our revenue by selling more eCommerce themes.</p>\n<p>&#8220;James and Mike, our two core WooCommerce developers, came up with the extension model for WooCommerce, which was the key success to turning WooCommerce into the revenue machine that it has become today, making up around 85% of our overall sales.&#8221;</p>\n<p>Downloads of the core plugin are on the rise from 1 million in 2013, to 4 million in August 2014, and 7 million so far this year. WooCommerce currently has 339 free and commercial extensions listed in its official directory, which is the main revenue source driving support and continual development.</p>\n<p>&#8220;I can’t disclose our exact income unfortunately, but we do process several million dollars per year,&#8221; he said. &#8220;Our revenue has been climbing steadily over the past few years, and we are regularly breaking monthly revenue records.&#8221;</p>\n<p>Thanks to the success of the plugin and the growth of its global community, WooThemes hosted the first <a href="http://wptavern.com/wooconf-the-first-ever-conference-dedicated-to-woocommerce-deemed-a-success" target="_blank">WooConf</a> in San Francisco last year. The conference was solely devoted to WooCommerce products and development.</p>\n<p>&#8220;Our first WooConf was a huge hit, and exceeded all of our expectations,&#8221; Jepson said. &#8220;We had 320 participants join us for this amazing event, and we are planning on almost doubling the size of the second WooConf being held in Austin in November of this year.&#8221;</p>\n<p>Global WooCommerce usage is on a steady upwards climb, and the WooThemes team plans to go after more partnerships this year.</p>\n<p>&#8220;The future is big, and I see WooCommerce being the dominating eCommerce platform online, reaching more people through a larger distribution network (hosting providers and partners),&#8221; Jepson said. &#8220;Our goal for 2015 is &#8216;Strengthening Partnerships,&#8217; and I’m sure we&#8217;ll surprise quite a few people when they see our growth.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Apr 2015 17:55:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"WPTavern: Group and Filter Plugins by Functionality with Plugin Groups by CalderaWP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42131";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"http://wptavern.com/group-and-filter-plugins-by-functionality-with-plugin-groups-by-calderawp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2205:"<p>Plugins such as <a title="https://wordpress.org/plugins/woocommerce/" href="https://wordpress.org/plugins/woocommerce/">WooCommerce</a> and <a title="https://wordpress.org/plugins/ninja-forms/" href="https://wordpress.org/plugins/ninja-forms/">Ninja Forms</a> have a lot of extensions available to add functionality and each extension is usually a separate plugin. Depending on the functionality you need, extensions can add several additional plugins to the plugin management page in the backend of WordPress.</p>\n<p><a title="https://wordpress.org/plugins/plugin-groups/" href="https://wordpress.org/plugins/plugin-groups/">Plugin Groups</a> is a free new plugin by <a title="https://calderawp.com/" href="https://calderawp.com/">CalderaWP</a> that adds the ability to organize plugins by groups for easy filtering. For example, you can create a group called e-Commerce and add all plugins dealing with e-Commerce to the group. When you browse to the Plugins page, you&#8217;ll see a new filter at the top called e-Commerce. Clicking on it will display only the plugins within that group.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/PluginGroups2.gif" rel="prettyphoto[42131]"><img class="size-full wp-image-42135" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/PluginGroups2.gif?resize=648%2C500" alt="Plugin Groups in Action" /></a>Plugin Groups in Action\n<p>You can organize groups by clicking on a group&#8217;s name and dragging it up or down. One thing I noticed is that clicking the save button doesn&#8217;t appear to do anything, even though it saves the configuration. I recommend displaying a visual notification that tells me I clicked the save button and the configuration saved successfully.</p>\n<p>I tested the plugin on WordPress 4.2 and it works as advertised. Plugin Groups is a nice way to organize and access plugins based on functionality. Plugin Groups should definitely come in handy for those who use 50 plugins or more. You can try <a title="https://wordpress.org/plugins/plugin-groups/" href="https://wordpress.org/plugins/plugin-groups/">Plugin Groups</a> yourself by downloading it for free from the WordPress plugin directory.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Apr 2015 01:44:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:96:"WPTavern: iThemes Patches Vulnerability that Affects All Versions of the iThemes Security Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42069";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"http://wptavern.com/ithemes-patches-vulnerability-that-affects-all-versions-of-the-ithemes-security-plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2873:"<p>iThemes has released new versions of iThemes Security and iThemes Security Pro to <a title="https://ithemes.com/2015/04/14/security-release-for-ithemes-security-update-to-v4-6-13-or-v1-14-18-pro-immediately/" href="https://ithemes.com/2015/04/14/security-release-for-ithemes-security-update-to-v4-6-13-or-v1-14-18-pro-immediately/">address a critical security vulnerability</a>. Every version of both plugins is at risk, including Better WP Security 3.0. The vulnerability allowed potentially dangerous JavaScript to run when viewing 404 logs.</p>\n<blockquote><p>When the 404 Detection feature is enabled, data about requests for non-existent pages are stored in the database. Attackers could potentially add JavaScript code to these page requests, which would then be stored. This update fixes a security flaw that could allow those scripts to run when viewing the Security &gt; Logs page</p></blockquote>\n<p>If you&#8217;re using iThemes Security Pro, there are three ways to update:</p>\n<ul>\n<li>Update immediately now from the <a href="https://sync.ithemes.com">Sync Dashboard</a></li>\n<li>Update directly from the WordPress dashboard for licensed Pro sites</li>\n<li>Download the latest version from the <a href="https://ithemes.com/member/panel">iThemes Member Panel</a></li>\n</ul>\n<p>If you&#8217;re using iThemes Security, visit Dashboard &#8211; Updates to install the latest version. Every branch of iThemes Security has been patched. To check if you&#8217;re running a patched version, please review the following information.</p>\n<ul>\n<li>If you were running on 4.6 or higher, you’ll auto-update to 4.6.13</li>\n<li>If you were running on 4.5.*, you’ll auto-update to 4.5.11</li>\n<li>If you were running on 4.4.*, you’ll auto-update to 4.4.24</li>\n<li>If you were running on 4.3.*, you’ll auto-update to 4.3.12</li>\n<li>If you were running on 4.2.*, you’ll auto-update to 4.2.16</li>\n<li>If you were running on 4.1.*, you’ll auto-update to 4.1.6</li>\n<li>If you were running on 4.0.*, you’ll auto-update to 4.0.28</li>\n<li>If you were running on 3.6.*, you’ll auto-update to 3.6.7</li>\n<li>If you were running on 3.5.*, you’ll auto-update to 3.5.7</li>\n<li>If you were running on 3.4.*, you’ll auto-update to 3.4.11</li>\n<li>If you were running on 3.3.*, you’ll auto-update to 3.3.1</li>\n<li>If you were running on 3.2.*, you’ll auto-update to 3.2.8</li>\n</ul>\n<p><a href="https://twitter.com/oleaass">Ole Aass</a> is credited with <a title="http://securitysucks.info/advisories/ssa-2015-0001-ithemes-security-4-6-12-stored-xss/" href="http://securitysucks.info/advisories/ssa-2015-0001-ithemes-security-4-6-12-stored-xss/">discovering and responsibly disclosing</a> the vulnerability. The WordPress.org security team has pushed out an automatic update, but if you haven&#8217;t received it yet, manually update as soon as possible.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Apr 2015 01:25:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:112:"WPTavern: WordPress for Android Version 3.9 Adds Two-Factor Authentication and Improvements to the Media Library";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42109";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:122:"http://wptavern.com/wordpress-for-android-version-3-9-adds-two-factor-authentication-and-improvements-to-the-media-library";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2324:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/mediapicker-576x1024.png" rel="prettyphoto[42109]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/mediapicker-576x1024.png?resize=281%2C500" alt="mediapicker-576x1024" class="alignright size-large wp-image-42116" /></a>The mobile developers behind WordPress for Android released <a href="https://apps.wordpress.org/2015/04/14/wordpress-for-android-version-3-9/" target="_blank">version 3.9</a> today on Google Play. The app now supports two-factor authentication without the need for application passwords. In the past, WordPress mobile apps required an extra step wherein you would generate a unique password for the app on each of your mobile devices. This release eliminates that extra requirement.</p>\n<p>One of the most visible new features in 3.9 is the improved experience of adding media from your device to your site&#8217;s media library. Previously, adding media required a couple extra clicks to navigate to the correct screen for capturing a photo/video or selecting from the mobile device&#8217;s gallery.</p>\n<p>The new media screen includes new buttons at the top that allow you to capture a photo or video with your device. It also displays all of your media sources from one location, a major improvement that makes adding media faster and more convenient.</p>\n<p>Also new in 3.9 is a language selector specific to the app, which currently <a href="https://github.com/wordpress-mobile/WordPress-Android/blob/develop/tools/exported-language-codes.csv" target="_blank">supports 32 different languages</a> for publishing.</p>\n<p>The release <a href="https://apps.wordpress.org/2015/04/14/wordpress-for-android-version-3-9/" target="_blank">post</a> credits 11 different people for their contributions to 3.9. Development for the <a href="https://github.com/wordpress-mobile/WordPress-Android/milestones/4.0" target="_blank">4.0 milestone</a> is already underway on GitHub.</p>\n<p>Android users who are eager to update to the latest version may need to wait a few hours. According to contributor <a href="https://github.com/tonyr59h" target="_blank">Tony Rankin</a>, the update was moved to production today and can take awhile to fully propagate. Users can expect the 3.9 update to hit their devices within 24 hours.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 14 Apr 2015 23:33:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"Matt: Why We Love Repetition";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44948";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"http://ma.tt/2015/04/why-we-love-repetition/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1035:"<blockquote><p>What is music? There’s no end to the parade of philosophers who have wondered about this, but most of us feel confident saying: ‘I know it when I hear it.’ Still, judgments of musicality are notoriously malleable. That new club tune, obnoxious at first, might become toe-tappingly likeable after a few hearings. Put the most music-apathetic individual in a household where someone is rehearsing for a contemporary music recital and they will leave whistling Ligeti. The simple act of repetition can serve as a quasi-magical agent of musicalisation. Instead of asking: ‘What is music?’ we might have an easier time asking: ‘What do we hear as music?’ And a remarkably large part of the answer appears to be: ‘I know it when I hear it again.’</p></blockquote>\n<p>Elizabeth Hellmuth Margulis writes on <a href="http://aeon.co/magazine/culture/why-we-love-repetition-in-music/">why we love repetition in music and the neurological effects repeated songs have on us</a>. <em>Hat tip: Brian Groat.</em></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 14 Apr 2015 21:34:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:96:"WPTavern: WPSessions Changes Pricing Structure, Live WordPress Training Events are Now 100% Free";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42050";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:85:"http://wptavern.com/wpsessions-changes-pricing-structure-live-events-are-now-100-free";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6317:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/wpsessions-brian-richards.jpg" rel="prettyphoto[42050]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/wpsessions-brian-richards.jpg?resize=866%2C459" alt="wpsessions-brian-richards" class="aligncenter size-full wp-image-42097" /></a></p>\n<p><a href="http://wpsessions.com/" target="_blank">WPSessions</a> founder Brian Richards announced a radical shift in his pricing structure this week. The site was launched two years ago to provide developer education through videos that allow customers to learn from WordPress experts.</p>\n<p>Live events are now 100% free for everyone to attend, and the price of the recorded sessions has been reduced from $30/each to $9.</p>\n<p>&#8220;The changeup has come entirely from my struggles to get multiple speakers to present within the same small window of time,&#8221; Richards said. With a global audience of both presenters and customers, coordinating timezones often posed a roadblock to scheduling. Richards can now tell the presenters to pick a day and time that works for them and he will be there to record it. The changes also allow for a greater variety of topics.</p>\n<p>&#8220;Rather than bundling three similar presentations under a single event, I can now have entirely different topics going on within the same month, or still keep the month focused to a single topic but have the presentations spread out over a couple of weeks,&#8221; he said.</p>\n<p>In the past, Richards struggled even to get paying customers to attend the live events, as they opted instead to watch the recorded sessions later.</p>\n<p>&#8220;With the live broadcasts, having direct access to all of these presenters is a HUGE opportunity, so it was always disappointing in past sessions when I’d sell dozens of tickets but still only have 20 or so people attend the live event,&#8221; he said.</p>\n<p>&#8220;Making the events 100% free to watch live serves a bunch of different purposes. First, it makes the event accessible to someone where the cost could be a blocker (blocker in a sense of &#8216;I don’t yet know if this resource is worth the investment,&#8217; not &#8216;I don’t think I can afford this,&#8217; because the sessions were already super cheap).</p>\n<p>&#8220;Second, it encourages people to actually show up and participate, rather than just sitting back and thinking &#8216;I don’t need to make it live because I can just watch it whenever.''&#8221;</p>\n<h3>Reviving WPSessions Sales with Cheaper Pricing and Free Live Events</h3>\n<p>WPSessions dropped off the map for a short spell from December to March when Richards struggled to get presenters to commit to scheduling. With the new plan in place, he already has the next five presentations locked in and more on the line.</p>\n<p>WPSessions currently has 100 <a href="http://wpsessions.com/vip/" target="_blank">VIP Members</a>, and Richards hopes to grow that number to 400 this year. He&#8217;s not worried about a loss of revenue with the drastically reduced session pricing.</p>\n<p>&#8220;My data shows that most (upwards of 90%) of sales on each session happen within the first two months, and then drop off dramatically after that,&#8221; he said.</p>\n<p>&#8220;If anything, I think this may actually lead to an increase in revenue from the sessions, because it’s incredibly easy for someone to show up for free and see what WPSessions is all about, and because the back catalog is now so much less expensive.&#8221;</p>\n<h3>The Future of WPSessions in the WordPress Education Space</h3>\n<p>Richards is currently working on producing an intensive WordPress Training Curriculum for developers. The first module, <a href="http://wpsessions.com/learn-wordpress-website-mastery/" target="_blank">WordPress Website Mastery</a>, will be going up next Monday.</p>\n<p>&#8220;The overall goal of this will be to take someone in any field and teach them the necessary skills to become a profitable WordPress developer – either as an independent contractor, or by joining the ranks of an agency,&#8221; he said.</p>\n<p>The long term goal for WP Sessions is to provide the most comprehensive collection of WordPress training materials that exists anywhere. Entrepreneurs are building new products for WordPress every day but very few have ventured into the WP education space to train developers. Richards has found that it&#8217;s not the easiest market to tackle.</p>\n<p>&#8220;Developers are a fickle bunch,&#8221; he said. &#8220;They like to figure things out for themselves and hack around the internet until they find the answer to a specific problem they’re facing. It’s hard to introduce them to a specific training track because what they want to learn and what they need to learn are often two wholly different things. I know, because I am one.&#8221;</p>\n<p>The WordPress ecosystem does not have an official, respected training certification for developers. While various training sites offer instruction, ranging from site management to development, WPSessions is rare in that it pulls in knowledge from presenters in all corners of the WordPress community.</p>\n<p>&#8220;I have yet to find a site that offers the curriculum I&#8217;m looking to provide, which is a full-on cradle-to-grave instruction on Development 101 all the way through to Advanced Techniques, while also hitting on design basics, business development, marketing, and all the other skills an independent contractor needs to have in their wheel house,&#8221; he said.</p>\n<p>WPSessions isn&#8217;t currently a full-time endeavor, but Richards is working on getting it there this year. By opening up the live events for free, he&#8217;s hoping to expand his audience and attract more customers to his catalog of learning resources.</p>\n<p>The next live event features <a href="https://twitter.com/scottbolinger" target="_blank">Scott Bolinger</a>, who will teach viewers <a href="http://wpsessions.com/sessions/build-mobile-apps-wordpress/" target="_blank">how to build mobile applications using WordPress</a>. If you&#8217;re interested to learn how to use the WP REST API with an AngularJS frontend and compile it into a mobile application package, mark your calendars to attend the free live event on April 23 at 4pm EST (UTC+4).</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 14 Apr 2015 21:15:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"WPTavern: Wordfence Premium Adds the Ability to Audit User Passwords in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41937";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"http://wptavern.com/wordfence-premium-adds-the-ability-to-audit-user-passwords-in-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3692:"<p>By utilizing the power of graphical processing units and partnering with <a title="http://www.netriver.net/" href="http://www.netriver.net/">Netriver</a>, Wordfence can <a title="http://www.wordfence.com/blog/2015/04/wordfence-announces-password-auditing/" href="http://www.wordfence.com/blog/2015/04/wordfence-announces-password-auditing/">simulate a password cracking attempt</a> using a library that contains more than 260 million passwords.</p>\n<p>The library is made up of previous hacks on major websites and services. For example, if your password was leaked during the <a title="http://en.wikipedia.org/wiki/2012_LinkedIn_hack" href="http://en.wikipedia.org/wiki/2012_LinkedIn_hack">LinkdIn hack in 2012</a>, Wordfence will inform you that it&#8217;s no longer safe to use.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/WordFencePasswordAuditing.png" rel="prettyphoto[41937]"><img class="size-full wp-image-42065" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/WordFencePasswordAuditing.png?resize=1025%2C414" alt="WordFence Password Auditing" /></a>Wordfence Password Auditing\n<p>I audited the passwords of all users on the Tavern test site and no weak passwords were discovered. I changed my password to <strong>password </strong>and within seconds, Wordfence detected a weak password.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/WordFenceWeakPassword.png" rel="prettyphoto[41937]"><img class="size-full wp-image-42067" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/WordFenceWeakPassword.png?resize=1025%2C160" alt="Weak Password Detected" /></a>Weak Password Detected\n<p>When a weak password is detected, you can email selected users and request that they change it to a strong one. Alternatively, you can let Wordfence change it to a strong one automatically and email it to the user.</p>\n<p>Wordfence explains how the auditing process works.</p>\n<blockquote><p>Internally this feature uses a double layer of encryption to protect your data during the audit. First, we encrypt the hashes we are going to operate on using a combination of AES encryption and RSA public key encryption.</p>\n<p>Then we send your encrypted data via SSL to our servers which provides a second layer of encryption. Once on our servers, the data is stored encrypted until it is audited and we never return sensitive data to your website.</p></blockquote>\n<p>Although WordPress 3.7 added an <a title="http://wptavern.com/ridiculously-smart-password-meter-coming-to-wordpress-3-7" href="http://wptavern.com/ridiculously-smart-password-meter-coming-to-wordpress-3-7">improved password strength meter</a>, WordPress doesn&#8217;t enforce password strength for new users. After performing an audit, I recommend turning on the option in Wordfence to enforce strong passwords for new users. This way, you&#8217;ll know that all passwords from that point forward are strong.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/ForceStrongPasswords.png" rel="prettyphoto[41937]"><img class="size-full wp-image-42068" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/ForceStrongPasswords.png?resize=809%2C242" alt="Enforce Strong Passwords" /></a>Enforce Strong Passwords\n<p>Earlier this year, SplashRiver <a title="http://splashdata.com/press/worst-passwords-of-2014.htm" href="http://splashdata.com/press/worst-passwords-of-2014.htm">released its list</a> of the 25 worst passwords used in 2014. The passwords include, 123456, password, and 12345. Password auditing in Wordfence is a convenient way to make sure none of the users on your site are using weak passwords like those in the report.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 14 Apr 2015 19:51:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"Matt: Start With The Result ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44943";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"http://ma.tt/2015/04/start-with-the-result/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:348:"<blockquote><p>Starting with the results helps refocus the day, clear away busy work, and make sure your actions and time are being spent with an eye on the results you want to achieve. Results, not just work.</p></blockquote>\n<p>Sara Rosso writes <a href="http://whenihavetime.com/2015/04/10/start-with-the-result/">Start With The Result</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 14 Apr 2015 03:58:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:55:"WPTavern: Going Behind the Scenes with the Jetpack Team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=42002";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"http://wptavern.com/going-behind-the-scenes-with-the-jetpack-team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14278:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/jetpack-team.jpg" rel="prettyphoto[42002]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/jetpack-team.jpg?resize=1025%2C683" alt="jetpack-team" class="aligncenter size-full wp-image-42007" /></a></p>\n<p>Have you ever wondered what it takes to support a WordPress plugin with a million active users? At the beginning of 2015, Matt Mullenweg highlighted Jetpack as one of the most important tools in <a href="http://wptavern.com/how-important-is-jetpack-on-wordpress-road-to-50-market-share" target="_blank">helping WordPress remain competitive</a> and preventing the decline of its market share.</p>\n<p>The team surrounding Jetpack is laser focused on adding compelling features that will help self-hosted sites get everything they need in one convenient pit stop. Whether or not you believe the future of WordPress is hinged on Jetpack&#8217;s success, there&#8217;s no doubt that the professionally-supported plugin has helped self-hosted sites to thrive, with much less effort required on the part of site administrators.</p>\n<p>With 36 modules currently available in the plugin and a never-ending support queue, the distributed team behind Jetpack meets up regularly to build teamwork and keep things running smoothly. At WordCamp London 2015, a good number of the newly expanded team met in person for the first time.</p>\n<p>I had the opportunity to sit down with a few Jetpack representatives, including team lead <a href="https://twitter.com/daljo628" target="_blank">George Stephanis</a>, support specialist <a href="https://twitter.com/carolynsonnek" target="_blank">Carolyn Sonnek</a>, and pit crew team member <a href="http://jes.se.com/" target="_blank">Jesse Friedman</a> to discuss what it takes to keep Jetpack going strong.</p>\n<h3>Managing the Jetpack Support Load</h3>\n<p>Since their last meetup in August, the Jetpack team has experienced quite a few shakeups. Automattic&#8217;s <a href="http://wptavern.com/automattic-acquires-parka-llc-the-creators-of-bruteprotect" target="_blank">BruteProtect acquisition</a> added five new team members to the pit crew, bringing their numbers to 10. The Jetpack Manage team, which ties into WordPress.com, has 10 members and is led by Beau Lebens. There are also 10 additional team members allocated for supporting Jetpack user happiness.</p>\n<p>Stephanis always tries to include someone from support, as they represent those who are on the front lines with users every day. The happiness engineers are also divided into sub-teams to manage a support queue that often adds up to several hundred tickets per day. Requests pour into an email inbox from the plugin itself, as well as the WordPress.org support forums.</p>\n<p>Jetpack team members are also active on Twitter and Facebook where they triage requests and help to move users to a more traditional support avenue. The happiness engineers are currently working on a quicker turnaround for support.</p>\n<p>&#8220;Right now our goal is to get under 12 hours, and then once we hit that goal, we&#8217;re going to go to five hours, and then on to 1 hour someday,&#8221; Sonnek said. If you take a look at the plugin&#8217;s <a href="https://wordpress.org/support/plugin/jetpack" target="_blank">support forums</a>, you&#8217;ll find that nearly all of the issues are resolved or in process, which is a rarity for WordPress.org plugins. It takes 10 team members to keep it that way.</p>\n<p>Automattic is aware of the number of people currently using Jetpack but will not be disclosing that information publicly. &#8220;We use those numbers internally for reference for how we are doing, or to see if there has been some change that has resulted in an uptake of new connections or something along those lines,&#8221; Stephanis said.</p>\n<p>&#8220;In the end it&#8217;s a number, and a number without context is very easy to take out of context. <span class="pullquote alignleft">Instead of dwelling on the numbers, we&#8217;re much more interested in what adoption looks like.</span>&#8221; He said that the total number is comparable to the million installs reported by WordPress.org but is probably somewhat less if you account for test sites and hosting partnerships where the plugin is automatically installed but not yet active.</p>\n<h3>Jetpack Focus for 2015: Iterating and Polishing of Current Features</h3>\n<p>For the past few years the Jetpack team has managed a unique balancing act of prioritizing support while fixing bugs and tackling new features at the same time. Many recent releases have introduced new modules, but the team is switching gears in 2015 to focus on keeping the ride smooth.</p>\n<p>&#8220;Our focus for the next year is largely going to be on iterating and putting the next bit of spit and polish on features that are already in,&#8221; Stephanis said. &#8220;A lot of the things we&#8217;ve launched need a v2; they need a second pass on it.&#8221;</p>\n<p>This new focus will be a change as compared to the previous breakneck speed with which the team was cranking out new modules.</p>\n<p>&#8220;There are couple of minor things that other teams are working on that will probably get rolled out to WordPress.com and will probably get synced down to Jetpack as well,&#8221; he said. &#8220;But there&#8217;s no large ticket features that we&#8217;re currently focusing to get into Jetpack and get launched.</p>\n<p>&#8220;This is very much a year focused on building up the team, building up familiarity with our internal processes and cultures, and addressing some long-standing technical debt that we&#8217;ve been kind of swamped with paying down.</p>\n<p>&#8220;But now with the resources we currently have, it&#8217;s much easier to focus on the core product offering and how to explain that,&#8221; Stephanis said.</p>\n<h3>Pushing for Goals Over Deadlines</h3>\n<p>Stephanis has been leading Jetpack releases for awhile, but recently the team has started rotating release leads in preparation for his upcoming paternity leave. I asked him if he still feels the weight of pushing out code to millions of users at release time.</p>\n<p>&#8220;Every time,&#8221; he said. &#8220;I&#8217;m just thinking &#8211;  What edge cases have I missed? Have I forgotten to do something? Have I updated the translations? What if we&#8217;re not compatible with some other plugin?  What if there&#8217;s a name space conflict and we white screen some sites?&#8221;</p>\n<p>With a massive user base using a myriad of different themes and plugins, there&#8217;s always the chance for some unforeseen conflict. The support team has to be prepared to handle that.</p>\n<p>However, Stephanis believes the many problems with releases can be prevented by making sure you&#8217;re never in a rush.</p>\n<p>&#8220;If you&#8217;re forcing it through to get it out super quick, you&#8217;re not giving your subconscious the time to turn things over in its own time,&#8221; he said. &#8220;I&#8217;m not saying intentionally slow down the development process, but <span class="pullquote alignleft">making sure you&#8217;re never overly rushed by deadlines is one of my best ways to ensure that we&#8217;re not having oops moments</span> or shipping something and then two hours later go &#8216;Oh we forgot the&#8230;''&#8221;</p>\n<p>As part of this approach, the team focuses on goals and testing more than meeting an arbitrary release schedule.</p>\n<p>&#8220;We set goals more than deadlines,&#8221; Stephanis said. &#8220;Yes, it&#8217;s nice to have deadlines and goals but if you&#8217;re overly concerned about the deadline, the quality can slip. We make sure we&#8217;re not shipping anything unless we&#8217;re really comfortable with it, we&#8217;re confident, and we&#8217;ve tested it.&#8221;</p>\n<p>The team aims to do at least a one-week translation freeze before releases and generally catches a good deal of bugs during the freeze.</p>\n<p>&#8220;We have a fantastic Jetpack beta group that we pass releases out to and explain everything new that&#8217;s coming,&#8221; he said. &#8220;Some of the edge cases they turn up just blow my mind.&#8221; Having that cushion of time to focus on compatibility and cross testing is essential to mitigating Jetpack&#8217;s conflicts with other plugins.</p>\n<p>&#8220;<span class="pullquote alignleft">Very small issues become very big issues when you&#8217;re running at scale with millions of users</span>,&#8221; Stephanis said. &#8220;If something is only hitting one tenth of one percent, guess what, that&#8217;s a couple thousand users now.&#8221;</p>\n<p>With an ever growing user base, the cost of a mistake or conflict gets even more expensive in terms of support. This is where the Jetpack team has learned that not rushing really pays off. The goal, in the end, is not about hitting a release date but rather providing a smooth experience with the release.</p>\n<h3>Overcoming Negative Perceptions of Jetpack</h3>\n<p>One of the constant struggles for the Jetpack team is addressing the negative perceptions of the plugin, especially criticism from the development community.</p>\n<p>&#8220;There are still a lot of folks who don&#8217;t understand what we&#8217;re actually trying to accomplish,&#8221; Stephanis said. &#8220;I occasionally get questions like, &#8216;With as many things as Jetpack is doing, how are individual plugin authors meant to in any way compete against this?&#8217;</p>\n<p>&#8220;The answer to that is we do a lot of general things aimed at raising the tide that lifts all the ships, but we don&#8217;t go in any way in depth. For example, I don&#8217;t think the contact form module in Jetpack has in any way hindered the sales of Gravity Forms.</p>\n<p>&#8220;Developers still have the ability to pick one aspect and go incredibly in depth on it &#8211; yes, we have related posts, but if someone wants to do a plugin that just does related posts and really knocks it out of the park, we&#8217;ll be able to get folks started on the idea of it. Then they&#8217;ll get comfortable and will be much more willing to move to a premium version that they find elsewhere.&#8221;</p>\n<p>Stephanis also emphasized Jetpack&#8217;s extensibility. Plugin authors are even at liberty to utilize the WordPress.com infrastructure while extending Jetpack features. Despite having 36 different modules, the goal has never been to add every possible feature.</p>\n<p>&#8220;One of the things we fight perception-wise is the concept that Jetpack is bloated,&#8221; Stephanis said. &#8220;Which is an easy thing to think when you see what appears to be 30 some different plugins that you can turn on and off.</p>\n<p>&#8220;When they all tie together with the common core, one plugin can be just one line of code or one plugin could be humongous. It&#8217;s very easy to fall into the idea of: &#8216;I turn off a plugin and that&#8217;s going to make my site go faster, right?&#8217; But the fact of the matter is that everything we do in WordPress and life is always going to be a matter of trade offs.</p>\n<p>&#8220;If you do something else, it&#8217;s going to affect your site in some fashion. Just by the very fact that you&#8217;re adding some level of complexity. It&#8217;s more of a question of if you want this feature what&#8217;s the best trade off you can get for it. Sam ran a <a href="https://bruteprotect.com/the-jetpack-bloat-myth/" target="_blank">couple</a> <a href="http://bruteprotect.com/jetpack-bloat-myth-followup-more-data/" target="_blank">comparisons</a> and published them on the group blog comparing our commenting form and several of our other features to WP plugins. In comparison, we wind up coming out a little bit ahead.&#8221;</p>\n<p>The download size of Jetpack, currently at 8.2MB, is often a concern for many users.</p>\n<p>&#8220;The code base gets a lot of misunderstanding,&#8221; Stephanis said. &#8220;The translations are about 2/3 of it and the Custom CSS module includes a megabyte in and of itself, because we include some JavaScript and CSS to make it pretty as you&#8217;re editing it, SASS and Less precompilers, the CSS sanitization library, all of which for the vast majority of page views isn&#8217;t even loaded.&#8221;</p>\n<p>At the moment, three quarters of Jetpack sites are using English, which means that two thirds of the download size is irrelevant to three quarters of Jetpack users. Getting translations on demand is a major goal for the plugin, but the team has to work with WordPress.org to make it happen.</p>\n<p>&#8220;We are waiting on support from WordPres.org to let us use a GlotPress instance to manage our translation flow and then it&#8217;s just a quick switch to start serving it up on their end,&#8221; Stephanis said.</p>\n<p>Until that is resolved, the cost of supporting a global user base will continue to be an extra 5MB on the initial download. Apart from some vocal opposition from developers, most Jetpack users do not seem to mind the size of the download or the number of modules. The features it provides in one package are too compelling and convenient for most of the plugin&#8217;s users to notice the download size.</p>\n<p>Jetpack also gives self-hosted sites access to the infrastructure available on WordPress.com for features that might otherwise create a toll on budget hosting providers, such as related posts and the free Photon CDN. However, Stephanis believes that the quality of maintenance and support are the most compelling reasons to use Jetpack.</p>\n<p>&#8220;One of the biggest gripes most folks have with the WordPress.org plugin repository is that there are so many abandoned plugins,&#8221; he said. &#8220;These are plugins that either have bugs and never get attention or plugins that, if something breaks, you can never get support.</p>\n<p>&#8220;By far the biggest advantage and the best reason to use Jetpack is the fact that we have 20 active developers between Beau&#8217;s team and the pit crew itself, and an active crew of about 10 support folks that are daily focused on enriching the experience, fixing any issues that come up. That, by far, to me is the biggest selling point, the biggest advantage over using 30 different plugins where the code quality may be more questionable.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 13 Apr 2015 22:22:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"Matt: John Oliver meets Snowden";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44940";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:47:"http://ma.tt/2015/04/john-oliver-meets-snowden/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:221:"<p>John Oliver is pretty much always fun to watch, but you should especially send this episode to everyone you know, it&#8217;s important for people to see and understand it.</p>\n<p><span class="embed-youtube"></span></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 13 Apr 2015 04:30:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Matt: Apple Watch Horror Story";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44945";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"http://ma.tt/2015/04/apple-watch-horror-story/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:735:"<p>Read through <a href="https://www.yahoo.com/tech/a-horror-story-constructed-entirely-from-actual-115916627734.html">this amazing horror story constructed of actual sentences (with links) from reviews of the Apple Watch</a>. (Hat tip: <a href="http://laughingsquid.com/sentences-from-apple-watch-reviews-reconstructed-into-a-strange-horror-story-about-technology/">Laughing Squid</a>.) As for me? I <a href="https://matt.wordpress.com/2015/04/10/trying-on-apple-watch/">tried on the Watch yesterday</a> and was very impressed, I&#8217;ll be getting one as soon as I can once they&#8217;re available. I would have picked up one of the new Macbooks as well if it was available, but the stores had them on display but none in stock.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 11 Apr 2015 16:41:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:88:"WPTavern: Visualize the Disk Space Used on Your Site with the Disk Usage Sunburst Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41934";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"http://wptavern.com/visualize-the-disk-space-used-on-your-site-with-the-disk-usage-sunburst-plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2111:"<p><a title="https://wordpress.org/plugins/disk-usage-sunburst/" href="https://wordpress.org/plugins/disk-usage-sunburst/">Disk Usage Sunburst</a> is a new plugin created by <a title="https://profiles.wordpress.org/raidboxes/" href="https://profiles.wordpress.org/raidboxes/">Raidboxes</a> that enables you to visualize the disk spaced used by your WordPress site. After installing and activating the plugin, you&#8217;ll find the sunburst chart under the <a title="https://wordpress.org/plugins/disk-usage-sunburst/" href="https://wordpress.org/plugins/disk-usage-sunburst/">Tools &#8211; Disk Usage</a> menu.</p>\n<p>A sunburst chart is generated in SVG format that displays the amount of disk space used by each directory and file. The chart takes a little while to get used to as it&#8217;s an alternate way of browsing directories and files. Click any of the arches to browse deeper into a directory. Clicking the center circle will take you back a directory.</p>\n<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/SunburstDiskUsage.png" rel="prettyphoto[41934]"><img class="aligncenter size-full wp-image-41980" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/SunburstDiskUsage.png?resize=888%2C798" alt="Suburst Disk Usage" /></a>One thing I noticed during testing, is that there&#8217;s no visual indication when you click on an arch. There&#8217;s also a delay when selecting an arch since it takes time to render the chart. There might be a bigger impact on performance for sites with large file and directory structures.</p>\n<p>In future updates, I&#8217;d like to see a list of shortcuts such as, largest file, largest directory, etc. This would make it quick to view pertinent information and give users an idea on how the chart works. I&#8217;d also like to see improvements to speed and performance. Disk Usage Sunburst serves its purpose and works fine on WordPress 4.2. You can <a title="https://wordpress.org/plugins/disk-usage-sunburst/" href="https://wordpress.org/plugins/disk-usage-sunburst/">download it for free</a> from the WordPress plugin directory.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 11 Apr 2015 04:28:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: BuddyPress 2.2.2 Released Addresses Two Potential Security Issues";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41976";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:85:"http://wptavern.com/buddypress-2-2-2-released-addresses-two-potential-security-issues";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1890:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/BuddyPressFeaturedImage.png" rel="prettyphoto[41976]"><img class="aligncenter size-full wp-image-41978" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/BuddyPressFeaturedImage.png?resize=828%2C265" alt="BuddyPress Featured Image" /></a>BuddyPress 2.2.2 <a title="https://wordpress.org/plugins/buddypress/" href="https://wordpress.org/plugins/buddypress/">is available</a> from the WordPress plugin directory. It fixes two potential security issues and has a few bug fixes. This is what is fixed in 2.2.2.</p>\n<ul>\n<li>Activity: sanitize output of “Load More” link</li>\n<li>Members: better nonce check on members widget</li>\n<li>Core: improve filtering of wp_title</li>\n</ul>\n<p>The security issues were responsibly disclosed by Todd Gibson and Justin Heideman. I jokingly asked BuddyPress lead developer, John James Jacoby, about releasing security fixes on a Friday evening. He said he&#8217;d rather be annoying than irresponsible.</p>\n<blockquote class="twitter-tweet" width="550"><p><a href="https://twitter.com/jeffr0">@jeffr0</a> <a href="https://twitter.com/imath">@imath</a> <a href="https://twitter.com/tw2113">@tw2113</a> I''d rather do the right thing and be annoying than not and be irresponsible.</p>\n<p>&mdash; John James Jacoby (@JJJ) <a href="https://twitter.com/JJJ/status/586708832874803200">April 11, 2015</a></p></blockquote>\n<p></p>\n<p>If I used BuddyPress, I&#8217;d want security fixes as soon as they&#8217;re available. Thanks to Jacoby and the rest of the BuddyPress team for helping to keep sites safe no matter what time of day it is. You can <a title="https://wordpress.org/plugins/buddypress/" href="https://wordpress.org/plugins/buddypress/">download BuddyPress 2.2.2</a> from the WordPress plugin directory, or visit Dashboard &#8211; Updates in the WordPress backend.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 11 Apr 2015 03:29:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"Matt: Ambiguity and the Art of Meaning";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44919";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://ma.tt/2015/04/ambiguity-and-the-art-of-meaning/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:620:"<blockquote><p>Ambiguity. It’s the defining characteristic of this age. Yesterday offered many certainties. A secure job, stable income, lasting community…a predictable economy, culture, society. But that’s not the case anymore. Something surrounds us, permeating our worlds, defining our lives; though we call it by different names. Economic uncertainty; social instability; political unpredictability. All simply different kinds of ambiguity.</p></blockquote>\n<p>Umair Haque writes on <a href="https://medium.com/bad-words/ambiguity-and-the-art-of-meaning-b70f500ab67f">Ambiguity and the Art of Meaning</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 11 Apr 2015 03:00:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"WPTavern: New Plugin Adds a WhatsApp Button to Jetpack’s Sharing Module";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41939";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"http://wptavern.com/new-plugin-adds-a-whatsapp-button-to-jetpacks-sharing-module";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3474:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/jetpack-whatsapp.jpg" rel="prettyphoto[41939]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/jetpack-whatsapp.jpg?resize=703%2C300" alt="jetpack-whatsapp" class="aligncenter size-full wp-image-41959" /></a></p>\n<p>Facebook shocked the world when it <a href="http://newsroom.fb.com/news/2014/02/facebook-to-acquire-whatsapp/" target="_blank">acquired WhatsApp</a> for $19 billion dollars in February 2014. As of January 2015, the app&#8217;s user base has grown to more than <a href="http://en.wikipedia.org/wiki/List_of_virtual_communities_with_more_than_100_million_active_users" target="_blank">700 million active users</a>, making it the third largest social network on the planet.</p>\n<p>Last year very few WordPress sharing plugins prioritized adding WhatsApp, despite its enormous popularity. This has gradually improved in 2015, as more than two dozen social plugins on WordPress.org now include a WhatsApp sharing button.</p>\n<p>A new plugin released today brings WhatsApp sharing capabilities to Jetpack, which surprisingly doesn&#8217;t include this by default. A <a href="https://github.com/Automattic/jetpack/issues/755" target="_blank">ticket</a> was opened on Jetpack&#8217;s GitHub account to request this feature, but Jetpack representatives recommended that the service be added as a separate plugin.</p>\n<p>The <a href="https://wordpress.org/plugins/whatsapp-jetpack-button/" target="_blank">WhatsApp Sharing Button for Jetpack</a> was created by Brazilian WordPress developer <a href="http://valeriosouza.com.br/" target="_blank">Valerio Souza</a>. It works seamlessly with the sharing module&#8217;s drag-and-drop configuration and uses the same design style as the other buttons.</p>\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/whatsapp-sharing.jpg" rel="prettyphoto[41939]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/whatsapp-sharing.jpg?resize=973%2C560" alt="whatsapp-sharing" class="aligncenter size-full wp-image-41942" /></a></p>\n<p>After testing the plugin I discovered that the WhatsApp sharing button is intuitively hidden on the desktop version. Users will only see it if viewing a post from a mobile device, including smartphones and tablets. If you don&#8217;t see the button on mobile, make sure you meet the plugin&#8217;s minimum requirements: PHP 5.4+, MySQL 5.5+, WordPress 3.8+.</p>\n<p>I&#8217;d like to see Jetpack add more sharing options for messaging apps. These social networks generally provide a more personal avenue for sharing a post, as opposed to publicly broadcasting to Twitter or Facebook. As an enthusiastic <a href="https://telegram.org/" target="_blank">Telegram</a> user, I&#8217;d love to see a similar plugin created for it.</p>\n<p>A service with 700+ million active users is one social network you can no longer afford to ignore when it comes to sharing, especially if your blog enjoys a global audience. WhatsApp users&#8217; geographical distribution is heaviest in <a href="http://www.wired.com/2014/02/whatsapp-rules-rest-world/" target="_blank">India, Brazil, and Mexico</a>, three emerging markets where smartphones usage is just now starting to explode. Installing the <a href="https://wordpress.org/plugins/whatsapp-jetpack-button/" target="_blank">WhatsApp Sharing Button for Jetpack</a> plugin may help your posts reach more readers in other parts of the world.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 10 Apr 2015 22:57:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"WPTavern: Automattic Sponsors Let’s Encrypt Initiative";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41589";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wptavern.com/automattic-sponsors-lets-encrypt-initiative";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4401:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/lets-encrypt.png" rel="prettyphoto[41589]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/lets-encrypt.png?resize=650%2C333" alt="lets-encrypt" class="aligncenter size-full wp-image-41915" /></a></p>\n<p>Last November the <a href="https://www.eff.org/" target="_blank">Electronic Frontier Foundation</a> announced <a href="https://www.eff.org/deeplinks/2014/11/certificate-authority-encrypt-entire-web" target="_blank">Let’s Encrypt</a>, a new free and open certificate authority for the public. The initiative aims to make trusted certificates available to anyone at no cost.</p>\n<p>The idea behind Let&#8217;s Encrypt is to transition as many domains as possible from HTTP to HTTPS by providing a virtually painless one-click enrollment process during the server&#8217;s native installation.</p>\n<p><span class="embed-youtube"></span></p>\n<p>The Let&#8217;s Encrypt certificate authority is set to launch mid-2015. Last month, Automattic <a href="https://twitter.com/letsencrypt/status/578230030876086272" target="_blank">joined</a> Mozilla, Cisco, EFF and several other organizations as a major sponsor of the initiative. I spoke with <a href="https://barry.wordpress.com/" target="_blank">Barry Abrahamson</a>, Chief Systems Wrangler at Automattic, to find out if the company has any plans beyond helping to fund the effort.</p>\n<p>&#8220;We don&#8217;t have any concrete plans past the sponsorship at this point, but we hope to help bring SSL support to as many WordPress sites as we can,&#8221; he said.</p>\n<p>Last year Automattic <a href="http://wptavern.com/wordpress-com-to-implement-ssl-for-all-subdomains-joins-the-fight-against-mass-surveillance" target="_blank">implemented SSL for all *.wordpress.com subdomains</a> as part of the <a href="https://www.resetthenet.org/" target="_blank">Reset the Net</a> campaign against mass surveillance. The company&#8217;s Akismet product recently <a href="http://wptavern.com/akismet-improves-user-privacy-by-encrypting-api-calls" target="_blank">transitioned all calls to its API to use SSL</a> in order to better secure commenter data.</p>\n<p>While many larger WordPress sites have made the move to SSL, the average self-hosted WordPress user is likely to have a tricky time setting it up. That&#8217;s why initiatives like &#8220;Let&#8217;s Encrypt&#8221; are so important.</p>\n<p>However, skeptics aren&#8217;t fully convinced that the new certificate authority will make the web any safer from prying government eyes. Privacy advocate Alexander Hanff wrote a <a href="https://www.linkedin.com/pulse/20141120073425-26662417-why-i-won-t-be-using-let-s-encrypt-and-recommend-other-not-to-also" target="_blank">post</a> explaining why he believes that a new super certificate authority will paint a target on those who use it.</p>\n<blockquote><p>Certificate Authorities are the weakest link in the digital security chain. They have the power to issue special master keys (for want of better phrase) which allows a third party to pretend to be someone they are not. In essence, this means if compelled by a secret court order, a certificate authority can provide special certificates to any intelligence agency or other law enforcement body, which will allow them to masquerade as someone else (your bank, Facebook, Google &#8211; anyone who uses that certificate authority for their SSL certificates)</p></blockquote>\n<p>He notes that secret court orders are almost always accompanied by a gag order so that the certificate authority cannot reveal that they have issued special certificates to the government. If the government has unfettered access to &#8220;super master keys&#8221; for thousands of domains, expedited by a new free certificate authority aiming to &#8220;encrypt the entire web,&#8221; then certificate based encryption is rendered worthless.</p>\n<p>The Let&#8217;s Encrypt initiative is positioned to have a radical impact on the number of encrypted sites on the web. Bringing encryption to the masses means that more people will be better protected against attacks such as account hijacking and identity theft. However, if you use the new free certificate authority, it&#8217;s important to understand that your communications may not be secure from government surveillance. Free SSL certificates for everyone will come at a price.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 10 Apr 2015 10:10:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"WPTavern: Get Email Alerts for Security Vulnerabilities in Your WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41867";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"http://wptavern.com/get-email-alerts-for-security-vulnerabilities-in-your-wordpress-plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5115:"<p>WordPress users have been subject to a rash of plugin vulnerabilities over the past couple of months. Some of these vulnerabilities have been so widespread that the <a href="http://wptavern.com/fbi-warns-of-isil-defacement-attacks-on-wordpress-sites" target="_blank">FBI recently warned users of attacks designed to exploit WordPress sites</a>.</p>\n<p>Not long after <a href="http://wptavern.com/wordpress-publishes-security-white-paper" target="_blank">WordPress published its Security White Paper</a>, an outbreak of issues popped up, starting with a blind SQL injection vulnerability in <a href="http://wptavern.com/blind-sql-injection-vulnerability-discovered-in-wordpress-seo-plugin-by-yoast-immediate-update-recommended" target="_blank">WordPress SEO by Yoast</a>, followed by a <a href="http://wptavern.com/pods-framework-security-release-fixes-severe-vulnerability" target="_blank">security release from the Pods Framework</a>, and a few other plugins containing similar issues.</p>\n<p>WordPress.org has not yet created a way to publicly identify the plugins for which its security team is pushing out automatic updates. The process involves coordination with the plugin developer and the core developers who have been allocated to verify and test the vulnerabilities.</p>\n<p>Once their automatic update process for mitigating serious vulnerabilities is ironed out, it would be helpful to have a section of WordPress.org dedicated to transparency about which plugins have received these forced automatic updates.</p>\n<p>In the meantime, WordPress users need to remain vigilant about staying current with updates. <a href="https://wordpress.org/plugins/plugin-vulnerabilities/" target="_blank">Plugin Vulnerabilities</a> is a plugin that helps users stay on top of security releases. Once installed on your site, it can automatically detect known security vulnerabilities in any of your installed plugins. It will alert you via the admin and you can also turn on email alerts for notification in your inbox.</p>\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/plugin-vulnerabilities.jpg" rel="prettyphoto[41867]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/plugin-vulnerabilities.jpg?resize=933%2C544" alt="plugin-vulnerabilities" class="aligncenter size-full wp-image-41874" /></a></p>\n<p>The plugin was created <a href="https://www.whitefirdesign.com" target="_blank">White Fir Design</a>, a Colorado-based company that specializes in WordPress security and fixing hacked websites. The company also offers a <a href="https://www.whitefirdesign.com/about/wordpress-security-bug-bounty-program.html" target="_blank">security bug bounty program for WordPress and plugins</a>.</p>\n<p>White Fir Design regularly updates the plugin with alerts for new vulnerabilities. The description page gives an overview of the vulnerability stats, as of April 6, 2015:</p>\n<ul>\n<li>257 vulnerabilities included</li>\n<li>61 included vulnerabilities are in the most recent version of plugins (57 of these plugins have been <a href="https://wordpress.org/plugins/no-longer-in-directory/" target="_blank">removed from the Plugin Directory</a>)</li>\n<li>24 vulnerabilities have been <a href="https://www.whitefirdesign.com/blog/2015/03/06/we-have-now-helped-get-16-wordpress-plugin-vulnerabilities-fixed/" target="_blank">fixed in part due to this plugin</a></li>\n<li>5 included <a href="https://www.whitefirdesign.com/plugin-vulnerabilities/vulnerabilities-in-wordpress-security-plugins.html" target="_blank">vulnerabilities in security plugins</a></li>\n</ul>\n<p>The top vulnerability types since the creation of the plugin include:</p>\n<ul>\n<li>Cross-site request forgery (CSRF)/cross-site scripting (XSS): 52 vulnerabilities</li>\n<li>Reflected cross-site scripting (XSS): 45 vulnerabilities</li>\n<li>Arbitrary file upload: 45 vulnerabilities</li>\n<li>Arbitrary file viewing: 23 vulnerabilities</li>\n<li>SQL injection: 16 vulnerabilities</li>\n</ul>\n<p>The plugin has an admin page listing all vulnerabilities relevant to the plugins you have installed, as well as those that have vulnerabilities in other versions. There will be times when a vulnerability is reported before any update is available, in which case you might want to deactivate and remove the plugin in question.</p>\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/plugin-vulnerabilities-list.png" rel="prettyphoto[41867]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/plugin-vulnerabilities-list.png?resize=530%2C275" alt="plugin-vulnerabilities-list" class="aligncenter size-full wp-image-41883" /></a></p>\n<p>Updating software for security issues is a natural part of life on the web. With the popularity of WordPress at an all-time high, the discovery of vulnerabilities in core and third party extensions is only going to increase. If you feel overwhelmed by keeping up with security updates, the <a href="https://wordpress.org/plugins/plugin-vulnerabilities/" target="_blank">Plugin Vulnerabilities</a> plugin can help you be more responsive to potential threats.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 10 Apr 2015 01:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Matt: Jane Doze &amp; CURTAINS";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44937";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:40:"http://ma.tt/2015/04/jane-doze-curtains/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:559:"<p>One of my favorite DJ groups <a href="http://www.thejanedoze.com/">the Jane Doze</a>, they have a new original song called Lights Go Down:</p>\n<p></p>\n<p>It&#8217;s cool to hear and also on <a href="http://hyperurl.co/LGDiTunes">iTunes</a> and <a href="http://hyperurl.co/LGDspotify">Spotify</a>. I great test song for the <a href="http://ma.tt/2015/04/best-headphones-spring-2015-edition/">headphones I talked about yesterday</a>. <img src="http://i2.wp.com/s.ma.tt/blog/wp-includes/images/smilies/simple-smile.png?w=604" alt=":)" class="wp-smiley" /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 09 Apr 2015 23:40:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"WPTavern: Critical Security Update For the WP REST API Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41856";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"http://wptavern.com/critical-security-update-for-the-wp-rest-api-plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2112:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/WPRestAPIFeaturedImage.png" rel="prettyphoto[41856]"><img class="aligncenter size-full wp-image-41858" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/WPRestAPIFeaturedImage.png?resize=769%2C240" alt="WP Rest API Featured Image" /></a>The WP REST API development team has released a <a title="https://make.wordpress.org/core/2015/04/09/wp-rest-api-critical-security-release/" href="https://make.wordpress.org/core/2015/04/09/wp-rest-api-critical-security-release/">critical security update</a>. Rachel Baker, one of the lead developers of the WP REST API plugin says, &#8220;The release fixes a serious information disclosure vulnerability, which allowed for unpublished content and post revisions to be retrieved via the REST API.&#8221; The security vulnerability affects versions 1.2.0 and earlier.</p>\n<p>The security update was coordinated by the REST API and the WordPress core security team. The WordPress core security team is pushing out automatic updates for each branch. There are packages for 1.2.1, 1.1.3, 1.0.2, 0.9.2, and 0.8.2.</p>\n<p>If you&#8217;re using WP REST API version 1.2.0 or earlier, don&#8217;t wait for the auto update. Instead, manually update as soon as possible. You can update by browsing to Dashboard &#8211; Updates in the WordPress backend, download it from <a href="https://wordpress.org/plugins/json-rest-api/">the plugin directory</a> (<a href="https://downloads.wordpress.org/plugin/json-rest-api.latest-stable.zip">zip</a>), or pull it <a href="https://github.com/WP-API/WP-API/tags">from GitHub.</a></p>\n<p>In addition to the WP REST API plugin, <a title="https://wordpress.org/plugins/custom-contact-forms/" href="https://wordpress.org/plugins/custom-contact-forms/">Custom Contact Forms</a> and <a title="https://wordpress.org/plugins/reactor-core/" href="https://wordpress.org/plugins/reactor-core/">Reactor: Core, </a>have pushed out security updates related to the WP REST API vulnerability. If you use any of the plugins mentioned above, please update as soon as possible.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 09 Apr 2015 21:45:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WPTavern: Give: A New Free Donations Plugin for WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41772";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"http://wptavern.com/give-a-new-free-donations-plugin-for-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5787:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/give-plugin.jpg" rel="prettyphoto[41772]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/give-plugin.jpg?resize=683%2C300" alt="give-plugin" class="aligncenter size-full wp-image-41830" /></a></p>\n<p>The new <a href="https://wordpress.org/plugins/give/" target="_blank">Give</a> WordPress plugin launched this week on WordPress.org. As far as donation plugins go, this one is making a big splash with its 0% commission charge approach. Any site using the plugin can collect 100% of the donations given, as opposed to online donation sites that generally keep a portion of funds raised.</p>\n<p><a href="https://givewp.com/" target="_blank">Give</a> aims to &#8220;Democratize Generosity,&#8221; a nod to the mission of WordPress. The plugin was created to empower causes and non-profits with the ability to host their own donation forms, easily manage reporting and customize emails directly within the WordPress admin.</p>\n<p>Give supports the creation of flexible forms, so that you can accept payments of different amounts or allow users to set a custom amount. Developers can also easily add custom form fields.</p>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/give-plugin-screenshot.jpg" rel="prettyphoto[41772]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/give-plugin-screenshot.jpg?resize=779%2C469" alt="give-plugin-screenshot" class="aligncenter size-full wp-image-41841" /></a></p>\n<p>The plugin is built by the folks behind <a href="http://wordimpress.com/" target="_blank">WordImpress</a>. Co-founder <a href="https://twitter.com/learnwithmattc" target="_blank">Matt Cromwell</a> said that they naturally fell into the donations niche after many frustrating experiences supporting non-profits without donation-specific tools.</p>\n<p>&#8220;Devin and I both worked with non-profits before WordImpress and struggled with donations every time,&#8221; Cromwell said. &#8220;One client we still serve manages donations with a mess of WooCommerce/Donation Extensions/Subscription Extension/QuickCheckout. Small bugs in one make the whole thing break down. Plus, you don&#8217;t get good reporting on total donations, or donations per donor, and you have to tweak the language strings everywhere.&#8221;</p>\n<p>Despite a plethora of donation plugins on WordPress.org and donation features integrated into some of the major e-commerce options, the Give team saw an opportunity for a more solid, streamlined approach for collecting and managing donations.</p>\n<p>&#8220;We felt like this was a space that really needed a robust &#8211; but best practices &#8211; solution, and Woo and EDD and GForms were just not made for this purpose,&#8221; Cromwell said.</p>\n<h3>Adopting the Freemium Model: Free Core Plugin + Commercial Extensions</h3>\n<p>The team behind Give hopes to monetize the plugin by selling <a href="https://givewp.com/addons" target="_blank">add-ons</a>, the same model used successfully by Easy Digital Downloads, WooCommerce, and other products. Creating a free core product with commercial extensions is becoming an increasingly more popular way of making a business out of developing open source software.</p>\n<p>The core plugin currently supports offline payments and the PayPal Standard payment gateway. Commercial add-ons are available for others, including Stripe, WePay, Authorize.net, Paymill, and PayPal Pro. Offline payments can be useful for sites that are taking registration at events or for people who would prefer to mail a check.</p>\n<p>The Give plugin actually borrows a good deal of its code base from Easy Digital Downloads (EDD) and its gateways, which gave the team a bit of a head start. Trimming it down and writing donation-specific code for the core and gateways was the bulk of the effort.</p>\n<p>&#8220;All together, development of the core plugin, current add-ons, and the website has taken Devin and I roughly 6 months,&#8221; Cromwell said. &#8220;Of course that&#8217;s while maintaining our current sales and support of our existing products and initiating a few other new avenues we&#8217;re headed into (specifically themes).&#8221;</p>\n<p>The Give plugin team plans to create themes for non-profits that will work seamlessly with the Give plugin. &#8220;Themes are a great market, but we want to make sure we do it right, so we&#8217;re taking our time there,&#8221; he said.</p>\n<p>Cromwell reports that sales for the add-ons have been slow so far, and WordPress.org shows less than 10 active installations using the plugin. The team is hopeful that the core plugin will gain more users and that in the future they will be able to transition Give development and support into more of a full-time effort.</p>\n<p>&#8220;We believe it will take off well,&#8221; Cromwell said. &#8220;We think of our business as setting up &#8216;tent poles&#8217;. For WordImpress, QuickCheckout has been our best tent pole. But now we&#8217;re hoping that Give will become the biggest tent pole that helps raise all others. It&#8217;s another piece of our brand that we&#8217;re really proud of.&#8221;</p>\n<p>The team behind Give partnered with <a href="http://girldevelopit.com/" target="_blank">Girl Develop It</a> to support women interested in learning how to code. If you want to see how the plugin works, check out the <a href="https://givewp.com/demo/" target="_blank">live demo</a> built to support their partnership. There you can see different variations of the forms and custom form fields in action. Give is available for download on both <a href="https://wordpress.org/plugins/give/" target="_blank">WordPress.org</a> and <a href="https://github.com/WordImpress/Give" target="_blank">GitHub</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 09 Apr 2015 19:32:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:86:"WPTavern: WPWeekly Episode 187 – The Pain Points of WordPress with Bob Dunn of BobWP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wptavern.com?p=41813&preview_id=41813";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:92:"http://wptavern.com/wpweekly-episode-187-the-pain-points-of-wordpress-with-bob-dunn-of-bobwp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3698:"<p>This week, <a title="http://marcuscouch.com/" href="http://marcuscouch.com/">Marcus Couch</a> and I are joined by WordPress trainer and coach, <a title="http://bobwp.com/" href="http://bobwp.com/">Bob Dunn</a>. Dunn provides WordPress training through workshops, one-on-one training, and tutorials. I enjoy interviewing WordPress trainers and coaches because they have unique insight into the trouble spots users experience with WordPress.</p>\n<p>We discuss some of the most common pain points people experience using WordPress including, learning the difference between posts and pages, using the visual editor, and best practices for making changes to themes. Dunn explains why there will always be a need for WordPress training. He also explains that people learn things differently, which is confirmed based on the <a title="http://wptavern.com/bob-dunns-survey-shows-text-and-screenshots-are-the-preferred-way-to-learn-wordpress" href="http://wptavern.com/bob-dunns-survey-shows-text-and-screenshots-are-the-preferred-way-to-learn-wordpress">results of his latest survey</a>.</p>\n<h2>Stories Discussed:</h2>\n<p><a title="http://wptavern.com/pressthis-revamped-with-a-new-user-interface-and-minimalist-design" href="http://wptavern.com/pressthis-revamped-with-a-new-user-interface-and-minimalist-design">PressThis Revamped with a New User Interface and Minimalist Design</a><br />\n<a title="http://wptavern.com/themereview-co-expands-services-to-include-plugin-reviews" href="http://wptavern.com/themereview-co-expands-services-to-include-plugin-reviews">ThemeReview.co Expands Services to Include Plugin Reviews</a><br />\n<a title="http://wptavern.com/emoji-enables-wordpress-to-natively-support-chinese-korean-and-japanese-characters" href="http://wptavern.com/emoji-enables-wordpress-to-natively-support-chinese-korean-and-japanese-characters">WordPress 4.2 Will Natively Support Chinese, Korean, and Japanese Characters</a><br />\n<a title="http://wptavern.com/wordpress-core-team-announces-release-leads-for-wordpress-4-3-and-4-4" href="http://wptavern.com/wordpress-core-team-announces-release-leads-for-wordpress-4-3-and-4-4">WordPress Core Team Announces Release Leads for WordPress 4.3 and 4.4</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a title="https://wordpress.org/plugins/disk-usage-sunburst/" href="https://wordpress.org/plugins/disk-usage-sunburst/">Disk Usage Sunburst</a> allows you to visualize and drill down the disk usage of your whole WordPress installation.</p>\n<p><a title="https://wordpress.org/plugins/download-media-library/" href="https://wordpress.org/plugins/download-media-library/">Download Media Library</a> enables you to download the files from the Media Library in ZIP format.</p>\n<p><a title="https://wordpress.org/plugins/tracking-code-manager/" href="https://wordpress.org/plugins/tracking-code-manager/">Tracking Code Manager</a> manages all of your tracking code and conversion pixels. It&#8217;s compatible with Facebook Ads, Google Adwords and several different SaaS tools.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, April 15th 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="http://www.wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #187:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 09 Apr 2015 06:59:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:92:"WPTavern: Stack Overflow Developer Survey Ranks WordPress as the 3rd Most Dreaded Technology";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41651";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:102:"http://wptavern.com/stack-overflow-developer-survey-ranks-wordpress-as-the-3rd-most-dreaded-technology";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6209:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/stack-overflow-developer-survey-2015.png" rel="prettyphoto[41651]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/stack-overflow-developer-survey-2015.png?resize=700%2C287" alt="stack-overflow-developer-survey-2015" class="aligncenter size-full wp-image-41740" /></a></p>\n<p><a href="http://stackoverflow.com/" target="_blank">Stack Overflow</a> has released the results of its <a href="http://stackoverflow.com/research/developer-survey-2015" target="_blank">2015 developer survey</a>, which covers a wide range of topics including preferred programming languages, education, compensation, and even caffeine consumption. The 45-question survey ran for just two weeks in February and the site was able to collect results from more than 26,000 participants.</p>\n<p>Obviously, Stack Overflow survey respondents do not represent a perfect cross section of all developers worldwide, and the overview clearly states the results are skewed by selection bias and language bias, among other biases. However, the site does reach a massive audience of developers, with 32 million visits per month, 25 million of which are return visitors.</p>\n<p>The vast majority of respondents were male (92.1%) who describe their profession as &#8220;Full-stack web developer&#8221; (32.4%), the largest section, followed by student (13.6%), back-end web developer (10.1%), and mobile developer (9.1%).</p>\n<p>WordPress was highlighted as one of the <a href="http://stackoverflow.com/research/developer-survey-2015#tech-super" target="_blank">most dreaded technologies</a> of those surveyed, trailing Visual Basic and Salesforce. The term &#8220;most dreaded&#8221; was used to indicate the &#8220;% of devs who are developing with the language or tech but have not expressed interest in continuing to do so.&#8221;</p>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/most-dreaded.png" rel="prettyphoto[41651]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/most-dreaded.png?resize=1025%2C751" alt="most-dreaded" class="aligncenter size-full wp-image-41749" /></a></p>\n<p>Given that Stack Overflow generally attracts English-speaking, full-stack developers who enjoy its gamified question and answer format, it&#8217;s not surprising that you would find WordPress listed among the most dreaded technologies.</p>\n<p>There are many things that are done &#8220;the WordPress way,&#8221; which prevent developers from quickly jumping in when they are new to the platform. WordPress&#8217; unwavering commitment to backwards compatibility is also a major turn off for many developers. However, WordPress usage stats, currently at <a href="http://w3techs.com/technologies/overview/content_management/all" target="_blank">23.7&amp; of all websites</a>, continue to climb higher due to the project&#8217;s deep commitment to its users.</p>\n<h3>Useful Bits for Employers and Job Hunters</h3>\n<p>The Stack Overflow survey may be heavily skewed towards a specific range of developers with similar backgrounds, but the results contain quite a bit of useful information for employers looking to hire developers and for individuals in search of a job.</p>\n<p>For example, the results revealed that &#8220;50% of developers say working remote is at least somewhat important.&#8221; The overview advises employers to strongly consider offering the ability to work remotely. <strong>&#8220;Note to companies trying to hire: if your job listing doesn&#8217;t include remote, you could be cutting your possible applicant pool in half.&#8221;</strong></p>\n<p>Stack Overflow is also able to interpret that data in interesting ways based on users&#8217; experience points on the site. They found that those with the most experience points said that being able to work remotely was non-negotiable.</p>\n<p>Based on 16,522 responses, the results indicate that the average developer spends 7+ hours per week coding on the side. &#8220;70% of respondents reported that they spend 2 or more hours per week programming either as a hobby or working on open source software. 20% of respondents spend more than 10 hours programming away from work.&#8221;</p>\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/side-projects.jpg" rel="prettyphoto[41651]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/side-projects.jpg?resize=715%2C373" alt="side-projects" class="aligncenter size-full wp-image-41803" /></a></p>\n<p>If you&#8217;re a developer hunting for a job and you&#8217;re not spending your free time contributing to open source projects or building your own software, your resume and experience may not be as attractive as others who are active on projects outside of work.</p>\n<p>The survey also provides a comprehensive breakdown of compensation by <a href="http://stackoverflow.com/research/developer-survey-2015#work-complang" target="_blank">technology</a>, <a href="http://stackoverflow.com/research/developer-survey-2015#work-compensation-geo" target="_blank">purchasing power</a>, <a href="http://stackoverflow.com/research/developer-survey-2015#work-compensation-remote" target="_blank">remote status</a>, and <a href="http://stackoverflow.com/research/developer-survey-2015#work-compensation-so" target="_blank">Stack Overflow reputation</a>.</p>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/compensation.jpg" rel="prettyphoto[41651]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/compensation.jpg?resize=713%2C605" alt="compensation" class="aligncenter size-full wp-image-41806" /></a></p>\n<p>Compensation by purchasing power indicates that Ukraine is the top place for developers to live and work, followed by South Africa, USA, Australia, and Russia. If you&#8217;re thinking about relocating, these results might give you more factors to consider.</p>\n<p>For more information on employment status, job satisfaction, and developers&#8217; preferred text editor, IDE, and source control, check out the <a href="http://stackoverflow.com/research/developer-survey-2015" target="_blank">full survey results</a> on StackOverflow.com.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Apr 2015 22:49:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:80:"WPTavern: Microsoft’s Open Source Progress and Its Relationship with WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41769";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"http://wptavern.com/microsofts-open-source-progress-and-its-relationship-with-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6783:"<p>For years, Microsoft and open source have rarely been used in the same sentence. With <a title="http://news.microsoft.com/ceo/announcement/index.html" href="http://news.microsoft.com/ceo/announcement/index.html">new leadership</a>, the company has made major strides in becoming part of the <a title="http://opensource.org/" href="http://opensource.org/">open source movement</a>.</p>\n<p>Late last year, the <a title="http://www.pcworld.com/article/2846892/microsoft-open-sources-net-server-stack.html" href="http://www.pcworld.com/article/2846892/microsoft-open-sources-net-server-stack.html">company announced</a> its .NET server stack would be open source, enabling .NET to become a cross-platform framework. The company has placed thousands of open source repositories on <a title="https://github.com/Microsoft" href="https://github.com/Microsoft">its Github account</a>. When asked if Windows could one day be open source, Mark Russinovich, one of Microsoft&#8217;s top engineers says, &#8220;<a title="http://www.wired.com/2015/04/microsoft-open-source-windows-definitely-possible/" href="http://www.wired.com/2015/04/microsoft-open-source-windows-definitely-possible/">It’s definitely possible, it’s a new Microsoft.</a>&#8221; Microsoft <a title="http://www.microsoft.com/en-us/openness/default1.aspx#opensource" href="http://www.microsoft.com/en-us/openness/default1.aspx#opensource">even has a website</a> that explains its strategy and showcases open source projects its involved with.</p>\n<h2>Microsoft Azure Teams Up with WordPress</h2>\n<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/MicrosoftAzureLogo.png" rel="prettyphoto[41769]"><img class="aligncenter size-full wp-image-41786" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/MicrosoftAzureLogo.png?resize=799%2C150" alt="MicrosoftAzureLogo" /></a></p>\n<p>I initially noticed the company&#8217;s change in attitude towards open source in 2009 when Microsoft&#8217;s chief technology officer, Ray Ozzie, announced at the Professional Developers Conference <a href="http://www.betanews.com/article/Live-from-the-PDC-2009-Day-1-keynote/1258475450" target="_blank">that WordPress could be run using the Azure platform</a>. <a title="https://www.windowsazure.com/en-us/" href="https://www.windowsazure.com/en-us/">Windows Azure</a> is a cloud platform that enables you to build, deploy, and manage WordPress sites across a global network of Microsoft-managed data centers. In <a href="https://vip.wordpress.com/2009/11/19/wordpress-and-windows-azure/">a post </a>on the WordPress.com VIP blog, Matt Mullenweg explained why it&#8217;s a good move.</p>\n<blockquote><p>WordPress and Windows Azure probably aren’t the first two things you’d think of together. WordPress has been free and open source software from the very beginning, Windows not so much, but we’ve always supported as many platforms as possible and for at least 4 years now you could run WP on Windows and IIS (Internet Information Services).</p>\n<p>Choice and competition are great for spurring innovation and better for users and I believe open source software is a good thing even if it’s on a proprietary platform. (Just like we have an open source <a href="http://iphone.wordpress.org/">iPhone application</a>, or encourage people to use <a href="http://www.mozilla.com/firefox/">Firefox</a> on Windows.)</p></blockquote>\n<h2>Supporting the WordPress Community</h2>\n<p>Since 2009, Microsoft has sponsored several WordCamps, meetups, and WordPress specific events. I remember attending a WordCamp in 2010 sponsored by Microsoft and joking with attendees that it must be a mistake.</p>\n<p>However, one of Microsoft&#8217;s representatives was in attendance and assured me that the company was changing its position on open source and sponsoring WordCamps was a good way to spread the message.</p>\n<h2>Examples of Microsoft Using WordPress</h2>\n<p><a title="http://webdevstudios.com/" href="http://webdevstudios.com/">WebDevStudios</a>, a company that specializes in web development using WordPress, has migrated several of Microsoft&#8217;s key websites to WordPress. In late 2014, <a title="http://news.microsoft.com" href="http://news.microsoft.com">Microsoft&#8217;s News Center</a> re-launched on WordPress. The <a title="http://webdevstudios.com/portfolio/microsoft-news-center/" href="http://webdevstudios.com/portfolio/microsoft-news-center/">work involved</a> a custom design and complex data migration from a proprietary CMS to WordPress, across 38 sites, in 16 different languages.</p>\n<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/MicrosoftNewsCenter.png" rel="prettyphoto[41769]"><img class="size-full wp-image-41783" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/MicrosoftNewsCenter.png?resize=1025%2C758" alt="The new Microsoft News Center" /></a>The new Microsoft News Center\n<p>Around the same time, the company migrated <a title="http://www.microsoft.eu/" href="http://www.microsoft.eu/">Microsoft Europe </a>to WordPress. Microsoft Europe focuses on Connected Lifestyles, What’s Next, Transforming Business, and Impact on Society for European countries.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/MicrosoftEurope.png" rel="prettyphoto[41769]"><img class="size-full wp-image-41784" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/MicrosoftEurope.png?resize=1025%2C856" alt="The new Microsoft Europe" /></a>The new Microsoft Europe\n<p>The <a title="http://blogs.windows.com/" href="http://blogs.windows.com/">Microsoft Windows blog</a> is a WordPress multisite network devoted to Windows and Internet Explorer topics. The blogs within the network are in multiple foreign languages that focus on content related to that region of the world.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/Microsoftblogs.png" rel="prettyphoto[41769]"><img class="size-full wp-image-41785" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/Microsoftblogs.png?resize=1025%2C531" alt="Microsoft Blogs uses WordPress Multisite" /></a>Microsoft Blogs uses WordPress Multisite\n<h2>The Last Laugh</h2>\n<p>It&#8217;s impressive to think how much Microsoft has changed to entertain the idea of open sourcing Windows. In 2007, when <a title="http://ma.tt/2007/10/microsoft-open-source/" href="http://ma.tt/2007/10/microsoft-open-source/">Mullenweg predicted</a> that Microsoft will open source its software by 2017, I thought it was one of the funniest posts I&#8217;ve ever read. After witnessing the progress the company has made and <a title="http://openness.microsoft.com/blog/" href="http://openness.microsoft.com/blog/">continues to make</a>, it&#8217;s possible he might have the last laugh.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Apr 2015 22:07:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Matt: Best Headphones Spring 2015 Edition";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44914";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://ma.tt/2015/04/best-headphones-spring-2015-edition/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4526:"<p>Since my <a href="http://ma.tt/2014/10/beats-studio-wireless-vs-samsung-level-over/">last headphone post</a> I&#8217;ve been trying out lots of different models, and have settled on two new ones as my daily drivers: the <a href="http://www.amazon.com/dp/B00IYA2ZJW">PowerBeats 2</a> and the <a href="http://www.amazon.com/dp/B00SNI44CQ">Sennheiser Momentum 2 Wireless</a>.</p>\n<p><a href="https://ma.tt/files/2015/04/beats_by_dre_pr_sentiert_lebron_james_in_re_established_powerbeats2_wireless_01.jpg"><img class="  wp-image-44929 alignleft" src="https://ma.tt/files/2015/04/beats_by_dre_pr_sentiert_lebron_james_in_re_established_powerbeats2_wireless_01.jpg" alt="beats_by_dre_pr_sentiert_lebron_james_in_re_established_powerbeats2_wireless_01" width="242" height="248" /></a>I&#8217;ll talk about the Beats first because it&#8217;s easy: <a href="http://ma.tt/2014/10/beats-studio-wireless-vs-samsung-level-over/">before I used a Plantronics set for exercise</a>, but the battery life wasn&#8217;t great and they would often fall out when running. The Powerbeats 2 are light, have great battery life (they claim 6 hours, that feels about right), stay in place even when running in <a href="http://en.wikipedia.org/wiki/Climate_of_Houston#Summer">the Houston heat</a>, charge fast, and as a bonus they look cool. (Beats has always been great about that.) The sound? They&#8217;re bad, but good at it. There&#8217;s basically no isolation so you can hear traffic and things around you at lower volumes, which is actually a bonus, and if you turn up the volume they get loud enough to drown other stuff out. Buy these for the function, not the sound quality, and you can pick them up from any Best Buy kiosk in the airport or Apple Store if you lose or forget them, so they&#8217;re pretty ubiquitous.</p>\n<p><a href="https://ma.tt/files/2015/04/71mNNnOhCKL._SL1500_-2.jpg"><img class="alignright  wp-image-44930" src="https://ma.tt/files/2015/04/71mNNnOhCKL._SL1500_-2-784x740.jpg" alt="71mNNnOhCKL._SL1500_-2" width="360" height="340" /></a>I heard about the Sennheisers from <a href="http://carlhancock.com/">Carl Hancock</a> who tried them and gave them a high recommendation. I had trouble finding them but there was a pair local to me at <a href="http://www.bhphotovideo.com/">B&amp;H in New York</a> so I got them delivered and I was immediately impressed with them. They&#8217;re better than my <a href="http://ma.tt/2014/10/beats-studio-wireless-vs-samsung-level-over/">previous wireless over-ear recommendation the Samsung Level Over</a> in every way: sound, size, compatibility, aesthetics, usability, noise canceling.</p>\n<p>The sound is the best I&#8217;ve heard from wireless headphones so far. Just the right balance. The noise canceling apparently uses 4 different mics and I&#8217;ve found it more than sufficient on dozens of plane rides, including passing the noisy baby test. My only complaint is they don&#8217;t &#8220;grip&#8221; my ears as much, so some sound leaks in that way. They fold up to be pretty small, and I just toss them in my backpack. <a href="https://ma.tt/files/2015/04/81FYeTRjv4L._SL1500_-2.jpg"><img class="  wp-image-44931 alignleft" src="https://ma.tt/files/2015/04/81FYeTRjv4L._SL1500_-2-784x740.jpg" alt="81FYeTRjv4L._SL1500_-2" width="252" height="238" /></a>The battery goes <em>forever</em>, or as they claim 22 hours. You really forget to charge these things for a while and they still have plenty of juice. The volume and other controls actually work with the iPhone, and bluetooth calls have sounded great and people can actually hear me. Only downside is they have basically a proprietary connection for their 1/8th inch cable, so you have ta carry that around, but they charge with standard micro-USB. The only possible challenger I can think to these are the <a href="http://www.amazon.com/dp/B00R45Z2WU/">BeoPlay H8s</a>, which I haven&#8217;t tried yet.</p>\n<p><strong>tl; dr:</strong> If you want to exercise and get sweaty, get the <a href="http://www.amazon.com/dp/B00IYA2ZJW">Powerbeats 2 in your favorite color</a>. For traveling, listening to music, talking, and generally enjoying amazing sound without worrying about wires, try out the <a href="http://www.amazon.com/dp/B00SNI44CQ">Sennheiser Momentum Wireless</a>.</p>\n<p>I think it&#8217;s interesting that both of these recommendations are version 2.0 of a product, it&#8217;s good to see companies iterating and improving on products even if they&#8217;ve already been successful in the marketplace.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Apr 2015 19:34:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"WPTavern: Git and WordPress: 3 Tips to Do It Better";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41770";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wptavern.com/git-and-wordpress-3-tips-to-do-it-better";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7018:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/03/petersuhm.jpeg" rel="prettyphoto[41770]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/03/petersuhm.jpeg?resize=150%2C150" alt="petersuhm" class="alignright size-thumbnail wp-image-40534" /></a>This post was contributed by guest author <a href="http://petersuhm.com/" target="_blank">Peter Suhm</a>. Peter is a web developer from the Land of the Danes. He is the creator of <a href="http://wptavern.com/wp-pusher-aims-to-provide-pain-free-deployment-of-wordpress-themes-and-plugins-from-github" target="_blank">WP Pusher</a> and a huge travel addict, bringing his work along with him as he goes.<br />\n&nbsp;</p>\n<hr />\n<p>This article is based on a few ideas, thoughts and opinions I have about Git and WordPress. There is still no de-facto standard for how these things are dealt with in WordPress and I think it is our responsibility, as a community, to have discussions about them. These are my opinions and I would love to hear yours as well.</p>\n<p>Let&#8217;s get right to it.</p>\n<h2>R-E-S-P-E-C-T</h2>\n<p>I have ranted about the subject of repository structure before and I have strong opinions about it. In my opinion there is one &#8211; and only one &#8211; way to structure Git repositories in a WordPress context. That one way is the one-package / one-repository approach. Let me explain why.</p>\n<p>While working on WP Pusher, I have seen many different approaches to structuring Git repositories. Two approaches are especially common, and, in my opinion, equally bad.</p>\n<p>The first one is Git-it-all, where everything, including WordPress core, plugins and themes are put under version control. The other one, and more common, is <code>wp-content</code>-under-version-control. I say that both of them are equally bad, because no matter what, you are going to have a lot of 3rd party code included in your Git repository, which quickly becomes a mess. Every time WordPress or one of your plugins or themes ships a new update, you will have to somehow deal with it within your version control system.</p>\n<p>The argument for having WordPress itself under version control is most often to lock down the version of the code. This seems a bit redundant to me, since WordPress is already developed using version control (SVN) and comes with a version number for each update. Why would you need to manage that yourself when it is already managed for you? Today, <a href="https://davidwinter.me/install-and-manage-wordpress-with-composer/" target="_blank">installing WordPress with Composer</a> is super easy and then you can control your version from the <code>composer.json</code> file. There are no excuses. Do not include WordPress in your Git repository.</p>\n<p>The second approach, <code>wp-content</code>-under-version-control, is often chosen as an easy way of deploying multiple plugins that might depend on each other. Still, I am not buying it. Having 5, 10, or even 20 Git repositories in your <code>wp-content</code> directory is really not an issue. Also, if your plugins depends on each other, take a look at must-use plugins.</p>\n<p>So here is the deal: <strong>You need to treat each of your packages (be it a plugin or a theme) with respect.</strong> You need to give each of them their own Git repository. They are their own entities and needs to be separated. Keeping them locked up together makes it impossible to share code across projects. It is the way Git is supposed to work, it is the way Composer is supposed to work, and it is even the way WordPress itself works.</p>\n<h2>To Ignore, Or Not To Ignore</h2>\n<p>Yes, that is the question and I do not have the answer. I am, of course, talking about the <code>.gitignore</code> file. The file that tells Git which files and directories to exclude from version control. Actually, the real question is: Should you precompile your dependencies before shipping your plugin, or not? (I will focus on PHP dependencies, since I do not know enough about front-end things.)</p>\n<p>In an ideal world, you would never ship something like Composer dependencies with your package. It would be up to the user to compile and fetch those dependencies that fit their specific environment. That is the whole point of dependency management tools. However, in WordPress, there is absolutely no sane way to handle these PHP dependencies. So if you are shipping a WordPress plugin that relies on 3rd party dependencies, I would say &#8220;ship it all&#8221;, even though it feels very wrong and awkward.</p>\n<p>This is <strong><em>bad</em></strong>, though, because what happens when Mailchimp for WordPress ships with one Composer package in v1.0.0 and WP Pusher ships with the same package but v2.0.0? Oh, the horror. The plugin that is loaded first will get to autoload its classes. The others will not (since it would result in a &#8220;class exists&#8221; fatal error). I probably do not need to explain why this is bad.</p>\n<p>As a WordPress developer, you can try to mitigate this by making sure that the functionality you rely on is actually available at runtime, but this is not optimal. However, I really think this is WordPress&#8217; responsibility. We cannot do PHP without using 3rd party code. That would be stupid. So as I said: No clear answer. I guess it just depends.</p>\n<h2>Exporting Repositories aka Zippin&#8217;</h2>\n<p>Recently, <a href="http://www.reddit.com/r/PHP/comments/2jzp6k/i_dont_need_your_tests_in_my_production/" target="_blank">someone on Reddit</a> proposed that people start to include a <code>.gitattributes</code> file in their repositories, containing export instructions for Git to use when archiving repositories (zipping them). Basically, by specifying it in your <code>.gitattributes</code> file, you can make Git ignore files that you only need for development.</p>\n<p>The Reddit thread was specifically targeting authors of packages distributed with Composer, but we can use this trick as well. If you exclude files from exports, they will not appear in the zip archives that you can download from GitHub or Bitbucket. This is nifty, especially if you use a tool like my <a href="https://wppusher.com/" target="_blank">WP Pusher</a> to move files from Git to WordPress, since it can drastically minimize the size of the archive files. No need to ship files such as assets, that are already compiled, and unit tests to end users.</p>\n<p>Here is the <code>.gitattributes</code> file for WP Pusher:</p>\n<pre class="brush: xml; light: true; title: ; notranslate">/features       export-ignore\n/apache-ci.conf export-ignore\n/behat.yml      export-ignore\n/circle.yml     export-ignore\n/composer.json  export-ignore\n/composer.lock  export-ignore</pre>\n<p>Before I knew about this trick, I manually deleted these files before shipping the plugin. Now it is done automatically.</p>\n<p>There you go. Just a few things I want you to think about and consider if you are a WordPress developer using Git. Thanks for reading along.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Apr 2015 18:15:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"WPTavern: Persistent XSS Vulnerability Discovered in WP Super Cache Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41702";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"http://wptavern.com/persistent-xss-vulnerability-discovered-in-wp-super-cache-plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2905:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/wp-super-cache.png" rel="prettyphoto[41702]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/wp-super-cache.png?resize=739%2C296" alt="wp-super-cache" class="aligncenter size-full wp-image-41755" /></a></p>\n<p>The security team at Sucuri has issued an <a href="http://blog.sucuri.net/2015/04/security-advisory-persistent-xss-in-wp-super-cache.html" target="_blank">advisory</a> for WordPress users who have the <a href="https://wordpress.org/plugins/wp-super-cache/" target="_blank">WP Super Cache</a> plugin activated on their sites. The popular caching plugin contains a dangerous persistent XSS vulnerability that was promptly patched in its 1.4.4 release.</p>\n<p>Sucuri ranks the risk as &#8220;Dangerous&#8221; with a <a href="http://en.wikipedia.org/wiki/DREAD:_Risk_assessment_model" target="_blank">DREAD</a> score of 8/10. Exploiting the vulnerability is relatively easy for an attacker intent on injecting a backdoor. Sucuri breaks down the technical details of the threat as follows:</p>\n<blockquote><p>Using this vulnerability, an attacker using a carefully crafted query could insert malicious scripts to the plugin’s cached file listing page. As this page requires a valid nonce in order to be displayed, a successful exploitation would require the site’s administrator to have a look at that particular section, manually.</p>\n<p>When executed, the injected scripts could be used to perform a lot of other things like adding a new administrator account to the site, injecting backdoors by using WordPress theme edition tools, etc.</p></blockquote>\n<p>WP Super Cache is currently in use on more than a million WordPress sites, according to WordPress.org. If someone is looking to exploit the vulnerability in particular, there would be no shortage of sites to prey upon.</p>\n<p>In the recent <a href="http://wptavern.com/fbi-warns-of-isil-defacement-attacks-on-wordpress-sites" target="_blank">defacement attacks propagated by ISIL sympathists against WordPress sites</a>, hackers have been capitalizing on the <a href="http://wptavern.com/zero-day-vulnerability-discovered-in-fancybox-for-wordpress-plugin" target="_blank">recent vulnerability found in the Fancy Box for WordPress plugin</a>. With just 100,000+ active installations, potentially vulnerably Fancy Box plugin users come in at a small fraction of those affected by the WP Super Cache security issue.</p>\n<p>Short of forcing an automatic plugin update on users, WordPress.org has no way of indicating that one particular plugin update may be more imperative than other routine updates. That&#8217;s why the best practice for site administrators is to keep tabs on your installations and set aside time to update extensions as part of your routine. If you&#8217;re using WP Super Cache, you are advised to update as soon as possible.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Apr 2015 16:30:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"Matt: Giving Back to Open Source";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=44891";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://ma.tt/2015/04/giving-back-to-open-source/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:372:"<blockquote><p>Getting out of our ocean to explore the islands of open source is one of the best ways that we can expand our horizons, strengthen our skill sets, and build better relationships.</p></blockquote>\n<p>Pippin on <a href="https://pippinsplugins.com/giving-back-for-the-future-of-open-source/">why giving back to open source has made his company better</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Apr 2015 04:00:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:65:"WPTavern: FBI Warns of ISIL Defacement Attacks on WordPress Sites";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41707";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wptavern.com/fbi-warns-of-isil-defacement-attacks-on-wordpress-sites";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4587:"<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/03/security.jpg" rel="prettyphoto[41707]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/03/security.jpg?resize=1024%2C514" alt="photo credit: Lock - (license)" class="size-full wp-image-40187" /></a>photo credit: <a href="http://www.flickr.com/photos/58441544@N00/2660230441">Lock</a> &#8211; <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>\n<p>The FBI issued a public service announcement today, <a href="http://www.ic3.gov/media/2015/150407-1.aspx" target="_blank">warning concerning WordPress website attacks</a> being carried out by individuals sympathetic to the Islamic State in the Levant (ISIL) a.k.a. Islamic State of Iraq and al-Shams (ISIS). The perpetrators of these attacks are defacing sites across various platforms such as news organizations, businesses, government sites, and religious institutions.</p>\n<p>Last month the would-be terrorists gained infamy by <a href="http://wptavern.com/hackers-hijack-fancybox-plugin-to-deface-wordpress-sites-with-isis-propaganda" target="_blank">hijacking the Fancybox Plugin vulnerability in order to deface sites with ISIS propaganda</a>. This particular vulnerability allows malware (or any random script/content) to be added to the vulnerable site and was most recently identified as the entry point for the hackers who injected iframes with ISIS messages.</p>\n<p>A patch exists for the vulnerability and those affected can easily remove the plugin as an alternative. However, many WordPress users are either ignorant of the security issue or indifferent. The FBI&#8217;s announcement serves to warn users of the cost and inconvenience associated with this kind of attack:</p>\n<blockquote><p>Although the defacements demonstrate low-level hacking sophistication, they are disruptive and often costly in terms of lost business revenue and expenditures on technical services to repair infected computer systems.</p></blockquote>\n<p>The announcement cited multiple plugin vulnerabilities as a security risk to WordPress users but did not identify the plugins for which patches are currently available. Technical details of the brief are limited to a generalized list of consequences should a vulnerable site get hacked:</p>\n<blockquote><p>Successful exploitation of the vulnerabilities could result in an attacker gaining unauthorized access, bypassing security restrictions, injecting scripts, and stealing cookies from computer systems or network servers. An attacker could install malicious software; manipulate data; or create new accounts with full user privileges for future Web site exploitation.</p></blockquote>\n<p>Since these are low level hackers exploiting the most basic types of vulnerabilities, they are not targeting specific sites but rather knocking down any open door they can find. The announcement notes that all of the victims of the defacements share common WordPress plugin vulnerabilities.</p>\n<p>The FBI does not believe that these attacks are actually coming from members of ISIL but instead are coming from hackers using the organization&#8217;s name as a vehicle for greater exposure.</p>\n<blockquote><p>The FBI assesses that the perpetrators are not members of the ISIL terrorist organization. These individuals are hackers using relatively unsophisticated methods to exploit technical vulnerabilities and are utilizing the ISIL name to gain more notoriety than the underlying attack would have otherwise garnered.</p></blockquote>\n<p>The announcement concludes with a list of general resources for hardening WordPress and identifying vulnerabilities, but the recommendations are vague and non-specific. The best thing that you can do to keep your site safe from these continuing attacks is to make sure you are running the latest version of WordPress. Log in to your sites and update all of your themes and plugins. If you&#8217;re using any commercial plugins or themes, make sure to check for updates in case you are not automatically notified.</p>\n<p>All of the vulnerabilities referenced in the FBI warning already have patches, and all you need to do is update your plugins. If you have multiple WordPress sites, consider adding them to a centralized dashboard service such as <a href="http://jetpack.me/support/site-management/" target="_blank">Jetpack Manage</a>, <a href="https://managewp.com/" target="_blank">MangeWP</a>, <a href="https://wpremote.com/" target="_blank">WP Remote</a>, <a href="http://infinitewp.com/" target="_blank">InfiniteWP</a>, or another service of your choosing.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 07 Apr 2015 22:36:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:97:"WPTavern: Bob Dunn’s Survey Shows Text and Screenshots are the Preferred Way to Learn WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41671";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:104:"http://wptavern.com/bob-dunns-survey-shows-text-and-screenshots-are-the-preferred-way-to-learn-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2455:"<p>Two weeks ago, <a title="http://wptavern.com/take-the-how-do-you-learn-wordpress-survey" href="http://wptavern.com/take-the-how-do-you-learn-wordpress-survey">I asked you</a> to participate in Bob Dunn&#8217;s survey that asked, how do you learn WordPress? Dunn has <a title="http://bobwp.com/how-do-you-learn-wordpress-the-survey-results-infographic/" href="http://bobwp.com/how-do-you-learn-wordpress-the-survey-results-infographic/">published the results</a> to the survey and they&#8217;re not surprising.</p>\n<p>Out of 428 responses, 63% learn WordPress best using text and images. Roughly a third of respondents learn best using video tutorials or one-on-one in-person training.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/BestWayofLearning.png" rel="prettyphoto[41671]"><img class="size-full wp-image-41692" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/BestWayofLearning.png?resize=784%2C495" alt="Best Way of Learning WordPress" /></a>Best Way of Learning WordPress\n<p>People learn things differently, but I don&#8217;t think it&#8217;s surprising so many learn best through text and images. It&#8217;s a method humans have used for centuries and is easier to reference compared to audio and video. Dunn offers advice to WordPress coaches and trainers looking at the data from an instructor&#8217;s point of view:</p>\n<blockquote><p>If you are looking at this from an instructor’s point of view, I bet you can come up with a lot of other thoughts and maybe even some deep insights. But the fact is, while these numbers can tell us a lot of what the majority of people prefer, as teachers of WordPress, we still need to find the markets that are not being filled, and the offerings that are not over-saturated, no matter what the numbers tell us.</p></blockquote>\n<p>To see a visual representation of the results and to read Dunn&#8217;s thoughts on his findings, check out his <a title="http://bobwp.com/how-do-you-learn-wordpress-the-survey-results-infographic/" href="http://bobwp.com/how-do-you-learn-wordpress-the-survey-results-infographic/">latest blog post</a>. Also, be sure to catch <a title="http://wptavern.com/wordpress-weekly" href="http://wptavern.com/wordpress-weekly">WordPress Weekly</a> live on Wednesday, April 8th, at 9:30 PM Eastern as Dunn will be our special guest. We&#8217;ll talk about the survey results and discuss common pain points users experience with WordPress.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 07 Apr 2015 21:33:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 21 Apr 2015 15:06:45 GMT";s:12:"content-type";s:8:"text/xml";s:14:"content-length";s:6:"215390";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Tue, 21 Apr 2015 15:00:11 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";s:13:"accept-ranges";s:5:"bytes";}s:5:"build";s:14:"20130911040210";}', 'no');
INSERT INTO `wp_3_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(147, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1429672004', 'no'),
(148, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1429628804', 'no'),
(149, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1429672004', 'no'),
(150, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/04/wordpress-4-2-release-candidate/''>WordPress 4.2 Release Candidate</a> <span class="rss-date">April 15, 2015</span><div class="rssSummary">The release candidate for WordPress 4.2 is now available. We’ve made more than 140 changes since releasing Beta 4 a week and a half ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.2 on Wednesday, [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://ma.tt/2015/04/intermittent-fasting/''>Matt: Intermittent Fasting</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/applications-to-host-wordcamp-europe-2016-closing-soon''>WPTavern: Applications to Host WordCamp Europe 2016 Closing Soon</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/github-launches-licenses-api-to-help-open-source-developers-license-their-code''>WPTavern: GitHub Launches Licenses API to Help Open Source Developers License Their Code</a></li></ul></div>', 'no'),
(151, 'wysija_queries', '', 'no'),
(152, 'wysija_queries_errors', '', 'no'),
(153, 'wysija_msg', '', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_3_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_postmeta`
--

INSERT INTO `wp_3_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_edit_last', '1'),
(3, 5, '_edit_lock', '1429254509:1'),
(4, 2, '_edit_lock', '1429272394:1'),
(5, 2, '_edit_last', '1'),
(6, 2, 'zwt_post_network', 'a:2:{i:0;a:2:{s:7:"blog_id";s:1:"1";s:7:"post_id";s:2:"61";}i:1;a:2:{s:7:"blog_id";s:1:"3";s:7:"post_id";i:2;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_posts`
--

CREATE TABLE IF NOT EXISTS `wp_3_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_posts`
--

INSERT INTO `wp_3_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 2, '2015-04-17 07:08:29', '2015-04-17 07:08:29', 'Welcome to <a href="http://giroptic.local/">Giroptic Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-04-17 07:08:29', '2015-04-17 07:08:29', '', 0, 'http://giroptic.local/new/?p=1', 0, 'post', '', 1),
(2, 2, '2015-04-17 07:08:29', '2015-04-17 07:08:29', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://giroptic.local/new/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-04-17 08:41:25', '2015-04-17 08:41:25', '', 0, 'http://giroptic.local/new/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-04-17 07:08:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-17 07:08:32', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/new/?p=3', 0, 'post', '', 0),
(4, 1, '2015-04-17 07:10:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-17 07:10:26', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/new/?p=4', 0, 'post', '', 0),
(5, 1, '2015-04-17 07:10:42', '2015-04-17 07:10:42', 'Hello world', 'First page by new site', '', 'publish', 'open', 'open', '', 'first-page-by-new-site', '', '', '2015-04-17 07:10:52', '2015-04-17 07:10:52', '', 0, 'http://giroptic.local/new/?page_id=5', 0, 'page', '', 0),
(6, 1, '2015-04-17 07:10:42', '2015-04-17 07:10:42', '', 'First page by new site', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-17 07:10:42', '2015-04-17 07:10:42', '', 5, 'http://giroptic.local/new/2015/04/17/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-04-17 07:10:52', '2015-04-17 07:10:52', 'Hello world', 'First page by new site', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-17 07:10:52', '2015-04-17 07:10:52', '', 5, 'http://giroptic.local/new/2015/04/17/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2015-04-17 07:23:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-17 07:23:04', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/new/?p=8', 0, 'post', '', 0),
(9, 1, '2015-04-17 07:26:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-17 07:26:47', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/new/?p=9', 0, 'post', '', 0),
(10, 1, '2015-04-17 08:20:57', '2015-04-17 08:20:57', '[wysija_page]', 'Subscription confirmation', '', 'publish', 'open', 'open', '', 'subscriptions', '', '', '2015-04-17 08:20:57', '2015-04-17 08:20:57', '', 0, 'http://giroptic.local/new/?wysijap=subscriptions', 0, 'wysijap', '', 0),
(11, 1, '2015-04-17 08:20:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-17 08:20:57', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/new/?p=11', 0, 'post', '', 0),
(12, 1, '2015-04-17 08:22:10', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-17 08:22:10', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/new/?p=12', 0, 'post', '', 0),
(13, 1, '2015-04-17 08:22:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-17 08:22:59', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/new/?p=13', 0, 'post', '', 0),
(14, 1, '2015-04-17 08:36:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-17 08:36:28', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/new/?p=14', 0, 'post', '', 0),
(15, 1, '2015-04-17 08:41:25', '2015-04-17 08:41:25', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://giroptic.local/new/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-17 08:41:25', '2015-04-17 08:41:25', '', 2, 'http://giroptic.local/new/2015/04/17/2-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2015-04-17 08:41:31', '2015-04-17 08:41:31', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://giroptic.local/new/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2015-04-17 08:41:31', '2015-04-17 08:41:31', '', 2, 'http://giroptic.local/new/2015/04/17/2-autosave-v1/', 0, 'revision', '', 0),
(17, 1, '2015-04-21 15:06:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-21 15:06:39', '0000-00-00 00:00:00', '', 0, 'http://giroptic.tv/new/?p=17', 0, 'post', '', 0),
(18, 1, '2015-04-21 15:07:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-21 15:07:26', '0000-00-00 00:00:00', '', 0, 'http://giroptic.tv/new/?page_id=18', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_terms`
--

CREATE TABLE IF NOT EXISTS `wp_3_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_terms`
--

INSERT INTO `wp_3_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_3_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_term_relationships`
--

INSERT INTO `wp_3_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_3_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_term_taxonomy`
--

INSERT INTO `wp_3_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_campaign`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_campaign` (
`campaign_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_wysija_campaign`
--

INSERT INTO `wp_3_wysija_campaign` (`campaign_id`, `name`, `description`) VALUES
(1, '5 Minute User Guide', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_campaign_list`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_campaign_list` (
  `list_id` int(10) unsigned NOT NULL,
  `campaign_id` int(10) unsigned NOT NULL,
  `filter` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_custom_field`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_custom_field` (
`id` mediumint(9) NOT NULL,
  `name` tinytext NOT NULL,
  `type` tinytext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_email`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_email` (
`email_id` int(10) unsigned NOT NULL,
  `campaign_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `body` longtext,
  `created_at` int(10) unsigned DEFAULT NULL,
  `modified_at` int(10) unsigned DEFAULT NULL,
  `sent_at` int(10) unsigned DEFAULT NULL,
  `from_email` varchar(250) DEFAULT NULL,
  `from_name` varchar(250) DEFAULT NULL,
  `replyto_email` varchar(250) DEFAULT NULL,
  `replyto_name` varchar(250) DEFAULT NULL,
  `attachments` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `number_sent` int(10) unsigned NOT NULL DEFAULT '0',
  `number_opened` int(10) unsigned NOT NULL DEFAULT '0',
  `number_clicked` int(10) unsigned NOT NULL DEFAULT '0',
  `number_unsub` int(10) unsigned NOT NULL DEFAULT '0',
  `number_bounce` int(10) unsigned NOT NULL DEFAULT '0',
  `number_forward` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text,
  `wj_data` longtext,
  `wj_styles` longtext
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_wysija_email`
--

INSERT INTO `wp_3_wysija_email` (`email_id`, `campaign_id`, `subject`, `body`, `created_at`, `modified_at`, `sent_at`, `from_email`, `from_name`, `replyto_email`, `replyto_name`, `attachments`, `status`, `type`, `number_sent`, `number_opened`, `number_clicked`, `number_unsub`, `number_bounce`, `number_forward`, `params`, `wj_data`, `wj_styles`) VALUES
(1, 1, '5 Minute User Guide', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml"  >\n<head>\n    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />\n    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>\n    <title>5 Minute User Guide</title>\n    <style type="text/css">body {\n        width:100% !important;\n        -webkit-text-size-adjust:100%;\n        -ms-text-size-adjust:100%;\n        margin:0;\n        padding:0;\n    }\n\n    body,table,td,p,a,li,blockquote{\n        -ms-text-size-adjust:100%;\n        -webkit-text-size-adjust:100%;\n    }\n\n    .ReadMsgBody{\n        width:100%;\n    }.ExternalClass {width:100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}#backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100% !important; background:#e8e8e8;}img {\n        outline:none;\n        text-decoration:none;\n        -ms-interpolation-mode: bicubic;\n    }\n    a img {border:none;}\n    .image_fix {display:block;}p {\n        font-family: "Arial";\n        font-size: 16px;\n        line-height: 150%;\n        margin: 1em 0;\n        padding: 0;\n    }h1,h2,h3,h4,h5,h6{\n        margin:0;\n        padding:0;\n    }h1 {\n        color:#000000 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:40px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }h2 {\n        color:#424242 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:30px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }h3 {\n        color:#424242 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:24px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }table td {border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt;}table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }a {\n        color:#4a91b0;\n        word-wrap:break-word;\n    }\n    #outlook a {padding:0;}\n    .yshortcuts { color:#4a91b0; }\n\n    #wysija_wrapper {\n        background:#e8e8e8;\n        color:#000000;\n        font-family:"Arial";\n        font-size:16px;\n        -webkit-text-size-adjust:100%;\n        -ms-text-size-adjust:100%;\n        \n    }\n\n    .wysija_header_container {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        \n    }\n\n    .wysija_block {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        background:#ffffff;\n    }\n\n    .wysija_footer_container {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        \n    }\n\n    .wysija_viewbrowser_container, .wysija_viewbrowser_container a {\n        font-family: "Arial" !important;\n        font-size: 12px !important;\n        color: #000000 !important;\n    }\n    .wysija_unsubscribe_container, .wysija_unsubscribe_container a {\n        text-align:center;\n        color: #000000 !important;\n        font-size:12px;\n    }\n    .wysija_viewbrowser_container a, .wysija_unsubscribe_container a {\n        text-decoration:underline;\n    }\n    .wysija_list_item {\n        margin:0;\n    }@media only screen and (max-device-width: 480px), screen and (max-width: 480px) {a[href^="tel"], a[href^="sms"] {\n            text-decoration: none;\n            color: #4a91b0;pointer-events: none;\n            cursor: default;\n        }\n\n        .mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {\n            text-decoration: default;\n            color: #4a91b0 !important;\n            pointer-events: auto;\n            cursor: default;\n        }body, table, td, p, a, li, blockquote { -webkit-text-size-adjust:none !important; }body{ width:100% !important; min-width:100% !important; }\n    }@media only screen and (min-device-width: 768px) and (max-device-width: 1024px), screen and (min-width: 768px) and (max-width: 1024px) {a[href^="tel"],\n        a[href^="sms"] {\n            text-decoration: none;\n            color: #4a91b0;pointer-events: none;\n            cursor: default;\n        }\n\n        .mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {\n            text-decoration: default;\n            color: #4a91b0 !important;\n            pointer-events: auto;\n            cursor: default;\n        }\n    }\n\n    @media only screen and (-webkit-min-device-pixel-ratio: 2) {\n    }@media only screen and (-webkit-device-pixel-ratio:.75){}\n    @media only screen and (-webkit-device-pixel-ratio:1){}\n    @media only screen and (-webkit-device-pixel-ratio:1.5){}</style><!--[if IEMobile 7]>\n<style type="text/css">\n\n</style>\n<![endif]--><!--[if gte mso 9]>\n<style type="text/css">.wysija_image_container {\n        padding-top:0 !important;\n    }\n    .wysija_image_placeholder {\n        mso-text-raise:0;\n        mso-table-lspace:0;\n        mso-table-rspace:0;\n        margin-bottom: 0 !important;\n    }\n    .wysija_block .wysija_image_placeholder {\n        margin:2px 1px 0 1px !important;\n    }\n    p {\n        line-height: 110% !important;\n    }\n    h1, h2, h3 {\n        line-height: 110% !important;\n        margin:0 !important;\n        padding: 0 !important;\n    }\n</style>\n<![endif]-->\n\n<!--[if gte mso 15]>\n<style type="text/css">table { font-size:1px; mso-line-height-alt:0; line-height:0; mso-margin-top-alt:0; }\n    tr { font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px; }\n</style>\n<![endif]-->\n\n</head>\n<body bgcolor="#e8e8e8" yahoo="fix">\n    <span style="margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-bottom:0;padding-left:0;padding-right:0;padding-top:0;display:block;background:#e8e8e8;">\n    <table width="100%" cellpadding="0" cellspacing="0" border="0" id="wysija_wrapper">\n        <tr>\n            <td valign="top" align="center">\n                <table width="600" cellpadding="0" cellspacing="0" border="0" align="center">\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"   >\n                            <p class="wysija_viewbrowser_container" style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;text-align: center;padding-top: 8px;padding-right: 8px;padding-bottom: 8px;padding-left: 8px;" >Display problems? <a style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;" href="[view_in_browser_link]" target="_blank">View this newsletter in your browser.</a></p>\n                        </td>\n                    </tr>\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center">\n                            \n<table class="wysija_header" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n <td height="1" align="center" class="wysija_header_container" style="font-size:1px;line-height:1%;mso-line-height-rule:exactly;border: 0;min-width: 100%;background-color: #e8e8e8;border: 0;" >\n \n <img width="600" height="72" src="http://giroptic.local/new/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/header.png" border="0" alt="" class="image_fix" style="width:600px; height:72px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </td>\n </tr>\n</table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="left">\n                            \n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 1:</strong> hey, click on this text!</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">To edit, simply click on this block of text.</p></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://giroptic.local/new/wp-content/uploads/sites/3/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 2:</strong> play with this image</h2></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n \n \n <table style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;" width="1%" height="190" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td class="wysija_image_container left" style="border: 0;border-collapse: collapse;border: 1px solid #ffffff;display: block;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 10px;padding-bottom: 0;padding-left: 0;" width="1%" height="190" valign="top">\n <div align="left" class="wysija_image_placeholder left" style="height:190px;width:281px;border: 0;display: block;margin-top: 0;margin-right: 10px;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;" >\n \n <img width="281" height="190" src="http://giroptic.local/new/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/pigeon.png" border="0" alt="" class="image_fix" style="width:281px; height:190px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n </table>\n\n <div class="wysija_text_container"><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Position your mouse over the image to the left.</p></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://giroptic.local/new/wp-content/uploads/sites/3/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 3:</strong> drop content here</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Drag and drop <strong>text, posts, dividers.</strong> Look on the right!</p><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">You can even <strong>social bookmarks</strong> like these:</p></div>\n </td>\n \n </tr>\n</table>\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n <td class="wysija_gallery_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" >\n <table class="wysija_gallery_table center" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;text-align: center;margin-top: 0;margin-right: auto;margin-bottom: 0;margin-left: auto;" width="184" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="http://www.facebook.com/mailpoetplugin"><img src="http://giroptic.local/new/wp-content/uploads/sites/3/wysija/bookmarks/medium/02/facebook.png" border="0" alt="Facebook" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="http://www.twitter.com/mail_poet"><img src="http://giroptic.local/new/wp-content/uploads/sites/3/wysija/bookmarks/medium/02/twitter.png" border="0" alt="Twitter" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="https://plus.google.com/+Mailpoet"><img src="http://giroptic.local/new/wp-content/uploads/sites/3/wysija/bookmarks/medium/02/google.png" border="0" alt="Google" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n </tr>\n </table>\n </td>\n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://giroptic.local/new/wp-content/uploads/sites/3/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 4:</strong> and the footer?</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Change the footer''s content in MailPoet''s <strong>Settings</strong> page.</p></div>\n </td>\n \n </tr>\n</table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"   >\n                            \n<table class="wysija_footer" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n <td height="1" align="center" class="wysija_footer_container" style="font-size:1px;line-height:1%;mso-line-height-rule:exactly;border: 0;min-width: 100%;background-color: #e8e8e8;border: 0;" >\n \n <img width="600" height="46" src="http://giroptic.local/new/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/footer.png" border="0" alt="" class="image_fix" style="width:600px; height:46px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </td>\n </tr>\n</table>\n                        </td>\n                    </tr>\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"  >\n                            <p class="wysija_unsubscribe_container" style="font-family: Verdana, Geneva, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;text-align: center;padding-top: 8px;padding-right: 8px;padding-bottom: 8px;padding-left: 8px;" ><a style="color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;" href="[unsubscribe_link]" target="_blank">Unsubscribe</a><br /><br /></p>\n                        </td>\n                    </tr>\n                    \n                </table>\n            </td>\n        </tr>\n    </table>\n    </span>\n</body>\n</html>', 1429258857, 1429258857, NULL, 'info@giroptic.local', 'admin', 'info@giroptic.local', 'admin', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 'YToxOntzOjE0OiJxdWlja3NlbGVjdGlvbiI7YToxOntzOjY6IndwLTMwMSI7YTo1OntzOjEwOiJpZGVudGlmaWVyIjtzOjY6IndwLTMwMSI7czo1OiJ3aWR0aCI7aToyODE7czo2OiJoZWlnaHQiO2k6MTkwO3M6MzoidXJsIjtzOjEwODoiaHR0cDovL2dpcm9wdGljLmxvY2FsL25ldy93cC1jb250ZW50L3BsdWdpbnMvd3lzaWphLW5ld3NsZXR0ZXJzL2ltZy9kZWZhdWx0LW5ld3NsZXR0ZXIvbmV3c2xldHRlci9waWdlb24ucG5nIjtzOjk6InRodW1iX3VybCI7czoxMTY6Imh0dHA6Ly9naXJvcHRpYy5sb2NhbC9uZXcvd3AtY29udGVudC9wbHVnaW5zL3d5c2lqYS1uZXdzbGV0dGVycy9pbWcvZGVmYXVsdC1uZXdzbGV0dGVyL25ld3NsZXR0ZXIvcGlnZW9uLTE1MHgxNTAucG5nIjt9fX0=', 'YTo0OntzOjc6InZlcnNpb24iO3M6NjoiMi42LjE1IjtzOjY6ImhlYWRlciI7YTo1OntzOjQ6InRleHQiO047czo1OiJpbWFnZSI7YTo1OntzOjM6InNyYyI7czoxMDg6Imh0dHA6Ly9naXJvcHRpYy5sb2NhbC9uZXcvd3AtY29udGVudC9wbHVnaW5zL3d5c2lqYS1uZXdzbGV0dGVycy9pbWcvZGVmYXVsdC1uZXdzbGV0dGVyL25ld3NsZXR0ZXIvaGVhZGVyLnBuZyI7czo1OiJ3aWR0aCI7aTo2MDA7czo2OiJoZWlnaHQiO2k6NzI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjY6InN0YXRpYyI7YjowO31zOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6Njoic3RhdGljIjtiOjA7czo0OiJ0eXBlIjtzOjY6ImhlYWRlciI7fXM6NDoiYm9keSI7YTo5OntzOjc6ImJsb2NrLTEiO2E6Njp7czo0OiJ0ZXh0IjthOjE6e3M6NToidmFsdWUiO3M6MTQ4OiJQR2d5UGp4emRISnZibWMrVTNSbGNDQXhPand2YzNSeWIyNW5QaUJvWlhrc0lHTnNhV05ySUc5dUlIUm9hWE1nZEdWNGRDRThMMmd5UGp4d1BsUnZJR1ZrYVhRc0lITnBiWEJzZVNCamJHbGpheUJ2YmlCMGFHbHpJR0pzYjJOcklHOW1JSFJsZUhRdVBDOXdQZz09Ijt9czo1OiJpbWFnZSI7TjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6MTtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fXM6NzoiYmxvY2stMiI7YTo1OntzOjg6InBvc2l0aW9uIjtpOjI7czo0OiJ0eXBlIjtzOjc6ImRpdmlkZXIiO3M6Mzoic3JjIjtzOjc4OiJodHRwOi8vZ2lyb3B0aWMubG9jYWwvbmV3L3dwLWNvbnRlbnQvdXBsb2Fkcy9zaXRlcy8zL3d5c2lqYS9kaXZpZGVycy9zb2xpZC5qcGciO3M6NToid2lkdGgiO2k6NTY0O3M6NjoiaGVpZ2h0IjtpOjE7fXM6NzoiYmxvY2stMyI7YTo2OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czo3MjoiUEdneVBqeHpkSEp2Ym1jK1UzUmxjQ0F5T2p3dmMzUnliMjVuUGlCd2JHRjVJSGRwZEdnZ2RHaHBjeUJwYldGblpUd3ZhREkrIjt9czo1OiJpbWFnZSI7TjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6MztzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fXM6NzoiYmxvY2stNCI7YTo2OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czo3MjoiUEhBK1VHOXphWFJwYjI0Z2VXOTFjaUJ0YjNWelpTQnZkbVZ5SUhSb1pTQnBiV0ZuWlNCMGJ5QjBhR1VnYkdWbWRDNDhMM0ErIjt9czo1OiJpbWFnZSI7YTo1OntzOjM6InNyYyI7czoxMDg6Imh0dHA6Ly9naXJvcHRpYy5sb2NhbC9uZXcvd3AtY29udGVudC9wbHVnaW5zL3d5c2lqYS1uZXdzbGV0dGVycy9pbWcvZGVmYXVsdC1uZXdzbGV0dGVyL25ld3NsZXR0ZXIvcGlnZW9uLnBuZyI7czo1OiJ3aWR0aCI7aToyODE7czo2OiJoZWlnaHQiO2k6MTkwO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6Njoic3RhdGljIjtiOjA7fXM6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6Njoic3RhdGljIjtiOjA7czo4OiJwb3NpdGlvbiI7aTo0O3M6NDoidHlwZSI7czo3OiJjb250ZW50Ijt9czo3OiJibG9jay01IjthOjU6e3M6ODoicG9zaXRpb24iO2k6NTtzOjQ6InR5cGUiO3M6NzoiZGl2aWRlciI7czozOiJzcmMiO3M6Nzg6Imh0dHA6Ly9naXJvcHRpYy5sb2NhbC9uZXcvd3AtY29udGVudC91cGxvYWRzL3NpdGVzLzMvd3lzaWphL2RpdmlkZXJzL3NvbGlkLmpwZyI7czo1OiJ3aWR0aCI7aTo1NjQ7czo2OiJoZWlnaHQiO2k6MTt9czo3OiJibG9jay02IjthOjY6e3M6NDoidGV4dCI7YToxOntzOjU6InZhbHVlIjtzOjI2MDoiUEdneVBqeHpkSEp2Ym1jK1UzUmxjQ0F6T2p3dmMzUnliMjVuUGlCa2NtOXdJR052Ym5SbGJuUWdhR1Z5WlR3dmFESStQSEErUkhKaFp5QmhibVFnWkhKdmNDQThjM1J5YjI1blBuUmxlSFFzSUhCdmMzUnpMQ0JrYVhacFpHVnljeTQ4TDNOMGNtOXVaejRnVEc5dmF5QnZiaUIwYUdVZ2NtbG5hSFFoUEM5d1BqeHdQbGx2ZFNCallXNGdaWFpsYmlBOGMzUnliMjVuUG5OdlkybGhiQ0JpYjI5cmJXRnlhM004TDNOMGNtOXVaejRnYkdsclpTQjBhR1Z6WlRvOEwzQSsiO31zOjU6ImltYWdlIjtOO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6Njoic3RhdGljIjtiOjA7czo4OiJwb3NpdGlvbiI7aTo2O3M6NDoidHlwZSI7czo3OiJjb250ZW50Ijt9czo3OiJibG9jay03IjthOjU6e3M6NToid2lkdGgiO2k6MTg0O3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo1OiJpdGVtcyI7YTozOntpOjA7YTo3OntzOjM6InVybCI7czozODoiaHR0cDovL3d3dy5mYWNlYm9vay5jb20vbWFpbHBvZXRwbHVnaW4iO3M6MzoiYWx0IjtzOjg6IkZhY2Vib29rIjtzOjk6ImNlbGxXaWR0aCI7aTo2MTtzOjEwOiJjZWxsSGVpZ2h0IjtpOjMyO3M6Mzoic3JjIjtzOjkyOiJodHRwOi8vZ2lyb3B0aWMubG9jYWwvbmV3L3dwLWNvbnRlbnQvdXBsb2Fkcy9zaXRlcy8zL3d5c2lqYS9ib29rbWFya3MvbWVkaXVtLzAyL2ZhY2Vib29rLnBuZyI7czo1OiJ3aWR0aCI7aTozMjtzOjY6ImhlaWdodCI7aTozMjt9aToxO2E6Nzp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly93d3cudHdpdHRlci5jb20vbWFpbF9wb2V0IjtzOjM6ImFsdCI7czo3OiJUd2l0dGVyIjtzOjk6ImNlbGxXaWR0aCI7aTo2MTtzOjEwOiJjZWxsSGVpZ2h0IjtpOjMyO3M6Mzoic3JjIjtzOjkxOiJodHRwOi8vZ2lyb3B0aWMubG9jYWwvbmV3L3dwLWNvbnRlbnQvdXBsb2Fkcy9zaXRlcy8zL3d5c2lqYS9ib29rbWFya3MvbWVkaXVtLzAyL3R3aXR0ZXIucG5nIjtzOjU6IndpZHRoIjtpOjMyO3M6NjoiaGVpZ2h0IjtpOjMyO31pOjI7YTo3OntzOjM6InVybCI7czozMzoiaHR0cHM6Ly9wbHVzLmdvb2dsZS5jb20vK01haWxwb2V0IjtzOjM6ImFsdCI7czo2OiJHb29nbGUiO3M6OToiY2VsbFdpZHRoIjtpOjYxO3M6MTA6ImNlbGxIZWlnaHQiO2k6MzI7czozOiJzcmMiO3M6OTA6Imh0dHA6Ly9naXJvcHRpYy5sb2NhbC9uZXcvd3AtY29udGVudC91cGxvYWRzL3NpdGVzLzMvd3lzaWphL2Jvb2ttYXJrcy9tZWRpdW0vMDIvZ29vZ2xlLnBuZyI7czo1OiJ3aWR0aCI7aTozMjtzOjY6ImhlaWdodCI7aTozMjt9fXM6ODoicG9zaXRpb24iO2k6NztzOjQ6InR5cGUiO3M6NzoiZ2FsbGVyeSI7fXM6NzoiYmxvY2stOCI7YTo1OntzOjg6InBvc2l0aW9uIjtpOjg7czo0OiJ0eXBlIjtzOjc6ImRpdmlkZXIiO3M6Mzoic3JjIjtzOjc4OiJodHRwOi8vZ2lyb3B0aWMubG9jYWwvbmV3L3dwLWNvbnRlbnQvdXBsb2Fkcy9zaXRlcy8zL3d5c2lqYS9kaXZpZGVycy9zb2xpZC5qcGciO3M6NToid2lkdGgiO2k6NTY0O3M6NjoiaGVpZ2h0IjtpOjE7fXM6NzoiYmxvY2stOSI7YTo2OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czoxNzI6IlBHZ3lQanh6ZEhKdmJtYytVM1JsY0NBME9qd3ZjM1J5YjI1blBpQmhibVFnZEdobElHWnZiM1JsY2o4OEwyZ3lQanh3UGtOb1lXNW5aU0IwYUdVZ1ptOXZkR1Z5SjNNZ1kyOXVkR1Z1ZENCcGJpQk5ZV2xzVUc5bGRDZHpJRHh6ZEhKdmJtYytVMlYwZEdsdVozTThMM04wY205dVp6NGdjR0ZuWlM0OEwzQSsiO31zOjU6ImltYWdlIjtOO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6Njoic3RhdGljIjtiOjA7czo4OiJwb3NpdGlvbiI7aTo5O3M6NDoidHlwZSI7czo3OiJjb250ZW50Ijt9fXM6NjoiZm9vdGVyIjthOjU6e3M6NDoidGV4dCI7TjtzOjU6ImltYWdlIjthOjU6e3M6Mzoic3JjIjtzOjEwODoiaHR0cDovL2dpcm9wdGljLmxvY2FsL25ldy93cC1jb250ZW50L3BsdWdpbnMvd3lzaWphLW5ld3NsZXR0ZXJzL2ltZy9kZWZhdWx0LW5ld3NsZXR0ZXIvbmV3c2xldHRlci9mb290ZXIucG5nIjtzOjU6IndpZHRoIjtpOjYwMDtzOjY6ImhlaWdodCI7aTo0NjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6Njoic3RhdGljIjtiOjA7fXM6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDtzOjQ6InR5cGUiO3M6NjoiZm9vdGVyIjt9fQ==', 'YToxMDp7czo0OiJodG1sIjthOjE6e3M6MTA6ImJhY2tncm91bmQiO3M6NjoiZThlOGU4Ijt9czo2OiJoZWFkZXIiO2E6MTp7czoxMDoiYmFja2dyb3VuZCI7czo2OiJlOGU4ZTgiO31zOjQ6ImJvZHkiO2E6NDp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjU6IkFyaWFsIjtzOjQ6InNpemUiO2k6MTY7czoxMDoiYmFja2dyb3VuZCI7czo2OiJmZmZmZmYiO31zOjY6ImZvb3RlciI7YToxOntzOjEwOiJiYWNrZ3JvdW5kIjtzOjY6ImU4ZThlOCI7fXM6MjoiaDEiO2E6Mzp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjEyOiJUcmVidWNoZXQgTVMiO3M6NDoic2l6ZSI7aTo0MDt9czoyOiJoMiI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjQyNDI0MiI7czo2OiJmYW1pbHkiO3M6MTI6IlRyZWJ1Y2hldCBNUyI7czo0OiJzaXplIjtpOjMwO31zOjI6ImgzIjthOjM6e3M6NToiY29sb3IiO3M6NjoiNDI0MjQyIjtzOjY6ImZhbWlseSI7czoxMjoiVHJlYnVjaGV0IE1TIjtzOjQ6InNpemUiO2k6MjQ7fXM6MToiYSI7YToyOntzOjU6ImNvbG9yIjtzOjY6IjRhOTFiMCI7czo5OiJ1bmRlcmxpbmUiO2I6MDt9czoxMToidW5zdWJzY3JpYmUiO2E6MTp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO31zOjExOiJ2aWV3YnJvd3NlciI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjAwMDAwMCI7czo2OiJmYW1pbHkiO3M6NToiQXJpYWwiO3M6NDoic2l6ZSI7aToxMjt9fQ=='),
(2, 0, 'Confirm your subscription to New site', 'Hello!\n\nHurray! You''ve subscribed to our site.\nWe need you to activate your subscription to the list(s): [lists_to_confirm] by clicking the link below: \n\n[activation_link]Click here to confirm your subscription.[/activation_link]\n\nThank you,\n\n The team!\n', 1429258857, 1429258857, NULL, 'info@giroptic.local', 'admin', 'info@giroptic.local', 'admin', NULL, 99, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_email_user_stat`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_email_user_stat` (
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned NOT NULL,
  `sent_at` int(10) unsigned NOT NULL,
  `opened_at` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_email_user_url`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_email_user_url` (
  `email_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `url_id` int(10) unsigned NOT NULL,
  `clicked_at` int(10) unsigned DEFAULT NULL,
  `number_clicked` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_form`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_form` (
`form_id` int(10) unsigned NOT NULL,
  `name` tinytext CHARACTER SET utf8 COLLATE utf8_bin,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `styles` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `subscribed` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_wysija_form`
--

INSERT INTO `wp_3_wysija_form` (`form_id`, `name`, `data`, `styles`, `subscribed`) VALUES
(1, 'Subscribe to our Newsletter', 'YTo0OntzOjc6InZlcnNpb24iO3M6MzoiMC40IjtzOjg6InNldHRpbmdzIjthOjQ6e3M6MTA6Im9uX3N1Y2Nlc3MiO3M6NzoibWVzc2FnZSI7czoxNToic3VjY2Vzc19tZXNzYWdlIjtzOjY1OiJDaGVjayB5b3VyIGluYm94IG9yIHNwYW0gZm9sZGVyIG5vdyB0byBjb25maXJtIHlvdXIgc3Vic2NyaXB0aW9uLiI7czo1OiJsaXN0cyI7YToxOntpOjA7czoxOiIxIjt9czoxNzoibGlzdHNfc2VsZWN0ZWRfYnkiO3M6NToiYWRtaW4iO31zOjQ6ImJvZHkiO2E6Mjp7aTowO2E6NDp7czo0OiJuYW1lIjtzOjU6IkVtYWlsIjtzOjQ6InR5cGUiO3M6NToiaW5wdXQiO3M6NToiZmllbGQiO3M6NToiZW1haWwiO3M6NjoicGFyYW1zIjthOjI6e3M6NToibGFiZWwiO3M6NToiRW1haWwiO3M6ODoicmVxdWlyZWQiO2I6MTt9fWk6MTthOjQ6e3M6NDoibmFtZSI7czo2OiJTdWJtaXQiO3M6NDoidHlwZSI7czo2OiJzdWJtaXQiO3M6NToiZmllbGQiO3M6Njoic3VibWl0IjtzOjY6InBhcmFtcyI7YToxOntzOjU6ImxhYmVsIjtzOjEwOiJTdWJzY3JpYmUhIjt9fX1zOjc6ImZvcm1faWQiO2k6MTt9', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_list`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_list` (
`list_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `namekey` varchar(255) DEFAULT NULL,
  `description` text,
  `unsub_mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `welcome_mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_enabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_public` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_wysija_list`
--

INSERT INTO `wp_3_wysija_list` (`list_id`, `name`, `namekey`, `description`, `unsub_mail_id`, `welcome_mail_id`, `is_enabled`, `is_public`, `created_at`, `ordering`) VALUES
(1, 'My first list', 'my-first-list', 'The list created automatically on install of the MailPoet.', 0, 0, 1, 1, 1429258857, 0),
(2, 'WordPress Users', 'users', 'The list created automatically on import of the plugin''s subscribers : "WordPress', 0, 0, 0, 0, 1429258857, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_queue`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_queue` (
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned NOT NULL,
  `send_at` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(4) NOT NULL DEFAULT '0',
  `number_try` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_url`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_url` (
`url_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `url` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_url_mail`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_url_mail` (
`email_id` int(11) NOT NULL,
  `url_id` int(10) unsigned NOT NULL,
  `unique_clicked` int(10) unsigned NOT NULL DEFAULT '0',
  `total_clicked` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_user`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_user` (
`user_id` int(10) unsigned NOT NULL,
  `wpuser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL,
  `confirmed_ip` varchar(100) NOT NULL DEFAULT '0',
  `confirmed_at` int(10) unsigned DEFAULT NULL,
  `last_opened` int(10) unsigned DEFAULT NULL,
  `last_clicked` int(10) unsigned DEFAULT NULL,
  `keyuser` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `domain` varchar(255) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_wysija_user`
--

INSERT INTO `wp_3_wysija_user` (`user_id`, `wpuser_id`, `email`, `firstname`, `lastname`, `ip`, `confirmed_ip`, `confirmed_at`, `last_opened`, `last_clicked`, `keyuser`, `created_at`, `status`, `domain`) VALUES
(1, 2, 'admin@admin.com', '', '', '', '0', NULL, NULL, NULL, '', 1429258858, 1, 'admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_user_field`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_user_field` (
`field_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `column_name` varchar(250) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned DEFAULT '0',
  `values` text,
  `default` varchar(250) NOT NULL DEFAULT '',
  `is_required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `error_message` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_wysija_user_field`
--

INSERT INTO `wp_3_wysija_user_field` (`field_id`, `name`, `column_name`, `type`, `values`, `default`, `is_required`, `error_message`) VALUES
(1, 'First name', 'firstname', 0, NULL, '', 0, 'Please enter first name'),
(2, 'Last name', 'lastname', 0, NULL, '', 0, 'Please enter last name');

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_user_history`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_user_history` (
`history_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned DEFAULT '0',
  `type` varchar(250) NOT NULL DEFAULT '',
  `details` text,
  `executed_at` int(10) unsigned DEFAULT NULL,
  `executed_by` int(10) unsigned DEFAULT NULL,
  `source` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_wysija_user_list`
--

CREATE TABLE IF NOT EXISTS `wp_3_wysija_user_list` (
  `list_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `sub_date` int(10) unsigned DEFAULT '0',
  `unsub_date` int(10) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_3_wysija_user_list`
--

INSERT INTO `wp_3_wysija_user_list` (`list_id`, `user_id`, `sub_date`, `unsub_date`) VALUES
(1, 1, 1429258857, 0),
(2, 1, 1429258857, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_blogs`
--

CREATE TABLE IF NOT EXISTS `wp_blogs` (
`blog_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT '1',
  `archived` tinyint(2) NOT NULL DEFAULT '0',
  `mature` tinyint(2) NOT NULL DEFAULT '0',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_blogs`
--

INSERT INTO `wp_blogs` (`blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'giroptic.tv', '/', '2015-04-16 14:11:50', '2015-04-22 15:34:56', 1, 0, 0, 0, 0, 0),
(3, 1, 'giroptic.tv', '/new/', '2015-04-17 07:08:28', '2015-04-17 08:41:25', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_blog_versions`
--

CREATE TABLE IF NOT EXISTS `wp_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `db_version` varchar(20) NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-04-14 07:44:39', '2015-04-14 07:44:39', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_domain_mapping`
--

CREATE TABLE IF NOT EXISTS `wp_domain_mapping` (
`id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `active` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_domain_mapping_logins`
--

CREATE TABLE IF NOT EXISTS `wp_domain_mapping_logins` (
  `id` varchar(32) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `t` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://giroptic.tv', 'yes'),
(2, 'home', 'http://giroptic.tv', 'yes'),
(3, 'blogname', 'Giroptic', 'yes'),
(4, 'blogdescription', 'Hello dear solomon', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lapchuk.ol@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/blog/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:25:"menu-image/menu-image.php";i:2;s:39:"siteorigin-panels/siteorigin-panels.php";i:3;s:41:"widget-image-field/widget-image-field.php";i:4;s:28:"wysija-newsletters/index.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:4:{i:0;s:70:"/var/www/html/giroptic/wp-content/plugins/wysija-newsletters/index.php";i:1;s:72:"/var/www/html/giroptic/wp-content/plugins/advanced-custom-fields/acf.php";i:2;s:57:"/var/www/html/giroptic/wp-content/themes/custom/style.css";i:3;s:0:"";}', 'no'),
(41, 'template', 'giroptic', 'yes'),
(42, 'stylesheet', 'giroptic', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:4:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:4;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:25:"subscriber/subscriber.php";s:17:"sbscrbr_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '20', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:70:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:19:"gravityforms_wysija";b:1;s:29:"gravityforms_wysija_uninstall";b:1;s:18:"wysija_newsletters";b:1;s:18:"wysija_subscribers";b:1;s:13:"wysija_config";b:1;s:16:"wysija_theme_tab";b:1;s:16:"wysija_style_tab";b:1;s:22:"wysija_stats_dashboard";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:18:"sbscrbr_subscriber";a:2:{s:4:"name";s:15:"Mail Subscriber";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}i:3;a:3:{s:5:"title";s:4:"test";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:9:{s:18:"orphaned_widgets_1";a:1:{i:0;s:14:"homep_widget-2";}s:18:"orphaned_widgets_2";a:1:{i:0;s:10:"archives-3";}s:18:"orphaned_widgets_3";a:1:{i:0;s:12:"categories-3";}s:18:"orphaned_widgets_4";a:1:{i:0;s:10:"calendar-2";}s:18:"orphaned_widgets_5";a:1:{i:0;s:12:"categories-4";}s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:12:"home_sidebar";a:7:{i:0;s:15:"homep_widget-14";i:1;s:14:"homep_widget-4";i:2;s:14:"homep_widget-6";i:3;s:14:"homep_widget-8";i:4;s:15:"homep_widget-10";i:5;s:15:"homep_widget-11";i:6;s:15:"homep_widget-13";}s:14:"footer_sidebar";a:1:{i:0;s:14:"mc4wp_widget-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:7:{i:1429625740;a:1:{s:21:"update_network_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1429628395;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1429645506;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1429645860;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1429688716;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1429692379;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, '_transient_random_seed', 'cb177a7d6648cf46736dd7021bd5b7aa', 'yes'),
(106, '_site_transient_timeout_browser_4cad572c71c1da92397147b82307c7d2', '1429602313', 'yes'),
(107, '_site_transient_browser_4cad572c71c1da92397147b82307c7d2', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"41.0.2272.118";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(108, 'can_compress_scripts', '0', 'yes'),
(121, '_transient_timeout_plugin_slugs', '1430891130', 'no'),
(122, '_transient_plugin_slugs', 'a:11:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";i:3;s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:4;s:28:"wysija-newsletters/index.php";i:5;s:25:"menu-image/menu-image.php";i:6;s:39:"siteorigin-panels/siteorigin-panels.php";i:7;s:39:"so-widgets-bundle/so-widgets-bundle.php";i:8;s:41:"widget-image-field/widget-image-field.php";i:9;s:46:"wordpress-mu-domain-mapping/domain_mapping.php";i:10;s:15:"zanto/zanto.php";}', 'no'),
(128, 'recently_activated', 'a:0:{}', 'yes'),
(138, 'siteorigin_panels_initial_version', '2.1', 'no'),
(139, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(142, '_transient_twentyfifteen_categories', '1', 'yes'),
(143, 'theme_mods_vantage', 'a:2:{s:17:"version_activated";s:5:"1.3.4";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429085094;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(144, 'current_theme', 'giroptic', 'yes'),
(145, 'theme_switched', '', 'yes'),
(146, 'theme_switched_via_customizer', '', 'yes'),
(155, 'siteorigin_widget_bundle_version', '1.2.1', 'yes'),
(156, '_transient_timeout_sow:cleared', '1429606824', 'no'),
(157, '_transient_sow:cleared', '1', 'no'),
(161, 'acf_version', '4.4.1', 'yes'),
(165, 'category_children', 'a:0:{}', 'yes'),
(168, 'theme_mods_custom', 'a:5:{i:0;b:0;s:22:"custom_social_disabled";b:0;s:13:"custom_social";a:2:{s:11:"tf_facebook";s:28:"http://www.facebook.com/soso";s:10:"tf_twitter";s:26:"http://www.twitter.com/com";}s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:2;s:10:"extra-menu";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429095295;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(180, 'theme_mods_typefocus', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429039659;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(182, '_transient_typefocus8_categories', '1', 'yes'),
(186, 'theme_mods_sahagin', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429041010;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(209, '_site_transient_timeout_browser_9d08bde512457e99780f33c647af54b4', '1429687293', 'yes'),
(210, '_site_transient_browser_9d08bde512457e99780f33c647af54b4', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"42.0.2311.90";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(226, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(236, 'theme_mods_twentyfifteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429095301;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(247, 'theme_mods_giroptic', 'a:9:{i:0;b:0;s:15:"giroptic_social";a:4:{s:11:"tf_facebook";s:32:"http://www.facebook.com/Giroptic";s:10:"tf_twitter";s:32:"http://plus.google.com/+Giroptic";s:10:"tf_youtube";s:55:"http://www.youtube.com/channel/UCTiuKDoNt7XQTR0ZULEsYng";s:13:"tf_googleplus";s:32:"http://plus.google.com/+Giroptic";}s:18:"giroptic_copyright";s:57:"2015 © GIROPTIC SA. All Rights Reseved. Legal disclaimer";s:24:"giroptic_social_disabled";b:0;s:13:"giroptic_logo";s:62:"http://giroptic.tv/wp-content/uploads/2015/04/360cammiddle.png";s:18:"nav_menu_locations";a:6:{s:19:"default-footer-menu";i:3;s:12:"sitemap-menu";i:4;s:18:"professionals-menu";i:5;s:12:"support-menu";i:6;s:14:"frontpage-menu";i:7;s:11:"header-menu";i:8;}s:16:"textarea_setting";s:275:"Based in Lille - France and San Francisco - USA, GIROPTIC specializes in 360° imaging technology. Using a unique real-time image fusion process from multiple sensors, the GIROPTIC 360cam forever changes the way we capture and experience life around us. Up. Down. All Around.";s:14:"footer_content";s:275:"Based in Lille - France and San Francisco - USA, GIROPTIC specializes in 360° imaging technology. Using a unique real-time image fusion process from multiple sensors, the GIROPTIC 360cam forever changes the way we capture and experience life around us. Up. Down. All Around.";s:24:"giroptic_backgound_image";s:58:"http://giroptic.tv/wp-content/uploads/2015/05/slaid_bg.png";}', 'yes'),
(251, '_site_transient_timeout_wporg_theme_feature_list', '1429107130', 'yes'),
(252, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(256, 'theme_mods_zerif-lite', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430252531;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:5:{i:0;s:10:"calendar-2";i:1;s:10:"archives-3";i:2;s:12:"categories-3";i:3;s:12:"categories-4";i:4;s:22:"zerif_clients-widget-2";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:16:"sidebar-ourfocus";N;s:20:"sidebar-testimonials";N;s:15:"sidebar-aboutus";N;s:15:"sidebar-ourteam";N;}}}', 'yes'),
(260, 'widget_zerif_team-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'widget_zerif_testim-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(264, 'widget_wpb_widget', 'a:2:{i:2;a:1:{s:5:"title";s:11:"Hello world";}s:12:"_multiwidget";i:1;}', 'yes'),
(265, 'widget_homep_widget', 'a:9:{i:2;a:4:{s:5:"title";s:9:"New title";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:4:"test";}i:4;a:8:{s:4:"name";s:13:"OUR EXPERTISE";s:5:"title";s:51:" TECHNOLOGIE GIROPTIC 360 VIRTUAL SENSOR TECHNOLOGY";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:62:"http://giroptic.tv/wp-content/uploads/2015/04/360cammiddle.png";s:11:"description";s:205:"GIROPTIC build native immersive solutions to capture at once our environment. From omniscient vision to virtual reality, GIROPTIC leads the way to a new era where images won’t ever be limited by a frame.";s:4:"type";s:4:"blue";s:12:"img_position";s:9:"img-right";s:4:"size";s:10:"full-block";}s:12:"_multiwidget";i:1;i:6;a:8:{s:4:"name";s:11:"TECHNOLOGIE";s:5:"title";s:25:"360° VIDEO STABILIZATION";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:56:"http://giroptic.tv/wp-content/uploads/2015/05/stabil.png";s:11:"description";s:32:"Because if you don’t, it moves";s:4:"type";s:6:"orange";s:12:"img_position";s:17:"img-center-middle";s:4:"size";s:10:"half-block";}i:8;a:8:{s:4:"name";s:11:"TECHNOLOGIE";s:5:"title";s:26:"IMMERSIVE SOUND EXPERIENCE";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:55:"http://giroptic.tv/wp-content/uploads/2015/05/audio.png";s:11:"description";s:17:"Short description";s:4:"type";s:5:"black";s:12:"img_position";s:12:"img-full-top";s:4:"size";s:10:"half-block";}i:10;a:8:{s:4:"name";s:13:"OUR EXPERTISE";s:5:"title";s:20:" PRODUCT DEVELOPMENT";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:57:"http://giroptic.tv/wp-content/uploads/2015/05/develop.png";s:11:"description";s:67:"In house development of GIROPTIC branded products and collaboration";s:4:"type";s:5:"black";s:12:"img_position";s:13:"img-full-left";s:4:"size";s:11:"third-block";}i:11;a:8:{s:4:"name";s:1:" ";s:5:"title";s:3:"R&D";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:55:"http://giroptic.tv/wp-content/uploads/2015/05/RandD.png";s:11:"description";s:77:"An engineering department providing custom solutions to high profile projects";s:4:"type";s:4:"grey";s:12:"img_position";s:17:"img-center-middle";s:4:"size";s:11:"third-block";}i:13;a:8:{s:4:"name";s:0:"";s:5:"title";s:9:"LICENSING";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:59:"http://giroptic.tv/wp-content/uploads/2015/05/licensing.png";s:11:"description";s:58:"Upgrading your video capabilities with GIROPTIC Technology";s:4:"type";s:4:"blue";s:12:"img_position";s:13:"img-full-left";s:4:"size";s:11:"third-block";}i:14;a:8:{s:4:"name";s:0:"";s:5:"title";s:0:"";s:4:"link";s:0:"";s:9:"image_uri";s:59:"http://giroptic.tv/wp-content/uploads/2015/05/first-row.png";s:11:"description";s:208:"	\r\nGIROPTIC build native immersive solutions to capture at once our environment. From omniscient vision to virtual reality, GIROPTIC leads the way to a new era where images won’t ever be limited by a frame.";s:4:"type";s:5:"white";s:12:"img_position";s:17:"img-center-middle";s:4:"size";s:10:"full-block";}}', 'yes'),
(268, 'widget_zerif_clients-widget', 'a:2:{i:2;a:2:{s:4:"link";s:0:"";s:9:"image_uri";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(279, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1429191049;s:7:"checked";a:2:{s:8:"giroptic";s:3:"1.0";s:10:"zerif-lite";s:5:"1.7.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(281, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.1";s:7:"version";s:5:"4.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1429175810;s:15:"version_checked";s:5:"4.1.1";s:12:"translations";a:0:{}}', 'yes'),
(288, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(289, 'widget_black-studio-tinymce', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(290, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(291, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(292, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1429184117', 'yes'),
(293, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4916";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3078";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3022";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2529";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2346";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1892";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1729";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1680";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1678";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1676";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1612";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1609";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1505";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1322";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1276";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1175";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1171";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1083";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1079";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"918";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"905";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"874";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"843";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"837";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"794";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"758";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"748";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"709";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"700";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"692";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"682";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"657";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"649";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"642";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"642";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"623";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"620";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"605";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"600";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"593";}}', 'yes'),
(297, 'widget_wp_subscribe', 'a:2:{i:2;a:14:{s:7:"service";s:10:"feedburner";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";}s:12:"_multiwidget";i:1;}', 'yes'),
(299, '_site_transient_timeout_available_translations', '1429184641', 'yes'),
(300, '_site_transient_available_translations', 'a:53:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-01 13:21:43";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:15:41";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:19:26";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:22:49";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:24:48";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:30:22";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:32:23";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:34:24";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:38:25";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-15 12:48:44";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:44:26";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:46:15";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:42:35";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:48:12";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:54:32";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:56:31";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:50:12";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 08:55:29";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:03:17";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-18 08:12:21";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:08:29";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:14:57";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.1/haz.zip";s:3:"iso";a:2:{i:1;s:3:"haz";i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-08 22:28:26";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:25:25";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:27:28";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:29:34";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-15 22:23:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:33:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:35:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:43:18";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:47:56";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:7:"Burmese";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:59:41";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:02:30";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:07:08";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:11:07";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:14:41";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 14:48:56";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:19:48";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:23:44";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:30:35";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:33:33";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 00:00:51";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:43:10";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-10 12:55:55";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:55:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-26 02:21:02";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(301, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:25:"subscriber/subscriber.php";s:5:"1.5.6";}}}', 'yes'),
(309, 'readygraph_connect_notice', 'true', 'yes'),
(312, 'readygraph_tutorial', 'true', 'yes'),
(313, 'readygraph_enable_sidebar', 'false', 'yes'),
(314, 'readygraph_auto_select_all', 'true', 'yes'),
(315, 'readygraph_enable_branding', 'false', 'yes'),
(316, 'readygraph_send_blog_updates', 'true', 'yes'),
(317, 'readygraph_send_real_time_post_updates', 'false', 'yes'),
(318, 'readygraph_popup_template', 'default-template', 'yes'),
(319, 'readygraph_upgrade_notice', 'true', 'yes'),
(320, 'readygraph_site_url', 'http://localhost/giroptic', 'yes'),
(322, 'readygraph_api', 'include your api_key', 'yes'),
(331, 'wysija_post_type_updated', '1429175811', 'yes'),
(332, 'wysija_post_type_created', '1429175811', 'yes'),
(333, 'installation_step', '16', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(334, 'wysija', 'YTo5NDp7czo5OiJmcm9tX25hbWUiO3M6NToiYWRtaW4iO3M6MTI6InJlcGx5dG9fbmFtZSI7czo1OiJhZG1pbiI7czoxNToiZW1haWxzX25vdGlmaWVkIjtzOjIwOiJsYXBjaHVrLm9sQGdtYWlsLmNvbSI7czoxMDoiZnJvbV9lbWFpbCI7czoxNDoiaW5mb0Bsb2NhbGhvc3QiO3M6MTM6InJlcGx5dG9fZW1haWwiO3M6MTQ6ImluZm9AbG9jYWxob3N0IjtzOjE1OiJkZWZhdWx0X2xpc3RfaWQiO2k6MTtzOjE3OiJ0b3RhbF9zdWJzY3JpYmVycyI7czoxOiIyIjtzOjE2OiJpbXBvcnR3cF9saXN0X2lkIjtpOjI7czoxODoiY29uZmlybV9lbWFpbF9saW5rIjtpOjU0O3M6MTI6InVwbG9hZGZvbGRlciI7czo0OToiL3Zhci93d3cvaHRtbC9naXJvcHRpYy93cC1jb250ZW50L3VwbG9hZHMvd3lzaWphLyI7czo5OiJ1cGxvYWR1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3QvZ2lyb3B0aWMvd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS8iO3M6MTY6ImNvbmZpcm1fZW1haWxfaWQiO2k6MjtzOjk6Imluc3RhbGxlZCI7YjoxO3M6MjA6Im1hbmFnZV9zdWJzY3JpcHRpb25zIjtpOjE7czoxNDoiaW5zdGFsbGVkX3RpbWUiO2k6MTQyOTE3NTgxMztzOjE3OiJ3eXNpamFfZGJfdmVyc2lvbiI7czo2OiIyLjYuMTUiO3M6MTE6ImRraW1fZG9tYWluIjtzOjk6ImxvY2FsaG9zdCI7czoxNjoid3lzaWphX3doYXRzX25ldyI7czo2OiIyLjYuMTUiO3M6MTE6InBvbGxfb3JpZ2luIjtzOjEwOiJyZXBvc2l0b3J5IjtzOjI0OiJlbWFpbHNfbm90aWZpZWRfd2hlbl9zdWIiO2I6MDtzOjI3OiJlbWFpbHNfbm90aWZpZWRfd2hlbl9ib3VuY2UiO2I6MDtzOjMzOiJlbWFpbHNfbm90aWZpZWRfd2hlbl9kYWlseXN1bW1hcnkiO2I6MDtzOjE5OiJib3VuY2VfcHJvY2Vzc19hdXRvIjtiOjA7czo5OiJzaGFyZWRhdGEiO2I6MDtzOjExOiJka2ltX2FjdGl2ZSI7YjowO3M6OToic210cF9yZXN0IjtiOjA7czoxNDoiZGVidWdfbG9nX2Nyb24iO2I6MDtzOjIwOiJkZWJ1Z19sb2dfcG9zdF9ub3RpZiI7YjowO3M6MjI6ImRlYnVnX2xvZ19xdWVyeV9lcnJvcnMiO2I6MDtzOjIzOiJkZWJ1Z19sb2dfcXVldWVfcHJvY2VzcyI7YjowO3M6MTY6ImRlYnVnX2xvZ19tYW51YWwiO2I6MDtzOjE1OiJjb21wYW55X2FkZHJlc3MiO3M6MDoiIjtzOjE2OiJ1bnN1YnNjcmliZV9wYWdlIjtzOjI6IjU0IjtzOjE3OiJjb25maXJtYXRpb25fcGFnZSI7czoyOiI1NCI7czo5OiJzbXRwX2hvc3QiO3M6MDoiIjtzOjEwOiJzbXRwX2xvZ2luIjtzOjA6IiI7czoxMzoic210cF9wYXNzd29yZCI7czowOiIiO3M6OToic210cF9wb3J0IjtzOjI6IjI1IjtzOjExOiJzbXRwX3NlY3VyZSI7czoxOiIwIjtzOjEwOiJ0ZXN0X21haWxzIjtzOjIwOiJsYXBjaHVrLm9sQGdtYWlsLmNvbSI7czoxMjoiYm91bmNlX2VtYWlsIjtzOjA6IiI7czoxODoic3Vic2NyaXB0aW9uc19wYWdlIjtzOjI6IjU0IjtzOjExOiJodG1sX3NvdXJjZSI7czoxOiIxIjtzOjE2OiJhcmNoaXZlX2xpbmtuYW1lIjtzOjE2OiJbd3lzaWphX2FyY2hpdmVdIjtzOjI2OiJzdWJzY3JpYmVyc19jb3VudF9saW5rbmFtZSI7czoyNjoiW3d5c2lqYV9zdWJzY3JpYmVyc19jb3VudF0iO3M6MTM6ImFyY2hpdmVfbGlzdHMiO2E6MTp7aToxO2I6MDt9czoxOToibXNfd3lzaWphX3doYXRzX25ldyI7czo2OiIyLjYuMTUiO3M6MTc6Im1zX3NlbmRpbmdfY29uZmlnIjtzOjg6Im9uZS1lYWNoIjtzOjI5OiJtc19hbGxvd19hZG1pbl9zZW5kaW5nX21ldGhvZCI7aToxO3M6NDE6Im1zX2FsbG93X2FkbWluX3RvZ2dsZV9zaWdudXBfY29uZmlybWF0aW9uIjtpOjE7czoxNzoibXNfc2VuZGluZ19tZXRob2QiO3M6NDoic2l0ZSI7czoxMzoibXNfZnJvbV9lbWFpbCI7czoxOToiaW5mb0BnaXJvcHRpYy5sb2NhbCI7czoyOToibXNfc2VuZGluZ19lbWFpbHNfc2l0ZV9tZXRob2QiO3M6NzoicGhwbWFpbCI7czoxMjoibXNfc210cF9ob3N0IjtzOjA6IiI7czoxMzoibXNfc210cF9sb2dpbiI7czowOiIiO3M6MTY6Im1zX3NtdHBfcGFzc3dvcmQiO3M6MDoiIjtzOjEyOiJtc19zbXRwX3BvcnQiO3M6MjoiMjUiO3M6MTQ6Im1zX3NtdHBfc2VjdXJlIjtzOjE6IjAiO3M6MTI6Im1zX3NtdHBfYXV0aCI7czowOiIiO3M6MjQ6Im1zX3NlbmRpbmdfZW1haWxzX251bWJlciI7czozOiIxMDAiO3M6MjI6Im1zX3NlbmRpbmdfZW1haWxzX2VhY2giO3M6NjoiaG91cmx5IjtzOjIyOiJtc19ib3VuY2VfcHJvY2Vzc19hdXRvIjtiOjA7czoxMjoibXNfc210cF9yZXN0IjtiOjA7czoyNjoibWFuYWdlX3N1YnNjcmlwdGlvbnNfbGlzdHMiO2E6MTp7aTowO3M6MToiMSI7fXM6Mzg6InJvbGVzY2FwLS0tYWRtaW5pc3RyYXRvci0tLW5ld3NsZXR0ZXJzIjtiOjA7czozMToicm9sZXNjYXAtLS1lZGl0b3ItLS1uZXdzbGV0dGVycyI7YjowO3M6MzE6InJvbGVzY2FwLS0tYXV0aG9yLS0tbmV3c2xldHRlcnMiO2I6MDtzOjM2OiJyb2xlc2NhcC0tLWNvbnRyaWJ1dG9yLS0tbmV3c2xldHRlcnMiO2I6MDtzOjM1OiJyb2xlc2NhcC0tLXN1YnNjcmliZXItLS1uZXdzbGV0dGVycyI7YjowO3M6NDM6InJvbGVzY2FwLS0tc2JzY3Jicl9zdWJzY3JpYmVyLS0tbmV3c2xldHRlcnMiO2I6MDtzOjM4OiJyb2xlc2NhcC0tLWFkbWluaXN0cmF0b3ItLS1zdWJzY3JpYmVycyI7YjowO3M6MzE6InJvbGVzY2FwLS0tZWRpdG9yLS0tc3Vic2NyaWJlcnMiO2I6MDtzOjMxOiJyb2xlc2NhcC0tLWF1dGhvci0tLXN1YnNjcmliZXJzIjtiOjA7czozNjoicm9sZXNjYXAtLS1jb250cmlidXRvci0tLXN1YnNjcmliZXJzIjtiOjA7czozNToicm9sZXNjYXAtLS1zdWJzY3JpYmVyLS0tc3Vic2NyaWJlcnMiO2I6MDtzOjQzOiJyb2xlc2NhcC0tLXNic2NyYnJfc3Vic2NyaWJlci0tLXN1YnNjcmliZXJzIjtiOjA7czozMzoicm9sZXNjYXAtLS1hZG1pbmlzdHJhdG9yLS0tY29uZmlnIjtiOjA7czoyNjoicm9sZXNjYXAtLS1lZGl0b3ItLS1jb25maWciO2I6MDtzOjI2OiJyb2xlc2NhcC0tLWF1dGhvci0tLWNvbmZpZyI7YjowO3M6MzE6InJvbGVzY2FwLS0tY29udHJpYnV0b3ItLS1jb25maWciO2I6MDtzOjMwOiJyb2xlc2NhcC0tLXN1YnNjcmliZXItLS1jb25maWciO2I6MDtzOjM4OiJyb2xlc2NhcC0tLXNic2NyYnJfc3Vic2NyaWJlci0tLWNvbmZpZyI7YjowO3M6MzY6InJvbGVzY2FwLS0tYWRtaW5pc3RyYXRvci0tLXRoZW1lX3RhYiI7YjowO3M6Mjk6InJvbGVzY2FwLS0tZWRpdG9yLS0tdGhlbWVfdGFiIjtiOjA7czoyOToicm9sZXNjYXAtLS1hdXRob3ItLS10aGVtZV90YWIiO2I6MDtzOjM0OiJyb2xlc2NhcC0tLWNvbnRyaWJ1dG9yLS0tdGhlbWVfdGFiIjtiOjA7czozMzoicm9sZXNjYXAtLS1zdWJzY3JpYmVyLS0tdGhlbWVfdGFiIjtiOjA7czo0MToicm9sZXNjYXAtLS1zYnNjcmJyX3N1YnNjcmliZXItLS10aGVtZV90YWIiO2I6MDtzOjM2OiJyb2xlc2NhcC0tLWFkbWluaXN0cmF0b3ItLS1zdHlsZV90YWIiO2I6MDtzOjI5OiJyb2xlc2NhcC0tLWVkaXRvci0tLXN0eWxlX3RhYiI7YjowO3M6Mjk6InJvbGVzY2FwLS0tYXV0aG9yLS0tc3R5bGVfdGFiIjtiOjA7czozNDoicm9sZXNjYXAtLS1jb250cmlidXRvci0tLXN0eWxlX3RhYiI7YjowO3M6MzM6InJvbGVzY2FwLS0tc3Vic2NyaWJlci0tLXN0eWxlX3RhYiI7YjowO3M6NDE6InJvbGVzY2FwLS0tc2JzY3Jicl9zdWJzY3JpYmVyLS0tc3R5bGVfdGFiIjtiOjA7fQ==', 'yes'),
(335, 'wysija_reinstall', '0', 'no'),
(336, 'wysija_schedules', 'a:5:{s:5:"queue";a:3:{s:13:"next_schedule";i:1429628393;s:13:"prev_schedule";b:0;s:7:"running";b:0;}s:6:"bounce";a:3:{s:13:"next_schedule";i:1429262217;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:5:"daily";a:3:{s:13:"next_schedule";i:1429685818;s:13:"prev_schedule";b:0;s:7:"running";b:0;}s:6:"weekly";a:3:{s:13:"next_schedule";i:1429780617;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:7:"monthly";a:3:{s:13:"next_schedule";i:1431595017;s:13:"prev_schedule";i:0;s:7:"running";b:0;}}', 'yes'),
(337, 'wysija_msg', '', 'no'),
(338, 'wysija_queries', '', 'no'),
(339, 'wysija_queries_errors', '', 'no'),
(340, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1429193437;s:7:"checked";a:8:{s:30:"advanced-custom-fields/acf.php";s:5:"4.4.1";s:19:"akismet/akismet.php";s:5:"3.1.1";s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:5:"2.2.3";s:9:"hello.php";s:3:"1.6";s:28:"wysija-newsletters/index.php";s:6:"2.6.15";s:25:"menu-image/menu-image.php";s:3:"2.4";s:39:"siteorigin-panels/siteorigin-panels.php";s:3:"2.1";s:39:"so-widgets-bundle/so-widgets-bundle.php";s:5:"1.2.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";O:8:"stdClass":7:{s:2:"id";s:5:"27008";s:4:"slug";s:27:"black-studio-tinymce-widget";s:6:"plugin";s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:11:"new_version";s:5:"2.2.3";s:3:"url";s:58:"https://wordpress.org/plugins/black-studio-tinymce-widget/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/black-studio-tinymce-widget.2.2.3.zip";s:14:"upgrade_notice";s:124:"Version 2.x is a major update. If you are upgrading from version 1.x please ensure to backup your database before upgrading.";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:28:"wysija-newsletters/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"27505";s:4:"slug";s:18:"wysija-newsletters";s:6:"plugin";s:28:"wysija-newsletters/index.php";s:11:"new_version";s:6:"2.6.15";s:3:"url";s:49:"https://wordpress.org/plugins/wysija-newsletters/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/wysija-newsletters.2.6.15.zip";}s:25:"menu-image/menu-image.php";O:8:"stdClass":7:{s:2:"id";s:5:"41062";s:4:"slug";s:10:"menu-image";s:6:"plugin";s:25:"menu-image/menu-image.php";s:11:"new_version";s:3:"2.4";s:3:"url";s:41:"https://wordpress.org/plugins/menu-image/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/menu-image.2.4.zip";s:14:"upgrade_notice";s:73:"If your are using Jetpack Phonon module now menu icons will be look good.";}s:39:"siteorigin-panels/siteorigin-panels.php";O:8:"stdClass":6:{s:2:"id";s:5:"40030";s:4:"slug";s:17:"siteorigin-panels";s:6:"plugin";s:39:"siteorigin-panels/siteorigin-panels.php";s:11:"new_version";s:3:"2.1";s:3:"url";s:48:"https://wordpress.org/plugins/siteorigin-panels/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/siteorigin-panels.2.1.zip";}s:39:"so-widgets-bundle/so-widgets-bundle.php";O:8:"stdClass":6:{s:2:"id";s:5:"50709";s:4:"slug";s:17:"so-widgets-bundle";s:6:"plugin";s:39:"so-widgets-bundle/so-widgets-bundle.php";s:11:"new_version";s:5:"1.2.1";s:3:"url";s:48:"https://wordpress.org/plugins/so-widgets-bundle/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/so-widgets-bundle.1.2.1.zip";}}}', 'yes'),
(341, 'wysija_check_pn', '1429624793.8947', 'yes'),
(342, 'wysija_last_scheduled_check', '1429624793', 'yes'),
(343, 'wysija_last_php_cron_call', '1430811324', 'yes'),
(352, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1429228515', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(353, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Apr 2015 11:49:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:28:"Your WordPress, Streamlined.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"The easiest, most effective way to secure WordPress in seconds.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:8:"WP Smush";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-smushit/#post-7936";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 04 Dec 2008 00:00:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"7936@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:108:"Reduce image file sizes, improve performance and boost your SEO using the free WPMU DEV WordPress Smush API.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alex Dunae";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Displays Google Analytics reports and real-time statistics in your WordPress Dashboard. Inserts the latest tracking code in every page of your site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"EWWW Image Optimizer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/ewww-image-optimizer/#post-38780";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Jun 2012 19:30:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38780@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Reduce file sizes for images in WordPress including NextGEN, GRAND FlAGallery and more using lossless/lossy methods and image format conversion.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"nosilver4u";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26607@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Shortcodes Ultimate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/plugins/shortcodes-ultimate/#post-25618";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Apr 2011 13:08:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25618@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:61:"Supercharge your WordPress theme with mega pack of shortcodes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Vladimir Anokhin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"UpdraftPlus Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 12 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Broken Link Checker";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/broken-link-checker/#post-2441";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 08 Oct 2007 21:35:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2441@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"This plugin will check your posts, comments and other content for broken links and missing images, and notify you if any are found.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Janis Elsts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"solarissmoke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"All In One WP Security &amp; Firewall";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/#post-54002";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 31 May 2013 23:50:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"54002@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:96:"A comprehensive, user-friendly, all in one WordPress security and firewall plugin for your site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"mra13";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WPtouch Mobile Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wptouch/#post-5468";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 May 2008 04:58:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5468@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:67:"Make your WordPress website mobile-friendly with just a few clicks.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"BraveNewCode Inc.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/buddypress/#post-10314";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 23 Apr 2009 17:48:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"10314@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"BuddyPress helps you run any kind of social network on your WordPress, with member profiles, activity streams, user groups, messaging, and more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Andy Peatling";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Fast Secure Contact Form";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/si-contact-form/#post-12636";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Aug 2009 01:20:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12636@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"An easy and powerful form builder that lets your visitors send you email. Blocks all automated spammers. No templates to mess with.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Mike Challis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:23:"MailChimp for WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/mailchimp-for-wp/#post-54377";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Jun 2013 17:32:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"54377@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The best MailChimp plugin to get more email subscribers. Easily add MailChimp sign-up forms and sign-up checkboxes to your WordPress site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Danny van Kooten";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 16 Apr 2015 11:55:16 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Fri, 09 Mar 2007 22:11:30 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20130911040210";}', 'no'),
(354, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1429228515', 'no'),
(355, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1429185315', 'no'),
(358, '_site_transient_timeout_theme_roots', '1429192848', 'yes'),
(359, '_site_transient_theme_roots', 'a:2:{s:8:"giroptic";s:7:"/themes";s:10:"zerif-lite";s:7:"/themes";}', 'yes'),
(379, '_zwt_cache', 'a:3:{s:31:"translation_network_cache_class";a:2:{s:13:"trans_net_id1";s:1:"1";s:15:"trans_network_1";a:2:{i:0;a:2:{s:7:"blog_id";s:1:"1";s:9:"lang_code";s:5:"en_US";}i:1;a:2:{s:7:"blog_id";s:1:"3";s:9:"lang_code";s:5:"uk_UA";}}}s:21:"lang_name_cache_class";a:121:{s:10:"en_USen_US";s:7:"English";s:10:"uk_UAen_US";s:9:"Ukrainian";s:10:"es_ESen_US";s:7:"Spanish";s:10:"es_ESes_ES";s:8:"Español";s:10:"de_DEen_US";s:6:"German";s:10:"de_DEde_DE";s:7:"Deutsch";s:10:"fr_FRen_US";s:6:"French";s:10:"fr_FRfr_FR";s:9:"Français";s:7:"aren_US";s:6:"Arabic";s:4:"arar";s:14:"العربية";s:7:"bsen_US";s:7:"Bosnian";s:4:"bsbs";s:7:"Bosnian";s:10:"bg_BGen_US";s:9:"Bulgarian";s:10:"bg_BGbg_BG";s:9:"Bulgarian";s:7:"caen_US";s:7:"Catalan";s:4:"caca";s:7:"Català";s:10:"cs_CZen_US";s:5:"Czech";s:10:"cs_CZcs_CZ";s:9:"Čeština";s:10:"sk_SKen_US";s:6:"Slovak";s:10:"sk_SKsk_SK";s:11:"Slovenčina";s:7:"cyen_US";s:5:"Welsh";s:4:"cycy";s:7:"Cymraeg";s:10:"da_DKen_US";s:6:"Danish";s:10:"da_DKda_DK";s:5:"Dansk";s:7:"elen_US";s:5:"Greek";s:4:"elel";s:16:"Ελληνικα";s:7:"eoen_US";s:9:"Esperanto";s:4:"eoeo";s:9:"Esperanto";s:7:"eten_US";s:8:"Estonian";s:4:"etet";s:5:"Eesti";s:7:"euen_US";s:6:"Basque";s:4:"eueu";s:7:"Euskara";s:10:"fa_IRen_US";s:7:"Persian";s:10:"fa_IRfa_IR";s:10:"پارسی";s:10:"fi_FIen_US";s:7:"Finnish";s:10:"fi_FIfi_FI";s:5:"Suomi";s:7:"gaen_US";s:5:"Irish";s:4:"gaga";s:7:"Gaeilge";s:10:"he_ILen_US";s:6:"Hebrew";s:10:"he_ILhe_IL";s:10:"עברית";s:7:"hien_US";s:5:"Hindi";s:4:"hihi";s:18:"हिन्दी";s:7:"hren_US";s:8:"Croatian";s:4:"hrhr";s:8:"Hrvatski";s:10:"hu_HUen_US";s:9:"Hungarian";s:10:"hu_HUhu_HU";s:6:"Magyar";s:7:"hyen_US";s:8:"Armenian";s:4:"hyhy";s:8:"Armenian";s:10:"id_IDen_US";s:10:"Indonesian";s:10:"id_IDid_ID";s:9:"Indonesia";s:10:"is_ISen_US";s:9:"Icelandic";s:10:"is_ISis_IS";s:9:"Íslenska";s:10:"it_ITen_US";s:7:"Italian";s:10:"it_ITit_IT";s:8:"Italiano";s:7:"jaen_US";s:8:"Japanese";s:4:"jaja";s:9:"日本語";s:10:"ko_KRen_US";s:6:"Korean";s:10:"ko_KRko_KR";s:9:"한국어";s:7:"kuen_US";s:7:"Kurdish";s:4:"kuku";s:7:"Kurdish";s:7:"laen_US";s:5:"Latin";s:4:"lala";s:5:"Latin";s:7:"lven_US";s:7:"Latvian";s:4:"lvlv";s:9:"Latviešu";s:7:"lten_US";s:10:"Lithuanian";s:4:"ltlt";s:10:"Lithuanian";s:10:"mk_MKen_US";s:10:"Macedonian";s:10:"mk_MKmk_MK";s:10:"Macedonian";s:7:"mten_US";s:7:"Maltese";s:4:"mtmt";s:7:"Maltese";s:7:"moen_US";s:9:"Moldavian";s:4:"momo";s:9:"Moldavian";s:7:"mnen_US";s:9:"Mongolian";s:4:"mnmn";s:9:"Mongolian";s:7:"neen_US";s:6:"Nepali";s:4:"nene";s:6:"Nepali";s:10:"nl_NLen_US";s:5:"Dutch";s:10:"nl_NLnl_NL";s:10:"Nederlands";s:10:"nb_NOen_US";s:17:"Norwegian Bokmål";s:10:"nb_NOnb_NO";s:14:"Norwegian Bokm";s:7:"paen_US";s:7:"Punjabi";s:4:"papa";s:7:"Punjabi";s:10:"pl_PLen_US";s:6:"Polish";s:10:"pl_PLpl_PL";s:6:"polski";s:10:"pt_PTen_US";s:21:"Portuguese (Portugal)";s:10:"pt_PTpt_PT";s:10:"Português";s:7:"quen_US";s:7:"Quechua";s:4:"ququ";s:7:"Quechua";s:10:"ro_ROen_US";s:8:"Romanian";s:10:"ro_ROro_RO";s:8:"Română";s:10:"ru_RUen_US";s:7:"Russian";s:10:"ru_RUru_RU";s:14:"Русский";s:10:"sl_SIen_US";s:9:"Slovenian";s:10:"sl_SIsl_SI";s:9:"Slovenian";s:7:"soen_US";s:6:"Somali";s:4:"soso";s:6:"Somali";s:7:"sqen_US";s:8:"Albanian";s:4:"sqsq";s:8:"Albanian";s:10:"sr_RSen_US";s:7:"Serbian";s:10:"sr_RSsr_RS";s:7:"Serbian";s:10:"sv_SEen_US";s:7:"Swedish";s:10:"sv_SEsv_SE";s:7:"Svenska";s:7:"taen_US";s:5:"Tamil";s:4:"tata";s:5:"Tamil";s:7:"then_US";s:4:"Thai";s:4:"thth";s:9:"ไทย";s:7:"tren_US";s:7:"Turkish";s:4:"trtr";s:8:"Türkçe";s:10:"uk_UAuk_UA";s:9:"Ukrainian";s:7:"uren_US";s:4:"Urdu";s:4:"urur";s:4:"Urdu";s:10:"uz_UZen_US";s:5:"Uzbek";s:10:"uz_UZuz_UZ";s:5:"Uzbek";s:7:"vien_US";s:10:"Vietnamese";s:4:"vivi";s:10:"Vietnamese";s:7:"yien_US";s:7:"Yiddish";s:4:"yiyi";s:7:"Yiddish";s:7:"zuen_US";s:4:"Zulu";s:4:"zuzu";s:4:"Zulu";s:10:"zh_CNen_US";s:7:"Chinese";s:10:"zh_CNzh_CN";s:7:"Chinese";}s:23:"locale_code_cache_class";a:2:{s:10:"code_en_US";s:2:"en";s:10:"code_uk_UA";s:2:"uk";}}', 'yes'),
(380, 'anh_notices', 'a:2:{s:6:"update";a:0:{}s:5:"error";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(381, 'zwt_zanto_settings', 'a:5:{s:14:"zanto_settings";a:1:{s:10:"db-version";s:5:"0.3.4";}s:10:"blog_setup";a:4:{s:20:"auto_add_subscribers";i:0;s:21:"browser_lang_redirect";i:0;s:15:"browser_lr_time";i:24;s:15:"site_visibility";i:1;}s:20:"translation_settings";a:3:{s:20:"default_admin_locale";s:5:"en_US";s:15:"lang_url_format";i:0;s:24:"download_wp_translations";b:0;}s:12:"setup_status";a:2:{s:12:"setup_wizard";s:8:"complete";s:15:"setup_interface";s:4:"four";}s:13:"lang_switcher";a:18:{s:21:"alt_lang_availability";i:0;s:26:"alt_lang_availability_text";s:33:"This article is also available in";s:20:"show_footer_selector";i:0;s:14:"language_order";N;s:8:"elements";a:3:{s:4:"flag";i:1;s:11:"native_name";i:1;s:15:"translated_name";i:1;}s:18:"skip_missing_trans";s:1:"0";s:16:"front_page_trans";s:1:"0";s:16:"post_trans_links";i:0;s:16:"post_tl_position";s:5:"below";s:22:"post_availability_text";s:34:"This post is also available in: %s";s:12:"zwt_ls_theme";s:56:"/plugins/zanto/views/lang-switcher/lang_switcher.zwt.php";s:17:"zwt_ls_custom_css";s:0:"";s:18:"switcher_in_wpmenu";i:0;s:11:"menu_for_ls";s:0:"";s:13:"post_tl_style";s:1:"0";s:15:"custom_flag_url";i:0;s:15:"custom_flag_ext";s:3:"png";s:16:"use_custom_flags";i:0;}}', 'yes'),
(382, 'WPLANG', 'en_US', 'yes'),
(401, 'post_count', '1', 'yes'),
(414, '_transient_doing_cron', '1430811177.9588780403137207031250', 'yes'),
(424, 'mc4wp_lite', 'a:1:{s:7:"api_key";s:37:"9725c07f7afe7021c7542f5310407a28-us10";}', 'yes'),
(425, 'mc4wp_lite_checkbox', 'a:6:{s:12:"double_optin";s:1:"1";s:22:"show_at_multisite_form";s:1:"1";s:5:"label";s:30:"Sign me up for the newsletter!";s:8:"precheck";s:1:"1";s:3:"css";s:1:"1";s:20:"woocommerce_position";s:5:"order";}', 'yes'),
(426, 'mc4wp_lite_form', 'a:10:{s:3:"css";s:7:"default";s:6:"markup";s:160:"<div class="input-group">\r\n    <button class="mail_icon" type="submit"></button>\r\n    <input type="email"  name="EMAIL" id="mc4wp_email">\r\n</div>\r\n           \r\n";s:12:"double_optin";s:1:"1";s:18:"hide_after_success";s:1:"0";s:8:"redirect";s:0:"";s:12:"text_success";s:79:"Thank you, your sign-up request was successful! Please check your e-mail inbox.";s:18:"text_invalid_email";s:37:"Please provide a valid email address.";s:27:"text_required_field_missing";s:35:"Please fill in the required fields.";s:23:"text_already_subscribed";s:53:"Given email address is already subscribed, thank you!";s:10:"text_error";s:51:"Oops. Something went wrong. Please try again later.";}', 'yes'),
(427, 'mc4wp_lite_version', '2.2.9', 'yes'),
(432, '_transient_timeout_mc4wp_mailchimp_lists_fallback', '1432015188', 'no'),
(433, '_transient_mc4wp_mailchimp_lists_fallback', 'a:0:{}', 'no'),
(444, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(461, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(462, 'widget_siteorigin-panels-builder', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(463, 'widget_mc4wp_widget', 'a:3:{i:1;a:0:{}i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(464, 'widget_wysija', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(466, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(468, 'widget_zwt_multilingual_ls', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(469, 'widget_ctup-ads-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(472, 'rewrite_rules', 'a:74:{s:52:"blog/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:47:"blog/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:40:"blog/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:22:"blog/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:49:"blog/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:44:"blog/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:37:"blog/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:19:"blog/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:50:"blog/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:45:"blog/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:38:"blog/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:20:"blog/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:16:".*wp-signup.php$";s:21:"index.php?signup=true";s:18:".*wp-activate.php$";s:23:"index.php?activate=true";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=20&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:52:"blog/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:47:"blog/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:40:"blog/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:22:"blog/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:74:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:69:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:62:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:44:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:61:"blog/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:56:"blog/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:49:"blog/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:31:"blog/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:48:"blog/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:43:"blog/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:36:"blog/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:18:"blog/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:63:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:73:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:93:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:88:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:88:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:62:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:82:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:77:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:70:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:77:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:52:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:62:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:82:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:69:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:56:"blog/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:43:"blog/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(489, 'widget_home-rollover-widget', 'a:2:{i:2;a:2:{s:4:"text";s:0:"";s:9:"image_uri";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(490, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1430847076', 'no'),
(491, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1430847076', 'no'),
(492, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1430803876', 'no'),
(493, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1430847078', 'no'),
(494, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1430847078', 'no'),
(495, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1430803878', 'no'),
(496, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1430847078', 'no'),
(497, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/04/wordpress-4-2-1/''>WordPress 4.2.1 Security Release</a> <span class="rss-date">April 27, 2015</span><div class="rssSummary">WordPress 4.2.1 is now available. This is a critical security release for all previous versions and we strongly encourage you to update your sites immediately. A few hours ago, the WordPress team was made aware of a cross-site scripting vulnerability, which could enable commenters to compromise a site. The vulnerability was discovered by Jouko Pynnönen. [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wptavern.com/wordcamp-miami-2015-to-experiment-with-new-tracks-tickets-selling-out-fast''>WPTavern: WordCamp Miami 2015 to Experiment with New Tracks, Tickets Selling Out Fast</a></li><li><a class=''rsswidget'' href=''http://ma.tt/2015/05/macbook-usb-c-review/''>Matt: Macbook &amp; USB-C Review</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/wordpress-theme-developer-handbook-updated-with-comprehensive-guide-to-the-customizer-api''>WPTavern: WordPress Theme Developer Handbook Updated with Comprehensive Guide to the Customizer API</a></li></ul></div>', 'no'),
(498, '_transient_timeout_mc4wp_mailchimp_lists', '1430891988', 'no'),
(499, '_transient_mc4wp_mailchimp_lists', 'a:0:{}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=702 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1429002648:1'),
(3, 5, '_wp_attached_file', '2015/04/IMG_20141117_173449.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4128;s:6:"height";i:3096;s:4:"file";s:31:"2015/04/IMG_20141117_173449.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20141117_173449-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20141117_173449-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20141117_173449-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"IMG_20141117_173449-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.2000000000000002;s:6:"credit";s:0:"";s:6:"camera";s:9:"Newman N2";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1416245688;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.79";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";i:8;}}'),
(5, 2, '_edit_last', '1'),
(6, 2, '_panels_data_preview', 'a:3:{s:7:"widgets";a:3:{i:0;a:1:{s:11:"panels_info";a:5:{s:5:"class";s:18:"WP_Nav_Menu_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:1;a:3:{s:11:"panels_data";a:3:{s:7:"widgets";a:1:{i:0;a:1:{s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:1;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:8:{s:5:"class";s:0:"";s:10:"widget_css";s:0:"";s:7:"padding";s:0:"";s:10:"background";s:0:"";s:27:"background_image_attachment";s:1:"0";s:18:"background_display";s:4:"tile";s:12:"border_color";s:0:"";s:10:"font_color";s:0:"";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.5;}i:1;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.5;}}}s:10:"builder_id";s:13:"552cd6ec293f0";s:11:"panels_info";a:6:{s:5:"class";s:32:"SiteOrigin_Panels_Widgets_Layout";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:2;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:982:"<p>This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p><blockquote><p>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</p></blockquote><p>...or something like this:</p><blockquote><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote><p>As a new WordPress user, you should go to <a href="http://localhost/giroptic/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:1;s:2:"id";i:2;}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.5;}i:1;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.5;}}}'),
(7, 2, 'panels_data', 'a:3:{s:7:"widgets";a:3:{i:0;a:1:{s:11:"panels_info";a:5:{s:5:"class";s:18:"WP_Nav_Menu_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:1;a:3:{s:11:"panels_data";a:3:{s:7:"widgets";a:1:{i:0;a:1:{s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:1;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:8:{s:5:"class";s:0:"";s:10:"widget_css";s:0:"";s:7:"padding";s:0:"";s:10:"background";s:0:"";s:27:"background_image_attachment";s:1:"0";s:18:"background_display";s:4:"tile";s:12:"border_color";s:0:"";s:10:"font_color";s:0:"";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.5;}i:1;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.5;}}}s:10:"builder_id";s:13:"552cd6ec293f0";s:11:"panels_info";a:5:{s:5:"class";s:32:"SiteOrigin_Panels_Widgets_Layout";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:2;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:982:"<p>This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p><blockquote><p>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</p></blockquote><p>...or something like this:</p><blockquote><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote><p>As a new WordPress user, you should go to <a href="http://localhost/giroptic/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:1;s:2:"id";i:2;}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.5;}i:1;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.5;}}}'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1429003208:1'),
(10, 8, '_wp_attached_file', '2015/04/360cammiddle.png'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:538;s:6:"height";i:420;s:4:"file";s:24:"2015/04/360cammiddle.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"360cammiddle-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"360cammiddle-300x234.png";s:5:"width";i:300;s:6:"height";i:234;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"360cammiddle-538x380.png";s:5:"width";i:538;s:6:"height";i:380;s:9:"mime-type";s:9:"image/png";}s:28:"vantage-thumbnail-no-sidebar";a:4:{s:4:"file";s:24:"360cammiddle-538x380.png";s:5:"width";i:538;s:6:"height";i:380;s:9:"mime-type";s:9:"image/png";}s:16:"vantage-carousel";a:4:{s:4:"file";s:24:"360cammiddle-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}s:17:"vantage-grid-loop";a:4:{s:4:"file";s:24:"360cammiddle-436x272.png";s:5:"width";i:436;s:6:"height";i:272;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(12, 7, '_wp_page_template', 'templates/template-full.php'),
(13, 7, '_panels_data_preview', 'a:3:{s:7:"widgets";a:4:{i:0;a:8:{s:5:"image";i:8;s:4:"size";s:4:"full";s:5:"title";s:0:"";s:3:"alt";s:0:"";s:3:"url";s:0:"";s:5:"bound";b:1;s:11:"panels_info";a:5:{s:5:"class";s:30:"SiteOrigin_Widget_Image_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:3:{s:10:"background";s:7:"#a8acaf";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:10:"new_window";b:0;}i:1;a:1:{s:11:"panels_info";a:4:{s:5:"class";s:18:"WP_Nav_Menu_Widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;}}i:2;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:2;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:3:{s:10:"background";s:7:"#44bbff";s:27:"background_image_attachment";i:8;s:18:"background_display";s:6:"center";}}}i:3;a:3:{s:11:"panels_data";a:3:{s:7:"widgets";a:0:{}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}s:10:"builder_id";s:13:"552cd6ab405c0";s:11:"panels_info";a:6:{s:5:"class";s:32:"SiteOrigin_Panels_Widgets_Layout";s:3:"raw";b:0;s:4:"grid";i:6;s:4:"cell";i:1;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:7:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:2;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:3;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:4;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}i:5;a:2:{s:5:"cells";i:3;s:5:"style";a:0:{}}i:6;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:11:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}i:2;a:2:{s:4:"grid";i:2;s:6:"weight";i:1;}i:3;a:2:{s:4:"grid";i:3;s:6:"weight";i:1;}i:4;a:2:{s:4:"grid";i:4;s:6:"weight";d:0.5;}i:5;a:2:{s:4:"grid";i:4;s:6:"weight";d:0.5;}i:6;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:7;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:8;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:9;a:2:{s:4:"grid";i:6;s:6:"weight";d:0.5;}i:10;a:2:{s:4:"grid";i:6;s:6:"weight";d:0.5;}}}'),
(14, 7, 'vantage_metaslider_slider', ''),
(15, 7, 'vantage_menu_icon', ''),
(16, 7, 'panels_data', 'a:3:{s:7:"widgets";a:4:{i:0;a:8:{s:5:"image";i:8;s:4:"size";s:4:"full";s:5:"title";s:0:"";s:3:"alt";s:0:"";s:3:"url";s:0:"";s:5:"bound";b:1;s:11:"panels_info";a:5:{s:5:"class";s:30:"SiteOrigin_Widget_Image_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:3:{s:10:"background";s:7:"#a8acaf";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:10:"new_window";b:0;}i:1;a:1:{s:11:"panels_info";a:4:{s:5:"class";s:18:"WP_Nav_Menu_Widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;}}i:2;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:2;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:3:{s:10:"background";s:7:"#44bbff";s:27:"background_image_attachment";i:8;s:18:"background_display";s:6:"center";}}}i:3;a:3:{s:11:"panels_data";a:3:{s:7:"widgets";a:0:{}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}s:10:"builder_id";s:13:"552cd6ab405c0";s:11:"panels_info";a:6:{s:5:"class";s:32:"SiteOrigin_Panels_Widgets_Layout";s:3:"raw";b:0;s:4:"grid";i:6;s:4:"cell";i:1;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:7:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:2;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:3;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:4;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}i:5;a:2:{s:5:"cells";i:3;s:5:"style";a:0:{}}i:6;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:11:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}i:2;a:2:{s:4:"grid";i:2;s:6:"weight";i:1;}i:3;a:2:{s:4:"grid";i:3;s:6:"weight";i:1;}i:4;a:2:{s:4:"grid";i:4;s:6:"weight";d:0.5;}i:5;a:2:{s:4:"grid";i:4;s:6:"weight";d:0.5;}i:6;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:7;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:8;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:9;a:2:{s:4:"grid";i:6;s:6:"weight";d:0.5;}i:10;a:2:{s:4:"grid";i:6;s:6:"weight";d:0.5;}}}'),
(18, 11, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:0:"";s:4:"text";s:982:"<p>This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p><blockquote><p>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</p></blockquote><p>...or something like this:</p><blockquote><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote><p>As a new WordPress user, you should go to <a href="http://localhost/giroptic/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";i:5;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(19, 2, 'vantage_metaslider_slider', ''),
(20, 2, 'vantage_menu_icon', ''),
(22, 12, 'panels_data', 'a:3:{s:7:"widgets";a:4:{i:0;a:1:{s:11:"panels_info";a:6:{s:5:"class";s:30:"SiteOrigin_Widget_Image_Widget";s:3:"raw";b:1;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:1;a:1:{s:11:"panels_info";a:4:{s:5:"class";s:18:"WP_Nav_Menu_Widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;}}i:2;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:2;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:3:{s:10:"background";s:7:"#44bbff";s:27:"background_image_attachment";i:8;s:18:"background_display";s:6:"center";}}}i:3;a:3:{s:11:"panels_data";a:3:{s:7:"widgets";a:0:{}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}s:10:"builder_id";s:13:"552cd6ab405c0";s:11:"panels_info";a:5:{s:5:"class";s:32:"SiteOrigin_Panels_Widgets_Layout";s:4:"grid";i:6;s:4:"cell";i:1;s:2:"id";i:3;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:7:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:2;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:3;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:4;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}i:5;a:2:{s:5:"cells";i:3;s:5:"style";a:0:{}}i:6;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:11:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}i:2;a:2:{s:4:"grid";i:2;s:6:"weight";i:1;}i:3;a:2:{s:4:"grid";i:3;s:6:"weight";i:1;}i:4;a:2:{s:4:"grid";i:4;s:6:"weight";d:0.5;}i:5;a:2:{s:4:"grid";i:4;s:6:"weight";d:0.5;}i:6;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:7;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:8;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:9;a:2:{s:4:"grid";i:6;s:6:"weight";d:0.5;}i:10;a:2:{s:4:"grid";i:6;s:6:"weight";d:0.5;}}}'),
(24, 15, '_edit_last', '1'),
(25, 15, '_edit_lock', '1429003274:1'),
(26, 16, '_edit_last', '1'),
(27, 16, 'field_552cda87a4b82', 'a:11:{s:3:"key";s:19:"field_552cda87a4b82";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(28, 16, 'field_552cdab3a4b83', 'a:11:{s:3:"key";s:19:"field_552cdab3a4b83";s:5:"label";s:6:"Header";s:4:"name";s:6:"header";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(30, 16, 'position', 'normal'),
(31, 16, 'layout', 'no_box'),
(32, 16, 'hide_on_screen', ''),
(33, 16, '_edit_lock', '1429003170:1'),
(34, 17, 'panels_data', 'a:3:{s:7:"widgets";a:4:{i:0;a:8:{s:5:"image";i:8;s:4:"size";s:4:"full";s:5:"title";s:0:"";s:3:"alt";s:0:"";s:3:"url";s:0:"";s:5:"bound";b:1;s:11:"panels_info";a:5:{s:5:"class";s:30:"SiteOrigin_Widget_Image_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:3:{s:10:"background";s:7:"#a8acaf";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:10:"new_window";b:0;}i:1;a:1:{s:11:"panels_info";a:4:{s:5:"class";s:18:"WP_Nav_Menu_Widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;}}i:2;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:2;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:3:{s:10:"background";s:7:"#44bbff";s:27:"background_image_attachment";i:8;s:18:"background_display";s:6:"center";}}}i:3;a:3:{s:11:"panels_data";a:3:{s:7:"widgets";a:0:{}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}s:10:"builder_id";s:13:"552cd6ab405c0";s:11:"panels_info";a:6:{s:5:"class";s:32:"SiteOrigin_Panels_Widgets_Layout";s:3:"raw";b:0;s:4:"grid";i:6;s:4:"cell";i:1;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:7:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:2;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:3;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:4;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}i:5;a:2:{s:5:"cells";i:3;s:5:"style";a:0:{}}i:6;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:11:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}i:2;a:2:{s:4:"grid";i:2;s:6:"weight";i:1;}i:3;a:2:{s:4:"grid";i:3;s:6:"weight";i:1;}i:4;a:2:{s:4:"grid";i:4;s:6:"weight";d:0.5;}i:5;a:2:{s:4:"grid";i:4;s:6:"weight";d:0.5;}i:6;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:7;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:8;a:2:{s:4:"grid";i:5;s:6:"weight";d:0.33333333333333331;}i:9;a:2:{s:4:"grid";i:6;s:6:"weight";d:0.5;}i:10;a:2:{s:4:"grid";i:6;s:6:"weight";d:0.5;}}}'),
(36, 16, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"7";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(37, 15, '_wp_trash_meta_status', 'draft'),
(38, 15, '_wp_trash_meta_time', '1429003426'),
(39, 7, '_wp_trash_meta_status', 'publish'),
(40, 7, '_wp_trash_meta_time', '1429003426'),
(41, 2, '_wp_trash_meta_status', 'publish'),
(42, 2, '_wp_trash_meta_time', '1429003426'),
(43, 20, '_edit_last', '1'),
(44, 20, '_edit_lock', '1429718115:1'),
(45, 20, '_panels_data_preview', 'a:3:{s:7:"widgets";a:1:{i:0;a:6:{s:4:"name";s:8:"New name";s:5:"title";s:9:"New title";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:0:"";s:11:"description";s:17:"Short description";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:3:{s:7:"row_css";s:22:"block full-block white";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(47, 23, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:0:"";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:1;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:13:"EXAMPLE TITLE";s:4:"text";s:233:"<p>Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.</p>";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:3:{s:5:"class";s:3:"row";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:3:{s:5:"class";s:3:"row";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(48, 23, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:0:"";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:1;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:13:"EXAMPLE TITLE";s:4:"text";s:233:"<p>Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.</p>";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:3:{s:5:"class";s:3:"row";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:3:{s:5:"class";s:3:"row";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(49, 23, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:0:"";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:1;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:13:"EXAMPLE TITLE";s:4:"text";s:233:"<p>Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.</p>";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:3:{s:5:"class";s:3:"row";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:3:{s:5:"class";s:3:"row";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(50, 16, '_wp_trash_meta_status', 'publish'),
(51, 16, '_wp_trash_meta_time', '1429013363'),
(52, 25, '_edit_last', '1'),
(53, 25, 'field_552d03e32943d', 'a:11:{s:3:"key";s:19:"field_552d03e32943d";s:5:"label";s:4:"Text";s:4:"name";s:4:"text";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(54, 25, 'field_552d03f22943e', 'a:11:{s:3:"key";s:19:"field_552d03f22943e";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(56, 25, 'position', 'normal'),
(57, 25, 'layout', 'no_box'),
(58, 25, 'hide_on_screen', ''),
(59, 25, '_edit_lock', '1429014750:1'),
(60, 26, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(61, 26, '_text', 'field_552d03e32943d'),
(62, 26, 'images', '8'),
(63, 26, '_images', 'field_552d03f22943e'),
(64, 26, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:0:"";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:1;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:13:"EXAMPLE TITLE";s:4:"text";s:233:"<p>Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.</p>";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:3:{s:5:"class";s:3:"row";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:3:{s:5:"class";s:3:"row";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(65, 20, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(66, 20, '_text', 'field_552d03e32943d'),
(67, 20, 'images', '8'),
(68, 20, '_images', 'field_552d03f22943e'),
(69, 25, 'field_552d047679371', 'a:14:{s:3:"key";s:19:"field_552d047679371";s:5:"label";s:12:"Second title";s:4:"name";s:12:"second_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(70, 25, 'field_552d048479372', 'a:11:{s:3:"key";s:19:"field_552d048479372";s:5:"label";s:6:"Image2";s:4:"name";s:6:"image2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(71, 25, 'field_552d049879373', 'a:11:{s:3:"key";s:19:"field_552d049879373";s:5:"label";s:6:"Image3";s:4:"name";s:6:"image3";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(73, 25, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"20";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(74, 27, '_wp_attached_file', '2015/04/example-photo-c.jpg'),
(75, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:27:"2015/04/example-photo-c.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"example-photo-c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"example-photo-c-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"example-photo-c-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:27:"example-photo-c-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(76, 28, '_wp_attached_file', '2015/04/example-photo-b.jpg'),
(77, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:27:"2015/04/example-photo-b.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"example-photo-b-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"example-photo-b-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"example-photo-b-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:27:"example-photo-b-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(78, 29, '_wp_attached_file', '2015/04/example-photo-a.jpg'),
(79, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:27:"2015/04/example-photo-a.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"example-photo-a-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"example-photo-a-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"example-photo-a-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:27:"example-photo-a-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(80, 30, 'second_title', 'EXAMPLE TITLE'),
(81, 30, '_second_title', 'field_552d047679371'),
(82, 30, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(83, 30, '_text', 'field_552d03e32943d'),
(84, 30, 'image', '27'),
(85, 30, '_image', 'field_552d03f22943e'),
(86, 30, 'image2', '28'),
(87, 30, '_image2', 'field_552d048479372'),
(88, 30, 'image3', '29'),
(89, 30, '_image3', 'field_552d049879373'),
(90, 20, 'second_title', 'EXAMPLE TITLE'),
(91, 20, '_second_title', 'field_552d047679371'),
(92, 20, 'image', '27'),
(93, 20, '_image', 'field_552d03f22943e'),
(94, 20, 'image2', '28'),
(95, 20, '_image2', 'field_552d048479372'),
(96, 20, 'image3', '29'),
(97, 20, '_image3', 'field_552d049879373'),
(98, 33, '_edit_last', '1'),
(99, 33, 'field_552d75aa9bf16', 'a:14:{s:3:"key";s:19:"field_552d75aa9bf16";s:5:"label";s:3:"rel";s:4:"name";s:3:"rel";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:6:"object";s:9:"post_type";a:1:{i:0;s:3:"all";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(100, 33, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"20";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(101, 33, 'position', 'normal'),
(102, 33, 'layout', 'no_box'),
(103, 33, 'hide_on_screen', ''),
(104, 33, '_edit_lock', '1429042477:1'),
(105, 34, 'second_title', 'EXAMPLE TITLE'),
(106, 34, '_second_title', 'field_552d047679371'),
(107, 34, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(108, 34, '_text', 'field_552d03e32943d'),
(109, 34, 'image', '27'),
(110, 34, '_image', 'field_552d03f22943e'),
(111, 34, 'image2', '28'),
(112, 34, '_image2', 'field_552d048479372'),
(113, 34, 'image3', '29'),
(114, 34, '_image3', 'field_552d049879373'),
(115, 34, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(116, 34, '_rel', 'field_552d75aa9bf16'),
(117, 20, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(118, 20, '_rel', 'field_552d75aa9bf16'),
(119, 35, '_menu_item_type', 'custom'),
(120, 35, '_menu_item_menu_item_parent', '0'),
(121, 35, '_menu_item_object_id', '35'),
(122, 35, '_menu_item_object', 'custom'),
(123, 35, '_menu_item_target', ''),
(124, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(125, 35, '_menu_item_xfn', ''),
(126, 35, '_menu_item_url', 'http://localhost/giroptic/'),
(127, 35, '_menu_item_orphaned', '1429082927'),
(128, 36, '_menu_item_type', 'post_type'),
(129, 36, '_menu_item_menu_item_parent', '0'),
(130, 36, '_menu_item_object_id', '20'),
(131, 36, '_menu_item_object', 'page'),
(132, 36, '_menu_item_target', ''),
(133, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 36, '_menu_item_xfn', ''),
(135, 36, '_menu_item_url', ''),
(136, 36, '_menu_item_orphaned', '1429082927'),
(137, 37, '_menu_item_type', 'post_type'),
(138, 37, '_menu_item_menu_item_parent', '0'),
(139, 37, '_menu_item_object_id', '20'),
(140, 37, '_menu_item_object', 'page'),
(141, 37, '_menu_item_target', ''),
(142, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(143, 37, '_menu_item_xfn', ''),
(144, 37, '_menu_item_url', ''),
(145, 37, '_menu_item_orphaned', '1429085770'),
(146, 38, '_menu_item_type', 'post_type'),
(147, 38, '_menu_item_menu_item_parent', '0'),
(148, 38, '_menu_item_object_id', '20'),
(149, 38, '_menu_item_object', 'page'),
(150, 38, '_menu_item_target', ''),
(151, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(152, 38, '_menu_item_xfn', ''),
(153, 38, '_menu_item_url', ''),
(155, 39, '_wp_attached_file', '2015/04/menu_image.jpg'),
(156, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:84;s:4:"file";s:22:"2015/04/menu_image.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(158, 38, '_menu_item_image_size', 'menu-48x48'),
(159, 38, '_menu_item_image_title_position', 'after'),
(161, 38, '_thumbnail_id', '39'),
(185, 42, 'second_title', 'EXAMPLE TITLE'),
(186, 42, '_second_title', 'field_552d047679371'),
(187, 42, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(188, 42, '_text', 'field_552d03e32943d'),
(189, 42, 'image', '27'),
(190, 42, '_image', 'field_552d03f22943e'),
(191, 42, 'image2', '28'),
(192, 42, '_image2', 'field_552d048479372'),
(193, 42, 'image3', '29'),
(194, 42, '_image3', 'field_552d049879373'),
(195, 42, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(196, 42, '_rel', 'field_552d75aa9bf16'),
(198, 23, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:3:{s:5:"title";s:8:"My title";s:4:"link";s:17:"http://mysite.com";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(199, 43, 'second_title', 'EXAMPLE TITLE'),
(200, 43, '_second_title', 'field_552d047679371'),
(201, 43, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(202, 43, '_text', 'field_552d03e32943d'),
(203, 43, 'image', '27'),
(204, 43, '_image', 'field_552d03f22943e'),
(205, 43, 'image2', '28'),
(206, 43, '_image2', 'field_552d048479372'),
(207, 43, 'image3', '29'),
(208, 43, '_image3', 'field_552d049879373'),
(209, 43, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(210, 43, '_rel', 'field_552d75aa9bf16'),
(211, 43, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:3:{s:5:"title";s:8:"My title";s:4:"link";s:17:"http://mysite.com";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(212, 44, 'second_title', 'EXAMPLE TITLE'),
(213, 44, '_second_title', 'field_552d047679371'),
(214, 44, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(215, 44, '_text', 'field_552d03e32943d'),
(216, 44, 'image', '27'),
(217, 44, '_image', 'field_552d03f22943e'),
(218, 44, 'image2', '28'),
(219, 44, '_image2', 'field_552d048479372'),
(220, 44, 'image3', '29'),
(221, 44, '_image3', 'field_552d049879373'),
(222, 44, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(223, 44, '_rel', 'field_552d75aa9bf16'),
(224, 44, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:4:{s:5:"title";s:8:"My title";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:12:"Upload Image";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(225, 23, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:4:{s:5:"title";s:8:"My title";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(226, 23, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:4:{s:5:"title";s:8:"My title";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(227, 45, 'second_title', 'EXAMPLE TITLE'),
(228, 45, '_second_title', 'field_552d047679371'),
(229, 45, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(230, 45, '_text', 'field_552d03e32943d'),
(231, 45, 'image', '27'),
(232, 45, '_image', 'field_552d03f22943e'),
(233, 45, 'image2', '28'),
(234, 45, '_image2', 'field_552d048479372'),
(235, 45, 'image3', '29'),
(236, 45, '_image3', 'field_552d049879373'),
(237, 45, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(238, 45, '_rel', 'field_552d75aa9bf16'),
(239, 45, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:4:{s:5:"title";s:8:"My title";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(240, 20, '_oembed_a9d5d98ff9784d6c9d98cca60e34fb77', '{{unknown}}'),
(241, 46, 'second_title', 'EXAMPLE TITLE'),
(242, 46, '_second_title', 'field_552d047679371'),
(243, 46, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(244, 46, '_text', 'field_552d03e32943d'),
(245, 46, 'image', '27'),
(246, 46, '_image', 'field_552d03f22943e'),
(247, 46, 'image2', '28'),
(248, 46, '_image2', 'field_552d048479372'),
(249, 46, 'image3', '29'),
(250, 46, '_image3', 'field_552d049879373'),
(251, 46, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(252, 46, '_rel', 'field_552d75aa9bf16'),
(253, 46, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:5:{s:5:"title";s:8:"My title";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(254, 23, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(255, 47, 'second_title', 'EXAMPLE TITLE'),
(256, 47, '_second_title', 'field_552d047679371');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(257, 47, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(258, 47, '_text', 'field_552d03e32943d'),
(259, 47, 'image', '27'),
(260, 47, '_image', 'field_552d03f22943e'),
(261, 47, 'image2', '28'),
(262, 47, '_image2', 'field_552d048479372'),
(263, 47, 'image3', '29'),
(264, 47, '_image3', 'field_552d049879373'),
(265, 47, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(266, 47, '_rel', 'field_552d75aa9bf16'),
(267, 47, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";i:1;}}}'),
(268, 48, 'second_title', 'EXAMPLE TITLE'),
(269, 48, '_second_title', 'field_552d047679371'),
(270, 48, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(271, 48, '_text', 'field_552d03e32943d'),
(272, 48, 'image', '27'),
(273, 48, '_image', 'field_552d03f22943e'),
(274, 48, 'image2', '28'),
(275, 48, '_image2', 'field_552d048479372'),
(276, 48, 'image3', '29'),
(277, 48, '_image3', 'field_552d049879373'),
(278, 48, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(279, 48, '_rel', 'field_552d75aa9bf16'),
(280, 48, 'panels_data', 'a:3:{s:7:"widgets";a:3:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:2;a:15:{s:7:"service";s:10:"feedburner";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:5:{s:5:"class";s:12:"wp_subscribe";s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:2;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(281, 49, 'second_title', 'EXAMPLE TITLE'),
(282, 49, '_second_title', 'field_552d047679371'),
(283, 49, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(284, 49, '_text', 'field_552d03e32943d'),
(285, 49, 'image', '27'),
(286, 49, '_image', 'field_552d03f22943e'),
(287, 49, 'image2', '28'),
(288, 49, '_image2', 'field_552d048479372'),
(289, 49, 'image3', '29'),
(290, 49, '_image3', 'field_552d049879373'),
(291, 49, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(292, 49, '_rel', 'field_552d75aa9bf16'),
(293, 49, 'panels_data', 'a:3:{s:7:"widgets";a:3:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:2;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:5:{s:5:"class";s:12:"wp_subscribe";s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:2;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(294, 50, 'second_title', 'EXAMPLE TITLE'),
(295, 50, '_second_title', 'field_552d047679371'),
(296, 50, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(297, 50, '_text', 'field_552d03e32943d'),
(298, 50, 'image', '27'),
(299, 50, '_image', 'field_552d03f22943e'),
(300, 50, 'image2', '28'),
(301, 50, '_image2', 'field_552d048479372'),
(302, 50, 'image3', '29'),
(303, 50, '_image3', 'field_552d049879373'),
(304, 50, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(305, 50, '_rel', 'field_552d75aa9bf16'),
(306, 20, '_s2mail', 'yes'),
(307, 50, 'panels_data', 'a:3:{s:7:"widgets";a:4:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:2:{s:5:"title";s:0:"";s:11:"panels_info";a:5:{s:5:"class";s:24:"SimpleSubscribeWidgetAdd";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:2;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:3;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:6:{s:5:"class";s:12:"wp_subscribe";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(308, 51, 'second_title', 'EXAMPLE TITLE'),
(309, 51, '_second_title', 'field_552d047679371'),
(310, 51, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(311, 51, '_text', 'field_552d03e32943d'),
(312, 51, 'image', '27'),
(313, 51, '_image', 'field_552d03f22943e'),
(314, 51, 'image2', '28'),
(315, 51, '_image2', 'field_552d048479372'),
(316, 51, 'image3', '29'),
(317, 51, '_image3', 'field_552d049879373'),
(318, 51, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(319, 51, '_rel', 'field_552d75aa9bf16'),
(320, 51, 'panels_data', 'a:3:{s:7:"widgets";a:4:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:11:{s:5:"title";s:10:"Subscribe2";s:3:"div";s:6:"search";s:16:"widgetprecontent";s:0:"";s:17:"widgetpostcontent";s:0:"";s:4:"size";i:20;s:10:"hidebutton";s:4:"none";s:6:"postto";s:4:"home";s:11:"panels_info";a:5:{s:5:"class";s:14:"S2_Form_widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:2:"js";s:0:"";s:10:"noantispam";s:0:"";s:6:"nowrap";s:0:"";}i:2;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:3;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:6:{s:5:"class";s:12:"wp_subscribe";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(321, 52, 'second_title', 'EXAMPLE TITLE'),
(322, 52, '_second_title', 'field_552d047679371'),
(323, 52, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(324, 52, '_text', 'field_552d03e32943d'),
(325, 52, 'image', '27'),
(326, 52, '_image', 'field_552d03f22943e'),
(327, 52, 'image2', '28'),
(328, 52, '_image2', 'field_552d048479372'),
(329, 52, 'image3', '29'),
(330, 52, '_image3', 'field_552d049879373'),
(331, 52, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(332, 52, '_rel', 'field_552d75aa9bf16'),
(333, 52, 'panels_data', 'a:3:{s:7:"widgets";a:4:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:11:{s:5:"title";s:10:"Subscribe2";s:3:"div";s:6:"search";s:16:"widgetprecontent";s:0:"";s:17:"widgetpostcontent";s:0:"";s:4:"size";i:20;s:10:"hidebutton";s:11:"unsubscribe";s:6:"postto";s:1:"0";s:11:"panels_info";a:5:{s:5:"class";s:14:"S2_Form_widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:2:"js";s:0:"";s:10:"noantispam";s:0:"";s:6:"nowrap";s:0:"";}i:2;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:3;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:6:{s:5:"class";s:12:"wp_subscribe";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(334, 53, 'second_title', 'EXAMPLE TITLE'),
(335, 53, '_second_title', 'field_552d047679371'),
(336, 53, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(337, 53, '_text', 'field_552d03e32943d'),
(338, 53, 'image', '27'),
(339, 53, '_image', 'field_552d03f22943e'),
(340, 53, 'image2', '28'),
(341, 53, '_image2', 'field_552d048479372'),
(342, 53, 'image3', '29'),
(343, 53, '_image3', 'field_552d049879373'),
(344, 53, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(345, 53, '_rel', 'field_552d75aa9bf16'),
(346, 53, 'panels_data', 'a:3:{s:7:"widgets";a:4:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:11:{s:5:"title";s:9:"Subscribe";s:3:"div";s:6:"search";s:16:"widgetprecontent";s:0:"";s:17:"widgetpostcontent";s:0:"";s:4:"size";i:20;s:10:"hidebutton";s:4:"none";s:6:"postto";s:4:"home";s:11:"panels_info";a:5:{s:5:"class";s:14:"S2_Form_widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:2:"js";s:0:"";s:10:"noantispam";s:0:"";s:6:"nowrap";s:0:"";}i:2;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:3;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:6:{s:5:"class";s:12:"wp_subscribe";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(347, 55, 'second_title', 'EXAMPLE TITLE'),
(348, 55, '_second_title', 'field_552d047679371'),
(349, 55, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(350, 55, '_text', 'field_552d03e32943d'),
(351, 55, 'image', '27'),
(352, 55, '_image', 'field_552d03f22943e'),
(353, 55, 'image2', '28'),
(354, 55, '_image2', 'field_552d048479372'),
(355, 55, 'image3', '29'),
(356, 55, '_image3', 'field_552d049879373'),
(357, 55, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(358, 55, '_rel', 'field_552d75aa9bf16'),
(359, 55, 'panels_data', 'a:3:{s:7:"widgets";a:4:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:11:{s:5:"title";s:0:"";s:3:"div";s:6:"search";s:16:"widgetprecontent";s:6:"<span>";s:17:"widgetpostcontent";s:7:"</span>";s:4:"size";i:10;s:10:"hidebutton";s:4:"none";s:6:"postto";s:4:"home";s:11:"panels_info";a:5:{s:5:"class";s:14:"S2_Form_widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:2:"js";s:0:"";s:10:"noantispam";s:0:"";s:6:"nowrap";s:0:"";}i:2;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:3;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:6:{s:5:"class";s:12:"wp_subscribe";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(360, 56, 'second_title', 'EXAMPLE TITLE'),
(361, 56, '_second_title', 'field_552d047679371'),
(362, 56, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(363, 56, '_text', 'field_552d03e32943d'),
(364, 56, 'image', '27'),
(365, 56, '_image', 'field_552d03f22943e'),
(366, 56, 'image2', '28'),
(367, 56, '_image2', 'field_552d048479372'),
(368, 56, 'image3', '29'),
(369, 56, '_image3', 'field_552d049879373'),
(370, 56, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(371, 56, '_rel', 'field_552d75aa9bf16'),
(372, 56, 'panels_data', 'a:3:{s:7:"widgets";a:4:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:3:{s:5:"title";s:27:"Subscribe to our Newsletter";s:4:"form";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:16:"WYSIJA_NL_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:2;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:3;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:6:{s:5:"class";s:12:"wp_subscribe";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(373, 59, '_edit_last', '1'),
(374, 59, '_edit_lock', '1429191432:1'),
(376, 61, '_edit_last', '1'),
(377, 61, '_edit_lock', '1429801445:1'),
(378, 61, '_wp_page_template', 'page-about.php'),
(379, 59, '_wp_trash_meta_status', 'draft'),
(380, 59, '_wp_trash_meta_time', '1429191584'),
(381, 20, '_wp_page_template', 'default'),
(382, 65, 'second_title', 'EXAMPLE TITLE'),
(383, 65, '_second_title', 'field_552d047679371'),
(384, 65, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(385, 65, '_text', 'field_552d03e32943d'),
(386, 65, 'image', '27'),
(387, 65, '_image', 'field_552d03f22943e'),
(388, 65, 'image2', '28'),
(389, 65, '_image2', 'field_552d048479372'),
(390, 65, 'image3', '29'),
(391, 65, '_image3', 'field_552d049879373'),
(392, 65, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(393, 65, '_rel', 'field_552d75aa9bf16'),
(394, 65, 'panels_data', 'a:3:{s:7:"widgets";a:5:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:3:{s:5:"title";s:27:"Subscribe to our Newsletter";s:4:"form";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:16:"WYSIJA_NL_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:2;a:2:{s:5:"title";s:0:"";s:11:"panels_info";a:5:{s:5:"class";s:16:"WP_Widget_Search";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:3;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:3;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:4;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:6:{s:5:"class";s:12:"wp_subscribe";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:4;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(395, 61, 'zwt_post_network', 'a:2:{i:0;a:2:{s:7:"blog_id";s:1:"1";s:7:"post_id";s:2:"61";}i:1;a:2:{s:7:"blog_id";s:1:"3";s:7:"post_id";i:2;}}'),
(396, 67, '_menu_item_type', 'custom'),
(397, 67, '_menu_item_menu_item_parent', '0'),
(398, 67, '_menu_item_object_id', '67'),
(399, 67, '_menu_item_object', 'custom'),
(400, 67, '_menu_item_target', ''),
(401, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(402, 67, '_menu_item_xfn', ''),
(403, 67, '_menu_item_url', 'http://google.com'),
(404, 67, '_menu_item_orphaned', '1429606261'),
(405, 68, '_menu_item_type', 'custom'),
(406, 68, '_menu_item_menu_item_parent', '0'),
(407, 68, '_menu_item_object_id', '68'),
(408, 68, '_menu_item_object', 'custom'),
(409, 68, '_menu_item_target', ''),
(410, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(411, 68, '_menu_item_xfn', ''),
(412, 68, '_menu_item_url', 'http://google.com'),
(413, 68, '_menu_item_orphaned', '1429606271'),
(414, 69, '_menu_item_type', 'custom'),
(415, 69, '_menu_item_menu_item_parent', '0'),
(416, 69, '_menu_item_object_id', '69'),
(417, 69, '_menu_item_object', 'custom'),
(418, 69, '_menu_item_target', ''),
(419, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(420, 69, '_menu_item_xfn', ''),
(421, 69, '_menu_item_url', 'http://google.com'),
(422, 69, '_menu_item_orphaned', '1429606279'),
(423, 70, '_menu_item_type', 'custom'),
(424, 70, '_menu_item_menu_item_parent', '0'),
(425, 70, '_menu_item_object_id', '70'),
(426, 70, '_menu_item_object', 'custom'),
(427, 70, '_menu_item_target', ''),
(428, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(429, 70, '_menu_item_xfn', ''),
(430, 70, '_menu_item_url', 'http://google.com'),
(432, 71, '_menu_item_type', 'custom'),
(433, 71, '_menu_item_menu_item_parent', '0'),
(434, 71, '_menu_item_object_id', '71'),
(435, 71, '_menu_item_object', 'custom'),
(436, 71, '_menu_item_target', ''),
(437, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(438, 71, '_menu_item_xfn', ''),
(439, 71, '_menu_item_url', 'http://google.com'),
(441, 72, '_menu_item_type', 'custom'),
(442, 72, '_menu_item_menu_item_parent', '0'),
(443, 72, '_menu_item_object_id', '72'),
(444, 72, '_menu_item_object', 'custom'),
(445, 72, '_menu_item_target', ''),
(446, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(447, 72, '_menu_item_xfn', ''),
(448, 72, '_menu_item_url', 'http://google.com'),
(450, 70, '_menu_item_image_size', 'thumbnail'),
(451, 70, '_menu_item_image_title_position', 'after'),
(452, 71, '_menu_item_image_size', 'thumbnail'),
(453, 71, '_menu_item_image_title_position', 'after'),
(454, 72, '_menu_item_image_size', 'thumbnail'),
(455, 72, '_menu_item_image_title_position', 'after'),
(456, 73, '_menu_item_type', 'custom'),
(457, 73, '_menu_item_menu_item_parent', '0'),
(458, 73, '_menu_item_object_id', '73'),
(459, 73, '_menu_item_object', 'custom'),
(460, 73, '_menu_item_target', ''),
(461, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(462, 73, '_menu_item_xfn', ''),
(463, 73, '_menu_item_url', '/'),
(465, 74, '_menu_item_type', 'custom'),
(466, 74, '_menu_item_menu_item_parent', '0'),
(467, 74, '_menu_item_object_id', '74'),
(468, 74, '_menu_item_object', 'custom'),
(469, 74, '_menu_item_target', ''),
(470, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(471, 74, '_menu_item_xfn', ''),
(472, 74, '_menu_item_url', '/gallery'),
(474, 75, '_menu_item_type', 'custom'),
(475, 75, '_menu_item_menu_item_parent', '0'),
(476, 75, '_menu_item_object_id', '75'),
(477, 75, '_menu_item_object', 'custom'),
(478, 75, '_menu_item_target', ''),
(479, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(480, 75, '_menu_item_xfn', ''),
(481, 75, '_menu_item_url', '/store'),
(483, 76, '_menu_item_type', 'custom'),
(484, 76, '_menu_item_menu_item_parent', '0'),
(485, 76, '_menu_item_object_id', '76'),
(486, 76, '_menu_item_object', 'custom'),
(487, 76, '_menu_item_target', ''),
(488, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(489, 76, '_menu_item_xfn', ''),
(490, 76, '_menu_item_url', '/news'),
(492, 77, '_menu_item_type', 'custom'),
(493, 77, '_menu_item_menu_item_parent', '0'),
(494, 77, '_menu_item_object_id', '77'),
(495, 77, '_menu_item_object', 'custom'),
(496, 77, '_menu_item_target', ''),
(497, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(498, 77, '_menu_item_xfn', ''),
(499, 77, '_menu_item_url', '/apps'),
(501, 73, '_menu_item_image_size', 'thumbnail'),
(502, 73, '_menu_item_image_title_position', 'after'),
(503, 74, '_menu_item_image_size', 'thumbnail'),
(504, 74, '_menu_item_image_title_position', 'after'),
(505, 75, '_menu_item_image_size', 'thumbnail'),
(506, 75, '_menu_item_image_title_position', 'after'),
(507, 76, '_menu_item_image_size', 'thumbnail'),
(508, 76, '_menu_item_image_title_position', 'after'),
(509, 77, '_menu_item_image_size', 'thumbnail'),
(510, 77, '_menu_item_image_title_position', 'after'),
(511, 78, '_menu_item_type', 'custom'),
(512, 78, '_menu_item_menu_item_parent', '0'),
(513, 78, '_menu_item_object_id', '78'),
(514, 78, '_menu_item_object', 'custom'),
(515, 78, '_menu_item_target', ''),
(516, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(517, 78, '_menu_item_xfn', ''),
(518, 78, '_menu_item_url', '/media'),
(520, 79, '_menu_item_type', 'custom'),
(521, 79, '_menu_item_menu_item_parent', '0'),
(522, 79, '_menu_item_object_id', '79'),
(523, 79, '_menu_item_object', 'custom'),
(524, 79, '_menu_item_target', ''),
(525, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(526, 79, '_menu_item_xfn', ''),
(527, 79, '_menu_item_url', '/partner'),
(529, 80, '_menu_item_type', 'custom'),
(530, 80, '_menu_item_menu_item_parent', '0'),
(531, 80, '_menu_item_object_id', '80'),
(532, 80, '_menu_item_object', 'custom'),
(533, 80, '_menu_item_target', ''),
(534, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(535, 80, '_menu_item_xfn', ''),
(536, 80, '_menu_item_url', '/developers'),
(538, 81, '_menu_item_type', 'custom'),
(539, 81, '_menu_item_menu_item_parent', '0'),
(540, 81, '_menu_item_object_id', '81'),
(541, 81, '_menu_item_object', 'custom'),
(542, 81, '_menu_item_target', ''),
(543, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(544, 81, '_menu_item_xfn', ''),
(545, 81, '_menu_item_url', '/retailers'),
(547, 78, '_menu_item_image_size', 'thumbnail'),
(548, 78, '_menu_item_image_title_position', 'after'),
(549, 79, '_menu_item_image_size', 'thumbnail'),
(550, 79, '_menu_item_image_title_position', 'after'),
(551, 80, '_menu_item_image_size', 'thumbnail'),
(552, 80, '_menu_item_image_title_position', 'after'),
(553, 81, '_menu_item_image_size', 'thumbnail'),
(554, 81, '_menu_item_image_title_position', 'after'),
(555, 82, '_menu_item_type', 'custom'),
(556, 82, '_menu_item_menu_item_parent', '0'),
(557, 82, '_menu_item_object_id', '82'),
(558, 82, '_menu_item_object', 'custom'),
(559, 82, '_menu_item_target', ''),
(560, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(561, 82, '_menu_item_xfn', ''),
(562, 82, '_menu_item_url', '/faq'),
(564, 83, '_menu_item_type', 'custom'),
(565, 83, '_menu_item_menu_item_parent', '0'),
(566, 83, '_menu_item_object_id', '83'),
(567, 83, '_menu_item_object', 'custom'),
(568, 83, '_menu_item_target', ''),
(569, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(570, 83, '_menu_item_xfn', ''),
(571, 83, '_menu_item_url', '/updates'),
(573, 82, '_menu_item_image_size', 'thumbnail'),
(574, 82, '_menu_item_image_title_position', 'after'),
(575, 83, '_menu_item_image_size', 'thumbnail'),
(576, 83, '_menu_item_image_title_position', 'after'),
(577, 23, 'panels_data', 'a:3:{s:7:"widgets";a:6:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:3:{s:5:"title";s:27:"Subscribe to our Newsletter";s:4:"form";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:16:"WYSIJA_NL_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:2;a:2:{s:5:"title";s:0:"";s:11:"panels_info";a:6:{s:5:"class";s:16:"WP_Widget_Search";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:3;a:3:{s:5:"title";s:15:"Choose Language";s:18:"lang_switcher_type";s:9:"drop_down";s:11:"panels_info";a:5:{s:5:"class";s:24:"Language_Switcher_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:3;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:4;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:4;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:5;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:6:{s:5:"class";s:12:"wp_subscribe";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:5;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(578, 23, 'panels_data', 'a:3:{s:7:"widgets";a:6:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:3:{s:5:"title";s:27:"Subscribe to our Newsletter";s:4:"form";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:16:"WYSIJA_NL_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:2;a:2:{s:5:"title";s:0:"";s:11:"panels_info";a:6:{s:5:"class";s:16:"WP_Widget_Search";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:3;a:3:{s:5:"title";s:15:"Choose Language";s:18:"lang_switcher_type";s:9:"drop_down";s:11:"panels_info";a:5:{s:5:"class";s:24:"Language_Switcher_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:3;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:4;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:4;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:5;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:6:{s:5:"class";s:12:"wp_subscribe";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:5;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(579, 87, 'second_title', 'EXAMPLE TITLE'),
(580, 87, '_second_title', 'field_552d047679371'),
(581, 87, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(582, 87, '_text', 'field_552d03e32943d'),
(583, 87, 'image', '27'),
(584, 87, '_image', 'field_552d03f22943e'),
(585, 87, 'image2', '28'),
(586, 87, '_image2', 'field_552d048479372'),
(587, 87, 'image3', '29'),
(588, 87, '_image3', 'field_552d049879373'),
(589, 87, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(590, 87, '_rel', 'field_552d75aa9bf16'),
(591, 87, 'panels_data', 'a:3:{s:7:"widgets";a:6:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:211:"<p>Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}i:1;a:3:{s:5:"title";s:27:"Subscribe to our Newsletter";s:4:"form";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:16:"WYSIJA_NL_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:2;a:2:{s:5:"title";s:0:"";s:11:"panels_info";a:6:{s:5:"class";s:16:"WP_Widget_Search";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:3;a:3:{s:5:"title";s:15:"Choose Language";s:18:"lang_switcher_type";s:9:"drop_down";s:11:"panels_info";a:5:{s:5:"class";s:24:"Language_Switcher_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:3;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:4;a:6:{s:4:"name";s:11:"Technologie";s:5:"title";s:23:"360 video stabilization";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:67:"http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg";s:11:"description";s:17:"Short description";s:11:"panels_info";a:6:{s:5:"class";s:12:"homep_widget";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:4;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:5;a:15:{s:7:"service";s:9:"mailchimp";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:0:"";s:22:"mailchimp_double_optin";s:1:"0";s:14:"aweber_list_id";s:0:"";s:5:"title";s:56:"Get more stuff like this<br/> <span>in your inbox</span>";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:26:"already_subscribed_message";s:32:"This email is already subscribed";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";s:11:"panels_info";a:6:{s:5:"class";s:12:"wp_subscribe";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:5;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.5;}}}'),
(592, 88, 'second_title', 'EXAMPLE TITLE'),
(593, 88, '_second_title', 'field_552d047679371'),
(594, 88, 'text', 'Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.'),
(595, 88, '_text', 'field_552d03e32943d'),
(596, 88, 'image', '27'),
(597, 88, '_image', 'field_552d03f22943e'),
(598, 88, 'image2', '28'),
(599, 88, '_image2', 'field_552d048479372'),
(600, 88, 'image3', '29'),
(601, 88, '_image3', 'field_552d049879373'),
(602, 88, 'rel', 'a:5:{i:0;s:1:"8";i:1;s:2:"29";i:2;s:1:"5";i:3;s:2:"28";i:4;s:2:"27";}'),
(603, 88, '_rel', 'field_552d75aa9bf16'),
(604, 20, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:6:{s:4:"name";s:8:"New name";s:5:"title";s:9:"New title";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:0:"";s:11:"description";s:17:"Short description";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:3:{s:7:"row_css";s:22:"block full-block white";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(605, 23, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:6:{s:4:"name";s:8:"New name";s:5:"title";s:9:"New title";s:4:"link";s:17:"http://mysite.com";s:9:"image_uri";s:0:"";s:11:"description";s:17:"Short description";s:11:"panels_info";a:5:{s:5:"class";s:12:"homep_widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:3:{s:7:"row_css";s:22:"block full-block white";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(606, 89, '_wp_attached_file', '2015/04/g-eye.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(607, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1071;s:6:"height";i:381;s:4:"file";s:17:"2015/04/g-eye.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"g-eye-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"g-eye-300x107.png";s:5:"width";i:300;s:6:"height";i:107;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:18:"g-eye-1024x364.png";s:5:"width";i:1024;s:6:"height";i:364;s:9:"mime-type";s:9:"image/png";}s:22:"wysija-newsletters-max";a:4:{s:4:"file";s:17:"g-eye-600x213.png";s:5:"width";i:600;s:6:"height";i:213;s:9:"mime-type";s:9:"image/png";}s:10:"menu-24x24";a:4:{s:4:"file";s:14:"g-eye-24x9.png";s:5:"width";i:24;s:6:"height";i:9;s:9:"mime-type";s:9:"image/png";}s:10:"menu-48x48";a:4:{s:4:"file";s:15:"g-eye-48x17.png";s:5:"width";i:48;s:6:"height";i:17;s:9:"mime-type";s:9:"image/png";}s:10:"menu-50x50";a:4:{s:4:"file";s:15:"g-eye-50x18.png";s:5:"width";i:50;s:6:"height";i:18;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(608, 90, '_menu_item_type', 'custom'),
(609, 90, '_menu_item_menu_item_parent', '0'),
(610, 90, '_menu_item_object_id', '90'),
(611, 90, '_menu_item_object', 'custom'),
(612, 90, '_menu_item_target', ''),
(613, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(614, 90, '_menu_item_xfn', ''),
(615, 90, '_menu_item_url', 'http://google.com'),
(617, 91, '_menu_item_type', 'custom'),
(618, 91, '_menu_item_menu_item_parent', '0'),
(619, 91, '_menu_item_object_id', '91'),
(620, 91, '_menu_item_object', 'custom'),
(621, 91, '_menu_item_target', ''),
(622, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(623, 91, '_menu_item_xfn', ''),
(624, 91, '_menu_item_url', 'http://google.com'),
(626, 92, '_menu_item_type', 'custom'),
(627, 92, '_menu_item_menu_item_parent', '0'),
(628, 92, '_menu_item_object_id', '92'),
(629, 92, '_menu_item_object', 'custom'),
(630, 92, '_menu_item_target', ''),
(631, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(632, 92, '_menu_item_xfn', ''),
(633, 92, '_menu_item_url', 'http://google.com'),
(635, 90, '_thumbnail_id', '39'),
(636, 91, '_thumbnail_id', '39'),
(637, 92, '_thumbnail_id', '39'),
(638, 90, '_menu_item_image_size', 'thumbnail'),
(639, 90, '_menu_item_image_title_position', 'before'),
(640, 91, '_menu_item_image_size', 'thumbnail'),
(641, 91, '_menu_item_image_title_position', 'after'),
(642, 92, '_menu_item_image_size', 'thumbnail'),
(643, 92, '_menu_item_image_title_position', 'after'),
(644, 93, '_menu_item_type', 'custom'),
(645, 93, '_menu_item_menu_item_parent', '0'),
(646, 93, '_menu_item_object_id', '93'),
(647, 93, '_menu_item_object', 'custom'),
(648, 93, '_menu_item_target', ''),
(649, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(650, 93, '_menu_item_xfn', ''),
(651, 93, '_menu_item_url', 'http://google.com'),
(653, 94, '_menu_item_type', 'custom'),
(654, 94, '_menu_item_menu_item_parent', '93'),
(655, 94, '_menu_item_object_id', '94'),
(656, 94, '_menu_item_object', 'custom'),
(657, 94, '_menu_item_target', ''),
(658, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(659, 94, '_menu_item_xfn', ''),
(660, 94, '_menu_item_url', 'http://google.com'),
(662, 95, '_menu_item_type', 'custom'),
(663, 95, '_menu_item_menu_item_parent', '93'),
(664, 95, '_menu_item_object_id', '95'),
(665, 95, '_menu_item_object', 'custom'),
(666, 95, '_menu_item_target', ''),
(667, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(668, 95, '_menu_item_xfn', ''),
(669, 95, '_menu_item_url', 'http://google.com'),
(671, 96, '_menu_item_type', 'custom'),
(672, 96, '_menu_item_menu_item_parent', '93'),
(673, 96, '_menu_item_object_id', '96'),
(674, 96, '_menu_item_object', 'custom'),
(675, 96, '_menu_item_target', ''),
(676, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(677, 96, '_menu_item_xfn', ''),
(678, 96, '_menu_item_url', 'http://google.com'),
(680, 93, '_menu_item_image_size', 'thumbnail'),
(681, 93, '_menu_item_image_title_position', 'after'),
(682, 94, '_menu_item_image_size', 'thumbnail'),
(683, 94, '_menu_item_image_title_position', 'after'),
(684, 95, '_menu_item_image_size', 'thumbnail'),
(685, 95, '_menu_item_image_title_position', 'after'),
(686, 96, '_menu_item_image_size', 'thumbnail'),
(687, 96, '_menu_item_image_title_position', 'after'),
(688, 97, '_wp_attached_file', '2015/05/slaid_bg.png'),
(689, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:392;s:6:"height";i:568;s:4:"file";s:20:"2015/05/slaid_bg.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slaid_bg-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"slaid_bg-207x300.png";s:5:"width";i:207;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:10:"menu-24x24";a:4:{s:4:"file";s:18:"slaid_bg-17x24.png";s:5:"width";i:17;s:6:"height";i:24;s:9:"mime-type";s:9:"image/png";}s:10:"menu-48x48";a:4:{s:4:"file";s:18:"slaid_bg-33x48.png";s:5:"width";i:33;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}s:10:"menu-50x50";a:4:{s:4:"file";s:18:"slaid_bg-35x50.png";s:5:"width";i:35;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(690, 98, '_wp_attached_file', '2015/05/stabil.png'),
(691, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:191;s:4:"file";s:18:"2015/05/stabil.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"stabil-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:10:"menu-24x24";a:4:{s:4:"file";s:16:"stabil-24x21.png";s:5:"width";i:24;s:6:"height";i:21;s:9:"mime-type";s:9:"image/png";}s:10:"menu-48x48";a:4:{s:4:"file";s:16:"stabil-48x42.png";s:5:"width";i:48;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}s:10:"menu-50x50";a:4:{s:4:"file";s:16:"stabil-50x44.png";s:5:"width";i:50;s:6:"height";i:44;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(692, 99, '_wp_attached_file', '2015/05/audio.png'),
(693, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:526;s:4:"file";s:17:"2015/05/audio.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"audio-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"audio-300x225.png";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:22:"wysija-newsletters-max";a:4:{s:4:"file";s:17:"audio-600x451.png";s:5:"width";i:600;s:6:"height";i:451;s:9:"mime-type";s:9:"image/png";}s:10:"menu-24x24";a:4:{s:4:"file";s:15:"audio-24x18.png";s:5:"width";i:24;s:6:"height";i:18;s:9:"mime-type";s:9:"image/png";}s:10:"menu-48x48";a:4:{s:4:"file";s:15:"audio-48x36.png";s:5:"width";i:48;s:6:"height";i:36;s:9:"mime-type";s:9:"image/png";}s:10:"menu-50x50";a:4:{s:4:"file";s:15:"audio-50x38.png";s:5:"width";i:50;s:6:"height";i:38;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(694, 100, '_wp_attached_file', '2015/05/develop.png'),
(695, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:516;s:6:"height";i:382;s:4:"file";s:19:"2015/05/develop.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"develop-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"develop-300x222.png";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:9:"image/png";}s:10:"menu-24x24";a:4:{s:4:"file";s:17:"develop-24x18.png";s:5:"width";i:24;s:6:"height";i:18;s:9:"mime-type";s:9:"image/png";}s:10:"menu-48x48";a:4:{s:4:"file";s:17:"develop-48x36.png";s:5:"width";i:48;s:6:"height";i:36;s:9:"mime-type";s:9:"image/png";}s:10:"menu-50x50";a:4:{s:4:"file";s:17:"develop-50x37.png";s:5:"width";i:50;s:6:"height";i:37;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(696, 101, '_wp_attached_file', '2015/05/RandD.png'),
(697, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:234;s:6:"height";i:154;s:4:"file";s:17:"2015/05/RandD.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"RandD-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:10:"menu-24x24";a:4:{s:4:"file";s:15:"RandD-24x16.png";s:5:"width";i:24;s:6:"height";i:16;s:9:"mime-type";s:9:"image/png";}s:10:"menu-48x48";a:4:{s:4:"file";s:15:"RandD-48x32.png";s:5:"width";i:48;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}s:10:"menu-50x50";a:4:{s:4:"file";s:15:"RandD-50x33.png";s:5:"width";i:50;s:6:"height";i:33;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(698, 102, '_wp_attached_file', '2015/05/licensing.png'),
(699, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:891;s:6:"height";i:388;s:4:"file";s:21:"2015/05/licensing.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"licensing-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"licensing-300x131.png";s:5:"width";i:300;s:6:"height";i:131;s:9:"mime-type";s:9:"image/png";}s:22:"wysija-newsletters-max";a:4:{s:4:"file";s:21:"licensing-600x261.png";s:5:"width";i:600;s:6:"height";i:261;s:9:"mime-type";s:9:"image/png";}s:10:"menu-24x24";a:4:{s:4:"file";s:19:"licensing-24x10.png";s:5:"width";i:24;s:6:"height";i:10;s:9:"mime-type";s:9:"image/png";}s:10:"menu-48x48";a:4:{s:4:"file";s:19:"licensing-48x21.png";s:5:"width";i:48;s:6:"height";i:21;s:9:"mime-type";s:9:"image/png";}s:10:"menu-50x50";a:4:{s:4:"file";s:19:"licensing-50x22.png";s:5:"width";i:50;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(700, 103, '_wp_attached_file', '2015/05/first-row.png'),
(701, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:874;s:6:"height";i:790;s:4:"file";s:21:"2015/05/first-row.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"first-row-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"first-row-300x271.png";s:5:"width";i:300;s:6:"height";i:271;s:9:"mime-type";s:9:"image/png";}s:22:"wysija-newsletters-max";a:4:{s:4:"file";s:21:"first-row-600x542.png";s:5:"width";i:600;s:6:"height";i:542;s:9:"mime-type";s:9:"image/png";}s:10:"menu-24x24";a:4:{s:4:"file";s:19:"first-row-24x22.png";s:5:"width";i:24;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";}s:10:"menu-48x48";a:4:{s:4:"file";s:19:"first-row-48x43.png";s:5:"width";i:48;s:6:"height";i:43;s:9:"mime-type";s:9:"image/png";}s:10:"menu-50x50";a:4:{s:4:"file";s:19:"first-row-50x45.png";s:5:"width";i:50;s:6:"height";i:45;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-04-14 07:44:39', '2015-04-14 07:44:39', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-04-14 07:44:39', '2015-04-14 07:44:39', '', 0, 'http://localhost/giroptic/?p=1', 0, 'post', '', 1),
(2, 1, '2015-04-14 07:44:39', '2015-04-14 07:44:39', '&nbsp;\r\n\r\nThis is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/giroptic/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-04-14 09:23:46', '2015-04-14 09:23:46', '', 0, 'http://localhost/giroptic/?page_id=2', 0, 'page', '', 0),
(5, 1, '2015-04-14 08:33:44', '2015-04-14 08:33:44', '', 'IMG_20141117_173449', '', 'inherit', 'open', 'open', '', 'img_20141117_173449', '', '', '2015-04-14 08:33:44', '2015-04-14 08:33:44', '', 2, 'http://localhost/giroptic/wp-content/uploads/2015/04/IMG_20141117_173449.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2015-04-14 08:34:15', '2015-04-14 08:34:15', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/giroptic/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-14 08:34:15', '2015-04-14 08:34:15', '', 2, 'http://localhost/giroptic/?p=6', 0, 'revision', '', 0),
(7, 1, '2015-04-14 08:58:19', '2015-04-14 08:58:19', '<img class="so-widget-image" style="max-width: 100%; height: auto;" src="http://localhost/giroptic/wp-content/uploads/2015/04/360cammiddle.png" alt="" width="538" height="420" />', 'Homepage', '', 'trash', 'open', 'open', '', 'homepage', '', '', '2015-04-14 09:23:46', '2015-04-14 09:23:46', '', 0, 'http://localhost/giroptic/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-04-14 08:57:18', '2015-04-14 08:57:18', '', '360cammiddle', '', 'inherit', 'open', 'open', '', '360cammiddle', '', '', '2015-04-14 08:57:18', '2015-04-14 08:57:18', '', 7, 'http://localhost/giroptic/wp-content/uploads/2015/04/360cammiddle.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2015-04-14 08:58:19', '2015-04-14 08:58:19', '&nbsp;', 'Homepage', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-04-14 08:58:19', '2015-04-14 08:58:19', '', 7, 'http://localhost/giroptic/?p=9', 0, 'revision', '', 0),
(11, 1, '2015-04-14 08:59:24', '2015-04-14 08:59:24', '&nbsp;\r\n\r\nThis is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/giroptic/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-14 08:59:24', '2015-04-14 08:59:24', '', 2, 'http://localhost/giroptic/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-04-14 09:01:19', '2015-04-14 09:01:19', '<img class="so-widget-image" style="max-width: 100%; height: auto;" src="http://localhost/giroptic/wp-content/uploads/2015/04/360cammiddle.png" alt="" width="538" height="420" />', 'Homepage', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-04-14 09:01:19', '2015-04-14 09:01:19', '', 7, 'http://localhost/giroptic/?p=12', 0, 'revision', '', 0),
(15, 1, '2015-04-14 09:13:21', '2015-04-14 09:13:21', '', 'Custom page', '', 'trash', 'open', 'open', '', 'custom-page', '', '', '2015-04-14 09:23:46', '2015-04-14 09:23:46', '', 0, 'http://localhost/giroptic/?page_id=15', 0, 'page', '', 0),
(16, 1, '2015-04-14 09:16:55', '2015-04-14 09:16:55', '', 'Homepage img slider', '', 'trash', 'closed', 'closed', '', 'acf_homepage-img-slider', '', '', '2015-04-14 12:09:23', '2015-04-14 12:09:23', '', 0, 'http://localhost/giroptic/?post_type=acf&#038;p=16', 0, 'acf', '', 0),
(17, 1, '2015-04-14 09:18:13', '2015-04-14 09:18:13', '', 'Homepage', '', 'inherit', 'open', 'open', '', '7-autosave-v1', '', '', '2015-04-14 09:18:13', '2015-04-14 09:18:13', '', 7, 'http://localhost/giroptic/?p=17', 0, 'revision', '', 0),
(19, 1, '2015-04-14 09:23:46', '2015-04-14 09:23:46', '', 'Custom page', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-04-14 09:23:46', '2015-04-14 09:23:46', '', 15, 'http://localhost/giroptic/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-04-14 12:03:46', '2015-04-14 12:03:46', '<b>New name</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">New title</h3>\r\nShort description', 'Hello, we are here to help you.', '', 'publish', 'open', 'open', '', 'hello-we-are-here-to-help-you', '', '', '2015-04-22 15:34:56', '2015-04-22 15:34:56', '', 0, 'http://localhost/giroptic/?page_id=20', 0, 'page', '', 0),
(21, 1, '2015-04-14 11:47:21', '2015-04-14 11:47:21', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-14 11:47:21', '2015-04-14 11:47:21', '', 20, 'http://localhost/giroptic/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-04-14 12:02:10', '2015-04-14 12:02:10', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n<h3 class="widget-title">EXAMPLE TITLE</h3>\r\nGumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-14 12:02:10', '2015-04-14 12:02:10', '', 20, 'http://localhost/giroptic/?p=22', 0, 'revision', '', 0),
(23, 1, '2015-04-22 15:36:37', '2015-04-22 15:36:37', '', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-autosave-v1', '', '', '2015-04-22 15:36:37', '2015-04-22 15:36:37', '', 20, 'http://localhost/giroptic/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-04-14 12:09:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-14 12:09:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/giroptic/?post_type=acf&p=24', 0, 'acf', '', 0),
(25, 1, '2015-04-14 12:11:46', '2015-04-14 12:11:46', '', 'Extra text', '', 'publish', 'closed', 'closed', '', 'acf_extra-text', '', '', '2015-04-14 12:14:50', '2015-04-14 12:14:50', '', 0, 'http://localhost/giroptic/?post_type=acf&#038;p=25', 0, 'acf', '', 0),
(26, 1, '2015-04-14 12:13:20', '2015-04-14 12:13:20', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-14 12:13:20', '2015-04-14 12:13:20', '', 20, 'http://localhost/giroptic/?p=26', 0, 'revision', '', 0),
(27, 1, '2015-04-14 12:15:19', '2015-04-14 12:15:19', '', 'example-photo-c', '', 'inherit', 'open', 'open', '', 'example-photo-c', '', '', '2015-04-14 12:15:19', '2015-04-14 12:15:19', '', 20, 'http://localhost/giroptic/wp-content/uploads/2015/04/example-photo-c.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2015-04-14 12:15:27', '2015-04-14 12:15:27', '', 'example-photo-b', '', 'inherit', 'open', 'open', '', 'example-photo-b', '', '', '2015-04-14 12:15:27', '2015-04-14 12:15:27', '', 20, 'http://localhost/giroptic/wp-content/uploads/2015/04/example-photo-b.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2015-04-14 12:15:34', '2015-04-14 12:15:34', '', 'example-photo-a', '', 'inherit', 'open', 'open', '', 'example-photo-a', '', '', '2015-04-14 12:15:34', '2015-04-14 12:15:34', '', 20, 'http://localhost/giroptic/wp-content/uploads/2015/04/example-photo-a.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2015-04-14 12:17:02', '2015-04-14 12:17:02', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-14 12:17:02', '2015-04-14 12:17:02', '', 20, 'http://localhost/giroptic/?p=30', 0, 'revision', '', 0),
(31, 1, '2015-04-14 20:14:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-14 20:14:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/giroptic/?post_type=acf&p=31', 0, 'acf', '', 0),
(32, 1, '2015-04-14 20:15:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-14 20:15:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/giroptic/?post_type=acf&p=32', 0, 'acf', '', 0),
(33, 1, '2015-04-14 20:16:59', '2015-04-14 20:16:59', '', 'rel', '', 'publish', 'closed', 'closed', '', 'acf_rel', '', '', '2015-04-14 20:16:59', '2015-04-14 20:16:59', '', 0, 'http://localhost/giroptic/?post_type=acf&#038;p=33', 0, 'acf', '', 0),
(34, 1, '2015-04-14 20:17:48', '2015-04-14 20:17:48', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-14 20:17:48', '2015-04-14 20:17:48', '', 20, 'http://localhost/giroptic/?p=34', 0, 'revision', '', 0),
(35, 1, '2015-04-15 07:28:47', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-15 07:28:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/giroptic/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2015-04-15 07:28:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-15 07:28:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/giroptic/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2015-04-15 08:16:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-15 08:16:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/giroptic/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2015-04-15 08:17:14', '2015-04-15 08:17:14', '', 'Home page', '', 'publish', 'open', 'open', '', '38', '', '', '2015-04-21 08:50:30', '2015-04-21 08:50:30', '', 0, 'http://localhost/giroptic/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2015-04-15 08:21:27', '2015-04-15 08:21:27', '', 'menu_image', '', 'inherit', 'open', 'open', '', 'menu_image', '', '', '2015-04-15 08:21:27', '2015-04-15 08:21:27', '', 38, 'http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2015-04-15 13:15:09', '2015-04-15 13:15:09', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n\r\nhttp://mysite.comHello, World!', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-15 13:15:09', '2015-04-15 13:15:09', '', 20, 'http://localhost/giroptic/?p=42', 0, 'revision', '', 0),
(43, 1, '2015-04-16 07:33:27', '2015-04-16 07:33:27', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n\r\narray(3) { ["title"]=&gt; string(8) "My title" ["link"]=&gt; string(17) "http://mysite.com" ["image_uri"]=&gt; string(12) "Upload Image" } http://mysite.com\r\n<h3 class="widget-title">My title</h3>\r\nhttp://UploadImage <img src="http://UploadImage" alt="img" />', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 07:33:27', '2015-04-16 07:33:27', '', 20, 'http://localhost/giroptic/?p=43', 0, 'revision', '', 0),
(44, 1, '2015-04-16 07:35:19', '2015-04-16 07:35:19', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n\r\narray(4) { ["title"]=&gt; string(8) "My title" ["link"]=&gt; string(17) "http://mysite.com" ["image_uri"]=&gt; string(67) "http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" ["image_uri_button"]=&gt; string(12) "Upload Image" } http://mysite.com\r\n<h3 class="widget-title">My title</h3>\r\nhttp://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg <img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 07:35:19', '2015-04-16 07:35:19', '', 20, 'http://localhost/giroptic/?p=44', 0, 'revision', '', 0),
(45, 1, '2015-04-16 08:05:16', '2015-04-16 08:05:16', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n\r\nhttp://mysite.com\r\n<h3 class="widget-title">My title</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" /> Short description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 08:05:16', '2015-04-16 08:05:16', '', 20, 'http://localhost/giroptic/?p=45', 0, 'revision', '', 0),
(46, 1, '2015-04-16 08:17:41', '2015-04-16 08:17:41', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n\r\nTechnologiehttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" /> Short description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 08:17:41', '2015-04-16 08:17:41', '', 20, 'http://localhost/giroptic/?p=46', 0, 'revision', '', 0),
(47, 1, '2015-04-16 08:39:45', '2015-04-16 08:39:45', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n\r\n<b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description\r\n<h4 class="title">Get more stuff like this\r\nin your inbox</h4>\r\n<p class="text">Subscribe to our mailing list and get interesting stuff and updates to your email inbox.</p>\r\n\r\n<form action="http://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow"><input class="email-field" name="email" type="text" value="" placeholder="Enter your email here" /> <input name="uri" type="hidden" value="" /><input name="loc" type="hidden" value="en_US" /> <input class="submit" name="submit" type="submit" value="Sign Up Now" /></form>\r\n<p class="footer-text">we respect your privacy and take protecting it seriously</p>\r\n\r\n<!--subscribe_widget-->&nbsp;', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 08:39:45', '2015-04-16 08:39:45', '', 20, 'http://localhost/giroptic/?p=47', 0, 'revision', '', 0),
(48, 1, '2015-04-16 08:40:09', '2015-04-16 08:40:09', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n\r\n<b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description\r\n<h4 class="title">Get more stuff like this\r\nin your inbox</h4>\r\n<p class="text">Subscribe to our mailing list and get interesting stuff and updates to your email inbox.</p>\r\n\r\n<form action="/giroptic/wp-admin/admin-ajax.php?action=so_panels_import_layout&amp;_panelsnonce=5ab4727a4c&amp;mailchimp_signup=1" method="post"><input class="email-field" name="mailchimp_email" type="text" value="" placeholder="Enter your email here" /> <input class="submit" name="submit" type="submit" value="Sign Up Now" /> <input name="widget_id" type="hidden" value="wp_subscribe-1" /> <input id="_wpnonce" name="_wpnonce" type="hidden" value="fe55bb08c0" /><input name="_wp_http_referer" type="hidden" value="/giroptic/wp-admin/admin-ajax.php?action=so_panels_import_layout&amp;_panelsnonce=5ab4727a4c" /></form>\r\n<p class="footer-text">we respect your privacy and take protecting it seriously</p>\r\n\r\n<!--subscribe_widget-->&nbsp;', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 08:40:09', '2015-04-16 08:40:09', '', 20, 'http://localhost/giroptic/?p=48', 0, 'revision', '', 0),
(49, 1, '2015-04-16 08:54:44', '2015-04-16 08:54:44', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n<h3 class="widget-title">Subscribe</h3>\r\n<form id="frm-subscriptionFrontwidget-0-0-1" action="" method="post"><dl><dt><label class="required" for="frm-email">Your e-mail address</label></dt><dd><input id="frm-email" class="text" name="email" required="" type="text" value="" data-nette-rules="[{&quot;op&quot;:&quot;:filled&quot;,&quot;msg&quot;:&quot;E-mail address is requried.&quot;},{&quot;op&quot;:&quot;:email&quot;,&quot;msg&quot;:&quot;Your e-mail address must be valid.&quot;}]" /></dd><dt></dt><dd><input class="subscribeButton button" name="_submit" type="submit" value="Subscribe" /></dd></dl><input name="_form_" type="hidden" value="subscriptionFrontwidget-0-0-1" /><!-- [if IE]><input type=IEbug disabled style="display:none"><![endif]--></form>\r\n<p style="max-width: 180px; font-size: 10px; display: none;">By signing up, you agree to our <a href="http://www.readygraph.com/tos">Terms of Service</a> and <a href="http://readygraph.com/privacy/">Privacy Policy</a>.</p>\r\n<b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 08:54:44', '2015-04-16 08:54:44', '', 20, 'http://localhost/giroptic/?p=49', 0, 'revision', '', 0),
(50, 1, '2015-04-16 09:00:46', '2015-04-16 09:00:46', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n<h3 class="widget-title">Subscribe2</h3>\r\n[subscribe2 id="home" size="20"]\r\n\r\n<b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 09:00:46', '2015-04-16 09:00:46', '', 20, 'http://localhost/giroptic/?p=50', 0, 'revision', '', 0),
(51, 1, '2015-04-16 09:01:17', '2015-04-16 09:01:17', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n<h3 class="widget-title">Subscribe2</h3>\r\n[subscribe2 hide="unsubscribe" size="20"]\r\n\r\n<b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 09:01:17', '2015-04-16 09:01:17', '', 20, 'http://localhost/giroptic/?p=51', 0, 'revision', '', 0),
(52, 1, '2015-04-16 09:02:03', '2015-04-16 09:02:03', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n<h3 class="widget-title">Subscribe</h3>\r\n[subscribe2 id="home" size="20"]\r\n\r\n<b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 09:02:03', '2015-04-16 09:02:03', '', 20, 'http://localhost/giroptic/?p=52', 0, 'revision', '', 0),
(53, 1, '2015-04-16 09:08:18', '2015-04-16 09:08:18', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n<h3 class="widget-title">Subscribe2</h3>\r\n[subscribe2 id="home" size="10"]\r\n\r\n<b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 09:08:18', '2015-04-16 09:08:18', '', 20, 'http://localhost/giroptic/?p=53', 0, 'revision', '', 0),
(54, 1, '2015-04-16 09:16:53', '2015-04-16 09:16:53', '[wysija_page]', 'Subscription confirmation', '', 'publish', 'open', 'open', '', 'subscriptions', '', '', '2015-04-16 09:16:53', '2015-04-16 09:16:53', '', 0, 'http://localhost/giroptic/?wysijap=subscriptions', 0, 'wysijap', '', 0),
(55, 1, '2015-04-16 09:19:50', '2015-04-16 09:19:50', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n<h3 class="widget-title">Subscribe to our Newsletter</h3>\r\n<form id="form-widget-0-0-1" class="widget_wysija" action="#wysija" method="post">\r\n<p class="wysija-paragraph"><label>Email <span class="wysija-required">*</span></label> <input class="wysija-input validate[required,custom[email]]" title="Email" name="wysija[user][email]" type="text" value="" /> <span class="abs-req"> <input class="wysija-input validated[abs][email]" name="wysija[user][abs][email]" type="text" value="" /> </span></p>\r\n\r\n<input class="wysija-submit wysija-submit-field" type="submit" value="Subscribe!" /> <input name="form_id" type="hidden" value="1" /> <input name="action" type="hidden" value="save" /> <input name="controller" type="hidden" value="subscribers" /> <input name="wysija-page" type="hidden" value="1" /> <input name="wysija[user_list][list_ids]" type="hidden" value="1" /></form><b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 09:19:50', '2015-04-16 09:19:50', '', 20, 'http://localhost/giroptic/?p=55', 0, 'revision', '', 0),
(56, 1, '2015-04-16 09:30:54', '2015-04-16 09:30:54', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n<h3 class="widget-title">Subscribe to our Newsletter</h3>\r\n<form id="form-widget-0-0-1" class="widget_wysija" action="#wysija" method="post">\r\n<p class="wysija-paragraph"><label>Email <span class="wysija-required">*</span></label> <input class="wysija-input validate[required,custom[email]]" title="Email" name="wysija[user][email]" type="text" value="" /> <span class="abs-req"> <input class="wysija-input validated[abs][email]" name="wysija[user][abs][email]" type="text" value="" /> </span></p>\r\n\r\n<input class="wysija-submit wysija-submit-field" type="submit" value="Subscribe!" /> <input name="form_id" type="hidden" value="1" /> <input name="action" type="hidden" value="save" /> <input name="controller" type="hidden" value="subscribers" /> <input name="wysija-page" type="hidden" value="1" /> <input name="wysija[user_list][list_ids]" type="hidden" value="1" /></form><form id="searchform" class="searchform" action="http://localhost/giroptic/" method="get"><label class="screen-reader-text" for="s">Search for:</label> <input id="s" name="s" type="text" value="" /> <input id="searchsubmit" type="submit" value="Search" /></form><b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 09:30:54', '2015-04-16 09:30:54', '', 20, 'http://localhost/giroptic/?p=56', 0, 'revision', '', 0),
(57, 1, '2015-04-16 13:29:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-16 13:29:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/giroptic/?page_id=57', 0, 'page', '', 0),
(58, 1, '2015-04-16 13:30:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-16 13:30:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/giroptic/?page_id=58', 0, 'page', '', 0),
(59, 1, '2015-04-16 13:32:05', '2015-04-16 13:32:05', '', 'Draft created on April 16, 2015 at 1:32 pm', '', 'trash', 'closed', 'closed', '', 'draft-created-on-april-16-2015-at-132-pm', '', '', '2015-04-16 13:39:44', '2015-04-16 13:39:44', '', 0, 'http://localhost/giroptic/?page_id=59', 0, 'page', '', 0),
(60, 1, '2015-04-16 13:32:05', '2015-04-16 13:32:05', '', 'Draft created on April 16, 2015 at 1:32 pm', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-04-16 13:32:05', '2015-04-16 13:32:05', '', 59, 'http://localhost/giroptic/?p=60', 0, 'revision', '', 0),
(61, 1, '2015-04-16 13:37:50', '2015-04-16 13:37:50', 'It''s new template with about page;\r\n\r\n[mc4wp_form]', 'Hello world', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-04-22 08:33:16', '2015-04-22 08:33:16', '', 0, 'http://localhost/giroptic/?page_id=61', 0, 'page', '', 0),
(62, 1, '2015-04-16 13:37:50', '2015-04-16 13:37:50', 'It''s new template with about page;', 'Hello world', '', 'inherit', 'open', 'open', '', '61-revision-v1', '', '', '2015-04-16 13:37:50', '2015-04-16 13:37:50', '', 61, 'http://localhost/giroptic/?p=62', 0, 'revision', '', 0),
(63, 1, '2015-04-16 14:23:23', '2015-04-16 14:23:23', 'Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.\r\n<h3 class="widget-title">Subscribe to our Newsletter</h3>\r\n<form id="form-widget-0-0-1" class="widget_wysija" action="#wysija" method="post">\r\n<p class="wysija-paragraph"><label>Email <span class="wysija-required">*</span></label> <input class="wysija-input validate[required,custom[email]]" title="Email" name="wysija[user][email]" type="text" value="" /> <span class="abs-req"> <input class="wysija-input validated[abs][email]" name="wysija[user][abs][email]" type="text" value="" /> </span></p>\r\n<input class="wysija-submit wysija-submit-field" type="submit" value="Subscribe!" /> <input name="form_id" type="hidden" value="1" /> <input name="action" type="hidden" value="save" /> <input name="controller" type="hidden" value="subscribers" /> <input name="wysija-page" type="hidden" value="1" /> <input name="wysija[user_list][list_ids]" type="hidden" value="1" />\r\n\r\n</form><form id="searchform" class="searchform" action="http://localhost/giroptic/" method="get"><label class="screen-reader-text" for="s">Search for:</label> <input id="s" name="s" type="text" value="" /> <input id="searchsubmit" type="submit" value="Search" /></form><b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-16 14:23:23', '2015-04-16 14:23:23', '', 20, 'http://localhost/giroptic/blog/2015/04/16/20-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-04-17 08:40:26', '2015-04-17 08:40:26', '<h3 class="widget-title">Subscribe to our Newsletter</h3>\r\n<form id="form-widget-0-0-1" class="widget_wysija" action="#wysija" method="post">\r\n<p class="wysija-paragraph"><label>Email <span class="wysija-required">*</span></label> <input class="wysija-input validate[required,custom[email]]" title="Email" name="wysija[user][email]" type="text" value="" /> <span class="abs-req"> <input class="wysija-input validated[abs][email]" name="wysija[user][abs][email]" type="text" value="" /> </span></p>\r\n\r\n<input class="wysija-submit wysija-submit-field" type="submit" value="Subscribe!" /> <input name="form_id" type="hidden" value="1" /> <input name="action" type="hidden" value="save" /> <input name="controller" type="hidden" value="subscribers" /> <input name="wysija-page" type="hidden" value="1" /> <input name="wysija[user_list][list_ids]" type="hidden" value="1" /></form><form id="searchform" class="searchform" action="http://giroptic.local/" method="get"><label class="screen-reader-text" for="s">Search for:</label> <input id="s" name="s" type="text" value="" /> <input id="searchsubmit" type="submit" value="Search" /></form>\r\n<h3 class="widget-title">Choose Language</h3>\r\n<ul>\r\n	<li class="zwt-dropdown"><a class="zwt-dropdown-toggle" href="#"><img class="drop-arrow" src="http://giroptic.local/wp-content/plugins/zanto/images/flags/en_US.png" alt="" /> English</a>\r\n<ul class="zwt-dropdown-menu">\r\n	<li><a href="http://giroptic.local/new" rel="alternate" hreflang="uk"> <img src="http://giroptic.local/wp-content/plugins/zanto/images/flags/uk_UA.png " alt="" /> <span class="zwt_lang_sel_current">Ukrainian</span> </a></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<b>Technologie</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">360 video stabilization</h3>\r\n<img src="http://localhost/giroptic/wp-content/uploads/2015/04/menu_image.jpg" alt="img" />\r\nShort description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-17 08:40:26', '2015-04-17 08:40:26', '', 20, 'http://giroptic.local/blog/2015/04/17/20-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2015-04-21 07:08:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-21 07:08:34', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/?p=66', 0, 'post', '', 0),
(67, 1, '2015-04-21 08:51:00', '0000-00-00 00:00:00', '', 'More about GIROPTIC', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-21 08:51:00', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/?p=67', 1, 'nav_menu_item', '', 0),
(68, 1, '2015-04-21 08:51:11', '0000-00-00 00:00:00', '', 'Contact us', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-21 08:51:11', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/?p=68', 1, 'nav_menu_item', '', 0),
(69, 1, '2015-04-21 08:51:19', '0000-00-00 00:00:00', '', 'Jobs', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-21 08:51:19', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2015-04-21 08:52:02', '2015-04-21 08:52:02', '', 'More about GIROPTIC', '', 'publish', 'open', 'open', '', 'more-about-giroptic', '', '', '2015-04-21 08:52:02', '2015-04-21 08:52:02', '', 0, 'http://giroptic.local/?p=70', 1, 'nav_menu_item', '', 0),
(71, 1, '2015-04-21 08:52:02', '2015-04-21 08:52:02', '', 'Contact us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2015-04-21 08:52:02', '2015-04-21 08:52:02', '', 0, 'http://giroptic.local/?p=71', 2, 'nav_menu_item', '', 0),
(72, 1, '2015-04-21 08:52:02', '2015-04-21 08:52:02', '', 'Jobs', '', 'publish', 'open', 'open', '', 'jobs', '', '', '2015-04-21 08:52:02', '2015-04-21 08:52:02', '', 0, 'http://giroptic.local/?p=72', 3, 'nav_menu_item', '', 0),
(73, 1, '2015-04-21 08:56:29', '2015-04-21 08:56:29', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-04-21 08:56:29', '2015-04-21 08:56:29', '', 0, 'http://giroptic.local/?p=73', 1, 'nav_menu_item', '', 0),
(74, 1, '2015-04-21 08:56:29', '2015-04-21 08:56:29', '', 'Gallery', '', 'publish', 'open', 'open', '', 'gallery', '', '', '2015-04-21 08:56:29', '2015-04-21 08:56:29', '', 0, 'http://giroptic.local/?p=74', 2, 'nav_menu_item', '', 0),
(75, 1, '2015-04-21 08:56:29', '2015-04-21 08:56:29', '', 'Store', '', 'publish', 'open', 'open', '', 'store', '', '', '2015-04-21 08:56:29', '2015-04-21 08:56:29', '', 0, 'http://giroptic.local/?p=75', 3, 'nav_menu_item', '', 0),
(76, 1, '2015-04-21 08:56:29', '2015-04-21 08:56:29', '', 'News', '', 'publish', 'open', 'open', '', 'news', '', '', '2015-04-21 08:56:29', '2015-04-21 08:56:29', '', 0, 'http://giroptic.local/?p=76', 4, 'nav_menu_item', '', 0),
(77, 1, '2015-04-21 08:56:29', '2015-04-21 08:56:29', '', 'Apps', '', 'publish', 'open', 'open', '', 'apps', '', '', '2015-04-21 08:56:29', '2015-04-21 08:56:29', '', 0, 'http://giroptic.local/?p=77', 5, 'nav_menu_item', '', 0),
(78, 1, '2015-04-21 08:59:56', '2015-04-21 08:59:56', '', 'Press & Media', '', 'publish', 'open', 'open', '', 'press-media', '', '', '2015-04-21 08:59:56', '2015-04-21 08:59:56', '', 0, 'http://giroptic.local/?p=78', 1, 'nav_menu_item', '', 0),
(79, 1, '2015-04-21 08:59:56', '2015-04-21 08:59:56', '', 'Content Producers & Partners', '', 'publish', 'open', 'open', '', 'content-producers-partners', '', '', '2015-04-21 08:59:56', '2015-04-21 08:59:56', '', 0, 'http://giroptic.local/?p=79', 2, 'nav_menu_item', '', 0),
(80, 1, '2015-04-21 08:59:56', '2015-04-21 08:59:56', '', 'Developers', '', 'publish', 'open', 'open', '', 'developers', '', '', '2015-04-21 08:59:56', '2015-04-21 08:59:56', '', 0, 'http://giroptic.local/?p=80', 3, 'nav_menu_item', '', 0),
(81, 1, '2015-04-21 08:59:56', '2015-04-21 08:59:56', '', 'Distributors & Retailers', '', 'publish', 'open', 'open', '', 'distributors-retailers', '', '', '2015-04-21 08:59:56', '2015-04-21 08:59:56', '', 0, 'http://giroptic.local/?p=81', 4, 'nav_menu_item', '', 0),
(82, 1, '2015-04-21 09:07:05', '2015-04-21 09:07:05', '', 'FAQ & Contact', '', 'publish', 'open', 'open', '', 'faq-contact', '', '', '2015-04-21 09:07:17', '2015-04-21 09:07:17', '', 0, 'http://giroptic.local/?p=82', 1, 'nav_menu_item', '', 0),
(83, 1, '2015-04-21 09:07:05', '2015-04-21 09:07:05', '', 'Camera updates', '', 'publish', 'open', 'open', '', 'camera-updates', '', '', '2015-04-21 09:07:17', '2015-04-21 09:07:17', '', 0, 'http://giroptic.local/?p=83', 2, 'nav_menu_item', '', 0),
(84, 1, '2015-04-21 14:02:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-21 14:02:14', '0000-00-00 00:00:00', '', 0, 'http://giroptic.local/?page_id=84', 0, 'page', '', 0),
(85, 1, '2015-04-22 08:33:16', '2015-04-22 08:33:16', 'It''s new template with about page;\r\n\r\n[mc4wp_form]', 'Hello world', '', 'inherit', 'open', 'open', '', '61-revision-v1', '', '', '2015-04-22 08:33:16', '2015-04-22 08:33:16', '', 61, 'http://giroptic.tv/blog/2015/04/22/61-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-04-22 15:34:10', '2015-04-22 15:34:10', '', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-22 15:34:10', '2015-04-22 15:34:10', '', 20, 'http://giroptic.tv/blog/2015/04/22/20-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2015-04-22 15:34:56', '2015-04-22 15:34:56', '<b>New name</b>\r\nhttp://mysite.com\r\n<h3 class="widget-title">New title</h3>\r\nShort description', 'Hello, we are here to help you.', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-22 15:34:56', '2015-04-22 15:34:56', '', 20, 'http://giroptic.tv/blog/2015/04/22/20-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2015-04-29 08:13:27', '2015-04-29 08:13:27', '', 'g-eye', '', 'inherit', 'open', 'open', '', 'g-eye', '', '', '2015-04-29 08:13:27', '2015-04-29 08:13:27', '', 0, 'http://giroptic.tv/wp-content/uploads/2015/04/g-eye.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2015-05-04 09:48:41', '2015-05-04 09:48:41', '', 'SPECIALIZING IN 360°  IMMERSIVE SOLUTIONS', '', 'publish', 'open', 'open', '', 'specializing-in-360-immersive-solutions', '', '', '2015-05-04 10:04:50', '2015-05-04 10:04:50', '', 0, 'http://giroptic.tv/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2015-05-04 09:48:41', '2015-05-04 09:48:41', '', 'CES LAS VEGAS 2015', '', 'publish', 'open', 'open', '', 'ces-las-vegas-2015', '', '', '2015-05-04 10:04:50', '2015-05-04 10:04:50', '', 0, 'http://giroptic.tv/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2015-05-04 09:48:41', '2015-05-04 09:48:41', '', 'OUR EXPERTISE', '', 'publish', 'open', 'open', '', 'our-expertise', '', '', '2015-05-04 10:04:50', '2015-05-04 10:04:50', '', 0, 'http://giroptic.tv/?p=92', 3, 'nav_menu_item', '', 0),
(93, 1, '2015-05-04 10:06:21', '2015-05-04 10:06:21', '', 'TECHNOLOGIE', '', 'publish', 'open', 'open', '', 'technologie', '', '', '2015-05-04 10:08:05', '2015-05-04 10:08:05', '', 0, 'http://giroptic.tv/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2015-05-04 10:06:21', '2015-05-04 10:06:21', '', '360 VST', '', 'publish', 'open', 'open', '', '360-vst', '', '', '2015-05-04 10:08:05', '2015-05-04 10:08:05', '', 0, 'http://giroptic.tv/?p=94', 2, 'nav_menu_item', '', 0),
(95, 1, '2015-05-04 10:06:21', '2015-05-04 10:06:21', '', 'IMAGE STAB', '', 'publish', 'open', 'open', '', 'image-stab', '', '', '2015-05-04 10:08:05', '2015-05-04 10:08:05', '', 0, 'http://giroptic.tv/?p=95', 3, 'nav_menu_item', '', 0),
(96, 1, '2015-05-04 10:06:22', '2015-05-04 10:06:22', '', 'IMMERSIVE SOUND', '', 'publish', 'open', 'open', '', 'immersive-sound', '', '', '2015-05-04 10:08:05', '2015-05-04 10:08:05', '', 0, 'http://giroptic.tv/?p=96', 4, 'nav_menu_item', '', 0),
(97, 1, '2015-05-05 05:58:47', '2015-05-05 05:58:47', '', 'slaid_bg', '', 'inherit', 'open', 'open', '', 'slaid_bg', '', '', '2015-05-05 05:58:47', '2015-05-05 05:58:47', '', 0, 'http://giroptic.tv/wp-content/uploads/2015/05/slaid_bg.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2015-05-05 06:01:57', '2015-05-05 06:01:57', '', 'stabil', '', 'inherit', 'open', 'open', '', 'stabil', '', '', '2015-05-05 06:01:57', '2015-05-05 06:01:57', '', 0, 'http://giroptic.tv/wp-content/uploads/2015/05/stabil.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2015-05-05 07:19:43', '2015-05-05 07:19:43', '', 'audio', '', 'inherit', 'open', 'open', '', 'audio', '', '', '2015-05-05 07:19:43', '2015-05-05 07:19:43', '', 0, 'http://giroptic.tv/wp-content/uploads/2015/05/audio.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2015-05-05 07:24:43', '2015-05-05 07:24:43', '', 'develop', '', 'inherit', 'open', 'open', '', 'develop', '', '', '2015-05-05 07:24:43', '2015-05-05 07:24:43', '', 0, 'http://giroptic.tv/wp-content/uploads/2015/05/develop.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2015-05-05 07:27:09', '2015-05-05 07:27:09', '', 'RandD', '', 'inherit', 'open', 'open', '', 'randd', '', '', '2015-05-05 07:27:09', '2015-05-05 07:27:09', '', 0, 'http://giroptic.tv/wp-content/uploads/2015/05/RandD.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2015-05-05 07:30:24', '2015-05-05 07:30:24', '', 'licensing', '', 'inherit', 'open', 'open', '', 'licensing', '', '', '2015-05-05 07:30:24', '2015-05-05 07:30:24', '', 0, 'http://giroptic.tv/wp-content/uploads/2015/05/licensing.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2015-05-05 07:32:58', '2015-05-05 07:32:58', '', 'first-row', '', 'inherit', 'open', 'open', '', 'first-row', '', '', '2015-05-05 07:32:58', '2015-05-05 07:32:58', '', 0, 'http://giroptic.tv/wp-content/uploads/2015/05/first-row.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_registration_log`
--

CREATE TABLE IF NOT EXISTS `wp_registration_log` (
`ID` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `IP` varchar(30) NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_registration_log`
--

INSERT INTO `wp_registration_log` (`ID`, `email`, `IP`, `blog_id`, `date_registered`) VALUES
(1, 'admin@admin.com', '127.0.0.1', 2, '2015-04-16 14:25:01'),
(2, 'admin@admin.com', '127.0.0.1', 3, '2015-04-17 07:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `wp_signups`
--

CREATE TABLE IF NOT EXISTS `wp_signups` (
`signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  `title` longtext NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) NOT NULL DEFAULT '',
  `meta` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_site`
--

CREATE TABLE IF NOT EXISTS `wp_site` (
`id` bigint(20) NOT NULL,
  `domain` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_site`
--

INSERT INTO `wp_site` (`id`, `domain`, `path`) VALUES
(1, 'giroptic.tv', '/');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sitemeta`
--

CREATE TABLE IF NOT EXISTS `wp_sitemeta` (
`meta_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_sitemeta`
--

INSERT INTO `wp_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'site_name', 'Giroptic Sites'),
(2, 1, 'admin_email', ''),
(3, 1, 'admin_user_id', ''),
(4, 1, 'registration', 'none'),
(5, 1, 'upload_filetypes', 'jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg wma m4a wav mp4 m4v webm ogv wmv flv'),
(6, 1, 'blog_upload_space', '100'),
(7, 1, 'fileupload_maxk', '1500'),
(8, 1, 'site_admins', 'a:2:{i:0;N;i:1;s:5:"admin";}'),
(9, 1, 'allowedthemes', 'a:3:{s:13:"twentyfifteen";b:1;s:10:"zerif-lite";b:1;s:8:"giroptic";b:1;}'),
(10, 1, 'illegal_names', 'a:9:{i:0;s:3:"www";i:1;s:3:"web";i:2;s:4:"root";i:3;s:5:"admin";i:4;s:4:"main";i:5;s:6:"invite";i:6;s:13:"administrator";i:7;s:5:"files";i:8;s:4:"blog";}'),
(11, 1, 'wpmu_upgrade_site', '31533'),
(12, 1, 'welcome_email', 'Dear User,\n\nYour new SITE_NAME site has been successfully set up at:\nBLOG_URL\n\nYou can log in to the administrator account with the following information:\n\nUsername: USERNAME\nPassword: PASSWORD\nLog in here: BLOG_URLwp-login.php\n\nWe hope you enjoy your new site. Thanks!\n\n--The Team @ SITE_NAME'),
(13, 1, 'first_post', 'Welcome to <a href="SITE_URL">SITE_NAME</a>. This is your first post. Edit or delete it, then start blogging!'),
(14, 1, 'siteurl', 'http://giroptic.tv'),
(15, 1, 'add_new_users', '0'),
(16, 1, 'upload_space_check_disabled', '1'),
(17, 1, 'subdomain_install', '0'),
(18, 1, 'global_terms_enabled', '0'),
(19, 1, 'ms_files_rewriting', '0'),
(20, 1, 'initial_db_version', '30133'),
(21, 1, 'active_sitewide_plugins', 'a:6:{s:39:"siteorigin-panels/siteorigin-panels.php";i:1429255724;s:25:"menu-image/menu-image.php";i:1429255726;s:28:"wysija-newsletters/index.php";i:1429255727;s:30:"advanced-custom-fields/acf.php";i:1429255732;s:46:"wordpress-mu-domain-mapping/domain_mapping.php";i:1429258552;s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:1429689565;}'),
(22, 1, 'WPLANG', 'en_US'),
(30, 1, 'user_count', '3'),
(31, 1, 'blog_count', '2'),
(32, 1, 'can_compress_scripts', '0'),
(37, 1, 'registrationnotification', 'yes'),
(38, 1, 'welcome_user_email', 'Dear User,\n\nYour new account is set up.\n\nYou can log in with the following information:\nUsername: USERNAME\nPassword: PASSWORD\nLOGINLINK\n\nThanks!\n\n--The Team @ SITE_NAME'),
(46, 1, 'dm_hash', '869e95dccf66973344a7015e6a2ec814'),
(47, 1, 'dm_remote_login', '1'),
(48, 1, 'dm_redirect_admin', '1'),
(49, 1, 'dm_user_settings', '1'),
(50, 1, 'dm_ipaddress', ''),
(51, 1, 'dm_cname', ''),
(52, 1, 'dm_301_redirect', '0'),
(53, 1, 'dm_no_primary_domain', '0'),
(56, 1, 'zwt_zanto_settings', 'a:1:{s:21:"zwt_installed_version";s:5:"0.3.4";}'),
(58, 1, 'zwt_1_site_cache', 'a:2:{i:1;a:3:{s:8:"site_url";s:18:"http://giroptic.tv";s:9:"admin_url";s:28:"http://giroptic.tv/wp-admin/";s:15:"lang_url_format";i:0;}i:3;a:3:{s:8:"site_url";s:22:"http://giroptic.tv/new";s:9:"admin_url";s:32:"http://giroptic.tv/new/wp-admin/";s:15:"lang_url_format";i:0;}}'),
(59, 1, 'zwt_1_network_vars', 'a:1:{s:14:"main_lang_blog";s:1:"1";}'),
(60, 1, 'zwt_locale_settings', 'a:2:{s:10:"wp_version";s:5:"4.1.1";s:21:"last_time_download_mo";i:1429259638;}'),
(73, 1, '_site_transient_timeout_available_translations', '1429625789'),
(74, 1, '_site_transient_available_translations', 'a:55:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-01 13:21:43";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:15:41";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:19:26";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:22:49";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:24:48";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:30:22";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:32:23";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:38:25";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:34:24";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-15 12:48:44";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:44:26";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:46:15";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:42:35";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:48:12";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:54:32";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:56:31";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:50:12";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 08:55:29";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:03:17";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-18 08:12:21";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:08:29";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:14:57";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.1/haz.zip";s:3:"iso";a:2:{i:1;s:3:"haz";i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-08 22:28:26";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:25:25";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:27:28";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:29:34";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-15 22:23:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:33:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:35:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-20 11:48:55";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:47:56";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:7:"Burmese";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:59:41";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:02:30";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-16 06:38:46";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:07:08";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:11:07";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:14:41";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 14:48:56";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:19:48";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:23:44";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-20 08:33:09";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:30:35";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:33:33";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 00:00:51";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:43:10";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-10 12:55:55";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:55:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-26 02:21:02";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}'),
(77, 1, 'ms_wysija', 'YToxNzp7czoxOToibXNfd3lzaWphX3doYXRzX25ldyI7czo2OiIyLjYuMTUiO3M6MTc6Im1zX3NlbmRpbmdfY29uZmlnIjtzOjg6Im9uZS1lYWNoIjtzOjI5OiJtc19hbGxvd19hZG1pbl9zZW5kaW5nX21ldGhvZCI7aToxO3M6NDE6Im1zX2FsbG93X2FkbWluX3RvZ2dsZV9zaWdudXBfY29uZmlybWF0aW9uIjtpOjE7czoxNzoibXNfc2VuZGluZ19tZXRob2QiO3M6NDoic2l0ZSI7czoxMzoibXNfZnJvbV9lbWFpbCI7czoxOToiaW5mb0BnaXJvcHRpYy5sb2NhbCI7czoyOToibXNfc2VuZGluZ19lbWFpbHNfc2l0ZV9tZXRob2QiO3M6NzoicGhwbWFpbCI7czoxMjoibXNfc210cF9ob3N0IjtzOjA6IiI7czoxMzoibXNfc210cF9sb2dpbiI7czowOiIiO3M6MTY6Im1zX3NtdHBfcGFzc3dvcmQiO3M6MDoiIjtzOjEyOiJtc19zbXRwX3BvcnQiO3M6MjoiMjUiO3M6MTQ6Im1zX3NtdHBfc2VjdXJlIjtzOjE6IjAiO3M6MTI6Im1zX3NtdHBfYXV0aCI7czowOiIiO3M6MjQ6Im1zX3NlbmRpbmdfZW1haWxzX251bWJlciI7czozOiIxMDAiO3M6MjI6Im1zX3NlbmRpbmdfZW1haWxzX2VhY2giO3M6NjoiaG91cmx5IjtzOjIyOiJtc19ib3VuY2VfcHJvY2Vzc19hdXRvIjtiOjA7czoxMjoibXNfc210cF9yZXN0IjtiOjA7fQ=='),
(95, 1, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1429804251'),
(96, 1, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5134";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3220";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3147";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2669";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2462";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1975";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1854";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1809";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1756";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1743";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1701";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1696";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1589";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1381";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1338";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1267";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1196";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1131";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1129";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"990";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"954";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"918";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"873";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"866";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"852";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"837";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"796";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"772";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"744";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"727";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"717";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"706";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"680";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"678";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"669";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"659";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"638";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"629";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"627";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"624";}}'),
(100, 1, '_site_transient_timeout_browser_9d08bde512457e99780f33c647af54b4', '1430403665'),
(101, 1, '_site_transient_browser_9d08bde512457e99780f33c647af54b4', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"42.0.2311.90";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}'),
(113, 1, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1430804729;s:7:"checked";a:11:{s:30:"advanced-custom-fields/acf.php";s:5:"4.4.1";s:19:"akismet/akismet.php";s:5:"3.1.1";s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:5:"2.2.3";s:37:"mailchimp-for-wp/mailchimp-for-wp.php";s:5:"2.2.9";s:28:"wysija-newsletters/index.php";s:6:"2.6.15";s:25:"menu-image/menu-image.php";s:3:"2.4";s:39:"siteorigin-panels/siteorigin-panels.php";s:5:"2.1.2";s:39:"so-widgets-bundle/so-widgets-bundle.php";s:5:"1.2.2";s:41:"widget-image-field/widget-image-field.php";s:3:"0.3";s:46:"wordpress-mu-domain-mapping/domain_mapping.php";s:7:"0.5.5.1";s:15:"zanto/zanto.php";s:5:"0.3.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:11:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";O:8:"stdClass":7:{s:2:"id";s:5:"27008";s:4:"slug";s:27:"black-studio-tinymce-widget";s:6:"plugin";s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:11:"new_version";s:5:"2.2.3";s:3:"url";s:58:"https://wordpress.org/plugins/black-studio-tinymce-widget/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/black-studio-tinymce-widget.2.2.3.zip";s:14:"upgrade_notice";s:124:"Version 2.x is a major update. If you are upgrading from version 1.x please ensure to backup your database before upgrading.";}s:37:"mailchimp-for-wp/mailchimp-for-wp.php";O:8:"stdClass":7:{s:2:"id";s:5:"41550";s:4:"slug";s:16:"mailchimp-for-wp";s:6:"plugin";s:37:"mailchimp-for-wp/mailchimp-for-wp.php";s:11:"new_version";s:5:"2.2.9";s:3:"url";s:47:"https://wordpress.org/plugins/mailchimp-for-wp/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/mailchimp-for-wp.2.2.9.zip";s:14:"upgrade_notice";s:52:"Updated Italian, Russian &amp; Turkish translations.";}s:28:"wysija-newsletters/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"27505";s:4:"slug";s:18:"wysija-newsletters";s:6:"plugin";s:28:"wysija-newsletters/index.php";s:11:"new_version";s:6:"2.6.15";s:3:"url";s:49:"https://wordpress.org/plugins/wysija-newsletters/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/wysija-newsletters.2.6.15.zip";}s:25:"menu-image/menu-image.php";O:8:"stdClass":7:{s:2:"id";s:5:"41062";s:4:"slug";s:10:"menu-image";s:6:"plugin";s:25:"menu-image/menu-image.php";s:11:"new_version";s:3:"2.4";s:3:"url";s:41:"https://wordpress.org/plugins/menu-image/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/menu-image.2.4.zip";s:14:"upgrade_notice";s:73:"If your are using Jetpack Phonon module now menu icons will be look good.";}s:39:"siteorigin-panels/siteorigin-panels.php";O:8:"stdClass":6:{s:2:"id";s:5:"40030";s:4:"slug";s:17:"siteorigin-panels";s:6:"plugin";s:39:"siteorigin-panels/siteorigin-panels.php";s:11:"new_version";s:5:"2.1.2";s:3:"url";s:48:"https://wordpress.org/plugins/siteorigin-panels/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/siteorigin-panels.2.1.2.zip";}s:39:"so-widgets-bundle/so-widgets-bundle.php";O:8:"stdClass":6:{s:2:"id";s:5:"50709";s:4:"slug";s:17:"so-widgets-bundle";s:6:"plugin";s:39:"so-widgets-bundle/so-widgets-bundle.php";s:11:"new_version";s:5:"1.2.2";s:3:"url";s:48:"https://wordpress.org/plugins/so-widgets-bundle/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/so-widgets-bundle.1.2.2.zip";}s:41:"widget-image-field/widget-image-field.php";O:8:"stdClass":6:{s:2:"id";s:5:"28976";s:4:"slug";s:18:"widget-image-field";s:6:"plugin";s:41:"widget-image-field/widget-image-field.php";s:11:"new_version";s:3:"0.3";s:3:"url";s:49:"https://wordpress.org/plugins/widget-image-field/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/widget-image-field.0.3.zip";}s:46:"wordpress-mu-domain-mapping/domain_mapping.php";O:8:"stdClass":7:{s:2:"id";s:4:"4313";s:4:"slug";s:27:"wordpress-mu-domain-mapping";s:6:"plugin";s:46:"wordpress-mu-domain-mapping/domain_mapping.php";s:11:"new_version";s:7:"0.5.5.1";s:3:"url";s:58:"https://wordpress.org/plugins/wordpress-mu-domain-mapping/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/wordpress-mu-domain-mapping.0.5.5.1.zip";s:14:"upgrade_notice";s:36:"revert to 0.5.4.3 domain_mapping.php";}s:15:"zanto/zanto.php";O:8:"stdClass":7:{s:2:"id";s:5:"46232";s:4:"slug";s:5:"zanto";s:6:"plugin";s:15:"zanto/zanto.php";s:11:"new_version";s:5:"0.3.4";s:3:"url";s:36:"https://wordpress.org/plugins/zanto/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/zanto.0.3.4.zip";s:14:"upgrade_notice";s:32:"A couple of Bug fixes from 0.3.3";}}}'),
(114, 1, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1430803873;s:7:"checked";a:2:{s:8:"giroptic";s:3:"1.0";s:10:"zerif-lite";s:5:"1.7.3";}s:8:"response";a:1:{s:10:"zerif-lite";a:4:{s:5:"theme";s:10:"zerif-lite";s:11:"new_version";s:5:"1.7.6";s:3:"url";s:40:"https://wordpress.org/themes/zerif-lite/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/zerif-lite.1.7.6.zip";}}s:12:"translations";a:0:{}}'),
(118, 1, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.1";s:7:"version";s:5:"4.2.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1430803871;s:15:"version_checked";s:5:"4.2.1";s:12:"translations";a:0:{}}'),
(131, 1, '_site_transient_timeout_browser_bd2b6a13884c72a7835f7a9f43b40a4b', '1431325738'),
(132, 1, '_site_transient_browser_bd2b6a13884c72a7835f7a9f43b40a4b', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"42.0.2311.135";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}'),
(143, 1, '_site_transient_timeout_theme_roots', '1430813273'),
(144, 1, '_site_transient_theme_roots', 'a:2:{s:8:"giroptic";s:7:"/themes";s:10:"zerif-lite";s:7:"/themes";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'Default footer menu', 'default-footer-menu', 0),
(4, 'Footer Site Map', 'footer-site-map', 0),
(5, 'Footer Professionals Menu', 'footer-professionals-menu', 0),
(6, 'Footer Support menu', 'footer-support-menu', 0),
(7, 'Front page menu', 'front-page-menu', 0),
(8, 'Header menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(38, 2, 0),
(70, 3, 0),
(71, 3, 0),
(72, 3, 0),
(73, 4, 0),
(74, 4, 0),
(75, 4, 0),
(76, 4, 0),
(77, 4, 0),
(78, 5, 0),
(79, 5, 0),
(80, 5, 0),
(81, 5, 0),
(82, 6, 0),
(83, 6, 0),
(90, 7, 0),
(91, 7, 0),
(92, 7, 0),
(93, 8, 0),
(94, 8, 0),
(95, 8, 0),
(96, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'nav_menu', '', 0, 2),
(7, 7, 'nav_menu', '', 0, 3),
(8, 8, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw,black_studio_tinymce_widget'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"036d401c99528b98b71c928ea69b761c25a4a83b9c1eb045610094a73726e5e6";a:4:{s:10:"expiration";i:1430893734;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1430720934;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '66'),
(16, 1, 'wp_user-settings', 'hidetb=1&libraryContent=browse&siteorigin_panels_setting_tab=general&editor=tinymce&editor_expand=on'),
(17, 1, 'wp_user-settings-time', '1429191365'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(20, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 's2_authors', ''),
(25, 1, 'wysija_pref', 'YTowOnt9'),
(26, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:23:"submitdiv,pageparentdiv";s:6:"normal";s:59:"acf_25,acf_33,postcustom,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_page', '2'),
(28, 1, 'closedpostboxes_page', 'a:2:{i:0;s:10:"postcustom";i:1;s:12:"revisionsdiv";}'),
(29, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";i:4;s:12:"revisionsdiv";}'),
(30, 1, 'primary_blog', '1'),
(31, 2, 'nickname', 'new'),
(32, 2, 'first_name', ''),
(33, 2, 'last_name', ''),
(34, 2, 'description', ''),
(35, 2, 'rich_editing', 'true'),
(36, 2, 'comment_shortcuts', 'false'),
(37, 2, 'admin_color', 'fresh'),
(38, 2, 'use_ssl', '0'),
(39, 2, 'show_admin_bar_front', 'true'),
(42, 2, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(43, 2, 'show_welcome_panel', '2'),
(44, 2, 'primary_blog', '3'),
(45, 2, 'source_domain', 'giroptic.local'),
(48, 2, 'wp_3_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(49, 2, 'wp_3_user_level', '10'),
(50, 3, 'nickname', 'old'),
(51, 3, 'first_name', ''),
(52, 3, 'last_name', ''),
(53, 3, 'description', ''),
(54, 3, 'rich_editing', 'true'),
(55, 3, 'comment_shortcuts', 'false'),
(56, 3, 'admin_color', 'fresh'),
(57, 3, 'use_ssl', '0'),
(58, 3, 'show_admin_bar_front', 'true'),
(61, 3, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(62, 3, 'primary_blog', ''),
(63, 3, 'source_domain', ''),
(66, 1, 'zwt_installed_transnetwork', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, 'admin', '$P$B2oOAZQlOEaTwORebRVrPcSDn0wuTH0', 'admin', 'lapchuk.ol@gmail.com', '', '2015-04-14 07:44:38', '', 0, 'admin', 0, 0),
(2, 'new', '$P$BuPOJW6CzrrkZK75ZfDakMMAbenOYK.', 'new', 'admin@admin.com', '', '2015-04-16 14:24:59', '', 0, 'new', 0, 0),
(3, 'old', '$P$BFWASLUjo/V9DtN4EKV5A5ucB8qBvU0', 'old', 'old@mail.com', '', '2015-04-17 07:12:33', '', 0, 'old', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_campaign`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_campaign` (
`campaign_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_campaign`
--

INSERT INTO `wp_wysija_campaign` (`campaign_id`, `name`, `description`) VALUES
(1, '5 Minute User Guide', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_campaign_list`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_campaign_list` (
  `list_id` int(10) unsigned NOT NULL,
  `campaign_id` int(10) unsigned NOT NULL,
  `filter` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_campaign_list`
--

INSERT INTO `wp_wysija_campaign_list` (`list_id`, `campaign_id`, `filter`) VALUES
(1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_custom_field`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_custom_field` (
`id` mediumint(9) NOT NULL,
  `name` tinytext NOT NULL,
  `type` tinytext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_email` (
`email_id` int(10) unsigned NOT NULL,
  `campaign_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `body` longtext,
  `created_at` int(10) unsigned DEFAULT NULL,
  `modified_at` int(10) unsigned DEFAULT NULL,
  `sent_at` int(10) unsigned DEFAULT NULL,
  `from_email` varchar(250) DEFAULT NULL,
  `from_name` varchar(250) DEFAULT NULL,
  `replyto_email` varchar(250) DEFAULT NULL,
  `replyto_name` varchar(250) DEFAULT NULL,
  `attachments` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `number_sent` int(10) unsigned NOT NULL DEFAULT '0',
  `number_opened` int(10) unsigned NOT NULL DEFAULT '0',
  `number_clicked` int(10) unsigned NOT NULL DEFAULT '0',
  `number_unsub` int(10) unsigned NOT NULL DEFAULT '0',
  `number_bounce` int(10) unsigned NOT NULL DEFAULT '0',
  `number_forward` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text,
  `wj_data` longtext,
  `wj_styles` longtext
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_email`
--

INSERT INTO `wp_wysija_email` (`email_id`, `campaign_id`, `subject`, `body`, `created_at`, `modified_at`, `sent_at`, `from_email`, `from_name`, `replyto_email`, `replyto_name`, `attachments`, `status`, `type`, `number_sent`, `number_opened`, `number_clicked`, `number_unsub`, `number_bounce`, `number_forward`, `params`, `wj_data`, `wj_styles`) VALUES
(1, 1, '5 Minute User Guide', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml"  >\n<head>\n    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />\n    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>\n    <title>5 Minute User Guide</title>\n    <style type="text/css">body {\n        width:100% !important;\n        -webkit-text-size-adjust:100%;\n        -ms-text-size-adjust:100%;\n        margin:0;\n        padding:0;\n    }\n\n    body,table,td,p,a,li,blockquote{\n        -ms-text-size-adjust:100%;\n        -webkit-text-size-adjust:100%;\n    }\n\n    .ReadMsgBody{\n        width:100%;\n    }.ExternalClass {width:100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}#backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100% !important; background:#e8e8e8;}img {\n        outline:none;\n        text-decoration:none;\n        -ms-interpolation-mode: bicubic;\n    }\n    a img {border:none;}\n    .image_fix {display:block;}p {\n        font-family: "Arial";\n        font-size: 16px;\n        line-height: 150%;\n        margin: 1em 0;\n        padding: 0;\n    }h1,h2,h3,h4,h5,h6{\n        margin:0;\n        padding:0;\n    }h1 {\n        color:#000000 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:40px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }h2 {\n        color:#424242 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:30px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }h3 {\n        color:#424242 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:24px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }table td {border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt;}table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }a {\n        color:#4a91b0;\n        word-wrap:break-word;\n    }\n    #outlook a {padding:0;}\n    .yshortcuts { color:#4a91b0; }\n\n    #wysija_wrapper {\n        background:#e8e8e8;\n        color:#000000;\n        font-family:"Arial";\n        font-size:16px;\n        -webkit-text-size-adjust:100%;\n        -ms-text-size-adjust:100%;\n        \n    }\n\n    .wysija_header_container {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        \n    }\n\n    .wysija_block {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        background:#ffffff;\n    }\n\n    .wysija_footer_container {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        \n    }\n\n    .wysija_viewbrowser_container, .wysija_viewbrowser_container a {\n        font-family: "Arial" !important;\n        font-size: 12px !important;\n        color: #000000 !important;\n    }\n    .wysija_unsubscribe_container, .wysija_unsubscribe_container a {\n        text-align:center;\n        color: #000000 !important;\n        font-size:12px;\n    }\n    .wysija_viewbrowser_container a, .wysija_unsubscribe_container a {\n        text-decoration:underline;\n    }\n    .wysija_list_item {\n        margin:0;\n    }@media only screen and (max-device-width: 480px), screen and (max-width: 480px) {a[href^="tel"], a[href^="sms"] {\n            text-decoration: none;\n            color: #4a91b0;pointer-events: none;\n            cursor: default;\n        }\n\n        .mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {\n            text-decoration: default;\n            color: #4a91b0 !important;\n            pointer-events: auto;\n            cursor: default;\n        }body, table, td, p, a, li, blockquote { -webkit-text-size-adjust:none !important; }body{ width:100% !important; min-width:100% !important; }\n    }@media only screen and (min-device-width: 768px) and (max-device-width: 1024px), screen and (min-width: 768px) and (max-width: 1024px) {a[href^="tel"],\n        a[href^="sms"] {\n            text-decoration: none;\n            color: #4a91b0;pointer-events: none;\n            cursor: default;\n        }\n\n        .mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {\n            text-decoration: default;\n            color: #4a91b0 !important;\n            pointer-events: auto;\n            cursor: default;\n        }\n    }\n\n    @media only screen and (-webkit-min-device-pixel-ratio: 2) {\n    }@media only screen and (-webkit-device-pixel-ratio:.75){}\n    @media only screen and (-webkit-device-pixel-ratio:1){}\n    @media only screen and (-webkit-device-pixel-ratio:1.5){}</style><!--[if IEMobile 7]>\n<style type="text/css">\n\n</style>\n<![endif]--><!--[if gte mso 9]>\n<style type="text/css">.wysija_image_container {\n        padding-top:0 !important;\n    }\n    .wysija_image_placeholder {\n        mso-text-raise:0;\n        mso-table-lspace:0;\n        mso-table-rspace:0;\n        margin-bottom: 0 !important;\n    }\n    .wysija_block .wysija_image_placeholder {\n        margin:2px 1px 0 1px !important;\n    }\n    p {\n        line-height: 110% !important;\n    }\n    h1, h2, h3 {\n        line-height: 110% !important;\n        margin:0 !important;\n        padding: 0 !important;\n    }\n</style>\n<![endif]-->\n\n<!--[if gte mso 15]>\n<style type="text/css">table { font-size:1px; mso-line-height-alt:0; line-height:0; mso-margin-top-alt:0; }\n    tr { font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px; }\n</style>\n<![endif]-->\n\n</head>\n<body bgcolor="#e8e8e8" yahoo="fix">\n    <span style="margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-bottom:0;padding-left:0;padding-right:0;padding-top:0;display:block;background:#e8e8e8;">\n    <table width="100%" cellpadding="0" cellspacing="0" border="0" id="wysija_wrapper">\n        <tr>\n            <td valign="top" align="center">\n                <table width="600" cellpadding="0" cellspacing="0" border="0" align="center">\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"   >\n                            <p class="wysija_viewbrowser_container" style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;text-align: center;padding-top: 8px;padding-right: 8px;padding-bottom: 8px;padding-left: 8px;" >Display problems? <a style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;" href="[view_in_browser_link]" target="_blank">View this newsletter in your browser.</a></p>\n                        </td>\n                    </tr>\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center">\n                            \n<table class="wysija_header" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n <td height="1" align="center" class="wysija_header_container" style="font-size:1px;line-height:1%;mso-line-height-rule:exactly;border: 0;min-width: 100%;background-color: #e8e8e8;border: 0;" >\n \n <img width="600" height="72" src="http://localhost/giroptic/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/header.png" border="0" alt="" class="image_fix" style="width:600px; height:72px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </td>\n </tr>\n</table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="left">\n                            \n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 1:</strong> hey, click on this text!</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">To edit, simply click on this block of text.</p></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://localhost/giroptic/wp-content/uploads/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 2:</strong> play with this image</h2></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n \n \n <table style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;" width="1%" height="190" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td class="wysija_image_container left" style="border: 0;border-collapse: collapse;border: 1px solid #ffffff;display: block;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 10px;padding-bottom: 0;padding-left: 0;" width="1%" height="190" valign="top">\n <div align="left" class="wysija_image_placeholder left" style="height:190px;width:281px;border: 0;display: block;margin-top: 0;margin-right: 10px;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;" >\n \n <img width="281" height="190" src="http://localhost/giroptic/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/pigeon.png" border="0" alt="" class="image_fix" style="width:281px; height:190px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n </table>\n\n <div class="wysija_text_container"><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Position your mouse over the image to the left.</p></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://localhost/giroptic/wp-content/uploads/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 3:</strong> drop content here</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Drag and drop <strong>text, posts, dividers.</strong> Look on the right!</p><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">You can even <strong>social bookmarks</strong> like these:</p></div>\n </td>\n \n </tr>\n</table>\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n <td class="wysija_gallery_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" >\n <table class="wysija_gallery_table center" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;text-align: center;margin-top: 0;margin-right: auto;margin-bottom: 0;margin-left: auto;" width="184" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="http://www.facebook.com/mailpoetplugin"><img src="http://localhost/giroptic/wp-content/uploads/wysija/bookmarks/medium/02/facebook.png" border="0" alt="Facebook" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="http://www.twitter.com/mail_poet"><img src="http://localhost/giroptic/wp-content/uploads/wysija/bookmarks/medium/02/twitter.png" border="0" alt="Twitter" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="https://plus.google.com/+Mailpoet"><img src="http://localhost/giroptic/wp-content/uploads/wysija/bookmarks/medium/02/google.png" border="0" alt="Google" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n </tr>\n </table>\n </td>\n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://localhost/giroptic/wp-content/uploads/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 4:</strong> and the footer?</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Change the footer''s content in MailPoet''s <strong>Settings</strong> page.</p></div>\n </td>\n \n </tr>\n</table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"   >\n                            \n<table class="wysija_footer" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n <td height="1" align="center" class="wysija_footer_container" style="font-size:1px;line-height:1%;mso-line-height-rule:exactly;border: 0;min-width: 100%;background-color: #e8e8e8;border: 0;" >\n \n <img width="600" height="46" src="http://localhost/giroptic/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/footer.png" border="0" alt="" class="image_fix" style="width:600px; height:46px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </td>\n </tr>\n</table>\n                        </td>\n                    </tr>\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"  >\n                            <p class="wysija_unsubscribe_container" style="font-family: Verdana, Geneva, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;text-align: center;padding-top: 8px;padding-right: 8px;padding-bottom: 8px;padding-left: 8px;" ><a style="color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;" href="[unsubscribe_link]" target="_blank">Unsubscribe</a><br /><br /></p>\n                        </td>\n                    </tr>\n                    \n                </table>\n            </td>\n        </tr>\n    </table>\n    </span>\n</body>\n</html>', 1429175812, 1429616958, NULL, 'info@localhost', 'admin', 'info@localhost', 'admin', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 'YToxOntzOjE0OiJxdWlja3NlbGVjdGlvbiI7YToxOntzOjY6IndwLTMwMSI7YTo1OntzOjEwOiJpZGVudGlmaWVyIjtzOjY6IndwLTMwMSI7czo1OiJ3aWR0aCI7aToyODE7czo2OiJoZWlnaHQiO2k6MTkwO3M6MzoidXJsIjtzOjEwODoiaHR0cDovL2xvY2FsaG9zdC9naXJvcHRpYy93cC1jb250ZW50L3BsdWdpbnMvd3lzaWphLW5ld3NsZXR0ZXJzL2ltZy9kZWZhdWx0LW5ld3NsZXR0ZXIvbmV3c2xldHRlci9waWdlb24ucG5nIjtzOjk6InRodW1iX3VybCI7czoxMTY6Imh0dHA6Ly9sb2NhbGhvc3QvZ2lyb3B0aWMvd3AtY29udGVudC9wbHVnaW5zL3d5c2lqYS1uZXdzbGV0dGVycy9pbWcvZGVmYXVsdC1uZXdzbGV0dGVyL25ld3NsZXR0ZXIvcGlnZW9uLTE1MHgxNTAucG5nIjt9fX0=', 'YTo0OntzOjc6InZlcnNpb24iO3M6NjoiMi42LjE1IjtzOjY6ImhlYWRlciI7YTo1OntzOjQ6InRleHQiO047czo1OiJpbWFnZSI7YTo1OntzOjM6InNyYyI7czoxMDg6Imh0dHA6Ly9sb2NhbGhvc3QvZ2lyb3B0aWMvd3AtY29udGVudC9wbHVnaW5zL3d5c2lqYS1uZXdzbGV0dGVycy9pbWcvZGVmYXVsdC1uZXdzbGV0dGVyL25ld3NsZXR0ZXIvaGVhZGVyLnBuZyI7czo1OiJ3aWR0aCI7aTo2MDA7czo2OiJoZWlnaHQiO2k6NzI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjY6InN0YXRpYyI7YjowO31zOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6Njoic3RhdGljIjtiOjA7czo0OiJ0eXBlIjtzOjY6ImhlYWRlciI7fXM6NDoiYm9keSI7YTo5OntzOjc6ImJsb2NrLTEiO2E6Njp7czo0OiJ0ZXh0IjthOjE6e3M6NToidmFsdWUiO3M6MTQ4OiJQR2d5UGp4emRISnZibWMrVTNSbGNDQXhPand2YzNSeWIyNW5QaUJvWlhrc0lHTnNhV05ySUc5dUlIUm9hWE1nZEdWNGRDRThMMmd5UGp4d1BsUnZJR1ZrYVhRc0lITnBiWEJzZVNCamJHbGpheUJ2YmlCMGFHbHpJR0pzYjJOcklHOW1JSFJsZUhRdVBDOXdQZz09Ijt9czo1OiJpbWFnZSI7TjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6MTtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fXM6NzoiYmxvY2stMiI7YTo1OntzOjg6InBvc2l0aW9uIjtpOjI7czo0OiJ0eXBlIjtzOjc6ImRpdmlkZXIiO3M6Mzoic3JjIjtzOjcwOiJodHRwOi8vbG9jYWxob3N0L2dpcm9wdGljL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvZGl2aWRlcnMvc29saWQuanBnIjtzOjU6IndpZHRoIjtpOjU2NDtzOjY6ImhlaWdodCI7aToxO31zOjc6ImJsb2NrLTMiO2E6Njp7czo0OiJ0ZXh0IjthOjE6e3M6NToidmFsdWUiO3M6NzI6IlBHZ3lQanh6ZEhKdmJtYytVM1JsY0NBeU9qd3ZjM1J5YjI1blBpQndiR0Y1SUhkcGRHZ2dkR2hwY3lCcGJXRm5aVHd2YURJKyI7fXM6NToiaW1hZ2UiO047czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo2OiJzdGF0aWMiO2I6MDtzOjg6InBvc2l0aW9uIjtpOjM7czo0OiJ0eXBlIjtzOjc6ImNvbnRlbnQiO31zOjc6ImJsb2NrLTQiO2E6Njp7czo0OiJ0ZXh0IjthOjE6e3M6NToidmFsdWUiO3M6NzI6IlBIQStVRzl6YVhScGIyNGdlVzkxY2lCdGIzVnpaU0J2ZG1WeUlIUm9aU0JwYldGblpTQjBieUIwYUdVZ2JHVm1kQzQ4TDNBKyI7fXM6NToiaW1hZ2UiO2E6NTp7czozOiJzcmMiO3M6MTA4OiJodHRwOi8vbG9jYWxob3N0L2dpcm9wdGljL3dwLWNvbnRlbnQvcGx1Z2lucy93eXNpamEtbmV3c2xldHRlcnMvaW1nL2RlZmF1bHQtbmV3c2xldHRlci9uZXdzbGV0dGVyL3BpZ2Vvbi5wbmciO3M6NToid2lkdGgiO2k6MjgxO3M6NjoiaGVpZ2h0IjtpOjE5MDtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO31zOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6NDtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fXM6NzoiYmxvY2stNSI7YTo1OntzOjg6InBvc2l0aW9uIjtpOjU7czo0OiJ0eXBlIjtzOjc6ImRpdmlkZXIiO3M6Mzoic3JjIjtzOjcwOiJodHRwOi8vbG9jYWxob3N0L2dpcm9wdGljL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvZGl2aWRlcnMvc29saWQuanBnIjtzOjU6IndpZHRoIjtpOjU2NDtzOjY6ImhlaWdodCI7aToxO31zOjc6ImJsb2NrLTYiO2E6Njp7czo0OiJ0ZXh0IjthOjE6e3M6NToidmFsdWUiO3M6MjYwOiJQR2d5UGp4emRISnZibWMrVTNSbGNDQXpPand2YzNSeWIyNW5QaUJrY205d0lHTnZiblJsYm5RZ2FHVnlaVHd2YURJK1BIQStSSEpoWnlCaGJtUWdaSEp2Y0NBOGMzUnliMjVuUG5SbGVIUXNJSEJ2YzNSekxDQmthWFpwWkdWeWN5NDhMM04wY205dVp6NGdURzl2YXlCdmJpQjBhR1VnY21sbmFIUWhQQzl3UGp4d1BsbHZkU0JqWVc0Z1pYWmxiaUE4YzNSeWIyNW5Qbk52WTJsaGJDQmliMjlyYldGeWEzTThMM04wY205dVp6NGdiR2xyWlNCMGFHVnpaVG84TDNBKyI7fXM6NToiaW1hZ2UiO047czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo2OiJzdGF0aWMiO2I6MDtzOjg6InBvc2l0aW9uIjtpOjY7czo0OiJ0eXBlIjtzOjc6ImNvbnRlbnQiO31zOjc6ImJsb2NrLTciO2E6NTp7czo1OiJ3aWR0aCI7aToxODQ7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjU6Iml0ZW1zIjthOjM6e2k6MDthOjc6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9tYWlscG9ldHBsdWdpbiI7czozOiJhbHQiO3M6ODoiRmFjZWJvb2siO3M6OToiY2VsbFdpZHRoIjtpOjYxO3M6MTA6ImNlbGxIZWlnaHQiO2k6MzI7czozOiJzcmMiO3M6ODQ6Imh0dHA6Ly9sb2NhbGhvc3QvZ2lyb3B0aWMvd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS9ib29rbWFya3MvbWVkaXVtLzAyL2ZhY2Vib29rLnBuZyI7czo1OiJ3aWR0aCI7aTozMjtzOjY6ImhlaWdodCI7aTozMjt9aToxO2E6Nzp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly93d3cudHdpdHRlci5jb20vbWFpbF9wb2V0IjtzOjM6ImFsdCI7czo3OiJUd2l0dGVyIjtzOjk6ImNlbGxXaWR0aCI7aTo2MTtzOjEwOiJjZWxsSGVpZ2h0IjtpOjMyO3M6Mzoic3JjIjtzOjgzOiJodHRwOi8vbG9jYWxob3N0L2dpcm9wdGljL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvYm9va21hcmtzL21lZGl1bS8wMi90d2l0dGVyLnBuZyI7czo1OiJ3aWR0aCI7aTozMjtzOjY6ImhlaWdodCI7aTozMjt9aToyO2E6Nzp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vcGx1cy5nb29nbGUuY29tLytNYWlscG9ldCI7czozOiJhbHQiO3M6NjoiR29vZ2xlIjtzOjk6ImNlbGxXaWR0aCI7aTo2MTtzOjEwOiJjZWxsSGVpZ2h0IjtpOjMyO3M6Mzoic3JjIjtzOjgyOiJodHRwOi8vbG9jYWxob3N0L2dpcm9wdGljL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvYm9va21hcmtzL21lZGl1bS8wMi9nb29nbGUucG5nIjtzOjU6IndpZHRoIjtpOjMyO3M6NjoiaGVpZ2h0IjtpOjMyO319czo4OiJwb3NpdGlvbiI7aTo3O3M6NDoidHlwZSI7czo3OiJnYWxsZXJ5Ijt9czo3OiJibG9jay04IjthOjU6e3M6ODoicG9zaXRpb24iO2k6ODtzOjQ6InR5cGUiO3M6NzoiZGl2aWRlciI7czozOiJzcmMiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3QvZ2lyb3B0aWMvd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS9kaXZpZGVycy9zb2xpZC5qcGciO3M6NToid2lkdGgiO2k6NTY0O3M6NjoiaGVpZ2h0IjtpOjE7fXM6NzoiYmxvY2stOSI7YTo2OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czoxNzI6IlBHZ3lQanh6ZEhKdmJtYytVM1JsY0NBME9qd3ZjM1J5YjI1blBpQmhibVFnZEdobElHWnZiM1JsY2o4OEwyZ3lQanh3UGtOb1lXNW5aU0IwYUdVZ1ptOXZkR1Z5SjNNZ1kyOXVkR1Z1ZENCcGJpQk5ZV2xzVUc5bGRDZHpJRHh6ZEhKdmJtYytVMlYwZEdsdVozTThMM04wY205dVp6NGdjR0ZuWlM0OEwzQSsiO31zOjU6ImltYWdlIjtOO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6Njoic3RhdGljIjtiOjA7czo4OiJwb3NpdGlvbiI7aTo5O3M6NDoidHlwZSI7czo3OiJjb250ZW50Ijt9fXM6NjoiZm9vdGVyIjthOjU6e3M6NDoidGV4dCI7TjtzOjU6ImltYWdlIjthOjU6e3M6Mzoic3JjIjtzOjEwODoiaHR0cDovL2xvY2FsaG9zdC9naXJvcHRpYy93cC1jb250ZW50L3BsdWdpbnMvd3lzaWphLW5ld3NsZXR0ZXJzL2ltZy9kZWZhdWx0LW5ld3NsZXR0ZXIvbmV3c2xldHRlci9mb290ZXIucG5nIjtzOjU6IndpZHRoIjtpOjYwMDtzOjY6ImhlaWdodCI7aTo0NjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6Njoic3RhdGljIjtiOjA7fXM6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDtzOjQ6InR5cGUiO3M6NjoiZm9vdGVyIjt9fQ==', 'YToxMDp7czo0OiJodG1sIjthOjE6e3M6MTA6ImJhY2tncm91bmQiO3M6NjoiZThlOGU4Ijt9czo2OiJoZWFkZXIiO2E6MTp7czoxMDoiYmFja2dyb3VuZCI7czo2OiJlOGU4ZTgiO31zOjQ6ImJvZHkiO2E6NDp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjU6IkFyaWFsIjtzOjQ6InNpemUiO2k6MTY7czoxMDoiYmFja2dyb3VuZCI7czo2OiJmZmZmZmYiO31zOjY6ImZvb3RlciI7YToxOntzOjEwOiJiYWNrZ3JvdW5kIjtzOjY6ImU4ZThlOCI7fXM6MjoiaDEiO2E6Mzp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjEyOiJUcmVidWNoZXQgTVMiO3M6NDoic2l6ZSI7aTo0MDt9czoyOiJoMiI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjQyNDI0MiI7czo2OiJmYW1pbHkiO3M6MTI6IlRyZWJ1Y2hldCBNUyI7czo0OiJzaXplIjtpOjMwO31zOjI6ImgzIjthOjM6e3M6NToiY29sb3IiO3M6NjoiNDI0MjQyIjtzOjY6ImZhbWlseSI7czoxMjoiVHJlYnVjaGV0IE1TIjtzOjQ6InNpemUiO2k6MjQ7fXM6MToiYSI7YToyOntzOjU6ImNvbG9yIjtzOjY6IjRhOTFiMCI7czo5OiJ1bmRlcmxpbmUiO2I6MDt9czoxMToidW5zdWJzY3JpYmUiO2E6MTp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO31zOjExOiJ2aWV3YnJvd3NlciI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjAwMDAwMCI7czo2OiJmYW1pbHkiO3M6NToiQXJpYWwiO3M6NDoic2l6ZSI7aToxMjt9fQ=='),
(2, 0, 'Confirm your subscription to Giroptic', 'Hello!\r\n\r\nHurray! You''ve subscribed to our site.\r\nWe need you to activate your subscription to the list(s): [lists_to_confirm] by clicking the link below: \r\n\r\n[activation_link]Click here to confirm your subscription.[/activation_link]\r\n\r\nThank you,\r\n\r\n The team!\r\n', 1429175813, 1429175813, NULL, 'info@giroptic.local', 'admin', 'info@localhost', 'admin', NULL, 99, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email_user_stat`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_email_user_stat` (
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned NOT NULL,
  `sent_at` int(10) unsigned NOT NULL,
  `opened_at` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email_user_url`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_email_user_url` (
  `email_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `url_id` int(10) unsigned NOT NULL,
  `clicked_at` int(10) unsigned DEFAULT NULL,
  `number_clicked` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_form`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_form` (
`form_id` int(10) unsigned NOT NULL,
  `name` tinytext CHARACTER SET utf8 COLLATE utf8_bin,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `styles` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `subscribed` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_form`
--

INSERT INTO `wp_wysija_form` (`form_id`, `name`, `data`, `styles`, `subscribed`) VALUES
(1, 'Subscribe to our Newsletter', 'YTo0OntzOjc6InZlcnNpb24iO3M6MzoiMC40IjtzOjg6InNldHRpbmdzIjthOjU6e3M6NzoiZm9ybV9pZCI7czoxOiIxIjtzOjU6Imxpc3RzIjthOjE6e2k6MDtzOjE6IjEiO31zOjEwOiJvbl9zdWNjZXNzIjtzOjc6Im1lc3NhZ2UiO3M6MTU6InN1Y2Nlc3NfbWVzc2FnZSI7czo2NToiQ2hlY2sgeW91ciBpbmJveCBvciBzcGFtIGZvbGRlciBub3cgdG8gY29uZmlybSB5b3VyIHN1YnNjcmlwdGlvbi4iO3M6MTc6Imxpc3RzX3NlbGVjdGVkX2J5IjtzOjU6ImFkbWluIjt9czo0OiJib2R5IjthOjI6e3M6NzoiYmxvY2stMSI7YTo1OntzOjY6InBhcmFtcyI7YTozOntzOjU6ImxhYmVsIjtzOjU6IkVtYWlsIjtzOjEyOiJsYWJlbF93aXRoaW4iO3M6MToiMSI7czo4OiJyZXF1aXJlZCI7czoxOiIxIjt9czo4OiJwb3NpdGlvbiI7aToxO3M6NDoidHlwZSI7czo1OiJpbnB1dCI7czo1OiJmaWVsZCI7czo1OiJlbWFpbCI7czo0OiJuYW1lIjtzOjU6IkVtYWlsIjt9czo3OiJibG9jay0yIjthOjU6e3M6NjoicGFyYW1zIjthOjE6e3M6NToibGFiZWwiO3M6MTA6IlN1YnNjcmliZSEiO31zOjg6InBvc2l0aW9uIjtpOjI7czo0OiJ0eXBlIjtzOjY6InN1Ym1pdCI7czo1OiJmaWVsZCI7czo2OiJzdWJtaXQiO3M6NDoibmFtZSI7czo2OiJTdWJtaXQiO319czo3OiJmb3JtX2lkIjtpOjE7fQ==', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_list`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_list` (
`list_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `namekey` varchar(255) DEFAULT NULL,
  `description` text,
  `unsub_mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `welcome_mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_enabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_public` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_list`
--

INSERT INTO `wp_wysija_list` (`list_id`, `name`, `namekey`, `description`, `unsub_mail_id`, `welcome_mail_id`, `is_enabled`, `is_public`, `created_at`, `ordering`) VALUES
(1, 'My first list', 'my-first-list', 'The list created automatically on install of the MailPoet.', 0, 0, 1, 1, 1429175812, 0),
(2, 'WordPress Users', 'users', 'The list created automatically on import of the plugin''s subscribers : "WordPress', 0, 0, 0, 0, 1429175812, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_queue`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_queue` (
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned NOT NULL,
  `send_at` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(4) NOT NULL DEFAULT '0',
  `number_try` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_url`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_url` (
`url_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `url` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_url_mail`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_url_mail` (
`email_id` int(11) NOT NULL,
  `url_id` int(10) unsigned NOT NULL,
  `unique_clicked` int(10) unsigned NOT NULL DEFAULT '0',
  `total_clicked` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_user` (
`user_id` int(10) unsigned NOT NULL,
  `wpuser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL,
  `confirmed_ip` varchar(100) NOT NULL DEFAULT '0',
  `confirmed_at` int(10) unsigned DEFAULT NULL,
  `last_opened` int(10) unsigned DEFAULT NULL,
  `last_clicked` int(10) unsigned DEFAULT NULL,
  `keyuser` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `domain` varchar(255) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user`
--

INSERT INTO `wp_wysija_user` (`user_id`, `wpuser_id`, `email`, `firstname`, `lastname`, `ip`, `confirmed_ip`, `confirmed_at`, `last_opened`, `last_clicked`, `keyuser`, `created_at`, `status`, `domain`) VALUES
(1, 1, 'lapchuk.ol@gmail.com', '', '', '', '0', NULL, NULL, NULL, '4ea5b9983cdf3a7ba09651ce6e324fbc', 1429175813, 1, 'gmail.com'),
(2, 0, 'make_14@mail.ru', '', '', '127.0.0.1', '0', NULL, NULL, NULL, 'cc06c91739948fe99bfe3f8eba051200', 1429176030, 0, 'mail.ru'),
(3, 2, 'admin@admin.com', 'new', '', '127.0.0.1', '0', NULL, NULL, NULL, '1a1cf6cbf0bebe7070b65fbfcaec5096', 1429194299, 1, 'admin.com'),
(4, 0, 'test@test.com', '', '', '127.0.0.1', '0', NULL, NULL, NULL, '2336392014f73f126c89d1c91f190743', 1429617080, 0, 'test.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_field`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_user_field` (
`field_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `column_name` varchar(250) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned DEFAULT '0',
  `values` text,
  `default` varchar(250) NOT NULL DEFAULT '',
  `is_required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `error_message` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user_field`
--

INSERT INTO `wp_wysija_user_field` (`field_id`, `name`, `column_name`, `type`, `values`, `default`, `is_required`, `error_message`) VALUES
(1, 'First name', 'firstname', 0, NULL, '', 0, 'Please enter first name'),
(2, 'Last name', 'lastname', 0, NULL, '', 0, 'Please enter last name');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_history`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_user_history` (
`history_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned DEFAULT '0',
  `type` varchar(250) NOT NULL DEFAULT '',
  `details` text,
  `executed_at` int(10) unsigned DEFAULT NULL,
  `executed_by` int(10) unsigned DEFAULT NULL,
  `source` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_list`
--

CREATE TABLE IF NOT EXISTS `wp_wysija_user_list` (
  `list_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `sub_date` int(10) unsigned DEFAULT '0',
  `unsub_date` int(10) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user_list`
--

INSERT INTO `wp_wysija_user_list` (`list_id`, `user_id`, `sub_date`, `unsub_date`) VALUES
(1, 1, 1429175812, 0),
(2, 1, 1429175813, 0),
(1, 2, 0, 0),
(2, 3, 1429194299, 0),
(1, 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_zwt_languages`
--

CREATE TABLE IF NOT EXISTS `wp_zwt_languages` (
`id` int(11) NOT NULL,
  `code` varchar(7) NOT NULL,
  `english_name` varchar(128) NOT NULL,
  `default_locale` varchar(8) DEFAULT NULL,
  `custom` int(1) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_zwt_languages`
--

INSERT INTO `wp_zwt_languages` (`id`, `code`, `english_name`, `default_locale`, `custom`) VALUES
(1, 'en', 'English', 'en_US', 0),
(2, 'es', 'Spanish', 'es_ES', 0),
(3, 'de', 'German', 'de_DE', 0),
(4, 'fr', 'French', 'fr_FR', 0),
(5, 'ar', 'Arabic', 'ar', 0),
(6, 'bs', 'Bosnian', 'bs', 0),
(7, 'bg', 'Bulgarian', 'bg_BG', 0),
(8, 'ca', 'Catalan', 'ca', 0),
(9, 'cs', 'Czech', 'cs_CZ', 0),
(10, 'sk', 'Slovak', 'sk_SK', 0),
(11, 'cy', 'Welsh', 'cy', 0),
(12, 'da', 'Danish', 'da_DK', 0),
(13, 'el', 'Greek', 'el', 0),
(14, 'eo', 'Esperanto', 'eo', 0),
(15, 'et', 'Estonian', 'et', 0),
(16, 'eu', 'Basque', 'eu', 0),
(17, 'fa', 'Persian', 'fa_IR', 0),
(18, 'fi', 'Finnish', 'fi_FI', 0),
(19, 'ga', 'Irish', 'ga', 0),
(20, 'he', 'Hebrew', 'he_IL', 0),
(21, 'hi', 'Hindi', 'hi', 0),
(22, 'hr', 'Croatian', 'hr', 0),
(23, 'hu', 'Hungarian', 'hu_HU', 0),
(24, 'hy', 'Armenian', 'hy', 0),
(25, 'id', 'Indonesian', 'id_ID', 0),
(26, 'is', 'Icelandic', 'is_IS', 0),
(27, 'it', 'Italian', 'it_IT', 0),
(28, 'ja', 'Japanese', 'ja', 0),
(29, 'ko', 'Korean', 'ko_KR', 0),
(30, 'ku', 'Kurdish', 'ku', 0),
(31, 'la', 'Latin', 'la', 0),
(32, 'lv', 'Latvian', 'lv', 0),
(33, 'lt', 'Lithuanian', 'lt', 0),
(34, 'mk', 'Macedonian', 'mk_MK', 0),
(35, 'mt', 'Maltese', 'mt', 0),
(36, 'mo', 'Moldavian', 'mo', 0),
(37, 'mn', 'Mongolian', 'mn', 0),
(38, 'ne', 'Nepali', 'ne', 0),
(39, 'nl', 'Dutch', 'nl_NL', 0),
(40, 'nb', 'Norwegian Bokm', 'nb_NO', 0),
(41, 'pa', 'Punjabi', 'pa', 0),
(42, 'pl', 'Polish', 'pl_PL', 0),
(43, 'pt', 'Portuguese, Portugal', 'pt_PT', 0),
(44, 'qu', 'Quechua', 'qu', 0),
(45, 'ro', 'Romanian', 'ro_RO', 0),
(46, 'ru', 'Russian', 'ru_RU', 0),
(47, 'sl', 'Slovenian', 'sl_SI', 0),
(48, 'so', 'Somali', 'so', 0),
(49, 'sq', 'Albanian', 'sq', 0),
(50, 'sr', 'Serbian', 'sr_RS', 0),
(51, 'sv', 'Swedish', 'sv_SE', 0),
(52, 'ta', 'Tamil', 'ta', 0),
(53, 'th', 'Thai', 'th', 0),
(54, 'tr', 'Turkish', 'tr', 0),
(55, 'uk', 'Ukrainian', 'uk_UA', 0),
(56, 'ur', 'Urdu', 'ur', 0),
(57, 'uz', 'Uzbek', 'uz_UZ', 0),
(58, 'vi', 'Vietnamese', 'vi', 0),
(59, 'yi', 'Yiddish', 'yi', 0),
(60, 'zu', 'Zulu', 'zu', 0),
(61, 'zh', 'Chinese', 'zh_CN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_zwt_languages_translations`
--

CREATE TABLE IF NOT EXISTS `wp_zwt_languages_translations` (
`id` int(11) NOT NULL,
  `language_code` varchar(7) NOT NULL,
  `display_language_code` varchar(7) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3722 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_zwt_languages_translations`
--

INSERT INTO `wp_zwt_languages_translations` (`id`, `language_code`, `display_language_code`, `name`) VALUES
(1, 'en_US', 'en_US', 'English'),
(2, 'en_US', 'es_ES', 'Inglés'),
(3, 'en_US', 'de_DE', 'Englisch'),
(4, 'en_US', 'fr_FR', 'Anglais'),
(5, 'en_US', 'ar', 'الإنجليزية'),
(6, 'en_US', 'bs', 'English'),
(7, 'en_US', 'bg_BG', 'English'),
(8, 'en_US', 'ca', 'English'),
(9, 'en_US', 'cs_CZ', 'English'),
(10, 'en_US', 'sk_SK', 'Angličtina'),
(11, 'en_US', 'cy', 'English'),
(12, 'en_US', 'da_DK', 'English'),
(13, 'en_US', 'el', 'Αγγλικα'),
(14, 'en_US', 'eo', 'English'),
(15, 'en_US', 'et', 'English'),
(16, 'en_US', 'eu', 'English'),
(17, 'en_US', 'fa_IR', 'English'),
(18, 'en_US', 'fi_FI', 'englanti'),
(19, 'en_US', 'ga', 'English'),
(20, 'en_US', 'he_IL', 'אנגלית'),
(21, 'en_US', 'hi', 'English'),
(22, 'en_US', 'hr', 'English'),
(23, 'en_US', 'hu_HU', 'angol'),
(24, 'en_US', 'hy', 'English'),
(25, 'en_US', 'id_ID', 'English'),
(26, 'en_US', 'is_IS', 'English'),
(27, 'en_US', 'it_IT', 'Inglese'),
(28, 'en_US', 'ja', '英語'),
(29, 'en_US', 'ko_KR', '영어'),
(30, 'en_US', 'ku', 'English'),
(31, 'en_US', 'la', 'English'),
(32, 'en_US', 'lv', 'English'),
(33, 'en_US', 'lt', 'English'),
(34, 'en_US', 'mk_MK', 'English'),
(35, 'en_US', 'mt', 'English'),
(36, 'en_US', 'mo', 'English'),
(37, 'en_US', 'mn', 'English'),
(38, 'en_US', 'ne', 'English'),
(39, 'en_US', 'nl_NL', 'Engels'),
(40, 'en_US', 'nb_NO', 'English'),
(41, 'en_US', 'pa', 'English'),
(42, 'en_US', 'pl_PL', 'angielski'),
(43, 'en_US', 'pt_PT', 'Inglês'),
(44, 'en_US', 'qu', 'English'),
(45, 'en_US', 'ro_RO', 'Engleză'),
(46, 'en_US', 'ru_RU', 'Английский'),
(47, 'en_US', 'sl_SI', 'English'),
(48, 'en_US', 'so', 'English'),
(49, 'en_US', 'sq', 'English'),
(50, 'en_US', 'sr_RS', 'English'),
(51, 'en_US', 'sv_SE', 'Engelska'),
(52, 'en_US', 'ta', 'English'),
(53, 'en_US', 'th', 'อังกฤษ'),
(54, 'en_US', 'tr', 'İngilizce'),
(55, 'en_US', 'uk_UA', 'English'),
(56, 'en_US', 'ur', 'English'),
(57, 'en_US', 'uz_UZ', 'English'),
(58, 'en_US', 'vi', 'English'),
(59, 'en_US', 'yi', 'English'),
(60, 'en_US', 'zu', 'English'),
(61, 'en_US', 'zh_CN', 'English'),
(62, 'es_ES', 'en_US', 'Spanish'),
(63, 'es_ES', 'es_ES', 'Español'),
(64, 'es_ES', 'de_DE', 'Spanisch'),
(65, 'es_ES', 'fr_FR', 'Espagnol'),
(66, 'es_ES', 'ar', 'الأسبانية'),
(67, 'es_ES', 'bs', 'Spanish'),
(68, 'es_ES', 'bg_BG', 'Spanish'),
(69, 'es_ES', 'ca', 'Spanish'),
(70, 'es_ES', 'cs_CZ', 'Spanish'),
(71, 'es_ES', 'sk_SK', 'Španielčina'),
(72, 'es_ES', 'cy', 'Spanish'),
(73, 'es_ES', 'da_DK', 'Spanish'),
(74, 'es_ES', 'el', 'Ισπανικα'),
(75, 'es_ES', 'eo', 'Spanish'),
(76, 'es_ES', 'et', 'Spanish'),
(77, 'es_ES', 'eu', 'Spanish'),
(78, 'es_ES', 'fa_IR', 'Spanish'),
(79, 'es_ES', 'fi_FI', 'espanja'),
(80, 'es_ES', 'ga', 'Spanish'),
(81, 'es_ES', 'he_IL', 'ספרדית'),
(82, 'es_ES', 'hi', 'Spanish'),
(83, 'es_ES', 'hr', 'Spanish'),
(84, 'es_ES', 'hu_HU', 'spanyol'),
(85, 'es_ES', 'hy', 'Spanish'),
(86, 'es_ES', 'id_ID', 'Spanish'),
(87, 'es_ES', 'is_IS', 'Spanish'),
(88, 'es_ES', 'it_IT', 'Spagnolo'),
(89, 'es_ES', 'ja', 'スペイン語'),
(90, 'es_ES', 'ko_KR', '스페인어'),
(91, 'es_ES', 'ku', 'Spanish'),
(92, 'es_ES', 'la', 'Spanish'),
(93, 'es_ES', 'lv', 'Spanish'),
(94, 'es_ES', 'lt', 'Spanish'),
(95, 'es_ES', 'mk_MK', 'Spanish'),
(96, 'es_ES', 'mt', 'Spanish'),
(97, 'es_ES', 'mo', 'Spanish'),
(98, 'es_ES', 'mn', 'Spanish'),
(99, 'es_ES', 'ne', 'Spanish'),
(100, 'es_ES', 'nl_NL', 'Spaans'),
(101, 'es_ES', 'nb_NO', 'Spanish'),
(102, 'es_ES', 'pa', 'Spanish'),
(103, 'es_ES', 'pl_PL', 'hiszpański'),
(104, 'es_ES', 'pt_PT', 'Espanhol'),
(105, 'es_ES', 'qu', 'Spanish'),
(106, 'es_ES', 'ro_RO', 'Spaniolă'),
(107, 'es_ES', 'ru_RU', 'Испанский'),
(108, 'es_ES', 'sl_SI', 'Spanish'),
(109, 'es_ES', 'so', 'Spanish'),
(110, 'es_ES', 'sq', 'Spanish'),
(111, 'es_ES', 'sr_RS', 'Spanish'),
(112, 'es_ES', 'sv_SE', 'Spanska'),
(113, 'es_ES', 'ta', 'Spanish'),
(114, 'es_ES', 'th', 'สเปน'),
(115, 'es_ES', 'tr', 'İspanyolca'),
(116, 'es_ES', 'uk_UA', 'Spanish'),
(117, 'es_ES', 'ur', 'Spanish'),
(118, 'es_ES', 'uz_UZ', 'Spanish'),
(119, 'es_ES', 'vi', 'Spanish'),
(120, 'es_ES', 'yi', 'Spanish'),
(121, 'es_ES', 'zu', 'Spanish'),
(122, 'es_ES', 'zh_CN', 'Spanish'),
(123, 'de_DE', 'en_US', 'German'),
(124, 'de_DE', 'es_ES', 'Alemán'),
(125, 'de_DE', 'de_DE', 'Deutsch'),
(126, 'de_DE', 'fr_FR', 'Allemand'),
(127, 'de_DE', 'ar', 'الألمانية'),
(128, 'de_DE', 'bs', 'German'),
(129, 'de_DE', 'bg_BG', 'German'),
(130, 'de_DE', 'ca', 'German'),
(131, 'de_DE', 'cs_CZ', 'German'),
(132, 'de_DE', 'sk_SK', 'Nemčina'),
(133, 'de_DE', 'cy', 'German'),
(134, 'de_DE', 'da_DK', 'German'),
(135, 'de_DE', 'el', 'Γερμανικα'),
(136, 'de_DE', 'eo', 'German'),
(137, 'de_DE', 'et', 'German'),
(138, 'de_DE', 'eu', 'German'),
(139, 'de_DE', 'fa_IR', 'German'),
(140, 'de_DE', 'fi_FI', 'saksa'),
(141, 'de_DE', 'ga', 'German'),
(142, 'de_DE', 'he_IL', 'גרמנית'),
(143, 'de_DE', 'hi', 'German'),
(144, 'de_DE', 'hr', 'German'),
(145, 'de_DE', 'hu_HU', 'német'),
(146, 'de_DE', 'hy', 'German'),
(147, 'de_DE', 'id_ID', 'German'),
(148, 'de_DE', 'is_IS', 'German'),
(149, 'de_DE', 'it_IT', 'Tedesco'),
(150, 'de_DE', 'ja', 'ドイツ語'),
(151, 'de_DE', 'ko_KR', '독어'),
(152, 'de_DE', 'ku', 'German'),
(153, 'de_DE', 'la', 'German'),
(154, 'de_DE', 'lv', 'German'),
(155, 'de_DE', 'lt', 'German'),
(156, 'de_DE', 'mk_MK', 'German'),
(157, 'de_DE', 'mt', 'German'),
(158, 'de_DE', 'mo', 'German'),
(159, 'de_DE', 'mn', 'German'),
(160, 'de_DE', 'ne', 'German'),
(161, 'de_DE', 'nl_NL', 'Duits'),
(162, 'de_DE', 'nb_NO', 'German'),
(163, 'de_DE', 'pa', 'German'),
(164, 'de_DE', 'pl_PL', 'niemiecki'),
(165, 'de_DE', 'pt_PT', 'Alemão'),
(166, 'de_DE', 'qu', 'German'),
(167, 'de_DE', 'ro_RO', 'Germană'),
(168, 'de_DE', 'ru_RU', 'Немецкий'),
(169, 'de_DE', 'sl_SI', 'German'),
(170, 'de_DE', 'so', 'German'),
(171, 'de_DE', 'sq', 'German'),
(172, 'de_DE', 'sr_RS', 'German'),
(173, 'de_DE', 'sv_SE', 'Tyska'),
(174, 'de_DE', 'ta', 'German'),
(175, 'de_DE', 'th', 'เยอรมัน'),
(176, 'de_DE', 'tr', 'Almanca'),
(177, 'de_DE', 'uk_UA', 'German'),
(178, 'de_DE', 'ur', 'German'),
(179, 'de_DE', 'uz_UZ', 'German'),
(180, 'de_DE', 'vi', 'German'),
(181, 'de_DE', 'yi', 'German'),
(182, 'de_DE', 'zu', 'German'),
(183, 'de_DE', 'zh_CN', 'German'),
(184, 'fr_FR', 'en_US', 'French'),
(185, 'fr_FR', 'es_ES', 'Francés'),
(186, 'fr_FR', 'de_DE', 'Französisch'),
(187, 'fr_FR', 'fr_FR', 'Français'),
(188, 'fr_FR', 'ar', 'الفرنسية'),
(189, 'fr_FR', 'bs', 'French'),
(190, 'fr_FR', 'bg_BG', 'French'),
(191, 'fr_FR', 'ca', 'French'),
(192, 'fr_FR', 'cs_CZ', 'French'),
(193, 'fr_FR', 'sk_SK', 'Francúzština'),
(194, 'fr_FR', 'cy', 'French'),
(195, 'fr_FR', 'da_DK', 'French'),
(196, 'fr_FR', 'el', 'Γαλλικα'),
(197, 'fr_FR', 'eo', 'French'),
(198, 'fr_FR', 'et', 'French'),
(199, 'fr_FR', 'eu', 'French'),
(200, 'fr_FR', 'fa_IR', 'French'),
(201, 'fr_FR', 'fi_FI', 'ranska'),
(202, 'fr_FR', 'ga', 'French'),
(203, 'fr_FR', 'he_IL', 'צרפתית'),
(204, 'fr_FR', 'hi', 'French'),
(205, 'fr_FR', 'hr', 'French'),
(206, 'fr_FR', 'hu_HU', 'francia'),
(207, 'fr_FR', 'hy', 'French'),
(208, 'fr_FR', 'id_ID', 'French'),
(209, 'fr_FR', 'is_IS', 'French'),
(210, 'fr_FR', 'it_IT', 'Francese'),
(211, 'fr_FR', 'ja', 'フランス語'),
(212, 'fr_FR', 'ko_KR', '불어'),
(213, 'fr_FR', 'ku', 'French'),
(214, 'fr_FR', 'la', 'French'),
(215, 'fr_FR', 'lv', 'French'),
(216, 'fr_FR', 'lt', 'French'),
(217, 'fr_FR', 'mk_MK', 'French'),
(218, 'fr_FR', 'mt', 'French'),
(219, 'fr_FR', 'mo', 'French'),
(220, 'fr_FR', 'mn', 'French'),
(221, 'fr_FR', 'ne', 'French'),
(222, 'fr_FR', 'nl_NL', 'Frans'),
(223, 'fr_FR', 'nb_NO', 'French'),
(224, 'fr_FR', 'pa', 'French'),
(225, 'fr_FR', 'pl_PL', 'francuski'),
(226, 'fr_FR', 'pt_PT', 'Francês'),
(227, 'fr_FR', 'qu', 'French'),
(228, 'fr_FR', 'ro_RO', 'Franceză'),
(229, 'fr_FR', 'ru_RU', 'Французский'),
(230, 'fr_FR', 'sl_SI', 'French'),
(231, 'fr_FR', 'so', 'French'),
(232, 'fr_FR', 'sq', 'French'),
(233, 'fr_FR', 'sr_RS', 'French'),
(234, 'fr_FR', 'sv_SE', 'Franska'),
(235, 'fr_FR', 'ta', 'French'),
(236, 'fr_FR', 'th', 'ฝรั่งเศส'),
(237, 'fr_FR', 'tr', 'Fransızca'),
(238, 'fr_FR', 'uk_UA', 'French'),
(239, 'fr_FR', 'ur', 'French'),
(240, 'fr_FR', 'uz_UZ', 'French'),
(241, 'fr_FR', 'vi', 'French'),
(242, 'fr_FR', 'yi', 'French'),
(243, 'fr_FR', 'zu', 'French'),
(244, 'fr_FR', 'zh_CN', 'French'),
(245, 'ar', 'en_US', 'Arabic'),
(246, 'ar', 'es_ES', 'Árabe'),
(247, 'ar', 'de_DE', 'Arabisch'),
(248, 'ar', 'fr_FR', 'Arabe'),
(249, 'ar', 'ar', 'العربية'),
(250, 'ar', 'bs', 'Arabic'),
(251, 'ar', 'bg_BG', 'Arabic'),
(252, 'ar', 'ca', 'Arabic'),
(253, 'ar', 'cs_CZ', 'Arabic'),
(254, 'ar', 'sk_SK', 'Arabčina'),
(255, 'ar', 'cy', 'Arabic'),
(256, 'ar', 'da_DK', 'Arabic'),
(257, 'ar', 'el', 'Αραβικα'),
(258, 'ar', 'eo', 'Arabic'),
(259, 'ar', 'et', 'Arabic'),
(260, 'ar', 'eu', 'Arabic'),
(261, 'ar', 'fa_IR', 'Arabic'),
(262, 'ar', 'fi_FI', 'arabia'),
(263, 'ar', 'ga', 'Arabic'),
(264, 'ar', 'he_IL', 'ערבית'),
(265, 'ar', 'hi', 'Arabic'),
(266, 'ar', 'hr', 'Arabic'),
(267, 'ar', 'hu_HU', 'arab'),
(268, 'ar', 'hy', 'Arabic'),
(269, 'ar', 'id_ID', 'Arabic'),
(270, 'ar', 'is_IS', 'Arabic'),
(271, 'ar', 'it_IT', 'Arabo'),
(272, 'ar', 'ja', 'アラビア語'),
(273, 'ar', 'ko_KR', '아랍어'),
(274, 'ar', 'ku', 'Arabic'),
(275, 'ar', 'la', 'Arabic'),
(276, 'ar', 'lv', 'Arabic'),
(277, 'ar', 'lt', 'Arabic'),
(278, 'ar', 'mk_MK', 'Arabic'),
(279, 'ar', 'mt', 'Arabic'),
(280, 'ar', 'mo', 'Arabic'),
(281, 'ar', 'mn', 'Arabic'),
(282, 'ar', 'ne', 'Arabic'),
(283, 'ar', 'nl_NL', 'Arabisch'),
(284, 'ar', 'nb_NO', 'Arabic'),
(285, 'ar', 'pa', 'Arabic'),
(286, 'ar', 'pl_PL', 'arabski'),
(287, 'ar', 'pt_PT', 'Árabe'),
(288, 'ar', 'qu', 'Arabic'),
(289, 'ar', 'ro_RO', 'Arabică'),
(290, 'ar', 'ru_RU', 'Арабский'),
(291, 'ar', 'sl_SI', 'Arabic'),
(292, 'ar', 'so', 'Arabic'),
(293, 'ar', 'sq', 'Arabic'),
(294, 'ar', 'sr_RS', 'Arabic'),
(295, 'ar', 'sv_SE', 'Arabiska'),
(296, 'ar', 'ta', 'Arabic'),
(297, 'ar', 'th', 'อารบิก'),
(298, 'ar', 'tr', 'Arapça'),
(299, 'ar', 'uk_UA', 'Arabic'),
(300, 'ar', 'ur', 'Arabic'),
(301, 'ar', 'uz_UZ', 'Arabic'),
(302, 'ar', 'vi', 'Arabic'),
(303, 'ar', 'yi', 'Arabic'),
(304, 'ar', 'zu', 'Arabic'),
(305, 'ar', 'zh_CN', 'Arabic'),
(306, 'bs', 'en_US', 'Bosnian'),
(307, 'bs', 'es_ES', 'Bosnio'),
(308, 'bs', 'de_DE', 'Bosnisch'),
(309, 'bs', 'fr_FR', 'Bosnien'),
(310, 'bs', 'ar', 'البوسنية'),
(311, 'bs', 'bs', 'Bosnian'),
(312, 'bs', 'bg_BG', 'Bosnian'),
(313, 'bs', 'ca', 'Bosnian'),
(314, 'bs', 'cs_CZ', 'Bosnian'),
(315, 'bs', 'sk_SK', 'Bosniačtina'),
(316, 'bs', 'cy', 'Bosnian'),
(317, 'bs', 'da_DK', 'Bosnian'),
(318, 'bs', 'el', 'Βοσνιακα'),
(319, 'bs', 'eo', 'Bosnian'),
(320, 'bs', 'et', 'Bosnian'),
(321, 'bs', 'eu', 'Bosnian'),
(322, 'bs', 'fa_IR', 'Bosnian'),
(323, 'bs', 'fi_FI', 'bosnia'),
(324, 'bs', 'ga', 'Bosnian'),
(325, 'bs', 'he_IL', 'Bosnian'),
(326, 'bs', 'hi', 'Bosnian'),
(327, 'bs', 'hr', 'Bosnian'),
(328, 'bs', 'hu_HU', 'bosnyák'),
(329, 'bs', 'hy', 'Bosnian'),
(330, 'bs', 'id_ID', 'Bosnian'),
(331, 'bs', 'is_IS', 'Bosnian'),
(332, 'bs', 'it_IT', 'Bosniaco'),
(333, 'bs', 'ja', 'ボスニア語'),
(334, 'bs', 'ko_KR', '보즈니아어'),
(335, 'bs', 'ku', 'Bosnian'),
(336, 'bs', 'la', 'Bosnian'),
(337, 'bs', 'lv', 'Bosnian'),
(338, 'bs', 'lt', 'Bosnian'),
(339, 'bs', 'mk_MK', 'Bosnian'),
(340, 'bs', 'mt', 'Bosnian'),
(341, 'bs', 'mo', 'Bosnian'),
(342, 'bs', 'mn', 'Bosnian'),
(343, 'bs', 'ne', 'Bosnian'),
(344, 'bs', 'nl_NL', 'Bosnisch'),
(345, 'bs', 'nb_NO', 'Bosnian'),
(346, 'bs', 'pa', 'Bosnian'),
(347, 'bs', 'pl_PL', 'bośniacki'),
(348, 'bs', 'pt_PT', 'Bósnio'),
(349, 'bs', 'qu', 'Bosnian'),
(350, 'bs', 'ro_RO', 'Bosniacă'),
(351, 'bs', 'ru_RU', 'Боснийский'),
(352, 'bs', 'sl_SI', 'Bosnian'),
(353, 'bs', 'so', 'Bosnian'),
(354, 'bs', 'sq', 'Bosnian'),
(355, 'bs', 'sr_RS', 'Bosnian'),
(356, 'bs', 'sv_SE', 'Bosniska'),
(357, 'bs', 'ta', 'Bosnian'),
(358, 'bs', 'th', 'บอสเนียน'),
(359, 'bs', 'tr', 'Boşnakça'),
(360, 'bs', 'uk_UA', 'Bosnian'),
(361, 'bs', 'ur', 'Bosnian'),
(362, 'bs', 'uz_UZ', 'Bosnian'),
(363, 'bs', 'vi', 'Bosnian'),
(364, 'bs', 'yi', 'Bosnian'),
(365, 'bs', 'zu', 'Bosnian'),
(366, 'bs', 'zh_CN', 'Bosnian'),
(367, 'bg_BG', 'en_US', 'Bulgarian'),
(368, 'bg_BG', 'es_ES', 'Búlgaro'),
(369, 'bg_BG', 'de_DE', 'Bulgarisch'),
(370, 'bg_BG', 'fr_FR', 'Bulgare'),
(371, 'bg_BG', 'ar', 'البلغارية'),
(372, 'bg_BG', 'bs', 'Bulgarian'),
(373, 'bg_BG', 'bg_BG', 'Bulgarian'),
(374, 'bg_BG', 'ca', 'Bulgarian'),
(375, 'bg_BG', 'cs_CZ', 'Bulgarian'),
(376, 'bg_BG', 'sk_SK', 'Bulharčina'),
(377, 'bg_BG', 'cy', 'Bulgarian'),
(378, 'bg_BG', 'da_DK', 'Bulgarian'),
(379, 'bg_BG', 'el', 'Βουλγαρικα'),
(380, 'bg_BG', 'eo', 'Bulgarian'),
(381, 'bg_BG', 'et', 'Bulgarian'),
(382, 'bg_BG', 'eu', 'Bulgarian'),
(383, 'bg_BG', 'fa_IR', 'Bulgarian'),
(384, 'bg_BG', 'fi_FI', 'bulgaria'),
(385, 'bg_BG', 'ga', 'Bulgarian'),
(386, 'bg_BG', 'he_IL', 'Bulgarian'),
(387, 'bg_BG', 'hi', 'Bulgarian'),
(388, 'bg_BG', 'hr', 'Bulgarian'),
(389, 'bg_BG', 'hu_HU', 'bolgár'),
(390, 'bg_BG', 'hy', 'Bulgarian'),
(391, 'bg_BG', 'id_ID', 'Bulgarian'),
(392, 'bg_BG', 'is_IS', 'Bulgarian'),
(393, 'bg_BG', 'it_IT', 'Bulgaro'),
(394, 'bg_BG', 'ja', 'ブルガリア語'),
(395, 'bg_BG', 'ko_KR', '불가리아어'),
(396, 'bg_BG', 'ku', 'Bulgarian'),
(397, 'bg_BG', 'la', 'Bulgarian'),
(398, 'bg_BG', 'lv', 'Bulgarian'),
(399, 'bg_BG', 'lt', 'Bulgarian'),
(400, 'bg_BG', 'mk_MK', 'Bulgarian'),
(401, 'bg_BG', 'mt', 'Bulgarian'),
(402, 'bg_BG', 'mo', 'Bulgarian'),
(403, 'bg_BG', 'mn', 'Bulgarian'),
(404, 'bg_BG', 'ne', 'Bulgarian'),
(405, 'bg_BG', 'nl_NL', 'Bulgaars'),
(406, 'bg_BG', 'nb_NO', 'Bulgarian'),
(407, 'bg_BG', 'pa', 'Bulgarian'),
(408, 'bg_BG', 'pl_PL', 'bułgarski'),
(409, 'bg_BG', 'pt_PT', 'Búlgaro'),
(410, 'bg_BG', 'qu', 'Bulgarian'),
(411, 'bg_BG', 'ro_RO', 'Bulgară'),
(412, 'bg_BG', 'ru_RU', 'Болгарский'),
(413, 'bg_BG', 'sl_SI', 'Bulgarian'),
(414, 'bg_BG', 'so', 'Bulgarian'),
(415, 'bg_BG', 'sq', 'Bulgarian'),
(416, 'bg_BG', 'sr_RS', 'Bulgarian'),
(417, 'bg_BG', 'sv_SE', 'Bulgariska'),
(418, 'bg_BG', 'ta', 'Bulgarian'),
(419, 'bg_BG', 'th', 'บัลแกเรียน'),
(420, 'bg_BG', 'tr', 'Bulgarca'),
(421, 'bg_BG', 'uk_UA', 'Bulgarian'),
(422, 'bg_BG', 'ur', 'Bulgarian'),
(423, 'bg_BG', 'uz_UZ', 'Bulgarian'),
(424, 'bg_BG', 'vi', 'Bulgarian'),
(425, 'bg_BG', 'yi', 'Bulgarian'),
(426, 'bg_BG', 'zu', 'Bulgarian'),
(427, 'bg_BG', 'zh_CN', 'Bulgarian'),
(428, 'ca', 'en_US', 'Catalan'),
(429, 'ca', 'es_ES', 'Catalán'),
(430, 'ca', 'de_DE', 'Katalanisch'),
(431, 'ca', 'fr_FR', 'Catalan'),
(432, 'ca', 'ar', 'الكاتالوينية'),
(433, 'ca', 'bs', 'Catalan'),
(434, 'ca', 'bg_BG', 'Catalan'),
(435, 'ca', 'ca', 'Català'),
(436, 'ca', 'cs_CZ', 'Catalan'),
(437, 'ca', 'sk_SK', 'Katalánčina'),
(438, 'ca', 'cy', 'Catalan'),
(439, 'ca', 'da_DK', 'Catalan'),
(440, 'ca', 'el', 'Καταλανικα'),
(441, 'ca', 'eo', 'Catalan'),
(442, 'ca', 'et', 'Catalan'),
(443, 'ca', 'eu', 'Catalan'),
(444, 'ca', 'fa_IR', 'Catalan'),
(445, 'ca', 'fi_FI', 'katalaani'),
(446, 'ca', 'ga', 'Catalan'),
(447, 'ca', 'he_IL', 'Catalan'),
(448, 'ca', 'hi', 'Catalan'),
(449, 'ca', 'hr', 'Catalan'),
(450, 'ca', 'hu_HU', 'katalán'),
(451, 'ca', 'hy', 'Catalan'),
(452, 'ca', 'id_ID', 'Catalan'),
(453, 'ca', 'is_IS', 'Catalan'),
(454, 'ca', 'it_IT', 'Catalano'),
(455, 'ca', 'ja', 'カタルーニャ語'),
(456, 'ca', 'ko_KR', '카탈로니아어'),
(457, 'ca', 'ku', 'Catalan'),
(458, 'ca', 'la', 'Catalan'),
(459, 'ca', 'lv', 'Catalan'),
(460, 'ca', 'lt', 'Catalan'),
(461, 'ca', 'mk_MK', 'Catalan'),
(462, 'ca', 'mt', 'Catalan'),
(463, 'ca', 'mo', 'Catalan'),
(464, 'ca', 'mn', 'Catalan'),
(465, 'ca', 'ne', 'Catalan'),
(466, 'ca', 'nl_NL', 'Catalaans'),
(467, 'ca', 'nb_NO', 'Catalan'),
(468, 'ca', 'pa', 'Catalan'),
(469, 'ca', 'pl_PL', 'kataloński'),
(470, 'ca', 'pt_PT', 'Catalão'),
(471, 'ca', 'qu', 'Catalan'),
(472, 'ca', 'ro_RO', 'Catalană'),
(473, 'ca', 'ru_RU', 'Каталанский'),
(474, 'ca', 'sl_SI', 'Catalan'),
(475, 'ca', 'so', 'Catalan'),
(476, 'ca', 'sq', 'Catalan'),
(477, 'ca', 'sr_RS', 'Catalan'),
(478, 'ca', 'sv_SE', 'Katalanska'),
(479, 'ca', 'ta', 'Catalan'),
(480, 'ca', 'th', 'คะตะลาน'),
(481, 'ca', 'tr', 'Katalan dili'),
(482, 'ca', 'uk_UA', 'Catalan'),
(483, 'ca', 'ur', 'Catalan'),
(484, 'ca', 'uz_UZ', 'Catalan'),
(485, 'ca', 'vi', 'Catalan'),
(486, 'ca', 'yi', 'Catalan'),
(487, 'ca', 'zu', 'Catalan'),
(488, 'ca', 'zh_CN', 'Catalan'),
(489, 'cs_CZ', 'en_US', 'Czech'),
(490, 'cs_CZ', 'es_ES', 'Checo'),
(491, 'cs_CZ', 'de_DE', 'Tschechisch'),
(492, 'cs_CZ', 'fr_FR', 'Tchèque'),
(493, 'cs_CZ', 'ar', 'التشيكية'),
(494, 'cs_CZ', 'bs', 'Czech'),
(495, 'cs_CZ', 'bg_BG', 'Czech'),
(496, 'cs_CZ', 'ca', 'Czech'),
(497, 'cs_CZ', 'cs_CZ', 'Čeština'),
(498, 'cs_CZ', 'sk_SK', 'Čeština'),
(499, 'cs_CZ', 'cy', 'Czech'),
(500, 'cs_CZ', 'da_DK', 'Czech'),
(501, 'cs_CZ', 'el', 'Τσεχικη'),
(502, 'cs_CZ', 'eo', 'Czech'),
(503, 'cs_CZ', 'et', 'Czech'),
(504, 'cs_CZ', 'eu', 'Czech'),
(505, 'cs_CZ', 'fa_IR', 'Czech'),
(506, 'cs_CZ', 'fi_FI', 'tsekki'),
(507, 'cs_CZ', 'ga', 'Czech'),
(508, 'cs_CZ', 'he_IL', 'Czech'),
(509, 'cs_CZ', 'hi', 'Czech'),
(510, 'cs_CZ', 'hr', 'Czech'),
(511, 'cs_CZ', 'hu_HU', 'cseh'),
(512, 'cs_CZ', 'hy', 'Czech'),
(513, 'cs_CZ', 'id_ID', 'Czech'),
(514, 'cs_CZ', 'is_IS', 'Czech'),
(515, 'cs_CZ', 'it_IT', 'Ceco'),
(516, 'cs_CZ', 'ja', 'チェコ語'),
(517, 'cs_CZ', 'ko_KR', '체코슬로바키아어'),
(518, 'cs_CZ', 'ku', 'Czech'),
(519, 'cs_CZ', 'la', 'Czech'),
(520, 'cs_CZ', 'lv', 'Czech'),
(521, 'cs_CZ', 'lt', 'Czech'),
(522, 'cs_CZ', 'mk_MK', 'Czech'),
(523, 'cs_CZ', 'mt', 'Czech'),
(524, 'cs_CZ', 'mo', 'Czech'),
(525, 'cs_CZ', 'mn', 'Czech'),
(526, 'cs_CZ', 'ne', 'Czech'),
(527, 'cs_CZ', 'nl_NL', 'Tsjechisch'),
(528, 'cs_CZ', 'nb_NO', 'Czech'),
(529, 'cs_CZ', 'pa', 'Czech'),
(530, 'cs_CZ', 'pl_PL', 'czeski'),
(531, 'cs_CZ', 'pt_PT', 'Checa'),
(532, 'cs_CZ', 'qu', 'Czech'),
(533, 'cs_CZ', 'ro_RO', 'Cehă'),
(534, 'cs_CZ', 'ru_RU', 'Чешский'),
(535, 'cs_CZ', 'sl_SI', 'Czech'),
(536, 'cs_CZ', 'so', 'Czech'),
(537, 'cs_CZ', 'sq', 'Czech'),
(538, 'cs_CZ', 'sr_RS', 'Czech'),
(539, 'cs_CZ', 'sv_SE', 'Tjeckiska'),
(540, 'cs_CZ', 'ta', 'Czech'),
(541, 'cs_CZ', 'th', 'เช็ก'),
(542, 'cs_CZ', 'tr', 'Çekçe'),
(543, 'cs_CZ', 'uk_UA', 'Czech'),
(544, 'cs_CZ', 'ur', 'Czech'),
(545, 'cs_CZ', 'uz_UZ', 'Czech'),
(546, 'cs_CZ', 'vi', 'Czech'),
(547, 'cs_CZ', 'yi', 'Czech'),
(548, 'cs_CZ', 'zu', 'Czech'),
(549, 'cs_CZ', 'zh_CN', 'Czech'),
(550, 'sk_SK', 'en_US', 'Slovak'),
(551, 'sk_SK', 'es_ES', 'Eslavo'),
(552, 'sk_SK', 'de_DE', 'Slawisch'),
(553, 'sk_SK', 'fr_FR', 'Slave'),
(554, 'sk_SK', 'ar', 'السلافية'),
(555, 'sk_SK', 'bs', 'Slovak'),
(556, 'sk_SK', 'bg_BG', 'Slovak'),
(557, 'sk_SK', 'ca', 'Slovak'),
(558, 'sk_SK', 'cs_CZ', 'Slovak'),
(559, 'sk_SK', 'sk_SK', 'Slovenčina'),
(560, 'sk_SK', 'cy', 'Slovak'),
(561, 'sk_SK', 'da_DK', 'Slovak'),
(562, 'sk_SK', 'el', 'Σλαβικη'),
(563, 'sk_SK', 'eo', 'Slovak'),
(564, 'sk_SK', 'et', 'Slovak'),
(565, 'sk_SK', 'eu', 'Slovak'),
(566, 'sk_SK', 'fa_IR', 'Slovak'),
(567, 'sk_SK', 'fi_FI', 'slaavi'),
(568, 'sk_SK', 'ga', 'Slovak'),
(569, 'sk_SK', 'he_IL', 'Slavic'),
(570, 'sk_SK', 'hi', 'Slovak'),
(571, 'sk_SK', 'hr', 'Slovak'),
(572, 'sk_SK', 'hu_HU', 'szláv'),
(573, 'sk_SK', 'hy', 'Slovak'),
(574, 'sk_SK', 'id_ID', 'Slovak'),
(575, 'sk_SK', 'is_IS', 'Slovak'),
(576, 'sk_SK', 'it_IT', 'Slavo'),
(577, 'sk_SK', 'ja', 'スラヴ語派'),
(578, 'sk_SK', 'ko_KR', '슬라브어'),
(579, 'sk_SK', 'ku', 'Slovak'),
(580, 'sk_SK', 'la', 'Slovak'),
(581, 'sk_SK', 'lv', 'Slovak'),
(582, 'sk_SK', 'lt', 'Slovak'),
(583, 'sk_SK', 'mk_MK', 'Slovak'),
(584, 'sk_SK', 'mt', 'Slovak'),
(585, 'sk_SK', 'mo', 'Slovak'),
(586, 'sk_SK', 'mn', 'Slovak'),
(587, 'sk_SK', 'ne', 'Slovak'),
(588, 'sk_SK', 'nl_NL', 'Slavisch'),
(589, 'sk_SK', 'nb_NO', 'Slovak'),
(590, 'sk_SK', 'pa', 'Slovak'),
(591, 'sk_SK', 'pl_PL', 'słowiański'),
(592, 'sk_SK', 'pt_PT', 'Eslava'),
(593, 'sk_SK', 'qu', 'Slovak'),
(594, 'sk_SK', 'ro_RO', 'Slavă'),
(595, 'sk_SK', 'ru_RU', 'Славянский'),
(596, 'sk_SK', 'sl_SI', 'Slovak'),
(597, 'sk_SK', 'so', 'Slovak'),
(598, 'sk_SK', 'sq', 'Slovak'),
(599, 'sk_SK', 'sr_RS', 'Slovak'),
(600, 'sk_SK', 'sv_SE', 'Slavisk'),
(601, 'sk_SK', 'ta', 'Slovak'),
(602, 'sk_SK', 'th', 'สลาวิก'),
(603, 'sk_SK', 'tr', 'Slav dili'),
(604, 'sk_SK', 'uk_UA', 'Slovak'),
(605, 'sk_SK', 'ur', 'Slovak'),
(606, 'sk_SK', 'uz_UZ', 'Slovak'),
(607, 'sk_SK', 'vi', 'Slovak'),
(608, 'sk_SK', 'yi', 'Slovak'),
(609, 'sk_SK', 'zu', 'Slovak'),
(610, 'sk_SK', 'zh_CN', 'Slovak'),
(611, 'cy', 'en_US', 'Welsh'),
(612, 'cy', 'es_ES', 'Galés'),
(613, 'cy', 'de_DE', 'Walisisch'),
(614, 'cy', 'fr_FR', 'Gallois'),
(615, 'cy', 'ar', 'الولزية'),
(616, 'cy', 'bs', 'Welsh'),
(617, 'cy', 'bg_BG', 'Welsh'),
(618, 'cy', 'ca', 'Welsh'),
(619, 'cy', 'cs_CZ', 'Welsh'),
(620, 'cy', 'sk_SK', 'Welština'),
(621, 'cy', 'cy', 'Cymraeg'),
(622, 'cy', 'da_DK', 'Welsh'),
(623, 'cy', 'el', 'Welsh'),
(624, 'cy', 'eo', 'Welsh'),
(625, 'cy', 'et', 'Welsh'),
(626, 'cy', 'eu', 'Welsh'),
(627, 'cy', 'fa_IR', 'Welsh'),
(628, 'cy', 'fi_FI', 'kymri'),
(629, 'cy', 'ga', 'Welsh'),
(630, 'cy', 'he_IL', 'Welsh'),
(631, 'cy', 'hi', 'Welsh'),
(632, 'cy', 'hr', 'Welsh'),
(633, 'cy', 'hu_HU', 'vels'),
(634, 'cy', 'hy', 'Welsh'),
(635, 'cy', 'id_ID', 'Welsh'),
(636, 'cy', 'is_IS', 'Welsh'),
(637, 'cy', 'it_IT', 'Gallese'),
(638, 'cy', 'ja', 'ウェールズ語'),
(639, 'cy', 'ko_KR', '웨일즈어'),
(640, 'cy', 'ku', 'Welsh'),
(641, 'cy', 'la', 'Welsh'),
(642, 'cy', 'lv', 'Welsh'),
(643, 'cy', 'lt', 'Welsh'),
(644, 'cy', 'mk_MK', 'Welsh'),
(645, 'cy', 'mt', 'Welsh'),
(646, 'cy', 'mo', 'Welsh'),
(647, 'cy', 'mn', 'Welsh'),
(648, 'cy', 'ne', 'Welsh'),
(649, 'cy', 'nl_NL', 'Welsh'),
(650, 'cy', 'nb_NO', 'Welsh'),
(651, 'cy', 'pa', 'Welsh'),
(652, 'cy', 'pl_PL', 'walijski'),
(653, 'cy', 'pt_PT', 'Welsh'),
(654, 'cy', 'qu', 'Welsh'),
(655, 'cy', 'ro_RO', 'Galeză'),
(656, 'cy', 'ru_RU', 'Валлийский'),
(657, 'cy', 'sl_SI', 'Welsh'),
(658, 'cy', 'so', 'Welsh'),
(659, 'cy', 'sq', 'Welsh'),
(660, 'cy', 'sr_RS', 'Welsh'),
(661, 'cy', 'sv_SE', 'Walesiska'),
(662, 'cy', 'ta', 'Welsh'),
(663, 'cy', 'th', 'เวลช์'),
(664, 'cy', 'tr', 'Galce'),
(665, 'cy', 'uk_UA', 'Welsh'),
(666, 'cy', 'ur', 'Welsh'),
(667, 'cy', 'uz_UZ', 'Welsh'),
(668, 'cy', 'vi', 'Welsh'),
(669, 'cy', 'yi', 'Welsh'),
(670, 'cy', 'zu', 'Welsh'),
(671, 'cy', 'zh_CN', 'Welsh'),
(672, 'da_DK', 'en_US', 'Danish'),
(673, 'da_DK', 'es_ES', 'Danés'),
(674, 'da_DK', 'de_DE', 'Dänisch'),
(675, 'da_DK', 'fr_FR', 'Danois'),
(676, 'da_DK', 'ar', 'الدانماركية'),
(677, 'da_DK', 'bs', 'Danish'),
(678, 'da_DK', 'bg_BG', 'Danish'),
(679, 'da_DK', 'ca', 'Danish'),
(680, 'da_DK', 'cs_CZ', 'Danish'),
(681, 'da_DK', 'sk_SK', 'Dánčina'),
(682, 'da_DK', 'cy', 'Danish'),
(683, 'da_DK', 'da_DK', 'Dansk'),
(684, 'da_DK', 'el', 'Δανεζικα'),
(685, 'da_DK', 'eo', 'Danish'),
(686, 'da_DK', 'et', 'Danish'),
(687, 'da_DK', 'eu', 'Danish'),
(688, 'da_DK', 'fa_IR', 'Danish'),
(689, 'da_DK', 'fi_FI', 'tanska'),
(690, 'da_DK', 'ga', 'Danish'),
(691, 'da_DK', 'he_IL', 'דנית'),
(692, 'da_DK', 'hi', 'Danish'),
(693, 'da_DK', 'hr', 'Danish'),
(694, 'da_DK', 'hu_HU', 'dán'),
(695, 'da_DK', 'hy', 'Danish'),
(696, 'da_DK', 'id_ID', 'Danish'),
(697, 'da_DK', 'is_IS', 'Danish'),
(698, 'da_DK', 'it_IT', 'Danese'),
(699, 'da_DK', 'ja', 'デンマーク語'),
(700, 'da_DK', 'ko_KR', '덴마크어'),
(701, 'da_DK', 'ku', 'Danish'),
(702, 'da_DK', 'la', 'Danish'),
(703, 'da_DK', 'lv', 'Danish'),
(704, 'da_DK', 'lt', 'Danish'),
(705, 'da_DK', 'mk_MK', 'Danish'),
(706, 'da_DK', 'mt', 'Danish'),
(707, 'da_DK', 'mo', 'Danish'),
(708, 'da_DK', 'mn', 'Danish'),
(709, 'da_DK', 'ne', 'Danish'),
(710, 'da_DK', 'nl_NL', 'Deens'),
(711, 'da_DK', 'nb_NO', 'Danish'),
(712, 'da_DK', 'pa', 'Danish'),
(713, 'da_DK', 'pl_PL', 'duński'),
(714, 'da_DK', 'pt_PT', 'Dinamarquês'),
(715, 'da_DK', 'qu', 'Danish'),
(716, 'da_DK', 'ro_RO', 'Daneză'),
(717, 'da_DK', 'ru_RU', 'Датский'),
(718, 'da_DK', 'sl_SI', 'Danish'),
(719, 'da_DK', 'so', 'Danish'),
(720, 'da_DK', 'sq', 'Danish'),
(721, 'da_DK', 'sr_RS', 'Danish'),
(722, 'da_DK', 'sv_SE', 'Danska'),
(723, 'da_DK', 'ta', 'Danish'),
(724, 'da_DK', 'th', 'เดนมาร์ก'),
(725, 'da_DK', 'tr', 'Danca'),
(726, 'da_DK', 'uk_UA', 'Danish'),
(727, 'da_DK', 'ur', 'Danish'),
(728, 'da_DK', 'uz_UZ', 'Danish'),
(729, 'da_DK', 'vi', 'Danish'),
(730, 'da_DK', 'yi', 'Danish'),
(731, 'da_DK', 'zu', 'Danish'),
(732, 'da_DK', 'zh_CN', 'Danish'),
(733, 'el', 'en_US', 'Greek'),
(734, 'el', 'es_ES', 'Griego'),
(735, 'el', 'de_DE', 'Griechisch'),
(736, 'el', 'fr_FR', 'Grec moderne'),
(737, 'el', 'ar', 'اليونانية'),
(738, 'el', 'bs', 'Greek'),
(739, 'el', 'bg_BG', 'Greek'),
(740, 'el', 'ca', 'Greek'),
(741, 'el', 'cs_CZ', 'Greek'),
(742, 'el', 'sk_SK', 'Gréčtina'),
(743, 'el', 'cy', 'Greek'),
(744, 'el', 'da_DK', 'Greek'),
(745, 'el', 'el', 'Ελληνικα'),
(746, 'el', 'eo', 'Greek'),
(747, 'el', 'et', 'Greek'),
(748, 'el', 'eu', 'Greek'),
(749, 'el', 'fa_IR', 'Greek'),
(750, 'el', 'fi_FI', 'kreikka'),
(751, 'el', 'ga', 'Greek'),
(752, 'el', 'he_IL', 'יוונית'),
(753, 'el', 'hi', 'Greek'),
(754, 'el', 'hr', 'Greek'),
(755, 'el', 'hu_HU', 'görög'),
(756, 'el', 'hy', 'Greek'),
(757, 'el', 'id_ID', 'Greek'),
(758, 'el', 'is_IS', 'Greek'),
(759, 'el', 'it_IT', 'Greco'),
(760, 'el', 'ja', 'ギリシア語'),
(761, 'el', 'ko_KR', '그리스어'),
(762, 'el', 'ku', 'Greek'),
(763, 'el', 'la', 'Greek'),
(764, 'el', 'lv', 'Greek'),
(765, 'el', 'lt', 'Greek'),
(766, 'el', 'mk_MK', 'Greek'),
(767, 'el', 'mt', 'Greek'),
(768, 'el', 'mo', 'Greek'),
(769, 'el', 'mn', 'Greek'),
(770, 'el', 'ne', 'Greek'),
(771, 'el', 'nl_NL', 'Grieks'),
(772, 'el', 'nb_NO', 'Greek'),
(773, 'el', 'pa', 'Greek'),
(774, 'el', 'pl_PL', 'grecki'),
(775, 'el', 'pt_PT', 'Grego'),
(776, 'el', 'qu', 'Greek'),
(777, 'el', 'ro_RO', 'Greacă'),
(778, 'el', 'ru_RU', 'Греческий'),
(779, 'el', 'sl_SI', 'Greek'),
(780, 'el', 'so', 'Greek'),
(781, 'el', 'sq', 'Greek'),
(782, 'el', 'sr_RS', 'Greek'),
(783, 'el', 'sv_SE', 'Grekiska'),
(784, 'el', 'ta', 'Greek'),
(785, 'el', 'th', 'กรีก'),
(786, 'el', 'tr', 'Yunanca'),
(787, 'el', 'uk_UA', 'Greek'),
(788, 'el', 'ur', 'Greek'),
(789, 'el', 'uz_UZ', 'Greek'),
(790, 'el', 'vi', 'Greek'),
(791, 'el', 'yi', 'Greek'),
(792, 'el', 'zu', 'Greek'),
(793, 'el', 'zh_CN', 'Greek'),
(794, 'eo', 'en_US', 'Esperanto'),
(795, 'eo', 'es_ES', 'Esperanto'),
(796, 'eo', 'de_DE', 'Esperanto'),
(797, 'eo', 'fr_FR', 'Espéranto'),
(798, 'eo', 'ar', 'الاسبرانتو'),
(799, 'eo', 'bs', 'Esperanto'),
(800, 'eo', 'bg_BG', 'Esperanto'),
(801, 'eo', 'ca', 'Esperanto'),
(802, 'eo', 'cs_CZ', 'Esperanto'),
(803, 'eo', 'sk_SK', 'Esperanto'),
(804, 'eo', 'cy', 'Esperanto'),
(805, 'eo', 'da_DK', 'Esperanto'),
(806, 'eo', 'el', 'Εσπεραντο'),
(807, 'eo', 'eo', 'Esperanto'),
(808, 'eo', 'et', 'Esperanto'),
(809, 'eo', 'eu', 'Esperanto'),
(810, 'eo', 'fa_IR', 'Esperanto'),
(811, 'eo', 'fi_FI', 'esperanto'),
(812, 'eo', 'ga', 'Esperanto'),
(813, 'eo', 'he_IL', 'Esperanto'),
(814, 'eo', 'hi', 'Esperanto'),
(815, 'eo', 'hr', 'Esperanto'),
(816, 'eo', 'hu_HU', 'eszperantó'),
(817, 'eo', 'hy', 'Esperanto'),
(818, 'eo', 'id_ID', 'Esperanto'),
(819, 'eo', 'is_IS', 'Esperanto'),
(820, 'eo', 'it_IT', 'Esperanto'),
(821, 'eo', 'ja', 'エスペラント語'),
(822, 'eo', 'ko_KR', '에스페란토어'),
(823, 'eo', 'ku', 'Esperanto'),
(824, 'eo', 'la', 'Esperanto'),
(825, 'eo', 'lv', 'Esperanto'),
(826, 'eo', 'lt', 'Esperanto'),
(827, 'eo', 'mk_MK', 'Esperanto'),
(828, 'eo', 'mt', 'Esperanto'),
(829, 'eo', 'mo', 'Esperanto'),
(830, 'eo', 'mn', 'Esperanto'),
(831, 'eo', 'ne', 'Esperanto'),
(832, 'eo', 'nl_NL', 'Esperanto'),
(833, 'eo', 'nb_NO', 'Esperanto'),
(834, 'eo', 'pa', 'Esperanto'),
(835, 'eo', 'pl_PL', 'esperanto'),
(836, 'eo', 'pt_PT', 'Esperanto'),
(837, 'eo', 'qu', 'Esperanto'),
(838, 'eo', 'ro_RO', 'Esperanto'),
(839, 'eo', 'ru_RU', 'Эсперанто'),
(840, 'eo', 'sl_SI', 'Esperanto'),
(841, 'eo', 'so', 'Esperanto'),
(842, 'eo', 'sq', 'Esperanto'),
(843, 'eo', 'sr_RS', 'Esperanto'),
(844, 'eo', 'sv_SE', 'Esperanto'),
(845, 'eo', 'ta', 'Esperanto'),
(846, 'eo', 'th', 'เอสเปอรันโต'),
(847, 'eo', 'tr', 'Esperanto'),
(848, 'eo', 'uk_UA', 'Esperanto'),
(849, 'eo', 'ur', 'Esperanto'),
(850, 'eo', 'uz_UZ', 'Esperanto'),
(851, 'eo', 'vi', 'Esperanto'),
(852, 'eo', 'yi', 'Esperanto'),
(853, 'eo', 'zu', 'Esperanto'),
(854, 'eo', 'zh_CN', 'Esperanto'),
(855, 'et', 'en_US', 'Estonian'),
(856, 'et', 'es_ES', 'Estonio'),
(857, 'et', 'de_DE', 'Estnisch'),
(858, 'et', 'fr_FR', 'Estonien'),
(859, 'et', 'ar', 'الأستونية'),
(860, 'et', 'bs', 'Estonian'),
(861, 'et', 'bg_BG', 'Estonian'),
(862, 'et', 'ca', 'Estonian'),
(863, 'et', 'cs_CZ', 'Estonian'),
(864, 'et', 'sk_SK', 'Estónčina'),
(865, 'et', 'cy', 'Estonian'),
(866, 'et', 'da_DK', 'Estonian'),
(867, 'et', 'el', 'Εσθονικα'),
(868, 'et', 'eo', 'Estonian'),
(869, 'et', 'et', 'Eesti'),
(870, 'et', 'eu', 'Estonian'),
(871, 'et', 'fa_IR', 'Estonian'),
(872, 'et', 'fi_FI', 'eesti'),
(873, 'et', 'ga', 'Estonian'),
(874, 'et', 'he_IL', 'Estonian'),
(875, 'et', 'hi', 'Estonian'),
(876, 'et', 'hr', 'Estonian'),
(877, 'et', 'hu_HU', 'észt'),
(878, 'et', 'hy', 'Estonian'),
(879, 'et', 'id_ID', 'Estonian'),
(880, 'et', 'is_IS', 'Estonian'),
(881, 'et', 'it_IT', 'Estone'),
(882, 'et', 'ja', 'エストニア語'),
(883, 'et', 'ko_KR', '에스토니아어'),
(884, 'et', 'ku', 'Estonian'),
(885, 'et', 'la', 'Estonian'),
(886, 'et', 'lv', 'Estonian'),
(887, 'et', 'lt', 'Estonian'),
(888, 'et', 'mk_MK', 'Estonian'),
(889, 'et', 'mt', 'Estonian'),
(890, 'et', 'mo', 'Estonian'),
(891, 'et', 'mn', 'Estonian'),
(892, 'et', 'ne', 'Estonian'),
(893, 'et', 'nl_NL', 'Ests'),
(894, 'et', 'nb_NO', 'Estonian'),
(895, 'et', 'pa', 'Estonian'),
(896, 'et', 'pl_PL', 'estoński'),
(897, 'et', 'pt_PT', 'Estoniano'),
(898, 'et', 'qu', 'Estonian'),
(899, 'et', 'ro_RO', 'Estoniană'),
(900, 'et', 'ru_RU', 'Эстонский'),
(901, 'et', 'sl_SI', 'Estonian'),
(902, 'et', 'so', 'Estonian'),
(903, 'et', 'sq', 'Estonian'),
(904, 'et', 'sr_RS', 'Estonian'),
(905, 'et', 'sv_SE', 'Estniska'),
(906, 'et', 'ta', 'Estonian'),
(907, 'et', 'th', 'เอสโตเนียน'),
(908, 'et', 'tr', 'Estonya dili'),
(909, 'et', 'uk_UA', 'Estonian'),
(910, 'et', 'ur', 'Estonian'),
(911, 'et', 'uz_UZ', 'Estonian'),
(912, 'et', 'vi', 'Estonian'),
(913, 'et', 'yi', 'Estonian'),
(914, 'et', 'zu', 'Estonian'),
(915, 'et', 'zh_CN', 'Estonian'),
(916, 'eu', 'en_US', 'Basque'),
(917, 'eu', 'es_ES', 'Euskera'),
(918, 'eu', 'de_DE', 'Baskisch'),
(919, 'eu', 'fr_FR', 'Basque'),
(920, 'eu', 'ar', 'لغة الباسك'),
(921, 'eu', 'bs', 'Basque'),
(922, 'eu', 'bg_BG', 'Basque'),
(923, 'eu', 'ca', 'Basque'),
(924, 'eu', 'cs_CZ', 'Basque'),
(925, 'eu', 'sk_SK', 'Baskičtina'),
(926, 'eu', 'cy', 'Basque'),
(927, 'eu', 'da_DK', 'Basque'),
(928, 'eu', 'el', 'Βασκικα'),
(929, 'eu', 'eo', 'Basque'),
(930, 'eu', 'et', 'Basque'),
(931, 'eu', 'eu', 'Euskara'),
(932, 'eu', 'fa_IR', 'Basque'),
(933, 'eu', 'fi_FI', 'baski'),
(934, 'eu', 'ga', 'Basque'),
(935, 'eu', 'he_IL', 'Basque'),
(936, 'eu', 'hi', 'Basque'),
(937, 'eu', 'hr', 'Basque'),
(938, 'eu', 'hu_HU', 'baszk'),
(939, 'eu', 'hy', 'Basque'),
(940, 'eu', 'id_ID', 'Basque'),
(941, 'eu', 'is_IS', 'Basque'),
(942, 'eu', 'it_IT', 'Basco'),
(943, 'eu', 'ja', 'バスク語'),
(944, 'eu', 'ko_KR', '바스크어'),
(945, 'eu', 'ku', 'Basque'),
(946, 'eu', 'la', 'Basque'),
(947, 'eu', 'lv', 'Basque'),
(948, 'eu', 'lt', 'Basque'),
(949, 'eu', 'mk_MK', 'Basque'),
(950, 'eu', 'mt', 'Basque'),
(951, 'eu', 'mo', 'Basque'),
(952, 'eu', 'mn', 'Basque'),
(953, 'eu', 'ne', 'Basque'),
(954, 'eu', 'nl_NL', 'Baskisch'),
(955, 'eu', 'nb_NO', 'Basque'),
(956, 'eu', 'pa', 'Basque'),
(957, 'eu', 'pl_PL', 'baskijski'),
(958, 'eu', 'pt_PT', 'Basco'),
(959, 'eu', 'qu', 'Basque'),
(960, 'eu', 'ro_RO', 'Bască'),
(961, 'eu', 'ru_RU', 'Баскский'),
(962, 'eu', 'sl_SI', 'Basque'),
(963, 'eu', 'so', 'Basque'),
(964, 'eu', 'sq', 'Basque'),
(965, 'eu', 'sr_RS', 'Basque'),
(966, 'eu', 'sv_SE', 'Baskiska'),
(967, 'eu', 'ta', 'Basque'),
(968, 'eu', 'th', 'บาสค์'),
(969, 'eu', 'tr', 'Bask dili'),
(970, 'eu', 'uk_UA', 'Basque'),
(971, 'eu', 'ur', 'Basque'),
(972, 'eu', 'uz_UZ', 'Basque'),
(973, 'eu', 'vi', 'Basque'),
(974, 'eu', 'yi', 'Basque'),
(975, 'eu', 'zu', 'Basque'),
(976, 'eu', 'zh_CN', 'Basque'),
(977, 'fa_IR', 'en_US', 'Persian'),
(978, 'fa_IR', 'es_ES', 'Persa'),
(979, 'fa_IR', 'de_DE', 'Persisch'),
(980, 'fa_IR', 'fr_FR', 'Perse'),
(981, 'fa_IR', 'ar', 'الفارسية'),
(982, 'fa_IR', 'bs', 'Persian'),
(983, 'fa_IR', 'bg_BG', 'Persian'),
(984, 'fa_IR', 'ca', 'Persian'),
(985, 'fa_IR', 'cs_CZ', 'Persian'),
(986, 'fa_IR', 'sk_SK', 'Perzština'),
(987, 'fa_IR', 'cy', 'Persian'),
(988, 'fa_IR', 'da_DK', 'Persian'),
(989, 'fa_IR', 'el', 'Περσικος'),
(990, 'fa_IR', 'eo', 'Persian'),
(991, 'fa_IR', 'et', 'Persian'),
(992, 'fa_IR', 'eu', 'Persian'),
(993, 'fa_IR', 'fa_IR', 'پارسی'),
(994, 'fa_IR', 'fi_FI', 'persia'),
(995, 'fa_IR', 'ga', 'Persian'),
(996, 'fa_IR', 'he_IL', 'פרסית'),
(997, 'fa_IR', 'hi', 'Persian'),
(998, 'fa_IR', 'hr', 'Persian'),
(999, 'fa_IR', 'hu_HU', 'perzsa'),
(1000, 'fa_IR', 'hy', 'Persian'),
(1001, 'fa_IR', 'id_ID', 'Persian'),
(1002, 'fa_IR', 'is_IS', 'Persian'),
(1003, 'fa_IR', 'it_IT', 'Persiano'),
(1004, 'fa_IR', 'ja', 'ペルシア語'),
(1005, 'fa_IR', 'ko_KR', '페르시아어'),
(1006, 'fa_IR', 'ku', 'Persian'),
(1007, 'fa_IR', 'la', 'Persian'),
(1008, 'fa_IR', 'lv', 'Persian'),
(1009, 'fa_IR', 'lt', 'Persian'),
(1010, 'fa_IR', 'mk_MK', 'Persian'),
(1011, 'fa_IR', 'mt', 'Persian'),
(1012, 'fa_IR', 'mo', 'Persian'),
(1013, 'fa_IR', 'mn', 'Persian'),
(1014, 'fa_IR', 'ne', 'Persian'),
(1015, 'fa_IR', 'nl_NL', 'Perzisch'),
(1016, 'fa_IR', 'nb_NO', 'Persian'),
(1017, 'fa_IR', 'pa', 'Persian'),
(1018, 'fa_IR', 'pl_PL', 'perski'),
(1019, 'fa_IR', 'pt_PT', 'Persa'),
(1020, 'fa_IR', 'qu', 'Persian'),
(1021, 'fa_IR', 'ro_RO', 'Persană'),
(1022, 'fa_IR', 'ru_RU', 'Персидский'),
(1023, 'fa_IR', 'sl_SI', 'Persian'),
(1024, 'fa_IR', 'so', 'Persian'),
(1025, 'fa_IR', 'sq', 'Persian'),
(1026, 'fa_IR', 'sr_RS', 'Persian'),
(1027, 'fa_IR', 'sv_SE', 'Persiska'),
(1028, 'fa_IR', 'ta', 'Persian'),
(1029, 'fa_IR', 'th', 'เปอร์เซียน'),
(1030, 'fa_IR', 'tr', 'Farsça'),
(1031, 'fa_IR', 'uk_UA', 'Persian'),
(1032, 'fa_IR', 'ur', 'Persian'),
(1033, 'fa_IR', 'uz_UZ', 'Persian'),
(1034, 'fa_IR', 'vi', 'Persian'),
(1035, 'fa_IR', 'yi', 'Persian'),
(1036, 'fa_IR', 'zu', 'Persian'),
(1037, 'fa_IR', 'zh_CN', 'Persian'),
(1038, 'fi_FI', 'en_US', 'Finnish'),
(1039, 'fi_FI', 'es_ES', 'Finlandés'),
(1040, 'fi_FI', 'de_DE', 'Finnisch'),
(1041, 'fi_FI', 'fr_FR', 'Finnois'),
(1042, 'fi_FI', 'ar', 'الفنلندية'),
(1043, 'fi_FI', 'bs', 'Finnish'),
(1044, 'fi_FI', 'bg_BG', 'Finnish'),
(1045, 'fi_FI', 'ca', 'Finnish'),
(1046, 'fi_FI', 'cs_CZ', 'Finnish'),
(1047, 'fi_FI', 'sk_SK', 'Fínština'),
(1048, 'fi_FI', 'cy', 'Finnish'),
(1049, 'fi_FI', 'da_DK', 'Finnish'),
(1050, 'fi_FI', 'el', 'Φινλανδικη'),
(1051, 'fi_FI', 'eo', 'Finnish'),
(1052, 'fi_FI', 'et', 'Finnish'),
(1053, 'fi_FI', 'eu', 'Finnish'),
(1054, 'fi_FI', 'fa_IR', 'Finnish'),
(1055, 'fi_FI', 'fi_FI', 'Suomi'),
(1056, 'fi_FI', 'ga', 'Finnish'),
(1057, 'fi_FI', 'he_IL', 'פינית'),
(1058, 'fi_FI', 'hi', 'Finnish'),
(1059, 'fi_FI', 'hr', 'Finnish'),
(1060, 'fi_FI', 'hu_HU', 'finn'),
(1061, 'fi_FI', 'hy', 'Finnish'),
(1062, 'fi_FI', 'id_ID', 'Finnish'),
(1063, 'fi_FI', 'is_IS', 'Finnish'),
(1064, 'fi_FI', 'it_IT', 'Finlandese'),
(1065, 'fi_FI', 'ja', 'フィンランド語'),
(1066, 'fi_FI', 'ko_KR', '핀란드어'),
(1067, 'fi_FI', 'ku', 'Finnish'),
(1068, 'fi_FI', 'la', 'Finnish'),
(1069, 'fi_FI', 'lv', 'Finnish'),
(1070, 'fi_FI', 'lt', 'Finnish'),
(1071, 'fi_FI', 'mk_MK', 'Finnish'),
(1072, 'fi_FI', 'mt', 'Finnish'),
(1073, 'fi_FI', 'mo', 'Finnish'),
(1074, 'fi_FI', 'mn', 'Finnish'),
(1075, 'fi_FI', 'ne', 'Finnish'),
(1076, 'fi_FI', 'nl_NL', 'Fins'),
(1077, 'fi_FI', 'nb_NO', 'Finnish'),
(1078, 'fi_FI', 'pa', 'Finnish'),
(1079, 'fi_FI', 'pl_PL', 'fiński'),
(1080, 'fi_FI', 'pt_PT', 'Finlandês'),
(1081, 'fi_FI', 'qu', 'Finnish'),
(1082, 'fi_FI', 'ro_RO', 'Finlandeză'),
(1083, 'fi_FI', 'ru_RU', 'Финский'),
(1084, 'fi_FI', 'sl_SI', 'Finnish'),
(1085, 'fi_FI', 'so', 'Finnish'),
(1086, 'fi_FI', 'sq', 'Finnish'),
(1087, 'fi_FI', 'sr_RS', 'Finnish'),
(1088, 'fi_FI', 'sv_SE', 'Finska'),
(1089, 'fi_FI', 'ta', 'Finnish'),
(1090, 'fi_FI', 'th', 'ฟินนิช'),
(1091, 'fi_FI', 'tr', 'Fince'),
(1092, 'fi_FI', 'uk_UA', 'Finnish'),
(1093, 'fi_FI', 'ur', 'Finnish'),
(1094, 'fi_FI', 'uz_UZ', 'Finnish'),
(1095, 'fi_FI', 'vi', 'Finnish'),
(1096, 'fi_FI', 'yi', 'Finnish'),
(1097, 'fi_FI', 'zu', 'Finnish'),
(1098, 'fi_FI', 'zh_CN', 'Finnish'),
(1099, 'ga', 'en_US', 'Irish'),
(1100, 'ga', 'es_ES', 'Irlandés'),
(1101, 'ga', 'de_DE', 'Irisch'),
(1102, 'ga', 'fr_FR', 'Irlandais'),
(1103, 'ga', 'ar', 'الأيرلندية'),
(1104, 'ga', 'bs', 'Irish'),
(1105, 'ga', 'bg_BG', 'Irish'),
(1106, 'ga', 'ca', 'Irish'),
(1107, 'ga', 'cs_CZ', 'Irish'),
(1108, 'ga', 'sk_SK', 'Írština'),
(1109, 'ga', 'cy', 'Irish'),
(1110, 'ga', 'da_DK', 'Irish'),
(1111, 'ga', 'el', 'Ιρλανδικα'),
(1112, 'ga', 'eo', 'Irish'),
(1113, 'ga', 'et', 'Irish'),
(1114, 'ga', 'eu', 'Irish'),
(1115, 'ga', 'fa_IR', 'Irish'),
(1116, 'ga', 'fi_FI', 'iiri'),
(1117, 'ga', 'ga', 'Gaeilge'),
(1118, 'ga', 'he_IL', 'אירית'),
(1119, 'ga', 'hi', 'Irish'),
(1120, 'ga', 'hr', 'Irish'),
(1121, 'ga', 'hu_HU', 'ír'),
(1122, 'ga', 'hy', 'Irish'),
(1123, 'ga', 'id_ID', 'Irish'),
(1124, 'ga', 'is_IS', 'Irish'),
(1125, 'ga', 'it_IT', 'Irlandese'),
(1126, 'ga', 'ja', 'アイルランド語'),
(1127, 'ga', 'ko_KR', '아일랜드어'),
(1128, 'ga', 'ku', 'Irish'),
(1129, 'ga', 'la', 'Irish'),
(1130, 'ga', 'lv', 'Irish'),
(1131, 'ga', 'lt', 'Irish'),
(1132, 'ga', 'mk_MK', 'Irish'),
(1133, 'ga', 'mt', 'Irish'),
(1134, 'ga', 'mo', 'Irish'),
(1135, 'ga', 'mn', 'Irish'),
(1136, 'ga', 'ne', 'Irish'),
(1137, 'ga', 'nl_NL', 'Iers'),
(1138, 'ga', 'nb_NO', 'Irish'),
(1139, 'ga', 'pa', 'Irish'),
(1140, 'ga', 'pl_PL', 'irlandzki'),
(1141, 'ga', 'pt_PT', 'Irlandês'),
(1142, 'ga', 'qu', 'Irish'),
(1143, 'ga', 'ro_RO', 'Irlandeză'),
(1144, 'ga', 'ru_RU', 'Ирландский'),
(1145, 'ga', 'sl_SI', 'Irish'),
(1146, 'ga', 'so', 'Irish'),
(1147, 'ga', 'sq', 'Irish'),
(1148, 'ga', 'sr_RS', 'Irish'),
(1149, 'ga', 'sv_SE', 'Irländska'),
(1150, 'ga', 'ta', 'Irish'),
(1151, 'ga', 'th', 'ไอริช'),
(1152, 'ga', 'tr', 'İrlanda dili'),
(1153, 'ga', 'uk_UA', 'Irish'),
(1154, 'ga', 'ur', 'Irish'),
(1155, 'ga', 'uz_UZ', 'Irish'),
(1156, 'ga', 'vi', 'Irish'),
(1157, 'ga', 'yi', 'Irish'),
(1158, 'ga', 'zu', 'Irish'),
(1159, 'ga', 'zh_CN', 'Irish'),
(1160, 'he_IL', 'en_US', 'Hebrew'),
(1161, 'he_IL', 'es_ES', 'Hebreo'),
(1162, 'he_IL', 'de_DE', 'Hebräisch'),
(1163, 'he_IL', 'fr_FR', 'Hébreu'),
(1164, 'he_IL', 'ar', 'العبرية'),
(1165, 'he_IL', 'bs', 'Hebrew'),
(1166, 'he_IL', 'bg_BG', 'Hebrew'),
(1167, 'he_IL', 'ca', 'Hebrew'),
(1168, 'he_IL', 'cs_CZ', 'Hebrew'),
(1169, 'he_IL', 'sk_SK', 'Hebrejčina'),
(1170, 'he_IL', 'cy', 'Hebrew'),
(1171, 'he_IL', 'da_DK', 'Hebrew'),
(1172, 'he_IL', 'el', 'Εβραικα'),
(1173, 'he_IL', 'eo', 'Hebrew'),
(1174, 'he_IL', 'et', 'Hebrew'),
(1175, 'he_IL', 'eu', 'Hebrew'),
(1176, 'he_IL', 'fa_IR', 'Hebrew'),
(1177, 'he_IL', 'fi_FI', 'heprea'),
(1178, 'he_IL', 'ga', 'Hebrew'),
(1179, 'he_IL', 'he_IL', 'עברית'),
(1180, 'he_IL', 'hi', 'Hebrew'),
(1181, 'he_IL', 'hr', 'Hebrew'),
(1182, 'he_IL', 'hu_HU', 'héber'),
(1183, 'he_IL', 'hy', 'Hebrew'),
(1184, 'he_IL', 'id_ID', 'Hebrew'),
(1185, 'he_IL', 'is_IS', 'Hebrew'),
(1186, 'he_IL', 'it_IT', 'Ebraico'),
(1187, 'he_IL', 'ja', 'ヘブライ語'),
(1188, 'he_IL', 'ko_KR', '히브리어'),
(1189, 'he_IL', 'ku', 'Hebrew'),
(1190, 'he_IL', 'la', 'Hebrew'),
(1191, 'he_IL', 'lv', 'Hebrew'),
(1192, 'he_IL', 'lt', 'Hebrew'),
(1193, 'he_IL', 'mk_MK', 'Hebrew'),
(1194, 'he_IL', 'mt', 'Hebrew'),
(1195, 'he_IL', 'mo', 'Hebrew'),
(1196, 'he_IL', 'mn', 'Hebrew'),
(1197, 'he_IL', 'ne', 'Hebrew'),
(1198, 'he_IL', 'nl_NL', 'Hebreeuws'),
(1199, 'he_IL', 'nb_NO', 'Hebrew'),
(1200, 'he_IL', 'pa', 'Hebrew'),
(1201, 'he_IL', 'pl_PL', 'hebrajski'),
(1202, 'he_IL', 'pt_PT', 'Hebraico'),
(1203, 'he_IL', 'qu', 'Hebrew'),
(1204, 'he_IL', 'ro_RO', 'Ebraică'),
(1205, 'he_IL', 'ru_RU', 'Иврит'),
(1206, 'he_IL', 'sl_SI', 'Hebrew'),
(1207, 'he_IL', 'so', 'Hebrew'),
(1208, 'he_IL', 'sq', 'Hebrew'),
(1209, 'he_IL', 'sr_RS', 'Hebrew'),
(1210, 'he_IL', 'sv_SE', 'Hebreiska'),
(1211, 'he_IL', 'ta', 'Hebrew'),
(1212, 'he_IL', 'th', 'ฮิบรู'),
(1213, 'he_IL', 'tr', 'İbranice'),
(1214, 'he_IL', 'uk_UA', 'Hebrew'),
(1215, 'he_IL', 'ur', 'Hebrew'),
(1216, 'he_IL', 'uz_UZ', 'Hebrew'),
(1217, 'he_IL', 'vi', 'Hebrew'),
(1218, 'he_IL', 'yi', 'Hebrew'),
(1219, 'he_IL', 'zu', 'Hebrew'),
(1220, 'he_IL', 'zh_CN', 'Hebrew'),
(1221, 'hi', 'en_US', 'Hindi'),
(1222, 'hi', 'es_ES', 'Hindi'),
(1223, 'hi', 'de_DE', 'Hindi'),
(1224, 'hi', 'fr_FR', 'Hindi'),
(1225, 'hi', 'ar', 'الهندية'),
(1226, 'hi', 'bs', 'Hindi'),
(1227, 'hi', 'bg_BG', 'Hindi'),
(1228, 'hi', 'ca', 'Hindi'),
(1229, 'hi', 'cs_CZ', 'Hindi'),
(1230, 'hi', 'sk_SK', 'Hindčina'),
(1231, 'hi', 'cy', 'Hindi'),
(1232, 'hi', 'da_DK', 'Hindi'),
(1233, 'hi', 'el', 'Ινδικα'),
(1234, 'hi', 'eo', 'Hindi'),
(1235, 'hi', 'et', 'Hindi'),
(1236, 'hi', 'eu', 'Hindi'),
(1237, 'hi', 'fa_IR', 'Hindi'),
(1238, 'hi', 'fi_FI', 'hindi'),
(1239, 'hi', 'ga', 'Hindi'),
(1240, 'hi', 'he_IL', 'הודית'),
(1241, 'hi', 'hi', 'हिन्दी'),
(1242, 'hi', 'hr', 'Hindi'),
(1243, 'hi', 'hu_HU', 'hindi'),
(1244, 'hi', 'hy', 'Hindi'),
(1245, 'hi', 'id_ID', 'Hindi'),
(1246, 'hi', 'is_IS', 'Hindi'),
(1247, 'hi', 'it_IT', 'Hindi'),
(1248, 'hi', 'ja', 'ヒンディー語'),
(1249, 'hi', 'ko_KR', '힌두어'),
(1250, 'hi', 'ku', 'Hindi'),
(1251, 'hi', 'la', 'Hindi'),
(1252, 'hi', 'lv', 'Hindi'),
(1253, 'hi', 'lt', 'Hindi'),
(1254, 'hi', 'mk_MK', 'Hindi'),
(1255, 'hi', 'mt', 'Hindi'),
(1256, 'hi', 'mo', 'Hindi'),
(1257, 'hi', 'mn', 'Hindi'),
(1258, 'hi', 'ne', 'Hindi'),
(1259, 'hi', 'nl_NL', 'Hindi'),
(1260, 'hi', 'nb_NO', 'Hindi'),
(1261, 'hi', 'pa', 'Hindi'),
(1262, 'hi', 'pl_PL', 'hindi'),
(1263, 'hi', 'pt_PT', 'Hindi'),
(1264, 'hi', 'qu', 'Hindi'),
(1265, 'hi', 'ro_RO', 'Hindi'),
(1266, 'hi', 'ru_RU', 'Хинди'),
(1267, 'hi', 'sl_SI', 'Hindi'),
(1268, 'hi', 'so', 'Hindi'),
(1269, 'hi', 'sq', 'Hindi'),
(1270, 'hi', 'sr_RS', 'Hindi'),
(1271, 'hi', 'sv_SE', 'Hindi'),
(1272, 'hi', 'ta', 'Hindi'),
(1273, 'hi', 'th', 'ฮินดิ'),
(1274, 'hi', 'tr', 'Hintçe'),
(1275, 'hi', 'uk_UA', 'Hindi'),
(1276, 'hi', 'ur', 'Hindi'),
(1277, 'hi', 'uz_UZ', 'Hindi'),
(1278, 'hi', 'vi', 'Hindi'),
(1279, 'hi', 'yi', 'Hindi'),
(1280, 'hi', 'zu', 'Hindi'),
(1281, 'hi', 'zh_CN', 'Hindi'),
(1282, 'hr', 'en_US', 'Croatian'),
(1283, 'hr', 'es_ES', 'Croata'),
(1284, 'hr', 'de_DE', 'Kroatisch'),
(1285, 'hr', 'fr_FR', 'Croate'),
(1286, 'hr', 'ar', 'الكرواتية'),
(1287, 'hr', 'bs', 'Croatian'),
(1288, 'hr', 'bg_BG', 'Croatian'),
(1289, 'hr', 'ca', 'Croatian'),
(1290, 'hr', 'cs_CZ', 'Croatian'),
(1291, 'hr', 'sk_SK', 'Chorvátština'),
(1292, 'hr', 'cy', 'Croatian'),
(1293, 'hr', 'da_DK', 'Croatian'),
(1294, 'hr', 'el', 'Κροατικα'),
(1295, 'hr', 'eo', 'Croatian'),
(1296, 'hr', 'et', 'Croatian'),
(1297, 'hr', 'eu', 'Croatian'),
(1298, 'hr', 'fa_IR', 'Croatian'),
(1299, 'hr', 'fi_FI', 'kroatia'),
(1300, 'hr', 'ga', 'Croatian'),
(1301, 'hr', 'he_IL', 'קרוטאית'),
(1302, 'hr', 'hi', 'Croatian'),
(1303, 'hr', 'hr', 'Hrvatski'),
(1304, 'hr', 'hu_HU', 'horvát'),
(1305, 'hr', 'hy', 'Croatian'),
(1306, 'hr', 'id_ID', 'Croatian'),
(1307, 'hr', 'is_IS', 'Croatian'),
(1308, 'hr', 'it_IT', 'Croato'),
(1309, 'hr', 'ja', 'クロアチア語'),
(1310, 'hr', 'ko_KR', '크로아시아어'),
(1311, 'hr', 'ku', 'Croatian'),
(1312, 'hr', 'la', 'Croatian'),
(1313, 'hr', 'lv', 'Croatian'),
(1314, 'hr', 'lt', 'Croatian'),
(1315, 'hr', 'mk_MK', 'Croatian'),
(1316, 'hr', 'mt', 'Croatian'),
(1317, 'hr', 'mo', 'Croatian'),
(1318, 'hr', 'mn', 'Croatian'),
(1319, 'hr', 'ne', 'Croatian'),
(1320, 'hr', 'nl_NL', 'Kroatisch'),
(1321, 'hr', 'nb_NO', 'Croatian'),
(1322, 'hr', 'pa', 'Croatian'),
(1323, 'hr', 'pl_PL', 'chorwacki'),
(1324, 'hr', 'pt_PT', 'Croata'),
(1325, 'hr', 'qu', 'Croatian'),
(1326, 'hr', 'ro_RO', 'Croată'),
(1327, 'hr', 'ru_RU', 'Хорватский'),
(1328, 'hr', 'sl_SI', 'Croatian'),
(1329, 'hr', 'so', 'Croatian'),
(1330, 'hr', 'sq', 'Croatian'),
(1331, 'hr', 'sr_RS', 'Croatian'),
(1332, 'hr', 'sv_SE', 'Kroatiska'),
(1333, 'hr', 'ta', 'Croatian'),
(1334, 'hr', 'th', 'โครเอเชีย'),
(1335, 'hr', 'tr', 'Hırvatça'),
(1336, 'hr', 'uk_UA', 'Croatian'),
(1337, 'hr', 'ur', 'Croatian'),
(1338, 'hr', 'uz_UZ', 'Croatian'),
(1339, 'hr', 'vi', 'Croatian'),
(1340, 'hr', 'yi', 'Croatian'),
(1341, 'hr', 'zu', 'Croatian'),
(1342, 'hr', 'zh_CN', 'Croatian'),
(1343, 'hu_HU', 'en_US', 'Hungarian'),
(1344, 'hu_HU', 'es_ES', 'Húngaro'),
(1345, 'hu_HU', 'de_DE', 'Ungarisch'),
(1346, 'hu_HU', 'fr_FR', 'Hongrois'),
(1347, 'hu_HU', 'ar', 'الهنغارية'),
(1348, 'hu_HU', 'bs', 'Hungarian'),
(1349, 'hu_HU', 'bg_BG', 'Hungarian'),
(1350, 'hu_HU', 'ca', 'Hungarian'),
(1351, 'hu_HU', 'cs_CZ', 'Hungarian'),
(1352, 'hu_HU', 'sk_SK', 'Maďarčina'),
(1353, 'hu_HU', 'cy', 'Hungarian'),
(1354, 'hu_HU', 'da_DK', 'Hungarian'),
(1355, 'hu_HU', 'el', 'Ουγγρικα'),
(1356, 'hu_HU', 'eo', 'Hungarian'),
(1357, 'hu_HU', 'et', 'Hungarian'),
(1358, 'hu_HU', 'eu', 'Hungarian'),
(1359, 'hu_HU', 'fa_IR', 'Hungarian'),
(1360, 'hu_HU', 'fi_FI', 'unkari'),
(1361, 'hu_HU', 'ga', 'Hungarian'),
(1362, 'hu_HU', 'he_IL', 'הונגרית'),
(1363, 'hu_HU', 'hi', 'Hungarian'),
(1364, 'hu_HU', 'hr', 'Hungarian'),
(1365, 'hu_HU', 'hu_HU', 'Magyar'),
(1366, 'hu_HU', 'hy', 'Hungarian'),
(1367, 'hu_HU', 'id_ID', 'Hungarian'),
(1368, 'hu_HU', 'is_IS', 'Hungarian'),
(1369, 'hu_HU', 'it_IT', 'Ungherese'),
(1370, 'hu_HU', 'ja', 'ハンガリー語'),
(1371, 'hu_HU', 'ko_KR', '헝가리어'),
(1372, 'hu_HU', 'ku', 'Hungarian'),
(1373, 'hu_HU', 'la', 'Hungarian'),
(1374, 'hu_HU', 'lv', 'Hungarian'),
(1375, 'hu_HU', 'lt', 'Hungarian'),
(1376, 'hu_HU', 'mk_MK', 'Hungarian'),
(1377, 'hu_HU', 'mt', 'Hungarian'),
(1378, 'hu_HU', 'mo', 'Hungarian'),
(1379, 'hu_HU', 'mn', 'Hungarian'),
(1380, 'hu_HU', 'ne', 'Hungarian'),
(1381, 'hu_HU', 'nl_NL', 'Hongaars'),
(1382, 'hu_HU', 'nb_NO', 'Hungarian'),
(1383, 'hu_HU', 'pa', 'Hungarian'),
(1384, 'hu_HU', 'pl_PL', 'węgierski'),
(1385, 'hu_HU', 'pt_PT', 'Húngaro'),
(1386, 'hu_HU', 'qu', 'Hungarian'),
(1387, 'hu_HU', 'ro_RO', 'Ungară'),
(1388, 'hu_HU', 'ru_RU', 'Венгерский'),
(1389, 'hu_HU', 'sl_SI', 'Hungarian'),
(1390, 'hu_HU', 'so', 'Hungarian'),
(1391, 'hu_HU', 'sq', 'Hungarian'),
(1392, 'hu_HU', 'sr_RS', 'Hungarian'),
(1393, 'hu_HU', 'sv_SE', 'Ungerska'),
(1394, 'hu_HU', 'ta', 'Hungarian'),
(1395, 'hu_HU', 'th', 'ฮังการี'),
(1396, 'hu_HU', 'tr', 'Macarca'),
(1397, 'hu_HU', 'uk_UA', 'Hungarian'),
(1398, 'hu_HU', 'ur', 'Hungarian'),
(1399, 'hu_HU', 'uz_UZ', 'Hungarian'),
(1400, 'hu_HU', 'vi', 'Hungarian'),
(1401, 'hu_HU', 'yi', 'Hungarian'),
(1402, 'hu_HU', 'zu', 'Hungarian'),
(1403, 'hu_HU', 'zh_CN', 'Hungarian'),
(1404, 'hy', 'en_US', 'Armenian'),
(1405, 'hy', 'es_ES', 'Armenio'),
(1406, 'hy', 'de_DE', 'Armenisch'),
(1407, 'hy', 'fr_FR', 'Arménien'),
(1408, 'hy', 'ar', 'الأرمينية'),
(1409, 'hy', 'bs', 'Armenian'),
(1410, 'hy', 'bg_BG', 'Armenian'),
(1411, 'hy', 'ca', 'Armenian'),
(1412, 'hy', 'cs_CZ', 'Armenian'),
(1413, 'hy', 'sk_SK', 'Arménčina'),
(1414, 'hy', 'cy', 'Armenian'),
(1415, 'hy', 'da_DK', 'Armenian'),
(1416, 'hy', 'el', 'Αρμενικα'),
(1417, 'hy', 'eo', 'Armenian'),
(1418, 'hy', 'et', 'Armenian'),
(1419, 'hy', 'eu', 'Armenian'),
(1420, 'hy', 'fa_IR', 'Armenian'),
(1421, 'hy', 'fi_FI', 'armenia'),
(1422, 'hy', 'ga', 'Armenian'),
(1423, 'hy', 'he_IL', 'Armenian'),
(1424, 'hy', 'hi', 'Armenian'),
(1425, 'hy', 'hr', 'Armenian'),
(1426, 'hy', 'hu_HU', 'örmény'),
(1427, 'hy', 'hy', 'Armenian'),
(1428, 'hy', 'id_ID', 'Armenian'),
(1429, 'hy', 'is_IS', 'Armenian'),
(1430, 'hy', 'it_IT', 'Armeno'),
(1431, 'hy', 'ja', 'アルメニア語'),
(1432, 'hy', 'ko_KR', '아르메니아어'),
(1433, 'hy', 'ku', 'Armenian'),
(1434, 'hy', 'la', 'Armenian'),
(1435, 'hy', 'lv', 'Armenian'),
(1436, 'hy', 'lt', 'Armenian'),
(1437, 'hy', 'mk_MK', 'Armenian'),
(1438, 'hy', 'mt', 'Armenian'),
(1439, 'hy', 'mo', 'Armenian'),
(1440, 'hy', 'mn', 'Armenian'),
(1441, 'hy', 'ne', 'Armenian'),
(1442, 'hy', 'nl_NL', 'Armeens'),
(1443, 'hy', 'nb_NO', 'Armenian'),
(1444, 'hy', 'pa', 'Armenian'),
(1445, 'hy', 'pl_PL', 'ormiański'),
(1446, 'hy', 'pt_PT', 'Arménio'),
(1447, 'hy', 'qu', 'Armenian'),
(1448, 'hy', 'ro_RO', 'Armeană'),
(1449, 'hy', 'ru_RU', 'Армянский'),
(1450, 'hy', 'sl_SI', 'Armenian'),
(1451, 'hy', 'so', 'Armenian'),
(1452, 'hy', 'sq', 'Armenian'),
(1453, 'hy', 'sr_RS', 'Armenian'),
(1454, 'hy', 'sv_SE', 'Armeniska'),
(1455, 'hy', 'ta', 'Armenian'),
(1456, 'hy', 'th', 'อาร์เมเนีย'),
(1457, 'hy', 'tr', 'Ermenice'),
(1458, 'hy', 'uk_UA', 'Armenian'),
(1459, 'hy', 'ur', 'Armenian'),
(1460, 'hy', 'uz_UZ', 'Armenian'),
(1461, 'hy', 'vi', 'Armenian'),
(1462, 'hy', 'yi', 'Armenian'),
(1463, 'hy', 'zu', 'Armenian'),
(1464, 'hy', 'zh_CN', 'Armenian'),
(1465, 'id_ID', 'en_US', 'Indonesian'),
(1466, 'id_ID', 'es_ES', 'Indonesio'),
(1467, 'id_ID', 'de_DE', 'Indonesisch'),
(1468, 'id_ID', 'fr_FR', 'Indonésien'),
(1469, 'id_ID', 'ar', 'الأندونيسية'),
(1470, 'id_ID', 'bs', 'Indonesian'),
(1471, 'id_ID', 'bg_BG', 'Indonesian'),
(1472, 'id_ID', 'ca', 'Indonesian'),
(1473, 'id_ID', 'cs_CZ', 'Indonesian'),
(1474, 'id_ID', 'sk_SK', 'Indonézčina'),
(1475, 'id_ID', 'cy', 'Indonesian'),
(1476, 'id_ID', 'da_DK', 'Indonesian'),
(1477, 'id_ID', 'el', 'Ινδονησιακα'),
(1478, 'id_ID', 'eo', 'Indonesian'),
(1479, 'id_ID', 'et', 'Indonesian'),
(1480, 'id_ID', 'eu', 'Indonesian'),
(1481, 'id_ID', 'fa_IR', 'Indonesian'),
(1482, 'id_ID', 'fi_FI', 'indonesia'),
(1483, 'id_ID', 'ga', 'Indonesian'),
(1484, 'id_ID', 'he_IL', 'Indonesian'),
(1485, 'id_ID', 'hi', 'Indonesian'),
(1486, 'id_ID', 'hr', 'Indonesian'),
(1487, 'id_ID', 'hu_HU', 'indonéz'),
(1488, 'id_ID', 'hy', 'Indonesian'),
(1489, 'id_ID', 'id_ID', 'Indonesia'),
(1490, 'id_ID', 'is_IS', 'Indonesian'),
(1491, 'id_ID', 'it_IT', 'Indonesiano'),
(1492, 'id_ID', 'ja', 'インドネシア語'),
(1493, 'id_ID', 'ko_KR', '인도네시아어'),
(1494, 'id_ID', 'ku', 'Indonesian'),
(1495, 'id_ID', 'la', 'Indonesian'),
(1496, 'id_ID', 'lv', 'Indonesian'),
(1497, 'id_ID', 'lt', 'Indonesian'),
(1498, 'id_ID', 'mk_MK', 'Indonesian'),
(1499, 'id_ID', 'mt', 'Indonesian'),
(1500, 'id_ID', 'mo', 'Indonesian'),
(1501, 'id_ID', 'mn', 'Indonesian'),
(1502, 'id_ID', 'ne', 'Indonesian'),
(1503, 'id_ID', 'nl_NL', 'Indonesisch'),
(1504, 'id_ID', 'nb_NO', 'Indonesian'),
(1505, 'id_ID', 'pa', 'Indonesian'),
(1506, 'id_ID', 'pl_PL', 'indonezyjski'),
(1507, 'id_ID', 'pt_PT', 'Indonésio'),
(1508, 'id_ID', 'qu', 'Indonesian'),
(1509, 'id_ID', 'ro_RO', 'Indoneziană'),
(1510, 'id_ID', 'ru_RU', 'Индонезийский'),
(1511, 'id_ID', 'sl_SI', 'Indonesian'),
(1512, 'id_ID', 'so', 'Indonesian'),
(1513, 'id_ID', 'sq', 'Indonesian'),
(1514, 'id_ID', 'sr_RS', 'Indonesian'),
(1515, 'id_ID', 'sv_SE', 'Indonesiska'),
(1516, 'id_ID', 'ta', 'Indonesian'),
(1517, 'id_ID', 'th', 'อินโดนีเซีย'),
(1518, 'id_ID', 'tr', 'Endonezya dili'),
(1519, 'id_ID', 'uk_UA', 'Indonesian'),
(1520, 'id_ID', 'ur', 'Indonesian'),
(1521, 'id_ID', 'uz_UZ', 'Indonesian'),
(1522, 'id_ID', 'vi', 'Indonesian'),
(1523, 'id_ID', 'yi', 'Indonesian'),
(1524, 'id_ID', 'zu', 'Indonesian'),
(1525, 'id_ID', 'zh_CN', 'Indonesian'),
(1526, 'is_IS', 'en_US', 'Icelandic'),
(1527, 'is_IS', 'es_ES', 'Islandés'),
(1528, 'is_IS', 'de_DE', 'Isländisch'),
(1529, 'is_IS', 'fr_FR', 'Islandais'),
(1530, 'is_IS', 'ar', 'الأيسلاندية'),
(1531, 'is_IS', 'bs', 'Icelandic'),
(1532, 'is_IS', 'bg_BG', 'Icelandic'),
(1533, 'is_IS', 'ca', 'Icelandic'),
(1534, 'is_IS', 'cs_CZ', 'Icelandic'),
(1535, 'is_IS', 'sk_SK', 'Islančina'),
(1536, 'is_IS', 'cy', 'Icelandic'),
(1537, 'is_IS', 'da_DK', 'Icelandic'),
(1538, 'is_IS', 'el', 'Ισλανδικα'),
(1539, 'is_IS', 'eo', 'Icelandic'),
(1540, 'is_IS', 'et', 'Icelandic');
INSERT INTO `wp_zwt_languages_translations` (`id`, `language_code`, `display_language_code`, `name`) VALUES
(1541, 'is_IS', 'eu', 'Icelandic'),
(1542, 'is_IS', 'fa_IR', 'Icelandic'),
(1543, 'is_IS', 'fi_FI', 'islanti'),
(1544, 'is_IS', 'ga', 'Icelandic'),
(1545, 'is_IS', 'he_IL', 'Icelandic'),
(1546, 'is_IS', 'hi', 'Icelandic'),
(1547, 'is_IS', 'hr', 'Icelandic'),
(1548, 'is_IS', 'hu_HU', 'izlandi'),
(1549, 'is_IS', 'hy', 'Icelandic'),
(1550, 'is_IS', 'id_ID', 'Icelandic'),
(1551, 'is_IS', 'is_IS', 'Íslenska'),
(1552, 'is_IS', 'it_IT', 'Islandese'),
(1553, 'is_IS', 'ja', 'アイスランド語'),
(1554, 'is_IS', 'ko_KR', '아이슬랜드어'),
(1555, 'is_IS', 'ku', 'Icelandic'),
(1556, 'is_IS', 'la', 'Icelandic'),
(1557, 'is_IS', 'lv', 'Icelandic'),
(1558, 'is_IS', 'lt', 'Icelandic'),
(1559, 'is_IS', 'mk_MK', 'Icelandic'),
(1560, 'is_IS', 'mt', 'Icelandic'),
(1561, 'is_IS', 'mo', 'Icelandic'),
(1562, 'is_IS', 'mn', 'Icelandic'),
(1563, 'is_IS', 'ne', 'Icelandic'),
(1564, 'is_IS', 'nl_NL', 'Ijslands'),
(1565, 'is_IS', 'nb_NO', 'Icelandic'),
(1566, 'is_IS', 'pa', 'Icelandic'),
(1567, 'is_IS', 'pl_PL', 'islandzki'),
(1568, 'is_IS', 'pt_PT', 'Islandês'),
(1569, 'is_IS', 'qu', 'Icelandic'),
(1570, 'is_IS', 'ro_RO', 'Islandeză'),
(1571, 'is_IS', 'ru_RU', 'Исландский'),
(1572, 'is_IS', 'sl_SI', 'Icelandic'),
(1573, 'is_IS', 'so', 'Icelandic'),
(1574, 'is_IS', 'sq', 'Icelandic'),
(1575, 'is_IS', 'sr_RS', 'Icelandic'),
(1576, 'is_IS', 'sv_SE', 'Isländska'),
(1577, 'is_IS', 'ta', 'Icelandic'),
(1578, 'is_IS', 'th', 'ไอซ์แลนด์'),
(1579, 'is_IS', 'tr', 'İzlandaca'),
(1580, 'is_IS', 'uk_UA', 'Icelandic'),
(1581, 'is_IS', 'ur', 'Icelandic'),
(1582, 'is_IS', 'uz_UZ', 'Icelandic'),
(1583, 'is_IS', 'vi', 'Icelandic'),
(1584, 'is_IS', 'yi', 'Icelandic'),
(1585, 'is_IS', 'zu', 'Icelandic'),
(1586, 'is_IS', 'zh_CN', 'Icelandic'),
(1587, 'it_IT', 'en_US', 'Italian'),
(1588, 'it_IT', 'es_ES', 'Italiano'),
(1589, 'it_IT', 'de_DE', 'Italienisch'),
(1590, 'it_IT', 'fr_FR', 'Italien'),
(1591, 'it_IT', 'ar', 'الإيطالية'),
(1592, 'it_IT', 'bs', 'Italian'),
(1593, 'it_IT', 'bg_BG', 'Italian'),
(1594, 'it_IT', 'ca', 'Italian'),
(1595, 'it_IT', 'cs_CZ', 'Italian'),
(1596, 'it_IT', 'sk_SK', 'Taliančina'),
(1597, 'it_IT', 'cy', 'Italian'),
(1598, 'it_IT', 'da_DK', 'Italian'),
(1599, 'it_IT', 'el', 'Ιταλικα'),
(1600, 'it_IT', 'eo', 'Italian'),
(1601, 'it_IT', 'et', 'Italian'),
(1602, 'it_IT', 'eu', 'Italian'),
(1603, 'it_IT', 'fa_IR', 'Italian'),
(1604, 'it_IT', 'fi_FI', 'italia'),
(1605, 'it_IT', 'ga', 'Italian'),
(1606, 'it_IT', 'he_IL', 'איטלקית'),
(1607, 'it_IT', 'hi', 'Italian'),
(1608, 'it_IT', 'hr', 'Italian'),
(1609, 'it_IT', 'hu_HU', 'olasz'),
(1610, 'it_IT', 'hy', 'Italian'),
(1611, 'it_IT', 'id_ID', 'Italian'),
(1612, 'it_IT', 'is_IS', 'Italian'),
(1613, 'it_IT', 'it_IT', 'Italiano'),
(1614, 'it_IT', 'ja', 'イタリア語'),
(1615, 'it_IT', 'ko_KR', '이태리어'),
(1616, 'it_IT', 'ku', 'Italian'),
(1617, 'it_IT', 'la', 'Italian'),
(1618, 'it_IT', 'lv', 'Italian'),
(1619, 'it_IT', 'lt', 'Italian'),
(1620, 'it_IT', 'mk_MK', 'Italian'),
(1621, 'it_IT', 'mt', 'Italian'),
(1622, 'it_IT', 'mo', 'Italian'),
(1623, 'it_IT', 'mn', 'Italian'),
(1624, 'it_IT', 'ne', 'Italian'),
(1625, 'it_IT', 'nl_NL', 'Italiaans'),
(1626, 'it_IT', 'nb_NO', 'Italian'),
(1627, 'it_IT', 'pa', 'Italian'),
(1628, 'it_IT', 'pl_PL', 'włoski'),
(1629, 'it_IT', 'pt_PT', 'Italiano'),
(1630, 'it_IT', 'qu', 'Italian'),
(1631, 'it_IT', 'ro_RO', 'Italiană'),
(1632, 'it_IT', 'ru_RU', 'Итальянский'),
(1633, 'it_IT', 'sl_SI', 'Italian'),
(1634, 'it_IT', 'so', 'Italian'),
(1635, 'it_IT', 'sq', 'Italian'),
(1636, 'it_IT', 'sr_RS', 'Italian'),
(1637, 'it_IT', 'sv_SE', 'Italienska'),
(1638, 'it_IT', 'ta', 'Italian'),
(1639, 'it_IT', 'th', 'อิตาลี'),
(1640, 'it_IT', 'tr', 'İtalyanca'),
(1641, 'it_IT', 'uk_UA', 'Italian'),
(1642, 'it_IT', 'ur', 'Italian'),
(1643, 'it_IT', 'uz_UZ', 'Italian'),
(1644, 'it_IT', 'vi', 'Italian'),
(1645, 'it_IT', 'yi', 'Italian'),
(1646, 'it_IT', 'zu', 'Italian'),
(1647, 'it_IT', 'zh_CN', 'Italian'),
(1648, 'ja', 'en_US', 'Japanese'),
(1649, 'ja', 'es_ES', 'Japonés'),
(1650, 'ja', 'de_DE', 'Japanisch'),
(1651, 'ja', 'fr_FR', 'Japonais'),
(1652, 'ja', 'ar', 'اليابانية'),
(1653, 'ja', 'bs', 'Japanese'),
(1654, 'ja', 'bg_BG', 'Japanese'),
(1655, 'ja', 'ca', 'Japanese'),
(1656, 'ja', 'cs_CZ', 'Japanese'),
(1657, 'ja', 'sk_SK', 'Japonština'),
(1658, 'ja', 'cy', 'Japanese'),
(1659, 'ja', 'da_DK', 'Japanese'),
(1660, 'ja', 'el', 'Ιαπωνικα'),
(1661, 'ja', 'eo', 'Japanese'),
(1662, 'ja', 'et', 'Japanese'),
(1663, 'ja', 'eu', 'Japanese'),
(1664, 'ja', 'fa_IR', 'Japanese'),
(1665, 'ja', 'fi_FI', 'japani'),
(1666, 'ja', 'ga', 'Japanese'),
(1667, 'ja', 'he_IL', 'יפנית'),
(1668, 'ja', 'hi', 'Japanese'),
(1669, 'ja', 'hr', 'Japanese'),
(1670, 'ja', 'hu_HU', 'japán'),
(1671, 'ja', 'hy', 'Japanese'),
(1672, 'ja', 'id_ID', 'Japanese'),
(1673, 'ja', 'is_IS', 'Japanese'),
(1674, 'ja', 'it_IT', 'Giapponese'),
(1675, 'ja', 'ja', '日本語'),
(1676, 'ja', 'ko_KR', '일어'),
(1677, 'ja', 'ku', 'Japanese'),
(1678, 'ja', 'la', 'Japanese'),
(1679, 'ja', 'lv', 'Japanese'),
(1680, 'ja', 'lt', 'Japanese'),
(1681, 'ja', 'mk_MK', 'Japanese'),
(1682, 'ja', 'mt', 'Japanese'),
(1683, 'ja', 'mo', 'Japanese'),
(1684, 'ja', 'mn', 'Japanese'),
(1685, 'ja', 'ne', 'Japanese'),
(1686, 'ja', 'nl_NL', 'Japans'),
(1687, 'ja', 'nb_NO', 'Japanese'),
(1688, 'ja', 'pa', 'Japanese'),
(1689, 'ja', 'pl_PL', 'japoński'),
(1690, 'ja', 'pt_PT', 'Japonês'),
(1691, 'ja', 'qu', 'Japanese'),
(1692, 'ja', 'ro_RO', 'Japoneză'),
(1693, 'ja', 'ru_RU', 'Японский'),
(1694, 'ja', 'sl_SI', 'Japanese'),
(1695, 'ja', 'so', 'Japanese'),
(1696, 'ja', 'sq', 'Japanese'),
(1697, 'ja', 'sr_RS', 'Japanese'),
(1698, 'ja', 'sv_SE', 'Japanska'),
(1699, 'ja', 'ta', 'Japanese'),
(1700, 'ja', 'th', 'ญี่ปุ่น'),
(1701, 'ja', 'tr', 'Japonca'),
(1702, 'ja', 'uk_UA', 'Japanese'),
(1703, 'ja', 'ur', 'Japanese'),
(1704, 'ja', 'uz_UZ', 'Japanese'),
(1705, 'ja', 'vi', 'Japanese'),
(1706, 'ja', 'yi', 'Japanese'),
(1707, 'ja', 'zu', 'Japanese'),
(1708, 'ja', 'zh_CN', 'Japanese'),
(1709, 'ko_KR', 'en_US', 'Korean'),
(1710, 'ko_KR', 'es_ES', 'Coreano'),
(1711, 'ko_KR', 'de_DE', 'Koreanisch'),
(1712, 'ko_KR', 'fr_FR', 'Coréen'),
(1713, 'ko_KR', 'ar', 'الكورية'),
(1714, 'ko_KR', 'bs', 'Korean'),
(1715, 'ko_KR', 'bg_BG', 'Korean'),
(1716, 'ko_KR', 'ca', 'Korean'),
(1717, 'ko_KR', 'cs_CZ', 'Korean'),
(1718, 'ko_KR', 'sk_SK', 'Kórejčina'),
(1719, 'ko_KR', 'cy', 'Korean'),
(1720, 'ko_KR', 'da_DK', 'Korean'),
(1721, 'ko_KR', 'el', 'Κορεατικα'),
(1722, 'ko_KR', 'eo', 'Korean'),
(1723, 'ko_KR', 'et', 'Korean'),
(1724, 'ko_KR', 'eu', 'Korean'),
(1725, 'ko_KR', 'fa_IR', 'Korean'),
(1726, 'ko_KR', 'fi_FI', 'korea'),
(1727, 'ko_KR', 'ga', 'Korean'),
(1728, 'ko_KR', 'he_IL', 'קוראנית'),
(1729, 'ko_KR', 'hi', 'Korean'),
(1730, 'ko_KR', 'hr', 'Korean'),
(1731, 'ko_KR', 'hu_HU', 'koreai'),
(1732, 'ko_KR', 'hy', 'Korean'),
(1733, 'ko_KR', 'id_ID', 'Korean'),
(1734, 'ko_KR', 'is_IS', 'Korean'),
(1735, 'ko_KR', 'it_IT', 'Coreano'),
(1736, 'ko_KR', 'ja', '韓国語'),
(1737, 'ko_KR', 'ko_KR', '한국어'),
(1738, 'ko_KR', 'ku', 'Korean'),
(1739, 'ko_KR', 'la', 'Korean'),
(1740, 'ko_KR', 'lv', 'Korean'),
(1741, 'ko_KR', 'lt', 'Korean'),
(1742, 'ko_KR', 'mk_MK', 'Korean'),
(1743, 'ko_KR', 'mt', 'Korean'),
(1744, 'ko_KR', 'mo', 'Korean'),
(1745, 'ko_KR', 'mn', 'Korean'),
(1746, 'ko_KR', 'ne', 'Korean'),
(1747, 'ko_KR', 'nl_NL', 'Koreaans'),
(1748, 'ko_KR', 'nb_NO', 'Korean'),
(1749, 'ko_KR', 'pa', 'Korean'),
(1750, 'ko_KR', 'pl_PL', 'koreański'),
(1751, 'ko_KR', 'pt_PT', 'Korean'),
(1752, 'ko_KR', 'qu', 'Korean'),
(1753, 'ko_KR', 'ro_RO', 'Coreană'),
(1754, 'ko_KR', 'ru_RU', 'Корейский'),
(1755, 'ko_KR', 'sl_SI', 'Korean'),
(1756, 'ko_KR', 'so', 'Korean'),
(1757, 'ko_KR', 'sq', 'Korean'),
(1758, 'ko_KR', 'sr_RS', 'Korean'),
(1759, 'ko_KR', 'sv_SE', 'Koreanska'),
(1760, 'ko_KR', 'ta', 'Korean'),
(1761, 'ko_KR', 'th', 'เกาหลี'),
(1762, 'ko_KR', 'tr', 'Kore dili'),
(1763, 'ko_KR', 'uk_UA', 'Korean'),
(1764, 'ko_KR', 'ur', 'Korean'),
(1765, 'ko_KR', 'uz_UZ', 'Korean'),
(1766, 'ko_KR', 'vi', 'Korean'),
(1767, 'ko_KR', 'yi', 'Korean'),
(1768, 'ko_KR', 'zu', 'Korean'),
(1769, 'ko_KR', 'zh_CN', 'Korean'),
(1770, 'ku', 'en_US', 'Kurdish'),
(1771, 'ku', 'es_ES', 'Kurdo'),
(1772, 'ku', 'de_DE', 'Kurdisch'),
(1773, 'ku', 'fr_FR', 'Kurde'),
(1774, 'ku', 'ar', 'الكردية'),
(1775, 'ku', 'bs', 'Kurdish'),
(1776, 'ku', 'bg_BG', 'Kurdish'),
(1777, 'ku', 'ca', 'Kurdish'),
(1778, 'ku', 'cs_CZ', 'Kurdish'),
(1779, 'ku', 'sk_SK', 'Kurdština'),
(1780, 'ku', 'cy', 'Kurdish'),
(1781, 'ku', 'da_DK', 'Kurdish'),
(1782, 'ku', 'el', 'Κουρδικα'),
(1783, 'ku', 'eo', 'Kurdish'),
(1784, 'ku', 'et', 'Kurdish'),
(1785, 'ku', 'eu', 'Kurdish'),
(1786, 'ku', 'fa_IR', 'Kurdish'),
(1787, 'ku', 'fi_FI', 'kurdi'),
(1788, 'ku', 'ga', 'Kurdish'),
(1789, 'ku', 'he_IL', 'Kurdish'),
(1790, 'ku', 'hi', 'Kurdish'),
(1791, 'ku', 'hr', 'Kurdish'),
(1792, 'ku', 'hu_HU', 'kurd'),
(1793, 'ku', 'hy', 'Kurdish'),
(1794, 'ku', 'id_ID', 'Kurdish'),
(1795, 'ku', 'is_IS', 'Kurdish'),
(1796, 'ku', 'it_IT', 'Curdo'),
(1797, 'ku', 'ja', 'クルド語'),
(1798, 'ku', 'ko_KR', '쿠르드어'),
(1799, 'ku', 'ku', 'Kurdish'),
(1800, 'ku', 'la', 'Kurdish'),
(1801, 'ku', 'lv', 'Kurdish'),
(1802, 'ku', 'lt', 'Kurdish'),
(1803, 'ku', 'mk_MK', 'Kurdish'),
(1804, 'ku', 'mt', 'Kurdish'),
(1805, 'ku', 'mo', 'Kurdish'),
(1806, 'ku', 'mn', 'Kurdish'),
(1807, 'ku', 'ne', 'Kurdish'),
(1808, 'ku', 'nl_NL', 'Koerdish'),
(1809, 'ku', 'nb_NO', 'Kurdish'),
(1810, 'ku', 'pa', 'Kurdish'),
(1811, 'ku', 'pl_PL', 'kurdyjski'),
(1812, 'ku', 'pt_PT', 'Curdo'),
(1813, 'ku', 'qu', 'Kurdish'),
(1814, 'ku', 'ro_RO', 'Kurdă'),
(1815, 'ku', 'ru_RU', 'Курдский'),
(1816, 'ku', 'sl_SI', 'Kurdish'),
(1817, 'ku', 'so', 'Kurdish'),
(1818, 'ku', 'sq', 'Kurdish'),
(1819, 'ku', 'sr_RS', 'Kurdish'),
(1820, 'ku', 'sv_SE', 'Kurdiska'),
(1821, 'ku', 'ta', 'Kurdish'),
(1822, 'ku', 'th', 'เคอร์ดิช'),
(1823, 'ku', 'tr', 'Kürtçe'),
(1824, 'ku', 'uk_UA', 'Kurdish'),
(1825, 'ku', 'ur', 'Kurdish'),
(1826, 'ku', 'uz_UZ', 'Kurdish'),
(1827, 'ku', 'vi', 'Kurdish'),
(1828, 'ku', 'yi', 'Kurdish'),
(1829, 'ku', 'zu', 'Kurdish'),
(1830, 'ku', 'zh_CN', 'Kurdish'),
(1831, 'la', 'en_US', 'Latin'),
(1832, 'la', 'es_ES', 'Latín'),
(1833, 'la', 'de_DE', 'Latein'),
(1834, 'la', 'fr_FR', 'Latin'),
(1835, 'la', 'ar', 'اللاتينية'),
(1836, 'la', 'bs', 'Latin'),
(1837, 'la', 'bg_BG', 'Latin'),
(1838, 'la', 'ca', 'Latin'),
(1839, 'la', 'cs_CZ', 'Latin'),
(1840, 'la', 'sk_SK', 'Latinčina'),
(1841, 'la', 'cy', 'Latin'),
(1842, 'la', 'da_DK', 'Latin'),
(1843, 'la', 'el', 'Λατινικη'),
(1844, 'la', 'eo', 'Latin'),
(1845, 'la', 'et', 'Latin'),
(1846, 'la', 'eu', 'Latin'),
(1847, 'la', 'fa_IR', 'Latin'),
(1848, 'la', 'fi_FI', 'latina'),
(1849, 'la', 'ga', 'Latin'),
(1850, 'la', 'he_IL', 'לטינית'),
(1851, 'la', 'hi', 'Latin'),
(1852, 'la', 'hr', 'Latin'),
(1853, 'la', 'hu_HU', 'latin'),
(1854, 'la', 'hy', 'Latin'),
(1855, 'la', 'id_ID', 'Latin'),
(1856, 'la', 'is_IS', 'Latin'),
(1857, 'la', 'it_IT', 'Latino'),
(1858, 'la', 'ja', 'ラテン語'),
(1859, 'la', 'ko_KR', '라틴어'),
(1860, 'la', 'ku', 'Latin'),
(1861, 'la', 'la', 'Latin'),
(1862, 'la', 'lv', 'Latin'),
(1863, 'la', 'lt', 'Latin'),
(1864, 'la', 'mk_MK', 'Latin'),
(1865, 'la', 'mt', 'Latin'),
(1866, 'la', 'mo', 'Latin'),
(1867, 'la', 'mn', 'Latin'),
(1868, 'la', 'ne', 'Latin'),
(1869, 'la', 'nl_NL', 'Latijn'),
(1870, 'la', 'nb_NO', 'Latin'),
(1871, 'la', 'pa', 'Latin'),
(1872, 'la', 'pl_PL', 'łaciński'),
(1873, 'la', 'pt_PT', 'Latina'),
(1874, 'la', 'qu', 'Latin'),
(1875, 'la', 'ro_RO', 'Latină'),
(1876, 'la', 'ru_RU', 'Латинский'),
(1877, 'la', 'sl_SI', 'Latin'),
(1878, 'la', 'so', 'Latin'),
(1879, 'la', 'sq', 'Latin'),
(1880, 'la', 'sr_RS', 'Latin'),
(1881, 'la', 'sv_SE', 'Latin'),
(1882, 'la', 'ta', 'Latin'),
(1883, 'la', 'th', 'ละติน'),
(1884, 'la', 'tr', 'Latince'),
(1885, 'la', 'uk_UA', 'Latin'),
(1886, 'la', 'ur', 'Latin'),
(1887, 'la', 'uz_UZ', 'Latin'),
(1888, 'la', 'vi', 'Latin'),
(1889, 'la', 'yi', 'Latin'),
(1890, 'la', 'zu', 'Latin'),
(1891, 'la', 'zh_CN', 'Latin'),
(1892, 'lv', 'en_US', 'Latvian'),
(1893, 'lv', 'es_ES', 'Letón'),
(1894, 'lv', 'de_DE', 'Lettisch'),
(1895, 'lv', 'fr_FR', 'Letton'),
(1896, 'lv', 'ar', 'اللاتفية'),
(1897, 'lv', 'bs', 'Latvian'),
(1898, 'lv', 'bg_BG', 'Latvian'),
(1899, 'lv', 'ca', 'Latvian'),
(1900, 'lv', 'cs_CZ', 'Latvian'),
(1901, 'lv', 'sk_SK', 'Lotyština'),
(1902, 'lv', 'cy', 'Latvian'),
(1903, 'lv', 'da_DK', 'Latvian'),
(1904, 'lv', 'el', 'Λετονικα'),
(1905, 'lv', 'eo', 'Latvian'),
(1906, 'lv', 'et', 'Latvian'),
(1907, 'lv', 'eu', 'Latvian'),
(1908, 'lv', 'fa_IR', 'Latvian'),
(1909, 'lv', 'fi_FI', 'latvia'),
(1910, 'lv', 'ga', 'Latvian'),
(1911, 'lv', 'he_IL', 'Latvian'),
(1912, 'lv', 'hi', 'Latvian'),
(1913, 'lv', 'hr', 'Latvian'),
(1914, 'lv', 'hu_HU', 'lett'),
(1915, 'lv', 'hy', 'Latvian'),
(1916, 'lv', 'id_ID', 'Latvian'),
(1917, 'lv', 'is_IS', 'Latvian'),
(1918, 'lv', 'it_IT', 'Lettone'),
(1919, 'lv', 'ja', 'ラトビア語'),
(1920, 'lv', 'ko_KR', '라트비아어'),
(1921, 'lv', 'ku', 'Latvian'),
(1922, 'lv', 'la', 'Latvian'),
(1923, 'lv', 'lv', 'Latviešu'),
(1924, 'lv', 'lt', 'Latvian'),
(1925, 'lv', 'mk_MK', 'Latvian'),
(1926, 'lv', 'mt', 'Latvian'),
(1927, 'lv', 'mo', 'Latvian'),
(1928, 'lv', 'mn', 'Latvian'),
(1929, 'lv', 'ne', 'Latvian'),
(1930, 'lv', 'nl_NL', 'Lets'),
(1931, 'lv', 'nb_NO', 'Latvian'),
(1932, 'lv', 'pa', 'Latvian'),
(1933, 'lv', 'pl_PL', 'łotewski'),
(1934, 'lv', 'pt_PT', 'Letão'),
(1935, 'lv', 'qu', 'Latvian'),
(1936, 'lv', 'ro_RO', 'Letoniană'),
(1937, 'lv', 'ru_RU', 'латышский'),
(1938, 'lv', 'sl_SI', 'Latvian'),
(1939, 'lv', 'so', 'Latvian'),
(1940, 'lv', 'sq', 'Latvian'),
(1941, 'lv', 'sr_RS', 'Latvian'),
(1942, 'lv', 'sv_SE', 'Lettiska'),
(1943, 'lv', 'ta', 'Latvian'),
(1944, 'lv', 'th', 'ลัตเวีย'),
(1945, 'lv', 'tr', 'Letonca'),
(1946, 'lv', 'uk_UA', 'Latvian'),
(1947, 'lv', 'ur', 'Latvian'),
(1948, 'lv', 'uz_UZ', 'Latvian'),
(1949, 'lv', 'vi', 'Latvian'),
(1950, 'lv', 'yi', 'Latvian'),
(1951, 'lv', 'zu', 'Latvian'),
(1952, 'lv', 'zh_CN', 'Latvian'),
(1953, 'lt', 'en_US', 'Lithuanian'),
(1954, 'lt', 'es_ES', 'Lituano'),
(1955, 'lt', 'de_DE', 'Litauisch'),
(1956, 'lt', 'fr_FR', 'Lituanien'),
(1957, 'lt', 'ar', 'اللتوانية'),
(1958, 'lt', 'bs', 'Lithuanian'),
(1959, 'lt', 'bg_BG', 'Lithuanian'),
(1960, 'lt', 'ca', 'Lithuanian'),
(1961, 'lt', 'cs_CZ', 'Lithuanian'),
(1962, 'lt', 'sk_SK', 'Litovčina'),
(1963, 'lt', 'cy', 'Lithuanian'),
(1964, 'lt', 'da_DK', 'Lithuanian'),
(1965, 'lt', 'el', 'Λιθουανικα'),
(1966, 'lt', 'eo', 'Lithuanian'),
(1967, 'lt', 'et', 'Lithuanian'),
(1968, 'lt', 'eu', 'Lithuanian'),
(1969, 'lt', 'fa_IR', 'Lithuanian'),
(1970, 'lt', 'fi_FI', 'liettua'),
(1971, 'lt', 'ga', 'Lithuanian'),
(1972, 'lt', 'he_IL', 'Lithuanian'),
(1973, 'lt', 'hi', 'Lithuanian'),
(1974, 'lt', 'hr', 'Lithuanian'),
(1975, 'lt', 'hu_HU', 'litván'),
(1976, 'lt', 'hy', 'Lithuanian'),
(1977, 'lt', 'id_ID', 'Lithuanian'),
(1978, 'lt', 'is_IS', 'Lithuanian'),
(1979, 'lt', 'it_IT', 'Lituano'),
(1980, 'lt', 'ja', 'リトアニア語'),
(1981, 'lt', 'ko_KR', '리투아니아어'),
(1982, 'lt', 'ku', 'Lithuanian'),
(1983, 'lt', 'la', 'Lithuanian'),
(1984, 'lt', 'lv', 'Lithuanian'),
(1985, 'lt', 'lt', 'Lithuanian'),
(1986, 'lt', 'mk_MK', 'Lithuanian'),
(1987, 'lt', 'mt', 'Lithuanian'),
(1988, 'lt', 'mo', 'Lithuanian'),
(1989, 'lt', 'mn', 'Lithuanian'),
(1990, 'lt', 'ne', 'Lithuanian'),
(1991, 'lt', 'nl_NL', 'Litouws'),
(1992, 'lt', 'nb_NO', 'Lithuanian'),
(1993, 'lt', 'pa', 'Lithuanian'),
(1994, 'lt', 'pl_PL', 'litewski'),
(1995, 'lt', 'pt_PT', 'Lituano'),
(1996, 'lt', 'qu', 'Lithuanian'),
(1997, 'lt', 'ro_RO', 'Lituaniană'),
(1998, 'lt', 'ru_RU', 'Литовский'),
(1999, 'lt', 'sl_SI', 'Lithuanian'),
(2000, 'lt', 'so', 'Lithuanian'),
(2001, 'lt', 'sq', 'Lithuanian'),
(2002, 'lt', 'sr_RS', 'Lithuanian'),
(2003, 'lt', 'sv_SE', 'Litauiska'),
(2004, 'lt', 'ta', 'Lithuanian'),
(2005, 'lt', 'th', 'ลิธัวเนีย'),
(2006, 'lt', 'tr', 'Litvanyaca'),
(2007, 'lt', 'uk_UA', 'Lithuanian'),
(2008, 'lt', 'ur', 'Lithuanian'),
(2009, 'lt', 'uz_UZ', 'Lithuanian'),
(2010, 'lt', 'vi', 'Lithuanian'),
(2011, 'lt', 'yi', 'Lithuanian'),
(2012, 'lt', 'zu', 'Lithuanian'),
(2013, 'lt', 'zh_CN', 'Lithuanian'),
(2014, 'mk_MK', 'en_US', 'Macedonian'),
(2015, 'mk_MK', 'es_ES', 'Macedonio'),
(2016, 'mk_MK', 'de_DE', 'Mazedonisch'),
(2017, 'mk_MK', 'fr_FR', 'Macédonien'),
(2018, 'mk_MK', 'ar', 'المقدونية'),
(2019, 'mk_MK', 'bs', 'Macedonian'),
(2020, 'mk_MK', 'bg_BG', 'Macedonian'),
(2021, 'mk_MK', 'ca', 'Macedonian'),
(2022, 'mk_MK', 'cs_CZ', 'Macedonian'),
(2023, 'mk_MK', 'sk_SK', 'Macedónština'),
(2024, 'mk_MK', 'cy', 'Macedonian'),
(2025, 'mk_MK', 'da_DK', 'Macedonian'),
(2026, 'mk_MK', 'el', 'Μακεδονικο'),
(2027, 'mk_MK', 'eo', 'Macedonian'),
(2028, 'mk_MK', 'et', 'Macedonian'),
(2029, 'mk_MK', 'eu', 'Macedonian'),
(2030, 'mk_MK', 'fa_IR', 'Macedonian'),
(2031, 'mk_MK', 'fi_FI', 'makedonia'),
(2032, 'mk_MK', 'ga', 'Macedonian'),
(2033, 'mk_MK', 'he_IL', 'Macedonian'),
(2034, 'mk_MK', 'hi', 'Macedonian'),
(2035, 'mk_MK', 'hr', 'Macedonian'),
(2036, 'mk_MK', 'hu_HU', 'macedón'),
(2037, 'mk_MK', 'hy', 'Macedonian'),
(2038, 'mk_MK', 'id_ID', 'Macedonian'),
(2039, 'mk_MK', 'is_IS', 'Macedonian'),
(2040, 'mk_MK', 'it_IT', 'Macedone'),
(2041, 'mk_MK', 'ja', 'マケドニア語'),
(2042, 'mk_MK', 'ko_KR', '마케도니아어'),
(2043, 'mk_MK', 'ku', 'Macedonian'),
(2044, 'mk_MK', 'la', 'Macedonian'),
(2045, 'mk_MK', 'lv', 'Macedonian'),
(2046, 'mk_MK', 'lt', 'Macedonian'),
(2047, 'mk_MK', 'mk_MK', 'Macedonian'),
(2048, 'mk_MK', 'mt', 'Macedonian'),
(2049, 'mk_MK', 'mo', 'Macedonian'),
(2050, 'mk_MK', 'mn', 'Macedonian'),
(2051, 'mk_MK', 'ne', 'Macedonian'),
(2052, 'mk_MK', 'nl_NL', 'Macedonisch'),
(2053, 'mk_MK', 'nb_NO', 'Macedonian'),
(2054, 'mk_MK', 'pa', 'Macedonian'),
(2055, 'mk_MK', 'pl_PL', 'macedoński'),
(2056, 'mk_MK', 'pt_PT', 'Macedônio'),
(2057, 'mk_MK', 'qu', 'Macedonian'),
(2058, 'mk_MK', 'ro_RO', 'Macedoniană'),
(2059, 'mk_MK', 'ru_RU', 'Македонский'),
(2060, 'mk_MK', 'sl_SI', 'Macedonian'),
(2061, 'mk_MK', 'so', 'Macedonian'),
(2062, 'mk_MK', 'sq', 'Macedonian'),
(2063, 'mk_MK', 'sr_RS', 'Macedonian'),
(2064, 'mk_MK', 'sv_SE', 'Makedonska'),
(2065, 'mk_MK', 'ta', 'Macedonian'),
(2066, 'mk_MK', 'th', 'มาซิโดเนีย'),
(2067, 'mk_MK', 'tr', 'Makedonyaca'),
(2068, 'mk_MK', 'uk_UA', 'Macedonian'),
(2069, 'mk_MK', 'ur', 'Macedonian'),
(2070, 'mk_MK', 'uz_UZ', 'Macedonian'),
(2071, 'mk_MK', 'vi', 'Macedonian'),
(2072, 'mk_MK', 'yi', 'Macedonian'),
(2073, 'mk_MK', 'zu', 'Macedonian'),
(2074, 'mk_MK', 'zh_CN', 'Macedonian'),
(2075, 'mt', 'en_US', 'Maltese'),
(2076, 'mt', 'es_ES', 'Maltés'),
(2077, 'mt', 'de_DE', 'Maltesisch'),
(2078, 'mt', 'fr_FR', 'Maltais'),
(2079, 'mt', 'ar', 'المالطية'),
(2080, 'mt', 'bs', 'Maltese'),
(2081, 'mt', 'bg_BG', 'Maltese'),
(2082, 'mt', 'ca', 'Maltese'),
(2083, 'mt', 'cs_CZ', 'Maltese'),
(2084, 'mt', 'sk_SK', 'Maltézština'),
(2085, 'mt', 'cy', 'Maltese'),
(2086, 'mt', 'da_DK', 'Maltese'),
(2087, 'mt', 'el', 'Μαλτεζικα'),
(2088, 'mt', 'eo', 'Maltese'),
(2089, 'mt', 'et', 'Maltese'),
(2090, 'mt', 'eu', 'Maltese'),
(2091, 'mt', 'fa_IR', 'Maltese'),
(2092, 'mt', 'fi_FI', 'malta'),
(2093, 'mt', 'ga', 'Maltese'),
(2094, 'mt', 'he_IL', 'Maltese'),
(2095, 'mt', 'hi', 'Maltese'),
(2096, 'mt', 'hr', 'Maltese'),
(2097, 'mt', 'hu_HU', 'máltai'),
(2098, 'mt', 'hy', 'Maltese'),
(2099, 'mt', 'id_ID', 'Maltese'),
(2100, 'mt', 'is_IS', 'Maltese'),
(2101, 'mt', 'it_IT', 'Maltese'),
(2102, 'mt', 'ja', 'マルタ語'),
(2103, 'mt', 'ko_KR', '몰타어'),
(2104, 'mt', 'ku', 'Maltese'),
(2105, 'mt', 'la', 'Maltese'),
(2106, 'mt', 'lv', 'Maltese'),
(2107, 'mt', 'lt', 'Maltese'),
(2108, 'mt', 'mk_MK', 'Maltese'),
(2109, 'mt', 'mt', 'Maltese'),
(2110, 'mt', 'mo', 'Maltese'),
(2111, 'mt', 'mn', 'Maltese'),
(2112, 'mt', 'ne', 'Maltese'),
(2113, 'mt', 'nl_NL', 'Maltees'),
(2114, 'mt', 'nb_NO', 'Maltese'),
(2115, 'mt', 'pa', 'Maltese'),
(2116, 'mt', 'pl_PL', 'maltański'),
(2117, 'mt', 'pt_PT', 'Maltês'),
(2118, 'mt', 'qu', 'Maltese'),
(2119, 'mt', 'ro_RO', 'Malteză'),
(2120, 'mt', 'ru_RU', 'Мальтийский'),
(2121, 'mt', 'sl_SI', 'Maltese'),
(2122, 'mt', 'so', 'Maltese'),
(2123, 'mt', 'sq', 'Maltese'),
(2124, 'mt', 'sr_RS', 'Maltese'),
(2125, 'mt', 'sv_SE', 'Maltesiska'),
(2126, 'mt', 'ta', 'Maltese'),
(2127, 'mt', 'th', 'มอลทีส'),
(2128, 'mt', 'tr', 'Malta dili'),
(2129, 'mt', 'uk_UA', 'Maltese'),
(2130, 'mt', 'ur', 'Maltese'),
(2131, 'mt', 'uz_UZ', 'Maltese'),
(2132, 'mt', 'vi', 'Maltese'),
(2133, 'mt', 'yi', 'Maltese'),
(2134, 'mt', 'zu', 'Maltese'),
(2135, 'mt', 'zh_CN', 'Maltese'),
(2136, 'mo', 'en_US', 'Moldavian'),
(2137, 'mo', 'es_ES', 'Moldavo'),
(2138, 'mo', 'de_DE', 'Moldavisch'),
(2139, 'mo', 'fr_FR', 'Moldave'),
(2140, 'mo', 'ar', 'المولدوفية'),
(2141, 'mo', 'bs', 'Moldavian'),
(2142, 'mo', 'bg_BG', 'Moldavian'),
(2143, 'mo', 'ca', 'Moldavian'),
(2144, 'mo', 'cs_CZ', 'Moldavian'),
(2145, 'mo', 'sk_SK', 'Moldavčina'),
(2146, 'mo', 'cy', 'Moldavian'),
(2147, 'mo', 'da_DK', 'Moldavian'),
(2148, 'mo', 'el', 'Μολδαβικα'),
(2149, 'mo', 'eo', 'Moldavian'),
(2150, 'mo', 'et', 'Moldavian'),
(2151, 'mo', 'eu', 'Moldavian'),
(2152, 'mo', 'fa_IR', 'Moldavian'),
(2153, 'mo', 'fi_FI', 'moldavia'),
(2154, 'mo', 'ga', 'Moldavian'),
(2155, 'mo', 'he_IL', 'Moldavian'),
(2156, 'mo', 'hi', 'Moldavian'),
(2157, 'mo', 'hr', 'Moldavian'),
(2158, 'mo', 'hu_HU', 'moldovai'),
(2159, 'mo', 'hy', 'Moldavian'),
(2160, 'mo', 'id_ID', 'Moldavian'),
(2161, 'mo', 'is_IS', 'Moldavian'),
(2162, 'mo', 'it_IT', 'Moldavo'),
(2163, 'mo', 'ja', 'モルダビア語'),
(2164, 'mo', 'ko_KR', '몰다비아어'),
(2165, 'mo', 'ku', 'Moldavian'),
(2166, 'mo', 'la', 'Moldavian'),
(2167, 'mo', 'lv', 'Moldavian'),
(2168, 'mo', 'lt', 'Moldavian'),
(2169, 'mo', 'mk_MK', 'Moldavian'),
(2170, 'mo', 'mt', 'Moldavian'),
(2171, 'mo', 'mo', 'Moldavian'),
(2172, 'mo', 'mn', 'Moldavian'),
(2173, 'mo', 'ne', 'Moldavian'),
(2174, 'mo', 'nl_NL', 'Moldavisch'),
(2175, 'mo', 'nb_NO', 'Moldavian'),
(2176, 'mo', 'pa', 'Moldavian'),
(2177, 'mo', 'pl_PL', 'mołdawski'),
(2178, 'mo', 'pt_PT', 'Moldavo'),
(2179, 'mo', 'qu', 'Moldavian'),
(2180, 'mo', 'ro_RO', 'Moldoveană'),
(2181, 'mo', 'ru_RU', 'Молдавский'),
(2182, 'mo', 'sl_SI', 'Moldavian'),
(2183, 'mo', 'so', 'Moldavian'),
(2184, 'mo', 'sq', 'Moldavian'),
(2185, 'mo', 'sr_RS', 'Moldavian'),
(2186, 'mo', 'sv_SE', 'Moldaviska'),
(2187, 'mo', 'ta', 'Moldavian'),
(2188, 'mo', 'th', 'มอลดาเวียน'),
(2189, 'mo', 'tr', 'Moldovyaca'),
(2190, 'mo', 'uk_UA', 'Moldavian'),
(2191, 'mo', 'ur', 'Moldavian'),
(2192, 'mo', 'uz_UZ', 'Moldavian'),
(2193, 'mo', 'vi', 'Moldavian'),
(2194, 'mo', 'yi', 'Moldavian'),
(2195, 'mo', 'zu', 'Moldavian'),
(2196, 'mo', 'zh_CN', 'Moldavian'),
(2197, 'mn', 'en_US', 'Mongolian'),
(2198, 'mn', 'es_ES', 'Mongol'),
(2199, 'mn', 'de_DE', 'Mongolisch'),
(2200, 'mn', 'fr_FR', 'Mongol'),
(2201, 'mn', 'ar', 'المنغولية'),
(2202, 'mn', 'bs', 'Mongolian'),
(2203, 'mn', 'bg_BG', 'Mongolian'),
(2204, 'mn', 'ca', 'Mongolian'),
(2205, 'mn', 'cs_CZ', 'Mongolian'),
(2206, 'mn', 'sk_SK', 'Mongolština'),
(2207, 'mn', 'cy', 'Mongolian'),
(2208, 'mn', 'da_DK', 'Mongolian'),
(2209, 'mn', 'el', 'Μογγολικα'),
(2210, 'mn', 'eo', 'Mongolian'),
(2211, 'mn', 'et', 'Mongolian'),
(2212, 'mn', 'eu', 'Mongolian'),
(2213, 'mn', 'fa_IR', 'Mongolian'),
(2214, 'mn', 'fi_FI', 'mongoli'),
(2215, 'mn', 'ga', 'Mongolian'),
(2216, 'mn', 'he_IL', 'Mongolian'),
(2217, 'mn', 'hi', 'Mongolian'),
(2218, 'mn', 'hr', 'Mongolian'),
(2219, 'mn', 'hu_HU', 'mongol'),
(2220, 'mn', 'hy', 'Mongolian'),
(2221, 'mn', 'id_ID', 'Mongolian'),
(2222, 'mn', 'is_IS', 'Mongolian'),
(2223, 'mn', 'it_IT', 'Mongolo'),
(2224, 'mn', 'ja', 'モンゴル語'),
(2225, 'mn', 'ko_KR', '몽골어'),
(2226, 'mn', 'ku', 'Mongolian'),
(2227, 'mn', 'la', 'Mongolian'),
(2228, 'mn', 'lv', 'Mongolian'),
(2229, 'mn', 'lt', 'Mongolian'),
(2230, 'mn', 'mk_MK', 'Mongolian'),
(2231, 'mn', 'mt', 'Mongolian'),
(2232, 'mn', 'mo', 'Mongolian'),
(2233, 'mn', 'mn', 'Mongolian'),
(2234, 'mn', 'ne', 'Mongolian'),
(2235, 'mn', 'nl_NL', 'Mongools'),
(2236, 'mn', 'nb_NO', 'Mongolian'),
(2237, 'mn', 'pa', 'Mongolian'),
(2238, 'mn', 'pl_PL', 'mongolski'),
(2239, 'mn', 'pt_PT', 'Mongolian'),
(2240, 'mn', 'qu', 'Mongolian'),
(2241, 'mn', 'ro_RO', 'Mongoleză'),
(2242, 'mn', 'ru_RU', 'Монгольский'),
(2243, 'mn', 'sl_SI', 'Mongolian'),
(2244, 'mn', 'so', 'Mongolian'),
(2245, 'mn', 'sq', 'Mongolian'),
(2246, 'mn', 'sr_RS', 'Mongolian'),
(2247, 'mn', 'sv_SE', 'Mongoliska'),
(2248, 'mn', 'ta', 'Mongolian'),
(2249, 'mn', 'th', 'มองโกเลีย'),
(2250, 'mn', 'tr', 'Mongolca'),
(2251, 'mn', 'uk_UA', 'Mongolian'),
(2252, 'mn', 'ur', 'Mongolian'),
(2253, 'mn', 'uz_UZ', 'Mongolian'),
(2254, 'mn', 'vi', 'Mongolian'),
(2255, 'mn', 'yi', 'Mongolian'),
(2256, 'mn', 'zu', 'Mongolian'),
(2257, 'mn', 'zh_CN', 'Mongolian'),
(2258, 'ne', 'en_US', 'Nepali'),
(2259, 'ne', 'es_ES', 'Nepalí'),
(2260, 'ne', 'de_DE', 'Nepali'),
(2261, 'ne', 'fr_FR', 'Népalais'),
(2262, 'ne', 'ar', 'النيبالية'),
(2263, 'ne', 'bs', 'Nepali'),
(2264, 'ne', 'bg_BG', 'Nepali'),
(2265, 'ne', 'ca', 'Nepali'),
(2266, 'ne', 'cs_CZ', 'Nepali'),
(2267, 'ne', 'sk_SK', 'Nepálčina'),
(2268, 'ne', 'cy', 'Nepali'),
(2269, 'ne', 'da_DK', 'Nepali'),
(2270, 'ne', 'el', 'Νεπαλι'),
(2271, 'ne', 'eo', 'Nepali'),
(2272, 'ne', 'et', 'Nepali'),
(2273, 'ne', 'eu', 'Nepali'),
(2274, 'ne', 'fa_IR', 'Nepali'),
(2275, 'ne', 'fi_FI', 'nepali'),
(2276, 'ne', 'ga', 'Nepali'),
(2277, 'ne', 'he_IL', 'Nepali'),
(2278, 'ne', 'hi', 'Nepali'),
(2279, 'ne', 'hr', 'Nepali'),
(2280, 'ne', 'hu_HU', 'nepáli'),
(2281, 'ne', 'hy', 'Nepali'),
(2282, 'ne', 'id_ID', 'Nepali'),
(2283, 'ne', 'is_IS', 'Nepali'),
(2284, 'ne', 'it_IT', 'Nepalese'),
(2285, 'ne', 'ja', 'ネパール語'),
(2286, 'ne', 'ko_KR', '네팔어'),
(2287, 'ne', 'ku', 'Nepali'),
(2288, 'ne', 'la', 'Nepali'),
(2289, 'ne', 'lv', 'Nepali'),
(2290, 'ne', 'lt', 'Nepali'),
(2291, 'ne', 'mk_MK', 'Nepali'),
(2292, 'ne', 'mt', 'Nepali'),
(2293, 'ne', 'mo', 'Nepali'),
(2294, 'ne', 'mn', 'Nepali'),
(2295, 'ne', 'ne', 'Nepali'),
(2296, 'ne', 'nl_NL', 'Nepalees'),
(2297, 'ne', 'nb_NO', 'Nepali'),
(2298, 'ne', 'pa', 'Nepali'),
(2299, 'ne', 'pl_PL', 'nepalski'),
(2300, 'ne', 'pt_PT', 'Nepali'),
(2301, 'ne', 'qu', 'Nepali'),
(2302, 'ne', 'ro_RO', 'Nepaleză'),
(2303, 'ne', 'ru_RU', 'Непальский'),
(2304, 'ne', 'sl_SI', 'Nepali'),
(2305, 'ne', 'so', 'Nepali'),
(2306, 'ne', 'sq', 'Nepali'),
(2307, 'ne', 'sr_RS', 'Nepali'),
(2308, 'ne', 'sv_SE', 'Nepalesiska'),
(2309, 'ne', 'ta', 'Nepali'),
(2310, 'ne', 'th', 'เนปาล'),
(2311, 'ne', 'tr', 'Nepal dili'),
(2312, 'ne', 'uk_UA', 'Nepali'),
(2313, 'ne', 'ur', 'Nepali'),
(2314, 'ne', 'uz_UZ', 'Nepali'),
(2315, 'ne', 'vi', 'Nepali'),
(2316, 'ne', 'yi', 'Nepali'),
(2317, 'ne', 'zu', 'Nepali'),
(2318, 'ne', 'zh_CN', 'Nepali'),
(2319, 'nl_NL', 'en_US', 'Dutch'),
(2320, 'nl_NL', 'es_ES', 'Holandés'),
(2321, 'nl_NL', 'de_DE', 'Holländisch'),
(2322, 'nl_NL', 'fr_FR', 'Néerlandais'),
(2323, 'nl_NL', 'ar', 'الهولندية'),
(2324, 'nl_NL', 'bs', 'Dutch'),
(2325, 'nl_NL', 'bg_BG', 'Dutch'),
(2326, 'nl_NL', 'ca', 'Dutch'),
(2327, 'nl_NL', 'cs_CZ', 'Dutch'),
(2328, 'nl_NL', 'sk_SK', 'Holandčina'),
(2329, 'nl_NL', 'cy', 'Dutch'),
(2330, 'nl_NL', 'da_DK', 'Dutch'),
(2331, 'nl_NL', 'el', 'Ολλανδικα'),
(2332, 'nl_NL', 'eo', 'Dutch'),
(2333, 'nl_NL', 'et', 'Dutch'),
(2334, 'nl_NL', 'eu', 'Dutch'),
(2335, 'nl_NL', 'fa_IR', 'Dutch'),
(2336, 'nl_NL', 'fi_FI', 'hollanti'),
(2337, 'nl_NL', 'ga', 'Dutch'),
(2338, 'nl_NL', 'he_IL', 'הולנדית'),
(2339, 'nl_NL', 'hi', 'Dutch'),
(2340, 'nl_NL', 'hr', 'Dutch'),
(2341, 'nl_NL', 'hu_HU', 'holland'),
(2342, 'nl_NL', 'hy', 'Dutch'),
(2343, 'nl_NL', 'id_ID', 'Dutch'),
(2344, 'nl_NL', 'is_IS', 'Dutch'),
(2345, 'nl_NL', 'it_IT', 'Neerlandese'),
(2346, 'nl_NL', 'ja', 'オランダ語'),
(2347, 'nl_NL', 'ko_KR', '화란어'),
(2348, 'nl_NL', 'ku', 'Dutch'),
(2349, 'nl_NL', 'la', 'Dutch'),
(2350, 'nl_NL', 'lv', 'Dutch'),
(2351, 'nl_NL', 'lt', 'Dutch'),
(2352, 'nl_NL', 'mk_MK', 'Dutch'),
(2353, 'nl_NL', 'mt', 'Dutch'),
(2354, 'nl_NL', 'mo', 'Dutch'),
(2355, 'nl_NL', 'mn', 'Dutch'),
(2356, 'nl_NL', 'ne', 'Dutch'),
(2357, 'nl_NL', 'nl_NL', 'Nederlands'),
(2358, 'nl_NL', 'nb_NO', 'Dutch'),
(2359, 'nl_NL', 'pa', 'Dutch'),
(2360, 'nl_NL', 'pl_PL', 'holenderski'),
(2361, 'nl_NL', 'pt_PT', 'Holandês'),
(2362, 'nl_NL', 'qu', 'Dutch'),
(2363, 'nl_NL', 'ro_RO', 'Olaneză'),
(2364, 'nl_NL', 'ru_RU', 'Голландский'),
(2365, 'nl_NL', 'sl_SI', 'Dutch'),
(2366, 'nl_NL', 'so', 'Dutch'),
(2367, 'nl_NL', 'sq', 'Dutch'),
(2368, 'nl_NL', 'sr_RS', 'Dutch'),
(2369, 'nl_NL', 'sv_SE', 'Nederländska'),
(2370, 'nl_NL', 'ta', 'Dutch'),
(2371, 'nl_NL', 'th', 'ดัตช์'),
(2372, 'nl_NL', 'tr', 'Hollandaca'),
(2373, 'nl_NL', 'uk_UA', 'Dutch'),
(2374, 'nl_NL', 'ur', 'Dutch'),
(2375, 'nl_NL', 'uz_UZ', 'Dutch'),
(2376, 'nl_NL', 'vi', 'Dutch'),
(2377, 'nl_NL', 'yi', 'Dutch'),
(2378, 'nl_NL', 'zu', 'Dutch'),
(2379, 'nl_NL', 'zh_CN', 'Dutch'),
(2380, 'nb_NO', 'en_US', 'Norwegian Bokmål'),
(2381, 'nb_NO', 'es_ES', 'Bokmål'),
(2382, 'nb_NO', 'de_DE', 'Norwegisch (Buchsprache)'),
(2383, 'nb_NO', 'fr_FR', 'Norvégien Bokmål'),
(2384, 'nb_NO', 'ar', 'البوكمالية النرويجية'),
(2385, 'nb_NO', 'bs', 'Norwegian Bokm'),
(2386, 'nb_NO', 'bg_BG', 'Norwegian Bokm'),
(2387, 'nb_NO', 'ca', 'Norwegian Bokm'),
(2388, 'nb_NO', 'cs_CZ', 'Norwegian Bokm'),
(2389, 'nb_NO', 'sk_SK', 'Nórsky jazyk Bokmål'),
(2390, 'nb_NO', 'cy', 'Norwegian Bokm'),
(2391, 'nb_NO', 'da_DK', 'Norwegian Bokm'),
(2392, 'nb_NO', 'el', 'Νορβηγικα'),
(2393, 'nb_NO', 'eo', 'Norwegian Bokm'),
(2394, 'nb_NO', 'et', 'Norwegian Bokm'),
(2395, 'nb_NO', 'eu', 'Norwegian Bokm'),
(2396, 'nb_NO', 'fa_IR', 'Norwegian Bokm'),
(2397, 'nb_NO', 'fi_FI', 'kirjanorja'),
(2398, 'nb_NO', 'ga', 'Norwegian Bokm'),
(2399, 'nb_NO', 'he_IL', 'נורווגית'),
(2400, 'nb_NO', 'hi', 'Norwegian Bokm'),
(2401, 'nb_NO', 'hr', 'Norwegian Bokm'),
(2402, 'nb_NO', 'hu_HU', 'norvég bokmål'),
(2403, 'nb_NO', 'hy', 'Norwegian Bokm'),
(2404, 'nb_NO', 'id_ID', 'Norwegian Bokm'),
(2405, 'nb_NO', 'is_IS', 'Norwegian Bokm'),
(2406, 'nb_NO', 'it_IT', 'Norvegese Bokmål'),
(2407, 'nb_NO', 'ja', 'ノルウェー・ブークモール'),
(2408, 'nb_NO', 'ko_KR', '노르웨이 보크말어'),
(2409, 'nb_NO', 'ku', 'Norwegian Bokm'),
(2410, 'nb_NO', 'la', 'Norwegian Bokm'),
(2411, 'nb_NO', 'lv', 'Norwegian Bokm'),
(2412, 'nb_NO', 'lt', 'Norwegian Bokm'),
(2413, 'nb_NO', 'mk_MK', 'Norwegian Bokm'),
(2414, 'nb_NO', 'mt', 'Norwegian Bokm'),
(2415, 'nb_NO', 'mo', 'Norwegian Bokm'),
(2416, 'nb_NO', 'mn', 'Norwegian Bokm'),
(2417, 'nb_NO', 'ne', 'Norwegian Bokm'),
(2418, 'nb_NO', 'nl_NL', 'Noors Bokmål'),
(2419, 'nb_NO', 'nb_NO', 'Norwegian Bokm'),
(2420, 'nb_NO', 'pa', 'Norwegian Bokm'),
(2421, 'nb_NO', 'pl_PL', 'norweski bokmål'),
(2422, 'nb_NO', 'pt_PT', 'Norueguês'),
(2423, 'nb_NO', 'qu', 'Norwegian Bokm'),
(2424, 'nb_NO', 'ro_RO', 'Bokmål (norvegiană)'),
(2425, 'nb_NO', 'ru_RU', 'Норвежский букмол'),
(2426, 'nb_NO', 'sl_SI', 'Norwegian Bokm'),
(2427, 'nb_NO', 'so', 'Norwegian Bokm'),
(2428, 'nb_NO', 'sq', 'Norwegian Bokm'),
(2429, 'nb_NO', 'sr_RS', 'Norwegian Bokm'),
(2430, 'nb_NO', 'sv_SE', 'Norskt Bokmål'),
(2431, 'nb_NO', 'ta', 'Norwegian Bokm'),
(2432, 'nb_NO', 'th', 'นอร์วิเจียนบอกมาล'),
(2433, 'nb_NO', 'tr', 'Bokmal Norveç dili'),
(2434, 'nb_NO', 'uk_UA', 'Norwegian Bokm'),
(2435, 'nb_NO', 'ur', 'Norwegian Bokm'),
(2436, 'nb_NO', 'uz_UZ', 'Norwegian Bokm'),
(2437, 'nb_NO', 'vi', 'Norwegian Bokm'),
(2438, 'nb_NO', 'yi', 'Norwegian Bokm'),
(2439, 'nb_NO', 'zu', 'Norwegian Bokm'),
(2440, 'nb_NO', 'zh_CN', 'Norwegian Bokm'),
(2441, 'pa', 'en_US', 'Punjabi'),
(2442, 'pa', 'es_ES', 'Panyabí'),
(2443, 'pa', 'de_DE', 'Pandschabi'),
(2444, 'pa', 'fr_FR', 'Panjabi'),
(2445, 'pa', 'ar', 'البنجابية'),
(2446, 'pa', 'bs', 'Punjabi'),
(2447, 'pa', 'bg_BG', 'Punjabi'),
(2448, 'pa', 'ca', 'Punjabi'),
(2449, 'pa', 'cs_CZ', 'Punjabi'),
(2450, 'pa', 'sk_SK', 'Pandžábčina'),
(2451, 'pa', 'cy', 'Punjabi'),
(2452, 'pa', 'da_DK', 'Punjabi'),
(2453, 'pa', 'el', 'Panjabi'),
(2454, 'pa', 'eo', 'Punjabi'),
(2455, 'pa', 'et', 'Punjabi'),
(2456, 'pa', 'eu', 'Punjabi'),
(2457, 'pa', 'fa_IR', 'Punjabi'),
(2458, 'pa', 'fi_FI', 'pandzabi'),
(2459, 'pa', 'ga', 'Punjabi'),
(2460, 'pa', 'he_IL', 'Punjabi'),
(2461, 'pa', 'hi', 'Punjabi'),
(2462, 'pa', 'hr', 'Punjabi'),
(2463, 'pa', 'hu_HU', 'pandzsábi'),
(2464, 'pa', 'hy', 'Punjabi'),
(2465, 'pa', 'id_ID', 'Punjabi'),
(2466, 'pa', 'is_IS', 'Punjabi'),
(2467, 'pa', 'it_IT', 'Panjabi'),
(2468, 'pa', 'ja', 'パンジャーブ語'),
(2469, 'pa', 'ko_KR', '펀자브어'),
(2470, 'pa', 'ku', 'Punjabi'),
(2471, 'pa', 'la', 'Punjabi'),
(2472, 'pa', 'lv', 'Punjabi'),
(2473, 'pa', 'lt', 'Punjabi'),
(2474, 'pa', 'mk_MK', 'Punjabi'),
(2475, 'pa', 'mt', 'Punjabi'),
(2476, 'pa', 'mo', 'Punjabi'),
(2477, 'pa', 'mn', 'Punjabi'),
(2478, 'pa', 'ne', 'Punjabi'),
(2479, 'pa', 'nl_NL', 'Punjabi'),
(2480, 'pa', 'nb_NO', 'Punjabi'),
(2481, 'pa', 'pa', 'Punjabi'),
(2482, 'pa', 'pl_PL', 'pendżabi'),
(2483, 'pa', 'pt_PT', 'Panjabi'),
(2484, 'pa', 'qu', 'Punjabi'),
(2485, 'pa', 'ro_RO', 'Punjabi'),
(2486, 'pa', 'ru_RU', 'Панджаби'),
(2487, 'pa', 'sl_SI', 'Punjabi'),
(2488, 'pa', 'so', 'Punjabi'),
(2489, 'pa', 'sq', 'Punjabi'),
(2490, 'pa', 'sr_RS', 'Punjabi'),
(2491, 'pa', 'sv_SE', 'Punjabi'),
(2492, 'pa', 'ta', 'Punjabi'),
(2493, 'pa', 'th', 'ปัญจาบ'),
(2494, 'pa', 'tr', 'Pencapça'),
(2495, 'pa', 'uk_UA', 'Punjabi'),
(2496, 'pa', 'ur', 'Punjabi'),
(2497, 'pa', 'uz_UZ', 'Punjabi'),
(2498, 'pa', 'vi', 'Punjabi'),
(2499, 'pa', 'yi', 'Punjabi'),
(2500, 'pa', 'zu', 'Punjabi'),
(2501, 'pa', 'zh_CN', 'Punjabi'),
(2502, 'pl_PL', 'en_US', 'Polish'),
(2503, 'pl_PL', 'es_ES', 'Polaco'),
(2504, 'pl_PL', 'de_DE', 'Polnisch'),
(2505, 'pl_PL', 'fr_FR', 'Polonais'),
(2506, 'pl_PL', 'ar', 'البولندية'),
(2507, 'pl_PL', 'bs', 'Polish'),
(2508, 'pl_PL', 'bg_BG', 'Polish'),
(2509, 'pl_PL', 'ca', 'Polish'),
(2510, 'pl_PL', 'cs_CZ', 'Polish'),
(2511, 'pl_PL', 'sk_SK', 'Polština'),
(2512, 'pl_PL', 'cy', 'Polish'),
(2513, 'pl_PL', 'da_DK', 'Polish'),
(2514, 'pl_PL', 'el', 'Πολωνικα'),
(2515, 'pl_PL', 'eo', 'Polish'),
(2516, 'pl_PL', 'et', 'Polish'),
(2517, 'pl_PL', 'eu', 'Polish'),
(2518, 'pl_PL', 'fa_IR', 'Polish'),
(2519, 'pl_PL', 'fi_FI', 'puola'),
(2520, 'pl_PL', 'ga', 'Polish'),
(2521, 'pl_PL', 'he_IL', 'פולנית'),
(2522, 'pl_PL', 'hi', 'Polish'),
(2523, 'pl_PL', 'hr', 'Polish'),
(2524, 'pl_PL', 'hu_HU', 'lengyel'),
(2525, 'pl_PL', 'hy', 'Polish'),
(2526, 'pl_PL', 'id_ID', 'Polish'),
(2527, 'pl_PL', 'is_IS', 'Polish'),
(2528, 'pl_PL', 'it_IT', 'Polacco'),
(2529, 'pl_PL', 'ja', 'ポーランド語'),
(2530, 'pl_PL', 'ko_KR', '폴란드어'),
(2531, 'pl_PL', 'ku', 'Polish'),
(2532, 'pl_PL', 'la', 'Polish'),
(2533, 'pl_PL', 'lv', 'Polish'),
(2534, 'pl_PL', 'lt', 'Polish'),
(2535, 'pl_PL', 'mk_MK', 'Polish'),
(2536, 'pl_PL', 'mt', 'Polish'),
(2537, 'pl_PL', 'mo', 'Polish'),
(2538, 'pl_PL', 'mn', 'Polish'),
(2539, 'pl_PL', 'ne', 'Polish'),
(2540, 'pl_PL', 'nl_NL', 'Pools'),
(2541, 'pl_PL', 'nb_NO', 'Polish'),
(2542, 'pl_PL', 'pa', 'Polish'),
(2543, 'pl_PL', 'pl_PL', 'polski'),
(2544, 'pl_PL', 'pt_PT', 'Polonês'),
(2545, 'pl_PL', 'qu', 'Polish'),
(2546, 'pl_PL', 'ro_RO', 'Poloneză'),
(2547, 'pl_PL', 'ru_RU', 'Польский'),
(2548, 'pl_PL', 'sl_SI', 'Polish'),
(2549, 'pl_PL', 'so', 'Polish'),
(2550, 'pl_PL', 'sq', 'Polish'),
(2551, 'pl_PL', 'sr_RS', 'Polish'),
(2552, 'pl_PL', 'sv_SE', 'Polska'),
(2553, 'pl_PL', 'ta', 'Polish'),
(2554, 'pl_PL', 'th', 'โปแลนด์'),
(2555, 'pl_PL', 'tr', 'Polonyaca'),
(2556, 'pl_PL', 'uk_UA', 'Polish'),
(2557, 'pl_PL', 'ur', 'Polish'),
(2558, 'pl_PL', 'uz_UZ', 'Polish'),
(2559, 'pl_PL', 'vi', 'Polish'),
(2560, 'pl_PL', 'yi', 'Polish'),
(2561, 'pl_PL', 'zu', 'Polish'),
(2562, 'pl_PL', 'zh_CN', 'Polish'),
(2563, 'pt_PT', 'en_US', 'Portuguese (Portugal)'),
(2564, 'pt_PT', 'es_ES', 'Portugués, Portugal'),
(2565, 'pt_PT', 'de_DE', 'Portugiesisch, Portugal'),
(2566, 'pt_PT', 'fr_FR', 'Portugais - du Portugal'),
(2567, 'pt_PT', 'ar', 'البرتغالية ، البرتغال'),
(2568, 'pt_PT', 'bs', 'Portuguese, Portugal'),
(2569, 'pt_PT', 'bg_BG', 'Portuguese, Portugal'),
(2570, 'pt_PT', 'ca', 'Portuguese, Portugal'),
(2571, 'pt_PT', 'cs_CZ', 'Portuguese, Portugal'),
(2572, 'pt_PT', 'sk_SK', 'Portugalština'),
(2573, 'pt_PT', 'cy', 'Portuguese, Portugal'),
(2574, 'pt_PT', 'da_DK', 'Portuguese, Portugal'),
(2575, 'pt_PT', 'el', 'Πορτογαλικα'),
(2576, 'pt_PT', 'eo', 'Portuguese, Portugal'),
(2577, 'pt_PT', 'et', 'Portuguese, Portugal'),
(2578, 'pt_PT', 'eu', 'Portuguese, Portugal'),
(2579, 'pt_PT', 'fa_IR', 'Portuguese, Portugal'),
(2580, 'pt_PT', 'fi_FI', 'portugali'),
(2581, 'pt_PT', 'ga', 'Portuguese, Portugal'),
(2582, 'pt_PT', 'he_IL', 'פורטוגזית'),
(2583, 'pt_PT', 'hi', 'Portuguese, Portugal'),
(2584, 'pt_PT', 'hr', 'Portuguese, Portugal'),
(2585, 'pt_PT', 'hu_HU', 'portugál'),
(2586, 'pt_PT', 'hy', 'Portuguese, Portugal'),
(2587, 'pt_PT', 'id_ID', 'Portuguese, Portugal'),
(2588, 'pt_PT', 'is_IS', 'Portuguese, Portugal'),
(2589, 'pt_PT', 'it_IT', 'Portoghese, Portogallo'),
(2590, 'pt_PT', 'ja', 'ポルトガル語'),
(2591, 'pt_PT', 'ko_KR', '포르투갈 포르투갈어'),
(2592, 'pt_PT', 'ku', 'Portuguese, Portugal'),
(2593, 'pt_PT', 'la', 'Portuguese, Portugal'),
(2594, 'pt_PT', 'lv', 'Portuguese, Portugal'),
(2595, 'pt_PT', 'lt', 'Portuguese, Portugal'),
(2596, 'pt_PT', 'mk_MK', 'Portuguese, Portugal'),
(2597, 'pt_PT', 'mt', 'Portuguese, Portugal'),
(2598, 'pt_PT', 'mo', 'Portuguese, Portugal'),
(2599, 'pt_PT', 'mn', 'Portuguese, Portugal'),
(2600, 'pt_PT', 'ne', 'Portuguese, Portugal'),
(2601, 'pt_PT', 'nl_NL', 'Portugees, Portugal'),
(2602, 'pt_PT', 'nb_NO', 'Portuguese, Portugal'),
(2603, 'pt_PT', 'pa', 'Portuguese, Portugal'),
(2604, 'pt_PT', 'pl_PL', 'portugalski, Portugalia'),
(2605, 'pt_PT', 'pt_PT', 'Português'),
(2606, 'pt_PT', 'qu', 'Portuguese, Portugal'),
(2607, 'pt_PT', 'ro_RO', 'Portugheză (Portugalia)'),
(2608, 'pt_PT', 'ru_RU', 'Португальский, Португалия'),
(2609, 'pt_PT', 'sl_SI', 'Portuguese, Portugal'),
(2610, 'pt_PT', 'so', 'Portuguese, Portugal'),
(2611, 'pt_PT', 'sq', 'Portuguese, Portugal'),
(2612, 'pt_PT', 'sr_RS', 'Portuguese, Portugal'),
(2613, 'pt_PT', 'sv_SE', 'Portugisiska, Portugal'),
(2614, 'pt_PT', 'ta', 'Portuguese, Portugal'),
(2615, 'pt_PT', 'th', 'โปรตุเกส'),
(2616, 'pt_PT', 'tr', 'Portekizce, Portekiz'),
(2617, 'pt_PT', 'uk_UA', 'Portuguese, Portugal'),
(2618, 'pt_PT', 'ur', 'Portuguese, Portugal'),
(2619, 'pt_PT', 'uz_UZ', 'Portuguese, Portugal'),
(2620, 'pt_PT', 'vi', 'Portuguese, Portugal'),
(2621, 'pt_PT', 'yi', 'Portuguese, Portugal'),
(2622, 'pt_PT', 'zu', 'Portuguese, Portugal'),
(2623, 'pt_PT', 'zh_CN', 'Portuguese, Portugal'),
(2624, 'qu', 'en_US', 'Quechua'),
(2625, 'qu', 'es_ES', 'Quechua'),
(2626, 'qu', 'de_DE', 'Quechua'),
(2627, 'qu', 'fr_FR', 'Quechua'),
(2628, 'qu', 'ar', 'الكويتشوا'),
(2629, 'qu', 'bs', 'Quechua'),
(2630, 'qu', 'bg_BG', 'Quechua'),
(2631, 'qu', 'ca', 'Quechua'),
(2632, 'qu', 'cs_CZ', 'Quechua'),
(2633, 'qu', 'sk_SK', 'Jazyk Quechua'),
(2634, 'qu', 'cy', 'Quechua'),
(2635, 'qu', 'da_DK', 'Quechua'),
(2636, 'qu', 'el', 'Κετσουα'),
(2637, 'qu', 'eo', 'Quechua'),
(2638, 'qu', 'et', 'Quechua'),
(2639, 'qu', 'eu', 'Quechua'),
(2640, 'qu', 'fa_IR', 'Quechua'),
(2641, 'qu', 'fi_FI', 'ketsua'),
(2642, 'qu', 'ga', 'Quechua'),
(2643, 'qu', 'he_IL', 'Quechua'),
(2644, 'qu', 'hi', 'Quechua'),
(2645, 'qu', 'hr', 'Quechua'),
(2646, 'qu', 'hu_HU', 'quechua'),
(2647, 'qu', 'hy', 'Quechua'),
(2648, 'qu', 'id_ID', 'Quechua'),
(2649, 'qu', 'is_IS', 'Quechua'),
(2650, 'qu', 'it_IT', 'Quechua'),
(2651, 'qu', 'ja', 'ケチュア語'),
(2652, 'qu', 'ko_KR', '케추아어'),
(2653, 'qu', 'ku', 'Quechua'),
(2654, 'qu', 'la', 'Quechua'),
(2655, 'qu', 'lv', 'Quechua'),
(2656, 'qu', 'lt', 'Quechua'),
(2657, 'qu', 'mk_MK', 'Quechua'),
(2658, 'qu', 'mt', 'Quechua'),
(2659, 'qu', 'mo', 'Quechua'),
(2660, 'qu', 'mn', 'Quechua'),
(2661, 'qu', 'ne', 'Quechua'),
(2662, 'qu', 'nl_NL', 'Quechua'),
(2663, 'qu', 'nb_NO', 'Quechua'),
(2664, 'qu', 'pa', 'Quechua'),
(2665, 'qu', 'pl_PL', 'keczua'),
(2666, 'qu', 'pt_PT', 'Quechua'),
(2667, 'qu', 'qu', 'Quechua'),
(2668, 'qu', 'ro_RO', 'Quechuană'),
(2669, 'qu', 'ru_RU', 'Кечуа'),
(2670, 'qu', 'sl_SI', 'Quechua'),
(2671, 'qu', 'so', 'Quechua'),
(2672, 'qu', 'sq', 'Quechua'),
(2673, 'qu', 'sr_RS', 'Quechua'),
(2674, 'qu', 'sv_SE', 'Quechua'),
(2675, 'qu', 'ta', 'Quechua'),
(2676, 'qu', 'th', 'คิวชัว'),
(2677, 'qu', 'tr', 'Quechua dili'),
(2678, 'qu', 'uk_UA', 'Quechua'),
(2679, 'qu', 'ur', 'Quechua'),
(2680, 'qu', 'uz_UZ', 'Quechua'),
(2681, 'qu', 'vi', 'Quechua'),
(2682, 'qu', 'yi', 'Quechua'),
(2683, 'qu', 'zu', 'Quechua'),
(2684, 'qu', 'zh_CN', 'Quechua'),
(2685, 'ro_RO', 'en_US', 'Romanian'),
(2686, 'ro_RO', 'es_ES', 'Rumano'),
(2687, 'ro_RO', 'de_DE', 'Rumänisch'),
(2688, 'ro_RO', 'fr_FR', 'Roumain'),
(2689, 'ro_RO', 'ar', 'الرومانية'),
(2690, 'ro_RO', 'bs', 'Romanian'),
(2691, 'ro_RO', 'bg_BG', 'Romanian'),
(2692, 'ro_RO', 'ca', 'Romanian'),
(2693, 'ro_RO', 'cs_CZ', 'Romanian'),
(2694, 'ro_RO', 'sk_SK', 'Rumunčina'),
(2695, 'ro_RO', 'cy', 'Romanian'),
(2696, 'ro_RO', 'da_DK', 'Romanian'),
(2697, 'ro_RO', 'el', 'Ρουμανικα'),
(2698, 'ro_RO', 'eo', 'Romanian'),
(2699, 'ro_RO', 'et', 'Romanian'),
(2700, 'ro_RO', 'eu', 'Romanian'),
(2701, 'ro_RO', 'fa_IR', 'Romanian'),
(2702, 'ro_RO', 'fi_FI', 'romania'),
(2703, 'ro_RO', 'ga', 'Romanian'),
(2704, 'ro_RO', 'he_IL', 'רומנית'),
(2705, 'ro_RO', 'hi', 'Romanian'),
(2706, 'ro_RO', 'hr', 'Romanian'),
(2707, 'ro_RO', 'hu_HU', 'román'),
(2708, 'ro_RO', 'hy', 'Romanian'),
(2709, 'ro_RO', 'id_ID', 'Romanian'),
(2710, 'ro_RO', 'is_IS', 'Romanian'),
(2711, 'ro_RO', 'it_IT', 'Rumeno'),
(2712, 'ro_RO', 'ja', 'ルーマニア語'),
(2713, 'ro_RO', 'ko_KR', '로마니아어'),
(2714, 'ro_RO', 'ku', 'Romanian'),
(2715, 'ro_RO', 'la', 'Romanian'),
(2716, 'ro_RO', 'lv', 'Romanian'),
(2717, 'ro_RO', 'lt', 'Romanian'),
(2718, 'ro_RO', 'mk_MK', 'Romanian'),
(2719, 'ro_RO', 'mt', 'Romanian'),
(2720, 'ro_RO', 'mo', 'Romanian'),
(2721, 'ro_RO', 'mn', 'Romanian'),
(2722, 'ro_RO', 'ne', 'Romanian'),
(2723, 'ro_RO', 'nl_NL', 'Roemeens'),
(2724, 'ro_RO', 'nb_NO', 'Romanian'),
(2725, 'ro_RO', 'pa', 'Romanian'),
(2726, 'ro_RO', 'pl_PL', 'rumuński'),
(2727, 'ro_RO', 'pt_PT', 'Romeno'),
(2728, 'ro_RO', 'qu', 'Romanian'),
(2729, 'ro_RO', 'ro_RO', 'Română'),
(2730, 'ro_RO', 'ru_RU', 'Румынский'),
(2731, 'ro_RO', 'sl_SI', 'Romanian'),
(2732, 'ro_RO', 'so', 'Romanian'),
(2733, 'ro_RO', 'sq', 'Romanian'),
(2734, 'ro_RO', 'sr_RS', 'Romanian'),
(2735, 'ro_RO', 'sv_SE', 'Rumänska'),
(2736, 'ro_RO', 'ta', 'Romanian'),
(2737, 'ro_RO', 'th', 'โรมาเนีย'),
(2738, 'ro_RO', 'tr', 'Rumence'),
(2739, 'ro_RO', 'uk_UA', 'Romanian'),
(2740, 'ro_RO', 'ur', 'Romanian'),
(2741, 'ro_RO', 'uz_UZ', 'Romanian'),
(2742, 'ro_RO', 'vi', 'Romanian'),
(2743, 'ro_RO', 'yi', 'Romanian'),
(2744, 'ro_RO', 'zu', 'Romanian'),
(2745, 'ro_RO', 'zh_CN', 'Romanian'),
(2746, 'ru_RU', 'en_US', 'Russian'),
(2747, 'ru_RU', 'es_ES', 'Ruso'),
(2748, 'ru_RU', 'de_DE', 'Russisch'),
(2749, 'ru_RU', 'fr_FR', 'Russe'),
(2750, 'ru_RU', 'ar', 'الروسية'),
(2751, 'ru_RU', 'bs', 'Russian'),
(2752, 'ru_RU', 'bg_BG', 'Russian'),
(2753, 'ru_RU', 'ca', 'Russian'),
(2754, 'ru_RU', 'cs_CZ', 'Russian'),
(2755, 'ru_RU', 'sk_SK', 'Ruština'),
(2756, 'ru_RU', 'cy', 'Russian'),
(2757, 'ru_RU', 'da_DK', 'Russian'),
(2758, 'ru_RU', 'el', 'Ρωσικα'),
(2759, 'ru_RU', 'eo', 'Russian'),
(2760, 'ru_RU', 'et', 'Russian'),
(2761, 'ru_RU', 'eu', 'Russian'),
(2762, 'ru_RU', 'fa_IR', 'Russian'),
(2763, 'ru_RU', 'fi_FI', 'venäjä'),
(2764, 'ru_RU', 'ga', 'Russian'),
(2765, 'ru_RU', 'he_IL', 'רוסית'),
(2766, 'ru_RU', 'hi', 'Russian'),
(2767, 'ru_RU', 'hr', 'Russian'),
(2768, 'ru_RU', 'hu_HU', 'orosz'),
(2769, 'ru_RU', 'hy', 'Russian'),
(2770, 'ru_RU', 'id_ID', 'Russian'),
(2771, 'ru_RU', 'is_IS', 'Russian'),
(2772, 'ru_RU', 'it_IT', 'Russo'),
(2773, 'ru_RU', 'ja', 'ロシア語'),
(2774, 'ru_RU', 'ko_KR', '러시아어'),
(2775, 'ru_RU', 'ku', 'Russian'),
(2776, 'ru_RU', 'la', 'Russian'),
(2777, 'ru_RU', 'lv', 'Russian'),
(2778, 'ru_RU', 'lt', 'Russian'),
(2779, 'ru_RU', 'mk_MK', 'Russian'),
(2780, 'ru_RU', 'mt', 'Russian'),
(2781, 'ru_RU', 'mo', 'Russian'),
(2782, 'ru_RU', 'mn', 'Russian'),
(2783, 'ru_RU', 'ne', 'Russian'),
(2784, 'ru_RU', 'nl_NL', 'Russisch'),
(2785, 'ru_RU', 'nb_NO', 'Russian'),
(2786, 'ru_RU', 'pa', 'Russian'),
(2787, 'ru_RU', 'pl_PL', 'rosyjski'),
(2788, 'ru_RU', 'pt_PT', 'Russo'),
(2789, 'ru_RU', 'qu', 'Russian'),
(2790, 'ru_RU', 'ro_RO', 'Rusă'),
(2791, 'ru_RU', 'ru_RU', 'Русский'),
(2792, 'ru_RU', 'sl_SI', 'Russian'),
(2793, 'ru_RU', 'so', 'Russian'),
(2794, 'ru_RU', 'sq', 'Russian'),
(2795, 'ru_RU', 'sr_RS', 'Russian'),
(2796, 'ru_RU', 'sv_SE', 'Ryska'),
(2797, 'ru_RU', 'ta', 'Russian'),
(2798, 'ru_RU', 'th', 'รัสเซีย'),
(2799, 'ru_RU', 'tr', 'Rusça'),
(2800, 'ru_RU', 'uk_UA', 'Russian'),
(2801, 'ru_RU', 'ur', 'Russian'),
(2802, 'ru_RU', 'uz_UZ', 'Russian'),
(2803, 'ru_RU', 'vi', 'Russian'),
(2804, 'ru_RU', 'yi', 'Russian'),
(2805, 'ru_RU', 'zu', 'Russian'),
(2806, 'ru_RU', 'zh_CN', 'Russian'),
(2807, 'sl_SI', 'en_US', 'Slovenian'),
(2808, 'sl_SI', 'es_ES', 'Esloveno'),
(2809, 'sl_SI', 'de_DE', 'Slowenisch'),
(2810, 'sl_SI', 'fr_FR', 'Slovène'),
(2811, 'sl_SI', 'ar', 'السلوفانية'),
(2812, 'sl_SI', 'bs', 'Slovenian'),
(2813, 'sl_SI', 'bg_BG', 'Slovenian'),
(2814, 'sl_SI', 'ca', 'Slovenian'),
(2815, 'sl_SI', 'cs_CZ', 'Slovenian'),
(2816, 'sl_SI', 'sk_SK', 'Slovinčina'),
(2817, 'sl_SI', 'cy', 'Slovenian'),
(2818, 'sl_SI', 'da_DK', 'Slovenian'),
(2819, 'sl_SI', 'el', 'Σλοβενικα'),
(2820, 'sl_SI', 'eo', 'Slovenian'),
(2821, 'sl_SI', 'et', 'Slovenian'),
(2822, 'sl_SI', 'eu', 'Slovenian'),
(2823, 'sl_SI', 'fa_IR', 'Slovenian'),
(2824, 'sl_SI', 'fi_FI', 'sloveeni'),
(2825, 'sl_SI', 'ga', 'Slovenian'),
(2826, 'sl_SI', 'he_IL', 'Slovenian'),
(2827, 'sl_SI', 'hi', 'Slovenian'),
(2828, 'sl_SI', 'hr', 'Slovenian'),
(2829, 'sl_SI', 'hu_HU', 'szlovén'),
(2830, 'sl_SI', 'hy', 'Slovenian'),
(2831, 'sl_SI', 'id_ID', 'Slovenian'),
(2832, 'sl_SI', 'is_IS', 'Slovenian'),
(2833, 'sl_SI', 'it_IT', 'Sloveno'),
(2834, 'sl_SI', 'ja', 'スロベニア語'),
(2835, 'sl_SI', 'ko_KR', '슬로베니아어'),
(2836, 'sl_SI', 'ku', 'Slovenian'),
(2837, 'sl_SI', 'la', 'Slovenian'),
(2838, 'sl_SI', 'lv', 'Slovenian'),
(2839, 'sl_SI', 'lt', 'Slovenian'),
(2840, 'sl_SI', 'mk_MK', 'Slovenian'),
(2841, 'sl_SI', 'mt', 'Slovenian'),
(2842, 'sl_SI', 'mo', 'Slovenian'),
(2843, 'sl_SI', 'mn', 'Slovenian'),
(2844, 'sl_SI', 'ne', 'Slovenian'),
(2845, 'sl_SI', 'nl_NL', 'Sloveens'),
(2846, 'sl_SI', 'nb_NO', 'Slovenian'),
(2847, 'sl_SI', 'pa', 'Slovenian'),
(2848, 'sl_SI', 'pl_PL', 'słoweński'),
(2849, 'sl_SI', 'pt_PT', 'Esloveno'),
(2850, 'sl_SI', 'qu', 'Slovenian'),
(2851, 'sl_SI', 'ro_RO', 'Slovenă'),
(2852, 'sl_SI', 'ru_RU', 'Словенский'),
(2853, 'sl_SI', 'sl_SI', 'Slovenian'),
(2854, 'sl_SI', 'so', 'Slovenian'),
(2855, 'sl_SI', 'sq', 'Slovenian'),
(2856, 'sl_SI', 'sr_RS', 'Slovenian'),
(2857, 'sl_SI', 'sv_SE', 'Slovenska'),
(2858, 'sl_SI', 'ta', 'Slovenian'),
(2859, 'sl_SI', 'th', 'สโลวีเนียน'),
(2860, 'sl_SI', 'tr', 'Sloven dili'),
(2861, 'sl_SI', 'uk_UA', 'Slovenian'),
(2862, 'sl_SI', 'ur', 'Slovenian'),
(2863, 'sl_SI', 'uz_UZ', 'Slovenian'),
(2864, 'sl_SI', 'vi', 'Slovenian'),
(2865, 'sl_SI', 'yi', 'Slovenian'),
(2866, 'sl_SI', 'zu', 'Slovenian'),
(2867, 'sl_SI', 'zh_CN', 'Slovenian'),
(2868, 'so', 'en_US', 'Somali'),
(2869, 'so', 'es_ES', 'Somalí'),
(2870, 'so', 'de_DE', 'Somali'),
(2871, 'so', 'fr_FR', 'Somali'),
(2872, 'so', 'ar', 'الصومالية'),
(2873, 'so', 'bs', 'Somali'),
(2874, 'so', 'bg_BG', 'Somali'),
(2875, 'so', 'ca', 'Somali'),
(2876, 'so', 'cs_CZ', 'Somali'),
(2877, 'so', 'sk_SK', 'Somálčina'),
(2878, 'so', 'cy', 'Somali'),
(2879, 'so', 'da_DK', 'Somali'),
(2880, 'so', 'el', 'Somali'),
(2881, 'so', 'eo', 'Somali'),
(2882, 'so', 'et', 'Somali'),
(2883, 'so', 'eu', 'Somali'),
(2884, 'so', 'fa_IR', 'Somali'),
(2885, 'so', 'fi_FI', 'somali'),
(2886, 'so', 'ga', 'Somali'),
(2887, 'so', 'he_IL', 'Somali'),
(2888, 'so', 'hi', 'Somali'),
(2889, 'so', 'hr', 'Somali'),
(2890, 'so', 'hu_HU', 'szomáli'),
(2891, 'so', 'hy', 'Somali'),
(2892, 'so', 'id_ID', 'Somali'),
(2893, 'so', 'is_IS', 'Somali'),
(2894, 'so', 'it_IT', 'Somalo'),
(2895, 'so', 'ja', 'ソマリ語'),
(2896, 'so', 'ko_KR', '소말리아어'),
(2897, 'so', 'ku', 'Somali'),
(2898, 'so', 'la', 'Somali'),
(2899, 'so', 'lv', 'Somali'),
(2900, 'so', 'lt', 'Somali'),
(2901, 'so', 'mk_MK', 'Somali'),
(2902, 'so', 'mt', 'Somali'),
(2903, 'so', 'mo', 'Somali'),
(2904, 'so', 'mn', 'Somali'),
(2905, 'so', 'ne', 'Somali'),
(2906, 'so', 'nl_NL', 'Somalisch'),
(2907, 'so', 'nb_NO', 'Somali'),
(2908, 'so', 'pa', 'Somali'),
(2909, 'so', 'pl_PL', 'somalijski'),
(2910, 'so', 'pt_PT', 'Somali'),
(2911, 'so', 'qu', 'Somali'),
(2912, 'so', 'ro_RO', 'Somaleză'),
(2913, 'so', 'ru_RU', 'Сомалийский'),
(2914, 'so', 'sl_SI', 'Somali'),
(2915, 'so', 'so', 'Somali'),
(2916, 'so', 'sq', 'Somali'),
(2917, 'so', 'sr_RS', 'Somali'),
(2918, 'so', 'sv_SE', 'Somaliska'),
(2919, 'so', 'ta', 'Somali'),
(2920, 'so', 'th', 'โซมาลี'),
(2921, 'so', 'tr', 'Somalice'),
(2922, 'so', 'uk_UA', 'Somali'),
(2923, 'so', 'ur', 'Somali'),
(2924, 'so', 'uz_UZ', 'Somali'),
(2925, 'so', 'vi', 'Somali'),
(2926, 'so', 'yi', 'Somali'),
(2927, 'so', 'zu', 'Somali'),
(2928, 'so', 'zh_CN', 'Somali'),
(2929, 'sq', 'en_US', 'Albanian'),
(2930, 'sq', 'es_ES', 'Albanés'),
(2931, 'sq', 'de_DE', 'Albanisch'),
(2932, 'sq', 'fr_FR', 'Albanais'),
(2933, 'sq', 'ar', 'الألبانية'),
(2934, 'sq', 'bs', 'Albanian'),
(2935, 'sq', 'bg_BG', 'Albanian'),
(2936, 'sq', 'ca', 'Albanian'),
(2937, 'sq', 'cs_CZ', 'Albanian'),
(2938, 'sq', 'sk_SK', 'Albánčina'),
(2939, 'sq', 'cy', 'Albanian'),
(2940, 'sq', 'da_DK', 'Albanian'),
(2941, 'sq', 'el', 'Αλβανικα'),
(2942, 'sq', 'eo', 'Albanian'),
(2943, 'sq', 'et', 'Albanian'),
(2944, 'sq', 'eu', 'Albanian'),
(2945, 'sq', 'fa_IR', 'Albanian'),
(2946, 'sq', 'fi_FI', 'albania'),
(2947, 'sq', 'ga', 'Albanian'),
(2948, 'sq', 'he_IL', 'Albanian'),
(2949, 'sq', 'hi', 'Albanian'),
(2950, 'sq', 'hr', 'Albanian'),
(2951, 'sq', 'hu_HU', 'albán'),
(2952, 'sq', 'hy', 'Albanian'),
(2953, 'sq', 'id_ID', 'Albanian'),
(2954, 'sq', 'is_IS', 'Albanian'),
(2955, 'sq', 'it_IT', 'Albanese'),
(2956, 'sq', 'ja', 'アルバニア語'),
(2957, 'sq', 'ko_KR', '알바니아어'),
(2958, 'sq', 'ku', 'Albanian'),
(2959, 'sq', 'la', 'Albanian'),
(2960, 'sq', 'lv', 'Albanian'),
(2961, 'sq', 'lt', 'Albanian'),
(2962, 'sq', 'mk_MK', 'Albanian'),
(2963, 'sq', 'mt', 'Albanian'),
(2964, 'sq', 'mo', 'Albanian'),
(2965, 'sq', 'mn', 'Albanian'),
(2966, 'sq', 'ne', 'Albanian'),
(2967, 'sq', 'nl_NL', 'Albaans'),
(2968, 'sq', 'nb_NO', 'Albanian'),
(2969, 'sq', 'pa', 'Albanian'),
(2970, 'sq', 'pl_PL', 'albański'),
(2971, 'sq', 'pt_PT', 'Albanês'),
(2972, 'sq', 'qu', 'Albanian'),
(2973, 'sq', 'ro_RO', 'Albaneză'),
(2974, 'sq', 'ru_RU', 'Албанский'),
(2975, 'sq', 'sl_SI', 'Albanian'),
(2976, 'sq', 'so', 'Albanian'),
(2977, 'sq', 'sq', 'Albanian'),
(2978, 'sq', 'sr_RS', 'Albanian'),
(2979, 'sq', 'sv_SE', 'Albanska'),
(2980, 'sq', 'ta', 'Albanian'),
(2981, 'sq', 'th', 'อัลเบเนีย'),
(2982, 'sq', 'tr', 'Arnavutça'),
(2983, 'sq', 'uk_UA', 'Albanian'),
(2984, 'sq', 'ur', 'Albanian'),
(2985, 'sq', 'uz_UZ', 'Albanian'),
(2986, 'sq', 'vi', 'Albanian'),
(2987, 'sq', 'yi', 'Albanian'),
(2988, 'sq', 'zu', 'Albanian'),
(2989, 'sq', 'zh_CN', 'Albanian'),
(2990, 'sr_RS', 'en_US', 'Serbian'),
(2991, 'sr_RS', 'es_ES', 'Serbio'),
(2992, 'sr_RS', 'de_DE', 'Serbisch'),
(2993, 'sr_RS', 'fr_FR', 'Serbe'),
(2994, 'sr_RS', 'ar', 'الصربية'),
(2995, 'sr_RS', 'bs', 'Serbian'),
(2996, 'sr_RS', 'bg_BG', 'Serbian'),
(2997, 'sr_RS', 'ca', 'Serbian'),
(2998, 'sr_RS', 'cs_CZ', 'Serbian'),
(2999, 'sr_RS', 'sk_SK', 'Srbština'),
(3000, 'sr_RS', 'cy', 'Serbian'),
(3001, 'sr_RS', 'da_DK', 'Serbian');
INSERT INTO `wp_zwt_languages_translations` (`id`, `language_code`, `display_language_code`, `name`) VALUES
(3002, 'sr_RS', 'el', 'Σερβικα'),
(3003, 'sr_RS', 'eo', 'Serbian'),
(3004, 'sr_RS', 'et', 'Serbian'),
(3005, 'sr_RS', 'eu', 'Serbian'),
(3006, 'sr_RS', 'fa_IR', 'Serbian'),
(3007, 'sr_RS', 'fi_FI', 'serbia'),
(3008, 'sr_RS', 'ga', 'Serbian'),
(3009, 'sr_RS', 'he_IL', 'Serbian'),
(3010, 'sr_RS', 'hi', 'Serbian'),
(3011, 'sr_RS', 'hr', 'Serbian'),
(3012, 'sr_RS', 'hu_HU', 'szerb'),
(3013, 'sr_RS', 'hy', 'Serbian'),
(3014, 'sr_RS', 'id_ID', 'Serbian'),
(3015, 'sr_RS', 'is_IS', 'Serbian'),
(3016, 'sr_RS', 'it_IT', 'Serbo'),
(3017, 'sr_RS', 'ja', 'セルビア語'),
(3018, 'sr_RS', 'ko_KR', '세르비아어'),
(3019, 'sr_RS', 'ku', 'Serbian'),
(3020, 'sr_RS', 'la', 'Serbian'),
(3021, 'sr_RS', 'lv', 'Serbian'),
(3022, 'sr_RS', 'lt', 'Serbian'),
(3023, 'sr_RS', 'mk_MK', 'Serbian'),
(3024, 'sr_RS', 'mt', 'Serbian'),
(3025, 'sr_RS', 'mo', 'Serbian'),
(3026, 'sr_RS', 'mn', 'Serbian'),
(3027, 'sr_RS', 'ne', 'Serbian'),
(3028, 'sr_RS', 'nl_NL', 'Servisch'),
(3029, 'sr_RS', 'nb_NO', 'Serbian'),
(3030, 'sr_RS', 'pa', 'Serbian'),
(3031, 'sr_RS', 'pl_PL', 'serbski'),
(3032, 'sr_RS', 'pt_PT', 'Sérvio'),
(3033, 'sr_RS', 'qu', 'Serbian'),
(3034, 'sr_RS', 'ro_RO', 'Sârbă'),
(3035, 'sr_RS', 'ru_RU', 'Сербский'),
(3036, 'sr_RS', 'sl_SI', 'Serbian'),
(3037, 'sr_RS', 'so', 'Serbian'),
(3038, 'sr_RS', 'sq', 'Serbian'),
(3039, 'sr_RS', 'sr_RS', 'Serbian'),
(3040, 'sr_RS', 'sv_SE', 'Serbiska'),
(3041, 'sr_RS', 'ta', 'Serbian'),
(3042, 'sr_RS', 'th', 'เซอร์เบีย'),
(3043, 'sr_RS', 'tr', 'Sırpça'),
(3044, 'sr_RS', 'uk_UA', 'Serbian'),
(3045, 'sr_RS', 'ur', 'Serbian'),
(3046, 'sr_RS', 'uz_UZ', 'Serbian'),
(3047, 'sr_RS', 'vi', 'Serbian'),
(3048, 'sr_RS', 'yi', 'Serbian'),
(3049, 'sr_RS', 'zu', 'Serbian'),
(3050, 'sr_RS', 'zh_CN', 'Serbian'),
(3051, 'sv_SE', 'en_US', 'Swedish'),
(3052, 'sv_SE', 'es_ES', 'Sueco'),
(3053, 'sv_SE', 'de_DE', 'Schwedisch'),
(3054, 'sv_SE', 'fr_FR', 'Suédois'),
(3055, 'sv_SE', 'ar', 'السويدية'),
(3056, 'sv_SE', 'bs', 'Swedish'),
(3057, 'sv_SE', 'bg_BG', 'Swedish'),
(3058, 'sv_SE', 'ca', 'Swedish'),
(3059, 'sv_SE', 'cs_CZ', 'Swedish'),
(3060, 'sv_SE', 'sk_SK', 'Švédština'),
(3061, 'sv_SE', 'cy', 'Swedish'),
(3062, 'sv_SE', 'da_DK', 'Swedish'),
(3063, 'sv_SE', 'el', 'Σουηδικη'),
(3064, 'sv_SE', 'eo', 'Swedish'),
(3065, 'sv_SE', 'et', 'Swedish'),
(3066, 'sv_SE', 'eu', 'Swedish'),
(3067, 'sv_SE', 'fa_IR', 'Swedish'),
(3068, 'sv_SE', 'fi_FI', 'ruotsi'),
(3069, 'sv_SE', 'ga', 'Swedish'),
(3070, 'sv_SE', 'he_IL', 'שוודית'),
(3071, 'sv_SE', 'hi', 'Swedish'),
(3072, 'sv_SE', 'hr', 'Swedish'),
(3073, 'sv_SE', 'hu_HU', 'svéd'),
(3074, 'sv_SE', 'hy', 'Swedish'),
(3075, 'sv_SE', 'id_ID', 'Swedish'),
(3076, 'sv_SE', 'is_IS', 'Swedish'),
(3077, 'sv_SE', 'it_IT', 'Svedese'),
(3078, 'sv_SE', 'ja', 'スウェーデン語'),
(3079, 'sv_SE', 'ko_KR', '스웨덴어'),
(3080, 'sv_SE', 'ku', 'Swedish'),
(3081, 'sv_SE', 'la', 'Swedish'),
(3082, 'sv_SE', 'lv', 'Swedish'),
(3083, 'sv_SE', 'lt', 'Swedish'),
(3084, 'sv_SE', 'mk_MK', 'Swedish'),
(3085, 'sv_SE', 'mt', 'Swedish'),
(3086, 'sv_SE', 'mo', 'Swedish'),
(3087, 'sv_SE', 'mn', 'Swedish'),
(3088, 'sv_SE', 'ne', 'Swedish'),
(3089, 'sv_SE', 'nl_NL', 'Zweeds'),
(3090, 'sv_SE', 'nb_NO', 'Swedish'),
(3091, 'sv_SE', 'pa', 'Swedish'),
(3092, 'sv_SE', 'pl_PL', 'szwedzki'),
(3093, 'sv_SE', 'pt_PT', 'Sueco'),
(3094, 'sv_SE', 'qu', 'Swedish'),
(3095, 'sv_SE', 'ro_RO', 'Suedeză'),
(3096, 'sv_SE', 'ru_RU', 'Шведский'),
(3097, 'sv_SE', 'sl_SI', 'Swedish'),
(3098, 'sv_SE', 'so', 'Swedish'),
(3099, 'sv_SE', 'sq', 'Swedish'),
(3100, 'sv_SE', 'sr_RS', 'Swedish'),
(3101, 'sv_SE', 'sv_SE', 'Svenska'),
(3102, 'sv_SE', 'ta', 'Swedish'),
(3103, 'sv_SE', 'th', 'สวีเดน'),
(3104, 'sv_SE', 'tr', 'İsveççe'),
(3105, 'sv_SE', 'uk_UA', 'Swedish'),
(3106, 'sv_SE', 'ur', 'Swedish'),
(3107, 'sv_SE', 'uz_UZ', 'Swedish'),
(3108, 'sv_SE', 'vi', 'Swedish'),
(3109, 'sv_SE', 'yi', 'Swedish'),
(3110, 'sv_SE', 'zu', 'Swedish'),
(3111, 'sv_SE', 'zh_CN', 'Swedish'),
(3112, 'ta', 'en_US', 'Tamil'),
(3113, 'ta', 'es_ES', 'Tamil'),
(3114, 'ta', 'de_DE', 'Tamil'),
(3115, 'ta', 'fr_FR', 'Tamoul'),
(3116, 'ta', 'ar', 'التاميلية'),
(3117, 'ta', 'bs', 'Tamil'),
(3118, 'ta', 'bg_BG', 'Tamil'),
(3119, 'ta', 'ca', 'Tamil'),
(3120, 'ta', 'cs_CZ', 'Tamil'),
(3121, 'ta', 'sk_SK', 'Tamilčina'),
(3122, 'ta', 'cy', 'Tamil'),
(3123, 'ta', 'da_DK', 'Tamil'),
(3124, 'ta', 'el', 'Ταμιλ'),
(3125, 'ta', 'eo', 'Tamil'),
(3126, 'ta', 'et', 'Tamil'),
(3127, 'ta', 'eu', 'Tamil'),
(3128, 'ta', 'fa_IR', 'Tamil'),
(3129, 'ta', 'fi_FI', 'tamili'),
(3130, 'ta', 'ga', 'Tamil'),
(3131, 'ta', 'he_IL', 'Tamil'),
(3132, 'ta', 'hi', 'Tamil'),
(3133, 'ta', 'hr', 'Tamil'),
(3134, 'ta', 'hu_HU', 'tamil'),
(3135, 'ta', 'hy', 'Tamil'),
(3136, 'ta', 'id_ID', 'Tamil'),
(3137, 'ta', 'is_IS', 'Tamil'),
(3138, 'ta', 'it_IT', 'Tamil'),
(3139, 'ta', 'ja', 'タミル語'),
(3140, 'ta', 'ko_KR', '타밀어'),
(3141, 'ta', 'ku', 'Tamil'),
(3142, 'ta', 'la', 'Tamil'),
(3143, 'ta', 'lv', 'Tamil'),
(3144, 'ta', 'lt', 'Tamil'),
(3145, 'ta', 'mk_MK', 'Tamil'),
(3146, 'ta', 'mt', 'Tamil'),
(3147, 'ta', 'mo', 'Tamil'),
(3148, 'ta', 'mn', 'Tamil'),
(3149, 'ta', 'ne', 'Tamil'),
(3150, 'ta', 'nl_NL', 'Tamil'),
(3151, 'ta', 'nb_NO', 'Tamil'),
(3152, 'ta', 'pa', 'Tamil'),
(3153, 'ta', 'pl_PL', 'tamilski'),
(3154, 'ta', 'pt_PT', 'Tamil'),
(3155, 'ta', 'qu', 'Tamil'),
(3156, 'ta', 'ro_RO', 'Tamilă'),
(3157, 'ta', 'ru_RU', 'Тамильский'),
(3158, 'ta', 'sl_SI', 'Tamil'),
(3159, 'ta', 'so', 'Tamil'),
(3160, 'ta', 'sq', 'Tamil'),
(3161, 'ta', 'sr_RS', 'Tamil'),
(3162, 'ta', 'sv_SE', 'Tamil'),
(3163, 'ta', 'ta', 'Tamil'),
(3164, 'ta', 'th', 'ทมิฬ'),
(3165, 'ta', 'tr', 'Tamil dili'),
(3166, 'ta', 'uk_UA', 'Tamil'),
(3167, 'ta', 'ur', 'Tamil'),
(3168, 'ta', 'uz_UZ', 'Tamil'),
(3169, 'ta', 'vi', 'Tamil'),
(3170, 'ta', 'yi', 'Tamil'),
(3171, 'ta', 'zu', 'Tamil'),
(3172, 'ta', 'zh_CN', 'Tamil'),
(3173, 'th', 'en_US', 'Thai'),
(3174, 'th', 'es_ES', 'Tailandés'),
(3175, 'th', 'de_DE', 'Thai'),
(3176, 'th', 'fr_FR', 'Thaï'),
(3177, 'th', 'ar', 'التايلندية'),
(3178, 'th', 'bs', 'Thai'),
(3179, 'th', 'bg_BG', 'Thai'),
(3180, 'th', 'ca', 'Thai'),
(3181, 'th', 'cs_CZ', 'Thai'),
(3182, 'th', 'sk_SK', 'Thajština'),
(3183, 'th', 'cy', 'Thai'),
(3184, 'th', 'da_DK', 'Thai'),
(3185, 'th', 'el', 'Thai'),
(3186, 'th', 'eo', 'Thai'),
(3187, 'th', 'et', 'Thai'),
(3188, 'th', 'eu', 'Thai'),
(3189, 'th', 'fa_IR', 'Thai'),
(3190, 'th', 'fi_FI', 'thai'),
(3191, 'th', 'ga', 'Thai'),
(3192, 'th', 'he_IL', 'Thai'),
(3193, 'th', 'hi', 'Thai'),
(3194, 'th', 'hr', 'Thai'),
(3195, 'th', 'hu_HU', 'tájföldi'),
(3196, 'th', 'hy', 'Thai'),
(3197, 'th', 'id_ID', 'Thai'),
(3198, 'th', 'is_IS', 'Thai'),
(3199, 'th', 'it_IT', 'Thai'),
(3200, 'th', 'ja', 'タイ語'),
(3201, 'th', 'ko_KR', '태국어'),
(3202, 'th', 'ku', 'Thai'),
(3203, 'th', 'la', 'Thai'),
(3204, 'th', 'lv', 'Thai'),
(3205, 'th', 'lt', 'Thai'),
(3206, 'th', 'mk_MK', 'Thai'),
(3207, 'th', 'mt', 'Thai'),
(3208, 'th', 'mo', 'Thai'),
(3209, 'th', 'mn', 'Thai'),
(3210, 'th', 'ne', 'Thai'),
(3211, 'th', 'nl_NL', 'Thai'),
(3212, 'th', 'nb_NO', 'Thai'),
(3213, 'th', 'pa', 'Thai'),
(3214, 'th', 'pl_PL', 'tajski'),
(3215, 'th', 'pt_PT', 'Tailandês'),
(3216, 'th', 'qu', 'Thai'),
(3217, 'th', 'ro_RO', 'Tailandeză'),
(3218, 'th', 'ru_RU', 'Тайский'),
(3219, 'th', 'sl_SI', 'Thai'),
(3220, 'th', 'so', 'Thai'),
(3221, 'th', 'sq', 'Thai'),
(3222, 'th', 'sr_RS', 'Thai'),
(3223, 'th', 'sv_SE', 'Thailändska'),
(3224, 'th', 'ta', 'Thai'),
(3225, 'th', 'th', 'ไทย'),
(3226, 'th', 'tr', 'Tayca'),
(3227, 'th', 'uk_UA', 'Thai'),
(3228, 'th', 'ur', 'Thai'),
(3229, 'th', 'uz_UZ', 'Thai'),
(3230, 'th', 'vi', 'Thai'),
(3231, 'th', 'yi', 'Thai'),
(3232, 'th', 'zu', 'Thai'),
(3233, 'th', 'zh_CN', 'Thai'),
(3234, 'tr', 'en_US', 'Turkish'),
(3235, 'tr', 'es_ES', 'Turco'),
(3236, 'tr', 'de_DE', 'Türkisch'),
(3237, 'tr', 'fr_FR', 'Turc'),
(3238, 'tr', 'ar', 'التركية'),
(3239, 'tr', 'bs', 'Turkish'),
(3240, 'tr', 'bg_BG', 'Turkish'),
(3241, 'tr', 'ca', 'Turkish'),
(3242, 'tr', 'cs_CZ', 'Turkish'),
(3243, 'tr', 'sk_SK', 'Turečtina'),
(3244, 'tr', 'cy', 'Turkish'),
(3245, 'tr', 'da_DK', 'Turkish'),
(3246, 'tr', 'el', 'Τουρκικα'),
(3247, 'tr', 'eo', 'Turkish'),
(3248, 'tr', 'et', 'Turkish'),
(3249, 'tr', 'eu', 'Turkish'),
(3250, 'tr', 'fa_IR', 'Turkish'),
(3251, 'tr', 'fi_FI', 'turkki'),
(3252, 'tr', 'ga', 'Turkish'),
(3253, 'tr', 'he_IL', 'תורכית'),
(3254, 'tr', 'hi', 'Turkish'),
(3255, 'tr', 'hr', 'Turkish'),
(3256, 'tr', 'hu_HU', 'török'),
(3257, 'tr', 'hy', 'Turkish'),
(3258, 'tr', 'id_ID', 'Turkish'),
(3259, 'tr', 'is_IS', 'Turkish'),
(3260, 'tr', 'it_IT', 'Turco'),
(3261, 'tr', 'ja', 'トルコ語'),
(3262, 'tr', 'ko_KR', '터어키어'),
(3263, 'tr', 'ku', 'Turkish'),
(3264, 'tr', 'la', 'Turkish'),
(3265, 'tr', 'lv', 'Turkish'),
(3266, 'tr', 'lt', 'Turkish'),
(3267, 'tr', 'mk_MK', 'Turkish'),
(3268, 'tr', 'mt', 'Turkish'),
(3269, 'tr', 'mo', 'Turkish'),
(3270, 'tr', 'mn', 'Turkish'),
(3271, 'tr', 'ne', 'Turkish'),
(3272, 'tr', 'nl_NL', 'Turks'),
(3273, 'tr', 'nb_NO', 'Turkish'),
(3274, 'tr', 'pa', 'Turkish'),
(3275, 'tr', 'pl_PL', 'turecki'),
(3276, 'tr', 'pt_PT', 'Turco'),
(3277, 'tr', 'qu', 'Turkish'),
(3278, 'tr', 'ro_RO', 'Turcă'),
(3279, 'tr', 'ru_RU', 'Турецкий'),
(3280, 'tr', 'sl_SI', 'Turkish'),
(3281, 'tr', 'so', 'Turkish'),
(3282, 'tr', 'sq', 'Turkish'),
(3283, 'tr', 'sr_RS', 'Turkish'),
(3284, 'tr', 'sv_SE', 'Turkiska'),
(3285, 'tr', 'ta', 'Turkish'),
(3286, 'tr', 'th', 'ตุรกี'),
(3287, 'tr', 'tr', 'Türkçe'),
(3288, 'tr', 'uk_UA', 'Turkish'),
(3289, 'tr', 'ur', 'Turkish'),
(3290, 'tr', 'uz_UZ', 'Turkish'),
(3291, 'tr', 'vi', 'Turkish'),
(3292, 'tr', 'yi', 'Turkish'),
(3293, 'tr', 'zu', 'Turkish'),
(3294, 'tr', 'zh_CN', 'Turkish'),
(3295, 'uk_UA', 'en_US', 'Ukrainian'),
(3296, 'uk_UA', 'es_ES', 'Ucraniano'),
(3297, 'uk_UA', 'de_DE', 'Ukrainisch'),
(3298, 'uk_UA', 'fr_FR', 'Ukrainien'),
(3299, 'uk_UA', 'ar', 'الأوكرانية'),
(3300, 'uk_UA', 'bs', 'Ukrainian'),
(3301, 'uk_UA', 'bg_BG', 'Ukrainian'),
(3302, 'uk_UA', 'ca', 'Ukrainian'),
(3303, 'uk_UA', 'cs_CZ', 'Ukrainian'),
(3304, 'uk_UA', 'sk_SK', 'Ukrajinčina'),
(3305, 'uk_UA', 'cy', 'Ukrainian'),
(3306, 'uk_UA', 'da_DK', 'Ukrainian'),
(3307, 'uk_UA', 'el', 'Ουκρανικα'),
(3308, 'uk_UA', 'eo', 'Ukrainian'),
(3309, 'uk_UA', 'et', 'Ukrainian'),
(3310, 'uk_UA', 'eu', 'Ukrainian'),
(3311, 'uk_UA', 'fa_IR', 'Ukrainian'),
(3312, 'uk_UA', 'fi_FI', 'ukraina'),
(3313, 'uk_UA', 'ga', 'Ukrainian'),
(3314, 'uk_UA', 'he_IL', 'Ukrainian'),
(3315, 'uk_UA', 'hi', 'Ukrainian'),
(3316, 'uk_UA', 'hr', 'Ukrainian'),
(3317, 'uk_UA', 'hu_HU', 'ukrán'),
(3318, 'uk_UA', 'hy', 'Ukrainian'),
(3319, 'uk_UA', 'id_ID', 'Ukrainian'),
(3320, 'uk_UA', 'is_IS', 'Ukrainian'),
(3321, 'uk_UA', 'it_IT', 'Ucraino'),
(3322, 'uk_UA', 'ja', 'ウクライナ語'),
(3323, 'uk_UA', 'ko_KR', '우크라이나어'),
(3324, 'uk_UA', 'ku', 'Ukrainian'),
(3325, 'uk_UA', 'la', 'Ukrainian'),
(3326, 'uk_UA', 'lv', 'Ukrainian'),
(3327, 'uk_UA', 'lt', 'Ukrainian'),
(3328, 'uk_UA', 'mk_MK', 'Ukrainian'),
(3329, 'uk_UA', 'mt', 'Ukrainian'),
(3330, 'uk_UA', 'mo', 'Ukrainian'),
(3331, 'uk_UA', 'mn', 'Ukrainian'),
(3332, 'uk_UA', 'ne', 'Ukrainian'),
(3333, 'uk_UA', 'nl_NL', 'Oekraïens'),
(3334, 'uk_UA', 'nb_NO', 'Ukrainian'),
(3335, 'uk_UA', 'pa', 'Ukrainian'),
(3336, 'uk_UA', 'pl_PL', 'ukraiński'),
(3337, 'uk_UA', 'pt_PT', 'Ucraniano'),
(3338, 'uk_UA', 'qu', 'Ukrainian'),
(3339, 'uk_UA', 'ro_RO', 'Ucrainiană'),
(3340, 'uk_UA', 'ru_RU', 'Украинский'),
(3341, 'uk_UA', 'sl_SI', 'Ukrainian'),
(3342, 'uk_UA', 'so', 'Ukrainian'),
(3343, 'uk_UA', 'sq', 'Ukrainian'),
(3344, 'uk_UA', 'sr_RS', 'Ukrainian'),
(3345, 'uk_UA', 'sv_SE', 'Ukrainska'),
(3346, 'uk_UA', 'ta', 'Ukrainian'),
(3347, 'uk_UA', 'th', 'ยูเครน'),
(3348, 'uk_UA', 'tr', 'Ukraynaca'),
(3349, 'uk_UA', 'uk_UA', 'Ukrainian'),
(3350, 'uk_UA', 'ur', 'Ukrainian'),
(3351, 'uk_UA', 'uz_UZ', 'Ukrainian'),
(3352, 'uk_UA', 'vi', 'Ukrainian'),
(3353, 'uk_UA', 'yi', 'Ukrainian'),
(3354, 'uk_UA', 'zu', 'Ukrainian'),
(3355, 'uk_UA', 'zh_CN', 'Ukrainian'),
(3356, 'ur', 'en_US', 'Urdu'),
(3357, 'ur', 'es_ES', 'Urdu'),
(3358, 'ur', 'de_DE', 'Urdu'),
(3359, 'ur', 'fr_FR', 'Ourdu'),
(3360, 'ur', 'ar', 'الأردية'),
(3361, 'ur', 'bs', 'Urdu'),
(3362, 'ur', 'bg_BG', 'Urdu'),
(3363, 'ur', 'ca', 'Urdu'),
(3364, 'ur', 'cs_CZ', 'Urdu'),
(3365, 'ur', 'sk_SK', 'Urdština'),
(3366, 'ur', 'cy', 'Urdu'),
(3367, 'ur', 'da_DK', 'Urdu'),
(3368, 'ur', 'el', 'Ουρντου'),
(3369, 'ur', 'eo', 'Urdu'),
(3370, 'ur', 'et', 'Urdu'),
(3371, 'ur', 'eu', 'Urdu'),
(3372, 'ur', 'fa_IR', 'Urdu'),
(3373, 'ur', 'fi_FI', 'urdu'),
(3374, 'ur', 'ga', 'Urdu'),
(3375, 'ur', 'he_IL', 'Urdu'),
(3376, 'ur', 'hi', 'Urdu'),
(3377, 'ur', 'hr', 'Urdu'),
(3378, 'ur', 'hu_HU', 'urdu'),
(3379, 'ur', 'hy', 'Urdu'),
(3380, 'ur', 'id_ID', 'Urdu'),
(3381, 'ur', 'is_IS', 'Urdu'),
(3382, 'ur', 'it_IT', 'Urdu'),
(3383, 'ur', 'ja', 'ウルドゥー語'),
(3384, 'ur', 'ko_KR', '우르두어'),
(3385, 'ur', 'ku', 'Urdu'),
(3386, 'ur', 'la', 'Urdu'),
(3387, 'ur', 'lv', 'Urdu'),
(3388, 'ur', 'lt', 'Urdu'),
(3389, 'ur', 'mk_MK', 'Urdu'),
(3390, 'ur', 'mt', 'Urdu'),
(3391, 'ur', 'mo', 'Urdu'),
(3392, 'ur', 'mn', 'Urdu'),
(3393, 'ur', 'ne', 'Urdu'),
(3394, 'ur', 'nl_NL', 'Urdu'),
(3395, 'ur', 'nb_NO', 'Urdu'),
(3396, 'ur', 'pa', 'Urdu'),
(3397, 'ur', 'pl_PL', 'urdu'),
(3398, 'ur', 'pt_PT', 'Urdu'),
(3399, 'ur', 'qu', 'Urdu'),
(3400, 'ur', 'ro_RO', 'Urdu'),
(3401, 'ur', 'ru_RU', 'Урду'),
(3402, 'ur', 'sl_SI', 'Urdu'),
(3403, 'ur', 'so', 'Urdu'),
(3404, 'ur', 'sq', 'Urdu'),
(3405, 'ur', 'sr_RS', 'Urdu'),
(3406, 'ur', 'sv_SE', 'Urdu'),
(3407, 'ur', 'ta', 'Urdu'),
(3408, 'ur', 'th', 'อุรดู'),
(3409, 'ur', 'tr', 'Urduca'),
(3410, 'ur', 'uk_UA', 'Urdu'),
(3411, 'ur', 'ur', 'Urdu'),
(3412, 'ur', 'uz_UZ', 'Urdu'),
(3413, 'ur', 'vi', 'Urdu'),
(3414, 'ur', 'yi', 'Urdu'),
(3415, 'ur', 'zu', 'Urdu'),
(3416, 'ur', 'zh_CN', 'Urdu'),
(3417, 'uz_UZ', 'en_US', 'Uzbek'),
(3418, 'uz_UZ', 'es_ES', 'Uzbeko'),
(3419, 'uz_UZ', 'de_DE', 'Usbekisch'),
(3420, 'uz_UZ', 'fr_FR', 'Ouzbek'),
(3421, 'uz_UZ', 'ar', 'الاوزباكية'),
(3422, 'uz_UZ', 'bs', 'Uzbek'),
(3423, 'uz_UZ', 'bg_BG', 'Uzbek'),
(3424, 'uz_UZ', 'ca', 'Uzbek'),
(3425, 'uz_UZ', 'cs_CZ', 'Uzbek'),
(3426, 'uz_UZ', 'sk_SK', 'Uzbekčina'),
(3427, 'uz_UZ', 'cy', 'Uzbek'),
(3428, 'uz_UZ', 'da_DK', 'Uzbek'),
(3429, 'uz_UZ', 'el', 'Ουζμπεκικα'),
(3430, 'uz_UZ', 'eo', 'Uzbek'),
(3431, 'uz_UZ', 'et', 'Uzbek'),
(3432, 'uz_UZ', 'eu', 'Uzbek'),
(3433, 'uz_UZ', 'fa_IR', 'Uzbek'),
(3434, 'uz_UZ', 'fi_FI', 'uzbekki'),
(3435, 'uz_UZ', 'ga', 'Uzbek'),
(3436, 'uz_UZ', 'he_IL', 'Uzbek'),
(3437, 'uz_UZ', 'hi', 'Uzbek'),
(3438, 'uz_UZ', 'hr', 'Uzbek'),
(3439, 'uz_UZ', 'hu_HU', 'üzbég'),
(3440, 'uz_UZ', 'hy', 'Uzbek'),
(3441, 'uz_UZ', 'id_ID', 'Uzbek'),
(3442, 'uz_UZ', 'is_IS', 'Uzbek'),
(3443, 'uz_UZ', 'it_IT', 'Uzbeco'),
(3444, 'uz_UZ', 'ja', 'ウズベク語'),
(3445, 'uz_UZ', 'ko_KR', '우즈베크어'),
(3446, 'uz_UZ', 'ku', 'Uzbek'),
(3447, 'uz_UZ', 'la', 'Uzbek'),
(3448, 'uz_UZ', 'lv', 'Uzbek'),
(3449, 'uz_UZ', 'lt', 'Uzbek'),
(3450, 'uz_UZ', 'mk_MK', 'Uzbek'),
(3451, 'uz_UZ', 'mt', 'Uzbek'),
(3452, 'uz_UZ', 'mo', 'Uzbek'),
(3453, 'uz_UZ', 'mn', 'Uzbek'),
(3454, 'uz_UZ', 'ne', 'Uzbek'),
(3455, 'uz_UZ', 'nl_NL', 'Oezbeeks'),
(3456, 'uz_UZ', 'nb_NO', 'Uzbek'),
(3457, 'uz_UZ', 'pa', 'Uzbek'),
(3458, 'uz_UZ', 'pl_PL', 'uzbecki'),
(3459, 'uz_UZ', 'pt_PT', 'Uzbeque'),
(3460, 'uz_UZ', 'qu', 'Uzbek'),
(3461, 'uz_UZ', 'ro_RO', 'Uzbecă'),
(3462, 'uz_UZ', 'ru_RU', 'Узбекский'),
(3463, 'uz_UZ', 'sl_SI', 'Uzbek'),
(3464, 'uz_UZ', 'so', 'Uzbek'),
(3465, 'uz_UZ', 'sq', 'Uzbek'),
(3466, 'uz_UZ', 'sr_RS', 'Uzbek'),
(3467, 'uz_UZ', 'sv_SE', 'Uzbekiska'),
(3468, 'uz_UZ', 'ta', 'Uzbek'),
(3469, 'uz_UZ', 'th', 'อุซเบก'),
(3470, 'uz_UZ', 'tr', 'Özbekçe'),
(3471, 'uz_UZ', 'uk_UA', 'Uzbek'),
(3472, 'uz_UZ', 'ur', 'Uzbek'),
(3473, 'uz_UZ', 'uz_UZ', 'Uzbek'),
(3474, 'uz_UZ', 'vi', 'Uzbek'),
(3475, 'uz_UZ', 'yi', 'Uzbek'),
(3476, 'uz_UZ', 'zu', 'Uzbek'),
(3477, 'uz_UZ', 'zh_CN', 'Uzbek'),
(3478, 'vi', 'en_US', 'Vietnamese'),
(3479, 'vi', 'es_ES', 'Vietnamita'),
(3480, 'vi', 'de_DE', 'Vietnamesisch'),
(3481, 'vi', 'fr_FR', 'Vietnamien'),
(3482, 'vi', 'ar', 'الفيتنامية'),
(3483, 'vi', 'bs', 'Vietnamese'),
(3484, 'vi', 'bg_BG', 'Vietnamese'),
(3485, 'vi', 'ca', 'Vietnamese'),
(3486, 'vi', 'cs_CZ', 'Vietnamese'),
(3487, 'vi', 'sk_SK', 'Vietnamčina'),
(3488, 'vi', 'cy', 'Vietnamese'),
(3489, 'vi', 'da_DK', 'Vietnamese'),
(3490, 'vi', 'el', 'Βιετναμεζικα'),
(3491, 'vi', 'eo', 'Vietnamese'),
(3492, 'vi', 'et', 'Vietnamese'),
(3493, 'vi', 'eu', 'Vietnamese'),
(3494, 'vi', 'fa_IR', 'Vietnamese'),
(3495, 'vi', 'fi_FI', 'vietnam'),
(3496, 'vi', 'ga', 'Vietnamese'),
(3497, 'vi', 'he_IL', 'Vietnamese'),
(3498, 'vi', 'hi', 'Vietnamese'),
(3499, 'vi', 'hr', 'Vietnamese'),
(3500, 'vi', 'hu_HU', 'vietnámi'),
(3501, 'vi', 'hy', 'Vietnamese'),
(3502, 'vi', 'id_ID', 'Vietnamese'),
(3503, 'vi', 'is_IS', 'Vietnamese'),
(3504, 'vi', 'it_IT', 'Vietnamita'),
(3505, 'vi', 'ja', 'ベトナム語'),
(3506, 'vi', 'ko_KR', '베트남어'),
(3507, 'vi', 'ku', 'Vietnamese'),
(3508, 'vi', 'la', 'Vietnamese'),
(3509, 'vi', 'lv', 'Vietnamese'),
(3510, 'vi', 'lt', 'Vietnamese'),
(3511, 'vi', 'mk_MK', 'Vietnamese'),
(3512, 'vi', 'mt', 'Vietnamese'),
(3513, 'vi', 'mo', 'Vietnamese'),
(3514, 'vi', 'mn', 'Vietnamese'),
(3515, 'vi', 'ne', 'Vietnamese'),
(3516, 'vi', 'nl_NL', 'Vietnamees'),
(3517, 'vi', 'nb_NO', 'Vietnamese'),
(3518, 'vi', 'pa', 'Vietnamese'),
(3519, 'vi', 'pl_PL', 'wietnamski'),
(3520, 'vi', 'pt_PT', 'Vietnamita'),
(3521, 'vi', 'qu', 'Vietnamese'),
(3522, 'vi', 'ro_RO', 'Vietnameză'),
(3523, 'vi', 'ru_RU', 'Вьетнамский'),
(3524, 'vi', 'sl_SI', 'Vietnamese'),
(3525, 'vi', 'so', 'Vietnamese'),
(3526, 'vi', 'sq', 'Vietnamese'),
(3527, 'vi', 'sr_RS', 'Vietnamese'),
(3528, 'vi', 'sv_SE', 'Vietnamesiska'),
(3529, 'vi', 'ta', 'Vietnamese'),
(3530, 'vi', 'th', 'เวียดนาม'),
(3531, 'vi', 'tr', 'Vietnamca'),
(3532, 'vi', 'uk_UA', 'Vietnamese'),
(3533, 'vi', 'ur', 'Vietnamese'),
(3534, 'vi', 'uz_UZ', 'Vietnamese'),
(3535, 'vi', 'vi', 'Vietnamese'),
(3536, 'vi', 'yi', 'Vietnamese'),
(3537, 'vi', 'zu', 'Vietnamese'),
(3538, 'vi', 'zh_CN', 'Vietnamese'),
(3539, 'yi', 'en_US', 'Yiddish'),
(3540, 'yi', 'es_ES', 'Yidis'),
(3541, 'yi', 'de_DE', 'Jiddisch'),
(3542, 'yi', 'fr_FR', 'Yiddish'),
(3543, 'yi', 'ar', 'اليديشية'),
(3544, 'yi', 'bs', 'Yiddish'),
(3545, 'yi', 'bg_BG', 'Yiddish'),
(3546, 'yi', 'ca', 'Yiddish'),
(3547, 'yi', 'cs_CZ', 'Yiddish'),
(3548, 'yi', 'sk_SK', 'Jidiš'),
(3549, 'yi', 'cy', 'Yiddish'),
(3550, 'yi', 'da_DK', 'Yiddish'),
(3551, 'yi', 'el', 'Γιντις'),
(3552, 'yi', 'eo', 'Yiddish'),
(3553, 'yi', 'et', 'Yiddish'),
(3554, 'yi', 'eu', 'Yiddish'),
(3555, 'yi', 'fa_IR', 'Yiddish'),
(3556, 'yi', 'fi_FI', 'jiddi'),
(3557, 'yi', 'ga', 'Yiddish'),
(3558, 'yi', 'he_IL', 'יידיש'),
(3559, 'yi', 'hi', 'Yiddish'),
(3560, 'yi', 'hr', 'Yiddish'),
(3561, 'yi', 'hu_HU', 'jiddis'),
(3562, 'yi', 'hy', 'Yiddish'),
(3563, 'yi', 'id_ID', 'Yiddish'),
(3564, 'yi', 'is_IS', 'Yiddish'),
(3565, 'yi', 'it_IT', 'Yiddish'),
(3566, 'yi', 'ja', 'イディッシュ語'),
(3567, 'yi', 'ko_KR', '이디시어'),
(3568, 'yi', 'ku', 'Yiddish'),
(3569, 'yi', 'la', 'Yiddish'),
(3570, 'yi', 'lv', 'Yiddish'),
(3571, 'yi', 'lt', 'Yiddish'),
(3572, 'yi', 'mk_MK', 'Yiddish'),
(3573, 'yi', 'mt', 'Yiddish'),
(3574, 'yi', 'mo', 'Yiddish'),
(3575, 'yi', 'mn', 'Yiddish'),
(3576, 'yi', 'ne', 'Yiddish'),
(3577, 'yi', 'nl_NL', 'Jiddisch'),
(3578, 'yi', 'nb_NO', 'Yiddish'),
(3579, 'yi', 'pa', 'Yiddish'),
(3580, 'yi', 'pl_PL', 'jidysz'),
(3581, 'yi', 'pt_PT', 'Yiddish'),
(3582, 'yi', 'qu', 'Yiddish'),
(3583, 'yi', 'ro_RO', 'Idiş'),
(3584, 'yi', 'ru_RU', 'Идиш'),
(3585, 'yi', 'sl_SI', 'Yiddish'),
(3586, 'yi', 'so', 'Yiddish'),
(3587, 'yi', 'sq', 'Yiddish'),
(3588, 'yi', 'sr_RS', 'Yiddish'),
(3589, 'yi', 'sv_SE', 'Jiddisch'),
(3590, 'yi', 'ta', 'Yiddish'),
(3591, 'yi', 'th', 'ยิชดิช'),
(3592, 'yi', 'tr', 'Eski İbranice'),
(3593, 'yi', 'uk_UA', 'Yiddish'),
(3594, 'yi', 'ur', 'Yiddish'),
(3595, 'yi', 'uz_UZ', 'Yiddish'),
(3596, 'yi', 'vi', 'Yiddish'),
(3597, 'yi', 'yi', 'Yiddish'),
(3598, 'yi', 'zu', 'Yiddish'),
(3599, 'yi', 'zh_CN', 'Yiddish'),
(3600, 'zu', 'en_US', 'Zulu'),
(3601, 'zu', 'es_ES', 'Zulú'),
(3602, 'zu', 'de_DE', 'Zulu'),
(3603, 'zu', 'fr_FR', 'Zoulou'),
(3604, 'zu', 'ar', 'الزولو'),
(3605, 'zu', 'bs', 'Zulu'),
(3606, 'zu', 'bg_BG', 'Zulu'),
(3607, 'zu', 'ca', 'Zulu'),
(3608, 'zu', 'cs_CZ', 'Zulu'),
(3609, 'zu', 'sk_SK', 'Jazyk Zulu'),
(3610, 'zu', 'cy', 'Zulu'),
(3611, 'zu', 'da_DK', 'Zulu'),
(3612, 'zu', 'el', 'Ζουλου'),
(3613, 'zu', 'eo', 'Zulu'),
(3614, 'zu', 'et', 'Zulu'),
(3615, 'zu', 'eu', 'Zulu'),
(3616, 'zu', 'fa_IR', 'Zulu'),
(3617, 'zu', 'fi_FI', 'zulu'),
(3618, 'zu', 'ga', 'Zulu'),
(3619, 'zu', 'he_IL', 'Zulu'),
(3620, 'zu', 'hi', 'Zulu'),
(3621, 'zu', 'hr', 'Zulu'),
(3622, 'zu', 'hu_HU', 'zulu'),
(3623, 'zu', 'hy', 'Zulu'),
(3624, 'zu', 'id_ID', 'Zulu'),
(3625, 'zu', 'is_IS', 'Zulu'),
(3626, 'zu', 'it_IT', 'Zulu'),
(3627, 'zu', 'ja', 'ズールー語'),
(3628, 'zu', 'ko_KR', '줄루어'),
(3629, 'zu', 'ku', 'Zulu'),
(3630, 'zu', 'la', 'Zulu'),
(3631, 'zu', 'lv', 'Zulu'),
(3632, 'zu', 'lt', 'Zulu'),
(3633, 'zu', 'mk_MK', 'Zulu'),
(3634, 'zu', 'mt', 'Zulu'),
(3635, 'zu', 'mo', 'Zulu'),
(3636, 'zu', 'mn', 'Zulu'),
(3637, 'zu', 'ne', 'Zulu'),
(3638, 'zu', 'nl_NL', 'Zulu'),
(3639, 'zu', 'nb_NO', 'Zulu'),
(3640, 'zu', 'pa', 'Zulu'),
(3641, 'zu', 'pl_PL', 'zuluski'),
(3642, 'zu', 'pt_PT', 'Zulu'),
(3643, 'zu', 'qu', 'Zulu'),
(3644, 'zu', 'ro_RO', 'Zulu'),
(3645, 'zu', 'ru_RU', 'Зулу'),
(3646, 'zu', 'sl_SI', 'Zulu'),
(3647, 'zu', 'so', 'Zulu'),
(3648, 'zu', 'sq', 'Zulu'),
(3649, 'zu', 'sr_RS', 'Zulu'),
(3650, 'zu', 'sv_SE', 'Zulu'),
(3651, 'zu', 'ta', 'Zulu'),
(3652, 'zu', 'th', 'ซูลู'),
(3653, 'zu', 'tr', 'Zulu dili'),
(3654, 'zu', 'uk_UA', 'Zulu'),
(3655, 'zu', 'ur', 'Zulu'),
(3656, 'zu', 'uz_UZ', 'Zulu'),
(3657, 'zu', 'vi', 'Zulu'),
(3658, 'zu', 'yi', 'Zulu'),
(3659, 'zu', 'zu', 'Zulu'),
(3660, 'zu', 'zh_CN', 'Zulu'),
(3661, 'zh_CN', 'en_US', 'Chinese'),
(3662, 'zh_CN', 'es_ES', 'Chino'),
(3663, 'zh_CN', 'de_DE', 'Chinesisch'),
(3664, 'zh_CN', 'fr_FR', 'Chinois'),
(3665, 'zh_CN', 'ar', 'الصينية'),
(3666, 'zh_CN', 'bs', 'Chinese'),
(3667, 'zh_CN', 'bg_BG', 'Chinese'),
(3668, 'zh_CN', 'ca', 'Chinese'),
(3669, 'zh_CN', 'cs_CZ', 'Chinese'),
(3670, 'zh_CN', 'sk_SK', 'Čínština'),
(3671, 'zh_CN', 'cy', 'Chinese'),
(3672, 'zh_CN', 'da_DK', 'Chinese'),
(3673, 'zh_CN', 'el', 'κινέζικα'),
(3674, 'zh_CN', 'eo', 'Chinese'),
(3675, 'zh_CN', 'et', 'Chinese'),
(3676, 'zh_CN', 'eu', 'Chinese'),
(3677, 'zh_CN', 'fa_IR', 'Chinese'),
(3678, 'zh_CN', 'fi_FI', 'Kiinalainen'),
(3679, 'zh_CN', 'ga', 'Chinese'),
(3680, 'zh_CN', 'he_IL', 'סיני'),
(3681, 'zh_CN', 'hi', 'Chinese'),
(3682, 'zh_CN', 'hr', 'Chinese'),
(3683, 'zh_CN', 'hu_HU', 'Chino'),
(3684, 'zh_CN', 'hy', 'Chinese'),
(3685, 'zh_CN', 'id_ID', 'Chinese'),
(3686, 'zh_CN', 'is_IS', 'Chinese'),
(3687, 'zh_CN', 'it_IT', 'Kínai'),
(3688, 'zh_CN', 'ja', '中国人'),
(3689, 'zh_CN', 'ko_KR', '중국의'),
(3690, 'zh_CN', 'ku', 'Chinese'),
(3691, 'zh_CN', 'la', 'Chinese'),
(3692, 'zh_CN', 'lv', 'Chinese'),
(3693, 'zh_CN', 'lt', 'Chinese'),
(3694, 'zh_CN', 'mk_MK', 'Chinese'),
(3695, 'zh_CN', 'mt', 'Chinese'),
(3696, 'zh_CN', 'mo', 'Chinese'),
(3697, 'zh_CN', 'mn', 'Chinese'),
(3698, 'zh_CN', 'ne', 'Chinese'),
(3699, 'zh_CN', 'nl_NL', 'Chinees'),
(3700, 'zh_CN', 'nb_NO', 'Chinese'),
(3701, 'zh_CN', 'pa', 'Chinese'),
(3702, 'zh_CN', 'pl_PL', 'Chiński'),
(3703, 'zh_CN', 'pt_PT', 'Chinês'),
(3704, 'zh_CN', 'qu', 'Chinese'),
(3705, 'zh_CN', 'ro_RO', 'Chineza'),
(3706, 'zh_CN', 'ru_RU', 'китайский'),
(3707, 'zh_CN', 'sl_SI', 'Chinese'),
(3708, 'zh_CN', 'so', 'Chinese'),
(3709, 'zh_CN', 'sq', 'Chinese'),
(3710, 'zh_CN', 'sr_RS', 'Chinese'),
(3711, 'zh_CN', 'sv_SE', 'Kinesiska'),
(3712, 'zh_CN', 'ta', 'Chinese'),
(3713, 'zh_CN', 'th', 'จีน'),
(3714, 'zh_CN', 'tr', 'Çince'),
(3715, 'zh_CN', 'uk_UA', 'Chinese'),
(3716, 'zh_CN', 'ur', 'Chinese'),
(3717, 'zh_CN', 'uz_UZ', 'Chinese'),
(3718, 'zh_CN', 'vi', 'Chinese'),
(3719, 'zh_CN', 'yi', 'Chinese'),
(3720, 'zh_CN', 'zu', 'Chinese'),
(3721, 'zh_CN', 'zh_CN', 'Chinese');

-- --------------------------------------------------------

--
-- Table structure for table `wp_zwt_trans_network`
--

CREATE TABLE IF NOT EXISTS `wp_zwt_trans_network` (
  `blog_id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `lang_code` varchar(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_zwt_trans_network`
--

INSERT INTO `wp_zwt_trans_network` (`blog_id`, `trans_id`, `lang_code`) VALUES
(1, 1, 'en_US'),
(3, 1, 'uk_UA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_3_commentmeta`
--
ALTER TABLE `wp_3_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_3_comments`
--
ALTER TABLE `wp_3_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_3_links`
--
ALTER TABLE `wp_3_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_3_options`
--
ALTER TABLE `wp_3_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_3_postmeta`
--
ALTER TABLE `wp_3_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_3_posts`
--
ALTER TABLE `wp_3_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_3_terms`
--
ALTER TABLE `wp_3_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `wp_3_term_relationships`
--
ALTER TABLE `wp_3_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_3_term_taxonomy`
--
ALTER TABLE `wp_3_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_3_wysija_campaign`
--
ALTER TABLE `wp_3_wysija_campaign`
 ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `wp_3_wysija_campaign_list`
--
ALTER TABLE `wp_3_wysija_campaign_list`
 ADD PRIMARY KEY (`list_id`,`campaign_id`);

--
-- Indexes for table `wp_3_wysija_custom_field`
--
ALTER TABLE `wp_3_wysija_custom_field`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_3_wysija_email`
--
ALTER TABLE `wp_3_wysija_email`
 ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `wp_3_wysija_email_user_stat`
--
ALTER TABLE `wp_3_wysija_email_user_stat`
 ADD PRIMARY KEY (`user_id`,`email_id`);

--
-- Indexes for table `wp_3_wysija_email_user_url`
--
ALTER TABLE `wp_3_wysija_email_user_url`
 ADD PRIMARY KEY (`user_id`,`email_id`,`url_id`);

--
-- Indexes for table `wp_3_wysija_form`
--
ALTER TABLE `wp_3_wysija_form`
 ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_3_wysija_list`
--
ALTER TABLE `wp_3_wysija_list`
 ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `wp_3_wysija_queue`
--
ALTER TABLE `wp_3_wysija_queue`
 ADD PRIMARY KEY (`user_id`,`email_id`), ADD KEY `SENT_AT_INDEX` (`send_at`);

--
-- Indexes for table `wp_3_wysija_url`
--
ALTER TABLE `wp_3_wysija_url`
 ADD PRIMARY KEY (`url_id`);

--
-- Indexes for table `wp_3_wysija_url_mail`
--
ALTER TABLE `wp_3_wysija_url_mail`
 ADD PRIMARY KEY (`email_id`,`url_id`);

--
-- Indexes for table `wp_3_wysija_user`
--
ALTER TABLE `wp_3_wysija_user`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `EMAIL_UNIQUE` (`email`);

--
-- Indexes for table `wp_3_wysija_user_field`
--
ALTER TABLE `wp_3_wysija_user_field`
 ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `wp_3_wysija_user_history`
--
ALTER TABLE `wp_3_wysija_user_history`
 ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `wp_3_wysija_user_list`
--
ALTER TABLE `wp_3_wysija_user_list`
 ADD PRIMARY KEY (`list_id`,`user_id`);

--
-- Indexes for table `wp_blogs`
--
ALTER TABLE `wp_blogs`
 ADD PRIMARY KEY (`blog_id`), ADD KEY `domain` (`domain`(50),`path`(5)), ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `wp_blog_versions`
--
ALTER TABLE `wp_blog_versions`
 ADD PRIMARY KEY (`blog_id`), ADD KEY `db_version` (`db_version`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_domain_mapping`
--
ALTER TABLE `wp_domain_mapping`
 ADD PRIMARY KEY (`id`), ADD KEY `blog_id` (`blog_id`,`domain`,`active`);

--
-- Indexes for table `wp_domain_mapping_logins`
--
ALTER TABLE `wp_domain_mapping_logins`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
 ADD PRIMARY KEY (`ID`), ADD KEY `IP` (`IP`);

--
-- Indexes for table `wp_signups`
--
ALTER TABLE `wp_signups`
 ADD PRIMARY KEY (`signup_id`), ADD KEY `activation_key` (`activation_key`), ADD KEY `user_email` (`user_email`), ADD KEY `user_login_email` (`user_login`,`user_email`), ADD KEY `domain_path` (`domain`,`path`);

--
-- Indexes for table `wp_site`
--
ALTER TABLE `wp_site`
 ADD PRIMARY KEY (`id`), ADD KEY `domain` (`domain`,`path`);

--
-- Indexes for table `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `meta_key` (`meta_key`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `wp_wysija_campaign`
--
ALTER TABLE `wp_wysija_campaign`
 ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `wp_wysija_campaign_list`
--
ALTER TABLE `wp_wysija_campaign_list`
 ADD PRIMARY KEY (`list_id`,`campaign_id`);

--
-- Indexes for table `wp_wysija_custom_field`
--
ALTER TABLE `wp_wysija_custom_field`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wysija_email`
--
ALTER TABLE `wp_wysija_email`
 ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `wp_wysija_email_user_stat`
--
ALTER TABLE `wp_wysija_email_user_stat`
 ADD PRIMARY KEY (`user_id`,`email_id`);

--
-- Indexes for table `wp_wysija_email_user_url`
--
ALTER TABLE `wp_wysija_email_user_url`
 ADD PRIMARY KEY (`user_id`,`email_id`,`url_id`);

--
-- Indexes for table `wp_wysija_form`
--
ALTER TABLE `wp_wysija_form`
 ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_wysija_list`
--
ALTER TABLE `wp_wysija_list`
 ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `wp_wysija_queue`
--
ALTER TABLE `wp_wysija_queue`
 ADD PRIMARY KEY (`user_id`,`email_id`), ADD KEY `SENT_AT_INDEX` (`send_at`);

--
-- Indexes for table `wp_wysija_url`
--
ALTER TABLE `wp_wysija_url`
 ADD PRIMARY KEY (`url_id`);

--
-- Indexes for table `wp_wysija_url_mail`
--
ALTER TABLE `wp_wysija_url_mail`
 ADD PRIMARY KEY (`email_id`,`url_id`);

--
-- Indexes for table `wp_wysija_user`
--
ALTER TABLE `wp_wysija_user`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `EMAIL_UNIQUE` (`email`);

--
-- Indexes for table `wp_wysija_user_field`
--
ALTER TABLE `wp_wysija_user_field`
 ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `wp_wysija_user_history`
--
ALTER TABLE `wp_wysija_user_history`
 ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `wp_wysija_user_list`
--
ALTER TABLE `wp_wysija_user_list`
 ADD PRIMARY KEY (`list_id`,`user_id`);

--
-- Indexes for table `wp_zwt_languages`
--
ALTER TABLE `wp_zwt_languages`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `english_name` (`english_name`), ADD UNIQUE KEY `default_locale` (`default_locale`);

--
-- Indexes for table `wp_zwt_languages_translations`
--
ALTER TABLE `wp_zwt_languages_translations`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `language_code` (`language_code`,`display_language_code`);

--
-- Indexes for table `wp_zwt_trans_network`
--
ALTER TABLE `wp_zwt_trans_network`
 ADD PRIMARY KEY (`blog_id`), ADD UNIQUE KEY `blog_trans_id` (`blog_id`,`trans_id`), ADD UNIQUE KEY `blog_lang` (`blog_id`,`lang_code`), ADD UNIQUE KEY `trans_lang` (`trans_id`,`lang_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_3_commentmeta`
--
ALTER TABLE `wp_3_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_3_comments`
--
ALTER TABLE `wp_3_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_3_links`
--
ALTER TABLE `wp_3_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_3_options`
--
ALTER TABLE `wp_3_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `wp_3_postmeta`
--
ALTER TABLE `wp_3_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_3_posts`
--
ALTER TABLE `wp_3_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wp_3_terms`
--
ALTER TABLE `wp_3_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_3_term_taxonomy`
--
ALTER TABLE `wp_3_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_3_wysija_campaign`
--
ALTER TABLE `wp_3_wysija_campaign`
MODIFY `campaign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_3_wysija_custom_field`
--
ALTER TABLE `wp_3_wysija_custom_field`
MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_3_wysija_email`
--
ALTER TABLE `wp_3_wysija_email`
MODIFY `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_3_wysija_form`
--
ALTER TABLE `wp_3_wysija_form`
MODIFY `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_3_wysija_list`
--
ALTER TABLE `wp_3_wysija_list`
MODIFY `list_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_3_wysija_url`
--
ALTER TABLE `wp_3_wysija_url`
MODIFY `url_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_3_wysija_url_mail`
--
ALTER TABLE `wp_3_wysija_url_mail`
MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_3_wysija_user`
--
ALTER TABLE `wp_3_wysija_user`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_3_wysija_user_field`
--
ALTER TABLE `wp_3_wysija_user_field`
MODIFY `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_3_wysija_user_history`
--
ALTER TABLE `wp_3_wysija_user_history`
MODIFY `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_blogs`
--
ALTER TABLE `wp_blogs`
MODIFY `blog_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_domain_mapping`
--
ALTER TABLE `wp_domain_mapping`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=506;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=702;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_signups`
--
ALTER TABLE `wp_signups`
MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_site`
--
ALTER TABLE `wp_site`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_wysija_campaign`
--
ALTER TABLE `wp_wysija_campaign`
MODIFY `campaign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wysija_custom_field`
--
ALTER TABLE `wp_wysija_custom_field`
MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wysija_email`
--
ALTER TABLE `wp_wysija_email`
MODIFY `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wysija_form`
--
ALTER TABLE `wp_wysija_form`
MODIFY `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wysija_list`
--
ALTER TABLE `wp_wysija_list`
MODIFY `list_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wysija_url`
--
ALTER TABLE `wp_wysija_url`
MODIFY `url_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wysija_url_mail`
--
ALTER TABLE `wp_wysija_url_mail`
MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wysija_user`
--
ALTER TABLE `wp_wysija_user`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_wysija_user_field`
--
ALTER TABLE `wp_wysija_user_field`
MODIFY `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wysija_user_history`
--
ALTER TABLE `wp_wysija_user_history`
MODIFY `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_zwt_languages`
--
ALTER TABLE `wp_zwt_languages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `wp_zwt_languages_translations`
--
ALTER TABLE `wp_zwt_languages_translations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3722;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
