-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `web`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `auth_permission`
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
(25, 'Can add news', 7, 'add_news'),
(26, 'Can change news', 7, 'change_news'),
(27, 'Can delete news', 7, 'delete_news'),
(28, 'Can view news', 7, 'view_news'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add products', 9, 'add_products'),
(34, 'Can change products', 9, 'change_products'),
(35, 'Can delete products', 9, 'delete_products'),
(36, 'Can view products', 9, 'view_products');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$idZ3rg273o6Hf6QIyobFtK$ltTchuA0w4j1C11ht1mBCxAez+Pf7YxhG/l+5WpzBeo=', '2022-01-19 10:43:30.907884', 1, 'lcc', '', '', 'lcc@good.com', 1, 1, '2022-01-10 11:37:44.264020');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(70) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `create_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`id`, `Name`, `sex`, `birthday`, `email`, `phone`, `address`, `password`, `create_date`) VALUES
(1, 'aaaa', 'M', '1970-01-01', 'ggg@gmail.com', '0987654321', '台中火車站', '', '2022-01-19 13:59:46.753114');

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-01-10 12:24:56.546977', '1', 'News object (1)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'customer', 'customer'),
(7, 'news', 'news'),
(9, 'product', 'products'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-10 11:26:03.446578'),
(2, 'auth', '0001_initial', '2022-01-10 11:26:04.321377'),
(3, 'admin', '0001_initial', '2022-01-10 11:26:04.540070'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-10 11:26:04.540070'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-10 11:26:04.555697'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-10 11:26:04.696284'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-10 11:26:04.790017'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-10 11:26:04.899464'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-10 11:26:04.899464'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-10 11:26:04.993090'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-10 11:26:04.993090'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-10 11:26:05.008712'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-10 11:26:05.086817'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-10 11:26:05.305516'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-10 11:26:05.383628'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-10 11:26:05.399244'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-10 11:26:05.492972'),
(18, 'sessions', '0001_initial', '2022-01-10 11:26:05.539841'),
(19, 'news', '0001_initial', '2022-01-10 12:13:55.682400'),
(20, 'customer', '0001_initial', '2022-01-10 13:18:51.687144'),
(21, 'product', '0001_initial', '2022-01-17 11:39:25.894974');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('oug8bflybkevgbh0ogvbeybrswz3tvb4', '.eJxVjEEOwiAQRe_C2hAsdKbj0n3PQAYGpWogKe3KeHfbpAvd_vfefyvP65L92tLsJ1EXdVan3y1wfKayA3lwuVcda1nmKehd0QdteqySXtfD_TvI3PJW9yYOqSM3WMJoUMQZCESYUJgsJwIwIL1DBHFgUW5dZLdxkEhgnPp8AciRN0M:1n8K4D:g7OXb2-htmrPyttos97zhy0h9veaGg7Z3hKwoPznbrs', '2022-01-28 10:44:21.975777'),
('pqq1f27y44us09shlo62phzbwrt18xw2', '.eJxVjEEOwiAQRe_C2hAsdKbj0n3PQAYGpWogKe3KeHfbpAvd_vfefyvP65L92tLsJ1EXdVan3y1wfKayA3lwuVcda1nmKehd0QdteqySXtfD_TvI3PJW9yYOqSM3WMJoUMQZCESYUJgsJwIwIL1DBHFgUW5dZLdxkEhgnPp8AciRN0M:1nA8R8:uSBefpXn4XPTCaHE1SbUZ1x0sh8WehNsIpLB5ncG6cs', '2022-02-02 10:43:30.913868'),
('rvuv6nqfvp6uh0tl7exwuopwt2l6tanx', '.eJxVjEEOwiAQRe_C2hAsdKbj0n3PQAYGpWogKe3KeHfbpAvd_vfefyvP65L92tLsJ1EXdVan3y1wfKayA3lwuVcda1nmKehd0QdteqySXtfD_TvI3PJW9yYOqSM3WMJoUMQZCESYUJgsJwIwIL1DBHFgUW5dZLdxkEhgnPp8AciRN0M:1n9PVP:5EAeoBtoeAjP09UK9s_gb94kr4gf4xNsIKtCERy0sbg', '2022-01-31 10:44:55.938355'),
('z7zrd2tnlrst7najm2qgn7ewpbkfa2t1', '.eJxVjEEOwiAQRe_C2hAsdKbj0n3PQAYGpWogKe3KeHfbpAvd_vfefyvP65L92tLsJ1EXdVan3y1wfKayA3lwuVcda1nmKehd0QdteqySXtfD_TvI3PJW9yYOqSM3WMJoUMQZCESYUJgsJwIwIL1DBHFgUW5dZLdxkEhgnPp8AciRN0M:1n6tZH:cF11PtIYlAruzCGhgfuSKJcYeCw0zRNUDcSxck_tFE8', '2022-01-24 12:14:31.862618');

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `photo_file` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `photo_file`, `video_url`, `create_date`) VALUES
(1, '本土疫情持續升溫！陳時中：尚無必要禁餐廳內用 再嚴重會有措施', '桃園機場新冠肺炎本土疫情持續擴大，染疫者包含防疫計程車司機、機場清潔員、保全等，並衍伸出家庭群聚，累計本次疫情已有30人確診。中央流行疫情指揮中心指揮官陳時中今天說，目前本土個案關聯都可追蹤，防疫要有輕重緩急，依社區狀況，還沒必要禁止餐廳內用，但不排除更嚴重時有相關措施。\r\n\r\n各界關切桃園本土疫情升溫，是否會禁止餐廳內用。陳時中在記者會答覆記者提問強調目前台灣社區疫情情況，還不到禁止餐廳內用的等級。\r\n\r\n陳時中說，現在機場相關的本土個案都可追蹤，而台灣民眾可能感覺確診案例數多，但國際上比較卻是非常少，是否要採取讓社會安定度影響大的措施，他認為目前還沒必要，但不排除疫情愈嚴重時，會有相關措施。\r\n\r\n至於加嚴口罩措施，有醫師認為在室內用餐的風險比拍照、唱歌更高，質疑指揮中心拿小眾開刀。陳時中語氣微慍回應，這樣的評論非常不負責，吃飯是生活必要行為，依照社區疫情狀況，指揮中心的評判根據有輕重緩急，相較於吃飯，唱歌屬抒發身心的娛樂，且戴口罩仍可進行，但吃飯卻無法戴口罩，他直言，孰輕孰重要分辨清楚。\r\n\r\n演唱會等藝文活動或舞群是否在台上也需要戴口罩、維持社交距離。陳時中說，昨天宣布口罩措施加嚴時，已有註明若主管機關已有指引規定，就依照指引進行。指揮中心醫療應變組副組長羅一鈞補充說明，藝文活動如吹奏樂器、唱歌、演戲等，若戴口罩影響演出，文化部已有訂定指引，如符合疫苗接種或快篩規定，允許演出人員可不用戴口罩。羅一鈞並表示，目前人流管制是針對超市、賣場、市場，尚未針對藝文活動限制。', '001.jpg', 'https://www.youtube.com/watch?v=TW6pftWiiX4', '2022-01-10');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` decimal(4,1) NOT NULL,
  `color` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `discount` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `brand`, `name`, `size`, `color`, `price`, `photo_url`, `discount`) VALUES
(1, 'Yahoo', 'NIKE RYZ 365 II 女休閒鞋-白-CU4874100', '0.0', '', 1928, 'https://s.yimg.com/zp/MerchandiseImages/5DAEC0E983-SP-9528026.jpg', '0.00'),
(2, 'Yahoo', 'Nike 休閒鞋 TC 7900 運動 女鞋 基本款 厚底 舒適 簡約 穿搭 反光 米白 白 DD9682100', '0.0', '', 3932, 'https://s.yimg.com/zp/MerchandiseImages/FA23366512-SP-9474821.jpg', '0.00'),
(3, 'Yahoo', 'NIKE 慢跑鞋 AIR ZOOM TEMPO NEXT% FK 灰黑 編織 男 (布魯克林) CI9923-006', '0.0', '', 2701, 'https://s.yimg.com/ut/api/res/1.2/g9X4aSVjq9KLo41Box1HtQ--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/f014/item/p0373233048828-item-8bf1xf4x1000x1000-m.jpg', '0.00'),
(4, 'Yahoo', 'NIKE AIR FORCE 1 07 LV8男復古休閒運動鞋 -白綠-DO5220131', '0.0', '', 3024, 'https://s.yimg.com/zp/MerchandiseImages/C43CDCB9D0-SP-10539773.jpg', '0.00'),
(5, 'Yahoo', 'NIKE KD Trey 5 VII EP 男鞋 籃球 避震 包覆 耐磨 黑 紅【運動世界】CK2089-002', '0.0', '', 1852, 'https://s.yimg.com/ut/api/res/1.2/BL4uat8RMy_a4vykXh8aFg--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/95c2/item/p0268209274919-item-e218xf4x1000x1000-m.jpg', '0.00'),
(6, 'Yahoo', 'Nike 慢跑鞋 Flyknit Trainer 男鞋', '0.0', '', 2504, 'https://s.yimg.com/zp/images/7D868D0F67AB673DECFB6665C670579F2098B0AD', '0.00'),
(7, 'Yahoo', 'NIKE 運動鞋 運動 健身 慢跑  男鞋 黑 CD4371012 REACT INFINITY RUN FK', '0.0', '', 3869, 'https://s.yimg.com/zp/MerchandiseImages/CA1F1559F1-SP-8971248.jpg', '0.00'),
(8, 'Yahoo', 'Nike 休閒鞋 Air Max 90 SE 運動 女鞋 經典款 氣墊 舒適 簡約 球鞋 穿搭 白 灰 CV8824100', '0.0', '', 2924, 'https://s.yimg.com/zp/MerchandiseImages/15086A68BA-SP-9553390.jpg', '0.00'),
(9, 'Yahoo', 'NIKE NIKE REVOLUTION 6 NN  男 慢跑鞋-DC3728001', '0.0', '', 1253, 'https://s.yimg.com/zp/MerchandiseImages/B5247EF062-SP-10797241.jpg', '0.00'),
(10, 'Yahoo', 'Nike 休閒鞋 W  Air Zoom Type 女鞋 奶茶 網美 舒適 氣墊 球鞋 米白 粉 CZ1151101', '0.0', '', 3092, 'https://s.yimg.com/zp/MerchandiseImages/6F9F8826C2-Product-27323654.jpg', '0.00'),
(11, 'Yahoo', 'Nike 休閒鞋 Wearallday WNTR 運動 男鞋 輕量 舒適 避震 簡約 球鞋 穿搭 黑 白 CT1729001', '0.0', '', 1328, 'https://s.yimg.com/zp/MerchandiseImages/6A2DB10B80-SP-8881204.jpg', '0.00'),
(12, 'Yahoo', 'Nike Air Jordan 11代 Retro 男鞋 Cool Grey 喬丹 AJ11 酷灰 灰 白 CT8012005', '0.0', '', 6704, 'https://s.yimg.com/zp/MerchandiseImages/B940C9D185-SP-10727411.jpg', '0.00'),
(13, 'Yahoo', 'Nike 拖鞋 Offline 2 0 穆勒鞋 套腳 男女鞋 多層次網布 軟木塞 反光 半包拖 情侶款 黑 CZ0332-001', '0.0', '', 3176, 'https://s.yimg.com/zp/MerchandiseImages/2310ecf57b-Gd-9698318.jpg', '0.00'),
(14, 'Yahoo', 'Nike 休閒鞋 RYZ 365 II 運動 女鞋 厚底 舒適 增高 球鞋 穿搭 簡約 黑 白 CU4874001', '0.0', '', 2084, 'https://s.yimg.com/zp/MerchandiseImages/6903FFF764-SP-9258062.jpg', '0.00'),
(15, 'Yahoo', 'NIKE 休閒鞋  運動鞋 男鞋 粉白 DC4831002 AF1 AF1 CRATER FLYKNIT', '0.0', '', 2470, 'https://s.yimg.com/zp/MerchandiseImages/06364C453C-SP-10544511.jpg', '0.00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
