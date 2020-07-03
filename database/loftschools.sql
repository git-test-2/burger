-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 03 2020 г., 20:50
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `loftschools`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime(4) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `created_at`, `address`) VALUES
(1, 1, '2020-06-21 14:06:15.0000', NULL),
(2, 2, '2020-06-22 14:56:46.0000', NULL),
(3, 1, '2020-06-22 15:01:01.0000', NULL),
(4, 1, '2020-06-22 15:14:11.0000', NULL),
(5, 1, '2020-06-22 15:14:14.0000', NULL),
(6, 1, '2020-06-22 15:17:32.0000', NULL),
(7, 0, '2020-06-22 17:53:34.0000', '+7 (242) 424 24 2_,24gwgsr wewfwe,12,14,'),
(8, 1, '2020-06-22 17:54:46.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(9, 1, '2020-06-22 17:59:31.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(10, 1, '2020-06-22 17:59:31.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(11, 1, '2020-06-22 18:00:08.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(12, 1, '2020-06-22 18:00:08.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(13, 1, '2020-06-22 18:00:13.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(14, 1, '2020-06-22 18:00:13.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(15, 1, '2020-06-22 18:00:16.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(16, 1, '2020-06-22 18:00:16.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(17, 1, '2020-06-22 18:02:38.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(18, 1, '2020-06-22 18:02:38.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(19, 1, '2020-06-22 18:02:40.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(20, 1, '2020-06-22 18:02:40.0000', '+380634831583,Хлебная 18, кв 77,12,14,12,12,'),
(21, 3, '2020-06-22 18:05:06.0000', '+7 (093) 777 77 77,GG 12,12  ,1 ,1 ,1,'),
(22, 3, '2020-06-22 18:05:06.0000', '+7 (093) 777 77 77,GG 12,12  ,1 ,1 ,1,'),
(23, 3, '2020-06-22 18:05:15.0000', '+7 (093) 777 77 77,GG 12,12  ,1 ,1 ,1,'),
(24, 3, '2020-06-22 18:05:15.0000', '+7 (093) 777 77 77,GG 12,12  ,1 ,1 ,1,'),
(25, 3, '2020-06-22 18:05:18.0000', '+7 (093) 777 77 77,GG 12,12  ,1 ,1 ,1,'),
(26, 3, '2020-06-22 18:05:18.0000', '+7 (093) 777 77 77,GG 12,12  ,1 ,1 ,1,'),
(27, 3, '2020-06-22 18:05:20.0000', '+7 (093) 777 77 77,GG 12,12  ,1 ,1 ,1,'),
(28, 3, '2020-06-22 18:05:20.0000', '+7 (093) 777 77 77,GG 12,12  ,1 ,1 ,1,'),
(29, 1, '2020-07-01 15:40:55.0000', '+7 (555) 555 55 55,FFFFFFFFFFF,12,14,укпу,12,'),
(30, 1, '2020-07-01 17:28:54.0000', '399392392932,Хлебная 18, кв 77,wfw,fw,efw,efw,'),
(31, 1, '2020-07-01 18:04:26.0000', '5555555555555555,Хлебная 18, кв 77,wwf,wfw,fw,efwef,'),
(32, 1, '2020-07-01 18:17:04.0000', '+380634831583,Хлебная 18, кв 77,qfwq,fqwfq,qfq,efqfe,');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `orders_count` int(11) DEFAULT '1' COMMENT ' ',
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `orders_count`, `name`) VALUES
(1, 'simba1941@rambler.ru', 15, NULL),
(2, 'ravenguard.terra@gmail.com', 1, NULL),
(3, 'vasya@mail.ru', 4, 'Вася');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-06-23 12:57:03', '2020-06-23 09:57:03', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/loft', 'yes'),
(2, 'home', 'http://localhost/loft', 'yes'),
(3, 'blogname', 'turistik', 'yes'),
(4, 'blogdescription', 'Это работа по Лофтскул!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ravenguard.terra@gmail.com', 'yes'),
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
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'Y-m-d', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:22:\"cyr2lat/cyr-to-lat.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:72:\"C:\\OSPanel\\domains\\localhost\\loft/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'loftstream', 'yes'),
(41, 'stylesheet', 'loftstream', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '270', 'yes'),
(59, 'thumbnail_size_h', '190', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:1:{i:0;i:1;}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1608458223', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1593694623;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1593727023;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1593770223;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593770233;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593770234;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594202223;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1592913090;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(133, 'can_compress_scripts', '1', 'no'),
(146, 'dismissed_update_core', 'a:1:{s:11:\"5.4.2|ru_RU\";b:1;}', 'no'),
(151, 'new_admin_email', 'ravenguard.terra@gmail.com', 'yes'),
(158, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593082686;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(167, 'current_theme', '', 'yes'),
(168, 'theme_mods_loftstream', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"head_menu\";i:2;s:11:\"footer_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593082670;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(169, 'theme_switched', '', 'yes'),
(182, '_transient_health-check-site-status-result', '{\"good\":7,\"recommended\":10,\"critical\":0}', 'yes'),
(213, 'recovery_mode_email_last_sent', '1593076159', 'yes'),
(226, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(230, 'category_children', 'a:0:{}', 'yes'),
(299, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1593693614;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(300, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1593693616;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"4.5.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"4.5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.4.5.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2022835\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2022835\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2022835\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(301, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1593693616;s:7:\"checked\";a:4:{s:10:\"loftstream\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.6\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(308, '_site_transient_timeout_theme_roots', '1593695415', 'no'),
(309, '_site_transient_theme_roots', 'a:4:{s:10:\"loftstream\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(310, '_site_transient_timeout_php_check_0cbcbda5109bcde6b94054595b5c2163', '1594298417', 'no'),
(311, '_site_transient_php_check_0cbcbda5109bcde6b94054595b5c2163', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1593295979:1'),
(33, 18, '_edit_lock', '1593209538:1'),
(37, 21, '_menu_item_type', 'custom'),
(38, 21, '_menu_item_menu_item_parent', '0'),
(39, 21, '_menu_item_object_id', '21'),
(40, 21, '_menu_item_object', 'custom'),
(41, 21, '_menu_item_target', ''),
(42, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 21, '_menu_item_xfn', ''),
(44, 21, '_menu_item_url', 'https://misha.blog/wordpress/wp_enqueue_script.html'),
(46, 22, '_edit_lock', '1593086229:1'),
(47, 23, '_wp_attached_file', '2020/06/15.jpg'),
(48, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:555;s:4:\"file\";s:14:\"2020/06/15.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"15-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 28, '_menu_item_type', 'post_type'),
(76, 28, '_menu_item_menu_item_parent', '0'),
(77, 28, '_menu_item_object_id', '22'),
(78, 28, '_menu_item_object', 'page'),
(79, 28, '_menu_item_target', ''),
(80, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 28, '_menu_item_xfn', ''),
(82, 28, '_menu_item_url', ''),
(84, 29, '_menu_item_type', 'post_type'),
(85, 29, '_menu_item_menu_item_parent', '0'),
(86, 29, '_menu_item_object_id', '2'),
(87, 29, '_menu_item_object', 'page'),
(88, 29, '_menu_item_target', ''),
(89, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 29, '_menu_item_xfn', ''),
(91, 29, '_menu_item_url', ''),
(93, 30, '_menu_item_type', 'custom'),
(94, 30, '_menu_item_menu_item_parent', '0'),
(95, 30, '_menu_item_object_id', '30'),
(96, 30, '_menu_item_object', 'custom'),
(97, 30, '_menu_item_target', ''),
(98, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 30, '_menu_item_xfn', ''),
(100, 30, '_menu_item_url', 'http://localhost/loft/'),
(102, 31, '_menu_item_type', 'custom'),
(103, 31, '_menu_item_menu_item_parent', '0'),
(104, 31, '_menu_item_object_id', '31'),
(105, 31, '_menu_item_object', 'custom'),
(106, 31, '_menu_item_target', ''),
(107, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 31, '_menu_item_xfn', ''),
(109, 31, '_menu_item_url', '#'),
(111, 32, '_edit_lock', '1593282278:1'),
(114, 34, '_edit_lock', '1593101570:1'),
(127, 41, '_wp_attached_file', '2020/06/Martyr_i03.jpg'),
(128, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:546;s:4:\"file\";s:22:\"2020/06/Martyr_i03.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Martyr_i03-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Martyr_i03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Martyr_i03-768x545.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:545;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 1, '_thumbnail_id', '41'),
(134, 41, '_wp_attachment_image_alt', 'Ваха'),
(135, 44, '_wp_attached_file', '2020/06/Martyr_i03-1.jpg'),
(136, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:546;s:4:\"file\";s:24:\"2020/06/Martyr_i03-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-1-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-1-270x190.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-1-768x545.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:545;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mysize\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-1-770x300.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 46, '_wp_attached_file', '2020/06/Martyr_i03-2.jpg'),
(138, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:546;s:4:\"file\";s:24:\"2020/06/Martyr_i03-2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-2-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-2-270x190.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-2-768x545.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:545;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mysize\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-2-770x300.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 18, '_thumbnail_id', '46'),
(142, 47, '_edit_lock', '1593259291:1'),
(143, 48, '_wp_attached_file', '2020/06/Martyr_i03-3.jpg'),
(144, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:546;s:4:\"file\";s:24:\"2020/06/Martyr_i03-3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-3-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-3-270x190.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-3-768x545.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:545;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mysize\";a:4:{s:4:\"file\";s:24:\"Martyr_i03-3-770x300.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 32, '_edit_last', '1'),
(150, 50, '_edit_lock', '1593295799:1'),
(151, 1, '_edit_last', '1'),
(154, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-06-23 12:57:03', '2020-06-23 09:57:03', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка, а также сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Обычно цена предварительных скидочных билетов на средние и дальние дистанции начинается с 29 евро, но сейчас нижний порог уменьшен на треть. Билеты по этому предложению продаются до 31 июля на рейсы до 10 декабря.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":44,\"width\":632,\"height\":437,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/loft/wp-content/uploads/2020/06/Martyr_i03-1.jpg\" alt=\"\" class=\"wp-image-44\" width=\"632\" height=\"437\"/><figcaption>500500500500</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Скидки доступны только между станциями, на которых останавливаются дальние поезда (ICE, IC, EC). Стыковочные переезды на региональных и пригородных поездах в этом варианте не разрешены (но они доступны при покупке обычных предварительных скидочных билетов Sparpreis от 29 евро, для коротких маршрутов - от 19 евро). Билет во всех случаях действует только на забронированный поезд, возврат и обмен возможны со штрафом в 17,5 евро и только</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2020-06-28 01:12:59', '2020-06-27 22:12:59', '', 0, 'http://localhost/loft/?p=1', 0, 'post', '', 1),
(2, 1, '2020-06-23 12:57:03', '2020-06-23 09:57:03', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/loft/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-06-23 12:57:03', '2020-06-23 09:57:03', '', 0, 'http://localhost/loft/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-06-23 12:57:03', '2020-06-23 09:57:03', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://localhost/loft.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-06-23 12:57:03', '2020-06-23 09:57:03', '', 0, 'http://localhost/loft/?page_id=3', 0, 'page', '', 0),
(18, 1, '2020-06-24 19:20:54', '2020-06-24 16:20:54', '<!-- wp:paragraph -->\n<p>второй абзац кпп п  впвпв  впвп впвпв</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>вп врсрсроо сс</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:cover {\"overlayColor\":\"cyan-bluish-gray\"} -->\n<div class=\"wp-block-cover has-cyan-bluish-gray-background-color has-background-dim\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Введите заголовок...\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">ппппппппппппп</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:list -->\n<ul><li>вмвва</li><li>ыаыа</li><li>ыаы</li><li>аы</li><li>аы</li><li>а</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>12</td><td></td><td>212</td><td></td><td>12</td><td></td><td></td><td>12</td><td></td><td>12</td><td></td></tr><tr><td>121</td><td></td><td></td><td></td><td>12</td><td></td><td></td><td>12</td><td>1</td><td></td><td></td></tr><tr><td>121</td><td></td><td></td><td></td><td>12</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Вторая запись', '', 'publish', 'open', 'open', '', '%d0%b2%d1%82%d0%be%d1%80%d0%b0%d1%8f-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d1%8c', '', '', '2020-06-26 22:56:09', '2020-06-26 19:56:09', '', 0, 'http://localhost/loft/?p=18', 0, 'post', '', 0),
(19, 1, '2020-06-24 19:20:50', '2020-06-24 16:20:50', '<!-- wp:paragraph -->\n<p>второй абзац кпп п  впвпв  впвп впвпв</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>вп врсрсроо сс</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:cover {\"overlayColor\":\"cyan-bluish-gray\"} -->\n<div class=\"wp-block-cover has-cyan-bluish-gray-background-color has-background-dim\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Введите заголовок...\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">ппппппппппппп</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:list -->\n<ul><li>вмвва</li><li>ыаыа</li><li>ыаы</li><li>аы</li><li>аы</li><li>а</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>12</td><td></td><td>212</td><td></td><td>12</td><td></td><td></td><td>12</td><td></td><td>12</td><td></td></tr><tr><td>121</td><td></td><td></td><td></td><td>12</td><td></td><td></td><td>12</td><td>1</td><td></td><td></td></tr><tr><td>121</td><td></td><td></td><td></td><td>12</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Вторая запись', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-06-24 19:20:50', '2020-06-24 16:20:50', '', 18, 'http://localhost/loft/18-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-06-25 14:55:36', '2020-06-25 11:55:36', '', 'ВОРДпресс', '', 'publish', 'closed', 'closed', '', '%d0%b2%d0%be%d1%80%d0%b4%d0%bf%d1%80%d0%b5%d1%81%d1%81', '', '', '2020-06-25 16:01:15', '2020-06-25 13:01:15', '', 0, 'http://localhost/loft/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2020-06-25 14:59:30', '2020-06-25 11:59:30', '<!-- wp:image {\"id\":23,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/loft/wp-content/uploads/2020/06/15.jpg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->', 'Третий', '', 'publish', 'closed', 'closed', '', '%d1%82%d1%80%d0%b5%d1%82%d0%b8%d0%b9', '', '', '2020-06-25 14:59:30', '2020-06-25 11:59:30', '', 0, 'http://localhost/loft/?page_id=22', 0, 'page', '', 0),
(23, 1, '2020-06-25 14:59:19', '2020-06-25 11:59:19', '', '15', '', 'inherit', 'open', 'closed', '', '15', '', '', '2020-06-25 14:59:19', '2020-06-25 11:59:19', '', 22, 'http://localhost/loft/wp-content/uploads/2020/06/15.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2020-06-25 14:59:27', '2020-06-25 11:59:27', '<!-- wp:image {\"id\":23,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/loft/wp-content/uploads/2020/06/15.jpg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->', 'Третий', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-06-25 14:59:27', '2020-06-25 11:59:27', '', 22, 'http://localhost/loft/22-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-06-25 15:06:27', '2020-06-25 12:06:27', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2020-06-25 16:01:15', '2020-06-25 13:01:15', '', 0, 'http://localhost/loft/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2020-06-25 15:06:27', '2020-06-25 12:06:27', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-06-25 16:01:15', '2020-06-25 13:01:15', '', 0, 'http://localhost/loft/?p=29', 4, 'nav_menu_item', '', 0),
(30, 1, '2020-06-25 15:59:33', '2020-06-25 12:59:33', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2020-06-25 16:01:15', '2020-06-25 13:01:15', '', 0, 'http://localhost/loft/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2020-06-25 16:01:15', '2020-06-25 13:01:15', '', 'Сервис', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81', '', '', '2020-06-25 16:01:15', '2020-06-25 13:01:15', '', 0, 'http://localhost/loft/?p=31', 5, 'nav_menu_item', '', 0),
(32, 1, '2020-06-25 19:12:28', '2020-06-25 16:12:28', '<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка, а также сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития...</p>\n<!-- /wp:paragraph -->', 'В ИТАЛИИ завершается распродажа железнодорожных билетов от 19 евро', '', 'publish', 'open', 'open', '', '%d0%b2-%d0%b3%d0%b5%d1%80%d0%bc%d0%b0%d0%bd%d0%b8%d0%b8-%d0%b7%d0%b0%d0%b2%d0%b5%d1%80%d1%88%d0%b0%d0%b5%d1%82%d1%81%d1%8f-%d1%80%d0%b0%d1%81%d0%bf%d1%80%d0%be%d0%b4%d0%b0%d0%b6%d0%b0-%d0%b6%d0%b5', '', '', '2020-06-27 21:24:38', '2020-06-27 18:24:38', '', 0, 'http://localhost/loft/?p=32', 0, 'post', '', 0),
(33, 1, '2020-06-25 19:12:25', '2020-06-25 16:12:25', '<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка, а также сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития...</p>\n<!-- /wp:paragraph -->', 'В германии завершается распродажа железнодорожных билетов от 19 евро', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-06-25 19:12:25', '2020-06-25 16:12:25', '', 32, 'http://localhost/loft/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-06-25 19:13:45', '2020-06-25 16:13:45', '<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка, а также сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития...</p>\n<!-- /wp:paragraph -->', 'В ГЕРМАНИИ завершается распродажа железнодорожных билетов от 19 евро', '', 'publish', 'open', 'open', '', '%d0%b2-%d0%b3%d0%b5%d1%80%d0%bc%d0%b0%d0%bd%d0%b8%d0%b8-%d0%b7%d0%b0%d0%b2%d0%b5%d1%80%d1%88%d0%b0%d0%b5%d1%82%d1%81%d1%8f-%d1%80%d0%b0%d1%81%d0%bf%d1%80%d0%be%d0%b4%d0%b0%d0%b6%d0%b0-%d0%b6%d0%b5-2', '', '', '2020-06-25 19:15:14', '2020-06-25 16:15:14', '', 0, 'http://localhost/loft/?p=34', 0, 'post', '', 0),
(35, 1, '2020-06-25 19:13:42', '2020-06-25 16:13:42', '<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка, а также сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития...</p>\n<!-- /wp:paragraph -->', 'В германии завершается распродажа железнодорожных билетов от 19 евро', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-06-25 19:13:42', '2020-06-25 16:13:42', '', 34, 'http://localhost/loft/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-06-25 19:14:59', '2020-06-25 16:14:59', '<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка, а также сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития...</p>\n<!-- /wp:paragraph -->', 'В ИТАЛИИ завершается распродажа железнодорожных билетов от 19 евро', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-06-25 19:14:59', '2020-06-25 16:14:59', '', 32, 'http://localhost/loft/32-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-06-25 19:15:14', '2020-06-25 16:15:14', '<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка, а также сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития...</p>\n<!-- /wp:paragraph -->', 'В ГЕРМАНИИ завершается распродажа железнодорожных билетов от 19 евро', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-06-25 19:15:14', '2020-06-25 16:15:14', '', 34, 'http://localhost/loft/34-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-06-25 20:01:31', '2020-06-25 17:01:31', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>дшвриамщуамр вз9агмрущгам умзушкозшуко у0шкоузщшктузкрузшкоущшктмушкоущшко ущкщмоухшкому0шкоушзщко ушкоузшкпоузшхкпоьузшкпьу кпзушокпхшузокпзушкпушзкпьузщкпьзкщпоу0кшо</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-06-25 20:01:31', '2020-06-25 17:01:31', '', 1, 'http://localhost/loft/1-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-06-25 20:01:49', '2020-06-25 17:01:49', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>КОНТЕНТ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> дшвриамщуамр вз9агмрущгам умзушкозшуко у0шкоузщшктузкрузшкоущшктмушкоущшко ущкщмоухшкому0шкоушзщко ушкоузшкпоузшхкпоьузшкпьу кпзушокпхшузокпзушкпушзкпьузщкпьзкщпоу0кшо</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-06-25 20:01:49', '2020-06-25 17:01:49', '', 1, 'http://localhost/loft/1-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-06-25 20:09:33', '2020-06-25 17:09:33', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка, а также сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Обычно цена предварительных скидочных билетов на средние и дальние дистанции начинается с 29 евро, но сейчас нижний порог уменьшен на треть. Билеты по этому предложению продаются до 31 июля на рейсы до 10 декабря.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Скидки доступны только между станциями, на которых останавливаются дальние поезда (ICE, IC, EC). Стыковочные переезды на региональных и пригородных поездах в этом варианте не разрешены (но они доступны при покупке обычных предварительных скидочных билетов Sparpreis от 29 евро, для коротких маршрутов - от 19 евро). Билет во всех случаях действует только на забронированный поезд, возврат и обмен возможны со штрафом в 17,5 евро и только</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-06-25 20:09:33', '2020-06-25 17:09:33', '', 1, 'http://localhost/loft/1-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-06-25 21:55:47', '2020-06-25 18:55:47', 'ололо', 'Martyr_i03', 'Ваха', 'inherit', 'open', 'closed', '', 'martyr_i03', '', '', '2020-06-25 22:18:12', '2020-06-25 19:18:12', '', 1, 'http://localhost/loft/wp-content/uploads/2020/06/Martyr_i03.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-06-25 22:36:39', '2020-06-25 19:36:39', '', 'Martyr_i03-1', '', 'inherit', 'open', 'closed', '', 'martyr_i03-1', '', '', '2020-06-25 22:36:39', '2020-06-25 19:36:39', '', 1, 'http://localhost/loft/wp-content/uploads/2020/06/Martyr_i03-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-06-25 22:37:32', '2020-06-25 19:37:32', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка, а также сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Обычно цена предварительных скидочных билетов на средние и дальние дистанции начинается с 29 евро, но сейчас нижний порог уменьшен на треть. Билеты по этому предложению продаются до 31 июля на рейсы до 10 декабря.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":44,\"width\":632,\"height\":437,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/loft/wp-content/uploads/2020/06/Martyr_i03-1.jpg\" alt=\"\" class=\"wp-image-44\" width=\"632\" height=\"437\"/><figcaption>500500500500</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Скидки доступны только между станциями, на которых останавливаются дальние поезда (ICE, IC, EC). Стыковочные переезды на региональных и пригородных поездах в этом варианте не разрешены (но они доступны при покупке обычных предварительных скидочных билетов Sparpreis от 29 евро, для коротких маршрутов - от 19 евро). Билет во всех случаях действует только на забронированный поезд, возврат и обмен возможны со штрафом в 17,5 евро и только</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-06-25 22:37:32', '2020-06-25 19:37:32', '', 1, 'http://localhost/loft/1-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-06-26 22:56:02', '2020-06-26 19:56:02', '', 'Martyr_i03', '', 'inherit', 'open', 'closed', '', 'martyr_i03-2', '', '', '2020-06-26 22:56:02', '2020-06-26 19:56:02', '', 18, 'http://localhost/loft/wp-content/uploads/2020/06/Martyr_i03-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2020-06-27 15:03:15', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-27 15:03:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/loft/?p=47', 0, 'post', '', 0),
(48, 1, '2020-06-27 15:03:32', '2020-06-27 12:03:32', '', 'Martyr_i03-3', '', 'inherit', 'open', 'closed', '', 'martyr_i03-3', '', '', '2020-06-27 15:03:32', '2020-06-27 12:03:32', '', 47, 'http://localhost/loft/wp-content/uploads/2020/06/Martyr_i03-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-06-28 01:11:41', '2020-06-27 22:11:41', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка, а также сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Обычно цена предварительных скидочных билетов на средние и дальние дистанции начинается с 29 евро, но сейчас нижний порог уменьшен на треть. Билеты по этому предложению продаются до 31 июля на рейсы до 10 декабря.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":44,\"width\":632,\"height\":437,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/loft/wp-content/uploads/2020/06/Martyr_i03-1.jpg\" alt=\"\" class=\"wp-image-44\" width=\"632\" height=\"437\"/><figcaption>500500500500</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Скидки доступны только между станциями, на которых останавливаются дальние поезда (ICE, IC, EC). Стыковочные переезды на региональных и пригородных поездах в этом варианте не разрешены (но они доступны при покупке обычных предварительных скидочных билетов Sparpreis от 29 евро, для коротких маршрутов - от 19 евро). Билет во всех случаях действует только на забронированный поезд, возврат и обмен возможны со штрафом в 17,5 евро и только</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2020-06-28 01:11:41', '2020-06-27 22:11:41', '', 1, 'http://localhost/loft/1-autosave-v1/', 0, 'revision', '', 0),
(50, 1, '2020-06-28 01:12:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-28 01:12:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/loft/?p=50', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'меню в шапке', '%d0%bc%d0%b5%d0%bd%d1%8e-%d0%b2-%d1%88%d0%b0%d0%bf%d0%ba%d0%b5', 0),
(3, 'азия', '%d0%b0%d0%b7%d0%b8%d1%8f', 0),
(4, 'гермния', '%d0%b3%d0%b5%d1%80%d0%bc%d0%bd%d0%b8%d1%8f', 0),
(5, 'италия', '%d0%b8%d1%82%d0%b0%d0%bb%d0%b8%d1%8f', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 1, 0),
(21, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 1, 0),
(32, 5, 0),
(34, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'post_tag', '', 0, 0),
(4, 4, 'post_tag', '', 0, 0),
(5, 5, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'simba'),
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"693af526a902db9fdd7899ec7f0ff7aaaace7e645b31795f4e39f1deb34a1b3e\";a:4:{s:10:\"expiration\";i:1593374065;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1593201265;}s:64:\"824f1d9aae193b05367c4ea13e1371e4fe27bebda16af39498d0f92b09479ed1\";a:4:{s:10:\"expiration\";i:1593432163;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1593259363;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'edit_post_per_page', '20'),
(20, 1, 'wp_user-settings', 'posts_list_mode=list&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1593209679'),
(22, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(24, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(25, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'simba', '$P$BlL3UkN3wI1F0NcJmHNvdoIVLvXolE0', 'simba', 'ravenguard.terra@gmail.com', 'http://localhost/loft', '2020-06-23 09:57:03', '', 0, 'simba');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index` (`id`);

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
