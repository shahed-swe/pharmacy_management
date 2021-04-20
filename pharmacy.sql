-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 04:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add medicine', 7, 'add_medicine'),
(26, 'Can change medicine', 7, 'change_medicine'),
(27, 'Can delete medicine', 7, 'delete_medicine'),
(28, 'Can view medicine', 7, 'view_medicine'),
(29, 'Can add medicine company', 8, 'add_medicinecompany'),
(30, 'Can change medicine company', 8, 'change_medicinecompany'),
(31, 'Can delete medicine company', 8, 'delete_medicinecompany'),
(32, 'Can view medicine company', 8, 'view_medicinecompany'),
(33, 'Can add save seller', 9, 'add_saveseller'),
(34, 'Can change save seller', 9, 'change_saveseller'),
(35, 'Can delete save seller', 9, 'delete_saveseller'),
(36, 'Can view save seller', 9, 'view_saveseller'),
(37, 'Can add customer', 10, 'add_customer'),
(38, 'Can change customer', 10, 'change_customer'),
(39, 'Can delete customer', 10, 'delete_customer'),
(40, 'Can view customer', 10, 'view_customer'),
(41, 'Can add seller', 11, 'add_seller'),
(42, 'Can change seller', 11, 'change_seller'),
(43, 'Can delete seller', 11, 'delete_seller'),
(44, 'Can view seller', 11, 'view_seller'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add order item', 13, 'add_orderitem'),
(50, 'Can change order item', 13, 'change_orderitem'),
(51, 'Can delete order item', 13, 'delete_orderitem'),
(52, 'Can view order item', 13, 'view_orderitem');

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
(1, '2021-04-17 11:45:52.789814', '1', 'Square 1', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-04-17 11:45:57.581117', '2', 'Beximco 2', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-04-17 11:46:01.138408', '3', 'HealthCare Pharma 3', 1, '[{\"added\": {}}]', 8, 1),
(4, '2021-04-17 11:46:04.974722', '4', 'Aristropharma 4', 1, '[{\"added\": {}}]', 8, 1),
(5, '2021-04-17 11:46:13.480460', '5', 'Opsonin 5', 1, '[{\"added\": {}}]', 8, 1),
(6, '2021-04-17 11:46:33.289260', '1', 'Napa Extra 1', 1, '[{\"added\": {}}]', 7, 1),
(7, '2021-04-17 11:46:43.647164', '2', 'Napa 2', 1, '[{\"added\": {}}]', 7, 1),
(8, '2021-04-17 11:46:57.847835', '3', 'Neuro Care 3', 1, '[{\"added\": {}}]', 7, 1),
(9, '2021-04-17 11:47:01.802014', '3', 'Neuro Care 3', 3, '', 7, 1),
(10, '2021-04-17 11:47:11.084297', '4', 'Atos 4', 1, '[{\"added\": {}}]', 7, 1),
(11, '2021-04-17 11:47:35.823334', '1', ' ', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 6, 1),
(12, '2021-04-17 17:08:23.902062', '1', 'Shahed Talukder', 2, '[{\"changed\": {\"fields\": [\"Email\"]}}]', 9, 1),
(13, '2021-04-17 17:17:03.924771', '3', 'Shahed Talukder', 3, '', 6, 1),
(14, '2021-04-17 17:21:21.963022', '4', 'Shahed Talukder', 3, '', 6, 1),
(15, '2021-04-17 17:23:32.575431', '5', 'Shahed Talukder', 3, '', 6, 1),
(16, '2021-04-19 15:59:27.936093', '1', 'Napa Extra 1', 2, '[{\"changed\": {\"fields\": [\"Total stock\"]}}]', 7, 1),
(17, '2021-04-19 16:05:19.348821', '1', 'Napa Extra 1', 2, '[{\"changed\": {\"fields\": [\"Total stock\"]}}]', 7, 1),
(18, '2021-04-19 16:05:26.892600', '2', 'Napa 2', 2, '[{\"changed\": {\"fields\": [\"Total stock\"]}}]', 7, 1),
(19, '2021-04-19 16:05:32.996655', '5', 'Neuroline 5', 2, '[{\"changed\": {\"fields\": [\"Total stock\"]}}]', 7, 1),
(20, '2021-04-19 16:05:38.846984', '6', 'Atos 6', 2, '[{\"changed\": {\"fields\": [\"Total stock\"]}}]', 7, 1),
(21, '2021-04-19 16:12:09.624123', '6', 'OrderItem object (6)', 3, '', 13, 1),
(22, '2021-04-19 16:12:09.629124', '4', 'OrderItem object (4)', 3, '', 13, 1),
(23, '2021-04-19 16:12:09.635125', '3', 'OrderItem object (3)', 3, '', 13, 1),
(24, '2021-04-19 16:12:09.646125', '2', 'OrderItem object (2)', 3, '', 13, 1),
(25, '2021-04-19 16:12:09.650125', '1', 'OrderItem object (1)', 3, '', 13, 1),
(26, '2021-04-19 16:17:15.546470', '9', 'OrderItem object (9)', 3, '', 13, 1),
(27, '2021-04-19 16:17:15.552468', '8', 'OrderItem object (8)', 3, '', 13, 1),
(28, '2021-04-19 16:17:15.562470', '7', 'OrderItem object (7)', 3, '', 13, 1);

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
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(10, 'main', 'customer'),
(7, 'main', 'medicine'),
(8, 'main', 'medicinecompany'),
(12, 'main', 'order'),
(13, 'main', 'orderitem'),
(9, 'main', 'saveseller'),
(11, 'main', 'seller'),
(6, 'main', 'user'),
(5, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2021-04-17 11:43:43.931456'),
(2, 'contenttypes', '0002_remove_content_type_name', '2021-04-17 11:43:44.061466'),
(3, 'auth', '0001_initial', '2021-04-17 11:43:44.236480'),
(4, 'auth', '0002_alter_permission_name_max_length', '2021-04-17 11:43:44.735522'),
(5, 'auth', '0003_alter_user_email_max_length', '2021-04-17 11:43:44.745522'),
(6, 'auth', '0004_alter_user_username_opts', '2021-04-17 11:43:44.754523'),
(7, 'auth', '0005_alter_user_last_login_null', '2021-04-17 11:43:44.764523'),
(8, 'auth', '0006_require_contenttypes_0002', '2021-04-17 11:43:44.769524'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2021-04-17 11:43:44.780528'),
(10, 'auth', '0008_alter_user_username_max_length', '2021-04-17 11:43:44.790527'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2021-04-17 11:43:44.803527'),
(12, 'auth', '0010_alter_group_name_max_length', '2021-04-17 11:43:44.826528'),
(13, 'auth', '0011_update_proxy_permissions', '2021-04-17 11:43:44.837530'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2021-04-17 11:43:44.847533'),
(15, 'main', '0001_initial', '2021-04-17 11:43:45.453580'),
(16, 'admin', '0001_initial', '2021-04-17 11:43:46.602674'),
(17, 'admin', '0002_logentry_remove_auto_add', '2021-04-17 11:43:46.853694'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-17 11:43:46.868698'),
(19, 'sessions', '0001_initial', '2021-04-17 11:43:46.936701'),
(20, 'main', '0002_auto_20210417_1745', '2021-04-17 11:45:34.388884'),
(21, 'main', '0003_saveseller_email', '2021-04-17 17:07:45.283863'),
(22, 'main', '0004_delete_order', '2021-04-19 10:15:55.191268'),
(23, 'main', '0005_order_orderitem', '2021-04-19 10:24:00.991589');

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
('1j4vrw9163qtgrav5e4rmzqz4dybq383', '.eJxVjEEOwiAQRe_C2hCgFKhL956BDMOMVA0kpV0Z765NutDtf-_9l4iwrSVunZY4Z3EWTpx-twT4oLqDfId6axJbXZc5yV2RB-3y2jI9L4f7d1Cgl2-tldGkWAdns0ON7Kbgw8gJCT2iMejSaGFAnExSmVkT0TBkr5SzoFi8P--FOIc:1lXotf:SywkS6tSjZVpHDbgBdWJf4odf8PNO777SDcKZKqz91o', '2021-05-01 17:38:19.219598'),
('4m3cvrggdc8aaynulf181mdzt48v9fux', '.eJxVjEEOwiAQRe_C2hBgGEpduvcMhGFAqoYmpV0Z765NutDtf-_9lwhxW2vYel7CxOIstDj9bhTTI7cd8D222yzT3NZlIrkr8qBdXmfOz8vh_h3U2Ou39pl4HAwSQAJ2SWmF7FllGC14TuAdGYyFPA7aZA_oGC1z0a5YNCDeH9y4N3o:1lYQqm:PKDBovCqTFgxOJ3gj0_8TOjZ09u9oK3JDrvtEDy_4R8', '2021-05-03 10:09:52.380855'),
('az0f5ydcvup7wfyq3vbn5ah9qlyd0g77', '.eJxVjEEOwiAQRe_C2hBgGEpduvcMhGFAqoYmpV0Z765NutDtf-_9lwhxW2vYel7CxOIstDj9bhTTI7cd8D222yzT3NZlIrkr8qBdXmfOz8vh_h3U2Ou39pl4HAwSQAJ2SWmF7FllGC14TuAdGYyFPA7aZA_oGC1z0a5YNCDeH9y4N3o:1lY59F:U_dQUYfg8_LUKAIW79J03p8eeq6xmxbIMTH-9tI3Fg4', '2021-05-02 10:59:29.418333'),
('hk1z21m600nu34yfhn7bfmgx12pohq9q', '.eJxVjEEOwiAQRe_C2hBgGEpduvcMhGFAqoYmpV0Z765NutDtf-_9lwhxW2vYel7CxOIstDj9bhTTI7cd8D222yzT3NZlIrkr8qBdXmfOz8vh_h3U2Ou39pl4HAwSQAJ2SWmF7FllGC14TuAdGYyFPA7aZA_oGC1z0a5YNCDeH9y4N3o:1lYSfU:QkJsmMXlG1aY4b19AC5uLllyvkxTbTi1IXHhmk4xN6Y', '2021-05-03 12:06:20.629445'),
('t0s23fihrvra0w5a56tnjkdbxalwx0ps', '.eJxVjEEOwiAQRe_C2hCgFKhL956BDMOMVA0kpV0Z765NutDtf-_9l4iwrSVunZY4Z3EWTpx-twT4oLqDfId6axJbXZc5yV2RB-3y2jI9L4f7d1Cgl2-tldGkWAdns0ON7Kbgw8gJCT2iMejSaGFAnExSmVkT0TBkr5SzoFi8P--FOIc:1lYWdg:NzWX_etSYtrZdTEVtgGUM_sUdPNTIIEXod92ktJhDs0', '2021-05-03 16:20:44.748282'),
('wo24w2ejo55bz1xool4288dob2vitjhf', '.eJxVjEEOwiAQRe_C2hBgGEpduvcMhGFAqoYmpV0Z765NutDtf-_9lwhxW2vYel7CxOIstDj9bhTTI7cd8D222yzT3NZlIrkr8qBdXmfOz8vh_h3U2Ou39pl4HAwSQAJ2SWmF7FllGC14TuAdGYyFPA7aZA_oGC1z0a5YNCDeH9y4N3o:1lXoQI:3cfKPXKFEckJ1TPvq8S0GauorT6YJR31UI3B8Cq13bU', '2021-05-01 17:07:58.506662'),
('yr3o513pwkgzzp1ptajmx39l4gdqwolv', '.eJxVjEEOwiAQRe_C2hBgGEpduvcMhGFAqoYmpV0Z765NutDtf-_9lwhxW2vYel7CxOIstDj9bhTTI7cd8D222yzT3NZlIrkr8qBdXmfOz8vh_h3U2Ou39pl4HAwSQAJ2SWmF7FllGC14TuAdGYyFPA7aZA_oGC1z0a5YNCDeH9y4N3o:1lXp0R:GRkaHtHyhfCkGMQ-6DVieWr3mbZd62wnzli6Fn_VczE', '2021-05-01 17:45:19.864979'),
('zedq3fxfgx18rqjir4bun7ocjx48msgz', '.eJxVjEEOwiAQRe_C2hBgGEpduvcMhGFAqoYmpV0Z765NutDtf-_9lwhxW2vYel7CxOIstDj9bhTTI7cd8D222yzT3NZlIrkr8qBdXmfOz8vh_h3U2Ou39pl4HAwSQAJ2SWmF7FllGC14TuAdGYyFPA7aZA_oGC1z0a5YNCDeH9y4N3o:1lXjRC:K2nKlYTeqYLilXTlAovWpXFIG4M6vfVBK8DxCFOBt40', '2021-05-01 11:48:34.904728');

-- --------------------------------------------------------

--
-- Table structure for table `main_customer`
--

CREATE TABLE `main_customer` (
  `customer_id` varchar(120) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_address` longtext DEFAULT NULL,
  `phone_no` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_customer`
--

INSERT INTO `main_customer` (`customer_id`, `user_id`, `user_address`, `phone_no`) VALUES
('2', 2, 'aasfasdfasdfadf', '5467458768');

-- --------------------------------------------------------

--
-- Table structure for table `main_medicine`
--

CREATE TABLE `main_medicine` (
  `id` int(11) NOT NULL,
  `medicine_name` varchar(120) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `medicine_image` varchar(100) DEFAULT NULL,
  `total_stock` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_medicine`
--

INSERT INTO `main_medicine` (`id`, `medicine_name`, `price`, `medicine_image`, `total_stock`) VALUES
(1, 'Napa Extra', 10, '', '160'),
(2, 'Napa', 10, '', '330'),
(5, 'Neuroline', 10, '', '160'),
(6, 'Atos', 20, '', '390'),
(7, 'Omastin', 20, '', '270');

-- --------------------------------------------------------

--
-- Table structure for table `main_medicinecompany`
--

CREATE TABLE `main_medicinecompany` (
  `id` int(11) NOT NULL,
  `company_name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_medicinecompany`
--

INSERT INTO `main_medicinecompany` (`id`, `company_name`) VALUES
(7, 'Aristro pharma Ltd'),
(8, 'Beximco'),
(3, 'HealthCare Pharma'),
(6, 'Incepta'),
(5, 'Opsonin'),
(1, 'Square Ltd');

-- --------------------------------------------------------

--
-- Table structure for table `main_medicine_company_name`
--

CREATE TABLE `main_medicine_company_name` (
  `id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `medicinecompany_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_medicine_company_name`
--

INSERT INTO `main_medicine_company_name` (`id`, `medicine_id`, `medicinecompany_id`) VALUES
(2, 1, 5),
(3, 2, 1),
(4, 2, 3),
(9, 5, 3),
(10, 5, 6),
(12, 6, 1),
(11, 6, 3),
(14, 7, 1),
(13, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `main_order`
--

CREATE TABLE `main_order` (
  `id` int(11) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `trx_id` varchar(120) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_order`
--

INSERT INTO `main_order` (`id`, `complete`, `trx_id`, `customer_id`) VALUES
(2, 0, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_orderitem`
--

CREATE TABLE `main_orderitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_saveseller`
--

CREATE TABLE `main_saveseller` (
  `id` int(11) NOT NULL,
  `seller_id` varchar(120) DEFAULT NULL,
  `username` varchar(120) DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `user_address` longtext DEFAULT NULL,
  `phone_no` varchar(120) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_seller`
--

CREATE TABLE `main_seller` (
  `seller_id` varchar(120) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_address` longtext DEFAULT NULL,
  `phone_no` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_seller`
--

INSERT INTO `main_seller` (`seller_id`, `user_id`, `user_address`, `phone_no`) VALUES
('1', 6, 'asdfasdfaf', '34563456');

-- --------------------------------------------------------

--
-- Table structure for table `main_user`
--

CREATE TABLE `main_user` (
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
  `date_joined` datetime(6) NOT NULL,
  `is_seller` tinyint(1) NOT NULL,
  `is_customer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_user`
--

INSERT INTO `main_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_seller`, `is_customer`) VALUES
(1, 'pbkdf2_sha256$216000$ry4GAi0J37W1$QzRmtO3G+3brabdT4T2HAtXLMcCjwdCfzgj8ChnuBbw=', '2021-04-19 12:06:20.621444', 1, 'shazzad', '', '', 'shahed@gmail.com', 1, 1, '2021-04-17 11:44:18.000000', 0, 0),
(2, 'pbkdf2_sha256$216000$RNvBqu1m6Gbb$xTYI4afNU0ZLfo80AKaF2KdtIecxtMiJOLU7aXMuBnM=', '2021-04-19 16:20:11.029526', 0, 'rakib', 'rakib', 'hasan', 'rakib@gmail.com', 0, 1, '2021-04-17 11:58:38.358816', 0, 1),
(6, 'pbkdf2_sha256$216000$phG6ROpUNOpc$0Ak22aijw9oeAqo/u1yKJj/tiCoY2jADXnOCq+YveB0=', '2021-04-19 16:20:44.737279', 0, 'shahed', 'Shahed', 'Talukder', 'shahedtalukder51@gmail.com', 0, 1, '2021-04-17 17:23:40.858719', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_user_groups`
--

CREATE TABLE `main_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_user_user_permissions`
--

CREATE TABLE `main_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_main_user_id` (`user_id`);

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
-- Indexes for table `main_customer`
--
ALTER TABLE `main_customer`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`);

--
-- Indexes for table `main_medicine`
--
ALTER TABLE `main_medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_medicinecompany`
--
ALTER TABLE `main_medicinecompany`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_name` (`company_name`);

--
-- Indexes for table `main_medicine_company_name`
--
ALTER TABLE `main_medicine_company_name`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_medicine_company_na_medicine_id_medicinecomp_41429abd_uniq` (`medicine_id`,`medicinecompany_id`),
  ADD KEY `main_medicine_compan_medicinecompany_id_dcc12b5a_fk_main_medi` (`medicinecompany_id`);

--
-- Indexes for table `main_order`
--
ALTER TABLE `main_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_order_customer_id_73911006_fk_main_customer_user_id` (`customer_id`);

--
-- Indexes for table `main_orderitem`
--
ALTER TABLE `main_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_orderitem_medicine_id_630463e2_fk_main_medicine_id` (`medicine_id`),
  ADD KEY `main_orderitem_order_id_72ea9725_fk_main_order_id` (`order_id`);

--
-- Indexes for table `main_saveseller`
--
ALTER TABLE `main_saveseller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seller_id` (`seller_id`);

--
-- Indexes for table `main_seller`
--
ALTER TABLE `main_seller`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `seller_id` (`seller_id`);

--
-- Indexes for table `main_user`
--
ALTER TABLE `main_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `main_user_groups`
--
ALTER TABLE `main_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_user_groups_user_id_group_id_ae195797_uniq` (`user_id`,`group_id`),
  ADD KEY `main_user_groups_group_id_a337ba62_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `main_user_user_permissions`
--
ALTER TABLE `main_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_user_user_permissions_user_id_permission_id_96b9fadf_uniq` (`user_id`,`permission_id`),
  ADD KEY `main_user_user_permi_permission_id_cd2b56a3_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `main_medicine`
--
ALTER TABLE `main_medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `main_medicinecompany`
--
ALTER TABLE `main_medicinecompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `main_medicine_company_name`
--
ALTER TABLE `main_medicine_company_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_order`
--
ALTER TABLE `main_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_orderitem`
--
ALTER TABLE `main_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_saveseller`
--
ALTER TABLE `main_saveseller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_user`
--
ALTER TABLE `main_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_user_groups`
--
ALTER TABLE `main_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_user_user_permissions`
--
ALTER TABLE `main_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `main_customer`
--
ALTER TABLE `main_customer`
  ADD CONSTRAINT `main_customer_user_id_19b4dfa5_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `main_medicine_company_name`
--
ALTER TABLE `main_medicine_company_name`
  ADD CONSTRAINT `main_medicine_compan_medicine_id_27366312_fk_main_medi` FOREIGN KEY (`medicine_id`) REFERENCES `main_medicine` (`id`),
  ADD CONSTRAINT `main_medicine_compan_medicinecompany_id_dcc12b5a_fk_main_medi` FOREIGN KEY (`medicinecompany_id`) REFERENCES `main_medicinecompany` (`id`);

--
-- Constraints for table `main_order`
--
ALTER TABLE `main_order`
  ADD CONSTRAINT `main_order_customer_id_73911006_fk_main_customer_user_id` FOREIGN KEY (`customer_id`) REFERENCES `main_customer` (`user_id`);

--
-- Constraints for table `main_orderitem`
--
ALTER TABLE `main_orderitem`
  ADD CONSTRAINT `main_orderitem_medicine_id_630463e2_fk_main_medicine_id` FOREIGN KEY (`medicine_id`) REFERENCES `main_medicine` (`id`),
  ADD CONSTRAINT `main_orderitem_order_id_72ea9725_fk_main_order_id` FOREIGN KEY (`order_id`) REFERENCES `main_order` (`id`);

--
-- Constraints for table `main_seller`
--
ALTER TABLE `main_seller`
  ADD CONSTRAINT `main_seller_user_id_d9f284db_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `main_user_groups`
--
ALTER TABLE `main_user_groups`
  ADD CONSTRAINT `main_user_groups_group_id_a337ba62_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `main_user_groups_user_id_df502602_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `main_user_user_permissions`
--
ALTER TABLE `main_user_user_permissions`
  ADD CONSTRAINT `main_user_user_permi_permission_id_cd2b56a3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `main_user_user_permissions_user_id_451ce57f_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
