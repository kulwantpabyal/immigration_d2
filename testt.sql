-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 08:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testt`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(788, 'action_scheduler/migration_hook', 'pending', '2022-05-25 09:41:54', '2022-05-25 09:41:54', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1653471714;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1653471714;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 788, 'action created', '2022-05-25 09:40:54', '2022-05-25 09:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
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
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-05-13 05:46:41', '2022-05-13 05:46:41', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 508, 'testt', 'klocrix.kulwant@gmail.com', 'http://test.in', '127.0.0.1', '2022-05-13 07:23:15', '2022-05-13 07:23:15', 'bvbvbvbvbvvbvbvbvb', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 0, 1),
(3, 508, 'testt', 'klocrix.kulwant@gmail.com', 'http://test.in', '127.0.0.1', '2022-05-13 07:23:38', '2022-05-13 07:23:38', 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 2, 1),
(4, 508, 'testt', 'klocrix.kulwant@gmail.com', 'http://test.in', '127.0.0.1', '2022-05-13 07:23:51', '2022-05-13 07:23:51', 'fgfgfg', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 2, 1),
(5, 508, 'testt', 'klocrix.kulwant@gmail.com', 'http://test.in', '127.0.0.1', '2022-05-13 07:24:22', '2022-05-13 07:24:22', 'helllo fggfggfg', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 4, 1),
(6, 511, 'testt', 'klocrix.kulwant@gmail.com', 'http://test.in', '127.0.0.1', '2022-05-13 07:25:05', '2022-05-13 07:25:05', 'beautiful', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_evf_entries`
--

CREATE TABLE `wp_evf_entries` (
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_device` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `referer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `starred` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_evf_entrymeta`
--

CREATE TABLE `wp_evf_entrymeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_evf_sessions`
--

CREATE TABLE `wp_evf_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
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
-- Table structure for table `wp_masteriyo_migrations`
--

CREATE TABLE `wp_masteriyo_migrations` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` bigint(20) UNSIGNED NOT NULL,
  `ran_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_masteriyo_migrations`
--

INSERT INTO `wp_masteriyo_migrations` (`id`, `name`, `batch`, `ran_at`) VALUES
(1, '2021_12_07_065920_create_user_items_table', 1, '2022-05-13 06:44:04'),
(2, '2021_12_07_070414_create_user_items_meta_table', 1, '2022-05-13 06:44:04'),
(3, '2021_12_07_070635_create_user_activities_meta_table', 1, '2022-05-13 06:44:04'),
(4, '2021_12_07_071027_create_user_activities_table', 1, '2022-05-13 06:44:04'),
(5, '2021_12_07_071335_create_session_table', 1, '2022-05-13 06:44:05'),
(6, '2021_12_07_072624_create_order_items_table', 1, '2022-05-13 06:44:05'),
(7, '2021_12_07_072744_create_order_items_meta_table', 1, '2022-05-13 06:44:05'),
(8, '2021_12_07_073134_create_quiz_attempts_table', 1, '2022-05-13 06:44:05'),
(9, '2022_02_01_043243_create_notifications_table', 1, '2022-05-13 06:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_masteriyo_notifications`
--

CREATE TABLE `wp_masteriyo_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT 0,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT '',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `level` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `action_ok` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `action_cancel` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `action_1` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `action_2` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `action_3` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_masteriyo_order_itemmeta`
--

CREATE TABLE `wp_masteriyo_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_masteriyo_order_items`
--

CREATE TABLE `wp_masteriyo_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_masteriyo_quiz_attempts`
--

CREATE TABLE `wp_masteriyo_quiz_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_questions` bigint(20) UNSIGNED NOT NULL,
  `total_answered_questions` bigint(20) UNSIGNED NOT NULL,
  `total_marks` decimal(9,2) DEFAULT NULL,
  `total_attempts` bigint(20) UNSIGNED NOT NULL,
  `total_correct_answers` bigint(20) UNSIGNED NOT NULL,
  `total_incorrect_answers` bigint(20) UNSIGNED NOT NULL,
  `earned_marks` decimal(9,2) DEFAULT NULL,
  `answers` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_started_at` datetime DEFAULT NULL,
  `attempt_ended_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_masteriyo_quiz_attempts`
--

INSERT INTO `wp_masteriyo_quiz_attempts` (`id`, `course_id`, `quiz_id`, `user_id`, `total_questions`, `total_answered_questions`, `total_marks`, `total_attempts`, `total_correct_answers`, `total_incorrect_answers`, `earned_marks`, `answers`, `attempt_status`, `attempt_started_at`, `attempt_ended_at`) VALUES
(1, 191, 623, '1', 1, 1, '100.00', 1, 1, 0, '1.00', 'a:1:{i:624;a:2:{s:8:\"answered\";a:1:{i:0;s:8:\"Business\";}s:7:\"correct\";b:1;}}', 'attempt_ended', '2022-05-13 06:57:53', '2022-05-13 06:58:13'),
(2, 191, 623, '1', 1, 1, '100.00', 2, 1, 0, '1.00', 'a:1:{i:624;a:2:{s:8:\"answered\";a:1:{i:0;s:8:\"Business\";}s:7:\"correct\";b:1;}}', 'attempt_ended', '2022-05-13 06:58:22', '2022-05-13 06:58:32'),
(3, 191, 623, '1', 1, 1, '100.00', 3, 1, 0, '1.00', 'a:1:{i:624;a:2:{s:8:\"answered\";a:1:{i:0;s:8:\"Business\";}s:7:\"correct\";b:1;}}', 'attempt_ended', '2022-05-13 07:03:44', '2022-05-13 07:03:50'),
(4, 191, 623, '1', 0, 0, NULL, 4, 0, 0, NULL, NULL, 'attempt_started', '2022-05-13 07:04:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_masteriyo_sessions`
--

CREATE TABLE `wp_masteriyo_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL,
  `user_agent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_masteriyo_sessions`
--

INSERT INTO `wp_masteriyo_sessions` (`session_id`, `session_key`, `session_data`, `session_expiry`, `user_agent`) VALUES
(3, '1', 'a:6:{s:4:\"cart\";a:1:{s:32:\"eecca5b6365d9607ee5a9d336962c534\";a:4:{s:3:\"key\";s:32:\"eecca5b6365d9607ee5a9d336962c534\";s:9:\"course_id\";i:185;s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";}}s:11:\"cart_totals\";N;s:21:\"removed_cart_contents\";N;s:22:\"order_awaiting_payment\";N;s:7:\"notices\";a:0:{}s:21:\"chosen_payment_method\";s:0:\"\";}', 1652597135, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `wp_masteriyo_user_activities`
--

CREATE TABLE `wp_masteriyo_user_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `activity_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT '0000-00-00 00:00:00',
  `modified_at` datetime DEFAULT '0000-00-00 00:00:00',
  `completed_at` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_masteriyo_user_activities`
--

INSERT INTO `wp_masteriyo_user_activities` (`id`, `user_id`, `item_id`, `activity_type`, `activity_status`, `parent_id`, `created_at`, `modified_at`, `completed_at`) VALUES
(1, '1', 191, 'course_progress', 'progress', 0, '2022-05-13 06:57:34', '2022-05-13 06:57:53', '0000-00-00 00:00:00'),
(2, '1', 623, 'quiz', 'started', 1, '2022-05-13 06:57:53', '2022-05-13 06:57:53', '0000-00-00 00:00:00'),
(3, '1', 609, 'lesson', 'completed', 1, '2022-05-13 07:03:05', '2022-05-13 07:03:05', '2022-05-13 07:03:05'),
(4, '1', 608, 'lesson', 'completed', 1, '2022-05-13 07:03:10', '2022-05-13 07:03:10', '2022-05-13 07:03:10'),
(5, '1', 607, 'lesson', 'completed', 1, '2022-05-13 07:03:14', '2022-05-13 07:03:14', '2022-05-13 07:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `wp_masteriyo_user_activitymeta`
--

CREATE TABLE `wp_masteriyo_user_activitymeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `user_activity_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_masteriyo_user_itemmeta`
--

CREATE TABLE `wp_masteriyo_user_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `user_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_masteriyo_user_itemmeta`
--

INSERT INTO `wp_masteriyo_user_itemmeta` (`meta_id`, `user_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_order_id', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_masteriyo_user_items`
--

CREATE TABLE `wp_masteriyo_user_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_start` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00',
  `date_end` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_masteriyo_user_items`
--

INSERT INTO `wp_masteriyo_user_items` (`id`, `user_id`, `item_id`, `item_type`, `status`, `parent_id`, `date_start`, `date_modified`, `date_end`) VALUES
(1, '1', 191, 'user_course', 'active', 0, '2022-05-13 06:57:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://test.in', 'yes'),
(2, 'home', 'http://test.in', 'yes'),
(3, 'blogname', 'D2 Immigration', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'klocrix.kulwant@gmail.com', 'yes'),
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
(18, 'default_category', '39', 'yes'),
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
(29, 'rewrite_rules', 'a:209:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"testimonials/([^/]+)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:33:\"testimonials/([^/]+)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:41:\"testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:48:\"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:37:\"testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:29:\"testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"countries/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"countries/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"countries/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"countries/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"countries/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"countries/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"countries/([^/]+)/embed/?$\";s:42:\"index.php?countries=$matches[1]&embed=true\";s:30:\"countries/([^/]+)/trackback/?$\";s:36:\"index.php?countries=$matches[1]&tb=1\";s:38:\"countries/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?countries=$matches[1]&paged=$matches[2]\";s:45:\"countries/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?countries=$matches[1]&cpage=$matches[2]\";s:34:\"countries/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?countries=$matches[1]&page=$matches[2]\";s:26:\"countries/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"countries/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"countries/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"countries/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"countries/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"countries/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:60:\"immigration_program/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?immigration_program=$matches[1]&feed=$matches[2]\";s:55:\"immigration_program/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?immigration_program=$matches[1]&feed=$matches[2]\";s:36:\"immigration_program/([^/]+)/embed/?$\";s:52:\"index.php?immigration_program=$matches[1]&embed=true\";s:48:\"immigration_program/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?immigration_program=$matches[1]&paged=$matches[2]\";s:30:\"immigration_program/([^/]+)/?$\";s:41:\"index.php?immigration_program=$matches[1]\";s:52:\"sponsorship/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?sponsorship=$matches[1]&feed=$matches[2]\";s:47:\"sponsorship/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?sponsorship=$matches[1]&feed=$matches[2]\";s:28:\"sponsorship/([^/]+)/embed/?$\";s:44:\"index.php?sponsorship=$matches[1]&embed=true\";s:40:\"sponsorship/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?sponsorship=$matches[1]&paged=$matches[2]\";s:22:\"sponsorship/([^/]+)/?$\";s:33:\"index.php?sponsorship=$matches[1]\";s:35:\"service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"service/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"service/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:28:\"service/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:36:\"service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:43:\"service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:32:\"service/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:24:\"service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"service/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"awards_and_licence/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"awards_and_licence/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"awards_and_licence/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"awards_and_licence/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"awards_and_licence/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"awards_and_licence/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"awards_and_licence/([^/]+)/embed/?$\";s:51:\"index.php?awards_and_licence=$matches[1]&embed=true\";s:39:\"awards_and_licence/([^/]+)/trackback/?$\";s:45:\"index.php?awards_and_licence=$matches[1]&tb=1\";s:47:\"awards_and_licence/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?awards_and_licence=$matches[1]&paged=$matches[2]\";s:54:\"awards_and_licence/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?awards_and_licence=$matches[1]&cpage=$matches[2]\";s:43:\"awards_and_licence/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?awards_and_licence=$matches[1]&page=$matches[2]\";s:35:\"awards_and_licence/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"awards_and_licence/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"awards_and_licence/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"awards_and_licence/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"awards_and_licence/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"awards_and_licence/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"about/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"about/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"about/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"about/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"about/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"about/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"about/([^/]+)/embed/?$\";s:38:\"index.php?about=$matches[1]&embed=true\";s:26:\"about/([^/]+)/trackback/?$\";s:32:\"index.php?about=$matches[1]&tb=1\";s:34:\"about/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?about=$matches[1]&paged=$matches[2]\";s:41:\"about/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?about=$matches[1]&cpage=$matches[2]\";s:30:\"about/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?about=$matches[1]&page=$matches[2]\";s:22:\"about/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"about/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"about/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"about/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"about/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"about/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=659&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:29:\"easy-wp-smtp/easy-wp-smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'immigration', 'yes'),
(41, 'stylesheet', 'immigration', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '0', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:17:\"swpsmtp_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '659', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1667972800', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:178:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"manage_everest_forms\";b:1;s:26:\"everest_forms_create_forms\";b:1;s:24:\"everest_forms_view_forms\";b:1;s:31:\"everest_forms_view_others_forms\";b:1;s:24:\"everest_forms_edit_forms\";b:1;s:31:\"everest_forms_edit_others_forms\";b:1;s:26:\"everest_forms_delete_forms\";b:1;s:33:\"everest_forms_delete_others_forms\";b:1;s:26:\"everest_forms_view_entries\";b:1;s:33:\"everest_forms_view_others_entries\";b:1;s:26:\"everest_forms_edit_entries\";b:1;s:33:\"everest_forms_edit_others_entries\";b:1;s:28:\"everest_forms_delete_entries\";b:1;s:35:\"everest_forms_delete_others_entries\";b:1;s:25:\"manage_masteriyo_settings\";b:1;s:19:\"edit_others_courses\";b:1;s:21:\"delete_others_courses\";b:1;s:20:\"edit_others_sections\";b:1;s:22:\"delete_others_sections\";b:1;s:19:\"edit_others_lessons\";b:1;s:21:\"delete_others_lessons\";b:1;s:19:\"edit_others_quizzes\";b:1;s:21:\"delete_others_quizzes\";b:1;s:21:\"edit_others_questions\";b:1;s:23:\"delete_others_questions\";b:1;s:14:\"publish_orders\";b:1;s:11:\"edit_orders\";b:1;s:19:\"edit_private_orders\";b:1;s:21:\"edit_published_orders\";b:1;s:13:\"delete_orders\";b:1;s:23:\"delete_published_orders\";b:1;s:21:\"delete_private_orders\";b:1;s:18:\"edit_others_orders\";b:1;s:20:\"delete_others_orders\";b:1;s:26:\"edit_others_course_reviews\";b:1;s:28:\"delete_others_course_reviews\";b:1;s:22:\"edit_others_course_qas\";b:1;s:24:\"delete_others_course_qas\";b:1;s:29:\"edit_others_course_progresses\";b:1;s:31:\"delete_others_course_progresses\";b:1;s:24:\"delete_course_progresses\";b:1;s:24:\"delete_course_categories\";b:1;s:24:\"assign_course_categories\";b:1;s:20:\"publish_user_courses\";b:1;s:17:\"edit_user_courses\";b:1;s:24:\"edit_others_user_courses\";b:1;s:19:\"delete_user_courses\";b:1;s:26:\"delete_others_user_courses\";b:1;s:26:\"delete_course_difficulties\";b:1;s:26:\"assign_course_difficulties\";b:1;s:15:\"publish_courses\";b:1;s:12:\"edit_courses\";b:1;s:20:\"edit_private_courses\";b:1;s:22:\"edit_published_courses\";b:1;s:14:\"delete_courses\";b:1;s:24:\"delete_published_courses\";b:1;s:22:\"delete_private_courses\";b:1;s:16:\"publish_sections\";b:1;s:13:\"edit_sections\";b:1;s:21:\"edit_private_sections\";b:1;s:23:\"edit_published_sections\";b:1;s:15:\"delete_sections\";b:1;s:25:\"delete_published_sections\";b:1;s:23:\"delete_private_sections\";b:1;s:15:\"publish_lessons\";b:1;s:12:\"edit_lessons\";b:1;s:20:\"edit_private_lessons\";b:1;s:22:\"edit_published_lessons\";b:1;s:14:\"delete_lessons\";b:1;s:24:\"delete_published_lessons\";b:1;s:22:\"delete_private_lessons\";b:1;s:15:\"publish_quizzes\";b:1;s:12:\"edit_quizzes\";b:1;s:20:\"edit_private_quizzes\";b:1;s:22:\"edit_published_quizzes\";b:1;s:14:\"delete_quizzes\";b:1;s:24:\"delete_published_quizzes\";b:1;s:22:\"delete_private_quizzes\";b:1;s:17:\"publish_questions\";b:1;s:14:\"edit_questions\";b:1;s:22:\"edit_private_questions\";b:1;s:24:\"edit_published_questions\";b:1;s:16:\"delete_questions\";b:1;s:26:\"delete_published_questions\";b:1;s:24:\"delete_private_questions\";b:1;s:22:\"publish_course_reviews\";b:1;s:19:\"edit_course_reviews\";b:1;s:27:\"edit_private_course_reviews\";b:1;s:29:\"edit_published_course_reviews\";b:1;s:21:\"delete_course_reviews\";b:1;s:31:\"delete_published_course_reviews\";b:1;s:29:\"delete_private_course_reviews\";b:1;s:12:\"manage_terms\";b:1;s:26:\"manage_course_difficulties\";b:1;s:24:\"manage_course_categories\";b:1;s:22:\"edit_course_categories\";b:1;s:12:\"read_courses\";b:1;s:13:\"read_sections\";b:1;s:12:\"read_lessons\";b:1;s:12:\"read_quizzes\";b:1;s:14:\"read_questions\";b:1;s:9:\"read_faqs\";b:1;s:11:\"read_orders\";b:1;s:10:\"read_users\";b:1;s:19:\"read_course_reviews\";b:1;s:17:\"read_user_courses\";b:1;s:22:\"read_course_progresses\";b:1;s:25:\"publish_course_progresses\";b:1;s:22:\"edit_course_progresses\";b:1;s:15:\"read_course_qas\";b:1;s:17:\"create_course_qas\";b:1;s:15:\"edit_course_qas\";b:1;s:17:\"delete_course_qas\";b:1;s:25:\"strong_testimonials_views\";b:1;s:26:\"strong_testimonials_fields\";b:1;s:27:\"strong_testimonials_options\";b:1;s:25:\"strong_testimonials_about\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:25:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:268:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2>Categories</h2>\n<!-- /wp:heading -->\n\n<!-- wp:categories /-->\n\n<!-- wp:categories /-->\n\n<!-- wp:categories /-->\n\n<!-- wp:heading -->\n<h2>Categories</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->\";}i:8;a:1:{s:7:\"content\";s:58:\"<!-- wp:list -->\n<ul><li>About</li></ul>\n<!-- /wp:list -->\";}i:9;a:1:{s:7:\"content\";s:57:\"<!-- wp:list -->\n<ul><li>Home</li></ul>\n<!-- /wp:list -->\";}i:10;a:1:{s:7:\"content\";s:61:\"<!-- wp:list -->\n<ul><li>Services</li></ul>\n<!-- /wp:list -->\";}i:12;a:1:{s:7:\"content\";s:23:\"<!-- wp:categories /-->\";}i:13;a:1:{s:7:\"content\";s:60:\"<!-- wp:heading -->\n<h2>Newsletter</h2>\n<!-- /wp:heading -->\";}i:14;a:1:{s:7:\"content\";s:378:\"<!-- wp:social-links {\"className\":\"is-style-logos-only\"} -->\n<ul class=\"wp-block-social-links is-style-logos-only\"><!-- wp:social-link {\"url\":\"https://facebook.com\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://instagram.com\",\"service\":\"instagram\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://twitter.com\",\"service\":\"twitter\"} /--></ul>\n<!-- /wp:social-links -->\";}i:17;a:1:{s:7:\"content\";s:62:\"<!-- wp:heading -->\n<h2>Get In Touch</h2>\n<!-- /wp:heading -->\";}i:20;a:1:{s:7:\"content\";s:637:\"<!-- wp:widget-group {\"title\":\"\"} -->\n<h2 class=\"widget-title\"></h2><!-- wp:social-links {\"openInNewTab\":true,\"size\":\"has-normal-icon-size\",\"className\":\"is-style-logos-only\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\",\"orientation\":\"horizontal\",\"flexWrap\":\"wrap\"}} -->\n<ul class=\"wp-block-social-links has-normal-icon-size is-style-logos-only\"><!-- wp:social-link {\"url\":\"https://facebook.com\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://twitter.com\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://instagram.com\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links -->\n<!-- /wp:widget-group -->\";}i:22;a:1:{s:7:\"content\";s:181:\"<!-- wp:group {\"layout\":{\"type\":\"flex\",\"allowOrientation\":false}} -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2>dsfdsfds</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->\";}i:23;a:1:{s:7:\"content\";s:166:\"<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"https://facebook.com\",\"service\":\"facebook\"} /--></ul>\n<!-- /wp:social-links -->\";}i:24;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:25;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:26;a:1:{s:7:\"content\";s:575:\"<!-- wp:blockart/image {\"clientId\":\"a459fb66\",\"image\":{\"type\":\"local\",\"local\":\"https://sichu-blockart-eduskill.sites.qsandbox.com/wp-content/uploads/2022/01/logo.png\"},\"blockMargin\":{\"dimension\":1,\"desktop\":{\"lock\":true,\"top\":0,\"right\":0,\"bottom\":0,\"left\":0,\"unit\":\"px\"}},\"blockPadding\":{\"dimension\":1,\"desktop\":{\"lock\":true,\"top\":0,\"right\":0,\"bottom\":0,\"left\":0,\"unit\":\"px\"}}} -->\n<div class=\"blockart-image blockart-image-a459fb66 \"><img src=\"https://sichu-blockart-eduskill.sites.qsandbox.com/wp-content/uploads/2022/01/logo.png\" alt=\"\"/></div>\n<!-- /wp:blockart/image -->\";}i:27;a:1:{s:7:\"content\";s:540:\"<!-- wp:blockart/paragraph {\"clientId\":\"1845192c\",\"text\":\"Massa sed elementum tempusas sed sed risus at ultrices mius imperdietns atrices mi.risus at tric.Massa sedtum tempusas sed ultric.\",\"typography\":{\"typography\":1,\"weight\":400,\"family\":\"Lato\",\"size\":{\"desktop\":{\"value\":16,\"unit\":\"px\"}}},\"color\":\"#ffffff\"} -->\n<p class=\"blockart-paragraph blockart-paragraph-1845192c\">Massa sed elementum tempusas sed sed risus at ultrices mius imperdietns atrices mi.risus at tric.Massa sedtum tempusas sed ultric.</p>\n<!-- /wp:blockart/paragraph -->\";}i:28;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:29;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:30;a:1:{s:7:\"content\";s:575:\"<!-- wp:blockart/image {\"clientId\":\"a459fb66\",\"image\":{\"type\":\"local\",\"local\":\"https://sichu-blockart-eduskill.sites.qsandbox.com/wp-content/uploads/2022/01/logo.png\"},\"blockMargin\":{\"dimension\":1,\"desktop\":{\"lock\":true,\"top\":0,\"right\":0,\"bottom\":0,\"left\":0,\"unit\":\"px\"}},\"blockPadding\":{\"dimension\":1,\"desktop\":{\"lock\":true,\"top\":0,\"right\":0,\"bottom\":0,\"left\":0,\"unit\":\"px\"}}} -->\n<div class=\"blockart-image blockart-image-a459fb66 \"><img src=\"https://sichu-blockart-eduskill.sites.qsandbox.com/wp-content/uploads/2022/01/logo.png\" alt=\"\"/></div>\n<!-- /wp:blockart/image -->\";}i:31;a:1:{s:7:\"content\";s:540:\"<!-- wp:blockart/paragraph {\"clientId\":\"1845192c\",\"text\":\"Massa sed elementum tempusas sed sed risus at ultrices mius imperdietns atrices mi.risus at tric.Massa sedtum tempusas sed ultric.\",\"typography\":{\"typography\":1,\"weight\":400,\"family\":\"Lato\",\"size\":{\"desktop\":{\"value\":16,\"unit\":\"px\"}}},\"color\":\"#ffffff\"} -->\n<p class=\"blockart-paragraph blockart-paragraph-1845192c\">Massa sed elementum tempusas sed sed risus at ultrices mius imperdietns atrices mi.risus at tric.Massa sedtum tempusas sed ultric.</p>\n<!-- /wp:blockart/paragraph -->\";}i:32;a:1:{s:7:\"content\";s:392:\"<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":678,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://test.in/wp-content/uploads/2022/05/Artboard-1-100-1.jpg\" alt=\"\" class=\"wp-image-678\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:28:{i:0;s:14:\"recent-posts-2\";i:1;s:10:\"nav_menu-2\";i:2;s:10:\"nav_menu-3\";i:3;s:7:\"block-8\";i:4;s:7:\"block-9\";i:5;s:8:\"block-10\";i:6;s:8:\"block-12\";i:7;s:8:\"block-13\";i:8;s:8:\"block-14\";i:9;s:8:\"block-17\";i:10;s:8:\"block-24\";i:11;s:8:\"block-25\";i:12;s:8:\"block-26\";i:13;s:8:\"block-27\";i:14;s:8:\"search-2\";i:15;s:14:\"recent-posts-3\";i:16;s:6:\"meta-2\";i:17;s:8:\"block-28\";i:18;s:8:\"block-29\";i:19;s:8:\"block-30\";i:20;s:8:\"block-31\";i:21;s:10:\"nav_menu-4\";i:22;s:10:\"nav_menu-5\";i:23;s:10:\"nav_menu-6\";i:24;s:8:\"block-32\";i:25;s:8:\"block-20\";i:26;s:8:\"block-22\";i:27;s:8:\"block-23\";}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:9:{i:1653994003;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1654019203;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1654019344;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1654062402;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654062418;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654062421;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654321602;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1655484406;a:1:{s:24:\"wpchill_do_weekly_action\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:3:{i:1;a:1:{s:5:\"title\";s:0:\"\";}i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:3:{i:1;a:1:{s:5:\"title\";s:0:\"\";}i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:7:{i:1;a:2:{s:5:\"title\";s:11:\"Quick Links\";s:8:\"nav_menu\";i:19;}i:2;a:2:{s:5:\"title\";s:7:\"Support\";s:8:\"nav_menu\";i:21;}i:3;a:2:{s:5:\"title\";s:9:\"Community\";s:8:\"nav_menu\";i:19;}i:4;a:2:{s:5:\"title\";s:11:\"Quick Links\";s:8:\"nav_menu\";i:19;}i:5;a:2:{s:5:\"title\";s:7:\"Support\";s:8:\"nav_menu\";i:24;}i:6;a:2:{s:5:\"title\";s:9:\"Community\";s:8:\"nav_menu\";i:22;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(123, 'theme_mods_twentytwentytwo', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1653370192;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:28:{i:0;s:14:\"recent-posts-2\";i:1;s:10:\"nav_menu-2\";i:2;s:10:\"nav_menu-3\";i:3;s:7:\"block-8\";i:4;s:7:\"block-9\";i:5;s:8:\"block-10\";i:6;s:8:\"block-12\";i:7;s:8:\"block-13\";i:8;s:8:\"block-14\";i:9;s:8:\"block-17\";i:10;s:8:\"block-24\";i:11;s:8:\"block-25\";i:12;s:8:\"block-26\";i:13;s:8:\"block-27\";i:14;s:8:\"search-2\";i:15;s:14:\"recent-posts-3\";i:16;s:6:\"meta-2\";i:17;s:8:\"block-28\";i:18;s:8:\"block-29\";i:19;s:8:\"block-30\";i:20;s:8:\"block-31\";i:21;s:10:\"nav_menu-4\";i:22;s:10:\"nav_menu-5\";i:23;s:10:\"nav_menu-6\";i:24;s:8:\"block-32\";i:25;s:8:\"block-20\";i:26;s:8:\"block-22\";i:27;s:8:\"block-23\";}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(152, 'current_theme', 'immigration', 'yes'),
(153, 'theme_mods_posterity', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1652424093;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-8\";i:1;s:7:\"block-9\";i:2;s:8:\"block-10\";i:3;s:8:\"block-12\";i:4;s:8:\"block-13\";i:5;s:8:\"block-14\";i:6;s:7:\"block-2\";i:7;s:7:\"block-3\";i:8;s:7:\"block-4\";}s:16:\"blog-widget-area\";a:0:{}s:16:\"post-widget-area\";a:0:{}s:16:\"page-widget-area\";a:0:{}s:16:\"shop-widget-area\";a:0:{}s:16:\"side-widget-area\";a:0:{}s:18:\"basket-widget-area\";a:0:{}s:18:\"footer-widget-area\";a:5:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";i:2;s:8:\"block-20\";i:3;s:8:\"block-22\";i:4;s:8:\"block-23\";}}}}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(155, 'a13_posterity_rating', '1652420847', 'yes'),
(162, 'finished_updating_comment_type', '1', 'yes'),
(164, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(165, 'widget_recent-posts', 'a:4:{i:1;a:0:{}i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(188, 'skt13_option_posterity', 'a:11:{s:9:\"logo_type\";s:5:\"image\";s:10:\"logo_image\";a:4:{s:2:\"id\";i:6;s:3:\"url\";s:60:\"http://test.in/wp-content/uploads/2022/05/FOXSports1.vn_.png\";s:6:\"height\";i:256;s:5:\"width\";i:256;}s:28:\"logo_image_max_desktop_width\";i:90;s:27:\"logo_image_max_mobile_width\";i:90;s:25:\"logo_image_normal_opacity\";i:1;s:12:\"logo_padding\";a:3:{s:11:\"padding-top\";s:3:\"0px\";s:14:\"padding-bottom\";s:3:\"0px\";s:5:\"units\";s:2:\"px\";}s:19:\"logo_padding_mobile\";a:3:{s:11:\"padding-top\";s:3:\"0px\";s:14:\"padding-bottom\";s:3:\"0px\";s:5:\"units\";s:2:\"px\";}s:17:\"logo_image_height\";i:0;s:24:\"header_horizontal_sticky\";s:9:\"no-sticky\";s:13:\"footer_switch\";s:2:\"on\";s:22:\"footer_widgets_columns\";s:1:\"3\";}', 'yes'),
(194, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(237, 'theme_mods_twentytwentyone', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1653370323;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:28:{i:0;s:14:\"recent-posts-2\";i:1;s:10:\"nav_menu-2\";i:2;s:10:\"nav_menu-3\";i:3;s:7:\"block-8\";i:4;s:7:\"block-9\";i:5;s:8:\"block-10\";i:6;s:8:\"block-12\";i:7;s:8:\"block-13\";i:8;s:8:\"block-14\";i:9;s:8:\"block-17\";i:10;s:8:\"block-24\";i:11;s:8:\"block-25\";i:12;s:8:\"block-26\";i:13;s:8:\"block-27\";i:14;s:8:\"search-2\";i:15;s:14:\"recent-posts-3\";i:16;s:6:\"meta-2\";i:17;s:8:\"block-28\";i:18;s:8:\"block-29\";i:19;s:8:\"block-30\";i:20;s:8:\"block-31\";i:21;s:10:\"nav_menu-4\";i:22;s:10:\"nav_menu-5\";i:23;s:10:\"nav_menu-6\";i:24;s:8:\"block-32\";i:25;s:8:\"block-20\";i:26;s:8:\"block-22\";i:27;s:8:\"block-23\";}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(268, 'skt13_posterity_cache', 'a:3:{s:7:\"options\";a:353:{s:9:\"logo_type\";s:5:\"image\";s:10:\"logo_image\";a:4:{s:2:\"id\";i:6;s:3:\"url\";s:60:\"http://test.in/wp-content/uploads/2022/05/FOXSports1.vn_.png\";s:6:\"height\";i:256;s:5:\"width\";i:256;}s:28:\"logo_image_max_desktop_width\";i:90;s:27:\"logo_image_max_mobile_width\";i:90;s:25:\"logo_image_normal_opacity\";i:1;s:12:\"logo_padding\";a:3:{s:11:\"padding-top\";s:3:\"0px\";s:14:\"padding-bottom\";s:3:\"0px\";s:5:\"units\";s:2:\"px\";}s:19:\"logo_padding_mobile\";a:3:{s:11:\"padding-top\";s:3:\"0px\";s:14:\"padding-bottom\";s:3:\"0px\";s:5:\"units\";s:2:\"px\";}s:17:\"logo_image_height\";i:0;s:24:\"header_horizontal_sticky\";s:9:\"no-sticky\";s:13:\"footer_switch\";s:2:\"on\";s:22:\"footer_widgets_columns\";s:1:\"3\";s:15:\"custom_sidebars\";a:0:{}s:10:\"fp_variant\";s:4:\"page\";s:21:\"appearance_body_image\";s:0:\"\";s:25:\"appearance_body_image_fit\";s:5:\"cover\";s:24:\"appearance_body_bg_color\";s:7:\"#e9e9e9\";s:11:\"layout_type\";s:4:\"full\";s:13:\"custom_cursor\";s:7:\"default\";s:13:\"cursor_select\";s:21:\"empty_black_white.png\";s:12:\"cursor_image\";s:0:\"\";s:9:\"preloader\";s:2:\"on\";s:20:\"preloader_hide_event\";s:5:\"ready\";s:18:\"preloader_bg_image\";s:0:\"\";s:22:\"preloader_bg_image_fit\";s:5:\"cover\";s:18:\"preloader_bg_color\";s:0:\"\";s:14:\"preloader_type\";s:9:\"indicator\";s:15:\"preloader_color\";a:3:{s:5:\"color\";s:7:\"#0083dd\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:17:\"rgba(0,131,221,1)\";}s:13:\"header_switch\";s:2:\"on\";s:11:\"footer_text\";s:25:\"Posterity WordPress Theme\";s:14:\"footer_socials\";s:2:\"on\";s:20:\"footer_socials_color\";s:5:\"white\";s:26:\"footer_socials_color_hover\";s:5:\"color\";s:20:\"footer_content_width\";s:6:\"narrow\";s:20:\"footer_content_style\";s:7:\"classic\";s:15:\"footer_bg_color\";s:16:\"rgba(20,33,42,1)\";s:21:\"footer_lower_bg_color\";s:16:\"rgba(20,33,42,1)\";s:20:\"footer_widgets_color\";s:12:\"dark-sidebar\";s:16:\"footer_separator\";s:2:\"on\";s:22:\"footer_separator_color\";s:16:\"rgba(57,64,74,1)\";s:16:\"footer_font_size\";s:2:\"16\";s:24:\"footer_widgets_font_size\";s:2:\"16\";s:17:\"footer_font_color\";s:19:\"rgba(206,206,206,1)\";s:17:\"footer_link_color\";s:18:\"rgba(113,174,14,1)\";s:18:\"footer_hover_color\";s:19:\"rgba(255,255,255,1)\";s:23:\"hidden_sidebar_bg_color\";s:19:\"rgba(255,255,255,1)\";s:24:\"hidden_sidebar_font_size\";s:2:\"12\";s:28:\"hidden_sidebar_widgets_color\";s:13:\"light-sidebar\";s:19:\"hidden_sidebar_side\";s:5:\"right\";s:21:\"hidden_sidebar_effect\";s:1:\"1\";s:14:\"headings_color\";s:16:\"rgba(50,50,50,1)\";s:20:\"headings_color_hover\";s:19:\"rgba(100,100,100,1)\";s:15:\"headings_weight\";s:4:\"bold\";s:18:\"headings_transform\";s:4:\"none\";s:20:\"page_title_font_size\";s:2:\"60\";s:24:\"page_title_font_size_768\";i:32;s:16:\"content_bg_color\";s:7:\"#ffffff\";s:13:\"content_color\";s:16:\"rgba(85,85,85,1)\";s:18:\"content_link_color\";s:16:\"rgba(31,31,31,1)\";s:24:\"content_link_color_hover\";s:16:\"rgba(86,86,86,1)\";s:17:\"content_font_size\";s:2:\"15\";s:15:\"first_paragraph\";s:2:\"on\";s:21:\"first_paragraph_color\";s:16:\"rgba(88,88,88,1)\";s:15:\"socials_variant\";s:10:\"icons-only\";s:12:\"skt_lightbox\";s:12:\"lightGallery\";s:18:\"widgets_top_margin\";s:2:\"on\";s:22:\"widget_title_font_size\";s:2:\"26\";s:16:\"widget_font_size\";i:16;s:15:\"to_top_bg_color\";s:15:\"rgba(0,0,0,0.1)\";s:21:\"to_top_bg_hover_color\";s:17:\"rgba(57,87,255,1)\";s:12:\"to_top_color\";s:19:\"rgba(255,255,255,1)\";s:18:\"to_top_hover_color\";s:19:\"rgba(255,255,255,1)\";s:16:\"to_top_font_size\";s:2:\"22\";s:11:\"to_top_icon\";s:8:\"angle-up\";s:22:\"button_submit_bg_color\";s:16:\"rgba(34,34,34,1)\";s:28:\"button_submit_bg_hover_color\";s:17:\"rgba(221,23,74,1)\";s:19:\"button_submit_color\";s:19:\"rgba(255,255,255,1)\";s:25:\"button_submit_hover_color\";s:19:\"rgba(255,255,255,1)\";s:23:\"button_submit_font_size\";s:2:\"13\";s:20:\"button_submit_weight\";s:3:\"600\";s:23:\"button_submit_transform\";s:4:\"none\";s:20:\"button_submit_radius\";i:20;s:11:\"header_type\";s:10:\"horizontal\";s:25:\"header_horizontal_variant\";s:8:\"one_line\";s:21:\"header_color_variants\";s:6:\"sticky\";s:20:\"header_content_width\";s:6:\"narrow\";s:30:\"header_content_width_narrow_bg\";s:3:\"off\";s:15:\"header_bg_color\";s:19:\"rgba(255,255,255,1)\";s:21:\"header_bg_hover_color\";s:19:\"rgba(255,255,255,1)\";s:27:\"header_mobile_menu_bg_color\";a:3:{s:5:\"color\";s:7:\"#f5f5f5\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(245,245,245,1)\";}s:13:\"header_border\";s:3:\"off\";s:13:\"header_shadow\";s:3:\"off\";s:23:\"header_separators_color\";a:3:{s:5:\"color\";s:7:\"#3a3a3a\";s:5:\"alpha\";s:4:\"0.06\";s:4:\"rgba\";s:19:\"rgba(58,58,58,0.06)\";}s:14:\"header_socials\";s:3:\"off\";s:20:\"header_socials_color\";s:5:\"white\";s:26:\"header_socials_color_hover\";s:5:\"black\";s:32:\"header_socials_display_on_mobile\";s:2:\"on\";s:18:\"logo_from_variants\";s:2:\"on\";s:19:\"logo_image_high_dpi\";s:0:\"\";s:18:\"logo_image_opacity\";s:2:\"50\";s:9:\"logo_text\";s:0:\"\";s:10:\"logo_color\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(34,34,34,1)\";}s:16:\"logo_color_hover\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(34,34,34,1)\";}s:14:\"logo_font_size\";s:2:\"30\";s:11:\"logo_weight\";s:4:\"bold\";s:16:\"header_main_menu\";s:2:\"on\";s:17:\"menu_hover_effect\";s:4:\"none\";s:31:\"menu_close_mobile_menu_on_click\";s:2:\"on\";s:22:\"menu_allow_mobile_menu\";s:2:\"on\";s:14:\"menu_font_size\";s:2:\"16\";s:10:\"menu_color\";a:3:{s:5:\"color\";s:7:\"#222222\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(34,34,34,1)\";}s:16:\"menu_hover_color\";a:3:{s:5:\"color\";s:7:\"#0083dd\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:17:\"rgba(0,131,221,1)\";}s:19:\"menu_hover_bg_color\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:1:\"0\";s:4:\"rgba\";s:13:\"rgba(0,0,0,0)\";}s:11:\"menu_weight\";s:6:\"normal\";s:14:\"menu_transform\";s:4:\"none\";s:16:\"submenu_bg_color\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:23:\"submenu_separator_color\";a:3:{s:5:\"color\";s:7:\"#f0f0f0\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(240,240,240,1)\";}s:18:\"submenu_open_icons\";s:2:\"on\";s:14:\"submenu_opener\";s:10:\"angle-down\";s:14:\"submenu_closer\";s:8:\"angle-up\";s:24:\"submenu_third_lvl_opener\";s:11:\"angle-right\";s:24:\"submenu_third_lvl_closer\";s:10:\"angle-left\";s:13:\"submenu_color\";a:3:{s:5:\"color\";s:7:\"#999999\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(153,153,153,1)\";}s:19:\"submenu_color_hover\";a:3:{s:5:\"color\";s:7:\"#0083dd\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:17:\"rgba(0,131,221,1)\";}s:17:\"submenu_font_size\";s:2:\"16\";s:14:\"submenu_weight\";s:6:\"normal\";s:17:\"submenu_transform\";s:4:\"none\";s:24:\"header_sticky_logo_image\";s:0:\"\";s:33:\"header_sticky_logo_image_high_dpi\";s:0:\"\";s:24:\"header_sticky_logo_color\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:30:\"header_sticky_logo_color_hover\";a:3:{s:5:\"color\";s:7:\"#8aaef3\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(138,174,243,1)\";}s:24:\"header_sticky_menu_color\";a:3:{s:5:\"color\";s:7:\"#f0f0f0\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(240,240,240,1)\";}s:30:\"header_sticky_menu_hover_color\";a:3:{s:5:\"color\";s:7:\"#8aaef3\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(138,174,243,1)\";}s:33:\"header_sticky_menu_hover_bg_color\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:1:\"0\";s:4:\"rgba\";s:13:\"rgba(0,0,0,0)\";}s:22:\"header_sticky_bg_color\";a:3:{s:5:\"color\";s:7:\"#14212a\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(20,33,42,1)\";}s:34:\"header_sticky_mobile_menu_bg_color\";a:3:{s:5:\"color\";s:7:\"#14212a\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(20,33,42,1)\";}s:20:\"header_sticky_shadow\";s:2:\"on\";s:30:\"header_sticky_separators_color\";a:3:{s:5:\"color\";s:7:\"#f0f0f0\";s:5:\"alpha\";s:3:\"0.2\";s:4:\"rgba\";s:21:\"rgba(240,240,240,0.2)\";}s:26:\"header_sticky_logo_padding\";a:3:{s:11:\"padding-top\";s:4:\"25px\";s:14:\"padding-bottom\";s:4:\"25px\";s:5:\"units\";s:2:\"px\";}s:25:\"header_sticky_tools_color\";a:3:{s:5:\"color\";s:7:\"#f0f0f0\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(240,240,240,1)\";}s:31:\"header_sticky_tools_color_hover\";a:3:{s:5:\"color\";s:7:\"#0083dd\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:17:\"rgba(0,131,221,1)\";}s:29:\"header_sticky_button_bg_color\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:1:\"0\";s:4:\"rgba\";s:13:\"rgba(0,0,0,0)\";}s:35:\"header_sticky_button_bg_color_hover\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:1:\"0\";s:4:\"rgba\";s:13:\"rgba(0,0,0,0)\";}s:33:\"header_sticky_button_border_color\";a:3:{s:5:\"color\";s:7:\"#f0f0f0\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(240,240,240,1)\";}s:39:\"header_sticky_button_border_color_hover\";a:3:{s:5:\"color\";s:7:\"#8aaef3\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(138,174,243,1)\";}s:27:\"header_sticky_socials_color\";s:16:\"semi-transparent\";s:33:\"header_sticky_socials_color_hover\";s:5:\"color\";s:18:\"header_tools_color\";a:3:{s:5:\"color\";s:7:\"#222222\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(34,34,34,1)\";}s:24:\"header_tools_color_hover\";a:3:{s:5:\"color\";s:7:\"#0083dd\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:17:\"rgba(0,131,221,1)\";}s:13:\"header_search\";s:3:\"off\";s:13:\"header_button\";s:0:\"\";s:18:\"header_button_link\";s:1:\"#\";s:25:\"header_button_link_target\";s:3:\"off\";s:23:\"header_button_font_size\";s:2:\"12\";s:20:\"header_button_weight\";s:4:\"bold\";s:22:\"header_button_bg_color\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:1:\"0\";s:4:\"rgba\";s:13:\"rgba(0,0,0,0)\";}s:28:\"header_button_bg_color_hover\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:1:\"0\";s:4:\"rgba\";s:13:\"rgba(0,0,0,0)\";}s:26:\"header_button_border_color\";a:3:{s:5:\"color\";s:7:\"#222222\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(34,34,34,1)\";}s:32:\"header_button_border_color_hover\";a:3:{s:5:\"color\";s:7:\"#3957ff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:17:\"rgba(57,87,255,1)\";}s:31:\"header_button_display_on_mobile\";s:2:\"on\";s:22:\"blog_custom_background\";s:3:\"off\";s:15:\"blog_body_image\";s:0:\"\";s:19:\"blog_body_image_fit\";s:5:\"cover\";s:18:\"blog_body_bg_color\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:25:\"blog_content_under_header\";s:3:\"off\";s:19:\"blog_content_layout\";s:10:\"full_fixed\";s:20:\"blog_content_padding\";s:4:\"both\";s:12:\"blog_sidebar\";s:5:\"right\";s:14:\"blog_post_look\";s:17:\"vertical_centered\";s:16:\"blog_layout_mode\";s:7:\"packery\";s:18:\"blog_brick_columns\";s:1:\"3\";s:21:\"blog_bricks_max_width\";s:4:\"1920\";s:17:\"blog_brick_margin\";s:2:\"20\";s:14:\"blog_lazy_load\";s:2:\"on\";s:19:\"blog_lazy_load_mode\";s:6:\"button\";s:17:\"blog_excerpt_type\";s:4:\"auto\";s:19:\"blog_excerpt_length\";s:3:\"150\";s:10:\"blog_media\";s:2:\"on\";s:11:\"blog_videos\";s:3:\"off\";s:9:\"blog_date\";s:2:\"on\";s:11:\"blog_author\";s:2:\"on\";s:13:\"blog_comments\";s:2:\"on\";s:9:\"blog_cats\";s:2:\"on\";s:9:\"blog_tags\";s:2:\"on\";s:10:\"blog_title\";s:2:\"on\";s:22:\"blog_title_bar_variant\";s:8:\"centered\";s:20:\"blog_title_bar_width\";s:4:\"full\";s:20:\"blog_title_bar_image\";s:74:\"http://test.in/wp-content/themes/posterity/images/holders/title_bar_bg.jpg\";s:24:\"blog_title_bar_image_fit\";s:5:\"cover\";s:23:\"blog_title_bar_parallax\";s:2:\"on\";s:28:\"blog_title_bar_parallax_type\";s:2:\"bt\";s:29:\"blog_title_bar_parallax_speed\";s:4:\"1.00\";s:23:\"blog_title_bar_bg_color\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:3:\"0.2\";s:4:\"rgba\";s:15:\"rgba(0,0,0,0.2)\";}s:26:\"blog_title_bar_title_color\";s:7:\"#ffffff\";s:22:\"blog_title_bar_color_1\";s:7:\"#ffffff\";s:26:\"blog_title_bar_space_width\";s:3:\"150\";s:25:\"post_content_under_header\";s:3:\"off\";s:19:\"post_content_layout\";s:10:\"full_fixed\";s:12:\"post_sidebar\";s:13:\"right-sidebar\";s:10:\"post_media\";s:2:\"on\";s:16:\"post_author_info\";s:2:\"on\";s:9:\"post_date\";s:2:\"on\";s:11:\"post_author\";s:2:\"on\";s:13:\"post_comments\";s:3:\"off\";s:9:\"post_cats\";s:3:\"off\";s:9:\"post_tags\";s:3:\"off\";s:15:\"post_navigation\";s:2:\"on\";s:10:\"post_title\";s:2:\"on\";s:23:\"post_title_bar_position\";s:7:\"outside\";s:22:\"post_title_bar_variant\";s:8:\"centered\";s:20:\"post_title_bar_width\";s:4:\"full\";s:20:\"post_title_bar_image\";s:74:\"http://test.in/wp-content/themes/posterity/images/holders/title_bar_bg.jpg\";s:24:\"post_title_bar_image_fit\";s:5:\"cover\";s:23:\"post_title_bar_parallax\";s:2:\"on\";s:28:\"post_title_bar_parallax_type\";s:2:\"bt\";s:29:\"post_title_bar_parallax_speed\";s:4:\"1.00\";s:23:\"post_title_bar_bg_color\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:3:\"0.2\";s:4:\"rgba\";s:15:\"rgba(0,0,0,0.2)\";}s:26:\"post_title_bar_title_color\";s:7:\"#ffffff\";s:22:\"post_title_bar_color_1\";s:7:\"#ffffff\";s:26:\"post_title_bar_space_width\";s:3:\"150\";s:22:\"shop_custom_background\";s:3:\"off\";s:15:\"shop_body_image\";s:0:\"\";s:19:\"shop_body_image_fit\";s:5:\"cover\";s:18:\"shop_body_bg_color\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:11:\"shop_search\";s:3:\"off\";s:25:\"shop_content_under_header\";s:3:\"off\";s:19:\"shop_content_layout\";s:4:\"full\";s:12:\"shop_sidebar\";s:13:\"right-sidebar\";s:21:\"shop_products_variant\";s:5:\"under\";s:24:\"shop_products_subvariant\";s:6:\"center\";s:26:\"shop_products_second_image\";s:3:\"off\";s:25:\"shop_products_layout_mode\";s:7:\"packery\";s:21:\"shop_products_columns\";s:1:\"3\";s:22:\"shop_products_per_page\";s:2:\"12\";s:17:\"shop_brick_margin\";s:1:\"0\";s:14:\"shop_lazy_load\";s:2:\"on\";s:19:\"shop_lazy_load_mode\";s:4:\"auto\";s:10:\"shop_title\";s:2:\"on\";s:22:\"shop_title_bar_variant\";s:8:\"centered\";s:20:\"shop_title_bar_width\";s:4:\"full\";s:20:\"shop_title_bar_image\";s:74:\"http://test.in/wp-content/themes/posterity/images/holders/title_bar_bg.jpg\";s:24:\"shop_title_bar_image_fit\";s:5:\"cover\";s:23:\"shop_title_bar_parallax\";s:2:\"on\";s:28:\"shop_title_bar_parallax_type\";s:2:\"bt\";s:29:\"shop_title_bar_parallax_speed\";s:4:\"1.00\";s:23:\"shop_title_bar_bg_color\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:3:\"0.2\";s:4:\"rgba\";s:15:\"rgba(0,0,0,0.2)\";}s:26:\"shop_title_bar_title_color\";s:7:\"#ffffff\";s:22:\"shop_title_bar_color_1\";s:7:\"#ffffff\";s:26:\"shop_title_bar_space_width\";s:3:\"150\";s:22:\"product_content_layout\";s:10:\"full_fixed\";s:15:\"product_sidebar\";s:3:\"off\";s:21:\"product_custom_thumbs\";s:2:\"on\";s:34:\"shop_no_major_pages_content_layout\";s:10:\"full_fixed\";s:25:\"shop_no_major_pages_title\";s:2:\"on\";s:37:\"shop_no_major_pages_title_bar_variant\";s:8:\"centered\";s:35:\"shop_no_major_pages_title_bar_width\";s:4:\"full\";s:35:\"shop_no_major_pages_title_bar_image\";s:74:\"http://test.in/wp-content/themes/posterity/images/holders/title_bar_bg.jpg\";s:39:\"shop_no_major_pages_title_bar_image_fit\";s:5:\"cover\";s:38:\"shop_no_major_pages_title_bar_parallax\";s:2:\"on\";s:43:\"shop_no_major_pages_title_bar_parallax_type\";s:2:\"bt\";s:44:\"shop_no_major_pages_title_bar_parallax_speed\";s:4:\"1.00\";s:38:\"shop_no_major_pages_title_bar_bg_color\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:3:\"0.2\";s:4:\"rgba\";s:15:\"rgba(0,0,0,0.2)\";}s:41:\"shop_no_major_pages_title_bar_title_color\";s:7:\"#ffffff\";s:37:\"shop_no_major_pages_title_bar_color_1\";s:7:\"#ffffff\";s:41:\"shop_no_major_pages_title_bar_space_width\";s:3:\"150\";s:23:\"basket_sidebar_bg_color\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:24:\"basket_sidebar_font_size\";s:2:\"13\";s:28:\"basket_sidebar_widgets_color\";s:13:\"light-sidebar\";s:20:\"button_shop_bg_color\";a:3:{s:5:\"color\";s:7:\"#222222\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(34,34,34,1)\";}s:26:\"button_shop_bg_hover_color\";a:3:{s:5:\"color\";s:7:\"#dd174a\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:17:\"rgba(221,23,74,1)\";}s:17:\"button_shop_color\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:23:\"button_shop_hover_color\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:24:\"button_shop_alt_bg_color\";a:3:{s:5:\"color\";s:7:\"#222222\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(34,34,34,1)\";}s:30:\"button_shop_alt_bg_hover_color\";a:3:{s:5:\"color\";s:7:\"#dd174a\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:17:\"rgba(221,23,74,1)\";}s:21:\"button_shop_alt_color\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:27:\"button_shop_alt_hover_color\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:21:\"button_shop_font_size\";s:2:\"13\";s:18:\"button_shop_weight\";s:3:\"600\";s:21:\"button_shop_transform\";s:4:\"none\";s:19:\"button_shop_padding\";a:3:{s:13:\"padding-right\";s:4:\"30px\";s:12:\"padding-left\";s:4:\"30px\";s:5:\"units\";s:2:\"px\";}s:13:\"page_comments\";s:2:\"on\";s:25:\"page_content_under_header\";s:3:\"off\";s:19:\"page_content_layout\";s:6:\"center\";s:12:\"page_sidebar\";s:20:\"left-sidebar_and_nav\";s:22:\"page_custom_background\";s:3:\"off\";s:15:\"page_body_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:19:\"page_body_image_fit\";s:5:\"cover\";s:18:\"page_body_bg_color\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:13:\"rgba(0,0,0,1)\";}s:10:\"page_title\";s:2:\"on\";s:23:\"page_title_bar_position\";s:7:\"outside\";s:22:\"page_title_bar_variant\";s:8:\"centered\";s:20:\"page_title_bar_image\";s:74:\"http://test.in/wp-content/themes/posterity/images/holders/title_bar_bg.jpg\";s:24:\"page_title_bar_image_fit\";s:5:\"cover\";s:23:\"page_title_bar_parallax\";s:2:\"on\";s:28:\"page_title_bar_parallax_type\";s:2:\"bt\";s:29:\"page_title_bar_parallax_speed\";s:4:\"1.00\";s:23:\"page_title_bar_bg_color\";a:3:{s:5:\"color\";s:7:\"#000000\";s:5:\"alpha\";s:3:\"0.2\";s:4:\"rgba\";s:15:\"rgba(0,0,0,0.2)\";}s:26:\"page_title_bar_title_color\";s:7:\"#ffffff\";s:22:\"page_title_bar_color_1\";s:7:\"#ffffff\";s:26:\"page_title_bar_space_width\";s:3:\"150\";s:22:\"page_404_template_type\";s:7:\"default\";s:17:\"page_404_bg_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:27:\"page_password_template_type\";s:7:\"default\";s:22:\"page_password_bg_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:10:\"custom_css\";s:0:\"\";s:20:\"people_socials_color\";s:5:\"white\";s:26:\"people_socials_color_hover\";s:5:\"color\";s:19:\"a13ir_image_quality\";s:2:\"90\";s:14:\"anchors_in_bar\";s:2:\"on\";s:11:\"top_message\";s:3:\"off\";s:25:\"header_menu_part_bg_color\";s:19:\"rgba(255,255,255,1)\";s:21:\"header_custom_sidebar\";s:3:\"off\";s:14:\"header_top_bar\";s:3:\"off\";s:19:\"header_menu_overlay\";s:3:\"off\";s:36:\"blog_horizontal_header_color_variant\";s:6:\"normal\";s:11:\"blog_filter\";s:3:\"off\";s:18:\"blog_filter_weight\";s:4:\"bold\";s:21:\"blog_filter_transform\";s:9:\"uppercase\";s:22:\"blog_filter_text_align\";s:6:\"center\";s:36:\"post_horizontal_header_color_variant\";s:6:\"normal\";s:36:\"shop_horizontal_header_color_variant\";s:6:\"normal\";s:26:\"shop_header_custom_sidebar\";s:3:\"off\";s:36:\"page_horizontal_header_color_variant\";s:6:\"normal\";s:32:\"header_sticky_menu_part_bg_color\";s:0:\"\";s:19:\"footer_privacy_link\";s:3:\"off\";s:14:\"nav_menu_fonts\";a:3:{s:11:\"font-family\";s:7:\"Poppins\";s:12:\"word-spacing\";s:6:\"normal\";s:14:\"letter-spacing\";s:6:\"normal\";}s:12:\"titles_fonts\";a:3:{s:11:\"font-family\";s:7:\"Poppins\";s:12:\"word-spacing\";s:6:\"normal\";s:14:\"letter-spacing\";s:6:\"normal\";}s:12:\"normal_fonts\";a:3:{s:11:\"font-family\";s:7:\"Poppins\";s:12:\"word-spacing\";s:6:\"normal\";s:14:\"letter-spacing\";s:6:\"normal\";}s:10:\"logo_fonts\";a:3:{s:11:\"font-family\";s:7:\"Poppins\";s:12:\"word-spacing\";s:6:\"normal\";s:14:\"letter-spacing\";s:6:\"normal\";}s:15:\"social_services\";a:43:{s:5:\"500px\";s:0:\"\";s:7:\"behance\";s:0:\"\";s:9:\"bitbucket\";s:0:\"\";s:7:\"codepen\";s:0:\"\";s:9:\"delicious\";s:0:\"\";s:10:\"deviantart\";s:0:\"\";s:4:\"digg\";s:0:\"\";s:8:\"dribbble\";s:0:\"\";s:7:\"dropbox\";s:0:\"\";s:6:\"mailto\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:10:\"foursquare\";s:0:\"\";s:6:\"github\";s:0:\"\";s:10:\"googleplus\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:6:\"lastfm\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:9:\"messenger\";s:0:\"\";s:6:\"paypal\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:6:\"reddit\";s:0:\"\";s:3:\"rss\";s:0:\"\";s:9:\"sharethis\";s:0:\"\";s:5:\"skype\";s:0:\"\";s:5:\"slack\";s:0:\"\";s:8:\"snapchat\";s:0:\"\";s:7:\"spotify\";s:0:\"\";s:5:\"steam\";s:0:\"\";s:11:\"stumbleupon\";s:0:\"\";s:11:\"tripadvisor\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:6:\"viadeo\";s:0:\"\";s:5:\"vimeo\";s:0:\"\";s:4:\"vine\";s:0:\"\";s:9:\"vkontakte\";s:0:\"\";s:8:\"whatsapp\";s:0:\"\";s:9:\"wordpress\";s:0:\"\";s:4:\"xing\";s:0:\"\";s:5:\"yahoo\";s:0:\"\";s:4:\"yelp\";s:0:\"\";s:7:\"youtube\";s:0:\"\";}s:20:\"lightbox_single_post\";s:3:\"off\";s:6:\"to_top\";s:2:\"on\";s:21:\"button_submit_padding\";a:3:{s:12:\"padding-left\";s:4:\"30px\";s:13:\"padding-right\";s:4:\"30px\";s:5:\"units\";s:2:\"px\";}s:24:\"logo_image_hover_opacity\";s:4:\"0.50\";s:42:\"header_sticky_logo_image_max_desktop_width\";i:200;s:41:\"header_sticky_logo_image_max_mobile_width\";i:200;s:33:\"header_sticky_logo_padding_mobile\";a:3:{s:11:\"padding-top\";s:4:\"10px\";s:14:\"padding-bottom\";s:4:\"10px\";s:5:\"units\";s:2:\"px\";}s:14:\"blog_read_more\";s:2:\"on\";s:28:\"product_content_under_header\";s:3:\"off\";s:24:\"product_related_products\";s:2:\"on\";s:13:\"product_title\";s:2:\"on\";s:26:\"product_title_bar_position\";s:6:\"inside\";s:25:\"product_title_bar_variant\";s:7:\"classic\";s:23:\"product_title_bar_image\";s:0:\"\";s:27:\"product_title_bar_image_fit\";s:6:\"repeat\";s:26:\"product_title_bar_parallax\";s:3:\"off\";s:31:\"product_title_bar_parallax_type\";s:2:\"tb\";s:32:\"product_title_bar_parallax_speed\";s:4:\"1.00\";s:26:\"product_title_bar_bg_color\";s:0:\"\";s:29:\"product_title_bar_title_color\";s:0:\"\";s:25:\"product_title_bar_color_1\";s:0:\"\";s:29:\"product_title_bar_space_width\";s:2:\"40\";s:40:\"shop_no_major_pages_content_under_header\";s:3:\"off\";s:16:\"scroll_to_anchor\";s:2:\"on\";}s:4:\"meta\";a:2:{s:4:\"post\";a:1:{s:20:\"content_under_header\";a:2:{s:12:\"global_value\";s:1:\"G\";s:13:\"parent_option\";s:25:\"post_content_under_header\";}}s:4:\"page\";a:3:{s:14:\"content_layout\";a:2:{s:12:\"global_value\";s:6:\"global\";s:13:\"parent_option\";s:19:\"page_content_layout\";}s:11:\"widget_area\";a:2:{s:12:\"global_value\";s:1:\"G\";s:13:\"parent_option\";s:12:\"page_sidebar\";}s:20:\"content_under_header\";a:2:{s:12:\"global_value\";s:1:\"G\";s:13:\"parent_option\";s:25:\"page_content_under_header\";}}}s:7:\"version\";s:3:\"1.0\";}', 'yes'),
(274, 'theme_mods_twentytwenty', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1652774259;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:27:{i:0;s:14:\"recent-posts-2\";i:1;s:10:\"nav_menu-2\";i:2;s:10:\"nav_menu-3\";i:3;s:7:\"block-8\";i:4;s:7:\"block-9\";i:5;s:8:\"block-10\";i:6;s:8:\"block-12\";i:7;s:8:\"block-13\";i:8;s:8:\"block-14\";i:9;s:8:\"block-17\";i:10;s:8:\"block-24\";i:11;s:8:\"block-25\";i:12;s:8:\"block-26\";i:13;s:8:\"block-27\";i:14;s:8:\"search-2\";i:15;s:14:\"recent-posts-3\";i:16;s:6:\"meta-2\";i:17;s:8:\"block-28\";i:18;s:8:\"block-29\";i:19;s:8:\"block-30\";i:20;s:8:\"block-31\";i:21;s:10:\"nav_menu-4\";i:22;s:10:\"nav_menu-5\";i:23;s:10:\"nav_menu-6\";i:24;s:7:\"block-2\";i:25;s:7:\"block-3\";i:26;s:7:\"block-4\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"block-32\";}s:9:\"sidebar-2\";a:5:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";i:2;s:8:\"block-20\";i:3;s:8:\"block-22\";i:4;s:8:\"block-23\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(280, 'zakra_upgrade_notice_start_time', '1652424144', 'yes'),
(291, 'zakra_admin_notice_welcome', '1', 'yes'),
(296, 'everest_forms_disable_user_details', 'no', 'yes'),
(297, 'everest_forms_enable_log', 'no', 'yes'),
(298, 'everest_forms_recaptcha_type', 'v2', 'yes'),
(299, 'everest_forms_recaptcha_v2_site_key', '', 'yes'),
(300, 'everest_forms_recaptcha_v2_secret_key', '', 'yes'),
(301, 'everest_forms_recaptcha_v2_invisible_site_key', '', 'yes'),
(302, 'everest_forms_recaptcha_v2_invisible_secret_key', '', 'yes'),
(303, 'everest_forms_recaptcha_v2_invisible', 'no', 'yes'),
(304, 'everest_forms_recaptcha_v3_site_key', '', 'yes'),
(305, 'everest_forms_recaptcha_v3_secret_key', '', 'yes'),
(306, 'everest_forms_recaptcha_hcaptcha_site_key', '', 'yes'),
(307, 'everest_forms_recaptcha_hcaptcha_secret_key', '', 'yes'),
(308, 'everest_forms_recaptcha_v3_threshold_score', '0.4', 'yes'),
(309, 'everest_forms_email_template', 'default', 'yes'),
(310, 'everest_forms_enable_email_copies', 'no', 'yes'),
(311, 'everest_forms_required_validation', 'This field is required.', 'yes'),
(312, 'everest_forms_url_validation', 'Please enter a valid URL.', 'yes'),
(313, 'everest_forms_email_validation', 'Please enter a valid email address.', 'yes'),
(314, 'everest_forms_email_suggestion', 'Did you mean {suggestion}?', 'yes'),
(315, 'everest_forms_confirm_validation', 'Field values do not match.', 'yes'),
(316, 'everest_forms_check_limit_validation', 'You have exceeded number of allowed selections: {#}.', 'yes'),
(317, 'everest_forms_number_validation', 'Please enter a valid number.', 'yes'),
(318, 'everest_forms_default_form_page_id', '24', 'yes'),
(321, 'everest_forms_version', '1.8.7', 'yes'),
(322, 'everest_forms_db_version', '1.8.7', 'yes'),
(323, 'everest_forms_activated', '1652424218', 'yes'),
(324, 'everest_forms_admin_notices', 'a:2:{i:0;s:6:\"review\";i:1;s:6:\"survey\";}', 'yes'),
(326, '_blockart_activation_redirect', '', 'yes'),
(327, '_blockart_activation_time', '1652424226', 'yes'),
(328, '_blockart_version', '1.0.3', 'yes'),
(330, 'masteriyo_flush_rewrite_rules', 'no', 'yes'),
(331, 'masteriyo_settings', 'a:8:{s:7:\"general\";a:2:{s:7:\"styling\";a:2:{s:13:\"primary_color\";s:0:\"\";s:5:\"theme\";s:7:\"minimum\";}s:11:\"widgets_css\";s:0:\"\";}s:14:\"course_archive\";a:1:{s:7:\"display\";a:4:{s:13:\"enable_search\";b:1;s:8:\"per_page\";i:12;s:7:\"per_row\";i:3;s:14:\"thumbnail_size\";s:19:\"masteriyo_thumbnail\";}}s:13:\"single_course\";a:1:{s:7:\"display\";a:1:{s:13:\"enable_review\";b:1;}}s:10:\"learn_page\";a:2:{s:7:\"general\";a:1:{s:7:\"logo_id\";s:0:\"\";}s:7:\"display\";a:1:{s:24:\"enable_questions_answers\";b:1;}}s:8:\"payments\";a:4:{s:5:\"store\";a:5:{s:7:\"country\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:13:\"address_line1\";s:0:\"\";s:13:\"address_line2\";s:0:\"\";}s:8:\"currency\";a:5:{s:8:\"currency\";s:3:\"USD\";s:17:\"currency_position\";s:4:\"left\";s:18:\"thousand_separator\";s:1:\",\";s:17:\"decimal_separator\";s:1:\".\";s:18:\"number_of_decimals\";i:2;}s:7:\"offline\";a:4:{s:6:\"enable\";b:0;s:5:\"title\";s:15:\"Offline payment\";s:11:\"description\";s:25:\"Pay with offline payment.\";s:12:\"instructions\";s:24:\"Pay with offline payment\";}s:6:\"paypal\";a:18:{s:6:\"enable\";b:0;s:5:\"title\";s:6:\"Paypal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:23:\"ipn_email_notifications\";b:1;s:7:\"sandbox\";b:0;s:5:\"email\";s:0:\"\";s:14:\"receiver_email\";s:0:\"\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:10:\"masteriyo-\";s:14:\"payment_action\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:5:\"debug\";b:0;s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:17:\"live_api_username\";s:0:\"\";s:17:\"live_api_password\";s:0:\"\";s:18:\"live_api_signature\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}}s:4:\"quiz\";a:1:{s:7:\"styling\";a:1:{s:26:\"questions_display_per_page\";i:5;}}s:6:\"emails\";a:9:{s:7:\"general\";a:6:{s:6:\"enable\";b:1;s:9:\"from_name\";s:8:\"EduSkill\";s:10:\"from_email\";s:25:\"klocrix.kulwant@gmail.com\";s:15:\"default_content\";s:0:\"\";s:12:\"header_image\";s:0:\"\";s:11:\"footer_text\";s:0:\"\";}s:9:\"new_order\";a:5:{s:6:\"enable\";b:1;s:10:\"recipients\";a:0:{}s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:7:\"content\";s:0:\"\";}s:16:\"processing_order\";a:4:{s:6:\"enable\";b:1;s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:7:\"content\";s:0:\"\";}s:15:\"completed_order\";a:4:{s:6:\"enable\";b:1;s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:7:\"content\";s:0:\"\";}s:12:\"onhold_order\";a:4:{s:6:\"enable\";b:1;s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:7:\"content\";s:0:\"\";}s:15:\"cancelled_order\";a:5:{s:6:\"enable\";b:1;s:10:\"recipients\";a:0:{}s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:7:\"content\";s:0:\"\";}s:15:\"enrolled_course\";a:4:{s:6:\"enable\";b:1;s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:7:\"content\";s:0:\"\";}s:16:\"completed_course\";a:4:{s:6:\"enable\";b:1;s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:7:\"content\";s:0:\"\";}s:20:\"become_an_instructor\";a:4:{s:6:\"enable\";b:1;s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:7:\"content\";s:0:\"\";}}s:7:\"advance\";a:5:{s:5:\"pages\";a:5:{s:15:\"courses_page_id\";i:610;s:15:\"account_page_id\";i:625;s:16:\"checkout_page_id\";i:626;s:13:\"learn_page_id\";s:2:\"31\";s:31:\"instructor_registration_page_id\";i:33;}s:10:\"permalinks\";a:7:{s:13:\"category_base\";s:15:\"course-category\";s:8:\"tag_base\";s:10:\"course-tag\";s:15:\"difficulty_base\";s:17:\"course-difficulty\";s:23:\"single_course_permalink\";s:6:\"course\";s:24:\"single_section_permalink\";s:7:\"section\";s:23:\"single_lesson_permalink\";s:6:\"lesson\";s:21:\"single_quiz_permalink\";s:4:\"quiz\";}s:7:\"account\";a:11:{s:9:\"dashboard\";s:0:\"\";s:6:\"orders\";s:6:\"orders\";s:10:\"view_order\";s:10:\"view-order\";s:13:\"order_history\";s:13:\"order-history\";s:10:\"my_courses\";s:7:\"courses\";s:12:\"view_account\";s:12:\"view-account\";s:12:\"edit_account\";s:12:\"edit-account\";s:15:\"payment_methods\";s:15:\"payment-methods\";s:13:\"lost_password\";s:12:\"lost-methods\";s:6:\"signup\";s:6:\"signup\";s:6:\"logout\";s:6:\"logout\";}s:8:\"checkout\";a:5:{s:3:\"pay\";s:9:\"order-pay\";s:14:\"order_received\";s:14:\"order-received\";s:18:\"add_payment_method\";s:18:\"add-payment-method\";s:21:\"delete_payment_method\";s:21:\"delete-payment-method\";s:26:\"set_default_payment_method\";s:26:\"set-default-payment-method\";}s:5:\"debug\";a:2:{s:14:\"template_debug\";b:0;s:5:\"debug\";b:0;}}}', 'yes'),
(332, 'masteriyo_placeholder_image', '35', 'yes'),
(333, 'masteriyo_plugin_version', '1.4.12', 'yes'),
(334, 'masteriyo_install_date', '2022-05-13 06:44:07', 'yes'),
(339, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(343, 'nav_menus_created_posts', 'a:0:{}', 'yes'),
(346, 'themegrill_demo_importer_activated_id', 'zakra-eduskill', 'yes'),
(347, 'elementor_load_fa4_shim', 'yes', 'yes'),
(357, 'course_cat_children', 'a:0:{}', 'yes'),
(358, 'course_difficulty_children', 'a:0:{}', 'yes'),
(359, 'theme_mods_zakra', 'a:58:{s:18:\"custom_css_post_id\";i:101;i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"menu-primary\";i:23;}s:26:\"zakra_base_typography_body\";a:6:{s:11:\"font-family\";s:4:\"Lato\";s:11:\"font-weight\";s:7:\"regular\";s:10:\"font-style\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:9:\"font-size\";a:1:{s:7:\"desktop\";s:4:\"18px\";}s:11:\"line-height\";a:1:{s:7:\"desktop\";s:3:\"1.8\";}}s:19:\"zakra_typography_h1\";a:7:{s:11:\"font-family\";s:7:\"default\";s:11:\"font-weight\";s:7:\"regular\";s:7:\"subsets\";a:0:{}s:10:\"font-style\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:9:\"font-size\";a:1:{s:7:\"desktop\";s:4:\"32px\";}s:11:\"line-height\";a:1:{s:7:\"desktop\";s:3:\"1.3\";}}s:21:\"zakra_base_color_text\";s:13:\"rgb(31,31,31)\";s:24:\"zakra_base_color_primary\";s:14:\"rgb(253,200,0)\";s:11:\"custom_logo\";i:159;s:16:\"header_textcolor\";s:5:\"blank\";s:38:\"zakra_primary_menu_border_bottom_color\";s:16:\"rgb(233,236,239)\";s:29:\"zakra_primary_menu_text_color\";s:13:\"rgb(31,31,31)\";s:35:\"zakra_primary_menu_text_hover_color\";s:14:\"rgb(253,200,0)\";s:36:\"zakra_primary_menu_text_active_color\";s:14:\"rgb(253,200,0)\";s:24:\"zakra_header_button_text\";s:14:\"Start Learning\";s:24:\"zakra_header_button_link\";s:0:\"\";s:27:\"zakra_header_button_padding\";a:4:{s:3:\"top\";s:4:\"12px\";s:5:\"right\";s:4:\"36px\";s:6:\"bottom\";s:4:\"12px\";s:4:\"left\";s:4:\"36px\";}s:29:\"zakra_header_button_roundness\";i:4;s:30:\"zakra_header_button_text_color\";s:13:\"rgb(31,31,31)\";s:36:\"zakra_header_button_text_hover_color\";s:13:\"rgb(31,31,31)\";s:28:\"zakra_header_button_bg_color\";s:14:\"rgb(253,200,0)\";s:34:\"zakra_header_button_bg_hover_color\";s:14:\"rgb(255,255,0)\";s:29:\"tg_header_menu_search_enabled\";s:0:\"\";s:23:\"zakra_button_text_color\";s:13:\"rgb(31,31,31)\";s:19:\"zakra_page_title_bg\";a:6:{s:16:\"background-color\";s:7:\"#ffffff\";s:16:\"background-image\";s:90:\"https://zakrademos.com/eduskill/wp-content/uploads/sites/113/2022/01/header_background.png\";s:17:\"background-repeat\";s:9:\"no-repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:5:\"cover\";s:21:\"background-attachment\";s:6:\"scroll\";}s:24:\"zakra_page_title_enabled\";s:11:\"page-header\";s:26:\"zakra_page_title_alignment\";s:27:\"tg-page-header--both-center\";s:24:\"zakra_page_title_padding\";a:4:{s:3:\"top\";s:4:\"50px\";s:5:\"right\";s:4:\"15px\";s:6:\"bottom\";s:4:\"50px\";s:4:\"left\";s:4:\"15px\";}s:27:\"zakra_post_page_title_color\";s:16:\"rgb(255,255,255)\";s:28:\"zakra_breadcrumbs_text_color\";s:16:\"rgb(255,255,255)\";s:33:\"zakra_breadcrumbs_seperator_color\";s:16:\"rgb(255,255,255)\";s:28:\"zakra_breadcrumbs_link_color\";s:16:\"rgb(255,255,255)\";s:23:\"zakra_page_title_markup\";s:2:\"h1\";s:37:\"zakra_primary_menu_text_active_effect\";s:27:\"tg-primary-menu--style-none\";s:29:\"zakra_button_text_hover_color\";s:13:\"rgb(15,15,15)\";s:21:\"zakra_button_bg_color\";s:14:\"rgb(253,200,0)\";s:27:\"zakra_button_bg_hover_color\";s:14:\"rgb(253,200,0)\";s:33:\"zakra_footer_bar_section_one_html\";s:112:\"Copyright © {the-year} {site-link}. Powered by {theme-link} and <a href=\"https://wpblockart.com/\">BlockArt</a>.\";s:27:\"zakra_footer_bar_text_color\";s:16:\"rgb(255,255,255)\";s:27:\"zakra_footer_bar_link_color\";s:14:\"rgb(253,200,0)\";s:19:\"zakra_footer_bar_bg\";a:6:{s:16:\"background-color\";s:10:\"rgb(2,5,9)\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:7:\"contain\";s:21:\"background-attachment\";s:6:\"scroll\";}s:23:\"zakra_footer_widgets_bg\";a:6:{s:16:\"background-color\";s:7:\"#ffffff\";s:16:\"background-image\";s:82:\"https://zakrademos.com/eduskill/wp-content/uploads/sites/113/2022/01/footer_bg.png\";s:17:\"background-repeat\";s:9:\"no-repeat\";s:19:\"background-position\";s:10:\"center top\";s:15:\"background-size\";s:5:\"cover\";s:21:\"background-attachment\";s:6:\"scroll\";}s:37:\"zakra_footer_widgets_border_top_width\";s:1:\"0\";s:32:\"zakra_footer_widgets_title_color\";s:16:\"rgb(255,255,255)\";s:31:\"zakra_footer_widgets_text_color\";s:16:\"rgb(255,255,255)\";s:31:\"zakra_footer_widgets_link_color\";s:16:\"rgb(255,255,255)\";s:37:\"zakra_footer_widgets_link_hover_color\";s:14:\"rgb(253,200,0)\";s:45:\"zakra_footer_widgets_item_border_bottom_width\";s:1:\"0\";s:37:\"zakra_single_blog_post_meta_structure\";a:2:{i:0;s:6:\"author\";i:1;s:4:\"date\";}s:32:\"zakra_typography_blog_post_title\";a:7:{s:11:\"font-family\";s:7:\"default\";s:11:\"font-weight\";s:7:\"regular\";s:7:\"subsets\";a:1:{i:0;s:5:\"latin\";}s:10:\"font-style\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:9:\"font-size\";a:1:{s:7:\"desktop\";s:4:\"32px\";}s:11:\"line-height\";a:1:{s:7:\"desktop\";s:3:\"1.3\";}}s:35:\"zakra_enable_read_more_archive_blog\";i:1;s:16:\"zakra_link_color\";s:14:\"rgb(253,200,0)\";s:22:\"zakra_link_hover_color\";s:14:\"rgb(255,255,0)\";s:33:\"zakra_footer_bar_link_hover_color\";s:14:\"rgb(255,255,0)\";s:33:\"zakra_meta_structure_archive_blog\";a:4:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";i:3;s:4:\"tags\";}s:28:\"zakra_typography_header_icon\";a:1:{s:9:\"font-size\";a:3:{s:7:\"desktop\";s:4:\"1rem\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}}s:23:\"zakra_header_icon_color\";s:0:\"\";s:29:\"zakra_base_typography_heading\";a:5:{s:11:\"font-family\";s:129:\"-apple-system, blinkmacsystemfont, segoe ui, roboto, oxygen-sans, ubuntu, cantarell, helvetica neue, helvetica, arial, sans-serif\";s:11:\"font-weight\";i:400;s:11:\"line-height\";a:3:{s:7:\"desktop\";s:3:\"1.3\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:10:\"font-style\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1652766771;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"sidebar-right\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-3\";i:2;s:6:\"meta-2\";}s:12:\"sidebar-left\";a:2:{i:0;s:8:\"block-28\";i:1;s:8:\"block-29\";}s:23:\"header-top-left-sidebar\";a:0:{}s:24:\"header-top-right-sidebar\";a:0:{}s:16:\"footer-sidebar-1\";a:2:{i:0;s:8:\"block-30\";i:1;s:8:\"block-31\";}s:16:\"footer-sidebar-2\";a:1:{i:0;s:10:\"nav_menu-4\";}s:16:\"footer-sidebar-3\";a:1:{i:0;s:10:\"nav_menu-5\";}s:16:\"footer-sidebar-4\";a:1:{i:0;s:10:\"nav_menu-6\";}s:23:\"footer-bar-left-sidebar\";a:0:{}s:24:\"footer-bar-right-sidebar\";a:0:{}}}}', 'yes'),
(360, 'site_logo', '159', 'yes'),
(366, 'masteriyo_review_notice', 'a:3:{s:11:\"time_to_ask\";i:1653029315;s:8:\"reviewed\";b:0;s:12:\"closed_count\";i:0;}', 'yes'),
(369, 'recently_activated', 'a:1:{s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:1653471670;}', 'yes'),
(370, 'everest_forms_review', 'a:2:{s:4:\"time\";i:1652424521;s:9:\"dismissed\";b:0;}', 'yes'),
(410, 'zakra_demo_import_migration_notice_dismiss', '1', 'yes'),
(411, 'zakra_migrations', '1', 'yes'),
(412, 'zakra_customizer_migration_v2', '1', 'yes'),
(430, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(451, 'wpcf7', 'a:2:{s:7:\"version\";s:7:\"5.5.6.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1652766933;s:7:\"version\";s:5:\"5.5.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(454, 'rttss_plugin_activation_time', '1652766975', 'yes'),
(456, 'tss_settings', 'a:4:{s:4:\"slug\";s:11:\"testimonial\";s:5:\"field\";a:6:{i:0;s:11:\"client_name\";i:1;s:11:\"project_url\";i:2;s:14:\"completed_date\";i:3;s:5:\"tools\";i:4;s:10:\"categories\";i:5;s:4:\"tags\";}s:11:\"form_fields\";a:6:{i:0;s:15:\"tss_designation\";i:1;s:11:\"tss_company\";i:2;s:12:\"tss_location\";i:3;s:10:\"tss_rating\";i:4;s:9:\"tss_video\";i:5;s:16:\"tss_social_media\";}s:18:\"notification_email\";s:25:\"klocrix.kulwant@gmail.com\";}', 'yes'),
(457, 'widget_widget_tlp_port_owl_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(462, 'rttss_spare_me', '1', 'yes'),
(472, 'theme_mods_immigration', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:27;}s:18:\"custom_css_post_id\";i:746;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1653369970;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:28:{i:0;s:14:\"recent-posts-2\";i:1;s:10:\"nav_menu-2\";i:2;s:10:\"nav_menu-3\";i:3;s:7:\"block-8\";i:4;s:7:\"block-9\";i:5;s:8:\"block-10\";i:6;s:8:\"block-12\";i:7;s:8:\"block-13\";i:8;s:8:\"block-14\";i:9;s:8:\"block-17\";i:10;s:8:\"block-24\";i:11;s:8:\"block-25\";i:12;s:8:\"block-26\";i:13;s:8:\"block-27\";i:14;s:8:\"search-2\";i:15;s:14:\"recent-posts-3\";i:16;s:6:\"meta-2\";i:17;s:8:\"block-28\";i:18;s:8:\"block-29\";i:19;s:8:\"block-30\";i:20;s:8:\"block-31\";i:21;s:10:\"nav_menu-4\";i:22;s:10:\"nav_menu-5\";i:23;s:10:\"nav_menu-6\";i:24;s:8:\"block-32\";i:25;s:8:\"block-20\";i:26;s:8:\"block-22\";i:27;s:8:\"block-23\";}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(508, 'widget_wpb_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(733, 'strong_testimonials_wisdom_notification_times', 'a:1:{s:19:\"strong-testimonials\";i:1652849208;}', 'yes'),
(734, 'strong_testimonials_wisdom_block_notice', 'a:1:{s:19:\"strong-testimonials\";s:19:\"strong-testimonials\";}', 'yes'),
(775, 'cptui_new_install', 'false', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(776, 'cptui_post_types', 'a:6:{s:12:\"testimonials\";a:34:{s:4:\"name\";s:12:\"testimonials\";s:5:\"label\";s:12:\"testimonials\";s:14:\"singular_label\";s:12:\"testimonials\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:6:\"slider\";a:34:{s:4:\"name\";s:6:\"slider\";s:5:\"label\";s:6:\"slider\";s:14:\"singular_label\";s:6:\"slider\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:9:\"countries\";a:34:{s:4:\"name\";s:9:\"countries\";s:5:\"label\";s:9:\"countries\";s:14:\"singular_label\";s:9:\"countries\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"category\";}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:7:\"service\";a:34:{s:4:\"name\";s:7:\"service\";s:5:\"label\";s:7:\"service\";s:14:\"singular_label\";s:7:\"service\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"category\";}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:18:\"awards_and_licence\";a:34:{s:4:\"name\";s:18:\"awards_and_licence\";s:5:\"label\";s:18:\"awards_and_licence\";s:14:\"singular_label\";s:18:\"awards_and_licence\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:5:\"about\";a:34:{s:4:\"name\";s:5:\"about\";s:5:\"label\";s:5:\"about\";s:14:\"singular_label\";s:5:\"about\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}', 'yes'),
(1167, 'secret_key', 'P=A7m[64+tn[o5p:v714&UbC-?OOO+3Shglk7c4B]o7y;[.4ilCx`$U>j9-q]pSu', 'no'),
(1276, 'cptui_taxonomies', 'a:5:{s:12:\"testimonials\";a:28:{s:4:\"name\";s:12:\"testimonials\";s:5:\"label\";s:12:\"testimonials\";s:14:\"singular_label\";s:12:\"testimonials\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:12:\"testimonials\";}}s:9:\"countries\";a:28:{s:4:\"name\";s:9:\"countries\";s:5:\"label\";s:9:\"countries\";s:14:\"singular_label\";s:9:\"countries\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:9:\"countries\";}}s:19:\"immigration_program\";a:28:{s:4:\"name\";s:19:\"immigration_program\";s:5:\"label\";s:19:\"immigration_program\";s:14:\"singular_label\";s:19:\"immigration_program\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:19:\"immigration_program\";}}s:11:\"sponsorship\";a:28:{s:4:\"name\";s:11:\"sponsorship\";s:5:\"label\";s:11:\"sponsorship\";s:14:\"singular_label\";s:11:\"sponsorship\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:11:\"sponsorship\";}}s:7:\"service\";a:28:{s:4:\"name\";s:7:\"service\";s:5:\"label\";s:7:\"service\";s:14:\"singular_label\";s:7:\"service\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:7:\"service\";}}}', 'yes'),
(1685, 'category_children', 'a:0:{}', 'yes'),
(1763, 'classic-editor-replace', 'classic', 'yes'),
(1764, 'classic-editor-allow-users', 'disallow', 'yes'),
(2074, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1653985116;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:0:{}}', 'no'),
(2077, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"klocrix.kulwant@gmail.com\";s:7:\"version\";s:3:\"6.0\";s:9:\"timestamp\";i:1653457711;}', 'no'),
(2194, 'action_scheduler_hybrid_store_demarkation', '787', 'yes'),
(2195, 'schema-ActionScheduler_StoreSchema', '6.0.1653471653', 'yes'),
(2196, 'schema-ActionScheduler_LoggerSchema', '3.0.1653471653', 'yes'),
(2197, 'wp_mail_smtp_initial_version', '3.4.0', 'no'),
(2198, 'wp_mail_smtp_version', '3.4.0', 'no'),
(2199, 'wp_mail_smtp', 'a:3:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:25:\"klocrix.kulwant@gmail.com\";s:9:\"from_name\";s:14:\"D2 Immigration\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:2:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}}', 'no'),
(2200, 'wp_mail_smtp_activated_time', '1653471653', 'no'),
(2201, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1653471653;}', 'yes'),
(2204, 'action_scheduler_lock_async-request-runner', '1653471713', 'yes'),
(2208, 'wp_mail_smtp_migration_version', '4', 'yes'),
(2209, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(2210, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(2212, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1653471660;s:9:\"dismissed\";b:0;}', 'yes'),
(2214, 'swpsmtp_options', 'a:10:{s:16:\"from_email_field\";s:25:\"klocrix.kulwant@gmail.com\";s:15:\"from_name_field\";s:4:\"test\";s:23:\"force_from_name_replace\";b:0;s:8:\"sub_mode\";b:0;s:13:\"smtp_settings\";a:10:{s:4:\"host\";s:14:\"smtp.gmail.com\";s:15:\"type_encryption\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:13:\"autentication\";s:3:\"yes\";s:8:\"username\";s:25:\"klocrix.kulwant@gmail.com\";s:8:\"password\";s:16:\"S3Vsd2FudEA4NTI=\";s:13:\"log_file_name\";s:33:\"logs\\.628df9b1aea5e2.75166881.txt\";s:12:\"enable_debug\";b:0;s:12:\"insecure_ssl\";b:0;s:12:\"encrypt_pass\";b:0;}s:15:\"allowed_domains\";s:12:\"dGVzdC5pbg==\";s:14:\"reply_to_email\";s:0:\"\";s:9:\"bcc_email\";s:0:\"\";s:17:\"email_ignore_list\";s:0:\"\";s:19:\"enable_domain_check\";b:0;}', 'yes'),
(2216, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1653985124;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:7:\"5.5.6.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.12.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.12.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2549362\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2549362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2549362\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2549362\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:29:\"easy-wp-smtp/easy-wp-smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/easy-wp-smtp\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:6:\"plugin\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:11:\"new_version\";s:5:\"1.4.7\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/easy-wp-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.4.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2468655\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2468655\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:5:{s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:7:\"5.5.6.1\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.12.1\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:5:\"1.4.7\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.4.0\";}}', 'no'),
(2219, 'smtp_test_mail', 'a:3:{s:10:\"swpsmtp_to\";s:25:\"klocrix.kulwant@gmail.com\";s:15:\"swpsmtp_subject\";s:2:\"bn\";s:15:\"swpsmtp_message\";s:8:\"bnbnbnbn\";}', 'yes'),
(2355, 'recovery_mode_email_last_sent', '1653549203', 'yes'),
(2376, '_site_transient_timeout_php_check_653b16e6c5979ac325fae9f9db6a18fe', '1654516470', 'no'),
(2377, '_site_transient_php_check_653b16e6c5979ac325fae9f9db6a18fe', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2382, '_site_transient_timeout_theme_roots', '1653986922', 'no'),
(2383, '_site_transient_theme_roots', 'a:4:{s:11:\"immigration\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(2384, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1653985124;s:7:\"checked\";a:4:{s:11:\"immigration\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(2409, '_transient_timeout_global_styles_immigration', '1653992420', 'no'),
(2410, '_transient_global_styles_immigration', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(7, 7, '_edit_lock', '1652421505:1'),
(8, 7, '_wp_trash_meta_status', 'publish'),
(9, 7, '_wp_trash_meta_time', '1652421516'),
(34, 8, '_wp_trash_meta_status', 'publish'),
(35, 8, '_wp_trash_meta_time', '1652421625'),
(36, 12, '_wp_trash_meta_status', 'publish'),
(37, 12, '_wp_trash_meta_time', '1652421636'),
(38, 13, '_wp_trash_meta_status', 'publish'),
(39, 13, '_wp_trash_meta_time', '1652421785'),
(40, 14, '_edit_lock', '1652421872:1'),
(41, 14, '_wp_trash_meta_status', 'publish'),
(42, 14, '_wp_trash_meta_time', '1652421887'),
(43, 15, '_edit_lock', '1652422115:1'),
(44, 15, '_wp_trash_meta_status', 'publish'),
(45, 15, '_wp_trash_meta_time', '1652422157'),
(46, 16, '_edit_lock', '1652422175:1'),
(47, 16, '_wp_trash_meta_status', 'publish'),
(48, 16, '_wp_trash_meta_time', '1652422180'),
(49, 17, '_wp_trash_meta_status', 'publish'),
(50, 17, '_wp_trash_meta_time', '1652422235'),
(53, 19, '_edit_lock', '1652423471:1'),
(54, 19, '_wp_trash_meta_status', 'publish'),
(55, 19, '_wp_trash_meta_time', '1652423511'),
(58, 21, '_edit_lock', '1652423836:1'),
(59, 21, '_wp_trash_meta_status', 'publish'),
(60, 21, '_wp_trash_meta_time', '1652423864'),
(61, 22, '_edit_lock', '1652423925:1'),
(62, 22, '_wp_trash_meta_status', 'publish'),
(63, 22, '_wp_trash_meta_time', '1652423927'),
(187, 180, '_category_ids', 'a:1:{i:0;i:12;}'),
(188, 180, '_difficulty_id', '5'),
(190, 180, '_average_rating', '0'),
(191, 180, '_review_count', '0'),
(192, 180, '_date_on_sale_from', ''),
(193, 180, '_date_on_sale_to', ''),
(194, 180, '_enrollment_limit', '0'),
(195, 180, '_duration', '360'),
(196, 180, '_access_mode', 'one_time'),
(197, 180, '_show_curriculum', '1'),
(198, 180, '_highlights', '<ul><li><p>Praesent sapien massa.</p></li><li><p>Mauris blandit aliquet elit.</p></li><li><p>Proin eget tortor risus.</p></li></ul>'),
(199, 180, '_price', '17.99'),
(200, 180, '_regular_price', '17.99'),
(201, 180, '_category_ids', 'a:1:{i:0;i:12;}'),
(202, 180, '_difficulty_id', '5'),
(204, 180, '_average_rating', '0'),
(205, 180, '_review_count', '0'),
(206, 180, '_date_on_sale_from', ''),
(207, 180, '_date_on_sale_to', ''),
(208, 180, '_enrollment_limit', '0'),
(209, 180, '_duration', '360'),
(210, 180, '_access_mode', 'one_time'),
(211, 180, '_show_curriculum', '1'),
(212, 180, '_highlights', '<ul><li><p>Praesent sapien massa.</p></li><li><p>Mauris blandit aliquet elit.</p></li><li><p>Proin eget tortor risus.</p></li></ul>'),
(213, 180, '_price', '17.99'),
(214, 180, '_regular_price', '17.99'),
(215, 183, '_category_ids', 'a:1:{i:0;i:13;}'),
(216, 183, '_difficulty_id', '4'),
(218, 183, '_average_rating', '0'),
(219, 183, '_review_count', '0'),
(220, 183, '_date_on_sale_from', ''),
(221, 183, '_date_on_sale_to', ''),
(222, 183, '_enrollment_limit', '0'),
(223, 183, '_duration', '420'),
(224, 183, '_access_mode', 'one_time'),
(225, 183, '_show_curriculum', '1'),
(226, 183, '_highlights', '<ul><li><p>Nulla porttitor accumsan tincidunt.</p></li><li><p>Praesent sapien massa.</p></li><li><p>Vestibulum ante ipsum.</p></li></ul>'),
(227, 183, '_price', '12.99'),
(228, 183, '_regular_price', '12.99'),
(229, 183, '_category_ids', 'a:1:{i:0;i:13;}'),
(230, 183, '_difficulty_id', '4'),
(232, 183, '_average_rating', '0'),
(233, 183, '_review_count', '0'),
(234, 183, '_date_on_sale_from', ''),
(235, 183, '_date_on_sale_to', ''),
(236, 183, '_enrollment_limit', '0'),
(237, 183, '_duration', '420'),
(238, 183, '_access_mode', 'one_time'),
(239, 183, '_show_curriculum', '1'),
(240, 183, '_highlights', '<ul><li><p>Nulla porttitor accumsan tincidunt.</p></li><li><p>Praesent sapien massa.</p></li><li><p>Vestibulum ante ipsum.</p></li></ul>'),
(241, 183, '_price', '12.99'),
(242, 183, '_regular_price', '12.99'),
(243, 185, '_category_ids', 'a:2:{i:0;i:14;i:1;i:15;}'),
(244, 185, '_difficulty_id', '3'),
(246, 185, '_average_rating', '0'),
(247, 185, '_review_count', '0'),
(248, 185, '_date_on_sale_from', ''),
(249, 185, '_date_on_sale_to', ''),
(250, 185, '_enrollment_limit', '0'),
(251, 185, '_duration', '300'),
(252, 185, '_access_mode', 'one_time'),
(253, 185, '_show_curriculum', '1'),
(254, 185, '_highlights', '<ul><li><p>Vivamus suscipit tortor.</p></li><li><p>Curabitur aliquet quaid.</p></li><li><p>Donec sollicitudin esuada.</p></li></ul>'),
(255, 185, '_price', '15.99'),
(256, 185, '_regular_price', '15.99'),
(257, 185, '_category_ids', 'a:2:{i:0;i:14;i:1;i:15;}'),
(258, 185, '_difficulty_id', '3'),
(260, 185, '_average_rating', '0'),
(261, 185, '_review_count', '0'),
(262, 185, '_date_on_sale_from', ''),
(263, 185, '_date_on_sale_to', ''),
(264, 185, '_enrollment_limit', '0'),
(265, 185, '_duration', '300'),
(266, 185, '_access_mode', 'one_time'),
(267, 185, '_show_curriculum', '1'),
(268, 185, '_highlights', '<ul><li><p>Vivamus suscipit tortor.</p></li><li><p>Curabitur aliquet quaid.</p></li><li><p>Donec sollicitudin esuada.</p></li></ul>'),
(269, 185, '_price', '15.99'),
(270, 185, '_regular_price', '15.99'),
(271, 187, '_category_ids', 'a:1:{i:0;i:16;}'),
(272, 187, '_difficulty_id', '5'),
(274, 187, '_average_rating', '0'),
(275, 187, '_review_count', '0'),
(276, 187, '_date_on_sale_from', ''),
(277, 187, '_date_on_sale_to', ''),
(278, 187, '_enrollment_limit', '0'),
(279, 187, '_duration', '720'),
(280, 187, '_access_mode', 'one_time'),
(281, 187, '_show_curriculum', '1'),
(282, 187, '_highlights', '<ul><li><p>Pellentesque in ipsum id.</p></li><li><p>Yellentesque in ipsum id.</p></li><li><p>Llentesque in ipsum id.</p></li></ul>'),
(283, 187, '_price', '25.99'),
(284, 187, '_regular_price', '25.99'),
(285, 187, '_category_ids', 'a:1:{i:0;i:16;}'),
(286, 187, '_difficulty_id', '5'),
(288, 187, '_average_rating', '0'),
(289, 187, '_review_count', '0'),
(290, 187, '_date_on_sale_from', ''),
(291, 187, '_date_on_sale_to', ''),
(292, 187, '_enrollment_limit', '0'),
(293, 187, '_duration', '720'),
(294, 187, '_access_mode', 'one_time'),
(295, 187, '_show_curriculum', '1'),
(296, 187, '_highlights', '<ul><li><p>Pellentesque in ipsum id.</p></li><li><p>Yellentesque in ipsum id.</p></li><li><p>Llentesque in ipsum id.</p></li></ul>'),
(297, 187, '_price', '25.99'),
(298, 187, '_regular_price', '25.99'),
(299, 189, '_category_ids', 'a:2:{i:0;i:11;i:1;i:10;}'),
(300, 189, '_difficulty_id', '4'),
(302, 189, '_average_rating', '0'),
(303, 189, '_review_count', '0'),
(304, 189, '_date_on_sale_from', ''),
(305, 189, '_date_on_sale_to', ''),
(306, 189, '_enrollment_limit', '0'),
(307, 189, '_duration', '480'),
(308, 189, '_access_mode', 'one_time'),
(309, 189, '_show_curriculum', '1'),
(310, 189, '_highlights', '<ul><li><p>Suscipit tortor eget felis.</p></li><li><p>Curabitur arcu erat idimper.</p></li><li><p>Proin eget tortor risus.</p></li></ul>'),
(311, 189, '_price', '12.99'),
(312, 189, '_regular_price', '12.99'),
(313, 189, '_category_ids', 'a:2:{i:0;i:11;i:1;i:10;}'),
(314, 189, '_difficulty_id', '4'),
(316, 189, '_average_rating', '0'),
(317, 189, '_review_count', '0'),
(318, 189, '_date_on_sale_from', ''),
(319, 189, '_date_on_sale_to', ''),
(320, 189, '_enrollment_limit', '0'),
(321, 189, '_duration', '480'),
(322, 189, '_access_mode', 'one_time'),
(323, 189, '_show_curriculum', '1'),
(324, 189, '_highlights', '<ul><li><p>Suscipit tortor eget felis.</p></li><li><p>Curabitur arcu erat idimper.</p></li><li><p>Proin eget tortor risus.</p></li></ul>'),
(325, 189, '_price', '12.99'),
(326, 189, '_regular_price', '12.99'),
(327, 191, '_category_ids', 'a:2:{i:0;i:9;i:1;i:13;}'),
(328, 191, '_difficulty_id', '1'),
(330, 191, '_average_rating', '0'),
(331, 191, '_review_count', '0'),
(332, 191, '_date_on_sale_from', ''),
(333, 191, '_date_on_sale_to', ''),
(334, 191, '_enrollment_limit', '0'),
(335, 191, '_duration', '360'),
(336, 191, '_access_mode', 'open'),
(337, 191, '_show_curriculum', '1'),
(338, 191, '_highlights', '<ul><li><p>Sed porttitor lectus nibh.</p></li><li><p>Lorem ipsum dolor sit amet.</p></li><li><p>Curabitur aliquet quam id.</p></li></ul>'),
(339, 191, '_price', '0'),
(340, 191, '_regular_price', '0'),
(341, 191, '_category_ids', 'a:2:{i:0;i:9;i:1;i:13;}'),
(342, 191, '_difficulty_id', '1'),
(344, 191, '_average_rating', '0'),
(345, 191, '_review_count', '0'),
(346, 191, '_date_on_sale_from', ''),
(347, 191, '_date_on_sale_to', ''),
(348, 191, '_enrollment_limit', '0'),
(349, 191, '_duration', '360'),
(350, 191, '_access_mode', 'open'),
(351, 191, '_show_curriculum', '1'),
(352, 191, '_highlights', '<ul><li><p>Sed porttitor lectus nibh.</p></li><li><p>Lorem ipsum dolor sit amet.</p></li><li><p>Curabitur aliquet quam id.</p></li></ul>'),
(353, 191, '_price', '0'),
(354, 191, '_regular_price', '0'),
(355, 191, '_sale_price', ''),
(370, 607, '_video_source', 'self-hosted'),
(371, 607, '_video_playback_time', '0'),
(372, 607, '_average_rating', '0'),
(373, 607, '_review_count', '0'),
(374, 607, '_course_id', '191'),
(375, 608, '_video_source', 'self-hosted'),
(376, 608, '_video_playback_time', '0'),
(377, 608, '_average_rating', '0'),
(378, 608, '_review_count', '0'),
(379, 608, '_course_id', '191'),
(380, 609, '_video_source', 'self-hosted'),
(381, 609, '_video_playback_time', '0'),
(382, 609, '_average_rating', '0'),
(383, 609, '_review_count', '0'),
(384, 609, '_course_id', '191'),
(527, 606, '_course_id', '191'),
(528, 623, '_course_id', '191'),
(529, 623, '_pass_mark', '40'),
(530, 623, '_full_mark', '100'),
(531, 623, '_duration', '0'),
(532, 623, '_attempts_allowed', '0'),
(533, 623, '_questions_display_per_page', '5'),
(534, 624, '_type', 'multiple-choice'),
(535, 624, '_answer_required', '1'),
(536, 624, '_randomize', ''),
(537, 624, '_points', '1'),
(538, 624, '_course_id', '191'),
(539, 624, '_wp_old_slug', 'untitled-question'),
(630, 508, '_masteriyo_css', ''),
(632, 508, 'zakra_layout', 'tg-site-layout--customizer'),
(633, 508, 'zakra_remove_content_margin', '0'),
(634, 508, 'zakra_transparent_header', 'customizer'),
(635, 508, 'zakra_menu_item_color', ''),
(636, 508, 'zakra_menu_item_hover_color', ''),
(637, 508, 'zakra_menu_item_active_color', ''),
(638, 508, 'zakra_page_header', '1'),
(639, 508, 'zakra_logo', '0'),
(641, 508, '_masteriyo_css', ''),
(643, 508, 'zakra_layout', 'tg-site-layout--customizer'),
(644, 508, 'zakra_remove_content_margin', '0'),
(645, 508, 'zakra_transparent_header', 'customizer'),
(646, 508, 'zakra_menu_item_color', ''),
(647, 508, 'zakra_menu_item_hover_color', ''),
(648, 508, 'zakra_menu_item_active_color', ''),
(649, 508, 'zakra_page_header', '1'),
(650, 508, 'zakra_logo', '0'),
(654, 511, '_masteriyo_css', ''),
(656, 511, '_blockart_active', 'yes'),
(657, 511, '_blockart_css', ''),
(658, 511, 'zakra_layout', 'tg-site-layout--customizer'),
(659, 511, 'zakra_remove_content_margin', '0'),
(660, 511, 'zakra_transparent_header', 'customizer'),
(661, 511, 'zakra_menu_item_color', ''),
(662, 511, 'zakra_menu_item_hover_color', ''),
(663, 511, 'zakra_menu_item_active_color', ''),
(664, 511, 'zakra_page_header', '1'),
(665, 511, 'zakra_logo', '0'),
(666, 511, '_masteriyo_css', ''),
(668, 511, '_blockart_active', 'yes'),
(669, 511, '_blockart_css', ''),
(670, 511, 'zakra_layout', 'tg-site-layout--customizer'),
(671, 511, 'zakra_remove_content_margin', '0'),
(672, 511, 'zakra_transparent_header', 'customizer'),
(673, 511, 'zakra_menu_item_color', ''),
(674, 511, 'zakra_menu_item_hover_color', ''),
(675, 511, 'zakra_menu_item_active_color', ''),
(676, 511, 'zakra_page_header', '1'),
(677, 511, 'zakra_logo', '0'),
(681, 521, '_masteriyo_css', ''),
(682, 521, 'zakra_layout', 'tg-site-layout--customizer'),
(683, 521, 'zakra_remove_content_margin', '0'),
(684, 521, 'zakra_transparent_header', 'customizer'),
(685, 521, 'zakra_menu_item_color', ''),
(686, 521, 'zakra_menu_item_hover_color', ''),
(687, 521, 'zakra_menu_item_active_color', ''),
(688, 521, 'zakra_page_header', '1'),
(689, 521, 'zakra_logo', '0'),
(691, 521, '_masteriyo_css', ''),
(692, 521, 'zakra_layout', 'tg-site-layout--customizer'),
(693, 521, 'zakra_remove_content_margin', '0'),
(694, 521, 'zakra_transparent_header', 'customizer'),
(695, 521, 'zakra_menu_item_color', ''),
(696, 521, 'zakra_menu_item_hover_color', ''),
(697, 521, 'zakra_menu_item_active_color', ''),
(698, 521, 'zakra_page_header', '1'),
(699, 521, 'zakra_logo', '0'),
(716, 180, '_category_ids', 'a:1:{i:0;i:12;}'),
(717, 180, '_difficulty_id', '5'),
(719, 180, '_average_rating', '0'),
(720, 180, '_review_count', '0'),
(721, 180, '_date_on_sale_from', ''),
(722, 180, '_date_on_sale_to', ''),
(723, 180, '_enrollment_limit', '0'),
(724, 180, '_duration', '360'),
(725, 180, '_access_mode', 'one_time'),
(726, 180, '_show_curriculum', '1'),
(727, 180, '_highlights', '<ul><li><p>Praesent sapien massa.</p></li><li><p>Mauris blandit aliquet elit.</p></li><li><p>Proin eget tortor risus.</p></li></ul>'),
(728, 180, '_price', '17.99'),
(729, 180, '_regular_price', '17.99'),
(730, 180, '_category_ids', 'a:1:{i:0;i:12;}'),
(731, 180, '_difficulty_id', '5'),
(733, 180, '_average_rating', '0'),
(734, 180, '_review_count', '0'),
(735, 180, '_date_on_sale_from', ''),
(736, 180, '_date_on_sale_to', ''),
(737, 180, '_enrollment_limit', '0'),
(738, 180, '_duration', '360'),
(739, 180, '_access_mode', 'one_time'),
(740, 180, '_show_curriculum', '1'),
(741, 180, '_highlights', '<ul><li><p>Praesent sapien massa.</p></li><li><p>Mauris blandit aliquet elit.</p></li><li><p>Proin eget tortor risus.</p></li></ul>'),
(742, 180, '_price', '17.99'),
(743, 180, '_regular_price', '17.99'),
(744, 183, '_category_ids', 'a:1:{i:0;i:13;}'),
(745, 183, '_difficulty_id', '4'),
(747, 183, '_average_rating', '0'),
(748, 183, '_review_count', '0'),
(749, 183, '_date_on_sale_from', ''),
(750, 183, '_date_on_sale_to', ''),
(751, 183, '_enrollment_limit', '0'),
(752, 183, '_duration', '420'),
(753, 183, '_access_mode', 'one_time'),
(754, 183, '_show_curriculum', '1'),
(755, 183, '_highlights', '<ul><li><p>Nulla porttitor accumsan tincidunt.</p></li><li><p>Praesent sapien massa.</p></li><li><p>Vestibulum ante ipsum.</p></li></ul>'),
(756, 183, '_price', '12.99'),
(757, 183, '_regular_price', '12.99'),
(758, 183, '_category_ids', 'a:1:{i:0;i:13;}'),
(759, 183, '_difficulty_id', '4'),
(761, 183, '_average_rating', '0'),
(762, 183, '_review_count', '0'),
(763, 183, '_date_on_sale_from', ''),
(764, 183, '_date_on_sale_to', ''),
(765, 183, '_enrollment_limit', '0'),
(766, 183, '_duration', '420'),
(767, 183, '_access_mode', 'one_time'),
(768, 183, '_show_curriculum', '1'),
(769, 183, '_highlights', '<ul><li><p>Nulla porttitor accumsan tincidunt.</p></li><li><p>Praesent sapien massa.</p></li><li><p>Vestibulum ante ipsum.</p></li></ul>'),
(770, 183, '_price', '12.99'),
(771, 183, '_regular_price', '12.99'),
(772, 185, '_category_ids', 'a:2:{i:0;i:14;i:1;i:15;}'),
(773, 185, '_difficulty_id', '3'),
(775, 185, '_average_rating', '0'),
(776, 185, '_review_count', '0'),
(777, 185, '_date_on_sale_from', ''),
(778, 185, '_date_on_sale_to', ''),
(779, 185, '_enrollment_limit', '0'),
(780, 185, '_duration', '300'),
(781, 185, '_access_mode', 'one_time'),
(782, 185, '_show_curriculum', '1'),
(783, 185, '_highlights', '<ul><li><p>Vivamus suscipit tortor.</p></li><li><p>Curabitur aliquet quaid.</p></li><li><p>Donec sollicitudin esuada.</p></li></ul>'),
(784, 185, '_price', '15.99'),
(785, 185, '_regular_price', '15.99'),
(786, 185, '_category_ids', 'a:2:{i:0;i:14;i:1;i:15;}'),
(787, 185, '_difficulty_id', '3'),
(789, 185, '_average_rating', '0'),
(790, 185, '_review_count', '0'),
(791, 185, '_date_on_sale_from', ''),
(792, 185, '_date_on_sale_to', ''),
(793, 185, '_enrollment_limit', '0'),
(794, 185, '_duration', '300'),
(795, 185, '_access_mode', 'one_time'),
(796, 185, '_show_curriculum', '1'),
(797, 185, '_highlights', '<ul><li><p>Vivamus suscipit tortor.</p></li><li><p>Curabitur aliquet quaid.</p></li><li><p>Donec sollicitudin esuada.</p></li></ul>'),
(798, 185, '_price', '15.99'),
(799, 185, '_regular_price', '15.99'),
(800, 187, '_category_ids', 'a:1:{i:0;i:16;}'),
(801, 187, '_difficulty_id', '5'),
(803, 187, '_average_rating', '0'),
(804, 187, '_review_count', '0'),
(805, 187, '_date_on_sale_from', ''),
(806, 187, '_date_on_sale_to', ''),
(807, 187, '_enrollment_limit', '0'),
(808, 187, '_duration', '720'),
(809, 187, '_access_mode', 'one_time'),
(810, 187, '_show_curriculum', '1'),
(811, 187, '_highlights', '<ul><li><p>Pellentesque in ipsum id.</p></li><li><p>Yellentesque in ipsum id.</p></li><li><p>Llentesque in ipsum id.</p></li></ul>'),
(812, 187, '_price', '25.99'),
(813, 187, '_regular_price', '25.99'),
(814, 187, '_category_ids', 'a:1:{i:0;i:16;}'),
(815, 187, '_difficulty_id', '5'),
(817, 187, '_average_rating', '0'),
(818, 187, '_review_count', '0'),
(819, 187, '_date_on_sale_from', ''),
(820, 187, '_date_on_sale_to', ''),
(821, 187, '_enrollment_limit', '0'),
(822, 187, '_duration', '720'),
(823, 187, '_access_mode', 'one_time'),
(824, 187, '_show_curriculum', '1'),
(825, 187, '_highlights', '<ul><li><p>Pellentesque in ipsum id.</p></li><li><p>Yellentesque in ipsum id.</p></li><li><p>Llentesque in ipsum id.</p></li></ul>'),
(826, 187, '_price', '25.99'),
(827, 187, '_regular_price', '25.99'),
(828, 189, '_category_ids', 'a:2:{i:0;i:11;i:1;i:10;}'),
(829, 189, '_difficulty_id', '4'),
(831, 189, '_average_rating', '0'),
(832, 189, '_review_count', '0'),
(833, 189, '_date_on_sale_from', ''),
(834, 189, '_date_on_sale_to', ''),
(835, 189, '_enrollment_limit', '0'),
(836, 189, '_duration', '480'),
(837, 189, '_access_mode', 'one_time'),
(838, 189, '_show_curriculum', '1'),
(839, 189, '_highlights', '<ul><li><p>Suscipit tortor eget felis.</p></li><li><p>Curabitur arcu erat idimper.</p></li><li><p>Proin eget tortor risus.</p></li></ul>'),
(840, 189, '_price', '12.99'),
(841, 189, '_regular_price', '12.99'),
(842, 189, '_category_ids', 'a:2:{i:0;i:11;i:1;i:10;}'),
(843, 189, '_difficulty_id', '4'),
(845, 189, '_average_rating', '0'),
(846, 189, '_review_count', '0'),
(847, 189, '_date_on_sale_from', ''),
(848, 189, '_date_on_sale_to', ''),
(849, 189, '_enrollment_limit', '0'),
(850, 189, '_duration', '480'),
(851, 189, '_access_mode', 'one_time'),
(852, 189, '_show_curriculum', '1'),
(853, 189, '_highlights', '<ul><li><p>Suscipit tortor eget felis.</p></li><li><p>Curabitur arcu erat idimper.</p></li><li><p>Proin eget tortor risus.</p></li></ul>'),
(854, 189, '_price', '12.99'),
(855, 189, '_regular_price', '12.99'),
(856, 191, '_category_ids', 'a:2:{i:0;i:9;i:1;i:13;}'),
(857, 191, '_difficulty_id', '1'),
(859, 191, '_average_rating', '0'),
(860, 191, '_review_count', '0'),
(861, 191, '_date_on_sale_from', ''),
(862, 191, '_date_on_sale_to', ''),
(863, 191, '_enrollment_limit', '0'),
(864, 191, '_duration', '360'),
(865, 191, '_access_mode', 'open'),
(866, 191, '_show_curriculum', '1'),
(867, 191, '_highlights', '<ul><li><p>Sed porttitor lectus nibh.</p></li><li><p>Lorem ipsum dolor sit amet.</p></li><li><p>Curabitur aliquet quam id.</p></li></ul>'),
(868, 191, '_price', '0'),
(869, 191, '_regular_price', '0'),
(870, 191, '_category_ids', 'a:2:{i:0;i:9;i:1;i:13;}'),
(871, 191, '_difficulty_id', '1'),
(873, 191, '_average_rating', '0'),
(874, 191, '_review_count', '0'),
(875, 191, '_date_on_sale_from', ''),
(876, 191, '_date_on_sale_to', ''),
(877, 191, '_enrollment_limit', '0'),
(878, 191, '_duration', '360'),
(879, 191, '_access_mode', 'open'),
(880, 191, '_show_curriculum', '1'),
(881, 191, '_highlights', '<ul><li><p>Sed porttitor lectus nibh.</p></li><li><p>Lorem ipsum dolor sit amet.</p></li><li><p>Curabitur aliquet quam id.</p></li></ul>'),
(882, 191, '_price', '0'),
(883, 191, '_regular_price', '0'),
(884, 191, '_sale_price', ''),
(885, 607, '_video_source', 'self-hosted'),
(886, 607, '_video_playback_time', '0'),
(887, 607, '_average_rating', '0'),
(888, 607, '_review_count', '0'),
(889, 607, '_course_id', '191'),
(890, 608, '_video_source', 'self-hosted'),
(891, 608, '_video_playback_time', '0'),
(892, 608, '_average_rating', '0'),
(893, 608, '_review_count', '0'),
(894, 608, '_course_id', '191'),
(895, 609, '_video_source', 'self-hosted'),
(896, 609, '_video_playback_time', '0'),
(897, 609, '_average_rating', '0'),
(898, 609, '_review_count', '0'),
(899, 609, '_course_id', '191'),
(970, 638, '_menu_item_type', 'custom'),
(971, 638, '_menu_item_menu_item_parent', '0'),
(972, 638, '_menu_item_object_id', '638'),
(973, 638, '_menu_item_object', 'custom'),
(974, 638, '_menu_item_target', ''),
(975, 638, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(976, 638, '_menu_item_xfn', ''),
(977, 638, '_menu_item_url', '#'),
(978, 639, '_menu_item_type', 'custom'),
(979, 639, '_menu_item_menu_item_parent', '0'),
(980, 639, '_menu_item_object_id', '639'),
(981, 639, '_menu_item_object', 'custom'),
(982, 639, '_menu_item_target', ''),
(983, 639, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(984, 639, '_menu_item_xfn', ''),
(985, 639, '_menu_item_url', '#'),
(986, 640, '_menu_item_type', 'custom'),
(987, 640, '_menu_item_menu_item_parent', '0'),
(988, 640, '_menu_item_object_id', '640'),
(989, 640, '_menu_item_object', 'custom'),
(990, 640, '_menu_item_target', ''),
(991, 640, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(992, 640, '_menu_item_xfn', ''),
(993, 640, '_menu_item_url', '#'),
(994, 641, '_menu_item_type', 'custom'),
(995, 641, '_menu_item_menu_item_parent', '0'),
(996, 641, '_menu_item_object_id', '641'),
(997, 641, '_menu_item_object', 'custom'),
(998, 641, '_menu_item_target', ''),
(999, 641, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1000, 641, '_menu_item_xfn', ''),
(1001, 641, '_menu_item_url', '#'),
(1002, 642, '_menu_item_type', 'custom'),
(1003, 642, '_menu_item_menu_item_parent', '0'),
(1004, 642, '_menu_item_object_id', '642'),
(1005, 642, '_menu_item_object', 'custom'),
(1006, 642, '_menu_item_target', ''),
(1007, 642, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1008, 642, '_menu_item_xfn', ''),
(1009, 642, '_menu_item_url', '#'),
(1010, 643, '_menu_item_type', 'custom'),
(1011, 643, '_menu_item_menu_item_parent', '0'),
(1012, 643, '_menu_item_object_id', '643'),
(1013, 643, '_menu_item_object', 'custom'),
(1014, 643, '_menu_item_target', ''),
(1015, 643, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1016, 643, '_menu_item_xfn', ''),
(1017, 643, '_menu_item_url', '#'),
(1018, 644, '_menu_item_type', 'custom'),
(1019, 644, '_menu_item_menu_item_parent', '0'),
(1020, 644, '_menu_item_object_id', '644'),
(1021, 644, '_menu_item_object', 'custom'),
(1022, 644, '_menu_item_target', ''),
(1023, 644, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1024, 644, '_menu_item_xfn', ''),
(1025, 644, '_menu_item_url', '#'),
(1026, 645, '_menu_item_type', 'custom'),
(1027, 645, '_menu_item_menu_item_parent', '0'),
(1028, 645, '_menu_item_object_id', '645'),
(1029, 645, '_menu_item_object', 'custom'),
(1030, 645, '_menu_item_target', ''),
(1031, 645, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1032, 645, '_menu_item_xfn', ''),
(1033, 645, '_menu_item_url', '#'),
(1034, 646, '_menu_item_type', 'custom'),
(1035, 646, '_menu_item_menu_item_parent', '0'),
(1036, 646, '_menu_item_object_id', '646'),
(1037, 646, '_menu_item_object', 'custom'),
(1038, 646, '_menu_item_target', ''),
(1039, 646, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1040, 646, '_menu_item_xfn', ''),
(1041, 646, '_menu_item_url', '#'),
(1042, 606, '_course_id', '191'),
(1043, 623, '_course_id', '191'),
(1044, 623, '_pass_mark', '40'),
(1045, 623, '_full_mark', '100'),
(1046, 623, '_duration', '0'),
(1047, 623, '_attempts_allowed', '0'),
(1048, 623, '_questions_display_per_page', '5'),
(1049, 624, '_type', 'multiple-choice'),
(1050, 624, '_answer_required', '1'),
(1051, 624, '_randomize', ''),
(1052, 624, '_points', '1'),
(1053, 624, '_course_id', '191'),
(1054, 624, '_wp_old_slug', 'untitled-question'),
(1143, 508, '_masteriyo_css', ''),
(1145, 508, 'zakra_layout', 'tg-site-layout--customizer'),
(1146, 508, 'zakra_remove_content_margin', '0'),
(1147, 508, 'zakra_transparent_header', 'customizer'),
(1148, 508, 'zakra_menu_item_color', ''),
(1149, 508, 'zakra_menu_item_hover_color', ''),
(1150, 508, 'zakra_menu_item_active_color', ''),
(1151, 508, 'zakra_page_header', '1'),
(1152, 508, 'zakra_logo', '0'),
(1153, 508, '_encloseme', '1'),
(1154, 508, '_masteriyo_css', ''),
(1156, 508, 'zakra_layout', 'tg-site-layout--customizer'),
(1157, 508, 'zakra_remove_content_margin', '0'),
(1158, 508, 'zakra_transparent_header', 'customizer'),
(1159, 508, 'zakra_menu_item_color', ''),
(1160, 508, 'zakra_menu_item_hover_color', ''),
(1161, 508, 'zakra_menu_item_active_color', ''),
(1162, 508, 'zakra_page_header', '1'),
(1163, 508, 'zakra_logo', '0'),
(1164, 508, '_encloseme', '1'),
(1165, 511, '_masteriyo_css', ''),
(1167, 511, '_blockart_active', 'yes'),
(1168, 511, '_blockart_css', ''),
(1169, 511, 'zakra_layout', 'tg-site-layout--customizer'),
(1170, 511, 'zakra_remove_content_margin', '0'),
(1171, 511, 'zakra_transparent_header', 'customizer'),
(1172, 511, 'zakra_menu_item_color', ''),
(1173, 511, 'zakra_menu_item_hover_color', ''),
(1174, 511, 'zakra_menu_item_active_color', ''),
(1175, 511, 'zakra_page_header', '1'),
(1176, 511, 'zakra_logo', '0'),
(1177, 511, '_masteriyo_css', ''),
(1179, 511, '_blockart_active', 'yes'),
(1180, 511, '_blockart_css', ''),
(1181, 511, 'zakra_layout', 'tg-site-layout--customizer'),
(1182, 511, 'zakra_remove_content_margin', '0'),
(1183, 511, 'zakra_transparent_header', 'customizer'),
(1184, 511, 'zakra_menu_item_color', ''),
(1185, 511, 'zakra_menu_item_hover_color', ''),
(1186, 511, 'zakra_menu_item_active_color', ''),
(1187, 511, 'zakra_page_header', '1'),
(1188, 511, 'zakra_logo', '0'),
(1190, 521, '_masteriyo_css', ''),
(1191, 521, 'zakra_layout', 'tg-site-layout--customizer'),
(1192, 521, 'zakra_remove_content_margin', '0'),
(1193, 521, 'zakra_transparent_header', 'customizer'),
(1194, 521, 'zakra_menu_item_color', ''),
(1195, 521, 'zakra_menu_item_hover_color', ''),
(1196, 521, 'zakra_menu_item_active_color', ''),
(1197, 521, 'zakra_page_header', '1'),
(1198, 521, 'zakra_logo', '0'),
(1200, 521, '_masteriyo_css', ''),
(1201, 521, 'zakra_layout', 'tg-site-layout--customizer'),
(1202, 521, 'zakra_remove_content_margin', '0'),
(1203, 521, 'zakra_transparent_header', 'customizer'),
(1204, 521, 'zakra_menu_item_color', ''),
(1205, 521, 'zakra_menu_item_hover_color', ''),
(1206, 521, 'zakra_menu_item_active_color', ''),
(1207, 521, 'zakra_page_header', '1'),
(1208, 521, 'zakra_logo', '0'),
(1258, 657, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(1259, 657, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <wordpress@test.in>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1260, 657, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <wordpress@test.in>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1261, 657, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(1262, 657, '_additional_settings', ''),
(1263, 657, '_locale', 'en_US'),
(1264, 643, '_wp_old_date', '2022-05-13'),
(1265, 644, '_wp_old_date', '2022-05-13'),
(1266, 645, '_wp_old_date', '2022-05-13'),
(1267, 646, '_wp_old_date', '2022-05-13'),
(1268, 659, '_edit_last', '1'),
(1269, 659, '_edit_lock', '1652943086:1'),
(1270, 661, '_edit_last', '1'),
(1271, 661, '_edit_lock', '1652874557:1'),
(1272, 664, '_edit_lock', '1652874594:1'),
(1273, 664, '_edit_last', '1'),
(1274, 665, '_edit_last', '1'),
(1275, 665, '_edit_lock', '1652874569:1'),
(1276, 667, '_edit_lock', '1652874581:1'),
(1277, 667, '_edit_last', '1'),
(1281, 670, '_wp_trash_meta_status', 'publish'),
(1282, 670, '_wp_trash_meta_time', '1652771481'),
(1288, 679, '_wp_attached_file', '2022/05/Artboard-1-100-1.jpg'),
(1289, 679, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:528;s:4:\"file\";s:28:\"2022/05/Artboard-1-100-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1292, 681, '_wp_attached_file', '2022/05/Artboard-1-100-1-3.jpg'),
(1293, 681, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:30:\"2022/05/Artboard-1-100-1-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1303, 683, '_menu_item_type', 'post_type'),
(1304, 683, '_menu_item_menu_item_parent', '0'),
(1305, 683, '_menu_item_object_id', '665'),
(1306, 683, '_menu_item_object', 'page'),
(1307, 683, '_menu_item_target', ''),
(1308, 683, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1309, 683, '_menu_item_xfn', ''),
(1310, 683, '_menu_item_url', ''),
(1312, 684, '_menu_item_type', 'post_type'),
(1313, 684, '_menu_item_menu_item_parent', '0'),
(1314, 684, '_menu_item_object_id', '661'),
(1315, 684, '_menu_item_object', 'page'),
(1316, 684, '_menu_item_target', ''),
(1317, 684, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1318, 684, '_menu_item_xfn', ''),
(1319, 684, '_menu_item_url', ''),
(1321, 685, '_menu_item_type', 'post_type'),
(1322, 685, '_menu_item_menu_item_parent', '0'),
(1323, 685, '_menu_item_object_id', '659'),
(1324, 685, '_menu_item_object', 'page'),
(1325, 685, '_menu_item_target', ''),
(1326, 685, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1327, 685, '_menu_item_xfn', ''),
(1328, 685, '_menu_item_url', ''),
(1332, 687, '_wp_attached_file', '2022/05/Artboard-1-1-1.png'),
(1333, 687, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:26:\"2022/05/Artboard-1-1-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1334, 688, '_edit_lock', '1652790569:1'),
(1335, 688, '_edit_last', '1'),
(1337, 688, 'tss_designation', 'Ceo & Founder'),
(1338, 688, 'tss_company', ''),
(1339, 688, 'tss_location', ''),
(1340, 688, 'tss_rating', '4'),
(1341, 688, 'tss_video', ''),
(1342, 688, 'tss_social_media', NULL),
(1343, 690, '_edit_lock', '1652790263:1'),
(1344, 690, '_edit_last', '1'),
(1346, 690, 'tss_designation', 'Entrepreneur'),
(1347, 690, 'tss_company', ''),
(1348, 690, 'tss_location', ''),
(1349, 690, 'tss_rating', '0'),
(1350, 690, 'tss_video', ''),
(1351, 690, 'tss_social_media', NULL),
(1352, 692, '_edit_lock', '1652790246:1'),
(1353, 692, '_edit_last', '1'),
(1355, 692, 'tss_designation', 'Freelancer'),
(1356, 692, 'tss_company', ''),
(1357, 692, 'tss_location', ''),
(1358, 692, 'tss_rating', '4'),
(1359, 692, 'tss_video', ''),
(1360, 692, 'tss_social_media', NULL),
(1361, 694, '_edit_lock', '1652791730:1'),
(1362, 694, '_edit_last', '1'),
(1363, 694, 'layout_type', 'slider'),
(1364, 694, 'tss_layout', 'carousel3'),
(1365, 694, 'tss_desktop_column', '3'),
(1366, 694, 'tss_tab_column', '2'),
(1367, 694, 'tss_mobile_column', '1'),
(1368, 694, 'tss_carousel_speed', '2000'),
(1372, 694, 'tss_carousel_autoplay_timeout', '5000'),
(1373, 694, 'tss_pagination', ''),
(1374, 694, 'tss_posts_per_page', '5'),
(1375, 694, 'tss_load_more_button_text', 'Load more'),
(1376, 694, 'tss_image_size', 'thumbnail'),
(1377, 694, 'tss_custom_image_size', 'a:3:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:4:\"crop\";s:4:\"soft\";}'),
(1378, 694, 'tss_image_type', 'circle'),
(1379, 694, 'tss_testimonial_limit', ''),
(1380, 694, 'tss_margin', 'default'),
(1381, 694, 'tss_grid_style', 'even'),
(1382, 694, 'tss_detail_page_link', ''),
(1383, 694, 'default_preview_image', '0'),
(1384, 694, 'tss_post__in', ''),
(1385, 694, 'tss_post__not_in', ''),
(1386, 694, 'tss_limit', ''),
(1389, 694, 'tss_taxonomy_relation', ''),
(1390, 694, 'tss_order_by', 'date'),
(1391, 694, 'tss_order', 'DESC'),
(1397, 694, 'tss_parent_class', ''),
(1398, 694, 'tss_color', NULL),
(1399, 694, 'tss_button_style', NULL),
(1400, 694, 'tss_iso_counter_tooltip_bg_color', NULL),
(1401, 694, 'tss_iso_counter_tooltip_text_color', NULL),
(1402, 694, 'tss_gutter', ''),
(1403, 694, 'tss_image_border', 'a:1:{s:5:\"style\";s:5:\"solid\";}'),
(1404, 694, 'tss_author_name_style', NULL),
(1405, 694, 'tss_author_bio_style', NULL),
(1406, 694, 'tss_rating_style', NULL),
(1407, 694, 'tss_social_style', NULL),
(1408, 694, 'tss_testimonial_style', NULL),
(1409, 694, '_rtts_sc_tab', 'layout'),
(1420, 695, '_edit_lock', '1652790234:1'),
(1421, 695, '_edit_last', '1'),
(1422, 695, 'tss_designation', 'Designer'),
(1423, 695, 'tss_company', ''),
(1424, 695, 'tss_location', ''),
(1425, 695, 'tss_rating', '0'),
(1426, 695, 'tss_video', ''),
(1427, 695, 'tss_social_media', NULL),
(1438, 694, 'tss_carousel_options', 'loop'),
(1439, 694, 'tss_carousel_options', 'autoplay'),
(1440, 694, 'tss_carousel_options', 'dots'),
(1441, 694, 'tss_categories', ''),
(1442, 694, 'tss_tags', ''),
(1443, 694, 'tss_item_fields', 'author'),
(1444, 694, 'tss_item_fields', 'author_img'),
(1445, 694, 'tss_item_fields', 'testimonial'),
(1446, 694, 'tss_item_fields', 'designation'),
(1447, 694, 'social_share_items', ''),
(1491, 702, '_edit_lock', '1653288964:1'),
(1492, 702, '_edit_last', '1'),
(1493, 703, '_edit_lock', '1653288983:1'),
(1494, 703, '_edit_last', '1'),
(1496, 704, '_edit_lock', '1653288997:1'),
(1497, 704, '_edit_last', '1'),
(1499, 705, '_edit_lock', '1652853926:1'),
(1500, 705, '_edit_last', '1'),
(1501, 706, '_wp_attached_file', '2022/05/3.png'),
(1502, 706, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:406;s:6:\"height\";i:271;s:4:\"file\";s:13:\"2022/05/3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1503, 707, '_wp_attached_file', '2022/05/Untitled-1.png'),
(1504, 707, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:591;s:6:\"height\";i:552;s:4:\"file\";s:22:\"2022/05/Untitled-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1505, 708, '_wp_attached_file', '2022/05/2.png'),
(1506, 708, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:406;s:6:\"height\";i:271;s:4:\"file\";s:13:\"2022/05/2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1509, 710, '_wp_attached_file', '2022/05/canada.png'),
(1510, 710, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:406;s:6:\"height\";i:271;s:4:\"file\";s:18:\"2022/05/canada.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1511, 705, '_thumbnail_id', '708'),
(1512, 711, '_edit_lock', '1653477612:1'),
(1513, 711, '_edit_last', '1'),
(1514, 711, '_thumbnail_id', '792'),
(1515, 712, '_edit_lock', '1653477145:1'),
(1516, 712, '_edit_last', '1'),
(1517, 712, '_thumbnail_id', '791'),
(1518, 713, '_edit_lock', '1653541486:1'),
(1519, 713, '_edit_last', '1'),
(1520, 713, '_thumbnail_id', '793'),
(1521, 718, '_wp_trash_meta_status', 'publish'),
(1522, 718, '_wp_trash_meta_time', '1652872274'),
(1523, 659, '_wp_page_template', 'templates/home.php'),
(1524, 702, '_thumbnail_id', '719'),
(1525, 719, '_wp_attached_file', '2022/05/download-_1_.jpg'),
(1526, 719, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:24:\"2022/05/download-_1_.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1527, 720, '_wp_attached_file', '2022/05/download.jpg'),
(1528, 720, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2022/05/download.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1529, 703, '_thumbnail_id', '720'),
(1530, 704, '_thumbnail_id', '719'),
(1531, 661, '_wp_page_template', 'inner_pages/contact.php'),
(1532, 665, '_wp_page_template', 'inner_pages/consultation.php'),
(1533, 667, '_wp_page_template', 'inner_pages/calculator.php'),
(1534, 664, '_wp_page_template', 'inner_pages/services.php'),
(1535, 722, '_menu_item_type', 'post_type'),
(1536, 722, '_menu_item_menu_item_parent', '0'),
(1537, 722, '_menu_item_object_id', '664'),
(1538, 722, '_menu_item_object', 'page'),
(1539, 722, '_menu_item_target', ''),
(1540, 722, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1541, 722, '_menu_item_xfn', ''),
(1542, 722, '_menu_item_url', ''),
(1544, 685, '_wp_old_date', '2022-05-17'),
(1546, 683, '_wp_old_date', '2022-05-17'),
(1547, 684, '_wp_old_date', '2022-05-17'),
(1548, 723, '_edit_lock', '1653386944:1'),
(1549, 723, '_edit_last', '1'),
(1550, 723, '_thumbnail_id', '706'),
(1551, 724, '_edit_lock', '1652940933:1'),
(1552, 724, '_edit_last', '1'),
(1553, 724, '_thumbnail_id', '706'),
(1554, 725, '_edit_lock', '1653281043:1'),
(1555, 725, '_edit_last', '1'),
(1556, 725, '_thumbnail_id', '708'),
(1557, 726, '_edit_lock', '1653046762:1'),
(1558, 726, '_edit_last', '1'),
(1559, 726, '_thumbnail_id', '710'),
(1560, 727, '_edit_lock', '1652946676:1'),
(1561, 727, '_edit_last', '1'),
(1562, 727, '_thumbnail_id', '706'),
(1563, 728, '_edit_lock', '1652946885:1'),
(1564, 728, '_edit_last', '1'),
(1565, 728, '_thumbnail_id', '710'),
(1566, 730, '_edit_lock', '1653288364:1'),
(1567, 730, '_edit_last', '1'),
(1568, 731, '_wp_attached_file', '2022/05/men-age-group-5.png'),
(1569, 731, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:27:\"2022/05/men-age-group-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1570, 732, '_wp_attached_file', '2022/05/download-1.png'),
(1571, 732, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:216;s:6:\"height\";i:233;s:4:\"file\";s:22:\"2022/05/download-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1572, 733, '_wp_attached_file', '2022/05/download.png'),
(1573, 733, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:216;s:6:\"height\";i:233;s:4:\"file\";s:20:\"2022/05/download.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1577, 735, '_edit_lock', '1653374432:1'),
(1578, 735, '_edit_last', '1'),
(1579, 735, '_thumbnail_id', '732'),
(1580, 736, '_edit_lock', '1653373843:1'),
(1581, 736, '_edit_last', '1'),
(1582, 736, '_thumbnail_id', '733'),
(1583, 737, '_edit_lock', '1653373732:1'),
(1584, 737, '_edit_last', '1'),
(1585, 737, '_thumbnail_id', '731'),
(1586, 738, '_edit_lock', '1653373671:1'),
(1587, 738, '_edit_last', '1'),
(1588, 738, '_thumbnail_id', '732'),
(1589, 739, '_edit_lock', '1653373645:1'),
(1590, 739, '_edit_last', '1'),
(1591, 739, '_thumbnail_id', '731'),
(1592, 740, '_edit_lock', '1653047324:1'),
(1593, 740, '_edit_last', '1'),
(1594, 742, '_edit_lock', '1653290129:1'),
(1595, 742, '_edit_last', '1'),
(1596, 742, '_thumbnail_id', '720'),
(1597, 743, '_wp_attached_file', '2022/05/images.png'),
(1598, 743, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:18:\"2022/05/images.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1599, 730, '_thumbnail_id', '743'),
(1600, 742, 'designation', 'Designer'),
(1601, 704, 'designation', 'Developer'),
(1602, 703, 'designation', 'SEO'),
(1603, 702, 'designation', 'BDA'),
(1605, 745, '_wp_trash_meta_status', 'publish'),
(1606, 745, '_wp_trash_meta_time', '1653307036'),
(1607, 740, '_wp_trash_meta_status', 'publish'),
(1608, 740, '_wp_trash_meta_time', '1653367592'),
(1609, 740, '_wp_desired_post_slug', 'family-sponsorship'),
(1610, 685, '_wp_old_date', '2022-05-18'),
(1611, 722, '_wp_old_date', '2022-05-18'),
(1613, 683, '_wp_old_date', '2022-05-18'),
(1614, 684, '_wp_old_date', '2022-05-18'),
(1616, 750, '_edit_lock', '1653371613:1'),
(1617, 750, '_edit_last', '1'),
(1618, 751, '_edit_lock', '1653371685:1'),
(1619, 751, '_edit_last', '1'),
(1620, 752, '_edit_last', '1'),
(1621, 752, '_edit_lock', '1653371697:1'),
(1622, 753, '_edit_last', '1'),
(1623, 753, '_edit_lock', '1653371710:1'),
(1624, 754, '_edit_last', '1'),
(1625, 754, '_edit_lock', '1653371729:1'),
(1626, 755, '_edit_last', '1'),
(1627, 755, '_edit_lock', '1653371746:1'),
(1628, 755, '_wp_trash_meta_status', 'publish'),
(1629, 755, '_wp_trash_meta_time', '1653373313'),
(1630, 755, '_wp_desired_post_slug', 'citizenship'),
(1631, 754, '_wp_trash_meta_status', 'publish'),
(1632, 754, '_wp_trash_meta_time', '1653373321'),
(1633, 754, '_wp_desired_post_slug', 'visitor-visa'),
(1634, 753, '_wp_trash_meta_status', 'publish'),
(1635, 753, '_wp_trash_meta_time', '1653373321'),
(1636, 753, '_wp_desired_post_slug', 'work'),
(1637, 752, '_wp_trash_meta_status', 'publish'),
(1638, 752, '_wp_trash_meta_time', '1653373321'),
(1639, 752, '_wp_desired_post_slug', 'study'),
(1640, 751, '_wp_trash_meta_status', 'publish'),
(1641, 751, '_wp_trash_meta_time', '1653373321'),
(1642, 751, '_wp_desired_post_slug', 'sponsorship'),
(1643, 750, '_wp_trash_meta_status', 'publish'),
(1644, 750, '_wp_trash_meta_time', '1653373328'),
(1645, 750, '_wp_desired_post_slug', 'immigration'),
(1646, 756, '_edit_lock', '1653391858:1'),
(1647, 756, '_edit_last', '1'),
(1648, 757, '_edit_last', '1'),
(1649, 757, '_edit_lock', '1653391599:1'),
(1650, 758, '_edit_lock', '1653391583:1'),
(1651, 758, '_edit_last', '1'),
(1652, 759, '_edit_lock', '1653391539:1'),
(1653, 759, '_edit_last', '1'),
(1654, 760, '_edit_lock', '1653391521:1'),
(1655, 760, '_edit_last', '1'),
(1656, 761, '_edit_lock', '1653393767:1'),
(1657, 761, '_edit_last', '1'),
(1658, 762, '_edit_lock', '1653391563:1'),
(1659, 762, '_edit_last', '1'),
(1660, 763, '_edit_lock', '1653391506:1'),
(1661, 763, '_edit_last', '1'),
(1662, 764, '_edit_lock', '1653391490:1'),
(1663, 764, '_edit_last', '1'),
(1664, 765, '_edit_lock', '1653547924:1'),
(1665, 765, '_edit_last', '1'),
(1666, 766, '_edit_lock', '1653543133:1'),
(1667, 766, '_edit_last', '1'),
(1668, 767, '_edit_lock', '1653391477:1'),
(1669, 767, '_edit_last', '1'),
(1670, 768, '_edit_lock', '1653542487:1'),
(1671, 768, '_edit_last', '1'),
(1672, 769, '_edit_lock', '1653542453:1'),
(1673, 769, '_edit_last', '1'),
(1674, 770, '_edit_lock', '1653391456:1'),
(1675, 770, '_edit_last', '1'),
(1676, 771, '_edit_lock', '1653542177:1'),
(1677, 771, '_edit_last', '1'),
(1678, 770, '_thumbnail_id', '731'),
(1680, 767, '_thumbnail_id', '733'),
(1681, 766, '_thumbnail_id', '799'),
(1682, 768, '_thumbnail_id', '794'),
(1683, 765, '_thumbnail_id', '800'),
(1684, 705, '_wp_trash_meta_status', 'publish'),
(1685, 705, '_wp_trash_meta_time', '1653386905'),
(1686, 705, '_wp_desired_post_slug', 'study-in-canada'),
(1687, 724, '_wp_trash_meta_status', 'publish'),
(1688, 724, '_wp_trash_meta_time', '1653386928'),
(1689, 724, '_wp_desired_post_slug', 'study-in-uk'),
(1690, 725, '_wp_trash_meta_status', 'publish'),
(1691, 725, '_wp_trash_meta_time', '1653386930'),
(1692, 725, '_wp_desired_post_slug', 'study-in-newzealand'),
(1693, 726, '_wp_trash_meta_status', 'publish'),
(1694, 726, '_wp_trash_meta_time', '1653386932'),
(1695, 726, '_wp_desired_post_slug', 'fsdfdsf'),
(1696, 727, '_wp_trash_meta_status', 'publish'),
(1697, 727, '_wp_trash_meta_time', '1653386934'),
(1698, 727, '_wp_desired_post_slug', 'dsgsgsg'),
(1699, 728, '_wp_trash_meta_status', 'publish'),
(1700, 728, '_wp_trash_meta_time', '1653386940'),
(1701, 728, '_wp_desired_post_slug', 'sdgsdgsd'),
(1702, 773, '_edit_lock', '1653386867:1'),
(1703, 773, '_edit_last', '1'),
(1704, 773, '_thumbnail_id', '708'),
(1705, 774, '_edit_last', '1'),
(1706, 774, '_edit_lock', '1653387002:1'),
(1707, 774, '_thumbnail_id', '706'),
(1708, 775, '_edit_last', '1'),
(1709, 775, '_edit_lock', '1653388807:1'),
(1710, 775, '_thumbnail_id', '710'),
(1712, 764, '_thumbnail_id', '743'),
(1713, 763, '_thumbnail_id', '732'),
(1714, 760, '_thumbnail_id', '731'),
(1715, 759, '_thumbnail_id', '743'),
(1716, 762, '_thumbnail_id', '743'),
(1717, 758, '_thumbnail_id', '733'),
(1718, 757, '_thumbnail_id', '733'),
(1719, 756, '_thumbnail_id', '731'),
(1720, 764, '_wp_trash_meta_status', 'publish'),
(1721, 764, '_wp_trash_meta_time', '1653392911'),
(1722, 764, '_wp_desired_post_slug', 'citizenship'),
(1723, 761, '_thumbnail_id', '743'),
(1724, 667, '_wp_trash_meta_status', 'publish'),
(1725, 667, '_wp_trash_meta_time', '1653453013'),
(1726, 667, '_wp_desired_post_slug', 'calculator'),
(1727, 776, '_edit_last', '1'),
(1728, 776, '_wp_page_template', 'inner_pages/about.php'),
(1729, 776, '_edit_lock', '1653458301:1'),
(1730, 778, '_menu_item_type', 'post_type'),
(1731, 778, '_menu_item_menu_item_parent', '0'),
(1732, 778, '_menu_item_object_id', '776'),
(1733, 778, '_menu_item_object', 'page'),
(1734, 778, '_menu_item_target', ''),
(1735, 778, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1736, 778, '_menu_item_xfn', ''),
(1737, 778, '_menu_item_url', ''),
(1739, 685, '_wp_old_date', '2022-05-24'),
(1740, 722, '_wp_old_date', '2022-05-24'),
(1741, 683, '_wp_old_date', '2022-05-24'),
(1742, 684, '_wp_old_date', '2022-05-24'),
(1743, 780, '_edit_lock', '1653457864:1'),
(1744, 780, '_edit_last', '1'),
(1745, 781, '_wp_attached_file', '2022/05/WhatsApp-Image-2022-05-16-at-3.45.14-PM.jpeg'),
(1746, 781, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:771;s:4:\"file\";s:52:\"2022/05/WhatsApp-Image-2022-05-16-at-3.45.14-PM.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1747, 780, '_thumbnail_id', '782'),
(1748, 781, '_edit_lock', '1653455884:1'),
(1749, 782, '_wp_attached_file', '2022/05/WhatsApp-Image-2022-05-16-at-3.45.14-PM-1.jpeg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1750, 782, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:289;s:4:\"file\";s:54:\"2022/05/WhatsApp-Image-2022-05-16-at-3.45.14-PM-1.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1751, 785, '_edit_lock', '1653475944:1'),
(1752, 785, '_edit_last', '1'),
(1753, 786, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n<label>Phone Number [number* number-808 min:20]</label>\n\n\n<label>Please choose one option [select* menu-994 \"STUDY\" \"WORK\" \"IMMIGRATION\" \"SPONSORSHIP\" \"VISIT\"]</label>\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(1754, 786, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <wordpress@test.in>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:219:\"From:  [your-name] <[your-email]>\nSubject: [your-subject]\nPhone number: [number-808]\nQuery related to: [menu-994]\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1755, 786, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <wordpress@test.in>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1756, 786, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(1757, 786, '_additional_settings', ''),
(1758, 786, '_locale', 'en_US'),
(1759, 787, '_wp_attached_file', '2022/05/slider.png'),
(1760, 787, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:18:\"2022/05/slider.png\";s:8:\"filesize\";i:900285;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1761, 788, '_wp_attached_file', '2022/05/canada-work-visa-mob.png'),
(1762, 788, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:480;s:6:\"height\";i:300;s:4:\"file\";s:32:\"2022/05/canada-work-visa-mob.png\";s:8:\"filesize\";i:81842;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1763, 789, '_wp_attached_file', '2022/05/8841canada-immigration.jpeg'),
(1764, 789, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:696;s:6:\"height\";i:465;s:4:\"file\";s:35:\"2022/05/8841canada-immigration.jpeg\";s:8:\"filesize\";i:45803;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1765, 785, '_thumbnail_id', '789'),
(1766, 790, '_wp_attached_file', '2022/05/Artboard-2@2x-100-1.jpg'),
(1767, 790, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2400;s:6:\"height\";i:1200;s:4:\"file\";s:31:\"2022/05/Artboard-2@2x-100-1.jpg\";s:8:\"filesize\";i:1268759;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1768, 791, '_wp_attached_file', '2022/05/Artboard-4@2x-100.jpg'),
(1769, 791, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:29:\"2022/05/Artboard-4@2x-100.jpg\";s:8:\"filesize\";i:1059311;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1770, 792, '_wp_attached_file', '2022/05/Artboard-3@2x-100.jpg'),
(1771, 792, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:29:\"2022/05/Artboard-3@2x-100.jpg\";s:8:\"filesize\";i:865321;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1772, 793, '_wp_attached_file', '2022/05/Untitled-1-1.png'),
(1773, 793, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:591;s:6:\"height\";i:552;s:4:\"file\";s:24:\"2022/05/Untitled-1-1.png\";s:8:\"filesize\";i:315629;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1774, 794, '_wp_attached_file', '2022/05/external-immigration-airport-icongeek26-outline-icongeek26.png'),
(1775, 794, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:70:\"2022/05/external-immigration-airport-icongeek26-outline-icongeek26.png\";s:8:\"filesize\";i:4922;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1776, 795, '_wp_attached_file', '2022/05/icons8-class-64.png'),
(1777, 795, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:27:\"2022/05/icons8-class-64.png\";s:8:\"filesize\";i:1358;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1778, 796, '_wp_attached_file', '2022/05/icons8-immigration-64.png'),
(1779, 796, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:33:\"2022/05/icons8-immigration-64.png\";s:8:\"filesize\";i:1383;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1782, 798, '_wp_attached_file', '2022/05/icons8-travel-visa-100.png'),
(1783, 798, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:34:\"2022/05/icons8-travel-visa-100.png\";s:8:\"filesize\";i:1986;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1784, 771, '_thumbnail_id', '798'),
(1785, 769, '_thumbnail_id', '798'),
(1786, 799, '_wp_attached_file', '2022/05/icons8-classroom-100.png'),
(1787, 799, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:32:\"2022/05/icons8-classroom-100.png\";s:8:\"filesize\";i:2343;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1788, 800, '_wp_attached_file', '2022/05/icons8-traveler-100.png'),
(1789, 800, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:31:\"2022/05/icons8-traveler-100.png\";s:8:\"filesize\";i:2206;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-05-13 05:46:41', '2022-05-13 05:46:41', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-05-13 05:46:41', '2022-05-13 05:46:41', '', 0, 'http://test.in/?p=1', 0, 'post', '', 1),
(2, 1, '2022-05-13 05:46:41', '2022-05-13 05:46:41', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://test.in/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-05-13 05:46:41', '2022-05-13 05:46:41', '', 0, 'http://test.in/?page_id=2', 0, 'page', '', 0),
(7, 1, '2022-05-13 05:58:36', '2022-05-13 05:58:36', '{\n    \"skt13_option_posterity[logo_type]\": {\n        \"value\": \"image\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 05:54:38\"\n    },\n    \"skt13_option_posterity[logo_image]\": {\n        \"value\": {\n            \"id\": 6,\n            \"url\": \"http://test.in/wp-content/uploads/2022/05/FOXSports1.vn_.png\",\n            \"height\": 256,\n            \"width\": 256\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 05:54:38\"\n    },\n    \"skt13_option_posterity[logo_image_max_desktop_width]\": {\n        \"value\": 90,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 05:55:38\"\n    },\n    \"skt13_option_posterity[logo_image_max_mobile_width]\": {\n        \"value\": 90,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 05:54:38\"\n    },\n    \"skt13_option_posterity[logo_image_normal_opacity]\": {\n        \"value\": 1,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 05:55:38\"\n    },\n    \"skt13_option_posterity[logo_padding]\": {\n        \"value\": {\n            \"padding-top\": \"0px\",\n            \"padding-bottom\": \"0px\",\n            \"units\": \"px\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 05:55:38\"\n    },\n    \"skt13_option_posterity[logo_padding_mobile]\": {\n        \"value\": {\n            \"padding-top\": \"0px\",\n            \"padding-bottom\": \"0px\",\n            \"units\": \"px\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 05:55:38\"\n    },\n    \"skt13_option_posterity[logo_image_height]\": {\n        \"value\": 0,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 05:56:38\"\n    },\n    \"skt13_option_posterity[header_horizontal_sticky]\": {\n        \"value\": \"no-sticky\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 05:58:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b261272b-19e7-4efd-abb9-c921a9ce818e', '', '', '2022-05-13 05:58:36', '2022-05-13 05:58:36', '', 0, 'http://test.in/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2022-05-13 06:00:25', '2022-05-13 06:00:25', '{\n    \"posterity::nav_menu_locations[header-menu]\": {\n        \"value\": -6613082795752143000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:00:25\"\n    },\n    \"nav_menu[-6613082795752143000]\": {\n        \"value\": {\n            \"name\": \"menuu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:00:25\"\n    },\n    \"nav_menu_item[-1223687428807030800]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://test.in\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -6613082795752143000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:00:25\"\n    },\n    \"nav_menu_item[-1186901815572635600]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Sample Page\",\n            \"url\": \"http://test.in/sample-page/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Sample Page\",\n            \"nav_menu_term_id\": -6613082795752143000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:00:25\"\n    },\n    \"nav_menu_item[-3276487871161932000]\": {\n        \"value\": {\n            \"object_id\": 1,\n            \"object\": \"post\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Hello world!\",\n            \"url\": \"http://test.in/2022/05/13/hello-world/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Hello world!\",\n            \"nav_menu_term_id\": -6613082795752143000,\n            \"_invalid\": false,\n            \"type_label\": \"Post\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:00:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e9af8c2-9f6d-4c7a-be29-5b533230793e', '', '', '2022-05-13 06:00:25', '2022-05-13 06:00:25', '', 0, 'http://test.in/2022/05/13/2e9af8c2-9f6d-4c7a-be29-5b533230793e/', 0, 'customize_changeset', '', 0),
(12, 1, '2022-05-13 06:00:36', '2022-05-13 06:00:36', '{\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"menuu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:00:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cc2ce2a5-c580-4dd0-9259-dbad1b42d214', '', '', '2022-05-13 06:00:36', '2022-05-13 06:00:36', '', 0, 'http://test.in/2022/05/13/cc2ce2a5-c580-4dd0-9259-dbad1b42d214/', 0, 'customize_changeset', '', 0),
(13, 1, '2022-05-13 06:03:05', '2022-05-13 06:03:05', '{\n    \"sidebars_widgets[footer-widget-area]\": {\n        \"value\": [\n            \"block-5\",\n            \"block-6\",\n            \"block-8\",\n            \"block-9\",\n            \"block-10\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:03:05\"\n    },\n    \"widget_block[8]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:list -->\\n<ul><li>About</li></ul>\\n<!-- /wp:list -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:03:05\"\n    },\n    \"widget_block[9]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:list -->\\n<ul><li>Home</li></ul>\\n<!-- /wp:list -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:03:05\"\n    },\n    \"widget_block[10]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:list -->\\n<ul><li>Services</li></ul>\\n<!-- /wp:list -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:03:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '99f93a0e-b73c-44d6-97c1-f25c891db5f5', '', '', '2022-05-13 06:03:05', '2022-05-13 06:03:05', '', 0, 'http://test.in/2022/05/13/99f93a0e-b73c-44d6-97c1-f25c891db5f5/', 0, 'customize_changeset', '', 0),
(14, 1, '2022-05-13 06:04:47', '2022-05-13 06:04:47', '{\n    \"sidebars_widgets[footer-widget-area]\": {\n        \"value\": [\n            \"block-5\",\n            \"block-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:04:32\"\n    },\n    \"widget_block[12]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:categories /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:04:32\"\n    },\n    \"widget_block[6]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:group -->\\n<div class=\\\"wp-block-group\\\"><!-- wp:heading -->\\n<h2>Categories</h2>\\n<!-- /wp:heading -->\\n\\n<!-- wp:categories /-->\\n\\n<!-- wp:categories /-->\\n\\n<!-- wp:categories /--></div>\\n<!-- /wp:group -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:04:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e6452c7c-f97a-44d8-bce6-3e68950bb4be', '', '', '2022-05-13 06:04:47', '2022-05-13 06:04:47', '', 0, 'http://test.in/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2022-05-13 06:09:16', '2022-05-13 06:09:16', '{\n    \"sidebars_widgets[footer-widget-area]\": {\n        \"value\": [\n            \"block-5\",\n            \"block-6\",\n            \"block-13\",\n            \"block-14\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:06:35\"\n    },\n    \"widget_block[13]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:heading -->\\n<h2>Newsletter</h2>\\n<!-- /wp:heading -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:05:35\"\n    },\n    \"widget_block[14]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:social-links {\\\"className\\\":\\\"is-style-logos-only\\\"} -->\\n<ul class=\\\"wp-block-social-links is-style-logos-only\\\"><!-- wp:social-link {\\\"url\\\":\\\"https://facebook.com\\\",\\\"service\\\":\\\"facebook\\\"} /-->\\n\\n<!-- wp:social-link {\\\"url\\\":\\\"https://instagram.com\\\",\\\"service\\\":\\\"instagram\\\"} /-->\\n\\n<!-- wp:social-link {\\\"service\\\":\\\"twitter\\\"} /--></ul>\\n<!-- /wp:social-links -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:09:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fdbc7ba9-8760-4422-be9a-01934d9a047d', '', '', '2022-05-13 06:09:16', '2022-05-13 06:09:16', '', 0, 'http://test.in/?p=15', 0, 'customize_changeset', '', 0),
(16, 1, '2022-05-13 06:09:40', '2022-05-13 06:09:40', '{\n    \"widget_block[14]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:social-links {\\\"className\\\":\\\"is-style-logos-only\\\"} -->\\n<ul class=\\\"wp-block-social-links is-style-logos-only\\\"><!-- wp:social-link {\\\"url\\\":\\\"https://facebook.com\\\",\\\"service\\\":\\\"facebook\\\"} /-->\\n\\n<!-- wp:social-link {\\\"url\\\":\\\"https://instagram.com\\\",\\\"service\\\":\\\"instagram\\\"} /-->\\n\\n<!-- wp:social-link {\\\"url\\\":\\\"https://twitter.com\\\",\\\"service\\\":\\\"twitter\\\"} /--></ul>\\n<!-- /wp:social-links -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:09:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4383f2a1-caa4-4e75-9f76-07cba35fbb51', '', '', '2022-05-13 06:09:40', '2022-05-13 06:09:40', '', 0, 'http://test.in/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2022-05-13 06:10:35', '2022-05-13 06:10:35', '{\n    \"sidebars_widgets[footer-widget-area]\": {\n        \"value\": [\n            \"block-14\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:10:35\"\n    },\n    \"widget_block[14]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:social-links {\\\"className\\\":\\\"is-style-logos-only\\\"} -->\\n<ul class=\\\"wp-block-social-links is-style-logos-only\\\"><!-- wp:social-link {\\\"url\\\":\\\"https://facebook.com\\\",\\\"service\\\":\\\"facebook\\\"} /-->\\n\\n<!-- wp:social-link {\\\"url\\\":\\\"https://instagram.com\\\",\\\"service\\\":\\\"instagram\\\"} /-->\\n\\n<!-- wp:social-link {\\\"url\\\":\\\"https://twitter.com\\\",\\\"service\\\":\\\"twitter\\\"} /--></ul>\\n<!-- /wp:social-links -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:10:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '52c6803c-f4fb-4533-b5d4-963c598bd8e3', '', '', '2022-05-13 06:10:35', '2022-05-13 06:10:35', '', 0, 'http://test.in/2022/05/13/52c6803c-f4fb-4533-b5d4-963c598bd8e3/', 0, 'customize_changeset', '', 0),
(19, 1, '2022-05-13 06:31:51', '2022-05-13 06:31:51', '{\n    \"sidebars_widgets[footer-widget-area]\": {\n        \"value\": [\n            \"block-5\",\n            \"block-6\",\n            \"block-17\",\n            \"block-20\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:29:11\"\n    },\n    \"widget_block[17]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:heading -->\\n<h2>Get In Touch</h2>\\n<!-- /wp:heading -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:28:11\"\n    },\n    \"widget_block[20]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:widget-group {\\\"title\\\":\\\"Get In Touch\\\"} -->\\n<h2 class=\\\"widget-title\\\">Get In Touch</h2><!-- wp:social-links {\\\"openInNewTab\\\":true,\\\"size\\\":\\\"has-normal-icon-size\\\",\\\"className\\\":\\\"is-style-logos-only\\\",\\\"layout\\\":{\\\"type\\\":\\\"flex\\\",\\\"justifyContent\\\":\\\"left\\\",\\\"orientation\\\":\\\"horizontal\\\",\\\"flexWrap\\\":\\\"wrap\\\"}} -->\\n<ul class=\\\"wp-block-social-links has-normal-icon-size is-style-logos-only\\\"><!-- wp:social-link {\\\"url\\\":\\\"https://facebook.com\\\",\\\"service\\\":\\\"facebook\\\"} /-->\\n\\n<!-- wp:social-link {\\\"url\\\":\\\"https://twitter.com\\\",\\\"service\\\":\\\"twitter\\\"} /-->\\n\\n<!-- wp:social-link {\\\"url\\\":\\\"https://instagram.com\\\",\\\"service\\\":\\\"instagram\\\"} /--></ul>\\n<!-- /wp:social-links -->\\n<!-- /wp:widget-group -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:31:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5624ee0a-eff4-4fc3-9aac-52752afe0597', '', '', '2022-05-13 06:31:51', '2022-05-13 06:31:51', '', 0, 'http://test.in/?p=19', 0, 'customize_changeset', '', 0),
(21, 1, '2022-05-13 06:37:44', '2022-05-13 06:37:44', '{\n    \"sidebars_widgets[footer-widget-area]\": {\n        \"value\": [\n            \"block-5\",\n            \"block-6\",\n            \"block-20\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:35:45\"\n    },\n    \"widget_block[6]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:group -->\\n<div class=\\\"wp-block-group\\\"><!-- wp:heading -->\\n<h2>Categories</h2>\\n<!-- /wp:heading -->\\n\\n<!-- wp:categories /-->\\n\\n<!-- wp:categories /-->\\n\\n<!-- wp:categories /-->\\n\\n<!-- wp:heading -->\\n<h2>Categories</h2>\\n<!-- /wp:heading --></div>\\n<!-- /wp:group -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:37:44\"\n    },\n    \"widget_block[20]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:widget-group {\\\"title\\\":\\\"\\\"} -->\\n<h2 class=\\\"widget-title\\\"></h2><!-- wp:social-links {\\\"openInNewTab\\\":true,\\\"size\\\":\\\"has-normal-icon-size\\\",\\\"className\\\":\\\"is-style-logos-only\\\",\\\"layout\\\":{\\\"type\\\":\\\"flex\\\",\\\"justifyContent\\\":\\\"left\\\",\\\"orientation\\\":\\\"horizontal\\\",\\\"flexWrap\\\":\\\"wrap\\\"}} -->\\n<ul class=\\\"wp-block-social-links has-normal-icon-size is-style-logos-only\\\"><!-- wp:social-link {\\\"url\\\":\\\"https://facebook.com\\\",\\\"service\\\":\\\"facebook\\\"} /-->\\n\\n<!-- wp:social-link {\\\"url\\\":\\\"https://twitter.com\\\",\\\"service\\\":\\\"twitter\\\"} /-->\\n\\n<!-- wp:social-link {\\\"url\\\":\\\"https://instagram.com\\\",\\\"service\\\":\\\"instagram\\\"} /--></ul>\\n<!-- /wp:social-links -->\\n<!-- /wp:widget-group -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:37:44\"\n    },\n    \"skt13_option_posterity[footer_switch]\": {\n        \"value\": \"on\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:37:44\"\n    },\n    \"skt13_option_posterity[footer_widgets_columns]\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:37:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '65a4c807-4d62-4b2b-88d6-91befaf321c7', '', '', '2022-05-13 06:37:44', '2022-05-13 06:37:44', '', 0, 'http://test.in/?p=21', 0, 'customize_changeset', '', 0),
(22, 1, '2022-05-13 06:38:47', '2022-05-13 06:38:47', '{\n    \"sidebars_widgets[footer-widget-area]\": {\n        \"value\": [\n            \"block-5\",\n            \"block-6\",\n            \"block-20\",\n            \"block-22\",\n            \"block-23\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:38:45\"\n    },\n    \"widget_block[22]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:group {\\\"layout\\\":{\\\"type\\\":\\\"flex\\\",\\\"allowOrientation\\\":false}} -->\\n<div class=\\\"wp-block-group\\\"><!-- wp:heading -->\\n<h2>dsfdsfds</h2>\\n<!-- /wp:heading --></div>\\n<!-- /wp:group -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:38:45\"\n    },\n    \"widget_block[23]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:social-links -->\\n<ul class=\\\"wp-block-social-links\\\"><!-- wp:social-link {\\\"url\\\":\\\"https://facebook.com\\\",\\\"service\\\":\\\"facebook\\\"} /--></ul>\\n<!-- /wp:social-links -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-13 06:38:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'db026337-a0f7-4464-836d-cf88394c530e', '', '', '2022-05-13 06:38:47', '2022-05-13 06:38:47', '', 0, 'http://test.in/?p=22', 0, 'customize_changeset', '', 0),
(24, 1, '2022-05-13 06:43:38', '2022-05-13 06:43:38', '{\"id\":24,\"form_field_id\":\"1\",\"form_fields\":{\"fullname\":{\"id\":\"fullname\",\"type\":\"text\",\"label\":\"Name\",\"meta-key\":\"name\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"css\":\"\"},\"email\":{\"id\":\"email\",\"type\":\"email\",\"label\":\"Email\",\"meta-key\":\"email\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"subject\":{\"id\":\"subject\",\"type\":\"text\",\"label\":\"Subject\",\"meta-key\":\"subject\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"css\":\"\"},\"message\":{\"id\":\"message\",\"type\":\"textarea\",\"label\":\"Message\",\"meta-key\":\"message\",\"description\":\"\",\"placeholder\":\"\",\"css\":\"\"}},\"settings\":{\"form_title\":\"Contact Form\",\"form_desc\":\"\",\"successful_form_submission_message\":\"Thanks for contacting us! We will be in touch with you shortly.\",\"redirect_to\":\"same\",\"custom_page\":\"2\",\"external_url\":\"\",\"layout_class\":\"default\",\"form_class\":\"\",\"submit_button_text\":\"Submit\",\"honeypot\":\"1\",\"email\":{\"connection_1\":{\"connection_name\":\"Admin Notification\",\"evf_to_email\":\"{admin_email}\",\"evf_from_name\":\"testt\",\"evf_from_email\":\"{admin_email}\",\"evf_reply_to\":\"{field_id=\\\"email\\\"}\",\"evf_email_subject\":\"New Form Entry \",\"evf_email_message\":\"{all_fields}\"}}},\"structure\":{\"row_1\":{\"grid_1\":[\"fullname\",\"email\",\"subject\",\"message\"]}}}', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2022-05-13 06:43:38', '2022-05-13 06:43:38', '', 0, 'http://test.in/?post_type=everest_form&#038;p=24', 0, 'everest_form', '', 0),
(101, 1, '2022-01-27 09:12:54', '2022-01-27 09:12:54', '.tg-header-action__item.tg-mobile-toggle{\n	color:#FDC800;\n}\n.masteriyo-btn.masteriyo-btn-primary{\n	color:#1f1f1f;\n}\n.masteriyo-course--content .masteriyo-time-btn .masteriyo-btn:hover, .masteriyo-course--content .masteriyo-time-btn .masteriyo-btn:focus, .masteriyo-course--content .masteriyo-time-btn .masteriyo-btn:active {\n    color:#1f1f1f;\n}\n.masteriyo-course--content .masteriyo-time-btn .masteriyo-btn {\n    border-radius: 4px;\n}\n.masteriyo-btn.masteriyo-btn-primary:focus, .masteriyo-btn.masteriyo-btn-primary:active {\n    background-color:#ffff00;\n}', 'zakra', '', 'publish', 'closed', 'closed', '', 'zakra', '', '', '2022-05-13 06:46:12', '2022-05-13 06:46:12', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/zakra/', 0, 'custom_css', '', 0),
(180, 1, '2022-01-28 04:37:11', '2022-01-28 04:37:11', '<p>Donec rutrum congue leo eget malesuada. Donec rutrum congue leo eget malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n', 'Introduction to Psychology', '', 'publish', 'open', 'closed', '', 'introduction-to-psychology', '', '', '2022-01-28 04:37:11', '2022-01-28 04:37:11', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/?post_type=mto-course&amp;p=180', 0, 'mto-course', '', 0),
(183, 1, '2022-01-28 04:41:46', '2022-01-28 04:41:46', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum porta.</p>\n', 'Arts and Designs', '', 'publish', 'open', 'closed', '', 'arts-and-designs', '', '', '2022-01-28 04:41:46', '2022-01-28 04:41:46', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/?post_type=mto-course&amp;p=183', 0, 'mto-course', '', 0),
(185, 1, '2022-01-28 05:16:03', '2022-01-28 05:16:03', '<p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus.</p>\n', 'Adobe XD Mega Course', '', 'publish', 'open', 'closed', '', 'adobe-xd-mega-course', '', '', '2022-01-28 05:16:03', '2022-01-28 05:16:03', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/?post_type=mto-course&amp;p=185', 0, 'mto-course', '', 0),
(187, 1, '2022-01-28 05:18:07', '2022-01-28 05:18:07', '<p>Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.</p>\n', 'Machine Learning', '', 'publish', 'open', 'closed', '', 'machine-learning', '', '', '2022-01-28 05:18:07', '2022-01-28 05:18:07', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/?post_type=mto-course&amp;p=187', 0, 'mto-course', '', 0),
(189, 1, '2022-01-28 05:20:16', '2022-01-28 05:20:16', '<p>Magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus suscipit tortor eget felis porttitor volutpat.</p>\n', 'Cameras and Exposure', '', 'publish', 'open', 'closed', '', 'cameras-and-exposure', '', '', '2022-01-28 05:20:16', '2022-01-28 05:20:16', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/?post_type=mto-course&amp;p=189', 0, 'mto-course', '', 0),
(191, 1, '2022-01-28 05:22:39', '2022-01-28 05:22:39', '<p>Rabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.</p>\n', 'Business Foundations', '', 'publish', 'open', 'closed', '', 'business-foundations', '', '', '2022-01-28 05:22:39', '2022-01-28 05:22:39', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/?post_type=mto-course&amp;p=191', 0, 'mto-course', '', 0),
(472, 1, '2022-02-07 04:16:32', '2022-02-07 04:16:32', '{\"id\":4,\"form_field_id\":\"1\",\"form_fields\":{\"fullname\":{\"id\":\"fullname\",\"type\":\"text\",\"label\":\"Name\",\"meta-key\":\"name\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"css\":\"\"},\"email\":{\"id\":\"email\",\"type\":\"email\",\"label\":\"Email\",\"meta-key\":\"email\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"subject\":{\"id\":\"subject\",\"type\":\"text\",\"label\":\"Subject\",\"meta-key\":\"subject\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"css\":\"\"},\"message\":{\"id\":\"message\",\"type\":\"textarea\",\"label\":\"Message\",\"meta-key\":\"message\",\"description\":\"\",\"placeholder\":\"\",\"css\":\"\"}},\"settings\":{\"form_title\":\"Contact Form\",\"form_desc\":\"\",\"successful_form_submission_message\":\"Thanks for contacting us! We will be in touch with you shortly.\",\"redirect_to\":\"same\",\"custom_page\":\"2\",\"external_url\":\"\",\"layout_class\":\"default\",\"form_class\":\"\",\"submit_button_text\":\"Submit\",\"honeypot\":\"1\",\"email\":{\"connection_1\":{\"connection_name\":\"Admin Notification\",\"evf_to_email\":\"{admin_email}\",\"evf_from_name\":\"Zakra EduSkill\",\"evf_from_email\":\"{admin_email}\",\"evf_reply_to\":\"{field_id=\\\"email\\\"}\",\"evf_email_subject\":\"New Form Entry \",\"evf_email_message\":\"{all_fields}\"}}},\"structure\":{\"row_1\":{\"grid_1\":[\"fullname\",\"email\",\"subject\",\"message\"]}}}', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form-2', '', '', '2022-02-07 04:16:32', '2022-02-07 04:16:32', '', 0, 'https://zakrademos.com/eduskill/?post_type=everest_form&amp;p=4', 0, 'everest_form', '', 0),
(495, 1, '2022-02-01 07:34:49', '2022-02-01 07:34:49', '{\"id\":495,\"form_field_id\":\"1\",\"form_fields\":{\"fullname\":{\"id\":\"fullname\",\"type\":\"text\",\"label\":\"Name\",\"meta-key\":\"name\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"css\":\"\"},\"email\":{\"id\":\"email\",\"type\":\"email\",\"label\":\"Email\",\"meta-key\":\"email\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"subject\":{\"id\":\"subject\",\"type\":\"text\",\"label\":\"Subject\",\"meta-key\":\"subject\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"css\":\"\"},\"message\":{\"id\":\"message\",\"type\":\"textarea\",\"label\":\"Message\",\"meta-key\":\"message\",\"description\":\"\",\"placeholder\":\"\",\"css\":\"\"}},\"settings\":{\"form_title\":\"Contact Form\",\"form_desc\":\"\",\"successful_form_submission_message\":\"Thanks for contacting us! We will be in touch with you shortly.\",\"redirect_to\":\"same\",\"custom_page\":\"2\",\"external_url\":\"\",\"layout_class\":\"default\",\"form_class\":\"\",\"submit_button_text\":\"Submit\",\"honeypot\":\"1\",\"email\":{\"connection_1\":{\"connection_name\":\"Admin Notification\",\"evf_to_email\":\"{admin_email}\",\"evf_from_name\":\"EduSkill\",\"evf_from_email\":\"{admin_email}\",\"evf_reply_to\":\"{field_id=\\\"email\\\"}\",\"evf_email_subject\":\"New Form Entry \",\"evf_email_message\":\"{all_fields}\"}}},\"structure\":{\"row_1\":{\"grid_1\":[\"fullname\",\"email\",\"subject\",\"message\"]}}}', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form-2-2', '', '', '2022-02-01 07:34:49', '2022-02-01 07:34:49', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/?post_type=everest_form&amp;p=495', 0, 'everest_form', '', 0),
(508, 1, '2022-02-01 07:47:06', '2022-02-01 07:47:06', '<!-- wp:paragraph -->\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus suscipit tortor eget felis porttitor volutpat. Sed porttitor lectus nibh. Proin eget tortor risus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:paragraph -->', 'Prepare a Career in Data Analytics', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'publish', 'open', 'closed', '', 'prepare-a-career-in-data-analytics', '', '', '2022-02-01 07:47:06', '2022-02-01 07:47:06', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/?p=508', 0, 'post', '', 4),
(511, 1, '2022-02-01 07:49:12', '2022-02-01 07:49:12', '<!-- wp:blockart/paragraph {\"clientId\":\"f78099c9\",\"text\":\"Pestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus suscipit tortor eget felis porttitor volutpat. Sed porttitor lectus nibh. Proin eget tortor risus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.\"} -->\n<p class=\"blockart-paragraph blockart-paragraph-f78099c9\">Pestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus suscipit tortor eget felis porttitor volutpat. Sed porttitor lectus nibh. Proin eget tortor risus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:blockart/paragraph -->', 'What Is Contemporary Art?', 'Pestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'publish', 'open', 'closed', '', 'what-is-contemporary-art', '', '', '2022-02-01 07:49:12', '2022-02-01 07:49:12', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/?p=511', 0, 'post', '', 1),
(521, 1, '2022-02-01 08:06:03', '2022-02-01 08:06:03', '<!-- wp:paragraph -->\n<p>Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Sed porttitor lectus nibh. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p>\n<!-- /wp:paragraph -->', 'Trending Business Skills', 'Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.', 'publish', 'open', 'closed', '', 'trending-business-skills', '', '', '2022-02-01 08:06:03', '2022-02-01 08:06:03', '', 0, 'https://sichu-blockart-eduskill.sites.qsandbox.com/?p=521', 0, 'post', '', 0),
(606, 1, '2022-02-07 05:15:36', '2022-02-07 05:15:36', '', 'Getting Started', '', 'publish', 'closed', 'closed', '', 'getting-started', '', '', '2022-02-07 05:15:36', '2022-02-07 05:15:36', '', 191, 'https://zakrademos.com/eduskill/section/getting-started/', 0, 'mto-section', '', 0),
(607, 1, '2022-02-07 05:16:25', '2022-02-07 05:16:25', '<p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Donec rutrum congue leo eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p>', 'Introduction to Marketing', '', 'publish', 'open', 'closed', '', 'introduction-to-marketing', '', '', '2022-02-07 05:16:25', '2022-02-07 05:16:25', '', 606, 'https://zakrademos.com/eduskill/lesson/introduction-to-marketing/', 0, 'mto-lesson', '', 0),
(608, 1, '2022-02-07 05:16:44', '2022-02-07 05:16:44', '<p>Sed porttitor lectus nibh. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>', 'Managing Social and Human Capital', '', 'publish', 'open', 'closed', '', 'managing-social-and-human-capital', '', '', '2022-02-07 05:16:44', '2022-02-07 05:16:44', '', 606, 'https://zakrademos.com/eduskill/lesson/managing-social-and-human-capital/', 1, 'mto-lesson', '', 0),
(609, 1, '2022-02-07 05:16:56', '2022-02-07 05:16:56', '<p>Nulla porttitor accumsan tincidunt. Nulla quis lorem ut libero malesuada feugiat. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Donec rutrum congue leo eget malesuada.</p>', 'Introduction to Corporate Finance', '', 'publish', 'open', 'closed', '', 'introduction-to-corporate-finance', '', '', '2022-02-07 05:16:56', '2022-02-07 05:16:56', '', 606, 'https://zakrademos.com/eduskill/lesson/introduction-to-corporate-finance/', 2, 'mto-lesson', '', 0),
(623, 1, '2022-02-07 05:18:01', '2022-02-07 05:18:01', '', 'Quizes', '', 'publish', 'open', 'closed', '', 'quizes', '', '', '2022-02-07 05:18:01', '2022-02-07 05:18:01', '', 606, 'https://zakrademos.com/eduskill/quiz/quizes/', 3, 'mto-quiz', '', 0),
(624, 1, '2022-02-07 05:18:08', '2022-02-07 05:18:08', '[{\"name\":\"Corporation\",\"correct\":false},{\"name\":\"Economics\",\"correct\":false},{\"name\":\"Entrepreneurship\",\"correct\":false},{\"name\":\"Business\",\"correct\":true}]', 'What is the term for all activities involved in developing and exchanging products?', '', 'publish', 'open', 'closed', '', 'what-is-the-term-for-all-activities-involved-in-developing-and-exchanging-products', '', '', '2022-02-07 05:18:08', '2022-02-07 05:18:08', '', 623, 'https://zakrademos.com/eduskill/mto-question/untitled-question/', 0, 'mto-question', '', 0),
(629, 1, '2022-05-13 06:45:26', '2022-05-13 06:45:26', '.tg-header-action__item.tg-mobile-toggle{\n	color:#FDC800;\n}\n.masteriyo-btn.masteriyo-btn-primary{\n	color:#1f1f1f;\n}\n.masteriyo-course--content .masteriyo-time-btn .masteriyo-btn:hover, .masteriyo-course--content .masteriyo-time-btn .masteriyo-btn:focus, .masteriyo-course--content .masteriyo-time-btn .masteriyo-btn:active {\n    color:#1f1f1f;\n}\n.masteriyo-course--content .masteriyo-time-btn .masteriyo-btn {\n    border-radius: 4px;\n}\n.masteriyo-btn.masteriyo-btn-primary:focus, .masteriyo-btn.masteriyo-btn-primary:active {\n    background-color:#ffff00;\n}', 'zakra', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2022-05-13 06:45:26', '2022-05-13 06:45:26', '', 101, 'http://test.in/?p=629', 0, 'revision', '', 0),
(638, 1, '2022-05-13 06:46:10', '2022-05-13 06:46:10', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2022-05-13 06:46:10', '2022-05-13 06:46:10', '', 0, 'http://test.in/2022/05/13/faq/', 1, 'nav_menu_item', '', 0),
(639, 1, '2022-05-13 06:46:10', '2022-05-13 06:46:10', '', 'Tutorials', '', 'publish', 'closed', 'closed', '', 'tutorials', '', '', '2022-05-13 06:46:10', '2022-05-13 06:46:10', '', 0, 'http://test.in/2022/05/13/tutorials/', 2, 'nav_menu_item', '', 0),
(640, 1, '2022-05-13 06:46:10', '2022-05-13 06:46:10', '', 'Instructor', '', 'publish', 'closed', 'closed', '', 'instructor', '', '', '2022-05-13 06:46:10', '2022-05-13 06:46:10', '', 0, 'http://test.in/2022/05/13/instructor/', 3, 'nav_menu_item', '', 0),
(641, 1, '2022-05-13 06:46:10', '2022-05-13 06:46:10', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2022-05-13 06:46:10', '2022-05-13 06:46:10', '', 0, 'http://test.in/2022/05/13/privacy-policy/', 4, 'nav_menu_item', '', 0),
(642, 1, '2022-05-13 06:46:10', '2022-05-13 06:46:10', '', 'Terms & Conditons', '', 'publish', 'closed', 'closed', '', 'terms-conditons', '', '', '2022-05-13 06:46:10', '2022-05-13 06:46:10', '', 0, 'http://test.in/2022/05/13/terms-conditons/', 5, 'nav_menu_item', '', 0),
(643, 1, '2022-05-17 06:25:54', '2022-05-13 06:46:10', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2022-05-17 06:25:54', '2022-05-17 06:25:54', '', 0, 'http://test.in/2022/05/13/events/', 1, 'nav_menu_item', '', 0),
(644, 1, '2022-05-17 06:25:54', '2022-05-13 06:46:10', '', 'Affiliate', '', 'publish', 'closed', 'closed', '', 'affiliate', '', '', '2022-05-17 06:25:54', '2022-05-17 06:25:54', '', 0, 'http://test.in/2022/05/13/affiliate/', 2, 'nav_menu_item', '', 0),
(645, 1, '2022-05-17 06:25:54', '2022-05-13 06:46:10', '', 'Workshop', '', 'publish', 'closed', 'closed', '', 'workshop', '', '', '2022-05-17 06:25:54', '2022-05-17 06:25:54', '', 0, 'http://test.in/2022/05/13/workshop/', 3, 'nav_menu_item', '', 0),
(646, 1, '2022-05-17 06:25:54', '2022-05-13 06:46:10', '', 'Become a Partner', '', 'publish', 'closed', 'closed', '', 'become-a-partner', '', '', '2022-05-17 06:25:54', '2022-05-17 06:25:54', '', 0, 'http://test.in/2022/05/13/become-a-partner/', 4, 'nav_menu_item', '', 0),
(649, 1, '2022-05-13 06:49:00', '2022-05-13 06:49:00', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-zakra', '', '', '2022-05-13 06:49:00', '2022-05-13 06:49:00', '', 0, 'http://test.in/2022/05/13/wp-global-styles-zakra/', 0, 'wp_global_styles', '', 0),
(657, 1, '2022-05-17 05:55:33', '2022-05-17 05:55:33', '<label> Your name\r\n    [text* your-name] </label>\r\n\r\n<label> Your email\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text* your-subject] </label>\r\n\r\n<label> Your message (optional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@test.in>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@test.in>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2022-05-25 09:50:13', '2022-05-25 09:50:13', '', 0, 'http://test.in/?post_type=wpcf7_contact_form&#038;p=657', 0, 'wpcf7_contact_form', '', 0),
(658, 1, '2022-05-17 05:58:12', '2022-05-17 05:58:12', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-05-17 05:58:12', '2022-05-17 05:58:12', '', 0, 'http://test.in/2022/05/17/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(659, 1, '2022-05-17 06:48:57', '2022-05-17 06:48:57', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-05-18 11:14:02', '2022-05-18 11:14:02', '', 0, 'http://test.in/?page_id=659', 0, 'page', '', 0),
(660, 1, '2022-05-17 06:48:57', '2022-05-17 06:48:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '659-revision-v1', '', '', '2022-05-17 06:48:57', '2022-05-17 06:48:57', '', 659, 'http://test.in/?p=660', 0, 'revision', '', 0),
(661, 1, '2022-05-17 06:49:17', '2022-05-17 06:49:17', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2022-05-18 11:51:39', '2022-05-18 11:51:39', '', 0, 'http://test.in/?page_id=661', 0, 'page', '', 0),
(662, 1, '2022-05-17 06:49:12', '2022-05-17 06:49:12', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '661-revision-v1', '', '', '2022-05-17 06:49:12', '2022-05-17 06:49:12', '', 661, 'http://test.in/?p=662', 0, 'revision', '', 0),
(663, 1, '2022-05-17 06:49:17', '2022-05-17 06:49:17', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '661-revision-v1', '', '', '2022-05-17 06:49:17', '2022-05-17 06:49:17', '', 661, 'http://test.in/?p=663', 0, 'revision', '', 0),
(664, 1, '2022-05-18 11:52:14', '2022-05-18 11:52:14', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2022-05-18 11:52:16', '2022-05-18 11:52:16', '', 0, 'http://test.in/?page_id=664', 0, 'page', '', 0),
(665, 1, '2022-05-17 06:50:41', '2022-05-17 06:50:41', '', 'Consultation', '', 'publish', 'closed', 'closed', '', 'consultation', '', '', '2022-05-18 11:51:47', '2022-05-18 11:51:47', '', 0, 'http://test.in/?page_id=665', 0, 'page', '', 0),
(666, 1, '2022-05-17 06:50:41', '2022-05-17 06:50:41', '', 'Consultation', '', 'inherit', 'closed', 'closed', '', '665-revision-v1', '', '', '2022-05-17 06:50:41', '2022-05-17 06:50:41', '', 665, 'http://test.in/?p=666', 0, 'revision', '', 0),
(667, 1, '2022-05-17 06:51:11', '2022-05-17 06:51:11', '', 'Calculator', '', 'trash', 'closed', 'closed', '', 'calculator__trashed', '', '', '2022-05-25 04:30:13', '2022-05-25 04:30:13', '', 0, 'http://test.in/?page_id=667', 0, 'page', '', 0),
(668, 1, '2022-05-17 06:51:11', '2022-05-17 06:51:11', '', 'Calculator', '', 'inherit', 'closed', 'closed', '', '667-revision-v1', '', '', '2022-05-17 06:51:11', '2022-05-17 06:51:11', '', 667, 'http://test.in/?p=668', 0, 'revision', '', 0),
(670, 1, '2022-05-17 07:11:21', '2022-05-17 07:11:21', '{\n    \"blogname\": {\n        \"value\": \"D2 Immigration\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-17 07:11:21\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-17 07:11:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '14b66184-35a3-42c4-ab0a-715269104dd8', '', '', '2022-05-17 07:11:21', '2022-05-17 07:11:21', '', 0, 'http://test.in/2022/05/17/14b66184-35a3-42c4-ab0a-715269104dd8/', 0, 'customize_changeset', '', 0),
(679, 1, '2022-05-17 09:36:25', '2022-05-17 09:36:25', '', 'Artboard 1-100 (1)', '', 'inherit', 'open', 'closed', '', 'artboard-1-100-1', '', '', '2022-05-17 09:36:25', '2022-05-17 09:36:25', '', 0, 'http://test.in/wp-content/uploads/2022/05/Artboard-1-100-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(681, 1, '2022-05-17 09:41:46', '2022-05-17 09:41:46', '', 'Artboard 1-100 (1) (3)', '', 'inherit', 'open', 'closed', '', 'artboard-1-100-1-3', '', '', '2022-05-17 09:41:46', '2022-05-17 09:41:46', '', 0, 'http://test.in/wp-content/uploads/2022/05/Artboard-1-100-1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(683, 1, '2022-05-25 04:31:16', '2022-05-17 10:05:25', ' ', '', '', 'publish', 'closed', 'closed', '', '683', '', '', '2022-05-25 04:31:16', '2022-05-25 04:31:16', '', 0, 'http://test.in/?p=683', 4, 'nav_menu_item', '', 0),
(684, 1, '2022-05-25 04:31:16', '2022-05-17 10:05:25', ' ', '', '', 'publish', 'closed', 'closed', '', '684', '', '', '2022-05-25 04:31:16', '2022-05-25 04:31:16', '', 0, 'http://test.in/?p=684', 5, 'nav_menu_item', '', 0),
(685, 1, '2022-05-25 04:31:16', '2022-05-17 10:05:25', ' ', '', '', 'publish', 'closed', 'closed', '', '685', '', '', '2022-05-25 04:31:16', '2022-05-25 04:31:16', '', 0, 'http://test.in/?p=685', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(687, 1, '2022-05-17 10:50:31', '2022-05-17 10:50:31', '', 'Artboard 1 (1) (1)', '', 'inherit', 'open', 'closed', '', 'artboard-1-1-1', '', '', '2022-05-17 10:50:31', '2022-05-17 10:50:31', '', 0, 'http://test.in/wp-content/uploads/2022/05/Artboard-1-1-1.png', 0, 'attachment', 'image/png', 0),
(688, 1, '2022-05-17 12:15:42', '2022-05-17 12:15:42', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', 'Raddy', '', 'publish', 'closed', 'closed', '', 'raddy', '', '', '2022-05-17 12:26:56', '2022-05-17 12:26:56', '', 0, 'http://test.in/?post_type=testimonial&#038;p=688', 4, 'testimonial', '', 0),
(689, 1, '2022-05-17 12:15:42', '2022-05-17 12:15:42', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', 'Raddy', '', 'inherit', 'closed', 'closed', '', '688-revision-v1', '', '', '2022-05-17 12:15:42', '2022-05-17 12:15:42', '', 688, 'http://test.in/?p=689', 0, 'revision', '', 0),
(690, 1, '2022-05-17 12:16:01', '2022-05-17 12:16:01', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', 'Rohan', '', 'publish', 'closed', 'closed', '', 'rohan', '', '', '2022-05-17 12:26:45', '2022-05-17 12:26:45', '', 0, 'http://test.in/?post_type=testimonial&#038;p=690', 3, 'testimonial', '', 0),
(691, 1, '2022-05-17 12:16:01', '2022-05-17 12:16:01', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', 'Rohan', '', 'inherit', 'closed', 'closed', '', '690-revision-v1', '', '', '2022-05-17 12:16:01', '2022-05-17 12:16:01', '', 690, 'http://test.in/?p=691', 0, 'revision', '', 0),
(692, 1, '2022-05-17 12:16:22', '2022-05-17 12:16:22', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', 'komal', '', 'publish', 'closed', 'closed', '', 'komal', '', '', '2022-05-17 12:26:28', '2022-05-17 12:26:28', '', 0, 'http://test.in/?post_type=testimonial&#038;p=692', 2, 'testimonial', '', 0),
(693, 1, '2022-05-17 12:16:22', '2022-05-17 12:16:22', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', 'komal', '', 'inherit', 'closed', 'closed', '', '692-revision-v1', '', '', '2022-05-17 12:16:22', '2022-05-17 12:16:22', '', 692, 'http://test.in/?p=693', 0, 'revision', '', 0),
(694, 1, '2022-05-17 12:19:09', '2022-05-17 12:19:09', '', 'testimonials', '', 'publish', 'closed', 'closed', '', '694', '', '', '2022-05-17 12:25:51', '2022-05-17 12:25:51', '', 0, 'http://test.in/?post_type=tss-sc&#038;p=694', 0, 'tss-sc', '', 0),
(695, 1, '2022-05-17 12:25:21', '2022-05-17 12:25:21', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', 'viivek', '', 'publish', 'closed', 'closed', '', 'viivek', '', '', '2022-05-17 12:26:16', '2022-05-17 12:26:16', '', 0, 'http://test.in/?post_type=testimonial&#038;p=695', 1, 'testimonial', '', 0),
(696, 1, '2022-05-17 12:25:21', '2022-05-17 12:25:21', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', 'viivek', '', 'inherit', 'closed', 'closed', '', '695-revision-v1', '', '', '2022-05-17 12:25:21', '2022-05-17 12:25:21', '', 695, 'http://test.in/?p=696', 0, 'revision', '', 0),
(702, 1, '2022-05-18 05:49:57', '2022-05-18 05:49:57', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'Komal', '', 'publish', 'closed', 'closed', '', 'test1', '', '', '2022-05-23 06:58:25', '2022-05-23 06:58:25', '', 0, 'http://test.in/?post_type=testimonials&#038;p=702', 0, 'testimonials', '', 0),
(703, 1, '2022-05-18 05:50:22', '2022-05-18 05:50:22', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'Reddy', '', 'publish', 'closed', 'closed', '', 'test2', '', '', '2022-05-23 06:58:45', '2022-05-23 06:58:45', '', 0, 'http://test.in/?post_type=testimonials&#038;p=703', 0, 'testimonials', '', 0),
(704, 1, '2022-05-18 05:51:07', '2022-05-18 05:51:07', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'Cheef', '', 'publish', 'closed', 'closed', '', 'test3', '', '', '2022-05-23 06:59:00', '2022-05-23 06:59:00', '', 0, 'http://test.in/?post_type=testimonials&#038;p=704', 0, 'testimonials', '', 0),
(705, 1, '2022-05-18 06:07:48', '2022-05-18 06:07:48', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Study in Canada', '', 'trash', 'closed', 'closed', '', 'study-in-canada__trashed', '', '', '2022-05-24 10:08:25', '2022-05-24 10:08:25', '', 0, 'http://test.in/?post_type=countries&#038;p=705', 0, 'countries', '', 0),
(706, 1, '2022-05-18 05:55:12', '2022-05-18 05:55:12', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2022-05-18 05:55:12', '2022-05-18 05:55:12', '', 705, 'http://test.in/wp-content/uploads/2022/05/3.png', 0, 'attachment', 'image/png', 0),
(707, 1, '2022-05-18 05:55:13', '2022-05-18 05:55:13', '', 'Untitled-1', '', 'inherit', 'open', 'closed', '', 'untitled-1', '', '', '2022-05-18 05:55:13', '2022-05-18 05:55:13', '', 705, 'http://test.in/wp-content/uploads/2022/05/Untitled-1.png', 0, 'attachment', 'image/png', 0),
(708, 1, '2022-05-18 05:55:13', '2022-05-18 05:55:13', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2022-05-18 05:55:13', '2022-05-18 05:55:13', '', 705, 'http://test.in/wp-content/uploads/2022/05/2.png', 0, 'attachment', 'image/png', 0),
(710, 1, '2022-05-18 05:55:14', '2022-05-18 05:55:14', '', 'canada', '', 'inherit', 'open', 'closed', '', 'canada', '', '', '2022-05-18 05:55:14', '2022-05-18 05:55:14', '', 705, 'http://test.in/wp-content/uploads/2022/05/canada.png', 0, 'attachment', 'image/png', 0),
(711, 1, '2022-05-18 06:13:11', '2022-05-18 06:13:11', '<p style=\"font-size: 22px\">We are always availed to consult on taking your <br>higher education to the next level so you can stay competitive in</p>\r\n<div class=\"button\"><button class=\"btn btn-primary\">More details <i class=\"fas fa-arrow-right\"></i\r\n      ></button></div>', 'We Help To <span style=\"color: #0071bc\">Build </span><br>Your Dream', '', 'publish', 'closed', 'closed', '', 'we-help-to-build-your-dream', '', '', '2022-05-25 11:15:02', '2022-05-25 11:15:02', '', 0, 'http://test.in/?post_type=slider&#038;p=711', 0, 'slider', '', 0),
(712, 1, '2022-05-18 06:14:00', '2022-05-18 06:14:00', '<p style=\"font-size:22px;\">Find out if you can apply and how to apply to work <br>in Canada as a temporary worker, business person and student</p>\r\n<div class=\"button\">\r\n  <button class=\"btn btn-primary\">More details <i class=\"fas fa-arrow-right\"></i></button>\r\n</div>', 'We Help To <span style=\"color: #0071bc\"> Build </span><br>Your Dream', '', 'publish', 'closed', 'closed', '', 'we-help-to-build-your-dream-2', '', '', '2022-05-25 11:14:46', '2022-05-25 11:14:46', '', 0, 'http://test.in/?post_type=slider&#038;p=712', 0, 'slider', '', 0),
(713, 1, '2022-05-18 06:14:20', '2022-05-18 06:14:20', '<p style=\"font-size: 22px;\">Your loved one’s can live, study and work in <br>Canada if they become permanent residents of Canada.</p>\r\n<div class=\"button\"><button class=\"btn btn-primary more_details\">More details <i class=\"fas fa-arrow-right\"></i></button></div>\r\n', 'We Help To <span style=\"color: #0071bc\">Build</span><br>Your Dream', '', 'publish', 'closed', 'closed', '', 'we-help-to-build-your-dream-3', '', '', '2022-05-25 11:23:17', '2022-05-25 11:23:17', '', 0, 'http://test.in/?post_type=slider&#038;p=713', 0, 'slider', '', 0),
(714, 1, '2022-05-23 12:11:59', '2022-05-23 12:11:59', '<p style=\"font-size: 22px;\">Your loved one’s can live, study and work in <br>Canada if they become permanent residents of Canada.</p>\n<div class=\"button\"><button class=\"btn btn-primary\">\nMore details <i class=\"fas fa-arrow-right\"></i></button></div>\n', 'We Help To <span style=\"color: #0071bc\">Build</span><br>Your Dream', '', 'inherit', 'closed', 'closed', '', '713-autosave-v1', '', '', '2022-05-23 12:11:59', '2022-05-23 12:11:59', '', 713, 'http://test.in/?p=714', 0, 'revision', '', 0),
(718, 1, '2022-05-18 11:11:14', '2022-05-18 11:11:14', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-18 11:11:14\"\n    },\n    \"page_on_front\": {\n        \"value\": \"659\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-18 11:11:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c144c58-1226-42f1-bc29-ad75fcde2914', '', '', '2022-05-18 11:11:14', '2022-05-18 11:11:14', '', 0, 'http://test.in/2022/05/18/9c144c58-1226-42f1-bc29-ad75fcde2914/', 0, 'customize_changeset', '', 0),
(719, 1, '2022-05-18 11:35:56', '2022-05-18 11:35:56', '', 'download-_1_', '', 'inherit', 'open', 'closed', '', 'download-_1_', '', '', '2022-05-18 11:35:56', '2022-05-18 11:35:56', '', 702, 'http://test.in/wp-content/uploads/2022/05/download-_1_.jpg', 0, 'attachment', 'image/jpeg', 0),
(720, 1, '2022-05-18 11:36:18', '2022-05-18 11:36:18', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2022-05-18 11:36:18', '2022-05-18 11:36:18', '', 703, 'http://test.in/wp-content/uploads/2022/05/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(721, 1, '2022-05-18 11:52:14', '2022-05-18 11:52:14', '', 'Services', '', 'inherit', 'closed', 'closed', '', '664-revision-v1', '', '', '2022-05-18 11:52:14', '2022-05-18 11:52:14', '', 664, 'http://test.in/?p=721', 0, 'revision', '', 0),
(722, 1, '2022-05-25 04:31:16', '2022-05-18 11:52:38', ' ', '', '', 'publish', 'closed', 'closed', '', '722', '', '', '2022-05-25 04:31:16', '2022-05-25 04:31:16', '', 0, 'http://test.in/?p=722', 3, 'nav_menu_item', '', 0),
(723, 1, '2022-05-19 06:17:38', '2022-05-19 06:17:38', '', 'Study in Canada', '', 'publish', 'closed', 'closed', '', 'study-in-australia', '', '', '2022-05-24 10:11:23', '2022-05-24 10:11:23', '', 0, 'http://test.in/?post_type=countries&#038;p=723', 0, 'countries', '', 0),
(724, 1, '2022-05-19 06:17:55', '2022-05-19 06:17:55', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Study in Uk', '', 'trash', 'closed', 'closed', '', 'study-in-uk__trashed', '', '', '2022-05-24 10:08:48', '2022-05-24 10:08:48', '', 0, 'http://test.in/?post_type=countries&#038;p=724', 0, 'countries', '', 0),
(725, 1, '2022-05-19 06:18:32', '2022-05-19 06:18:32', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Study in newzealand', '', 'trash', 'closed', 'closed', '', 'study-in-newzealand__trashed', '', '', '2022-05-24 10:08:50', '2022-05-24 10:08:50', '', 0, 'http://test.in/?post_type=countries&#038;p=725', 0, 'countries', '', 0),
(726, 1, '2022-05-19 07:32:56', '2022-05-19 07:32:56', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Study In USA', '', 'trash', 'closed', 'closed', '', 'fsdfdsf__trashed', '', '', '2022-05-24 10:08:52', '2022-05-24 10:08:52', '', 0, 'http://test.in/?post_type=countries&#038;p=726', 0, 'countries', '', 0),
(727, 1, '2022-05-19 07:33:09', '2022-05-19 07:33:09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Study in Germany', '', 'trash', 'closed', 'closed', '', 'dsgsgsg__trashed', '', '', '2022-05-24 10:08:54', '2022-05-24 10:08:54', '', 0, 'http://test.in/?post_type=countries&#038;p=727', 0, 'countries', '', 0),
(728, 1, '2022-05-19 07:33:22', '2022-05-19 07:33:22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Study in Singapore', '', 'trash', 'closed', 'closed', '', 'sdgsdgsd__trashed', '', '', '2022-05-24 10:09:00', '2022-05-24 10:09:00', '', 0, 'http://test.in/?post_type=countries&#038;p=728', 0, 'countries', '', 0),
(730, 1, '2022-05-19 08:15:18', '2022-05-19 08:15:18', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Express Entry', '', 'publish', 'closed', 'closed', '', 'express-entry', '', '', '2022-05-23 06:26:57', '2022-05-23 06:26:57', '', 0, 'http://test.in/?post_type=immigration_program&#038;p=730', 0, 'immigration_program', '', 0),
(731, 1, '2022-05-19 08:14:49', '2022-05-19 08:14:49', '', 'men-age-group-5', '', 'inherit', 'open', 'closed', '', 'men-age-group-5', '', '', '2022-05-19 08:14:49', '2022-05-19 08:14:49', '', 730, 'http://test.in/wp-content/uploads/2022/05/men-age-group-5.png', 0, 'attachment', 'image/png', 0),
(732, 1, '2022-05-19 08:14:50', '2022-05-19 08:14:50', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2022-05-19 08:14:50', '2022-05-19 08:14:50', '', 730, 'http://test.in/wp-content/uploads/2022/05/download-1.png', 0, 'attachment', 'image/png', 0),
(733, 1, '2022-05-19 08:14:50', '2022-05-19 08:14:50', '', 'download', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2022-05-19 08:14:50', '2022-05-19 08:14:50', '', 730, 'http://test.in/wp-content/uploads/2022/05/download.png', 0, 'attachment', 'image/png', 0),
(735, 1, '2022-05-19 08:18:00', '2022-05-19 08:18:00', 'Lorem Ipsum is simply a dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Canadian Experience Class', '', 'publish', 'closed', 'closed', '', 'canadian-expereince-class', '', '', '2022-05-19 08:18:25', '2022-05-19 08:18:25', '', 0, 'http://test.in/?post_type=immigration_program&#038;p=735', 0, 'immigration_program', '', 0),
(736, 1, '2022-05-19 08:19:02', '2022-05-19 08:19:02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Provincial Nomination', '', 'publish', 'closed', 'closed', '', 'provincial-nomination-program', '', '', '2022-05-19 08:25:54', '2022-05-19 08:25:54', '', 0, 'http://test.in/?post_type=immigration_program&#038;p=736', 0, 'immigration_program', '', 0),
(737, 1, '2022-05-19 08:19:35', '2022-05-19 08:19:35', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Atlantic immigration Pilot', '', 'publish', 'closed', 'closed', '', 'atlantic-immigration-pilot-program', '', '', '2022-05-19 08:25:43', '2022-05-19 08:25:43', '', 0, 'http://test.in/?post_type=immigration_program&#038;p=737', 0, 'immigration_program', '', 0),
(738, 1, '2022-05-19 08:19:56', '2022-05-19 08:19:56', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Startup Visa', '', 'publish', 'closed', 'closed', '', 'startup-visa', '', '', '2022-05-19 08:20:01', '2022-05-19 08:20:01', '', 0, 'http://test.in/?post_type=immigration_program&#038;p=738', 0, 'immigration_program', '', 0),
(739, 1, '2022-05-19 08:20:27', '2022-05-19 08:20:27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Self Employed', '', 'publish', 'closed', 'closed', '', 'self-employed', '', '', '2022-05-20 11:31:11', '2022-05-20 11:31:11', '', 0, 'http://test.in/?post_type=immigration_program&#038;p=739', 0, 'immigration_program', '', 0),
(740, 1, '2022-05-20 11:44:30', '2022-05-20 11:44:30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Family sponsorship', '', 'trash', 'closed', 'closed', '', 'family-sponsorship__trashed', '', '', '2022-05-24 04:46:32', '2022-05-24 04:46:32', '', 0, 'http://test.in/?post_type=sponsorship&#038;p=740', 0, 'sponsorship', '', 0),
(741, 1, '2022-05-23 05:16:38', '2022-05-23 05:16:38', '<p style=\"font-size:22px;\">Find out if you can apply and how to apply to work in Canada<br> as a temporary worker, business person and student</p>\n       <div class=\"button\">\n              <button class=\"btn btn-primary\">More details <i class=\"fas fa-arrow-right\"></i\n      ></button>\n           </div>', 'We Help To <span style=\"color: #0071bc\"> Build </span>Your Dream', '', 'inherit', 'closed', 'closed', '', '712-autosave-v1', '', '', '2022-05-23 05:16:38', '2022-05-23 05:16:38', '', 712, 'http://test.in/?p=741', 0, 'revision', '', 0),
(742, 1, '2022-05-23 05:29:21', '2022-05-23 05:29:21', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'Franchii', '', 'publish', 'closed', 'closed', '', 'test4', '', '', '2022-05-23 06:59:14', '2022-05-23 06:59:14', '', 0, 'http://test.in/?post_type=testimonials&#038;p=742', 0, 'testimonials', '', 0),
(743, 1, '2022-05-23 06:26:24', '2022-05-23 06:26:24', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2022-05-23 06:26:24', '2022-05-23 06:26:24', '', 0, 'http://test.in/wp-content/uploads/2022/05/images.png', 0, 'attachment', 'image/png', 0),
(744, 1, '2022-05-23 06:58:24', '2022-05-23 06:58:24', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'Komal', '', 'inherit', 'closed', 'closed', '', '702-autosave-v1', '', '', '2022-05-23 06:58:24', '2022-05-23 06:58:24', '', 702, 'http://test.in/?p=744', 0, 'revision', '', 0),
(745, 1, '2022-05-23 11:57:16', '2022-05-23 11:57:16', '{\n    \"custom_css[immigration]\": {\n        \"value\": \".btn.btn-primary:hover {\\n    background: white !important;\\n    border: 1px solid #0071bc !important;\\n    color: #0071bc !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-23 11:57:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ce53fb78-c6b9-41b4-854b-de8a479bbe44', '', '', '2022-05-23 11:57:16', '2022-05-23 11:57:16', '', 0, 'http://test.in/2022/05/23/ce53fb78-c6b9-41b4-854b-de8a479bbe44/', 0, 'customize_changeset', '', 0),
(746, 1, '2022-05-23 11:57:16', '2022-05-23 11:57:16', '.btn.btn-primary:hover {\n    background: white !important;\n    border: 1px solid #0071bc !important;\n    color: #0071bc !important;\n}', 'immigration', '', 'publish', 'closed', 'closed', '', 'immigration', '', '', '2022-05-23 11:57:16', '2022-05-23 11:57:16', '', 0, 'http://test.in/2022/05/23/immigration/', 0, 'custom_css', '', 0),
(747, 1, '2022-05-23 11:57:16', '2022-05-23 11:57:16', '.btn.btn-primary:hover {\n    background: white !important;\n    border: 1px solid #0071bc !important;\n    color: #0071bc !important;\n}', 'immigration', '', 'inherit', 'closed', 'closed', '', '746-revision-v1', '', '', '2022-05-23 11:57:16', '2022-05-23 11:57:16', '', 746, 'http://test.in/?p=747', 0, 'revision', '', 0),
(750, 1, '2022-05-24 05:55:46', '2022-05-24 05:55:46', '', 'Immigration', '', 'trash', 'closed', 'closed', '', 'immigration__trashed', '', '', '2022-05-24 06:22:08', '2022-05-24 06:22:08', '', 0, 'http://test.in/?post_type=service&#038;p=750', 0, 'service', '', 0),
(751, 1, '2022-05-24 05:57:06', '2022-05-24 05:57:06', '', 'Sponsorship', '', 'trash', 'closed', 'closed', '', 'sponsorship__trashed', '', '', '2022-05-24 06:22:01', '2022-05-24 06:22:01', '', 0, 'http://test.in/?post_type=service&#038;p=751', 0, 'service', '', 0),
(752, 1, '2022-05-24 05:57:19', '2022-05-24 05:57:19', '', 'Study', '', 'trash', 'closed', 'closed', '', 'study__trashed', '', '', '2022-05-24 06:22:01', '2022-05-24 06:22:01', '', 0, 'http://test.in/?post_type=service&#038;p=752', 0, 'service', '', 0),
(753, 1, '2022-05-24 05:57:32', '2022-05-24 05:57:32', '', 'Work', '', 'trash', 'closed', 'closed', '', 'work__trashed', '', '', '2022-05-24 06:22:01', '2022-05-24 06:22:01', '', 0, 'http://test.in/?post_type=service&#038;p=753', 0, 'service', '', 0),
(754, 1, '2022-05-24 05:57:50', '2022-05-24 05:57:50', '', 'Visitor Visa', '', 'trash', 'closed', 'closed', '', 'visitor-visa__trashed', '', '', '2022-05-24 06:22:01', '2022-05-24 06:22:01', '', 0, 'http://test.in/?post_type=service&#038;p=754', 0, 'service', '', 0),
(755, 1, '2022-05-24 05:58:08', '2022-05-24 05:58:08', '', 'Citizenship', '', 'trash', 'closed', 'closed', '', 'citizenship__trashed', '', '', '2022-05-24 06:21:53', '2022-05-24 06:21:53', '', 0, 'http://test.in/?post_type=service&#038;p=755', 0, 'service', '', 0),
(756, 1, '2022-05-24 06:22:38', '2022-05-24 06:22:38', '', 'family sponsorship', '', 'publish', 'closed', 'closed', '', 'family-sponsorship', '', '', '2022-05-24 11:29:15', '2022-05-24 11:29:15', '', 0, 'http://test.in/?post_type=service&#038;p=756', 0, 'service', '', 0),
(757, 1, '2022-05-24 06:22:49', '2022-05-24 06:22:49', '', 'parents sponsorship', '', 'publish', 'closed', 'closed', '', 'parents-sponsorship', '', '', '2022-05-24 11:29:00', '2022-05-24 11:29:00', '', 0, 'http://test.in/?post_type=service&#038;p=757', 0, 'service', '', 0),
(758, 1, '2022-05-24 06:23:13', '2022-05-24 06:23:13', '', 'spousal sponsorshp', '', 'publish', 'closed', 'closed', '', 'spousal-sponsorshp', '', '', '2022-05-24 11:28:42', '2022-05-24 11:28:42', '', 0, 'http://test.in/?post_type=service&#038;p=758', 0, 'service', '', 0),
(759, 1, '2022-05-24 06:23:47', '2022-05-24 06:23:47', '', 'post graduate work permit', '', 'publish', 'closed', 'closed', '', 'post-graduate-work-permit', '', '', '2022-05-24 11:28:01', '2022-05-24 11:28:01', '', 0, 'http://test.in/?post_type=service&#038;p=759', 0, 'service', '', 0),
(760, 1, '2022-05-24 06:24:02', '2022-05-24 06:24:02', '', 'LMIA based work permit', '', 'publish', 'closed', 'closed', '', 'lmia-based-work-permit', '', '', '2022-05-24 11:27:43', '2022-05-24 11:27:43', '', 0, 'http://test.in/?post_type=service&#038;p=760', 0, 'service', '', 0),
(761, 1, '2022-05-24 06:24:19', '2022-05-24 06:24:19', '', 'spousal open work permit', '', 'publish', 'closed', 'closed', '', 'spousal-open-work-permit', '', '', '2022-05-24 11:49:10', '2022-05-24 11:49:10', '', 0, 'http://test.in/?post_type=service&#038;p=761', 0, 'service', '', 0),
(762, 1, '2022-05-24 06:24:32', '2022-05-24 06:24:32', '', 'visitor visa', '', 'publish', 'closed', 'closed', '', 'visitor-visa', '', '', '2022-05-24 11:28:25', '2022-05-24 11:28:25', '', 0, 'http://test.in/?post_type=service&#038;p=762', 0, 'service', '', 0),
(763, 1, '2022-05-24 06:24:56', '2022-05-24 06:24:56', '', 'parents and grandparents super visa', '', 'publish', 'closed', 'closed', '', 'parents-and-grandparents-super-visa', '', '', '2022-05-24 11:27:28', '2022-05-24 11:27:28', '', 0, 'http://test.in/?post_type=service&#038;p=763', 0, 'service', '', 0),
(764, 1, '2022-05-24 06:25:22', '2022-05-24 06:25:22', '', 'citizenship', '', 'trash', 'closed', 'closed', '', 'citizenship__trashed-2', '', '', '2022-05-24 11:48:31', '2022-05-24 11:48:31', '', 0, 'http://test.in/?post_type=service&#038;p=764', 0, 'service', '', 0),
(765, 1, '2022-05-24 06:25:35', '2022-05-24 06:25:35', '', 'Express Entry', '', 'publish', 'closed', 'closed', '', 'express-entry', '', '', '2022-05-26 05:35:09', '2022-05-26 05:35:09', '', 0, 'http://test.in/?post_type=service&#038;p=765', 0, 'service', '', 0),
(766, 1, '2022-05-24 06:26:05', '2022-05-24 06:26:05', '', 'Canadian Experience Class', '', 'publish', 'closed', 'closed', '', 'canadian-experience-class', '', '', '2022-05-26 05:26:36', '2022-05-26 05:26:36', '', 0, 'http://test.in/?post_type=service&#038;p=766', 0, 'service', '', 0),
(767, 1, '2022-05-24 06:26:28', '2022-05-24 06:26:28', '', 'Provincial Nomination', '', 'publish', 'closed', 'closed', '', 'provincial-nominee-program', '', '', '2022-05-24 09:57:51', '2022-05-24 09:57:51', '', 0, 'http://test.in/?post_type=service&#038;p=767', 0, 'service', '', 0),
(768, 1, '2022-05-24 06:26:43', '2022-05-24 06:26:43', '', 'Atlantic immigration Pilot', '', 'publish', 'closed', 'closed', '', 'atlantic-immigration-pilot-program', '', '', '2022-05-26 05:23:33', '2022-05-26 05:23:33', '', 0, 'http://test.in/?post_type=service&#038;p=768', 0, 'service', '', 0),
(769, 1, '2022-05-24 06:27:00', '2022-05-24 06:27:00', '', 'Startup Visa', '', 'publish', 'closed', 'closed', '', 'start-up-visa', '', '', '2022-05-26 05:18:53', '2022-05-26 05:18:53', '', 0, 'http://test.in/?post_type=service&#038;p=769', 0, 'service', '', 0),
(770, 1, '2022-05-24 06:27:22', '2022-05-24 06:27:22', '', 'Self Employed', '', 'publish', 'closed', 'closed', '', 'self-employed', '', '', '2022-05-24 09:55:16', '2022-05-24 09:55:16', '', 0, 'http://test.in/?post_type=service&#038;p=770', 0, 'service', '', 0),
(771, 1, '2022-05-24 06:28:00', '2022-05-24 06:28:00', '', 'Study Visa', '', 'publish', 'closed', 'closed', '', 'study-visa', '', '', '2022-05-26 05:18:40', '2022-05-26 05:18:40', '', 0, 'http://test.in/?post_type=service&#038;p=771', 0, 'service', '', 0),
(772, 1, '2022-05-24 09:34:09', '2022-05-24 09:34:09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Express Entry', '', 'inherit', 'closed', 'closed', '', '765-autosave-v1', '', '', '2022-05-24 09:34:09', '2022-05-24 09:34:09', '', 765, 'http://test.in/?p=772', 0, 'revision', '', 0),
(773, 1, '2022-05-24 10:10:08', '2022-05-24 10:10:08', '', 'Work in Canada', '', 'publish', 'closed', 'closed', '', 'work-in-canada', '', '', '2022-05-24 10:10:08', '2022-05-24 10:10:08', '', 0, 'http://test.in/?post_type=countries&#038;p=773', 0, 'countries', '', 0),
(774, 1, '2022-05-24 10:10:22', '2022-05-24 10:10:22', '', 'Travel in Canada', '', 'publish', 'closed', 'closed', '', 'visit-canada', '', '', '2022-05-24 10:11:43', '2022-05-24 10:11:43', '', 0, 'http://test.in/?post_type=countries&#038;p=774', 0, 'countries', '', 0),
(775, 1, '2022-05-24 10:12:44', '2022-05-24 10:12:44', '', 'Apply for citizenship', '', 'publish', 'closed', 'closed', '', 'apply-for-citizenship', '', '', '2022-05-24 10:13:07', '2022-05-24 10:13:07', '', 0, 'http://test.in/?post_type=countries&#038;p=775', 0, 'countries', '', 0),
(776, 1, '2022-05-25 04:30:41', '2022-05-25 04:30:41', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2022-05-25 06:00:33', '2022-05-25 06:00:33', '', 0, 'http://test.in/?page_id=776', 0, 'page', '', 0),
(777, 1, '2022-05-25 04:30:41', '2022-05-25 04:30:41', '', 'About us', '', 'inherit', 'closed', 'closed', '', '776-revision-v1', '', '', '2022-05-25 04:30:41', '2022-05-25 04:30:41', '', 776, 'http://test.in/?p=777', 0, 'revision', '', 0),
(778, 1, '2022-05-25 04:31:16', '2022-05-25 04:31:16', ' ', '', '', 'publish', 'closed', 'closed', '', '778', '', '', '2022-05-25 04:31:16', '2022-05-25 04:31:16', '', 0, 'http://test.in/?p=778', 2, 'nav_menu_item', '', 0),
(779, 1, '2022-05-25 05:03:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-05-25 05:03:18', '0000-00-00 00:00:00', '', 0, 'http://test.in/?post_type=awards_and_licence&p=779', 0, 'awards_and_licence', '', 0),
(780, 1, '2022-05-25 05:04:29', '2022-05-25 05:04:29', 'Damandeep Sidhu is a professional licensed immigration consultant of Canada and a member in good standing of The College of Immigration and Citizenship Consultants.', 'REGULATED CANADIAN IMMIGRATION CONSULTANT', '', 'publish', 'closed', 'closed', '', 'immigration-consultant', '', '', '2022-05-25 05:20:48', '2022-05-25 05:20:48', '', 0, 'http://test.in/?post_type=awards_and_licence&#038;p=780', 0, 'awards_and_licence', '', 0),
(781, 1, '2022-05-25 05:09:02', '2022-05-25 05:09:02', '', 'WhatsApp Image 2022-05-16 at 3.45.14 PM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2022-05-16-at-3-45-14-pm', '', '', '2022-05-25 05:09:02', '2022-05-25 05:09:02', '', 0, 'http://test.in/wp-content/uploads/2022/05/WhatsApp-Image-2022-05-16-at-3.45.14-PM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(782, 1, '2022-05-25 05:20:32', '2022-05-25 05:20:32', '', 'WhatsApp Image 2022-05-16 at 3.45.14 PM (1)', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2022-05-16-at-3-45-14-pm-1', '', '', '2022-05-25 05:20:32', '2022-05-25 05:20:32', '', 0, 'http://test.in/wp-content/uploads/2022/05/WhatsApp-Image-2022-05-16-at-3.45.14-PM-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(783, 1, '2022-05-25 06:00:18', '2022-05-25 06:00:18', '\r\nThousands of jobs are currently vacant in Canada and businesses are finding it increasingly difficult to find qualified candidates. As a result, companies lose huge amounts of money and miss out on countless business opportunities. The labor shortage is indeed here and will continue for years to come.\r\n\r\nSimultaneously, thousands of people around the world dream of working and starting a new life in Canada. These people are qualified, experienced and able to do the job as well as any Canadian. However, because of our complex and restrictive immigration system, immigrating and working in Canada is easier said than done.', 'About us', '', 'inherit', 'closed', 'closed', '', '776-revision-v1', '', '', '2022-05-25 06:00:18', '2022-05-25 06:00:18', '', 776, 'http://test.in/?p=783', 0, 'revision', '', 0),
(784, 1, '2022-05-25 06:00:33', '2022-05-25 06:00:33', '', 'About us', '', 'inherit', 'closed', 'closed', '', '776-revision-v1', '', '', '2022-05-25 06:00:33', '2022-05-25 06:00:33', '', 776, 'http://test.in/?p=784', 0, 'revision', '', 0),
(785, 1, '2022-05-25 06:01:41', '2022-05-25 06:01:41', 'Thousands of jobs are currently vacant in Canada and businesses are finding it increasingly difficult to find qualified candidates. As a result, companies lose huge amounts of money and miss out on countless business opportunities. The labor shortage is indeed here and will continue for years to come.\r\n\r\nSimultaneously, thousands of people around the world dream of working and starting a new life in Canada. These people are qualified, experienced and able to do the job as well as any Canadian. However, because of our complex and restrictive immigration system, immigrating and working in Canada is easier said than done.', 'about', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-05-25 10:50:33', '2022-05-25 10:50:33', '', 0, 'http://test.in/?post_type=about&#038;p=785', 0, 'about', '', 0),
(786, 1, '2022-05-25 06:35:43', '2022-05-25 06:35:43', '<label> Your name\r\n    [text* your-name] </label>\r\n\r\n<label> Your email\r\n    [email* your-email] </label>\r\n<label>Phone Number [number* number-808 min:20]</label>\r\n\r\n\r\n<label>Please choose one option [select* menu-994 \"STUDY\" \"WORK\" \"IMMIGRATION\" \"SPONSORSHIP\" \"VISIT\"]</label>\r\n<label> Subject\r\n    [text* your-subject] </label>\r\n\r\n<label> Your message (optional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@test.in>\n[_site_admin_email]\nFrom:  [your-name] <[your-email]>\r\nSubject: [your-subject]\r\nPhone number: [number-808]\r\nQuery related to: [menu-994]\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@test.in>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'consultation form', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2022-05-25 09:51:57', '2022-05-25 09:51:57', '', 0, 'http://test.in/?post_type=wpcf7_contact_form&#038;p=786', 0, 'wpcf7_contact_form', '', 0),
(787, 1, '2022-05-25 10:38:03', '2022-05-25 10:38:03', '', 'slider', '', 'inherit', 'open', 'closed', '', 'slider', '', '', '2022-05-25 10:38:03', '2022-05-25 10:38:03', '', 712, 'http://test.in/wp-content/uploads/2022/05/slider.png', 0, 'attachment', 'image/png', 0),
(788, 1, '2022-05-25 10:41:17', '2022-05-25 10:41:17', '', 'canada-work-visa-mob', '', 'inherit', 'open', 'closed', '', 'canada-work-visa-mob', '', '', '2022-05-25 10:41:17', '2022-05-25 10:41:17', '', 712, 'http://test.in/wp-content/uploads/2022/05/canada-work-visa-mob.png', 0, 'attachment', 'image/png', 0),
(789, 1, '2022-05-25 10:49:31', '2022-05-25 10:49:31', '', '8841canada-immigration', '', 'inherit', 'open', 'closed', '', '8841canada-immigration', '', '', '2022-05-25 10:49:31', '2022-05-25 10:49:31', '', 785, 'http://test.in/wp-content/uploads/2022/05/8841canada-immigration.jpeg', 0, 'attachment', 'image/jpeg', 0),
(790, 1, '2022-05-25 10:55:37', '2022-05-25 10:55:37', '', 'Artboard 2@2x-100 (1)', '', 'inherit', 'open', 'closed', '', 'artboard-22x-100-1', '', '', '2022-05-25 10:55:37', '2022-05-25 10:55:37', '', 712, 'http://test.in/wp-content/uploads/2022/05/Artboard-2@2x-100-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(791, 1, '2022-05-25 11:14:41', '2022-05-25 11:14:41', '', 'Artboard 4@2x-100', '', 'inherit', 'open', 'closed', '', 'artboard-42x-100', '', '', '2022-05-25 11:14:41', '2022-05-25 11:14:41', '', 712, 'http://test.in/wp-content/uploads/2022/05/Artboard-4@2x-100.jpg', 0, 'attachment', 'image/jpeg', 0),
(792, 1, '2022-05-25 11:14:59', '2022-05-25 11:14:59', '', 'Artboard 3@2x-100', '', 'inherit', 'open', 'closed', '', 'artboard-32x-100', '', '', '2022-05-25 11:14:59', '2022-05-25 11:14:59', '', 711, 'http://test.in/wp-content/uploads/2022/05/Artboard-3@2x-100.jpg', 0, 'attachment', 'image/jpeg', 0),
(793, 1, '2022-05-25 11:22:50', '2022-05-25 11:22:50', '', 'Untitled-1', '', 'inherit', 'open', 'closed', '', 'untitled-1-2', '', '', '2022-05-25 11:22:50', '2022-05-25 11:22:50', '', 713, 'http://test.in/wp-content/uploads/2022/05/Untitled-1-1.png', 0, 'attachment', 'image/png', 0),
(794, 1, '2022-05-26 05:08:15', '2022-05-26 05:08:15', '', 'external-immigration-airport-icongeek26-outline-icongeek26', '', 'inherit', 'open', 'closed', '', 'external-immigration-airport-icongeek26-outline-icongeek26', '', '', '2022-05-26 05:08:15', '2022-05-26 05:08:15', '', 0, 'http://test.in/wp-content/uploads/2022/05/external-immigration-airport-icongeek26-outline-icongeek26.png', 0, 'attachment', 'image/png', 0),
(795, 1, '2022-05-26 05:08:56', '2022-05-26 05:08:56', '', 'icons8-class-64', '', 'inherit', 'open', 'closed', '', 'icons8-class-64', '', '', '2022-05-26 05:08:56', '2022-05-26 05:08:56', '', 0, 'http://test.in/wp-content/uploads/2022/05/icons8-class-64.png', 0, 'attachment', 'image/png', 0),
(796, 1, '2022-05-26 05:08:56', '2022-05-26 05:08:56', '', 'icons8-immigration-64', '', 'inherit', 'open', 'closed', '', 'icons8-immigration-64', '', '', '2022-05-26 05:08:56', '2022-05-26 05:08:56', '', 0, 'http://test.in/wp-content/uploads/2022/05/icons8-immigration-64.png', 0, 'attachment', 'image/png', 0),
(798, 1, '2022-05-26 05:15:29', '2022-05-26 05:15:29', '', 'icons8-travel-visa-100', '', 'inherit', 'open', 'closed', '', 'icons8-travel-visa-100', '', '', '2022-05-26 05:15:29', '2022-05-26 05:15:29', '', 0, 'http://test.in/wp-content/uploads/2022/05/icons8-travel-visa-100.png', 0, 'attachment', 'image/png', 0),
(799, 1, '2022-05-26 05:26:32', '2022-05-26 05:26:32', '', 'icons8-classroom-100', '', 'inherit', 'open', 'closed', '', 'icons8-classroom-100', '', '', '2022-05-26 05:26:32', '2022-05-26 05:26:32', '', 766, 'http://test.in/wp-content/uploads/2022/05/icons8-classroom-100.png', 0, 'attachment', 'image/png', 0),
(800, 1, '2022-05-26 05:35:04', '2022-05-26 05:35:04', '', 'icons8-traveler-100', '', 'inherit', 'open', 'closed', '', 'icons8-traveler-100', '', '', '2022-05-26 05:35:04', '2022-05-26 05:35:04', '', 765, 'http://test.in/wp-content/uploads/2022/05/icons8-traveler-100.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 9, '_display', 'default'),
(2, 9, '_featured_image', '293'),
(3, 10, '_display', 'default'),
(4, 10, '_featured_image', '294'),
(5, 11, '_display', 'default'),
(6, 11, '_featured_image', '295'),
(7, 12, '_display', 'default'),
(8, 12, '_featured_image', '182'),
(9, 14, '_display', 'default'),
(10, 14, '_featured_image', '190'),
(11, 16, '_display', 'default'),
(12, 16, '_featured_image', '296'),
(13, 17, '_display', 'default'),
(14, 17, '_featured_image', '188'),
(15, 18, '_display', 'default'),
(16, 18, '_featured_image', '184');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Beginner', 'beginner', 0),
(4, 'Intermediate', 'intermediate', 0),
(5, 'Expert', 'expert', 0),
(9, 'Arts', 'arts', 0),
(10, 'Business', 'business', 0),
(11, 'Computer Science', 'computer-science', 0),
(12, 'Creativity', 'creativity', 0),
(13, 'free', 'free', 0),
(14, 'Marketing', 'marketing', 0),
(15, 'paid', 'paid', 0),
(16, 'Personal Development', 'personal-development', 0),
(17, 'Photography', 'photography', 0),
(18, 'UI/UX', 'uiux', 0),
(22, 'Community', 'community', 0),
(23, 'Main', 'main', 0),
(24, 'Support', 'support', 0),
(25, 'zakra', 'zakra', 0),
(26, 'twentytwentytwo', 'twentytwentytwo', 0),
(27, 'menu', 'menu', 0),
(28, 'immigration_program', 'immigration_program', 0),
(29, 'self employed', 'self-employed', 0),
(33, 'Study in australia', 'australia', 0),
(36, 'Citizenship', 'citizenship', 0),
(37, 'Immigration', 'immigration', 0),
(38, 'Sponsorship', 'sponsorship', 0),
(39, 'Study Visa', 'study_visa', 0),
(40, 'Work permit', 'work-permit', 0),
(41, 'Visitor visa', 'visitor-visa', 0),
(42, 'pnp', 'pnp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(180, 5, 0),
(180, 15, 0),
(180, 16, 0),
(183, 4, 0),
(183, 9, 0),
(183, 15, 0),
(185, 3, 0),
(185, 15, 0),
(185, 18, 0),
(187, 5, 0),
(187, 11, 0),
(187, 15, 0),
(189, 4, 0),
(189, 12, 0),
(189, 15, 0),
(189, 17, 0),
(191, 3, 0),
(191, 10, 0),
(191, 13, 0),
(191, 14, 0),
(508, 1, 0),
(511, 1, 0),
(521, 1, 0),
(638, 24, 0),
(639, 24, 0),
(640, 24, 0),
(641, 24, 0),
(642, 24, 0),
(643, 22, 0),
(644, 22, 0),
(645, 22, 0),
(646, 22, 0),
(649, 25, 0),
(658, 26, 0),
(683, 27, 0),
(684, 27, 0),
(685, 27, 0),
(722, 27, 0),
(725, 33, 0),
(739, 29, 0),
(756, 38, 0),
(757, 38, 0),
(758, 38, 0),
(759, 40, 0),
(760, 40, 0),
(761, 40, 0),
(762, 41, 0),
(763, 41, 0),
(764, 36, 0),
(765, 37, 0),
(766, 37, 0),
(767, 37, 0),
(768, 37, 0),
(769, 37, 0),
(770, 37, 0),
(771, 41, 0),
(778, 27, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
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
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(3, 3, 'course_difficulty', '', 0, 2),
(4, 4, 'course_difficulty', '', 0, 2),
(5, 5, 'course_difficulty', '', 0, 2),
(9, 9, 'course_cat', '', 0, 1),
(10, 10, 'course_cat', '', 0, 1),
(11, 11, 'course_cat', '', 0, 1),
(12, 12, 'course_cat', '', 0, 1),
(13, 13, 'course_visibility', '', 0, 1),
(14, 14, 'course_cat', '', 0, 1),
(15, 15, 'course_visibility', '', 0, 5),
(16, 16, 'course_cat', '', 0, 1),
(17, 17, 'course_cat', '', 0, 1),
(18, 18, 'course_cat', '', 0, 1),
(22, 22, 'nav_menu', '', 0, 4),
(23, 23, 'nav_menu', '', 0, 0),
(24, 24, 'nav_menu', '', 0, 5),
(25, 25, 'wp_theme', '', 0, 1),
(26, 26, 'wp_theme', '', 0, 1),
(27, 27, 'nav_menu', '', 0, 5),
(28, 28, 'immigration_program', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 0, 0),
(29, 29, 'immigration_program', '', 0, 1),
(33, 33, 'countries', 'dsafsa', 0, 0),
(36, 36, 'category', '', 0, 0),
(37, 37, 'category', '', 0, 6),
(38, 38, 'category', '', 0, 3),
(39, 39, 'category', '', 0, 0),
(40, 40, 'category', '', 0, 3),
(41, 41, 'category', '', 0, 3),
(42, 42, 'service', 'ffgfg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'testt'),
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
(16, 1, 'session_tokens', 'a:3:{s:64:\"2596d753aedd9c394f25ada9b15ce939a4897ae34d77cb84be8aaafceb978c93\";a:4:{s:10:\"expiration\";i:1654490345;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36\";s:5:\"login\";i:1653280745;}s:64:\"2bd6fe04890fd3ef5ebb98126f8b3a8a39ebd8ad6140c09726e1c53bec2e4f5d\";a:4:{s:10:\"expiration\";i:1653625782;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36\";s:5:\"login\";i:1653452982;}s:64:\"8247d7fa19911bfd00359f88e7ab6ed1f0e9342a4e9c6358344c4eb7e6df0561\";a:4:{s:10:\"expiration\";i:1653714410;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36\";s:5:\"login\";i:1653541610;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '748'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'editor=html&amplibraryContent=browse&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1652941053'),
(21, 1, 'display_name', 'testt'),
(22, 1, '_profile_image_id', '0'),
(23, 2, 'nickname', 'komal'),
(24, 2, 'first_name', 'komal'),
(25, 2, 'last_name', 'preet'),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'syntax_highlighting', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', ''),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(34, 2, 'wp_capabilities', 'a:1:{s:17:\"masteriyo_student\";b:1;}'),
(35, 2, 'wp_user_level', '0'),
(36, 2, 'dismissed_wp_pointers', ''),
(37, 2, '_profile_image_id', '0'),
(38, 1, 'nav_menu_recently_edited', '27'),
(39, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(40, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:23:\"add-post-type-mto-order\";i:1;s:12:\"add-post_tag\";i:2;s:14:\"add-course_cat\";i:3;s:14:\"add-course_tag\";i:4;s:21:\"add-course_difficulty\";}'),
(41, 1, 'wp_media_library_mode', 'list');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'testt', '$P$BVbMjPBk6rgndJrPADyfBWuNS1FooG0', 'testt', 'klocrix.kulwant@gmail.com', 'http://test.in', '2022-05-13 05:46:41', '', 0, 'testt'),
(2, 'komalpreet', '$P$BCtW17tkZBHNpv9LwPsO5haHl.tran.', 'komalpreet', 'komalpabyal@gmail.com', 'https://dev.elwa.in/', '2022-05-13 07:33:52', '', 0, 'komalpreet');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `initiator` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_evf_entries`
--
ALTER TABLE `wp_evf_entries`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_evf_entrymeta`
--
ALTER TABLE `wp_evf_entrymeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_evf_sessions`
--
ALTER TABLE `wp_evf_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_masteriyo_migrations`
--
ALTER TABLE `wp_masteriyo_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_masteriyo_notifications`
--
ALTER TABLE `wp_masteriyo_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `status` (`status`),
  ADD KEY `type` (`type`),
  ADD KEY `level` (`level`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `modified_at` (`modified_at`),
  ADD KEY `expire_at` (`expire_at`);

--
-- Indexes for table `wp_masteriyo_order_itemmeta`
--
ALTER TABLE `wp_masteriyo_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_masteriyo_order_items`
--
ALTER TABLE `wp_masteriyo_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_item_type` (`order_item_type`);

--
-- Indexes for table `wp_masteriyo_quiz_attempts`
--
ALTER TABLE `wp_masteriyo_quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `attempt_started_at` (`attempt_started_at`),
  ADD KEY `attempt_ended_at` (`attempt_ended_at`);

--
-- Indexes for table `wp_masteriyo_sessions`
--
ALTER TABLE `wp_masteriyo_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_masteriyo_user_activities`
--
ALTER TABLE `wp_masteriyo_user_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `activity_type` (`activity_type`),
  ADD KEY `activity_status` (`activity_status`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `modified_at` (`modified_at`),
  ADD KEY `completed_at` (`completed_at`);

--
-- Indexes for table `wp_masteriyo_user_activitymeta`
--
ALTER TABLE `wp_masteriyo_user_activitymeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `user_activity_id` (`user_activity_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_masteriyo_user_itemmeta`
--
ALTER TABLE `wp_masteriyo_user_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `user_item_id` (`user_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_masteriyo_user_items`
--
ALTER TABLE `wp_masteriyo_user_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`(191)),
  ADD KEY `item_type` (`item_type`(191)),
  ADD KEY `date_start` (`date_start`),
  ADD KEY `date_modified` (`date_modified`),
  ADD KEY `date_end` (`date_end`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=789;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_evf_entries`
--
ALTER TABLE `wp_evf_entries`
  MODIFY `entry_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_evf_entrymeta`
--
ALTER TABLE `wp_evf_entrymeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_evf_sessions`
--
ALTER TABLE `wp_evf_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_masteriyo_migrations`
--
ALTER TABLE `wp_masteriyo_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_masteriyo_notifications`
--
ALTER TABLE `wp_masteriyo_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_masteriyo_order_itemmeta`
--
ALTER TABLE `wp_masteriyo_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_masteriyo_order_items`
--
ALTER TABLE `wp_masteriyo_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_masteriyo_quiz_attempts`
--
ALTER TABLE `wp_masteriyo_quiz_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_masteriyo_sessions`
--
ALTER TABLE `wp_masteriyo_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_masteriyo_user_activities`
--
ALTER TABLE `wp_masteriyo_user_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_masteriyo_user_activitymeta`
--
ALTER TABLE `wp_masteriyo_user_activitymeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_masteriyo_user_itemmeta`
--
ALTER TABLE `wp_masteriyo_user_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_masteriyo_user_items`
--
ALTER TABLE `wp_masteriyo_user_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2411;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1790;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
