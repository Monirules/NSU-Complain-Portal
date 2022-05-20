-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2022 at 05:37 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse327`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'monirul.mahmud@northsouth.edu', 1, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add site', 1, 'add_site'),
(2, 'Can change site', 1, 'change_site'),
(3, 'Can delete site', 1, 'delete_site'),
(4, 'Can view site', 1, 'view_site'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add extendeduser', 8, 'add_extendeduser'),
(30, 'Can change extendeduser', 8, 'change_extendeduser'),
(31, 'Can delete extendeduser', 8, 'delete_extendeduser'),
(32, 'Can view extendeduser', 8, 'view_extendeduser'),
(33, 'Can add complain', 9, 'add_complain'),
(34, 'Can change complain', 9, 'change_complain'),
(35, 'Can delete complain', 9, 'delete_complain'),
(36, 'Can view complain', 9, 'view_complain'),
(37, 'Can add comment', 10, 'add_comment'),
(38, 'Can change comment', 10, 'change_comment'),
(39, 'Can delete comment', 10, 'delete_comment'),
(40, 'Can view comment', 10, 'view_comment'),
(41, 'Can add email address', 11, 'add_emailaddress'),
(42, 'Can change email address', 11, 'change_emailaddress'),
(43, 'Can delete email address', 11, 'delete_emailaddress'),
(44, 'Can view email address', 11, 'view_emailaddress'),
(45, 'Can add email confirmation', 12, 'add_emailconfirmation'),
(46, 'Can change email confirmation', 12, 'change_emailconfirmation'),
(47, 'Can delete email confirmation', 12, 'delete_emailconfirmation'),
(48, 'Can view email confirmation', 12, 'view_emailconfirmation'),
(49, 'Can add social account', 13, 'add_socialaccount'),
(50, 'Can change social account', 13, 'change_socialaccount'),
(51, 'Can delete social account', 13, 'delete_socialaccount'),
(52, 'Can view social account', 13, 'view_socialaccount'),
(53, 'Can add social application', 14, 'add_socialapp'),
(54, 'Can change social application', 14, 'change_socialapp'),
(55, 'Can delete social application', 14, 'delete_socialapp'),
(56, 'Can view social application', 14, 'view_socialapp'),
(57, 'Can add social application token', 15, 'add_socialtoken'),
(58, 'Can change social application token', 15, 'change_socialtoken'),
(59, 'Can delete social application token', 15, 'delete_socialtoken'),
(60, 'Can view social application token', 15, 'view_socialtoken'),
(61, 'Can add association', 16, 'add_association'),
(62, 'Can change association', 16, 'change_association'),
(63, 'Can delete association', 16, 'delete_association'),
(64, 'Can view association', 16, 'view_association'),
(65, 'Can add code', 17, 'add_code'),
(66, 'Can change code', 17, 'change_code'),
(67, 'Can delete code', 17, 'delete_code'),
(68, 'Can view code', 17, 'view_code'),
(69, 'Can add nonce', 18, 'add_nonce'),
(70, 'Can change nonce', 18, 'change_nonce'),
(71, 'Can delete nonce', 18, 'delete_nonce'),
(72, 'Can view nonce', 18, 'view_nonce'),
(73, 'Can add user social auth', 19, 'add_usersocialauth'),
(74, 'Can change user social auth', 19, 'change_usersocialauth'),
(75, 'Can delete user social auth', 19, 'delete_usersocialauth'),
(76, 'Can view user social auth', 19, 'view_usersocialauth'),
(77, 'Can add partial', 20, 'add_partial'),
(78, 'Can change partial', 20, 'change_partial'),
(79, 'Can delete partial', 20, 'delete_partial'),
(80, 'Can view partial', 20, 'view_partial'),
(81, 'Can add troubleshoot', 21, 'add_troubleshoot'),
(82, 'Can change troubleshoot', 21, 'change_troubleshoot'),
(83, 'Can delete troubleshoot', 21, 'delete_troubleshoot'),
(84, 'Can view troubleshoot', 21, 'view_troubleshoot');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$r2JKm15jG34RG8eOTJDj8U$6785e/sIC2lTk08tQ2Y6GHnYWIpIz5ZjN8QG/G0frU0=', '2022-04-18 13:12:43.694256', 0, 'trump', '', '', 'donal@northsouth.edu', 0, 1, '2022-04-18 11:26:18.634921'),
(2, 'pbkdf2_sha256$320000$nmpeknB9exCRA51WeFTuko$UCDxgbpFVJ2PdYlx2eAT6EkJRH5ZuBv7MP0UvUej00E=', '2022-04-28 05:36:09.501014', 1, 'admin', '', '', '', 1, 1, '2022-04-18 11:59:29.183551'),
(3, 'pbkdf2_sha256$320000$H3gbWU76Bp0nWy5hlJDhcr$mow4aIlAyySsO00G4/+IJRAVkHPrdj6ggUX4WBzWhvE=', '2022-04-19 03:40:46.055255', 0, 'putin', '', '', 'putin@northsouth.edu', 0, 1, '2022-04-18 13:07:17.277454'),
(5, 'pbkdf2_sha256$320000$0u98BEWCrah79XR7hJ2b14$Niol204Xb4ahnFuUxvgqiXsg8lHxtJWUW2C4FRPWlak=', '2022-04-29 05:09:24.793045', 0, 'hafeza', '', '', 'hafeza.akter@northsouth.edu', 0, 1, '2022-04-18 14:18:44.746912'),
(6, '!HVhcIhjeKhSyBjTgVC5sMiv7omdD1Cy6Vbqclnjp', '2022-04-19 03:47:35.262389', 0, 'monirul_islam_mahmud', 'Monirul Islam Mahmud', '2011839642', 'monirul.mahmud@northsouth.edu', 0, 1, '2022-04-19 03:47:35.211196');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `complain_id` int(30) DEFAULT NULL,
  `id` int(30) NOT NULL,
  `name` varchar(80) NOT NULL,
  `body` text NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`complain_id`, `id`, `name`, `body`, `date_added`) VALUES
(4, 1, 'Putin', 'STOP WAR', '2022-04-18'),
(4, 2, 'Putin', 'STOP WAR', '2022-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `complain` varchar(200) NOT NULL,
  `against` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `email`, `complain`, `against`, `position`, `image`) VALUES
(1, 'putin@northsouth.edu', 'jhgfds', 'trump', 'Faculty', 'static/demo-user_fckEytx.png'),
(2, 'putin@northsouth.edu', 'jhgfds', 'trump', 'Faculty', 'static/demo-user_VK7WcBR.png'),
(3, 'donal@northsouth.edu', 'dmdkdkfnfnfnf', 'trump', 'Faculty', 'static/demo-user_9CnHq24.png'),
(4, 'donal@northsouth.edu', 'dmdkdkfnfnfnf', 'trump', 'Faculty', 'static/demo-user_cOCuhK6.png'),
(7, 'donaaaaaal@northsouth.edu', 'dmdkdkfnfnfnf', 'trump', 'President', 'static/demo-user_dwFa432.png');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-18 12:00:18.649697', '2', '127.0.0.1:8000', 2, '[{\"changed\": {\"fields\": [\"Domain name\", \"Display name\"]}}]', 1, 2),
(2, '2022-04-18 13:37:04.263285', '2', 'http://127.0.0.1:8000/accounts/google/login', 2, '[{\"changed\": {\"fields\": [\"Domain name\", \"Display name\"]}}]', 1, 2),
(3, '2022-04-18 13:39:04.276674', '1', 'auth-app-django', 1, '[{\"added\": {}}]', 14, 2),
(4, '2022-04-18 14:17:38.609006', '4', 'hafeza', 3, '', 5, 2),
(5, '2022-04-18 15:03:00.797243', '1', 'putin@northsouth.edu', 1, '[{\"added\": {}}]', 10, 2),
(6, '2022-04-18 15:04:27.834394', '2', 'putin@northsouth.edu', 1, '[{\"added\": {}}]', 10, 2),
(7, '2022-04-18 15:13:13.071589', '3', 'monirul.mahmud@north.edu', 1, '[{\"added\": {}}]', 10, 2),
(8, '2022-04-28 05:07:51.137839', '4', 'hello@northsouth.edu', 1, '[{\"added\": {}}]', 10, 2),
(9, '2022-04-28 05:31:35.658830', '5', 'hello@northsouth.edu', 1, '[{\"added\": {}}]', 10, 2),
(10, '2022-04-28 05:36:18.925737', '6', 'hello@northsouth.edu', 1, '[{\"added\": {}}]', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(11, 'account', 'emailaddress'),
(12, 'account', 'emailconfirmation'),
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(10, 'nsu_complain_app', 'comment'),
(9, 'nsu_complain_app', 'complain'),
(8, 'nsu_complain_app', 'extendeduser'),
(21, 'nsu_complain_app', 'troubleshoot'),
(7, 'sessions', 'session'),
(1, 'sites', 'site'),
(13, 'socialaccount', 'socialaccount'),
(14, 'socialaccount', 'socialapp'),
(15, 'socialaccount', 'socialtoken'),
(16, 'social_django', 'association'),
(17, 'social_django', 'code'),
(18, 'social_django', 'nonce'),
(20, 'social_django', 'partial'),
(19, 'social_django', 'usersocialauth');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-18 11:23:40.273822'),
(2, 'auth', '0001_initial', '2022-04-18 11:23:41.228652'),
(3, 'account', '0001_initial', '2022-04-18 11:23:41.508083'),
(4, 'account', '0002_email_max_length', '2022-04-18 11:23:41.521217'),
(5, 'admin', '0001_initial', '2022-04-18 11:23:41.872925'),
(6, 'admin', '0002_logentry_remove_auto_add', '2022-04-18 11:23:41.888155'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-18 11:23:41.896271'),
(8, 'contenttypes', '0002_remove_content_type_name', '2022-04-18 11:23:41.994964'),
(9, 'auth', '0002_alter_permission_name_max_length', '2022-04-18 11:23:42.095484'),
(10, 'auth', '0003_alter_user_email_max_length', '2022-04-18 11:23:42.119821'),
(11, 'auth', '0004_alter_user_username_opts', '2022-04-18 11:23:42.130702'),
(12, 'auth', '0005_alter_user_last_login_null', '2022-04-18 11:23:42.192848'),
(13, 'auth', '0006_require_contenttypes_0002', '2022-04-18 11:23:42.199523'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2022-04-18 11:23:42.209891'),
(15, 'auth', '0008_alter_user_username_max_length', '2022-04-18 11:23:42.230013'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2022-04-18 11:23:42.249161'),
(17, 'auth', '0010_alter_group_name_max_length', '2022-04-18 11:23:42.272003'),
(18, 'auth', '0011_update_proxy_permissions', '2022-04-18 11:23:42.284756'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2022-04-18 11:23:42.301155'),
(20, 'sessions', '0001_initial', '2022-04-18 11:23:42.360999'),
(21, 'sites', '0001_initial', '2022-04-18 11:23:42.392160'),
(22, 'sites', '0002_alter_domain_unique', '2022-04-18 11:23:42.421760'),
(23, 'default', '0001_initial', '2022-04-18 11:23:42.774039'),
(24, 'social_auth', '0001_initial', '2022-04-18 11:23:42.774039'),
(25, 'default', '0002_add_related_name', '2022-04-18 11:23:42.798952'),
(26, 'social_auth', '0002_add_related_name', '2022-04-18 11:23:42.803923'),
(27, 'default', '0003_alter_email_max_length', '2022-04-18 11:23:42.818808'),
(28, 'social_auth', '0003_alter_email_max_length', '2022-04-18 11:23:42.824595'),
(29, 'default', '0004_auto_20160423_0400', '2022-04-18 11:23:42.834223'),
(30, 'social_auth', '0004_auto_20160423_0400', '2022-04-18 11:23:42.838315'),
(31, 'social_auth', '0005_auto_20160727_2333', '2022-04-18 11:23:42.871351'),
(32, 'social_django', '0006_partial', '2022-04-18 11:23:42.924588'),
(33, 'social_django', '0007_code_timestamp', '2022-04-18 11:23:42.973782'),
(34, 'social_django', '0008_partial_timestamp', '2022-04-18 11:23:43.017796'),
(35, 'social_django', '0009_auto_20191118_0520', '2022-04-18 11:23:43.063676'),
(36, 'social_django', '0010_uid_db_index', '2022-04-18 11:23:43.092770'),
(37, 'socialaccount', '0001_initial', '2022-04-18 11:23:43.708695'),
(38, 'socialaccount', '0002_token_max_lengths', '2022-04-18 11:23:43.775412'),
(39, 'socialaccount', '0003_extra_data_default_dict', '2022-04-18 11:23:43.798018'),
(40, 'social_django', '0003_alter_email_max_length', '2022-04-18 11:23:43.807519'),
(41, 'social_django', '0001_initial', '2022-04-18 11:23:43.826576'),
(42, 'social_django', '0002_add_related_name', '2022-04-18 11:23:43.833844'),
(43, 'social_django', '0004_auto_20160423_0400', '2022-04-18 11:23:43.849749'),
(44, 'social_django', '0005_auto_20160727_2333', '2022-04-18 11:23:43.855240');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cv2etkaxxljbth735piv6hb86bvqrmdd', '.eJxVjMsOwiAUBf-FtSGWcgFduu83kPugUjWQlHZl_HdD0oVuz8yct4q4bznuLa1xEXVVoE6_GyE_U-lAHljuVXMt27qQ7oo-aNNTlfS6He7fQcaWe30Z3MjAMIzhLG5mcMmSD2CNABm2yYFhZuftDCIBkI1NiIGInDeoPl_jdThm:1nkIse:4XjKB1mEOAqR9mA0hvzwKRQZnfP-D8T_L88T1Nnr5Tk', '2022-05-13 05:09:24.796005');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(2, 'http://127.0.0.1:8000/accounts/google/login', 'http://127.0.0.1:8000');

-- --------------------------------------------------------

--
-- Table structure for table `extendeduser`
--

CREATE TABLE `extendeduser` (
  `user_id` int(11) NOT NULL,
  `id` int(30) DEFAULT NULL,
  `fullname` varchar(70) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extendeduser`
--

INSERT INTO `extendeduser` (`user_id`, `id`, `fullname`, `pic`, `role`) VALUES
(5, NULL, 'Hafeza Akter', 'static/demo-2_KRkPM2b.png', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialaccount`
--

INSERT INTO `socialaccount_socialaccount` (`id`, `provider`, `uid`, `last_login`, `date_joined`, `extra_data`, `user_id`) VALUES
(1, 'google', '107680208333488735630', '2022-04-19 03:47:35.235544', '2022-04-19 03:47:35.235544', '{\"id\": \"107680208333488735630\", \"email\": \"monirul.mahmud@northsouth.edu\", \"verified_email\": true, \"name\": \"Monirul Islam Mahmud 2011839642\", \"given_name\": \"Monirul Islam Mahmud\", \"family_name\": \"2011839642\", \"picture\": \"https://lh3.googleusercontent.com/a-/AOh14GinGmjna8wlv2PLFBgpBShRHok3Dj1rigaWey66Dw=s96-c\", \"locale\": \"en\", \"hd\": \"northsouth.edu\"}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialapp`
--

INSERT INTO `socialaccount_socialapp` (`id`, `provider`, `name`, `client_id`, `secret`, `key`) VALUES
(1, 'google', 'auth-app-django', '1053225574720-vs6oqo7k2oh9mtoommhu10hfjk87ef69.apps.googleusercontent.com', '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', '');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` bigint(20) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialapp_sites`
--

INSERT INTO `socialaccount_socialapp_sites` (`id`, `socialapp_id`, `site_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `troubleshoot`
--

CREATE TABLE `troubleshoot` (
  `id` int(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `nsuid` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `troubleshoot`
--

INSERT INTO `troubleshoot` (`id`, `fullname`, `nsuid`, `email`, `comment`) VALUES
(1, 'xdggd', 192217504, 'rg', 'dcdc'),
(2, 'xdggd', 192217504, 'rg', 'dcdc'),
(3, 'Monirul Islam Mahmud', 2011839642, 'monirul.mahmud@northsouth.edu', 'Welcome to NSU complain portal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `extendeduser`
--
ALTER TABLE `extendeduser`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

--
-- Indexes for table `troubleshoot`
--
ALTER TABLE `troubleshoot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `extendeduser`
--
ALTER TABLE `extendeduser`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `troubleshoot`
--
ALTER TABLE `troubleshoot`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
