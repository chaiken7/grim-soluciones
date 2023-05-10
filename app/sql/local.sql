-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-03-04 00:26:13','2023-03-04 00:26:13','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=2403 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://grim-soluciones.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://grim-soluciones.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Grim Soluciones','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','La solución para tu empresa','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','grimsoluciones@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','j F, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:114:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"slider/?$\";s:26:\"index.php?post_type=slider\";s:39:\"slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:34:\"slider/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:26:\"slider/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=slider&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"slider/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"slider/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"slider/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"slider/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"slider/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"slider/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"slider/(.+?)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:25:\"slider/(.+?)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:45:\"slider/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:40:\"slider/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:33:\"slider/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:40:\"slider/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:29:\"slider/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:31:\"creame-whatsapp-me/joinchat.php\";i:3;s:24:\"wordpress-seo/wp-seo.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','grim','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','grim','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','America/Argentina/Buenos_Aires','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','12','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','6','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1693441573','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:6:{i:1682799975;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1682806001;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1682814375;a:6:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1682814455;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1682814456;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','qiW)g7I<h[{i+> OlHo<*|d/h+uF;M=KQp/aB6vY7(/xZTI^=TMA7XSgoPunqLJk','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','/Hg^]YRihl8#}-`Wy~?<O5d#Gc==qM%Y#kLa-3Jv#aO4,7m>Sb.jEle#j$oZM@zO','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (126,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1677894182;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (129,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:28:\"Falló la verificación SSL.\";}}','yes');
INSERT INTO `wp_options` VALUES (136,'auth_key','&`{)AkqH^-&!Iu4~eA2mC=DD@;8Lb!G0qs$-cK&kqH]m>u0hUzNthvZeaDqh/;Na','no');
INSERT INTO `wp_options` VALUES (137,'auth_salt','%zjH MwrrCHV4/ N;Rs:6fT.8=<K|SkaPU*Be.!M*C%~.FNJN7V7?)q|`MBA^=,6','no');
INSERT INTO `wp_options` VALUES (138,'logged_in_key',']!N/co]YQMw{yJ5_R(||tnBe|r,,Y}4r.9Qs&d6-R;|zr><%n{t;YHM,UT^}*Ldv','no');
INSERT INTO `wp_options` VALUES (139,'logged_in_salt','7*[4u3!zA1!8N&^KzA4KFzgIFFT&0WC&v[oy)ih[TCd0A;UZ;d-oFm{{8d(GXMK}','no');
INSERT INTO `wp_options` VALUES (157,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (160,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (163,'WPLANG','es_AR','yes');
INSERT INTO `wp_options` VALUES (164,'new_admin_email','grimsoluciones@gmail.com','yes');
INSERT INTO `wp_options` VALUES (170,'current_theme','Grim Soluciones','yes');
INSERT INTO `wp_options` VALUES (171,'theme_mods_grim','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (172,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (181,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (199,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (447,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":2,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (663,'acf_version','6.0.7','yes');
INSERT INTO `wp_options` VALUES (769,'wpcf7','a:2:{s:7:\"version\";s:7:\"5.7.5.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1678229883;s:7:\"version\";s:5:\"5.7.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (1530,'auto_update_plugins','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}','no');
INSERT INTO `wp_options` VALUES (1762,'secret_key','d{H^iPM509&of^ y]ns~[_[>exW`8.riu]x@:&TpHKrjgXko(uQnL=o_WSlL-{<E','no');
INSERT INTO `wp_options` VALUES (2004,'joinchat','a:21:{s:9:\"telephone\";s:13:\"+541156955068\";s:12:\"message_send\";s:0:\"\";s:12:\"button_image\";i:0;s:10:\"button_tip\";s:0:\"\";s:8:\"position\";s:5:\"right\";s:12:\"button_delay\";i:3;s:12:\"message_text\";s:0:\"\";s:13:\"message_start\";s:9:\"Open chat\";s:5:\"color\";s:7:\"#25d366\";s:9:\"dark_mode\";s:2:\"no\";s:6:\"header\";s:6:\"__jc__\";s:13:\"message_delay\";i:10;s:13:\"message_views\";i:2;s:10:\"optin_text\";s:0:\"\";s:4:\"gads\";s:0:\"\";s:11:\"mobile_only\";s:2:\"no\";s:12:\"whatsapp_web\";s:2:\"no\";s:2:\"qr\";s:2:\"no\";s:13:\"message_badge\";s:2:\"no\";s:11:\"optin_check\";s:2:\"no\";s:10:\"visibility\";a:11:{s:3:\"all\";s:3:\"yes\";s:10:\"front_page\";s:3:\"yes\";s:9:\"blog_page\";s:3:\"yes\";s:8:\"404_page\";s:3:\"yes\";s:6:\"search\";s:3:\"yes\";s:7:\"archive\";s:3:\"yes\";s:4:\"date\";s:3:\"yes\";s:6:\"author\";s:3:\"yes\";s:8:\"singular\";s:3:\"yes\";s:4:\"page\";s:3:\"yes\";s:4:\"post\";s:3:\"yes\";}}','yes');
INSERT INTO `wp_options` VALUES (2186,'yoast_migrations_free','a:1:{s:7:\"version\";s:4:\"20.4\";}','yes');
INSERT INTO `wp_options` VALUES (2187,'wpseo','a:101:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"20.4\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1680473201;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:28:\"http://grim-soluciones.local\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:34:\"dismiss_old_premium_version_notice\";s:0:\"\";s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1680473202;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:6:\"slider\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}}','yes');
INSERT INTO `wp_options` VALUES (2188,'wpseo_titles','a:129:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:40:\"%%name%%, autor en %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:58:\"Has buscado %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:42:\"Página no encontrada %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:60:\"La entrada %%POSTLINK%% se publicó primero en %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:32:\"Error 404: Página no encontrada\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:10:\"Archivo de\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:6:\"Inicio\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:15:\"Has buscado por\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:12:\"title-slider\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-slider\";s:0:\"\";s:14:\"noindex-slider\";b:0;s:25:\"display-metabox-pt-slider\";b:1;s:25:\"post_types-slider-maintax\";i:0;s:23:\"schema-page-type-slider\";s:7:\"WebPage\";s:26:\"schema-article-type-slider\";s:4:\"None\";s:19:\"social-title-slider\";s:9:\"%%title%%\";s:25:\"social-description-slider\";s:0:\"\";s:23:\"social-image-url-slider\";s:0:\"\";s:22:\"social-image-id-slider\";i:0;s:22:\"title-ptarchive-slider\";s:51:\"%%pt_plural%% archivo %%page%% %%sep%% %%sitename%%\";s:25:\"metadesc-ptarchive-slider\";s:0:\"\";s:24:\"bctitle-ptarchive-slider\";s:0:\"\";s:24:\"noindex-ptarchive-slider\";b:0;s:29:\"social-title-ptarchive-slider\";s:21:\"%%pt_plural%% archivo\";s:35:\"social-description-ptarchive-slider\";s:0:\"\";s:33:\"social-image-url-ptarchive-slider\";s:0:\"\";s:32:\"social-image-id-ptarchive-slider\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% archivos\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% archivos\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% archivos\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (2189,'wpseo_social','a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (2325,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1682804813','no');
INSERT INTO `wp_options` VALUES (2326,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (2343,'_site_transient_timeout_browser_d9c544d0aaddfd20c051a0811f2f382d','1682808460','no');
INSERT INTO `wp_options` VALUES (2344,'_site_transient_browser_d9c544d0aaddfd20c051a0811f2f382d','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"112.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (2384,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1682797947;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (2385,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1682797959;s:7:\"checked\";a:2:{s:4:\"grim\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (2386,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1682797957;s:8:\"response\";a:1:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"20.6\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.20.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:5:\"7.2.5\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:31:\"creame-whatsapp-me/joinchat.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/creame-whatsapp-me\";s:4:\"slug\";s:18:\"creame-whatsapp-me\";s:6:\"plugin\";s:31:\"creame-whatsapp-me/joinchat.php\";s:11:\"new_version\";s:6:\"4.5.20\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/creame-whatsapp-me/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/creame-whatsapp-me.4.5.20.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/creame-whatsapp-me/assets/icon-256x256.gif?rev=2699533\";s:2:\"1x\";s:71:\"https://ps.w.org/creame-whatsapp-me/assets/icon-128x128.gif?rev=2699533\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/creame-whatsapp-me/assets/banner-1544x500.png?rev=2742423\";s:2:\"1x\";s:73:\"https://ps.w.org/creame-whatsapp-me/assets/banner-772x250.png?rev=2742423\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.4.0\";}}}','no');
INSERT INTO `wp_options` VALUES (2401,'_site_transient_timeout_theme_roots','1682799758','no');
INSERT INTO `wp_options` VALUES (2402,'_site_transient_theme_roots','a:2:{s:4:\"grim\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (6,6,'_edit_lock','1680467357:1');
INSERT INTO `wp_postmeta` VALUES (7,8,'_edit_lock','1680472999:1');
INSERT INTO `wp_postmeta` VALUES (8,10,'_edit_lock','1680464868:1');
INSERT INTO `wp_postmeta` VALUES (9,12,'_edit_lock','1677957044:1');
INSERT INTO `wp_postmeta` VALUES (10,14,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (11,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (12,14,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (13,14,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (14,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (15,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (16,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (17,14,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (28,16,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (29,16,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (30,16,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (31,16,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (32,16,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (33,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (34,16,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (35,16,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (46,18,'_edit_lock','1682203704:1');
INSERT INTO `wp_postmeta` VALUES (66,25,'_wp_attached_file','2023/03/header-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (67,25,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:25:\"2023/03/header-scaled.jpg\";s:8:\"filesize\";i:463504;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"header-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8192;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"header-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71197;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"header-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3935;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"header-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41331;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"header-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:161329;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"header-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:293992;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"header.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (68,10,'_thumbnail_id','25');
INSERT INTO `wp_postmeta` VALUES (69,6,'_wp_page_template','page-inicio.php');
INSERT INTO `wp_postmeta` VALUES (88,32,'_wp_attached_file','2023/03/bg1.jpg');
INSERT INTO `wp_postmeta` VALUES (89,32,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:15:\"2023/03/bg1.jpg\";s:8:\"filesize\";i:479682;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"bg1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20969;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"bg1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:218510;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"bg1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8482;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"bg1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:128624;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (90,33,'_wp_attached_file','2023/03/bg3.jpg');
INSERT INTO `wp_postmeta` VALUES (91,33,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:15:\"2023/03/bg3.jpg\";s:8:\"filesize\";i:344051;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"bg3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14684;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"bg3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:155993;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"bg3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6097;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"bg3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89711;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (92,34,'_wp_attached_file','2023/03/bg4.jpg');
INSERT INTO `wp_postmeta` VALUES (93,34,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:15:\"2023/03/bg4.jpg\";s:8:\"filesize\";i:399175;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"bg4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13565;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"bg4-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:128530;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"bg4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6195;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"bg4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76316;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"bg4-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:250538;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (94,35,'_wp_attached_file','2023/03/bg5.jpg');
INSERT INTO `wp_postmeta` VALUES (95,35,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:15:\"2023/03/bg5.jpg\";s:8:\"filesize\";i:213199;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"bg5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11815;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"bg5-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95345;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"bg5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6253;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"bg5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58383;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (96,36,'_wp_attached_file','2023/03/bg7.jpg');
INSERT INTO `wp_postmeta` VALUES (97,36,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:15:\"2023/03/bg7.jpg\";s:8:\"filesize\";i:280600;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"bg7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11098;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"bg7-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122096;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"bg7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4834;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"bg7-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69281;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (98,37,'_wp_attached_file','2023/03/bg8-e1680462271481.jpg');
INSERT INTO `wp_postmeta` VALUES (99,37,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:30:\"2023/03/bg8-e1680462271481.jpg\";s:8:\"filesize\";i:186895;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"bg8-e1680462271481-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7907;}s:5:\"large\";a:5:{s:4:\"file\";s:31:\"bg8-e1680462271481-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:90243;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"bg8-e1680462271481-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3669;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"bg8-e1680462271481-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50719;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (100,38,'_wp_attached_file','2023/03/bg11-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (101,38,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1306;s:4:\"file\";s:23:\"2023/03/bg11-scaled.jpg\";s:8:\"filesize\";i:246030;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"bg11-300x153.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:153;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4959;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"bg11-1024x522.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:522;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38148;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"bg11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2789;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"bg11-768x392.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22345;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"bg11-1536x784.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:784;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85033;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"bg11-2048x1045.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:155467;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"bg11.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (102,39,'_wp_attached_file','2023/03/header-1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (103,39,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2023/03/header-1-scaled.jpg\";s:8:\"filesize\";i:463504;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"header-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8192;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"header-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71197;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"header-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3935;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"header-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41331;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"header-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:161329;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"header-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:293992;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"header-1.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (104,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (105,41,'_edit_lock','1678032753:1');
INSERT INTO `wp_postmeta` VALUES (106,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (107,45,'_edit_lock','1678316555:1');
INSERT INTO `wp_postmeta` VALUES (124,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (125,54,'_edit_lock','1680464798:1');
INSERT INTO `wp_postmeta` VALUES (126,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (127,6,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (128,6,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (129,56,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (130,56,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (131,60,'_wp_attached_file','2023/03/header-2-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (132,60,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2023/03/header-2-scaled.jpg\";s:8:\"filesize\";i:463504;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"header-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8192;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"header-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71197;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"header-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3935;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"header-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41331;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"header-2-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:161329;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"header-2-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:293992;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"header-2.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (133,6,'hero_imagen','83');
INSERT INTO `wp_postmeta` VALUES (134,6,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (135,6,'encabezado_hero','TU AGENCIA DE DISEÑO WEB Y MARKETING SEO');
INSERT INTO `wp_postmeta` VALUES (136,6,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (137,6,'texto_hero','Te ayudamos a alcanzar los objetivos de tu marca.');
INSERT INTO `wp_postmeta` VALUES (138,6,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (139,61,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (140,61,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (141,61,'hero_imagen','60');
INSERT INTO `wp_postmeta` VALUES (142,61,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (143,61,'encabezado_hero','Te ayudamos a alcanzar tus objetivos');
INSERT INTO `wp_postmeta` VALUES (144,61,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (145,61,'texto_hero','Somos especialistas en diseño web y marketing digital.');
INSERT INTO `wp_postmeta` VALUES (146,61,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (147,14,'_wp_old_date','2023-03-04');
INSERT INTO `wp_postmeta` VALUES (150,16,'_wp_old_date','2023-03-04');
INSERT INTO `wp_postmeta` VALUES (151,62,'_form','<div class=\"card-body\">\n<div class=\"input-group no-border\">\n  [text* your-name autocomplete:name class:form-control placeholder:\"Nombre y Apellido\"]\n</div>\n<div class=\"input-group no-border\">\n  [email* your-email autocomplete:email class:form-control placeholder:\"Email\"] \n</div>\n<div class=\"input-group no-border\">\n  [tel* tel-129 class:form-control placeholder:\"Teléfono\"]\n</div>\n\n  [textarea your-message class:area-contacto-form class:round placeholder:\"Contanos en que te podemos ayudar!\"] \n\n[submit class:btn class:btn-neutral class:btn-round class:btn-lg]\n</div>');
INSERT INTO `wp_postmeta` VALUES (152,62,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <grimsoluciones@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:182:\"De: [your-name] [your-email]\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (153,62,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:47:\"[_site_title] <wordpress@grim-soluciones.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:129:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (154,62,'_messages','a:22:{s:12:\"mail_sent_ok\";s:43:\"Gracias por tu mensaje, ya ha sido enviado.\";s:12:\"mail_sent_ng\";s:73:\"Hubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\";s:16:\"validation_error\";s:75:\"Uno o más campos tienen un error. Por favor, revisá e intentalo de nuevo.\";s:4:\"spam\";s:73:\"Hubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\";s:12:\"accept_terms\";s:74:\"Tenés que aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:31:\"Por favor, rellená este campo.\";s:16:\"invalid_too_long\";s:45:\"Este campo tiene una entrada demasiado larga.\";s:17:\"invalid_too_short\";s:45:\"Este campo tiene una entrada demasiado corta.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido subiendo el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tenés permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:38:\"El archivo subido es demasiado grande.\";s:23:\"upload_failed_php_error\";s:34:\"Hubo un error al subir el archivo.\";s:12:\"invalid_date\";s:56:\"Por favor, ingresá una fecha con el formato YYYY-MM-DD.\";s:14:\"date_too_early\";s:46:\"Este campo tiene una fecha demasiado temprana.\";s:13:\"date_too_late\";s:45:\"Este campo tiene una fecha demasiado tardía.\";s:14:\"invalid_number\";s:20:\"Ingresá un número.\";s:16:\"number_too_small\";s:47:\"Esta campo tiene un número demasiado pequeño.\";s:16:\"number_too_large\";s:45:\"Este campo tiene un número demasiado grande.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:13:\"invalid_email\";s:47:\"Ingresá una dirección de correo electrónico.\";s:11:\"invalid_url\";s:17:\"Ingresá una URL.\";s:11:\"invalid_tel\";s:44:\"Por favor, ingresá un número de teléfono.\";}');
INSERT INTO `wp_postmeta` VALUES (155,62,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (156,62,'_locale','es_AR');
INSERT INTO `wp_postmeta` VALUES (157,8,'_wp_page_template','contact-page.php');
INSERT INTO `wp_postmeta` VALUES (158,69,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (159,69,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (160,69,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (161,69,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (162,69,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (163,69,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (164,69,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (165,69,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (167,14,'_wp_old_date','2023-03-07');
INSERT INTO `wp_postmeta` VALUES (169,16,'_wp_old_date','2023-03-07');
INSERT INTO `wp_postmeta` VALUES (170,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (171,18,'_wp_page_template','service-page.php');
INSERT INTO `wp_postmeta` VALUES (175,71,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (176,71,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (177,71,'hero_imagen','60');
INSERT INTO `wp_postmeta` VALUES (178,71,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (179,71,'encabezado_hero','TU AGENCIA DE DISEÑO WEB Y MARKETING SEO.');
INSERT INTO `wp_postmeta` VALUES (180,71,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (181,71,'texto_hero','Te ayudamos a alcanzar los objetivos de tu marca.');
INSERT INTO `wp_postmeta` VALUES (182,71,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (183,72,'_wp_attached_file','2023/03/stock-photo-marketing-team-meeting-brainstorming-research-concept-390454498.jpg');
INSERT INTO `wp_postmeta` VALUES (184,72,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:876;s:4:\"file\";s:87:\"2023/03/stock-photo-marketing-team-meeting-brainstorming-research-concept-390454498.jpg\";s:8:\"filesize\";i:382525;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:87:\"stock-photo-marketing-team-meeting-brainstorming-research-concept-390454498-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14405;}s:5:\"large\";a:5:{s:4:\"file\";s:88:\"stock-photo-marketing-team-meeting-brainstorming-research-concept-390454498-1024x598.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:86012;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:87:\"stock-photo-marketing-team-meeting-brainstorming-research-concept-390454498-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6580;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:87:\"stock-photo-marketing-team-meeting-brainstorming-research-concept-390454498-768x449.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:449;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56788;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (185,73,'_wp_attached_file','2023/03/stock-photo-group-of-business-people-make-team-meeting-at-business-meeting-in-office-1926821048.jpg');
INSERT INTO `wp_postmeta` VALUES (186,73,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:892;s:4:\"file\";s:107:\"2023/03/stock-photo-group-of-business-people-make-team-meeting-at-business-meeting-in-office-1926821048.jpg\";s:8:\"filesize\";i:1217168;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:107:\"stock-photo-group-of-business-people-make-team-meeting-at-business-meeting-in-office-1926821048-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14030;}s:5:\"large\";a:5:{s:4:\"file\";s:108:\"stock-photo-group-of-business-people-make-team-meeting-at-business-meeting-in-office-1926821048-1024x609.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:609;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:90906;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:107:\"stock-photo-group-of-business-people-make-team-meeting-at-business-meeting-in-office-1926821048-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6959;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:107:\"stock-photo-group-of-business-people-make-team-meeting-at-business-meeting-in-office-1926821048-768x457.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59264;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (187,74,'_wp_attached_file','2023/03/stock-photo-motivated-multinational-team-raise-high-fives-on-briefing-after-finding-problem-solution-as-1918278398.jpg');
INSERT INTO `wp_postmeta` VALUES (188,74,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:943;s:4:\"file\";s:126:\"2023/03/stock-photo-motivated-multinational-team-raise-high-fives-on-briefing-after-finding-problem-solution-as-1918278398.jpg\";s:8:\"filesize\";i:1083587;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:126:\"stock-photo-motivated-multinational-team-raise-high-fives-on-briefing-after-finding-problem-solution-as-1918278398-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14520;}s:5:\"large\";a:5:{s:4:\"file\";s:127:\"stock-photo-motivated-multinational-team-raise-high-fives-on-briefing-after-finding-problem-solution-as-1918278398-1024x644.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:86009;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:126:\"stock-photo-motivated-multinational-team-raise-high-fives-on-briefing-after-finding-problem-solution-as-1918278398-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7075;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:126:\"stock-photo-motivated-multinational-team-raise-high-fives-on-briefing-after-finding-problem-solution-as-1918278398-768x483.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:483;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56856;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (189,75,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (190,75,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (191,75,'hero_imagen','74');
INSERT INTO `wp_postmeta` VALUES (192,75,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (193,75,'encabezado_hero','TU AGENCIA DE DISEÑO WEB Y MARKETING SEO.');
INSERT INTO `wp_postmeta` VALUES (194,75,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (195,75,'texto_hero','Te ayudamos a alcanzar los objetivos de tu marca.');
INSERT INTO `wp_postmeta` VALUES (196,75,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (197,76,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (198,76,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (199,76,'hero_imagen','73');
INSERT INTO `wp_postmeta` VALUES (200,76,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (201,76,'encabezado_hero','TU AGENCIA DE DISEÑO WEB Y MARKETING SEO.');
INSERT INTO `wp_postmeta` VALUES (202,76,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (203,76,'texto_hero','Te ayudamos a alcanzar los objetivos de tu marca.');
INSERT INTO `wp_postmeta` VALUES (204,76,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (205,77,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (206,77,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (207,77,'hero_imagen','72');
INSERT INTO `wp_postmeta` VALUES (208,77,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (209,77,'encabezado_hero','TU AGENCIA DE DISEÑO WEB Y MARKETING SEO.');
INSERT INTO `wp_postmeta` VALUES (210,77,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (211,77,'texto_hero','Te ayudamos a alcanzar los objetivos de tu marca.');
INSERT INTO `wp_postmeta` VALUES (212,77,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (213,78,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (214,78,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (215,78,'hero_imagen','74');
INSERT INTO `wp_postmeta` VALUES (216,78,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (217,78,'encabezado_hero','TU AGENCIA DE DISEÑO WEB Y MARKETING SEO.');
INSERT INTO `wp_postmeta` VALUES (218,78,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (219,78,'texto_hero','Te ayudamos a alcanzar los objetivos de tu marca.');
INSERT INTO `wp_postmeta` VALUES (220,78,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (221,79,'_wp_attached_file','2023/03/Agencia-Digital-Portada.jpg');
INSERT INTO `wp_postmeta` VALUES (222,79,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:517;s:4:\"file\";s:35:\"2023/03/Agencia-Digital-Portada.jpg\";s:8:\"filesize\";i:335111;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"Agencia-Digital-Portada-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12409;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"Agencia-Digital-Portada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6317;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"Agencia-Digital-Portada-768x397.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47721;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:73:\"Copyright (c) 2016 Rawpixel.com/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (223,80,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (224,80,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (225,80,'hero_imagen','79');
INSERT INTO `wp_postmeta` VALUES (226,80,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (227,80,'encabezado_hero','TU AGENCIA DE DISEÑO WEB Y MARKETING SEO.');
INSERT INTO `wp_postmeta` VALUES (228,80,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (229,80,'texto_hero','Te ayudamos a alcanzar los objetivos de tu marca.');
INSERT INTO `wp_postmeta` VALUES (230,80,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (231,81,'_wp_attached_file','2023/03/Agencia-Digital-Portada-1.jpg');
INSERT INTO `wp_postmeta` VALUES (232,81,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:517;s:4:\"file\";s:37:\"2023/03/Agencia-Digital-Portada-1.jpg\";s:8:\"filesize\";i:290641;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"Agencia-Digital-Portada-1-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10622;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"Agencia-Digital-Portada-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5443;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"Agencia-Digital-Portada-1-768x397.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40530;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:73:\"Copyright (c) 2016 Rawpixel.com/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (233,82,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (234,82,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (235,82,'hero_imagen','81');
INSERT INTO `wp_postmeta` VALUES (236,82,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (237,82,'encabezado_hero','TU AGENCIA DE DISEÑO WEB Y MARKETING SEO.');
INSERT INTO `wp_postmeta` VALUES (238,82,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (239,82,'texto_hero','Te ayudamos a alcanzar los objetivos de tu marca.');
INSERT INTO `wp_postmeta` VALUES (240,82,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (241,83,'_wp_attached_file','2023/03/Agencia-Digital-Portada-2.jpg');
INSERT INTO `wp_postmeta` VALUES (242,83,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:517;s:4:\"file\";s:37:\"2023/03/Agencia-Digital-Portada-2.jpg\";s:8:\"filesize\";i:234176;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"Agencia-Digital-Portada-2-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8458;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"Agencia-Digital-Portada-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4371;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"Agencia-Digital-Portada-2-768x397.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32012;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:73:\"Copyright (c) 2016 Rawpixel.com/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (243,84,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (244,84,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (245,84,'hero_imagen','83');
INSERT INTO `wp_postmeta` VALUES (246,84,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (247,84,'encabezado_hero','TU AGENCIA DE DISEÑO WEB Y MARKETING SEO.');
INSERT INTO `wp_postmeta` VALUES (248,84,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (249,84,'texto_hero','Te ayudamos a alcanzar los objetivos de tu marca.');
INSERT INTO `wp_postmeta` VALUES (250,84,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (251,85,'pagina_de_inicio','');
INSERT INTO `wp_postmeta` VALUES (252,85,'_pagina_de_inicio','field_6404e7850f751');
INSERT INTO `wp_postmeta` VALUES (253,85,'hero_imagen','83');
INSERT INTO `wp_postmeta` VALUES (254,85,'_hero_imagen','field_6404eabfc2e5a');
INSERT INTO `wp_postmeta` VALUES (255,85,'encabezado_hero','TU AGENCIA DE DISEÑO WEB Y MARKETING SEO');
INSERT INTO `wp_postmeta` VALUES (256,85,'_encabezado_hero','field_6404ea4ac2e58');
INSERT INTO `wp_postmeta` VALUES (257,85,'texto_hero','Te ayudamos a alcanzar los objetivos de tu marca.');
INSERT INTO `wp_postmeta` VALUES (258,85,'_texto_hero','field_6404ea4fc2e59');
INSERT INTO `wp_postmeta` VALUES (259,88,'_form','<div class=\"card-header text-center\">\n    <h3 class=\"card-title title-up\">Te podemos ayudar</h3>\n     <p>Dejanos tus datos y te contactamos en el día para hablar sobre tu proyecto.</p>\n </div>\n<div class=\"card-body\">\n<div class=\"input-group no-border\">\n  [text* your-name autocomplete:name class:form-control placeholder:\"Nombre y Apellido\"]\n</div>\n<div class=\"input-group no-border\">\n  [email* your-email autocomplete:email class:form-control placeholder:\"Email\"] \n</div>\n<div class=\"input-group no-border\">\n  [tel* tel-129 class:form-control placeholder:\"Teléfono\"]\n</div>\n\n  [textarea your-message class:area-contacto-form class:round placeholder:\"Contanos en que te podemos ayudar!\"] \n\n[submit class:btn class:btn-neutral class:btn-round class:btn-lg]\n</div>');
INSERT INTO `wp_postmeta` VALUES (260,88,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:47:\"[_site_title] <wordpress@grim-soluciones.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:182:\"De: [your-name] [your-email]\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (261,88,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:47:\"[_site_title] <wordpress@grim-soluciones.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:129:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (262,88,'_messages','a:22:{s:12:\"mail_sent_ok\";s:43:\"Gracias por tu mensaje, ya ha sido enviado.\";s:12:\"mail_sent_ng\";s:73:\"Hubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\";s:16:\"validation_error\";s:75:\"Uno o más campos tienen un error. Por favor, revisá e intentalo de nuevo.\";s:4:\"spam\";s:73:\"Hubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\";s:12:\"accept_terms\";s:74:\"Tenés que aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:31:\"Por favor, rellená este campo.\";s:16:\"invalid_too_long\";s:45:\"Este campo tiene una entrada demasiado larga.\";s:17:\"invalid_too_short\";s:45:\"Este campo tiene una entrada demasiado corta.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido subiendo el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tenés permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:38:\"El archivo subido es demasiado grande.\";s:23:\"upload_failed_php_error\";s:34:\"Hubo un error al subir el archivo.\";s:12:\"invalid_date\";s:56:\"Por favor, ingresá una fecha con el formato YYYY-MM-DD.\";s:14:\"date_too_early\";s:46:\"Este campo tiene una fecha demasiado temprana.\";s:13:\"date_too_late\";s:45:\"Este campo tiene una fecha demasiado tardía.\";s:14:\"invalid_number\";s:20:\"Ingresá un número.\";s:16:\"number_too_small\";s:47:\"Esta campo tiene un número demasiado pequeño.\";s:16:\"number_too_large\";s:45:\"Este campo tiene un número demasiado grande.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:13:\"invalid_email\";s:47:\"Ingresá una dirección de correo electrónico.\";s:11:\"invalid_url\";s:17:\"Ingresá una URL.\";s:11:\"invalid_tel\";s:44:\"Por favor, ingresá un número de teléfono.\";}');
INSERT INTO `wp_postmeta` VALUES (263,88,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (264,88,'_locale','es_AR');
INSERT INTO `wp_postmeta` VALUES (265,18,'_thumbnail_id','38');
INSERT INTO `wp_postmeta` VALUES (266,62,'_config_errors','a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:103;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:70:\"https://contactform7.com/configuration-errors/email-not-in-site-domain\";}}}}');
INSERT INTO `wp_postmeta` VALUES (267,14,'_wp_old_date','2023-03-10');
INSERT INTO `wp_postmeta` VALUES (268,69,'_wp_old_date','2023-03-10');
INSERT INTO `wp_postmeta` VALUES (269,16,'_wp_old_date','2023-03-10');
INSERT INTO `wp_postmeta` VALUES (271,91,'_wp_attached_file','2023/04/imagen-contacto.jpg');
INSERT INTO `wp_postmeta` VALUES (272,91,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1536;s:6:\"height\";i:960;s:4:\"file\";s:27:\"2023/04/imagen-contacto.jpg\";s:8:\"filesize\";i:177086;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"imagen-contacto-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13508;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"imagen-contacto-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:84065;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"imagen-contacto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6954;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"imagen-contacto-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56106;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Shutterstock\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:198:\"Motivated multinational team raise high fives on briefing after finding problem solution as successful brainstorm result. Happy workers unite hands above conference desk celebrate common achievement\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:67:\"Copyright (c) 2021 fizkes/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:71:\"Motivated,Multinational,Team,Raise,High,Fives,On,Briefing,After,Finding\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:1:{i:0;s:64:\"great victory,five hands,boss leader,partner news,business trium\";}}}');
INSERT INTO `wp_postmeta` VALUES (273,92,'_wp_attached_file','2023/04/imagen-contacto1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (274,92,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1697;s:4:\"file\";s:35:\"2023/04/imagen-contacto1-scaled.jpg\";s:8:\"filesize\";i:385781;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"imagen-contacto1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13869;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"imagen-contacto1-1024x679.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:679;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85872;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"imagen-contacto1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6852;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"imagen-contacto1-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55676;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"imagen-contacto1-1536x1018.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1018;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:163921;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:30:\"imagen-contacto1-2048x1358.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1358;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:265362;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Shutterstock\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:198:\"Motivated multinational team raise high fives on briefing after finding problem solution as successful brainstorm result. Happy workers unite hands above conference desk celebrate common achievement\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:67:\"Copyright (c) 2021 fizkes/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:71:\"Motivated,Multinational,Team,Raise,High,Fives,On,Briefing,After,Finding\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:1:{i:0;s:64:\"great victory,five hands,boss leader,partner news,business trium\";}}s:14:\"original_image\";s:20:\"imagen-contacto1.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (275,93,'_wp_attached_file','2023/04/imagen-contacto1-1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (276,93,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1386;s:4:\"file\";s:37:\"2023/04/imagen-contacto1-1-scaled.jpg\";s:8:\"filesize\";i:340218;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"imagen-contacto1-1-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12402;}s:5:\"large\";a:5:{s:4:\"file\";s:31:\"imagen-contacto1-1-1024x554.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:554;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76563;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"imagen-contacto1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6861;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"imagen-contacto1-1-768x416.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49064;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"imagen-contacto1-1-1536x832.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:832;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:144837;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:32:\"imagen-contacto1-1-2048x1109.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1109;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:236015;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Shutterstock\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:198:\"Motivated multinational team raise high fives on briefing after finding problem solution as successful brainstorm result. Happy workers unite hands above conference desk celebrate common achievement\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:67:\"Copyright (c) 2021 fizkes/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:71:\"Motivated,Multinational,Team,Raise,High,Fives,On,Briefing,After,Finding\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:1:{i:0;s:64:\"great victory,five hands,boss leader,partner news,business trium\";}}s:14:\"original_image\";s:22:\"imagen-contacto1-1.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (277,94,'_wp_attached_file','2023/04/shutterstock_1556343866.jpg');
INSERT INTO `wp_postmeta` VALUES (278,94,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2023/04/shutterstock_1556343866.jpg\";s:8:\"filesize\";i:193996;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"shutterstock_1556343866-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7242;}s:5:\"large\";a:5:{s:4:\"file\";s:36:\"shutterstock_1556343866-1024x432.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40375;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"shutterstock_1556343866-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4297;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"shutterstock_1556343866-768x324.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26764;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"shutterstock_1556343866-1536x648.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:648;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76647;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:36:\"shutterstock_1556343866-2048x864.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122568;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Shutterstock\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:167:\"Panoramic teamwork business join hand together concept, Business team standing hands together, Volunteer charity work. People joining for cooperation success business.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:70:\"Copyright (c) 2019 Shutter.B/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:78:\"Panoramic,Teamwork,Business,Join,Hand,Together,Concept,,Business,Team,Standing\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:1:{i:0;s:64:\"stack,friendship,strength,panoramic,competition,employee,solutio\";}}}');
INSERT INTO `wp_postmeta` VALUES (279,95,'_wp_attached_file','2023/04/shutterstock_1556343866-1.jpg');
INSERT INTO `wp_postmeta` VALUES (280,95,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1080;s:4:\"file\";s:37:\"2023/04/shutterstock_1556343866-1.jpg\";s:8:\"filesize\";i:193996;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"shutterstock_1556343866-1-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7242;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"shutterstock_1556343866-1-1024x432.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40375;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"shutterstock_1556343866-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4297;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"shutterstock_1556343866-1-768x324.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26764;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:38:\"shutterstock_1556343866-1-1536x648.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:648;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76647;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:38:\"shutterstock_1556343866-1-2048x864.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122568;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Shutterstock\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:167:\"Panoramic teamwork business join hand together concept, Business team standing hands together, Volunteer charity work. People joining for cooperation success business.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:70:\"Copyright (c) 2019 Shutter.B/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:78:\"Panoramic,Teamwork,Business,Join,Hand,Together,Concept,,Business,Team,Standing\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:1:{i:0;s:64:\"stack,friendship,strength,panoramic,competition,employee,solutio\";}}}');
INSERT INTO `wp_postmeta` VALUES (281,96,'_wp_attached_file','2023/04/shutterstock_1556343866-2.jpg');
INSERT INTO `wp_postmeta` VALUES (282,96,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:804;s:4:\"file\";s:37:\"2023/04/shutterstock_1556343866-2.jpg\";s:8:\"filesize\";i:163152;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"shutterstock_1556343866-2-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5880;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"shutterstock_1556343866-2-1024x322.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33543;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"shutterstock_1556343866-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4146;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"shutterstock_1556343866-2-768x241.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:241;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21872;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:38:\"shutterstock_1556343866-2-1536x482.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:482;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63206;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:38:\"shutterstock_1556343866-2-2048x643.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:643;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:101348;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Shutterstock\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:167:\"Panoramic teamwork business join hand together concept, Business team standing hands together, Volunteer charity work. People joining for cooperation success business.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:70:\"Copyright (c) 2019 Shutter.B/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:78:\"Panoramic,Teamwork,Business,Join,Hand,Together,Concept,,Business,Team,Standing\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:1:{i:0;s:64:\"stack,friendship,strength,panoramic,competition,employee,solutio\";}}}');
INSERT INTO `wp_postmeta` VALUES (283,98,'_wp_attached_file','2023/04/shutterstock_1556343866-3.jpg');
INSERT INTO `wp_postmeta` VALUES (284,98,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:648;s:4:\"file\";s:37:\"2023/04/shutterstock_1556343866-3.jpg\";s:8:\"filesize\";i:140525;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"shutterstock_1556343866-3-300x76.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5113;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"shutterstock_1556343866-3-1024x259.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28263;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"shutterstock_1556343866-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3977;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"shutterstock_1556343866-3-768x194.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18585;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:38:\"shutterstock_1556343866-3-1536x389.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:389;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53524;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:38:\"shutterstock_1556343866-3-2048x518.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:86104;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Shutterstock\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:167:\"Panoramic teamwork business join hand together concept, Business team standing hands together, Volunteer charity work. People joining for cooperation success business.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:70:\"Copyright (c) 2019 Shutter.B/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:78:\"Panoramic,Teamwork,Business,Join,Hand,Together,Concept,,Business,Team,Standing\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:1:{i:0;s:64:\"stack,friendship,strength,panoramic,competition,employee,solutio\";}}}');
INSERT INTO `wp_postmeta` VALUES (285,37,'_wp_attachment_backup_sizes','a:10:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:7:\"bg8.jpg\";}s:14:\"thumbnail-orig\";a:5:{s:4:\"file\";s:15:\"bg8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3677;}s:11:\"medium-orig\";a:5:{s:4:\"file\";s:15:\"bg8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7908;}s:17:\"medium_large-orig\";a:5:{s:4:\"file\";s:15:\"bg8-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50857;}s:10:\"large-orig\";a:5:{s:4:\"file\";s:16:\"bg8-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:90427;}s:18:\"full-1680462271481\";a:3:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:22:\"bg8-e1680462254102.jpg\";}s:23:\"thumbnail-1680462271481\";a:5:{s:4:\"file\";s:30:\"bg8-e1680462254102-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3677;}s:20:\"medium-1680462271481\";a:5:{s:4:\"file\";s:30:\"bg8-e1680462254102-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7908;}s:26:\"medium_large-1680462271481\";a:5:{s:4:\"file\";s:30:\"bg8-e1680462254102-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50857;}s:19:\"large-1680462271481\";a:5:{s:4:\"file\";s:31:\"bg8-e1680462254102-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:90427;}}');
INSERT INTO `wp_postmeta` VALUES (286,101,'_edit_lock','1680465974:1');
INSERT INTO `wp_postmeta` VALUES (287,101,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (288,18,'hero_imagen','98');
INSERT INTO `wp_postmeta` VALUES (289,18,'_hero_imagen','field_6429d5931331c');
INSERT INTO `wp_postmeta` VALUES (290,18,'encabezado_hero','');
INSERT INTO `wp_postmeta` VALUES (291,18,'_encabezado_hero','field_6429d59316d8f');
INSERT INTO `wp_postmeta` VALUES (292,18,'texto_hero','Descubre nuestras opciones de diseño web para tu negocio.');
INSERT INTO `wp_postmeta` VALUES (293,18,'_texto_hero','field_6429d5931a7f7');
INSERT INTO `wp_postmeta` VALUES (294,106,'hero_imagen','98');
INSERT INTO `wp_postmeta` VALUES (295,106,'_hero_imagen','field_6429d5931331c');
INSERT INTO `wp_postmeta` VALUES (296,106,'encabezado_hero','');
INSERT INTO `wp_postmeta` VALUES (297,106,'_encabezado_hero','field_6429d59316d8f');
INSERT INTO `wp_postmeta` VALUES (298,106,'texto_hero','Descubre nuestras opciones de diseño web para tu negocio.');
INSERT INTO `wp_postmeta` VALUES (299,106,'_texto_hero','field_6429d5931a7f7');
INSERT INTO `wp_postmeta` VALUES (300,6,'_thumbnail_id','83');
INSERT INTO `wp_postmeta` VALUES (301,18,'hero_imagen_services','98');
INSERT INTO `wp_postmeta` VALUES (302,18,'_hero_imagen_services','field_6429d5931331c');
INSERT INTO `wp_postmeta` VALUES (303,107,'hero_imagen','98');
INSERT INTO `wp_postmeta` VALUES (304,107,'_hero_imagen','field_6429d5931331c');
INSERT INTO `wp_postmeta` VALUES (305,107,'encabezado_hero','');
INSERT INTO `wp_postmeta` VALUES (306,107,'_encabezado_hero','field_6429d59316d8f');
INSERT INTO `wp_postmeta` VALUES (307,107,'texto_hero','Descubre nuestras opciones de diseño web para tu negocio.');
INSERT INTO `wp_postmeta` VALUES (308,107,'_texto_hero','field_6429d5931a7f7');
INSERT INTO `wp_postmeta` VALUES (309,107,'hero_imagen_services','98');
INSERT INTO `wp_postmeta` VALUES (310,107,'_hero_imagen_services','field_6429d5931331c');
INSERT INTO `wp_postmeta` VALUES (311,108,'hero_imagen','98');
INSERT INTO `wp_postmeta` VALUES (312,108,'_hero_imagen','field_6429d5931331c');
INSERT INTO `wp_postmeta` VALUES (313,108,'encabezado_hero','');
INSERT INTO `wp_postmeta` VALUES (314,108,'_encabezado_hero','field_6429d59316d8f');
INSERT INTO `wp_postmeta` VALUES (315,108,'texto_hero','Descubre nuestras opciones de diseño web para tu negocio.');
INSERT INTO `wp_postmeta` VALUES (316,108,'_texto_hero','field_6429d5931a7f7');
INSERT INTO `wp_postmeta` VALUES (317,108,'hero_imagen_services','98');
INSERT INTO `wp_postmeta` VALUES (318,108,'_hero_imagen_services','field_6429d5931331c');
INSERT INTO `wp_postmeta` VALUES (319,111,'hero_imagen','98');
INSERT INTO `wp_postmeta` VALUES (320,111,'_hero_imagen','field_6429d5931331c');
INSERT INTO `wp_postmeta` VALUES (321,111,'encabezado_hero','');
INSERT INTO `wp_postmeta` VALUES (322,111,'_encabezado_hero','field_6429d59316d8f');
INSERT INTO `wp_postmeta` VALUES (323,111,'texto_hero','Descubre nuestras opciones de diseño web para tu negocio.');
INSERT INTO `wp_postmeta` VALUES (324,111,'_texto_hero','field_6429d5931a7f7');
INSERT INTO `wp_postmeta` VALUES (325,111,'hero_imagen_services','98');
INSERT INTO `wp_postmeta` VALUES (326,111,'_hero_imagen_services','field_6429d5931331c');
INSERT INTO `wp_postmeta` VALUES (327,18,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (328,18,'_yoast_wpseo_wordproof_timestamp','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-03-04 00:26:13','2023-03-04 00:26:13','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-03-04 00:26:13','2023-03-04 00:26:13','',0,'http://grim-soluciones.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (3,1,'2023-03-04 00:26:13','2023-03-04 00:26:13','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://grim-soluciones.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-03-04 00:26:13','2023-03-04 00:26:13','',0,'http://grim-soluciones.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-03-04 01:47:03','2023-03-04 01:47:03','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','publish','closed','closed','','inicio','','','2023-04-02 16:40:39','2023-04-02 19:40:39','',0,'http://grim-soluciones.local/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-03-04 01:47:03','2023-03-04 01:47:03','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-04 01:47:03','2023-03-04 01:47:03','',6,'http://grim-soluciones.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-03-04 01:47:24','2023-03-04 01:47:24','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Dejanos tus datos y te llamamos para charlar sobre tu proyecto</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Completá el formulario y nos comunicamos con vos hoy.</p>\n<!-- /wp:paragraph -->','Contacto','','publish','closed','closed','','contacto','','','2023-04-02 19:05:38','2023-04-02 22:05:38','',0,'http://grim-soluciones.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-03-04 01:47:24','2023-03-04 01:47:24','<!-- wp:paragraph -->\n<p>Contacto</p>\n<!-- /wp:paragraph -->','Contacto','','inherit','closed','closed','','8-revision-v1','','','2023-03-04 01:47:24','2023-03-04 01:47:24','',8,'http://grim-soluciones.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-03-04 01:47:46','2023-03-04 01:47:46','<!-- wp:paragraph -->\n<p>Nosotros</p>\n<!-- /wp:paragraph -->','Nosotros','','publish','closed','closed','','nosotros','','','2023-03-04 19:30:57','2023-03-04 19:30:57','',0,'http://grim-soluciones.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-03-04 01:47:46','2023-03-04 01:47:46','<!-- wp:paragraph -->\n<p>Nosotros</p>\n<!-- /wp:paragraph -->','Nosotros','','inherit','closed','closed','','10-revision-v1','','','2023-03-04 01:47:46','2023-03-04 01:47:46','',10,'http://grim-soluciones.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-03-04 01:53:41','2023-03-04 01:53:41','<!-- wp:paragraph -->\n<p>Nuestro Blog</p>\n<!-- /wp:paragraph -->','Blog','','publish','closed','closed','','blog','','','2023-03-04 01:53:41','2023-03-04 01:53:41','',0,'http://grim-soluciones.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-03-04 01:53:41','2023-03-04 01:53:41','<!-- wp:paragraph -->\n<p>Nuestro Blog</p>\n<!-- /wp:paragraph -->','Blog','','inherit','closed','closed','','12-revision-v1','','','2023-03-04 01:53:41','2023-03-04 01:53:41','',12,'http://grim-soluciones.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-03-26 02:48:12','2023-03-04 02:43:29',' ','','','publish','closed','closed','','14','','','2023-03-26 02:48:12','2023-03-26 05:48:12','',0,'http://grim-soluciones.local/?p=14',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-03-26 02:48:12','2023-03-04 02:43:29',' ','','','publish','closed','closed','','16','','','2023-03-26 02:48:12','2023-03-26 05:48:12','',0,'http://grim-soluciones.local/?p=16',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-03-04 18:24:47','2023-03-04 21:24:47','<!-- wp:paragraph -->\n<p>Trabajos Realizados</p>\n<!-- /wp:paragraph -->','Precios','','publish','closed','closed','','precios','','','2023-04-22 19:48:24','2023-04-22 22:48:24','',0,'http://grim-soluciones.local/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-03-04 18:24:47','2023-03-04 18:24:47','<!-- wp:paragraph -->\n<p>Portofolio</p>\n<!-- /wp:paragraph -->','Portofolio','','inherit','closed','closed','','18-revision-v1','','','2023-03-04 18:24:47','2023-03-04 18:24:47','',18,'http://grim-soluciones.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-03-04 18:56:15','2023-03-04 18:56:15','<!-- wp:paragraph -->\n<p>Trabajos Realizados</p>\n<!-- /wp:paragraph -->','Trabajos Realizados','','inherit','closed','closed','','18-revision-v1','','','2023-03-04 18:56:15','2023-03-04 18:56:15','',18,'http://grim-soluciones.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-03-04 19:29:35','2023-03-04 19:29:35','','header','','inherit','open','closed','','header','','','2023-03-04 19:29:35','2023-03-04 19:29:35','',10,'http://grim-soluciones.local/wp-content/uploads/2023/03/header.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-03-05 05:02:42','2023-03-05 05:02:42','','bg1','','inherit','open','closed','','bg1','','','2023-03-05 05:02:42','2023-03-05 05:02:42','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (33,1,'2023-03-05 05:02:42','2023-03-05 05:02:42','','bg3','','inherit','open','closed','','bg3','','','2023-03-05 05:02:42','2023-03-05 05:02:42','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-03-05 05:02:43','2023-03-05 05:02:43','','bg4','','inherit','open','closed','','bg4','','','2023-03-05 05:02:43','2023-03-05 05:02:43','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-03-05 05:02:44','2023-03-05 05:02:44','','bg5','','inherit','open','closed','','bg5','','','2023-03-05 05:02:44','2023-03-05 05:02:44','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-03-05 05:02:45','2023-03-05 05:02:45','','bg7','','inherit','open','closed','','bg7','','','2023-03-05 05:02:45','2023-03-05 05:02:45','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg7.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (37,1,'2023-03-05 05:02:45','2023-03-05 05:02:45','','bg8','','inherit','open','closed','','bg8','','','2023-03-05 05:02:45','2023-03-05 05:02:45','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg8.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-03-05 05:02:46','2023-03-05 05:02:46','','bg11','','inherit','open','closed','','bg11','','','2023-03-05 05:02:46','2023-03-05 05:02:46','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg11.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-03-05 05:02:49','2023-03-05 05:02:49','','header','','inherit','open','closed','','header-2','','','2023-03-05 05:02:49','2023-03-05 05:02:49','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/header-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-03-05 05:03:19','2023-03-05 05:03:19','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[],\"shortCodeTransforms\":[],\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":25,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/header-1024x683.jpg\" alt=\"\" class=\"wp-image-25\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":32,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg1-1024x683.jpg\" alt=\"\" class=\"wp-image-32\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":33,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg3-1024x683.jpg\" alt=\"\" class=\"wp-image-33\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":34,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-1024x682.jpg\" alt=\"\" class=\"wp-image-34\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg5-1024x683.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":36,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg7-1024x683.jpg\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":37,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg8-1024x683.jpg\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":38,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg11-1024x522.jpg\" alt=\"\" class=\"wp-image-38\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":39,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/header-1-1024x683.jpg\" alt=\"\" class=\"wp-image-39\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-05 05:03:19','2023-03-05 05:03:19','',6,'http://grim-soluciones.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-03-05 05:49:41','2023-03-05 05:49:41','<img class=\"alignnone wp-image-34 size-large\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-1024x682.jpg\" alt=\"\" width=\"1024\" height=\"682\" />','Test 3','','publish','closed','closed','','41-2','','','2023-03-05 15:39:53','2023-03-05 15:39:53','',0,'http://grim-soluciones.local/?post_type=slider&#038;p=41',0,'slider','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2023-03-05 05:49:41','2023-03-05 05:49:41','<img class=\"alignnone size-medium wp-image-36\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg7-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-39\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/header-1-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-38\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg11-300x153.jpg\" alt=\"\" width=\"300\" height=\"153\" /> <img class=\"alignnone size-medium wp-image-37\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg8-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />','','','inherit','closed','closed','','41-revision-v1','','','2023-03-05 05:49:41','2023-03-05 05:49:41','',41,'http://grim-soluciones.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2023-03-05 05:50:04','2023-03-05 05:50:04','<img class=\"alignnone size-medium wp-image-34\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-33\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg3-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-32\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg1-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-25\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/header-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-35\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg5-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-36\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg7-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-37\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg8-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-38\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg11-300x153.jpg\" alt=\"\" width=\"300\" height=\"153\" /> <img class=\"alignnone size-medium wp-image-39\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/header-1-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /><img class=\"alignnone size-medium wp-image-36\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg7-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-39\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/header-1-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-38\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg11-300x153.jpg\" alt=\"\" width=\"300\" height=\"153\" /> <img class=\"alignnone size-medium wp-image-37\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg8-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />','','','inherit','closed','closed','','41-revision-v1','','','2023-03-05 05:50:04','2023-03-05 05:50:04','',41,'http://grim-soluciones.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2023-03-05 06:07:33','2023-03-05 06:07:33','<img class=\"alignnone size-medium wp-image-34\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />','','','inherit','closed','closed','','41-revision-v1','','','2023-03-05 06:07:33','2023-03-05 06:07:33','',41,'http://grim-soluciones.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-03-05 06:07:45','2023-03-05 06:07:45','<img class=\"alignnone wp-image-32 size-large\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg1-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />','Test2','','publish','closed','closed','','45-2','','','2023-03-08 19:57:32','2023-03-08 22:57:32','',0,'http://grim-soluciones.local/?post_type=slider&#038;p=45',0,'slider','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2023-03-05 06:07:45','2023-03-05 06:07:45','<img class=\"alignnone size-medium wp-image-37\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg8-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />','','','inherit','closed','closed','','45-revision-v1','','','2023-03-05 06:07:45','2023-03-05 06:07:45','',45,'http://grim-soluciones.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2023-03-05 15:25:28','2023-03-05 15:25:28','<img class=\"alignnone size-medium wp-image-37\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg8-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />','Test2','','inherit','closed','closed','','45-revision-v1','','','2023-03-05 15:25:28','2023-03-05 15:25:28','',45,'http://grim-soluciones.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2023-03-05 15:25:33','2023-03-05 15:25:33','<img class=\"alignnone size-medium wp-image-34\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />','Test 3','','inherit','closed','closed','','41-revision-v1','','','2023-03-05 15:25:33','2023-03-05 15:25:33','',41,'http://grim-soluciones.local/?p=51',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2023-03-05 15:35:26','2023-03-05 15:35:26','<img class=\"alignnone wp-image-34 size-large\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-1024x682.jpg\" alt=\"\" width=\"1024\" height=\"682\" />','Test 3','','inherit','closed','closed','','41-revision-v1','','','2023-03-05 15:35:26','2023-03-05 15:35:26','',41,'http://grim-soluciones.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-03-05 15:36:15','2023-03-05 15:36:15','<img class=\"alignnone wp-image-37 size-large\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg8-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />','Test2','','inherit','closed','closed','','45-revision-v1','','','2023-03-05 15:36:15','2023-03-05 15:36:15','',45,'http://grim-soluciones.local/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-03-05 19:10:11','2023-03-05 19:10:11','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Pagina de inicio','pagina-de-inicio','publish','closed','closed','','group_6404e784e1780','','','2023-04-02 17:08:53','2023-04-02 20:08:53','',0,'http://grim-soluciones.local/?post_type=acf-field-group&#038;p=54',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2023-03-05 19:10:11','2023-03-05 19:10:11','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Hero','hero','publish','closed','closed','','field_6404e7850f751','','','2023-03-05 19:18:09','2023-03-05 19:18:09','',54,'http://grim-soluciones.local/?post_type=acf-field&#038;p=55',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2023-03-05 19:10:45','2023-03-05 19:10:45','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-05 19:10:45','2023-03-05 19:10:45','',6,'http://grim-soluciones.local/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-03-05 19:18:09','2023-03-05 19:18:09','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Hero Imagen','hero_imagen','publish','closed','closed','','field_6404eabfc2e5a','','','2023-04-02 16:31:05','2023-04-02 19:31:05','',54,'http://grim-soluciones.local/?post_type=acf-field&#038;p=57',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2023-03-05 19:18:09','2023-03-05 19:18:09','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Encabezado Hero','encabezado_hero','publish','closed','closed','','field_6404ea4ac2e58','','','2023-03-05 19:18:09','2023-03-05 19:18:09','',54,'http://grim-soluciones.local/?post_type=acf-field&p=58',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2023-03-05 19:18:09','2023-03-05 19:18:09','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Texto Hero','texto_hero','publish','closed','closed','','field_6404ea4fc2e59','','','2023-03-05 19:18:09','2023-03-05 19:18:09','',54,'http://grim-soluciones.local/?post_type=acf-field&p=59',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-03-05 19:20:13','2023-03-05 19:20:13','','header','','inherit','open','closed','','header-3','','','2023-03-05 19:20:13','2023-03-05 19:20:13','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/header-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-03-05 19:20:37','2023-03-05 19:20:37','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-05 19:20:37','2023-03-05 19:20:37','',6,'http://grim-soluciones.local/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-03-07 19:58:03','2023-03-07 22:58:03','<div class=\"card-body\">\r\n<div class=\"input-group no-border\">\r\n  [text* your-name autocomplete:name class:form-control placeholder:\"Nombre y Apellido\"]\r\n</div>\r\n<div class=\"input-group no-border\">\r\n  [email* your-email autocomplete:email class:form-control placeholder:\"Email\"] \r\n</div>\r\n<div class=\"input-group no-border\">\r\n  [tel* tel-129 class:form-control placeholder:\"Teléfono\"]\r\n</div>\r\n\r\n  [textarea your-message class:area-contacto-form class:round placeholder:\"Contanos en que te podemos ayudar!\"] \r\n\r\n[submit class:btn class:btn-neutral class:btn-round class:btn-lg]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <grimsoluciones@gmail.com>\n[_site_admin_email]\nDe: [your-name] [your-email]\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@grim-soluciones.local>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nGracias por tu mensaje, ya ha sido enviado.\nHubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\nUno o más campos tienen un error. Por favor, revisá e intentalo de nuevo.\nHubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\nTenés que aceptar los términos y condiciones antes de enviar tu mensaje.\nPor favor, rellená este campo.\nEste campo tiene una entrada demasiado larga.\nEste campo tiene una entrada demasiado corta.\nHubo un error desconocido subiendo el archivo.\nNo tenés permisos para subir archivos de este tipo.\nEl archivo subido es demasiado grande.\nHubo un error al subir el archivo.\nPor favor, ingresá una fecha con el formato YYYY-MM-DD.\nEste campo tiene una fecha demasiado temprana.\nEste campo tiene una fecha demasiado tardía.\nIngresá un número.\nEsta campo tiene un número demasiado pequeño.\nEste campo tiene un número demasiado grande.\nLa respuesta al cuestionario no es correcta.\nIngresá una dirección de correo electrónico.\nIngresá una URL.\nPor favor, ingresá un número de teléfono.','Formulario de contacto','','publish','closed','closed','','formulario-de-contacto-1','','','2023-03-26 01:55:53','2023-03-26 04:55:53','',0,'http://grim-soluciones.local/?post_type=wpcf7_contact_form&#038;p=62',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-03-07 20:00:55','2023-03-07 23:00:55','<!-- wp:shortcode -->\n[contact-form-7 id=\"62\" title=\"Formulario de contacto 1\"]\n<!-- /wp:shortcode -->','Contacto','','inherit','closed','closed','','8-revision-v1','','','2023-03-07 20:00:55','2023-03-07 23:00:55','',8,'http://grim-soluciones.local/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-03-07 20:03:28','2023-03-07 23:03:28','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Dejanos tus datos y te llamamos para charlar sobre tu proyecto</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Completá el formulario y nos comunicamos con vos hoy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"62\" title=\"Formulario de contacto 1\"]\n<!-- /wp:shortcode -->','Contacto','','inherit','closed','closed','','8-revision-v1','','','2023-03-07 20:03:28','2023-03-07 23:03:28','',8,'http://grim-soluciones.local/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-03-08 19:42:25','2023-03-08 22:42:25','<img class=\"alignnone wp-image-34 size-large\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-1024x682.jpg\" alt=\"\" width=\"1024\" height=\"682\" />','Test2','','inherit','closed','closed','','45-revision-v1','','','2023-03-08 19:42:25','2023-03-08 22:42:25','',45,'http://grim-soluciones.local/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-03-08 19:45:59','2023-03-08 22:45:59','<img class=\"alignnone wp-image-34\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-1024x682.jpg\" alt=\"\" width=\"1440\" height=\"960\" />','Test2','','inherit','closed','closed','','45-revision-v1','','','2023-03-08 19:45:59','2023-03-08 22:45:59','',45,'http://grim-soluciones.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-03-08 19:57:32','2023-03-08 22:57:32','<img class=\"alignnone wp-image-32 size-large\" src=\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg1-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />','Test2','','inherit','closed','closed','','45-revision-v1','','','2023-03-08 19:57:32','2023-03-08 22:57:32','',45,'http://grim-soluciones.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-03-26 02:48:12','2023-03-10 23:50:10',' ','','','publish','closed','closed','','69','','','2023-03-26 02:48:12','2023-03-26 05:48:12','',0,'http://grim-soluciones.local/?p=69',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-03-10 20:50:40','2023-03-10 23:50:40','<!-- wp:paragraph -->\n<p>Trabajos Realizados</p>\n<!-- /wp:paragraph -->','Servicios','','inherit','closed','closed','','18-revision-v1','','','2023-03-10 20:50:40','2023-03-10 23:50:40','',18,'http://grim-soluciones.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2023-03-10 20:57:56','2023-03-10 23:57:56','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-10 20:57:56','2023-03-10 23:57:56','',6,'http://grim-soluciones.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2023-03-10 21:08:56','2023-03-11 00:08:56','','stock-photo-marketing-team-meeting-brainstorming-research-concept-390454498','','inherit','open','closed','','stock-photo-marketing-team-meeting-brainstorming-research-concept-390454498','','','2023-03-10 21:08:56','2023-03-11 00:08:56','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/stock-photo-marketing-team-meeting-brainstorming-research-concept-390454498.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-03-10 21:08:56','2023-03-11 00:08:56','','stock-photo-group-of-business-people-make-team-meeting-at-business-meeting-in-office-1926821048','','inherit','open','closed','','stock-photo-group-of-business-people-make-team-meeting-at-business-meeting-in-office-1926821048','','','2023-03-10 21:08:56','2023-03-11 00:08:56','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/stock-photo-group-of-business-people-make-team-meeting-at-business-meeting-in-office-1926821048.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (74,1,'2023-03-10 21:08:57','2023-03-11 00:08:57','','stock-photo-motivated-multinational-team-raise-high-fives-on-briefing-after-finding-problem-solution-as-1918278398','','inherit','open','closed','','stock-photo-motivated-multinational-team-raise-high-fives-on-briefing-after-finding-problem-solution-as-1918278398','','','2023-03-10 21:08:57','2023-03-11 00:08:57','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/stock-photo-motivated-multinational-team-raise-high-fives-on-briefing-after-finding-problem-solution-as-1918278398.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2023-03-10 21:09:04','2023-03-11 00:09:04','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-10 21:09:04','2023-03-11 00:09:04','',6,'http://grim-soluciones.local/?p=75',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2023-03-10 21:09:25','2023-03-11 00:09:25','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-10 21:09:25','2023-03-11 00:09:25','',6,'http://grim-soluciones.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2023-03-10 21:09:43','2023-03-11 00:09:43','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-10 21:09:43','2023-03-11 00:09:43','',6,'http://grim-soluciones.local/?p=77',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-03-10 21:11:28','2023-03-11 00:11:28','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-10 21:11:28','2023-03-11 00:11:28','',6,'http://grim-soluciones.local/?p=78',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2023-03-10 21:22:20','2023-03-11 00:22:20','','Agencia-Digital-Portada','','inherit','open','closed','','agencia-digital-portada','','','2023-03-10 21:22:20','2023-03-11 00:22:20','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/Agencia-Digital-Portada.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-03-10 21:22:25','2023-03-11 00:22:25','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-10 21:22:25','2023-03-11 00:22:25','',6,'http://grim-soluciones.local/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-03-10 21:25:16','2023-03-11 00:25:16','','Agencia-Digital-Portada','','inherit','open','closed','','agencia-digital-portada-2','','','2023-03-10 21:25:16','2023-03-11 00:25:16','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/Agencia-Digital-Portada-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,1,'2023-03-10 21:25:20','2023-03-11 00:25:20','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-10 21:25:20','2023-03-11 00:25:20','',6,'http://grim-soluciones.local/?p=82',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2023-03-10 21:27:02','2023-03-11 00:27:02','','Agencia-Digital-Portada','','inherit','open','closed','','agencia-digital-portada-3','','','2023-03-10 21:27:02','2023-03-11 00:27:02','',6,'http://grim-soluciones.local/wp-content/uploads/2023/03/Agencia-Digital-Portada-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (84,1,'2023-03-10 21:27:07','2023-03-11 00:27:07','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-10 21:27:07','2023-03-11 00:27:07','',6,'http://grim-soluciones.local/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2023-03-10 21:29:14','2023-03-11 00:29:14','<!-- wp:paragraph -->\n<p>Página de inicio</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2023-03-10 21:29:14','2023-03-11 00:29:14','',6,'http://grim-soluciones.local/?p=85',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2023-03-24 10:38:57','2023-03-24 13:38:57','<div class=\"card-header text-center\">\r\n    <h3 class=\"card-title title-up\">Te podemos ayudar</h3>\r\n     <p>Dejanos tus datos y te contactamos en el día para hablar sobre tu proyecto.</p>\r\n </div>\r\n<div class=\"card-body\">\r\n<div class=\"input-group no-border\">\r\n  [text* your-name autocomplete:name class:form-control placeholder:\"Nombre y Apellido\"]\r\n</div>\r\n<div class=\"input-group no-border\">\r\n  [email* your-email autocomplete:email class:form-control placeholder:\"Email\"] \r\n</div>\r\n<div class=\"input-group no-border\">\r\n  [tel* tel-129 class:form-control placeholder:\"Teléfono\"]\r\n</div>\r\n\r\n  [textarea your-message class:area-contacto-form class:round placeholder:\"Contanos en que te podemos ayudar!\"] \r\n\r\n[submit class:btn class:btn-neutral class:btn-round class:btn-lg]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@grim-soluciones.local>\n[_site_admin_email]\nDe: [your-name] [your-email]\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@grim-soluciones.local>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nGracias por tu mensaje, ya ha sido enviado.\nHubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\nUno o más campos tienen un error. Por favor, revisá e intentalo de nuevo.\nHubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\nTenés que aceptar los términos y condiciones antes de enviar tu mensaje.\nPor favor, rellená este campo.\nEste campo tiene una entrada demasiado larga.\nEste campo tiene una entrada demasiado corta.\nHubo un error desconocido subiendo el archivo.\nNo tenés permisos para subir archivos de este tipo.\nEl archivo subido es demasiado grande.\nHubo un error al subir el archivo.\nPor favor, ingresá una fecha con el formato YYYY-MM-DD.\nEste campo tiene una fecha demasiado temprana.\nEste campo tiene una fecha demasiado tardía.\nIngresá un número.\nEsta campo tiene un número demasiado pequeño.\nEste campo tiene un número demasiado grande.\nLa respuesta al cuestionario no es correcta.\nIngresá una dirección de correo electrónico.\nIngresá una URL.\nPor favor, ingresá un número de teléfono.','Formulario Home','','publish','closed','closed','','formulario-home','','','2023-03-26 02:17:08','2023-03-26 05:17:08','',0,'http://grim-soluciones.local/?post_type=wpcf7_contact_form&#038;p=88',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2023-03-26 01:29:36','2023-03-26 04:29:36','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Dejanos tus datos y te llamamos para charlar sobre tu proyecto</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Completá el formulario y nos comunicamos con vos hoy.</p>\n<!-- /wp:paragraph -->','Contacto','','inherit','closed','closed','','8-revision-v1','','','2023-03-26 01:29:36','2023-03-26 04:29:36','',8,'http://grim-soluciones.local/?p=89',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2023-04-02 15:27:19','2023-04-02 18:27:19','','Motivated,Multinational,Team,Raise,High,Fives,On,Briefing,After,Finding','Motivated multinational team raise high fives on briefing after finding problem solution as successful brainstorm result. Happy workers unite hands above conference desk celebrate common achievement','inherit','open','closed','','motivatedmultinationalteamraisehighfivesonbriefingafterfinding','','','2023-04-02 15:27:19','2023-04-02 18:27:19','',8,'http://grim-soluciones.local/wp-content/uploads/2023/04/imagen-contacto.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2023-04-02 15:29:14','2023-04-02 18:29:14','','Motivated,Multinational,Team,Raise,High,Fives,On,Briefing,After,Finding','Motivated multinational team raise high fives on briefing after finding problem solution as successful brainstorm result. Happy workers unite hands above conference desk celebrate common achievement','inherit','open','closed','','motivatedmultinationalteamraisehighfivesonbriefingafterfinding-2','','','2023-04-02 15:29:14','2023-04-02 18:29:14','',8,'http://grim-soluciones.local/wp-content/uploads/2023/04/imagen-contacto1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (93,1,'2023-04-02 15:30:01','2023-04-02 18:30:01','','Motivated,Multinational,Team,Raise,High,Fives,On,Briefing,After,Finding','Motivated multinational team raise high fives on briefing after finding problem solution as successful brainstorm result. Happy workers unite hands above conference desk celebrate common achievement','inherit','open','closed','','motivatedmultinationalteamraisehighfivesonbriefingafterfinding-3','','','2023-04-02 15:30:01','2023-04-02 18:30:01','',8,'http://grim-soluciones.local/wp-content/uploads/2023/04/imagen-contacto1-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (94,1,'2023-04-02 15:32:02','2023-04-02 18:32:02','','Panoramic,Teamwork,Business,Join,Hand,Together,Concept,,Business,Team,Standing','Panoramic teamwork business join hand together concept, Business team standing hands together, Volunteer charity work. People joining for cooperation success business.','inherit','open','closed','','panoramicteamworkbusinessjoinhandtogetherconceptbusinessteamstanding','','','2023-04-02 15:32:02','2023-04-02 18:32:02','',18,'http://grim-soluciones.local/wp-content/uploads/2023/04/shutterstock_1556343866.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (95,1,'2023-04-02 15:33:19','2023-04-02 18:33:19','','Panoramic,Teamwork,Business,Join,Hand,Together,Concept,,Business,Team,Standing','Panoramic teamwork business join hand together concept, Business team standing hands together, Volunteer charity work. People joining for cooperation success business.','inherit','open','closed','','panoramicteamworkbusinessjoinhandtogetherconceptbusinessteamstanding-2','','','2023-04-02 15:33:19','2023-04-02 18:33:19','',18,'http://grim-soluciones.local/wp-content/uploads/2023/04/shutterstock_1556343866-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (96,1,'2023-04-02 15:33:48','2023-04-02 18:33:48','','Panoramic,Teamwork,Business,Join,Hand,Together,Concept,,Business,Team,Standing','Panoramic teamwork business join hand together concept, Business team standing hands together, Volunteer charity work. People joining for cooperation success business.','inherit','open','closed','','panoramicteamworkbusinessjoinhandtogetherconceptbusinessteamstanding-3','','','2023-04-02 15:33:48','2023-04-02 18:33:48','',18,'http://grim-soluciones.local/wp-content/uploads/2023/04/shutterstock_1556343866-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (98,1,'2023-04-02 15:34:27','2023-04-02 18:34:27','','Panoramic,Teamwork,Business,Join,Hand,Together,Concept,,Business,Team,Standing','Panoramic teamwork business join hand together concept, Business team standing hands together, Volunteer charity work. People joining for cooperation success business.','inherit','open','closed','','panoramicteamworkbusinessjoinhandtogetherconceptbusinessteamstanding-4','','','2023-04-02 15:34:27','2023-04-02 18:34:27','',18,'http://grim-soluciones.local/wp-content/uploads/2023/04/shutterstock_1556343866-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (101,1,'2023-04-02 16:20:51','2023-04-02 19:20:51','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"18\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Service','service','publish','closed','closed','','group_6429d592f2ec3','','','2023-04-02 17:07:06','2023-04-02 20:07:06','',0,'http://grim-soluciones.local/?p=101',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2023-04-02 16:20:51','2023-04-02 19:20:51','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Hero','','publish','closed','closed','','field_6429d5930f885','','','2023-04-02 16:20:51','2023-04-02 19:20:51','',101,'http://grim-soluciones.local/?post_type=acf-field&p=102',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2023-04-02 16:20:51','2023-04-02 19:20:51','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Hero Imagen','hero_imagen','publish','closed','closed','','field_6429d5931331c','','','2023-04-02 17:07:06','2023-04-02 20:07:06','',101,'http://grim-soluciones.local/?post_type=acf-field&#038;p=103',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2023-04-02 16:20:51','2023-04-02 19:20:51','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Encabezado Hero','encabezado_hero','publish','closed','closed','','field_6429d59316d8f','','','2023-04-02 16:20:51','2023-04-02 19:20:51','',101,'http://grim-soluciones.local/?post_type=acf-field&p=104',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2023-04-02 16:20:51','2023-04-02 19:20:51','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Texto Hero','texto_hero','publish','closed','closed','','field_6429d5931a7f7','','','2023-04-02 16:20:51','2023-04-02 19:20:51','',101,'http://grim-soluciones.local/?post_type=acf-field&p=105',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2023-04-02 16:22:57','2023-04-02 19:22:57','<!-- wp:paragraph -->\n<p>Trabajos Realizados</p>\n<!-- /wp:paragraph -->','Servicios','','inherit','closed','closed','','18-revision-v1','','','2023-04-02 16:22:57','2023-04-02 19:22:57','',18,'http://grim-soluciones.local/?p=106',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2023-04-02 16:55:48','2023-04-02 19:55:48','<!-- wp:paragraph -->\n<p>Trabajos Realizados</p>\n<!-- /wp:paragraph -->','Servicios','','inherit','closed','closed','','18-revision-v1','','','2023-04-02 16:55:48','2023-04-02 19:55:48','',18,'http://grim-soluciones.local/?p=107',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2023-04-02 16:55:55','2023-04-02 19:55:55','<!-- wp:paragraph -->\n<p>Trabajos Realizados</p>\n<!-- /wp:paragraph -->','Servicios','','inherit','closed','closed','','18-revision-v1','','','2023-04-02 16:55:55','2023-04-02 19:55:55','',18,'http://grim-soluciones.local/?p=108',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2023-04-02 19:05:38','2023-04-02 22:05:38','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Dejanos tus datos y te llamamos para charlar sobre tu proyecto</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Completá el formulario y nos comunicamos con vos hoy.</p>\n<!-- /wp:paragraph -->','Contacto','','inherit','closed','closed','','8-revision-v1','','','2023-04-02 19:05:38','2023-04-02 22:05:38','',8,'http://grim-soluciones.local/?p=109',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2023-04-22 19:47:40','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2023-04-22 19:47:40','0000-00-00 00:00:00','',0,'http://grim-soluciones.local/?p=110',0,'post','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2023-04-22 19:48:24','2023-04-22 22:48:24','<!-- wp:paragraph -->\n<p>Trabajos Realizados</p>\n<!-- /wp:paragraph -->','Precios','','inherit','closed','closed','','18-revision-v1','','','2023-04-22 19:48:24','2023-04-22 22:48:24','',18,'http://grim-soluciones.local/?p=111',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (14,2,0);
INSERT INTO `wp_term_relationships` VALUES (16,2,0);
INSERT INTO `wp_term_relationships` VALUES (69,2,0);
INSERT INTO `wp_term_relationships` VALUES (101,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu Principal','menu-principal',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','grimsoluciones');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"13cd98f02b331f4ed996ebfabf6a8caa65098846632ebef5ed17c5840a0ab5dd\";a:4:{s:10:\"expiration\";i:1682376459;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36\";s:5:\"login\";i:1682203659;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','110');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:14:\"featured-image\";i:1;s:11:\"post-status\";i:2;s:24:\"yoast-seo/document-panel\";}}s:9:\"_modified\";s:24:\"2023-04-22T22:48:14.661Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse&mfold=o');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1680457945');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'meta-box-order_page','a:4:{s:6:\"normal\";s:23:\"acf-group_6404e784e1780\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'_yoast_wpseo_profile_updated','1680729990');
INSERT INTO `wp_usermeta` VALUES (28,1,'wpseo_title','');
INSERT INTO `wp_usermeta` VALUES (29,1,'wpseo_metadesc','');
INSERT INTO `wp_usermeta` VALUES (30,1,'wpseo_noindex_author','');
INSERT INTO `wp_usermeta` VALUES (31,1,'wpseo_content_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (32,1,'wpseo_keyword_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (33,1,'wpseo_inclusive_language_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (34,1,'facebook','');
INSERT INTO `wp_usermeta` VALUES (35,1,'instagram','');
INSERT INTO `wp_usermeta` VALUES (36,1,'linkedin','');
INSERT INTO `wp_usermeta` VALUES (37,1,'myspace','');
INSERT INTO `wp_usermeta` VALUES (38,1,'pinterest','');
INSERT INTO `wp_usermeta` VALUES (39,1,'soundcloud','');
INSERT INTO `wp_usermeta` VALUES (40,1,'tumblr','');
INSERT INTO `wp_usermeta` VALUES (41,1,'twitter','');
INSERT INTO `wp_usermeta` VALUES (42,1,'youtube','');
INSERT INTO `wp_usermeta` VALUES (43,1,'wikipedia','');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'grimsoluciones','$P$BPgQUU.zYzx6Oc09kVDUxMHKmtfugp1','grimsoluciones','grimsoluciones@gmail.com','http://grim-soluciones.local','2023-03-04 00:26:13','',0,'grimsoluciones');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,'http://grim-soluciones.local/author/grimsoluciones/','51:6626823d3d2bdf72a42cfa81b83c0f87',1,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://1.gravatar.com/avatar/4ecc53c28c246392c467b548c2dab3f3?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://1.gravatar.com/avatar/4ecc53c28c246392c467b548c2dab3f3?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2023-04-05 21:20:46','2023-04-23 01:48:24',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-04-22 22:48:24','2023-03-04 00:26:13');
INSERT INTO `wp_yoast_indexable` VALUES (2,'http://grim-soluciones.local/','29:14ea58b2febcf4f17755dbc6ac1b8cfd',6,'post','page',1,0,NULL,NULL,'Inicio','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,'http://grim-soluciones.local/wp-content/uploads/2023/03/Agencia-Digital-Portada-2.jpg',NULL,'83','featured-image',NULL,NULL,'http://grim-soluciones.local/wp-content/uploads/2023/03/Agencia-Digital-Portada-2.jpg','83','featured-image','{\"width\":1000,\"height\":517,\"filesize\":234176,\"url\":\"http://grim-soluciones.local/wp-content/uploads/2023/03/Agencia-Digital-Portada-2.jpg\",\"path\":\"C:\\\\Users\\\\Fede\\\\Local Sites\\\\grim-soluciones\\\\app\\\\public/wp-content/uploads/2023/03/Agencia-Digital-Portada-2.jpg\",\"size\":\"full\",\"id\":83,\"alt\":\"\",\"pixels\":517000,\"type\":\"image/jpeg\"}',0,NULL,NULL,'2023-04-05 21:25:23','2023-04-06 00:25:23',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-04-02 19:40:39','2023-03-04 01:47:03');
INSERT INTO `wp_yoast_indexable` VALUES (3,'http://grim-soluciones.local/contacto/','38:0c10907bf97d735cfae545f3b8b58a5d',8,'post','page',1,0,NULL,NULL,'Contacto','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-04-05 21:25:23','2023-04-06 00:25:23',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-04-02 22:05:38','2023-03-04 01:47:24');
INSERT INTO `wp_yoast_indexable` VALUES (4,'http://grim-soluciones.local/nosotros/','38:a61dd46e2e28881563be9a5fc33bbae0',10,'post','page',1,0,NULL,NULL,'Nosotros','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,'http://grim-soluciones.local/wp-content/uploads/2023/03/header-scaled.jpg',NULL,'25','featured-image',NULL,NULL,'http://grim-soluciones.local/wp-content/uploads/2023/03/header-scaled.jpg','25','featured-image','{\"width\":2560,\"height\":1707,\"filesize\":463504,\"url\":\"http://grim-soluciones.local/wp-content/uploads/2023/03/header-scaled.jpg\",\"path\":\"C:\\\\Users\\\\Fede\\\\Local Sites\\\\grim-soluciones\\\\app\\\\public/wp-content/uploads/2023/03/header-scaled.jpg\",\"size\":\"full\",\"id\":25,\"alt\":\"\",\"pixels\":4369920,\"type\":\"image/jpeg\"}',0,NULL,NULL,'2023-04-05 21:25:23','2023-04-06 00:25:23',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-03-04 19:30:57','2023-03-04 01:47:46');
INSERT INTO `wp_yoast_indexable` VALUES (5,'http://grim-soluciones.local/blog/','34:fe33c11658d171c5c5db75e8ab10ad07',12,'post','page',1,0,NULL,NULL,'Blog','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-04-05 21:25:23','2023-04-06 00:25:23',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-03-04 01:53:41','2023-03-04 01:53:41');
INSERT INTO `wp_yoast_indexable` VALUES (6,'http://grim-soluciones.local/precios/','37:c14a6fbb0f3fe0436d2849b2cadc2456',18,'post','page',1,0,NULL,NULL,'Precios','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg11-scaled.jpg',NULL,'38','featured-image',NULL,NULL,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg11-scaled.jpg','38','featured-image','{\"width\":2560,\"height\":1306,\"filesize\":246030,\"url\":\"http://grim-soluciones.local/wp-content/uploads/2023/03/bg11-scaled.jpg\",\"path\":\"C:\\\\Users\\\\Fede\\\\Local Sites\\\\grim-soluciones\\\\app\\\\public/wp-content/uploads/2023/03/bg11-scaled.jpg\",\"size\":\"full\",\"id\":38,\"alt\":\"\",\"pixels\":3343360,\"type\":\"image/jpeg\"}',0,NULL,NULL,'2023-04-05 21:25:23','2023-04-23 01:48:24',1,NULL,NULL,NULL,NULL,0,1,2,'2023-04-22 22:48:24','2023-03-04 21:24:47');
INSERT INTO `wp_yoast_indexable` VALUES (7,'http://grim-soluciones.local/category/uncategorized/','52:d644488af883e7075cba22582e35d02d',1,'term','category',NULL,NULL,NULL,NULL,'Uncategorized',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-04-05 21:25:23','2023-04-06 00:25:23',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-04-02 20:07:06','2023-03-04 00:26:13');
INSERT INTO `wp_yoast_indexable` VALUES (8,'http://grim-soluciones.local/hello-world/','41:cff86f515577df89d1394ff4aa4f1f08',1,'post','post',1,0,NULL,NULL,'Hello world!','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-04-05 21:26:45','2023-04-06 00:26:45',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-03-04 00:26:13','2023-03-04 00:26:13');
INSERT INTO `wp_yoast_indexable` VALUES (9,'http://grim-soluciones.local/slider/41-2/','41:f1b1b9dc5b87352a1fe20e702a79743f',41,'post','slider',1,0,NULL,NULL,'Test 3','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-1024x682.jpg',NULL,NULL,'first-content-image',NULL,NULL,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-1024x682.jpg',NULL,'first-content-image',NULL,0,NULL,NULL,'2023-04-05 21:26:45','2023-04-06 00:26:45',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-03-05 15:39:53','2023-03-05 05:49:41');
INSERT INTO `wp_yoast_indexable` VALUES (10,'http://grim-soluciones.local/slider/45-2/','41:abe81ed49a71071b22b7802860e71919',45,'post','slider',1,0,NULL,NULL,'Test2','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg1-1024x683.jpg',NULL,NULL,'first-content-image',NULL,NULL,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg1-1024x683.jpg',NULL,'first-content-image',NULL,0,NULL,NULL,'2023-04-05 21:26:45','2023-04-06 00:26:45',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-03-08 22:57:32','2023-03-05 06:07:45');
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (1,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (2,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (3,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (5,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (6,0,0,1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840');
INSERT INTO `wp_yoast_migrations` VALUES (2,'20171228151841');
INSERT INTO `wp_yoast_migrations` VALUES (3,'20190529075038');
INSERT INTO `wp_yoast_migrations` VALUES (4,'20191011111109');
INSERT INTO `wp_yoast_migrations` VALUES (5,'20200408101900');
INSERT INTO `wp_yoast_migrations` VALUES (6,'20200420073606');
INSERT INTO `wp_yoast_migrations` VALUES (7,'20200428123747');
INSERT INTO `wp_yoast_migrations` VALUES (8,'20200428194858');
INSERT INTO `wp_yoast_migrations` VALUES (9,'20200429105310');
INSERT INTO `wp_yoast_migrations` VALUES (10,'20200430075614');
INSERT INTO `wp_yoast_migrations` VALUES (11,'20200430150130');
INSERT INTO `wp_yoast_migrations` VALUES (12,'20200507054848');
INSERT INTO `wp_yoast_migrations` VALUES (13,'20200513133401');
INSERT INTO `wp_yoast_migrations` VALUES (14,'20200609154515');
INSERT INTO `wp_yoast_migrations` VALUES (15,'20200616130143');
INSERT INTO `wp_yoast_migrations` VALUES (16,'20200617122511');
INSERT INTO `wp_yoast_migrations` VALUES (17,'20200702141921');
INSERT INTO `wp_yoast_migrations` VALUES (18,'20200728095334');
INSERT INTO `wp_yoast_migrations` VALUES (19,'20201202144329');
INSERT INTO `wp_yoast_migrations` VALUES (20,'20201216124002');
INSERT INTO `wp_yoast_migrations` VALUES (21,'20201216141134');
INSERT INTO `wp_yoast_migrations` VALUES (22,'20210817092415');
INSERT INTO `wp_yoast_migrations` VALUES (23,'20211020091404');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_links` VALUES (1,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg4-1024x682.jpg',41,34,'image-in',NULL,NULL,1333,2000,399175,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (2,'http://grim-soluciones.local/wp-content/uploads/2023/03/bg1-1024x683.jpg',45,32,'image-in',NULL,NULL,960,1440,479682,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-29 17:02:27
