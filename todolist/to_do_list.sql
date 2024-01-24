-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 24, 2024 lúc 04:56 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `to_do_list`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
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
(25, 'Can add task', 7, 'add_task'),
(26, 'Can change task', 7, 'change_task'),
(27, 'Can delete task', 7, 'delete_task'),
(28, 'Can view task', 7, 'view_task'),
(29, 'Can add todo', 8, 'add_todo'),
(30, 'Can change todo', 8, 'change_todo'),
(31, 'Can delete todo', 8, 'delete_todo'),
(32, 'Can view todo', 8, 'view_todo'),
(33, 'Can add task', 9, 'add_task'),
(34, 'Can change task', 9, 'change_task'),
(35, 'Can delete task', 9, 'delete_task'),
(36, 'Can view task', 9, 'view_task');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$FzKurMtg6akGmIYV5Mzt7c$l7hVkQCdcdpxwvxtzyBIKLwJ3NVAwzJir4kCOS28sTA=', '2024-01-22 09:20:26.861590', 1, 'admin2', '', '', 'sondangcvta@gmail.com', 1, 1, '2024-01-04 06:25:19.449832'),
(3, 'pbkdf2_sha256$720000$VsAxLjep0gylxcVmTxR6cY$TierHmz47GCHPq59b6ny0WYPLRK6TTvPhRcdRz7nzz8=', '2024-01-06 01:31:54.491319', 0, 'demo', '', '', '', 0, 1, '2024-01-06 01:31:52.651231'),
(4, 'pbkdf2_sha256$720000$JzVErcXB60RhlZTv8djiyv$9IXS+WaNkiwMx7MNlc0YHoWQ0XhCsZ1KwlTjBDDqRjg=', '2024-01-22 09:19:53.847883', 0, 'haison', '', '', '', 0, 1, '2024-01-06 16:11:07.246374'),
(6, 'pbkdf2_sha256$720000$dKBUorMxQ9AmRI21kdmmwD$uAy2RPTBvLQtf6fcjXqKng3XaXlSOloVJ287HFuhauk=', NULL, 0, 'user4', 'son', 'dang', 'sondangcvta@gmail.com', 0, 0, '2024-01-06 16:39:20.799187'),
(7, 'pbkdf2_sha256$720000$XxJ50iwXolm6usmtVvp9aZ$0Fa0foG1oqiOzwW4d8v8jTHmX4+uFmegkC4n6DHDYmc=', NULL, 0, 'user5', 'son', 'dang', 'sondangcvta@gmail.com', 0, 0, '2024-01-06 16:40:54.371510'),
(8, 'pbkdf2_sha256$720000$gnGAco7yB6CJcBs83iH5LA$fGjOOEZRQ0HI/Q1aHmRMR43XguuHDrx+hKLC2f8xTmk=', NULL, 0, 'user6', 'son', 'dang', 'sondangcvta@gmail.com', 0, 0, '2024-01-06 16:43:20.712679'),
(11, 'pbkdf2_sha256$720000$Q7zqRdwKxmvsmuGfDZMpkj$NNhv80twoSIa/Kc27/JdF8NR+Fcwypf3JDIrVT0lNtQ=', NULL, 0, 'user1', 'son', 'hai', 'sondangcvta@gmail.com', 0, 0, '2024-01-06 16:48:35.305515'),
(13, 'pbkdf2_sha256$720000$cRVdS9UwHyFp6CwJmn0tdi$vu6jZQ0uP+8lDcNTSUwg5659S1h69FLw4ewl+A6s9sA=', '2024-01-09 13:59:35.911114', 0, 'tuilason', 'Đặng', 'Sơn', 'sondangcvta@gmail.com', 0, 1, '2024-01-08 15:12:02.291165'),
(14, 'pbkdf2_sha256$720000$VEUI9CVqDog1Rac0sIYCaZ$LokFvQI/lf9Tq7lcBCeO76EBBZn8PexJKuAqdceKubE=', '2024-01-08 15:34:29.787707', 0, 'tuilaalo', 'alo', 'ola', 'sondangcvta@gmail.com', 0, 1, '2024-01-08 15:33:33.829912'),
(15, 'pbkdf2_sha256$720000$Oq9CyfV96mF7cKi7eHbOJE$zhIEzDyr5YF7haH+c5LQThk2nhuKeh2kTOVNQNqYssA=', '2024-01-08 16:42:17.811025', 0, 'haisonne', 'Sơn', 'Đặng', 'sondang9a2@gmail.com', 0, 1, '2024-01-08 16:38:39.065333');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-01-08 16:37:11.673010', '10', 'hola', 3, '', 4, 1),
(2, '2024-01-08 16:37:19.520826', '12', 'hunter', 3, '', 4, 1),
(3, '2024-01-08 16:37:26.823305', '2', 'sondangcvta@gmail.com', 3, '', 4, 1),
(4, '2024-01-08 16:37:34.281377', '5', 'tester', 3, '', 4, 1),
(5, '2024-01-08 16:37:39.591838', '9', 'testuser', 3, '', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'tasks', 'task'),
(9, 'todoapp', 'task'),
(8, 'todoapp', 'todo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-18 15:32:34.074408'),
(2, 'auth', '0001_initial', '2023-12-18 15:32:34.694351'),
(3, 'admin', '0001_initial', '2023-12-18 15:32:34.878615'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-18 15:32:34.891582'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-18 15:32:34.910529'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-18 15:32:35.029729'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-18 15:32:35.113254'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-18 15:32:35.231969'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-18 15:32:35.247928'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-18 15:32:35.323726'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-18 15:32:35.327235'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-18 15:32:35.337208'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-18 15:32:35.360149'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-18 15:32:35.388074'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-18 15:32:35.494788'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-18 15:32:35.510745'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-18 15:32:35.537673'),
(18, 'sessions', '0001_initial', '2023-12-18 15:32:35.581931'),
(19, 'tasks', '0001_initial', '2023-12-18 16:49:52.625637'),
(20, 'todoapp', '0001_initial', '2024-01-02 14:33:18.067167'),
(21, 'todoapp', '0002_task_delete_todo', '2024-01-12 05:21:44.605818'),
(22, 'todoapp', '0003_rename_task_todo', '2024-01-12 06:29:50.166771'),
(23, 'todoapp', '0004_remove_todo_created_todo_finish_date', '2024-01-18 06:25:50.450798');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0zy4dik5uhj4jpp6jt1yb3frz97daf4y', '.eJxVjEEOwiAQRe_C2hCYAi0u3fcMzQwMUjWQlHZlvLsh6UK3_73332LBY8_L0Xhb1iiuQovL70YYnlw6iA8s9ypDLfu2kuyKPGmTc438up3u30HGlnvtGbSC5AJCIoUMjMPkTDKeIAIkZS2C92QHUMYzjYFIszcOpjgaEJ8v7kQ3xw:1rOSiF:WhJCF1PUr4qAnMimpm96ycb4p0kOg6EQgPcESP0bTbQ', '2024-01-27 01:21:27.049954'),
('1egln1a0jd6mkcxn2iu2h65tvu1j0cf1', 'e30:1rOA2Y:-2EpmBdjMJ68AiMWFdfAIDksbtbRt-EQv4H6Dl2ZrCc', '2024-01-26 05:25:10.176557'),
('67fgrfboj4psoa0zsby3o9y7ww5oek2f', '.eJxVjMsOwiAQRf-FtSEQHgWX7v0GMsMMUjWQlHZl_Hdt0oVu7znnvkSCba1pG7ykmcRZaHH63RDyg9sO6A7t1mXubV1mlLsiDzrktRM_L4f7d1Bh1G9diC1pjuhC9BaDmWzwoHSkTOAMR6UtKp9dQWW4-AmB0WllwBpQMYr3B-7gN_4:1rM877:bhnyHBOPovAderVKYyMtpeWmDPVzELloaqMQ8vcLm_4', '2024-01-20 14:57:29.964856'),
('932nwex3tkg42dgl4pyl85lv8vasalmc', '.eJxVjMsOwiAQRf-FtSEMBQZcuvcbyHQGpGrapI-V8d-1SRe6veec-1KZtrXlbSlzHkSdFXh1-h174kcZdyJ3Gm-T5mlc56HXu6IPuujrJOV5Ody_g0ZL-9ZIIMIO0CGmEFFsb2wEEOxSsr6i8TZBLFijY64hRGJvPCXbgfPE6v0B3t02_A:1rMshd:sXjlGZMe4jVv0tyIXnxnaUn_WIV6wXNjizlZpSOJMfM', '2024-01-22 16:42:17.813660'),
('a7s1qyxqr0z3fn0iyeij0c8ax9sp3yaw', 'e30:1rLOhP:vK5bckntZsofPiW0GPStmlZrR_CZDJ3Hb7c8Q21k4U0', '2024-01-18 14:27:55.946335'),
('cr1ovsiw23ir0p1jxi3i2v1wqqlxt8z9', 'e30:1rOA1b:apCw-pEgjjJuxfZOG2tTyW-BA5bFuUVRYsc44DeFyZo', '2024-01-26 05:24:11.933394'),
('fbuyc6j3me1lawpwoz6bvp1h6scrkf2m', '.eJxVjDsOgzAQBe_iOrIWWDCkTM8ZLO8vkEQgYaii3D0gUSTtzLz3djFt6xC3rEscxV0dussvo8RPnQ4hjzTdZ8_ztC4j-SPxp82-n0Vft7P9OxhSHvZ1ZVgGQjENSixYqtTIQNCp6g7BsKgTtwJWVRQMAhQGXLdt03RNQe7zBRWHOJY:1rOA9T:gz0bHUdY-ws4dwjUl63fea4pXvLOCbht2rVmAFE7Jvg', '2024-01-26 05:32:19.010845'),
('v8h381oyc5afqgw6znxurs40fmpxhrmi', '.eJxVjEEOwiAQRe_C2hCYAi0u3fcMzQwMUjWQlHZlvLsh6UK3_73332LBY8_L0Xhb1iiuQovL70YYnlw6iA8s9ypDLfu2kuyKPGmTc438up3u30HGlnvtGbSC5AJCIoUMjMPkTDKeIAIkZS2C92QHUMYzjYFIszcOpjgaEJ8v7kQ3xw:1rRqTi:OF1bhz3DDelRLHWVVcIYmyRG8I7OBqaQEDS-1JTKvxU', '2024-02-05 09:20:26.865254');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tasks_task`
--

CREATE TABLE `tasks_task` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `todoapp_todo`
--

CREATE TABLE `todoapp_todo` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `complete` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `finish_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `todoapp_todo`
--

INSERT INTO `todoapp_todo` (`id`, `title`, `description`, `complete`, `user_id`, `finish_date`) VALUES
(29, 'mmm', NULL, 0, NULL, '2024-01-04 16:10:00.000000'),
(31, 'newwww', NULL, 0, NULL, '2024-01-28 16:20:00.000000');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `tasks_task`
--
ALTER TABLE `tasks_task`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `todoapp_todo`
--
ALTER TABLE `todoapp_todo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todoapp_task_user_id_21d6d963_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tasks_task`
--
ALTER TABLE `tasks_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `todoapp_todo`
--
ALTER TABLE `todoapp_todo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `todoapp_todo`
--
ALTER TABLE `todoapp_todo`
  ADD CONSTRAINT `todoapp_task_user_id_21d6d963_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
