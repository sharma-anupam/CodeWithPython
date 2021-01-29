-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 09:01 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_student`
--

CREATE TABLE `api_student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `roll` int(11) NOT NULL,
  `skill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_student`
--

INSERT INTO `api_student` (`id`, `name`, `roll`, `skill`) VALUES
(1, 'Stev', 20101, 'Python');

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
  `id` int(11) NOT NULL,
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
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add reporter', 7, 'add_reporter'),
(26, 'Can change reporter', 7, 'change_reporter'),
(27, 'Can delete reporter', 7, 'delete_reporter'),
(28, 'Can view reporter', 7, 'view_reporter'),
(29, 'Can add article', 8, 'add_article'),
(30, 'Can change article', 8, 'change_article'),
(31, 'Can delete article', 8, 'delete_article'),
(32, 'Can view article', 8, 'view_article'),
(33, 'Can add student', 9, 'add_student'),
(34, 'Can change student', 9, 'change_student'),
(35, 'Can delete student', 9, 'delete_student'),
(36, 'Can view student', 9, 'view_student'),
(37, 'Can add city', 10, 'add_city'),
(38, 'Can change city', 10, 'change_city'),
(39, 'Can delete city', 10, 'delete_city'),
(40, 'Can view city', 10, 'view_city');

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
(1, 'pbkdf2_sha256$216000$WOtxraZ7VHcd$75VCQiOnJtqVgGJLkz7YtY5VDJJKTzr2clOESvuj70Q=', '2020-12-11 10:17:04.532041', 1, 'admin', '', '', '', 1, 1, '2020-12-04 06:19:32.574076');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, '2020-12-04 06:42:00.459128', '1', 'Student object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-12-04 06:42:06.327052', '1', 'Student object (1)', 2, '[]', 9, 1),
(3, '2020-12-04 06:42:54.999261', '1', 'Student object (1)', 2, '[]', 9, 1),
(4, '2020-12-04 06:50:51.767043', '1', 'Student object (1)', 2, '[]', 9, 1),
(5, '2020-12-10 13:04:35.253287', '1', 'Meerut', 1, '[{\"added\": {}}]', 10, 1),
(6, '2020-12-10 13:33:41.738494', '2', 'Gujrat', 1, '[{\"added\": {}}]', 10, 1),
(7, '2020-12-10 13:33:44.474442', '2', 'Gujrat', 2, '[]', 10, 1),
(8, '2020-12-10 13:33:54.146526', '3', 'Chennai', 1, '[{\"added\": {}}]', 10, 1),
(9, '2020-12-11 09:54:14.901049', '9', 'Rajasthan', 3, '', 10, 1),
(10, '2020-12-11 09:54:14.901049', '8', 'Shimla', 3, '', 10, 1),
(11, '2020-12-11 09:54:14.909050', '7', 'Himachal', 3, '', 10, 1),
(12, '2020-12-11 09:54:14.909050', '6', 'Jaipur', 3, '', 10, 1),
(13, '2020-12-11 09:54:14.917065', '5', 'Meerut', 3, '', 10, 1),
(14, '2020-12-11 09:54:14.917065', '4', 'Jaipur', 3, '', 10, 1),
(15, '2020-12-11 09:54:14.917065', '3', 'Chennai', 3, '', 10, 1),
(16, '2020-12-11 09:54:14.925082', '2', 'Gujrat', 3, '', 10, 1),
(17, '2020-12-11 09:54:14.925082', '1', 'Meerut', 3, '', 10, 1),
(18, '2020-12-11 09:59:18.348156', '10', 'Meerut', 1, '[{\"added\": {}}]', 10, 1),
(19, '2020-12-11 10:04:50.158581', '20', 'South Africa', 3, '', 10, 1),
(20, '2020-12-11 10:07:13.011506', '21', 'Newzealand', 3, '', 10, 1),
(21, '2020-12-11 10:17:12.942764', '26', 'Netherland', 3, '', 10, 1),
(22, '2020-12-11 10:17:52.054667', '27', 'West Indies', 3, '', 10, 1),
(23, '2020-12-11 10:19:02.416223', '28', 'Shri Nagar', 3, '', 10, 1),
(24, '2020-12-11 10:24:45.894388', '35', '1', 3, '', 10, 1),
(25, '2020-12-11 10:27:39.582691', '36', 'Gaziabad', 3, '', 10, 1);

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
(1, 'admin', 'logentry'),
(9, 'API', 'student'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'game', 'article'),
(7, 'game', 'reporter'),
(6, 'sessions', 'session'),
(10, 'weather_app', 'city');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-03 06:06:31.003117'),
(2, 'auth', '0001_initial', '2020-12-03 06:06:31.165777'),
(3, 'admin', '0001_initial', '2020-12-03 06:06:31.780148'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-03 06:06:31.917692'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-03 06:06:31.929707'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-03 06:06:32.005574'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-03 06:06:32.069489'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-03 06:06:32.086786'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-03 06:06:32.102761'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-03 06:06:32.160690'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-03 06:06:32.164715'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-03 06:06:32.176667'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-03 06:06:32.196642'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-03 06:06:32.216615'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-03 06:06:32.248608'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-03 06:06:32.268559'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-03 06:06:32.292513'),
(18, 'game', '0001_initial', '2020-12-03 06:06:32.337862'),
(19, 'game', '0002_auto_20201029_1303', '2020-12-03 06:06:32.417124'),
(20, 'game', '0003_auto_20201029_1306', '2020-12-03 06:06:32.430269'),
(21, 'game', '0004_auto_20201101_0820', '2020-12-03 06:06:32.450240'),
(22, 'game', '0005_auto_20201101_0822', '2020-12-03 06:06:32.474172'),
(23, 'sessions', '0001_initial', '2020-12-03 06:06:32.502133'),
(24, 'API', '0001_initial', '2020-12-04 06:15:26.858302'),
(25, 'weather_app', '0001_initial', '2020-12-10 12:59:20.265090');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `news_article`
--

CREATE TABLE `news_article` (
  `id` int(11) NOT NULL,
  `publish_date` date NOT NULL,
  `headline` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `reporter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_article`
--

INSERT INTO `news_article` (`id`, `publish_date`, `headline`, `content`, `reporter_id`) VALUES
(1, '2021-01-27', 'New Whatsap Feature - Calling for Desktop users', 'Users who have received the new update will see voice and video call buttons in the chat header of their WhatsApp app. WhatsApp appears to have started rolling out voice and video calls to select desktop users. This will allow users to make WhatsApp calls directly through their desktops', 2),
(2, '2021-01-28', 'India slips in global corruption index, New Zealan', 'India’s ranking on the Corruption Perception Index (CPI) – 2020, has slipped from 80 to 86, even as its score has decreased only slightly by one point from 41 in 2019, to now stand at 40.\r\nThe index released annually by Transparency International, which is a global civil society, ranks 180 countries by their perceived levels of public sector corruption according to experts and business people. It uses a scale of zero to 100, where zero signifies the highest level of corruption and 100 is very clean', 1),
(3, '2021-01-28', 'HRD ministry renamed as education ministry', 'The Ministry of Education (MoE), formerly the Ministry of Human Resource Development (1985–2020), is a Ministry of GoI responsible for the implementation of the National Policy on Education.[2] The Ministry is further divided into two departments: the Department of School Education and Literacy, which deals with primary, secondary and higher secondary education, adult education and literacy, and the Department of Higher Education, which deals with university level education, technical education, scholarships, etc.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_reporter`
--

CREATE TABLE `news_reporter` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_reporter`
--

INSERT INTO `news_reporter` (`id`, `f_name`, `email_id`) VALUES
(1, 'Sweta Singh', 'singh21aajtak@gmail.com'),
(2, 'Anas anshari', 'ansari221newsnation@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `weather_app_city`
--

CREATE TABLE `weather_app_city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weather_app_city`
--

INSERT INTO `weather_app_city` (`id`, `city_name`) VALUES
(10, 'Meerut'),
(11, 'Noida'),
(12, 'Gujrat'),
(13, 'Shimla'),
(14, 'Meerut'),
(15, 'Greater Noida'),
(16, 'Kerala'),
(17, 'Jammu'),
(18, 'Sri Lanka'),
(19, 'Australia'),
(22, 'Delhi'),
(23, 'Meerut'),
(24, 'delhi'),
(25, 'England'),
(29, 'Pakistan'),
(30, 'England'),
(31, 'Meerut'),
(32, 'India'),
(33, 'Bihar'),
(34, 'Dehradun'),
(37, 'Meerut'),
(38, 'Noida'),
(39, 'meerut'),
(40, 'delhi'),
(41, 'indore'),
(42, 'Meerut'),
(43, 'Jaipur'),
(44, 'Delhi'),
(45, 'Delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_student`
--
ALTER TABLE `api_student`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `news_article`
--
ALTER TABLE `news_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_article_reporter_id_2d6f947d_fk_game_reporter_id` (`reporter_id`);

--
-- Indexes for table `news_reporter`
--
ALTER TABLE `news_reporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weather_app_city`
--
ALTER TABLE `weather_app_city`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_student`
--
ALTER TABLE `api_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `news_article`
--
ALTER TABLE `news_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news_reporter`
--
ALTER TABLE `news_reporter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `weather_app_city`
--
ALTER TABLE `weather_app_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `news_article`
--
ALTER TABLE `news_article`
  ADD CONSTRAINT `game_article_reporter_id_2d6f947d_fk_game_reporter_id` FOREIGN KEY (`reporter_id`) REFERENCES `news_reporter` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
