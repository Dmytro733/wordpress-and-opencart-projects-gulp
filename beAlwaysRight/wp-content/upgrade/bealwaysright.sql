-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Гру 20 2020 р., 22:05
-- Версія сервера: 10.3.13-MariaDB-log
-- Версія PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `bealwaysright`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-12-15 14:04:10', '2020-12-15 12:04:10', 'Привіт! Це коментар.\nЩоб почати модерувати, редагувати і видаляти коментарі, перейдіть в розділ Коментарів у Майстерні.\nАватари авторів коментарів завантажуються з сервісу<a href=\"https://uk.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://bealwaysright', 'yes'),
(2, 'home', 'http://bealwaysright', 'yes'),
(3, 'blogname', 'LOREM IPSUM DOLOR', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ddp0496@gmail.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'beAlwaysRight', 'yes'),
(41, 'stylesheet', 'beAlwaysRight', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Kiev', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '9', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1623585841', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'uk', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:8:{i:1608491054;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1608509054;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1608552252;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1608552354;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1608552355;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1608559372;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1608725052;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1608033973;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(127, '_site_transient_timeout_browser_2d6330f380f44ac20f3a02eed0958f66', '1608638667', 'no'),
(128, '_site_transient_browser_2d6330f380f44ac20f3a02eed0958f66', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"87.0.4280.88\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_b3655adab148a1a6c8391bd3893ea554', '1608638668', 'no'),
(130, '_site_transient_php_check_b3655adab148a1a6c8391bd3893ea554', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(131, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/uk/wordpress-5.6.zip\";s:6:\"locale\";s:2:\"uk\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/uk/wordpress-5.6.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1608488301;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}', 'no'),
(132, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1608488306;s:7:\"checked\";a:1:{s:13:\"beAlwaysRight\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(148, 'current_theme', '', 'yes'),
(149, 'theme_mods__stem', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:9;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1608303984;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-bottom-1\";a:0:{}s:16:\"sidebar-bottom-2\";a:0:{}s:16:\"sidebar-bottom-3\";a:0:{}}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(154, 'recently_activated', 'a:2:{s:39:\"categories-images/categories-images.php\";i:1608151027;s:52:\"templatic-categoryicons/templatic_category_icons.php\";i:1608151023;}', 'yes'),
(155, 'acf_version', '5.8.12', 'yes'),
(165, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(190, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"6\",\"critical\":\"2\"}', 'yes'),
(214, 'templtax_1', 'a:0:{}', 'yes'),
(219, 'templtax_7', 'a:0:{}', 'yes'),
(221, 'templtax_8', 'a:0:{}', 'yes'),
(223, 'templtax_9', 'a:0:{}', 'yes'),
(232, 'templtax_4', 'a:1:{s:3:\"img\";s:1:\"9\";}', 'yes'),
(252, 'zci_options', 'a:1:{s:19:\"excluded_taxonomies\";a:1:{s:8:\"category\";s:8:\"category\";}}', 'yes'),
(307, 'category_children', 'a:0:{}', 'yes'),
(346, 'theme_mods_beAlwaysRight', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:9;}', 'yes'),
(351, '_site_transient_timeout_theme_roots', '1608490104', 'no'),
(352, '_site_transient_theme_roots', 'a:1:{s:13:\"beAlwaysRight\";s:7:\"/themes\";}', 'no'),
(353, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1608488308;s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.8.12\";}s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(3, 6, '_edit_last', '1'),
(4, 6, '_edit_lock', '1608305655:1'),
(5, 1, '_edit_lock', '1608299458:1'),
(6, 9, '_wp_attached_file', '2020/12/icon_big-2.jpg'),
(7, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:71;s:6:\"height\";i:71;s:4:\"file\";s:22:\"2020/12/icon_big-2.jpg\";s:5:\"sizes\";a:3:{s:16:\"templ_icon_small\";a:4:{s:4:\"file\";s:20:\"icon_big-2-20x20.jpg\";s:5:\"width\";i:20;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"templ_icon_medium\";a:4:{s:4:\"file\";s:20:\"icon_big-2-40x40.jpg\";s:5:\"width\";i:40;s:6:\"height\";i:40;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"templ_icon_large\";a:4:{s:4:\"file\";s:20:\"icon_big-2-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 1, '_edit_last', '1'),
(13, 1, 'logo', '9'),
(14, 1, '_logo', 'field_5fd8c711524e3'),
(15, 1, 'logo_text', 'Lorem ipsum dolor sit.'),
(16, 1, '_logo_text', 'field_5fd8c7cf524e4'),
(17, 11, 'logo', '9'),
(18, 11, '_logo', 'field_5fd8c711524e3'),
(19, 11, 'logo_text', ''),
(20, 11, '_logo_text', 'field_5fd8c7cf524e4'),
(21, 12, '_wp_trash_meta_status', 'publish'),
(22, 12, '_wp_trash_meta_time', '1608045461'),
(23, 13, '_menu_item_type', 'custom'),
(24, 13, '_menu_item_menu_item_parent', '0'),
(25, 13, '_menu_item_object_id', '13'),
(26, 13, '_menu_item_object', 'custom'),
(27, 13, '_menu_item_target', ''),
(28, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 13, '_menu_item_xfn', ''),
(30, 13, '_menu_item_url', '#'),
(32, 14, '_menu_item_type', 'custom'),
(33, 14, '_menu_item_menu_item_parent', '0'),
(34, 14, '_menu_item_object_id', '14'),
(35, 14, '_menu_item_object', 'custom'),
(36, 14, '_menu_item_target', ''),
(37, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 14, '_menu_item_xfn', ''),
(39, 14, '_menu_item_url', '#'),
(41, 15, '_menu_item_type', 'custom'),
(42, 15, '_menu_item_menu_item_parent', '0'),
(43, 15, '_menu_item_object_id', '15'),
(44, 15, '_menu_item_object', 'custom'),
(45, 15, '_menu_item_target', ''),
(46, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 15, '_menu_item_xfn', ''),
(48, 15, '_menu_item_url', '#'),
(50, 16, '_menu_item_type', 'custom'),
(51, 16, '_menu_item_menu_item_parent', '0'),
(52, 16, '_menu_item_object_id', '16'),
(53, 16, '_menu_item_object', 'custom'),
(54, 16, '_menu_item_target', ''),
(55, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 16, '_menu_item_xfn', ''),
(57, 16, '_menu_item_url', '#'),
(59, 17, '_menu_item_type', 'custom'),
(60, 17, '_menu_item_menu_item_parent', '0'),
(61, 17, '_menu_item_object_id', '17'),
(62, 17, '_menu_item_object', 'custom'),
(63, 17, '_menu_item_target', ''),
(64, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 17, '_menu_item_xfn', ''),
(66, 17, '_menu_item_url', '#'),
(70, 18, 'logo', ''),
(71, 18, '_logo', 'field_5fd8c711524e3'),
(72, 18, 'logo_text', 'Lorem ipsum dolor sit.'),
(73, 18, '_logo_text', 'field_5fd8c7cf524e4'),
(76, 19, 'logo', ''),
(77, 19, '_logo', 'field_5fd8c711524e3'),
(78, 19, 'logo_text', ''),
(79, 19, '_logo_text', 'field_5fd8c7cf524e4'),
(82, 20, 'logo', '9'),
(83, 20, '_logo', 'field_5fd8c711524e3'),
(84, 20, 'logo_text', 'sda'),
(85, 20, '_logo_text', 'field_5fd8c7cf524e4'),
(88, 21, 'logo', '9'),
(89, 21, '_logo', 'field_5fd8c711524e3'),
(90, 21, 'logo_text', 'Lorem ipsum dolor sit.'),
(91, 21, '_logo_text', 'field_5fd8c7cf524e4'),
(94, 1, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(95, 1, '_right-block_title-text', 'field_5fd8f9ce66153'),
(96, 1, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(97, 1, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(98, 24, 'logo', '9'),
(99, 24, '_logo', 'field_5fd8c711524e3'),
(100, 24, 'logo_text', 'Lorem ipsum dolor sit.'),
(101, 24, '_logo_text', 'field_5fd8c7cf524e4'),
(102, 24, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(103, 24, '_right-block_title-text', 'field_5fd8f9ce66153'),
(104, 24, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(105, 24, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(108, 1, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(109, 1, '_right-block_text', 'field_5fd8f9ce66153'),
(110, 1, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(111, 1, '_right-block_desc', 'field_5fd8fa0f66154'),
(112, 25, 'logo', '9'),
(113, 25, '_logo', 'field_5fd8c711524e3'),
(114, 25, 'logo_text', 'Lorem ipsum dolor sit.'),
(115, 25, '_logo_text', 'field_5fd8c7cf524e4'),
(116, 25, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(117, 25, '_right-block_title-text', 'field_5fd8f9ce66153'),
(118, 25, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(119, 25, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(120, 25, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(121, 25, '_right-block_text', 'field_5fd8f9ce66153'),
(122, 25, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(123, 25, '_right-block_desc', 'field_5fd8fa0f66154'),
(125, 1, 'header-question1', 'іваіваівавіаіва'),
(126, 1, '_header-question1', 'field_5fd9d5005e2ca'),
(127, 1, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(128, 1, '_content-question1', 'field_5fd9d50b5e2cb'),
(129, 28, 'logo', '9'),
(130, 28, '_logo', 'field_5fd8c711524e3'),
(131, 28, 'logo_text', 'Lorem ipsum dolor sit.'),
(132, 28, '_logo_text', 'field_5fd8c7cf524e4'),
(133, 28, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(134, 28, '_right-block_title-text', 'field_5fd8f9ce66153'),
(135, 28, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(136, 28, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(137, 28, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(138, 28, '_right-block_text', 'field_5fd8f9ce66153'),
(139, 28, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(140, 28, '_right-block_desc', 'field_5fd8fa0f66154'),
(141, 28, 'header-question1', 'іваіваівавіаіва'),
(142, 28, '_header-question1', 'field_5fd9d5005e2ca'),
(143, 28, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(144, 28, '_content-question1', 'field_5fd9d50b5e2cb'),
(148, 29, 'logo', '9'),
(149, 29, '_logo', 'field_5fd8c711524e3'),
(150, 29, 'logo_text', 'Lorem ipsum dolor sit.'),
(151, 29, '_logo_text', 'field_5fd8c7cf524e4'),
(152, 29, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(153, 29, '_right-block_title-text', 'field_5fd8f9ce66153'),
(154, 29, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(155, 29, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(156, 29, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(157, 29, '_right-block_text', 'field_5fd8f9ce66153'),
(158, 29, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(159, 29, '_right-block_desc', 'field_5fd8fa0f66154'),
(160, 29, 'header-question1', 'іваіваівавіаіва'),
(161, 29, '_header-question1', 'field_5fd9d5005e2ca'),
(162, 29, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(163, 29, '_content-question1', 'field_5fd9d50b5e2cb'),
(164, 30, '_edit_last', '1'),
(165, 30, '_edit_lock', '1608299259:1'),
(168, 1, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(169, 1, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(170, 1, 'right-block_team-header', 'Наша команда'),
(171, 1, '_right-block_team-header', 'field_5fd9e321b6e68'),
(172, 33, 'logo', '9'),
(173, 33, '_logo', 'field_5fd8c711524e3'),
(174, 33, 'logo_text', 'Lorem ipsum dolor sit.'),
(175, 33, '_logo_text', 'field_5fd8c7cf524e4'),
(176, 33, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(177, 33, '_right-block_title-text', 'field_5fd8f9ce66153'),
(178, 33, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(179, 33, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(180, 33, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(181, 33, '_right-block_text', 'field_5fd8f9ce66153'),
(182, 33, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(183, 33, '_right-block_desc', 'field_5fd8fa0f66154'),
(184, 33, 'header-question1', 'іваіваівавіаіва'),
(185, 33, '_header-question1', 'field_5fd9d5005e2ca'),
(186, 33, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(187, 33, '_content-question1', 'field_5fd9d50b5e2cb'),
(188, 33, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(189, 33, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(190, 33, 'right-block_team-header', 'Наша команда'),
(191, 33, '_right-block_team-header', 'field_5fd9e321b6e68'),
(193, 34, 'logo', '9'),
(194, 34, '_logo', 'field_5fd8c711524e3'),
(195, 34, 'logo_text', 'Lorem ipsum dolor sit.'),
(196, 34, '_logo_text', 'field_5fd8c7cf524e4'),
(197, 34, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(198, 34, '_right-block_title-text', 'field_5fd8f9ce66153'),
(199, 34, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(200, 34, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(201, 34, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(202, 34, '_right-block_text', 'field_5fd8f9ce66153'),
(203, 34, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(204, 34, '_right-block_desc', 'field_5fd8fa0f66154'),
(205, 34, 'header-question1', 'іваіваівавіаіва'),
(206, 34, '_header-question1', 'field_5fd9d5005e2ca'),
(207, 34, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(208, 34, '_content-question1', 'field_5fd9d50b5e2cb'),
(209, 34, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(210, 34, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(211, 34, 'right-block_team-header', 'Наша команда'),
(212, 34, '_right-block_team-header', 'field_5fd9e321b6e68'),
(216, 35, 'logo', '9'),
(217, 35, '_logo', 'field_5fd8c711524e3'),
(218, 35, 'logo_text', 'Lorem ipsum dolor sitt.'),
(219, 35, '_logo_text', 'field_5fd8c7cf524e4'),
(220, 35, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(221, 35, '_right-block_title-text', 'field_5fd8f9ce66153'),
(222, 35, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(223, 35, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(224, 35, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(225, 35, '_right-block_text', 'field_5fd8f9ce66153'),
(226, 35, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(227, 35, '_right-block_desc', 'field_5fd8fa0f66154'),
(228, 35, 'header-question1', 'іваіваівавіаіва'),
(229, 35, '_header-question1', 'field_5fd9d5005e2ca'),
(230, 35, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(231, 35, '_content-question1', 'field_5fd9d50b5e2cb'),
(232, 35, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(233, 35, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(234, 35, 'right-block_team-header', 'Наша команда'),
(235, 35, '_right-block_team-header', 'field_5fd9e321b6e68'),
(236, 36, '_edit_lock', '1608123939:1'),
(237, 37, '_edit_last', '1'),
(238, 37, '_edit_lock', '1608299276:1'),
(239, 39, '_wp_attached_file', '2020/12/Layer-2-2.png'),
(240, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:114;s:6:\"height\";i:114;s:4:\"file\";s:21:\"2020/12/Layer-2-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 40, '_wp_attached_file', '2020/12/Layer-3-3.png'),
(242, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:124;s:6:\"height\";i:124;s:4:\"file\";s:21:\"2020/12/Layer-3-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 41, '_wp_attached_file', '2020/12/Layer-5-2.png'),
(244, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:106;s:6:\"height\";i:106;s:4:\"file\";s:21:\"2020/12/Layer-5-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(245, 42, '_wp_attached_file', '2020/12/Layer-4-2.png'),
(246, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:107;s:6:\"height\";i:107;s:4:\"file\";s:21:\"2020/12/Layer-4-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(247, 43, '_edit_lock', '1608299451:1'),
(250, 43, '_edit_last', '1'),
(253, 43, 'Logo', '9'),
(254, 43, '_Logo', 'field_5fd8c711524e3'),
(255, 43, 'logo_text', 'Lorem ipsum dolor'),
(256, 43, '_logo_text', 'field_5fd8c7cf524e4'),
(257, 43, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(258, 43, '_right-block_text', 'field_5fd8f9ce66153'),
(259, 43, 'right-block_desc', ''),
(260, 43, '_right-block_desc', 'field_5fd8fa0f66154'),
(261, 43, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(262, 43, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(263, 43, 'right-block_team-header', 'Наша команда'),
(264, 43, '_right-block_team-header', 'field_5fd9e321b6e68'),
(265, 44, 'Logo', ''),
(266, 44, '_Logo', 'field_5fd8c711524e3'),
(267, 44, 'logo_text', ''),
(268, 44, '_logo_text', 'field_5fd8c7cf524e4'),
(269, 44, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(270, 44, '_right-block_text', 'field_5fd8f9ce66153'),
(271, 44, 'right-block_desc', ''),
(272, 44, '_right-block_desc', 'field_5fd8fa0f66154'),
(273, 44, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(274, 44, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(275, 44, 'right-block_team-header', 'Наша команда'),
(276, 44, '_right-block_team-header', 'field_5fd9e321b6e68'),
(279, 45, 'logo', '9'),
(280, 45, '_logo', 'field_5fd8c711524e3'),
(281, 45, 'logo_text', 'Lorem ipsum dolor sitt.'),
(282, 45, '_logo_text', 'field_5fd8c7cf524e4'),
(283, 45, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(284, 45, '_right-block_title-text', 'field_5fd8f9ce66153'),
(285, 45, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(286, 45, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(287, 45, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(288, 45, '_right-block_text', 'field_5fd8f9ce66153'),
(289, 45, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(290, 45, '_right-block_desc', 'field_5fd8fa0f66154'),
(291, 45, 'header-question1', 'іваіваівавіаіва'),
(292, 45, '_header-question1', 'field_5fd9d5005e2ca'),
(293, 45, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(294, 45, '_content-question1', 'field_5fd9d50b5e2cb'),
(295, 45, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(296, 45, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(297, 45, 'right-block_team-header', 'Наша команда'),
(298, 45, '_right-block_team-header', 'field_5fd9e321b6e68'),
(303, 47, 'Logo', ''),
(304, 47, '_Logo', 'field_5fd8c711524e3'),
(305, 47, 'logo_text', ''),
(306, 47, '_logo_text', 'field_5fd8c7cf524e4'),
(307, 47, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(308, 47, '_right-block_text', 'field_5fd8f9ce66153'),
(309, 47, 'right-block_desc', ''),
(310, 47, '_right-block_desc', 'field_5fd8fa0f66154'),
(311, 47, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(312, 47, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(313, 47, 'right-block_team-header', 'Наша команда'),
(314, 47, '_right-block_team-header', 'field_5fd9e321b6e68'),
(319, 48, 'logo', ''),
(320, 48, '_logo', 'field_5fd8c711524e3'),
(321, 48, 'logo_text', 'Lorem ipsum dolor sitt.'),
(322, 48, '_logo_text', 'field_5fd8c7cf524e4'),
(323, 48, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(324, 48, '_right-block_title-text', 'field_5fd8f9ce66153'),
(325, 48, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(326, 48, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(327, 48, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(328, 48, '_right-block_text', 'field_5fd8f9ce66153'),
(329, 48, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(330, 48, '_right-block_desc', 'field_5fd8fa0f66154'),
(331, 48, 'header-question1', 'іваіваівавіаіва'),
(332, 48, '_header-question1', 'field_5fd9d5005e2ca'),
(333, 48, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(334, 48, '_content-question1', 'field_5fd9d50b5e2cb'),
(335, 48, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(336, 48, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(337, 48, 'right-block_team-header', 'Наша команда'),
(338, 48, '_right-block_team-header', 'field_5fd9e321b6e68'),
(339, 49, '_edit_lock', '1608299443:1'),
(342, 49, '_edit_last', '1'),
(345, 49, 'Logo', '9'),
(346, 49, '_Logo', 'field_5fd8c711524e3'),
(347, 49, 'logo_text', 'Lorem ipsum dolor'),
(348, 49, '_logo_text', 'field_5fd8c7cf524e4'),
(349, 49, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(350, 49, '_right-block_text', 'field_5fd8f9ce66153'),
(351, 49, 'right-block_desc', ''),
(352, 49, '_right-block_desc', 'field_5fd8fa0f66154'),
(353, 49, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(354, 49, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(355, 49, 'right-block_team-header', 'Наша команда'),
(356, 49, '_right-block_team-header', 'field_5fd9e321b6e68'),
(357, 50, 'Logo', ''),
(358, 50, '_Logo', 'field_5fd8c711524e3'),
(359, 50, 'logo_text', ''),
(360, 50, '_logo_text', 'field_5fd8c7cf524e4'),
(361, 50, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(362, 50, '_right-block_text', 'field_5fd8f9ce66153'),
(363, 50, 'right-block_desc', ''),
(364, 50, '_right-block_desc', 'field_5fd8fa0f66154'),
(365, 50, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(366, 50, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(367, 50, 'right-block_team-header', 'Наша команда'),
(368, 50, '_right-block_team-header', 'field_5fd9e321b6e68'),
(369, 51, '_edit_lock', '1608299434:1'),
(372, 51, '_edit_last', '1'),
(375, 51, 'Logo', '9'),
(376, 51, '_Logo', 'field_5fd8c711524e3'),
(377, 51, 'logo_text', 'Lorem ipsum dolor'),
(378, 51, '_logo_text', 'field_5fd8c7cf524e4'),
(379, 51, 'right-block_text', 'Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor'),
(380, 51, '_right-block_text', 'field_5fd8f9ce66153'),
(381, 51, 'right-block_desc', ' Lorem ipsum dolor Lorem ipsum dolor v v v Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorv Lorem ipsum dolor'),
(382, 51, '_right-block_desc', 'field_5fd8fa0f66154'),
(383, 51, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(384, 51, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(385, 51, 'right-block_team-header', 'Наша команда'),
(386, 51, '_right-block_team-header', 'field_5fd9e321b6e68'),
(387, 52, 'Logo', ''),
(388, 52, '_Logo', 'field_5fd8c711524e3'),
(389, 52, 'logo_text', ''),
(390, 52, '_logo_text', 'field_5fd8c7cf524e4'),
(391, 52, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(392, 52, '_right-block_text', 'field_5fd8f9ce66153'),
(393, 52, 'right-block_desc', ''),
(394, 52, '_right-block_desc', 'field_5fd8fa0f66154'),
(395, 52, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(396, 52, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(397, 52, 'right-block_team-header', 'Наша команда'),
(398, 52, '_right-block_team-header', 'field_5fd9e321b6e68'),
(403, 53, 'logo', '9'),
(404, 53, '_logo', 'field_5fd8c711524e3'),
(405, 53, 'logo_text', 'Lorem ipsum dolor sit.'),
(406, 53, '_logo_text', 'field_5fd8c7cf524e4'),
(407, 53, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(408, 53, '_right-block_title-text', 'field_5fd8f9ce66153'),
(409, 53, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(410, 53, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(411, 53, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(412, 53, '_right-block_text', 'field_5fd8f9ce66153'),
(413, 53, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(414, 53, '_right-block_desc', 'field_5fd8fa0f66154'),
(415, 53, 'header-question1', 'іваіваівавіаіва'),
(416, 53, '_header-question1', 'field_5fd9d5005e2ca'),
(417, 53, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(418, 53, '_content-question1', 'field_5fd9d50b5e2cb'),
(419, 53, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(420, 53, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(421, 53, 'right-block_team-header', 'Наша команда'),
(422, 53, '_right-block_team-header', 'field_5fd9e321b6e68'),
(425, 54, 'logo', '9'),
(426, 54, '_logo', 'field_5fd8c711524e3'),
(427, 54, 'logo_text', 'Lorem ipsum dolor sit.'),
(428, 54, '_logo_text', 'field_5fd8c7cf524e4'),
(429, 54, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(430, 54, '_right-block_title-text', 'field_5fd8f9ce66153'),
(431, 54, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(432, 54, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(433, 54, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(434, 54, '_right-block_text', 'field_5fd8f9ce66153'),
(435, 54, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(436, 54, '_right-block_desc', 'field_5fd8fa0f66154'),
(437, 54, 'header-question1', 'іваіваівавіаіва'),
(438, 54, '_header-question1', 'field_5fd9d5005e2ca'),
(439, 54, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(440, 54, '_content-question1', 'field_5fd9d50b5e2cb'),
(441, 54, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(442, 54, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(443, 54, 'right-block_team-header', 'Наша команда'),
(444, 54, '_right-block_team-header', 'field_5fd9e321b6e68'),
(449, 55, 'Logo', '9'),
(450, 55, '_Logo', 'field_5fd8c711524e3'),
(451, 55, 'logo_text', 'asdsdasds'),
(452, 55, '_logo_text', 'field_5fd8c7cf524e4'),
(453, 55, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(454, 55, '_right-block_text', 'field_5fd8f9ce66153'),
(455, 55, 'right-block_desc', ''),
(456, 55, '_right-block_desc', 'field_5fd8fa0f66154'),
(457, 55, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(458, 55, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(459, 55, 'right-block_team-header', 'Наша команда'),
(460, 55, '_right-block_team-header', 'field_5fd9e321b6e68'),
(465, 56, 'Logo', '9'),
(466, 56, '_Logo', 'field_5fd8c711524e3'),
(467, 56, 'logo_text', ''),
(468, 56, '_logo_text', 'field_5fd8c7cf524e4'),
(469, 56, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(470, 56, '_right-block_text', 'field_5fd8f9ce66153'),
(471, 56, 'right-block_desc', ''),
(472, 56, '_right-block_desc', 'field_5fd8fa0f66154'),
(473, 56, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(474, 56, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(475, 56, 'right-block_team-header', 'Наша команда'),
(476, 56, '_right-block_team-header', 'field_5fd9e321b6e68'),
(479, 57, 'Logo', '9'),
(480, 57, '_Logo', 'field_5fd8c711524e3'),
(481, 57, 'logo_text', 'Lorem ipsum dolor'),
(482, 57, '_logo_text', 'field_5fd8c7cf524e4'),
(483, 57, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(484, 57, '_right-block_text', 'field_5fd8f9ce66153'),
(485, 57, 'right-block_desc', ''),
(486, 57, '_right-block_desc', 'field_5fd8fa0f66154'),
(487, 57, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(488, 57, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(489, 57, 'right-block_team-header', 'Наша команда'),
(490, 57, '_right-block_team-header', 'field_5fd9e321b6e68'),
(495, 58, 'Logo', '9'),
(496, 58, '_Logo', 'field_5fd8c711524e3'),
(497, 58, 'logo_text', 'Lorem ipsum dolor'),
(498, 58, '_logo_text', 'field_5fd8c7cf524e4'),
(499, 58, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(500, 58, '_right-block_text', 'field_5fd8f9ce66153'),
(501, 58, 'right-block_desc', ''),
(502, 58, '_right-block_desc', 'field_5fd8fa0f66154'),
(503, 58, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(504, 58, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(505, 58, 'right-block_team-header', 'Наша команда'),
(506, 58, '_right-block_team-header', 'field_5fd9e321b6e68'),
(511, 59, 'logo', '9'),
(512, 59, '_logo', 'field_5fd8c711524e3'),
(513, 59, 'logo_text', 'Lorem ipsum dolor sit.'),
(514, 59, '_logo_text', 'field_5fd8c7cf524e4'),
(515, 59, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(516, 59, '_right-block_title-text', 'field_5fd8f9ce66153'),
(517, 59, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(518, 59, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(519, 59, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(520, 59, '_right-block_text', 'field_5fd8f9ce66153'),
(521, 59, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(522, 59, '_right-block_desc', 'field_5fd8fa0f66154'),
(523, 59, 'header-question1', 'іваіваівавіаіва'),
(524, 59, '_header-question1', 'field_5fd9d5005e2ca'),
(525, 59, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(526, 59, '_content-question1', 'field_5fd9d50b5e2cb'),
(527, 59, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(528, 59, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(529, 59, 'right-block_team-header', 'Наша команда'),
(530, 59, '_right-block_team-header', 'field_5fd9e321b6e68'),
(533, 60, 'logo', '9'),
(534, 60, '_logo', 'field_5fd8c711524e3'),
(535, 60, 'logo_text', 'Lorem ipsum dolor sit.'),
(536, 60, '_logo_text', 'field_5fd8c7cf524e4'),
(537, 60, 'right-block_title-text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(538, 60, '_right-block_title-text', 'field_5fd8f9ce66153'),
(539, 60, 'right-block_title-desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(540, 60, '_right-block_title-desc', 'field_5fd8fa0f66154'),
(541, 60, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(542, 60, '_right-block_text', 'field_5fd8f9ce66153'),
(543, 60, 'right-block_desc', 'Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Numquam quos deleniti expedita animi eum cum nihil sequi iste a, non nemo, ipsam illo ab itaque nesciunt, voluptate maxime alias quidem dolores asperiores, facere tenetur. Atque facilis porro numquam laborum dignissimos!'),
(544, 60, '_right-block_desc', 'field_5fd8fa0f66154'),
(545, 60, 'header-question1', 'іваіваівавіаіва'),
(546, 60, '_header-question1', 'field_5fd9d5005e2ca'),
(547, 60, 'content-question1', 'фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф фаіацуалдятслдотолви лра лоів адфл ор адфіларЛФЛ ЛАЛУ лопропумрфмп аа рф'),
(548, 60, '_content-question1', 'field_5fd9d50b5e2cb'),
(549, 60, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(550, 60, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(551, 60, 'right-block_team-header', 'Наша команда'),
(552, 60, '_right-block_team-header', 'field_5fd9e321b6e68'),
(555, 51, '_pingme', '1'),
(556, 51, '_encloseme', '1'),
(557, 61, 'Logo', '9'),
(558, 61, '_Logo', 'field_5fd8c711524e3'),
(559, 61, 'logo_text', 'Lorem ipsum dolor'),
(560, 61, '_logo_text', 'field_5fd8c7cf524e4'),
(561, 61, 'right-block_text', 'Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor'),
(562, 61, '_right-block_text', 'field_5fd8f9ce66153'),
(563, 61, 'right-block_desc', ' Lorem ipsum dolor Lorem ipsum dolor v v v Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorv Lorem ipsum dolor'),
(564, 61, '_right-block_desc', 'field_5fd8fa0f66154'),
(565, 61, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(566, 61, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(567, 61, 'right-block_team-header', 'Наша команда'),
(568, 61, '_right-block_team-header', 'field_5fd9e321b6e68'),
(569, 62, '_wp_trash_meta_status', 'publish'),
(570, 62, '_wp_trash_meta_time', '1608297783'),
(571, 63, '_edit_lock', '1608298095:1'),
(572, 63, '_wp_trash_meta_status', 'publish'),
(573, 63, '_wp_trash_meta_time', '1608298099'),
(574, 2, '_edit_lock', '1608306226:1'),
(575, 2, '_edit_last', '1'),
(576, 2, 'right-block_text', ''),
(577, 2, '_right-block_text', 'field_5fd8f9ce66153'),
(578, 2, 'right-block_desc', ''),
(579, 2, '_right-block_desc', 'field_5fd8fa0f66154'),
(580, 65, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(581, 65, '_right-block_text', 'field_5fd8f9ce66153'),
(582, 65, 'right-block_desc', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit. Lorem ipsum dolor, sit, amet consectetur adipisicing elit. Lorem ipsum dolor, sit, amet consectetur adipisicing elit. Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(583, 65, '_right-block_desc', 'field_5fd8fa0f66154'),
(584, 66, '_wp_trash_meta_status', 'publish'),
(585, 66, '_wp_trash_meta_time', '1608298881'),
(586, 67, 'right-block_text', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(587, 67, '_right-block_text', 'field_5fd8f9ce66153'),
(588, 67, 'right-block_desc', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit. Lorem ipsum dolor, sit, amet consectetur adipisicing elit. Lorem ipsum dolor, sit, amet consectetur adipisicing elit. Lorem ipsum dolor, sit, amet consectetur adipisicing elit.'),
(589, 67, '_right-block_desc', 'field_5fd8fa0f66154'),
(593, 2, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(594, 2, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(595, 2, 'right-block_team-header', 'Наша команда'),
(596, 2, '_right-block_team-header', 'field_5fd9e321b6e68'),
(597, 67, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(598, 67, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(599, 67, 'right-block_team-header', 'Наша команда'),
(600, 67, '_right-block_team-header', 'field_5fd9e321b6e68'),
(601, 69, 'right-block_text', ''),
(602, 69, '_right-block_text', 'field_5fd8f9ce66153'),
(603, 69, 'right-block_desc', ''),
(604, 69, '_right-block_desc', 'field_5fd8fa0f66154'),
(605, 69, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(606, 69, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(607, 69, 'right-block_team-header', 'Наша команда'),
(608, 69, '_right-block_team-header', 'field_5fd9e321b6e68'),
(609, 70, 'right-block_text', ''),
(610, 70, '_right-block_text', 'field_5fd8f9ce66153'),
(611, 70, 'right-block_desc', ''),
(612, 70, '_right-block_desc', 'field_5fd8fa0f66154'),
(613, 70, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(614, 70, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(615, 70, 'right-block_team-header', 'Наша команда'),
(616, 70, '_right-block_team-header', 'field_5fd9e321b6e68'),
(617, 2, 'right-blok_text', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(618, 2, '_right-blok_text', 'field_5fdcb56205bc6'),
(619, 2, 'right-blok_desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(620, 2, '_right-blok_desc', 'field_5fdcb57505bc7'),
(621, 70, 'right-blok_text', ''),
(622, 70, '_right-blok_text', 'field_5fdcb56205bc6'),
(623, 70, 'right-blok_desc', ''),
(624, 70, '_right-blok_desc', 'field_5fdcb57505bc7'),
(625, 73, 'right-block_text', ''),
(626, 73, '_right-block_text', 'field_5fd8f9ce66153'),
(627, 73, 'right-block_desc', ''),
(628, 73, '_right-block_desc', 'field_5fd8fa0f66154'),
(629, 73, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(630, 73, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(631, 73, 'right-block_team-header', 'Наша команда'),
(632, 73, '_right-block_team-header', 'field_5fd9e321b6e68'),
(633, 73, 'right-blok_text', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(634, 73, '_right-blok_text', 'field_5fdcb56205bc6'),
(635, 73, 'right-blok_desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(636, 73, '_right-blok_desc', 'field_5fdcb57505bc7'),
(637, 74, 'right-block_text', ''),
(638, 74, '_right-block_text', 'field_5fd8f9ce66153'),
(639, 74, 'right-block_desc', ''),
(640, 74, '_right-block_desc', 'field_5fd8fa0f66154'),
(641, 74, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(642, 74, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(643, 74, 'right-block_team-header', 'Наша команда'),
(644, 74, '_right-block_team-header', 'field_5fd9e321b6e68'),
(645, 74, 'right-blok_text', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(646, 74, '_right-blok_text', 'field_5fdcb56205bc6'),
(647, 74, 'right-blok_desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(648, 74, '_right-blok_desc', 'field_5fdcb57505bc7'),
(649, 77, 'right-block_text', ''),
(650, 77, '_right-block_text', 'field_5fd8f9ce66153'),
(651, 77, 'right-block_desc', ''),
(652, 77, '_right-block_desc', 'field_5fd8fa0f66154'),
(653, 77, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(654, 77, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(655, 77, 'right-block_team-header', 'Наша команда'),
(656, 77, '_right-block_team-header', 'field_5fd9e321b6e68'),
(657, 77, 'right-blok_text', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(658, 77, '_right-blok_text', 'field_5fdcb56205bc6'),
(659, 77, 'right-blok_desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(660, 77, '_right-blok_desc', 'field_5fdcb57505bc7'),
(661, 2, 'right_text', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(662, 2, '_right_text', 'field_5fdcb56205bc6'),
(663, 2, 'right_desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(664, 2, '_right_desc', 'field_5fdcb57505bc7'),
(665, 77, 'right_text', ''),
(666, 77, '_right_text', 'field_5fdcb56205bc6'),
(667, 77, 'right_desc', ''),
(668, 77, '_right_desc', 'field_5fdcb57505bc7'),
(669, 78, 'right-block_text', ''),
(670, 78, '_right-block_text', 'field_5fd8f9ce66153'),
(671, 78, 'right-block_desc', ''),
(672, 78, '_right-block_desc', 'field_5fd8fa0f66154'),
(673, 78, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(674, 78, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(675, 78, 'right-block_team-header', 'Наша команда'),
(676, 78, '_right-block_team-header', 'field_5fd9e321b6e68'),
(677, 78, 'right-blok_text', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(678, 78, '_right-blok_text', 'field_5fdcb56205bc6'),
(679, 78, 'right-blok_desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(680, 78, '_right-blok_desc', 'field_5fdcb57505bc7'),
(681, 78, 'right_text', 'ldksnflkdnfldslfl'),
(682, 78, '_right_text', 'field_5fdcb56205bc6'),
(683, 78, 'right_desc', 'jsdklnfljn slnfl nsdlfnsd nksdjnljnf jndsj nndsk nkf'),
(684, 78, '_right_desc', 'field_5fdcb57505bc7'),
(685, 79, 'right-block_text', ''),
(686, 79, '_right-block_text', 'field_5fd8f9ce66153'),
(687, 79, 'right-block_desc', ''),
(688, 79, '_right-block_desc', 'field_5fd8fa0f66154'),
(689, 79, 'left-block_team-desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(690, 79, '_left-block_team-desc', 'field_5fd9e2fbb6e67'),
(691, 79, 'right-block_team-header', 'Наша команда'),
(692, 79, '_right-block_team-header', 'field_5fd9e321b6e68'),
(693, 79, 'right-blok_text', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(694, 79, '_right-blok_text', 'field_5fdcb56205bc6'),
(695, 79, 'right-blok_desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(696, 79, '_right-blok_desc', 'field_5fdcb57505bc7'),
(697, 79, 'right_text', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(698, 79, '_right_text', 'field_5fdcb56205bc6'),
(699, 79, 'right_desc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!'),
(700, 79, '_right_desc', 'field_5fdcb57505bc7'),
(701, 80, '_wp_trash_meta_status', 'publish'),
(702, 80, '_wp_trash_meta_time', '1608304034');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-12-15 14:04:10', '2020-12-15 12:04:10', '', 'Іван Петрович', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82', '', '', '2020-12-18 15:17:43', '2020-12-18 13:17:43', '', 0, 'http://bealwaysright/?p=1', 0, 'post', '', 1),
(2, 1, '2020-12-15 14:04:10', '2020-12-15 12:04:10', '', 'Головна', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-12-18 17:10:25', '2020-12-18 15:10:25', '', 0, 'http://bealwaysright/?page_id=2', 0, 'page', '', 0),
(4, 1, '2020-12-15 14:04:29', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-15 14:04:29', '0000-00-00 00:00:00', '', 0, 'http://bealwaysright/?p=4', 0, 'post', '', 0),
(5, 1, '2020-12-15 16:02:52', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-15 16:02:52', '0000-00-00 00:00:00', '', 0, 'http://bealwaysright/?post_type=acf-field-group&p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2020-12-15 16:24:13', '2020-12-15 14:24:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'group_5fd8c6fce1a3b', '', '', '2020-12-18 17:14:08', '2020-12-18 15:14:08', '', 0, 'http://bealwaysright/?post_type=acf-field-group&#038;p=6', 0, 'acf-field-group', '', 0),
(9, 1, '2020-12-15 17:16:05', '2020-12-15 15:16:05', '', 'icon_big 2', '', 'inherit', 'open', 'closed', '', 'icon_big-2', '', '', '2020-12-15 17:16:05', '2020-12-15 15:16:05', '', 1, 'http://bealwaysright/wp-content/uploads/2020/12/icon_big-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2020-12-15 17:16:18', '2020-12-15 15:16:18', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-15 17:16:18', '2020-12-15 15:16:18', '', 1, 'http://bealwaysright/2020/12/15/1-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-12-15 17:16:21', '2020-12-15 15:16:21', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-15 17:16:21', '2020-12-15 15:16:21', '', 1, 'http://bealwaysright/2020/12/15/1-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-12-15 17:17:40', '2020-12-15 15:17:40', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-15 15:17:40\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-15 15:17:40\"\n    },\n    \"site_icon\": {\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-15 15:17:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b0dbf889-812d-49f7-9024-8f7f65bcabdb', '', '', '2020-12-15 17:17:40', '2020-12-15 15:17:40', '', 0, 'http://bealwaysright/2020/12/15/b0dbf889-812d-49f7-9024-8f7f65bcabdb/', 0, 'customize_changeset', '', 0),
(13, 1, '2020-12-15 17:23:28', '2020-12-15 15:23:28', '', 'головна', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b0', '', '', '2020-12-15 17:23:28', '2020-12-15 15:23:28', '', 0, 'http://bealwaysright/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2020-12-15 17:23:28', '2020-12-15 15:23:28', '', 'Про компанію', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%be-%d0%ba%d0%be%d0%bc%d0%bf%d0%b0%d0%bd%d1%96%d1%8e', '', '', '2020-12-15 17:23:28', '2020-12-15 15:23:28', '', 0, 'http://bealwaysright/?p=14', 2, 'nav_menu_item', '', 0),
(15, 1, '2020-12-15 17:23:28', '2020-12-15 15:23:28', '', 'Спеціалізація', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%bf%d0%b5%d1%86%d1%96%d0%b0%d0%bb%d1%96%d0%b7%d0%b0%d1%86%d1%96%d1%8f', '', '', '2020-12-15 17:23:28', '2020-12-15 15:23:28', '', 0, 'http://bealwaysright/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2020-12-15 17:23:28', '2020-12-15 15:23:28', '', 'послуги', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d1%81%d0%bb%d1%83%d0%b3%d0%b8', '', '', '2020-12-15 17:23:28', '2020-12-15 15:23:28', '', 0, 'http://bealwaysright/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2020-12-15 17:23:29', '2020-12-15 15:23:29', '', 'контакти', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%b8', '', '', '2020-12-15 17:23:29', '2020-12-15 15:23:29', '', 0, 'http://bealwaysright/?p=17', 5, 'nav_menu_item', '', 0),
(18, 1, '2020-12-15 18:59:06', '2020-12-15 16:59:06', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-15 18:59:06', '2020-12-15 16:59:06', '', 1, 'http://bealwaysright/2020/12/15/1-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-12-15 19:01:04', '2020-12-15 17:01:04', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-15 19:01:04', '2020-12-15 17:01:04', '', 1, 'http://bealwaysright/2020/12/15/1-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-12-15 19:01:54', '2020-12-15 17:01:54', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-15 19:01:54', '2020-12-15 17:01:54', '', 1, 'http://bealwaysright/2020/12/15/1-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-12-15 19:15:23', '2020-12-15 17:15:23', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-15 19:15:23', '2020-12-15 17:15:23', '', 1, 'http://bealwaysright/2020/12/15/1-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-12-15 20:04:19', '2020-12-15 18:04:19', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-15 20:04:19', '2020-12-15 18:04:19', '', 1, 'http://bealwaysright/2020/12/15/1-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-12-15 20:33:26', '2020-12-15 18:33:26', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-15 20:33:26', '2020-12-15 18:33:26', '', 1, 'http://bealwaysright/2020/12/15/1-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-12-16 11:37:18', '2020-12-16 09:37:18', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-16 11:37:18', '2020-12-16 09:37:18', '', 1, 'http://bealwaysright/2020/12/16/1-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-12-16 11:38:04', '2020-12-16 09:38:04', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-16 11:38:04', '2020-12-16 09:38:04', '', 1, 'http://bealwaysright/2020/12/16/1-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-12-16 12:35:35', '2020-12-16 10:35:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Info', 'info', 'publish', 'closed', 'closed', '', 'group_5fd9e2f13440c', '', '', '2020-12-18 15:49:52', '2020-12-18 13:49:52', '', 0, 'http://bealwaysright/?post_type=acf-field-group&#038;p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2020-12-16 12:37:33', '2020-12-16 10:37:33', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:108:\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis et nisi eum tempora dolores perspiciatis!\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'left-block_team-desc', 'left-block_team-desc', 'publish', 'closed', 'closed', '', 'field_5fd9e2fbb6e67', '', '', '2020-12-16 12:37:33', '2020-12-16 10:37:33', '', 30, 'http://bealwaysright/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(32, 1, '2020-12-16 12:37:33', '2020-12-16 10:37:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:23:\"Наша команда\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'right-block_team-header', 'right-block_team-header', 'publish', 'closed', 'closed', '', 'field_5fd9e321b6e68', '', '', '2020-12-16 12:37:33', '2020-12-16 10:37:33', '', 30, 'http://bealwaysright/?post_type=acf-field&p=32', 1, 'acf-field', '', 0),
(33, 1, '2020-12-16 12:43:18', '2020-12-16 10:43:18', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-16 12:43:18', '2020-12-16 10:43:18', '', 1, 'http://bealwaysright/2020/12/16/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-12-16 13:20:07', '2020-12-16 11:20:07', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-16 13:20:07', '2020-12-16 11:20:07', '', 1, 'http://bealwaysright/2020/12/16/1-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-12-16 14:16:12', '2020-12-16 12:16:12', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-16 14:16:12', '2020-12-16 12:16:12', '', 1, 'http://bealwaysright/2020/12/16/1-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-12-16 14:46:17', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-16 14:46:17', '0000-00-00 00:00:00', '', 0, 'http://bealwaysright/?p=36', 0, 'post', '', 0),
(37, 1, '2020-12-17 11:07:02', '2020-12-17 09:07:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Зображення для категорій', '%d0%b7%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%bd%d1%8f-%d0%b4%d0%bb%d1%8f-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d0%b9', 'publish', 'closed', 'closed', '', 'group_5fdb1f4459e26', '', '', '2020-12-18 15:50:13', '2020-12-18 13:50:13', '', 0, 'http://bealwaysright/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(38, 1, '2020-12-17 11:07:02', '2020-12-17 09:07:02', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Img', 'img_taksonimy', 'publish', 'closed', 'closed', '', 'field_5fdb1f57c9b8c', '', '', '2020-12-17 11:21:30', '2020-12-17 09:21:30', '', 37, 'http://bealwaysright/?post_type=acf-field&#038;p=38', 0, 'acf-field', '', 0),
(39, 1, '2020-12-17 11:09:22', '2020-12-17 09:09:22', '', 'Layer 2 2', '', 'inherit', 'open', 'closed', '', 'layer-2-2', '', '', '2020-12-17 11:09:22', '2020-12-17 09:09:22', '', 0, 'http://bealwaysright/wp-content/uploads/2020/12/Layer-2-2.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2020-12-17 11:47:50', '2020-12-17 09:47:50', '', 'Layer 3 3', '', 'inherit', 'open', 'closed', '', 'layer-3-3', '', '', '2020-12-17 11:47:50', '2020-12-17 09:47:50', '', 0, 'http://bealwaysright/wp-content/uploads/2020/12/Layer-3-3.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2020-12-17 11:48:17', '2020-12-17 09:48:17', '', 'Layer 5 2', '', 'inherit', 'open', 'closed', '', 'layer-5-2', '', '', '2020-12-17 11:48:17', '2020-12-17 09:48:17', '', 0, 'http://bealwaysright/wp-content/uploads/2020/12/Layer-5-2.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2020-12-17 11:48:58', '2020-12-17 09:48:58', '', 'Layer 4 2', '', 'inherit', 'open', 'closed', '', 'layer-4-2', '', '', '2020-12-17 11:48:58', '2020-12-17 09:48:58', '', 0, 'http://bealwaysright/wp-content/uploads/2020/12/Layer-4-2.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2020-12-17 11:57:51', '2020-12-17 09:57:51', '', 'Василь Іванович', '', 'publish', 'open', 'open', '', '%d0%b2%d0%b0%d1%81%d0%b8%d0%bb%d1%8c', '', '', '2020-12-18 15:16:47', '2020-12-18 13:16:47', '', 0, 'http://bealwaysright/?p=43', 0, 'post', '', 0),
(44, 1, '2020-12-17 11:57:51', '2020-12-17 09:57:51', '', 'Василь', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-12-17 11:57:51', '2020-12-17 09:57:51', '', 43, 'http://bealwaysright/2020/12/17/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-12-17 12:39:31', '2020-12-17 10:39:31', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-17 12:39:31', '2020-12-17 10:39:31', '', 1, 'http://bealwaysright/2020/12/17/1-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-12-17 12:39:55', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-17 12:39:55', '0000-00-00 00:00:00', '', 0, 'http://bealwaysright/?post_type=acf-field-group&p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2020-12-18 12:40:06', '2020-12-18 10:40:06', '', 'Василь Іванович', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-12-18 12:40:06', '2020-12-18 10:40:06', '', 43, 'http://bealwaysright/2020/12/18/43-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-12-18 12:40:31', '2020-12-18 10:40:31', '', 'Іван Петрович', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-18 12:40:31', '2020-12-18 10:40:31', '', 1, 'http://bealwaysright/2020/12/18/1-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-12-18 12:41:00', '2020-12-18 10:41:00', '', 'Дмитро Петрович', '', 'publish', 'open', 'open', '', '%d0%b4%d0%bc%d0%b8%d1%82%d1%80%d0%be-%d0%bf%d0%b5%d1%82%d1%80%d0%be%d0%b2%d0%b8%d1%87', '', '', '2020-12-18 15:16:04', '2020-12-18 13:16:04', '', 0, 'http://bealwaysright/?p=49', 0, 'post', '', 0),
(50, 1, '2020-12-18 12:41:00', '2020-12-18 10:41:00', '', 'Дмитро Петрович', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-12-18 12:41:00', '2020-12-18 10:41:00', '', 49, 'http://bealwaysright/2020/12/18/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-12-18 12:41:26', '2020-12-18 10:41:26', '', 'Дмитро Іванович', '', 'publish', 'open', 'open', '', '%d0%b4%d0%bc%d0%b8%d1%82%d1%80%d0%be-%d1%96%d0%b2%d0%b0%d0%bd%d0%be%d0%b2%d0%b8%d1%87', '', '', '2020-12-18 15:18:28', '2020-12-18 13:18:28', '', 0, 'http://bealwaysright/?p=51', 0, 'post', '', 0),
(52, 1, '2020-12-18 12:41:26', '2020-12-18 10:41:26', '', 'Дмитро Іванович', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-12-18 12:41:26', '2020-12-18 10:41:26', '', 51, 'http://bealwaysright/2020/12/18/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-12-18 15:09:50', '2020-12-18 13:09:50', '', 'Іван Петрович', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-18 15:09:50', '2020-12-18 13:09:50', '', 1, 'http://bealwaysright/2020/12/18/1-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-12-18 15:10:16', '2020-12-18 13:10:16', '', 'Іван Петрович', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-18 15:10:16', '2020-12-18 13:10:16', '', 1, 'http://bealwaysright/2020/12/18/1-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-12-18 15:12:38', '2020-12-18 13:12:38', '', 'Дмитро Іванович', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-12-18 15:12:38', '2020-12-18 13:12:38', '', 51, 'http://bealwaysright/2020/12/18/51-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-12-18 15:15:51', '2020-12-18 13:15:51', '', 'Дмитро Петрович', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-12-18 15:15:51', '2020-12-18 13:15:51', '', 49, 'http://bealwaysright/2020/12/18/49-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-12-18 15:16:04', '2020-12-18 13:16:04', '', 'Дмитро Петрович', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-12-18 15:16:04', '2020-12-18 13:16:04', '', 49, 'http://bealwaysright/2020/12/18/49-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-12-18 15:16:47', '2020-12-18 13:16:47', '', 'Василь Іванович', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-12-18 15:16:47', '2020-12-18 13:16:47', '', 43, 'http://bealwaysright/2020/12/18/43-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-12-18 15:17:11', '2020-12-18 13:17:11', '', 'Іван Петрович', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-18 15:17:11', '2020-12-18 13:17:11', '', 1, 'http://bealwaysright/2020/12/18/1-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-12-18 15:17:43', '2020-12-18 13:17:43', '', 'Іван Петрович', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-18 15:17:43', '2020-12-18 13:17:43', '', 1, 'http://bealwaysright/2020/12/18/1-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-12-18 15:18:28', '2020-12-18 13:18:28', '', 'Дмитро Іванович', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-12-18 15:18:28', '2020-12-18 13:18:28', '', 51, 'http://bealwaysright/2020/12/18/51-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-12-18 15:23:03', '2020-12-18 13:23:03', '{\n    \"blogname\": {\n        \"value\": \"  \\u0413\\u041e\\u041b\\u041e\\u0412\\u041d\\u0410 \\u041f\\u0420\\u041e \\u041a\\u041e\\u041c\\u041f\\u0410\\u041d\\u0406\\u042e \\u0421\\u041f\\u0415\\u0426\\u0406\\u0410\\u041b\\u0406\\u0417\\u0410\\u0426\\u0406\\u042f \\u041f\\u041e\\u0421\\u041b\\u0423\\u0413\\u0418 \\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u0418 LOREM IPSUM DOLOR\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-18 13:23:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e11933c-e52a-47ce-a8a4-91149def0007', '', '', '2020-12-18 15:23:03', '2020-12-18 13:23:03', '', 0, 'http://bealwaysright/2020/12/18/1e11933c-e52a-47ce-a8a4-91149def0007/', 0, 'customize_changeset', '', 0),
(63, 1, '2020-12-18 15:28:19', '2020-12-18 13:28:19', '{\n    \"blogname\": {\n        \"value\": \"\\u0413\\u041e\\u041b\\u041e\\u0412\\u041d\\u0410 \\u041f\\u0420\\u041e \\u041a\\u041e\\u041c\\u041f\\u0410\\u041d\\u0406\\u042e \\u0421\\u041f\\u0415\\u0426\\u0406\\u0410\\u041b\\u0406\\u0417\\u0410\\u0426\\u0406\\u042f \\u041f\\u041e\\u0421\\u041b\\u0423\\u0413\\u0418 \\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u0418 LOREM IPSUM DOLOR\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-18 13:28:15\"\n    },\n    \"_stem::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-18 13:28:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '942702d9-5439-4a98-b030-20f1ca890eee', '', '', '2020-12-18 15:28:19', '2020-12-18 13:28:19', '', 0, 'http://bealwaysright/?p=63', 0, 'customize_changeset', '', 0),
(64, 1, '2020-12-18 15:29:18', '2020-12-18 13:29:18', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці «Деталі» власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері — перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія «Штучки XYZ» була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://bealwaysright/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 15:29:18', '2020-12-18 13:29:18', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-12-18 15:29:20', '2020-12-18 13:29:20', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці «Деталі» власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері — перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія «Штучки XYZ» була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://bealwaysright/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 15:29:20', '2020-12-18 13:29:20', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-12-18 15:41:21', '2020-12-18 13:41:21', '{\n    \"blogname\": {\n        \"value\": \"LOREM IPSUM DOLOR\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-18 13:41:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dc00d2d7-e7bc-4025-9711-ffbac0c4840d', '', '', '2020-12-18 15:41:21', '2020-12-18 13:41:21', '', 0, 'http://bealwaysright/2020/12/18/dc00d2d7-e7bc-4025-9711-ffbac0c4840d/', 0, 'customize_changeset', '', 0),
(67, 1, '2020-12-18 15:48:55', '2020-12-18 13:48:55', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці «Деталі» власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері — перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія «Штучки XYZ» була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://bealwaysright/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 15:48:55', '2020-12-18 13:48:55', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-12-18 15:52:17', '2020-12-18 13:52:17', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці «Деталі» власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері — перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія «Штучки XYZ» була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://bealwaysright/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 15:52:17', '2020-12-18 13:52:17', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-12-18 15:55:52', '2020-12-18 13:55:52', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці «Деталі» власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері — перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія «Штучки XYZ» була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://bealwaysright/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 15:55:52', '2020-12-18 13:55:52', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-12-18 15:59:14', '2020-12-18 13:59:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'right_text', 'right_text', 'publish', 'closed', 'closed', '', 'field_5fdcb56205bc6', '', '', '2020-12-18 16:50:46', '2020-12-18 14:50:46', '', 6, 'http://bealwaysright/?post_type=acf-field&#038;p=71', 0, 'acf-field', '', 0),
(72, 1, '2020-12-18 15:59:14', '2020-12-18 13:59:14', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'right_desc', 'right_desc', 'publish', 'closed', 'closed', '', 'field_5fdcb57505bc7', '', '', '2020-12-18 16:50:46', '2020-12-18 14:50:46', '', 6, 'http://bealwaysright/?post_type=acf-field&#038;p=72', 1, 'acf-field', '', 0),
(73, 1, '2020-12-18 15:59:54', '2020-12-18 13:59:54', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці «Деталі» власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері — перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія «Штучки XYZ» була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://bealwaysright/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 15:59:54', '2020-12-18 13:59:54', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-12-18 16:02:20', '2020-12-18 14:02:20', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці «Деталі» власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері — перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія «Штучки XYZ» була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://bealwaysright/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 16:02:20', '2020-12-18 14:02:20', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-12-18 16:03:07', '2020-12-18 14:03:07', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 16:03:07', '2020-12-18 14:03:07', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-12-18 16:03:08', '2020-12-18 14:03:08', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 16:03:08', '2020-12-18 14:03:08', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-12-18 16:51:17', '2020-12-18 14:51:17', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 16:51:17', '2020-12-18 14:51:17', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-12-18 17:02:06', '2020-12-18 15:02:06', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-18 17:02:06', '2020-12-18 15:02:06', '', 2, 'http://bealwaysright/2020/12/18/2-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-12-18 17:07:13', '2020-12-18 15:07:13', '{\n    \"beAlwaysRight::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-18 15:07:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b97b2451-5446-4bf2-b299-4ee3820cbcc5', '', '', '2020-12-18 17:07:13', '2020-12-18 15:07:13', '', 0, 'http://bealwaysright/2020/12/18/b97b2451-5446-4bf2-b299-4ee3820cbcc5/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'img_taksonimy', '42'),
(2, 1, '_img_taksonimy', 'field_5fdb1f57c9b8c'),
(3, 5, 'img_taksonimy', '40'),
(4, 5, '_img_taksonimy', 'field_5fdb1f57c9b8c'),
(5, 4, 'img_taksonimy', '41'),
(6, 4, '_img_taksonimy', 'field_5fdb1f57c9b8c'),
(7, 3, 'img_taksonimy', '39'),
(8, 3, '_img_taksonimy', 'field_5fdb1f57c9b8c'),
(9, 10, 'img_taksonimy', '39'),
(10, 10, '_img_taksonimy', 'field_5fdb1f57c9b8c');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  `term_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `term_font_icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_type`, `term_font_icon`) VALUES
(1, 'Адміністративний процес', '%d0%b0%d0%b4%d0%bc%d1%96%d0%bd%d1%96%d1%81%d1%82%d1%80%d0%b0%d1%82%d0%b8%d0%b2%d0%bd%d0%b8%d0%b9-%d0%bf%d1%80%d0%be%d1%86%d0%b5%d1%81', 0, 'templ_upload_font', 'fa-car'),
(2, 'header_menu', 'header_menu', 0, '0', '0'),
(3, 'Цивільний процес', '%d1%86%d0%b8%d0%b2%d1%96%d0%bb%d1%8c%d0%bd%d0%b8%d0%b9-%d0%bf%d1%80%d0%be%d1%86%d0%b5%d1%81', 0, '0', '0'),
(4, 'Кримінальний процес', '%d0%ba%d1%80%d0%b8%d0%bc%d1%96%d0%bd%d0%b0%d0%bb%d1%8c%d0%bd%d0%b8%d0%b9-%d0%bf%d1%80%d0%be%d1%86%d0%b5%d1%81', 0, 'templ_upload_img', '<i class=\"fas fa-car\"></i>'),
(5, 'Господарський процес', '%d0%b3%d0%be%d1%81%d0%bf%d0%be%d0%b4%d0%b0%d1%80%d1%81%d1%8c%d0%ba%d0%b8%d0%b9-%d0%bf%d1%80%d0%be%d1%86%d0%b5%d1%81', 0, '0', '0'),
(10, 'Адмінка', '%d0%b0%d0%b4%d0%bc%d1%96%d0%bd%d0%ba%d0%b0', 0, '0', '0');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 4, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(43, 1, 0),
(43, 5, 0),
(49, 1, 0),
(49, 5, 0),
(51, 1, 0),
(51, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', 'Участь в  судових справах, їх перегляд.', 0, 4),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', 'Досудова стадія, участь в судовому провадженні, перегляд рішень.', 0, 1),
(4, 4, 'category', 'Весь обсяг юридичних послуг у сфері кримінального', 0, 1),
(5, 5, 'category', 'Вся необхідна правова допомога в господарських справах', 0, 2),
(10, 10, 'category', 'Адмінка', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'beAlwaysRight'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"64f997f7539223318e7043be874028313d814a4547c7fa506d92b8e4d6436649\";a:4:{s:10:\"expiration\";i:1608391898;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1608219098;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'hidetb=0&editor=tinymce&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1608045378'),
(21, 1, 'closedpostboxes_post', 'a:1:{i:0;s:23:\"acf-group_5fd9e2f13440c\";}'),
(22, 1, 'metaboxhidden_post', 'a:0:{}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '2'),
(26, 1, 'meta-box-order_post', 'a:4:{s:6:\"normal\";s:47:\"acf-group_5fd8c6fce1a3b,acf-group_5fd9e2f13440c\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(27, 1, 'closedpostboxes_page', 'a:0:{}'),
(28, 1, 'metaboxhidden_page', 'a:0:{}'),
(29, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:47:\"acf-group_5fd8c6fce1a3b,acf-group_5fd9e2f13440c\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'beAlwaysRight', '$P$BbigcPxKsKZVzFllGD8jAnrHX0wO1w.', 'bealwaysright', 'ddp0496@gmail.com', 'http://bealwaysright', '2020-12-15 12:04:09', '', 0, 'beAlwaysRight');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
