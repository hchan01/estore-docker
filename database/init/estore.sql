-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.21 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for estore
CREATE DATABASE IF NOT EXISTS `estore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `estore`;

-- Dumping structure for table estore.cart
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table estore.cart: ~1 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`id`, `user_id`, `created_date`, `last_modified_date`) VALUES
	(1, 1, '2020-11-10 13:30:32', '2020-11-10 13:30:32');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table estore.cart_line_item
DROP TABLE IF EXISTS `cart_line_item`;
CREATE TABLE IF NOT EXISTS `cart_line_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK__cart_line_item__cart` (`cart_id`),
  KEY `FK__cart_line_item__product` (`product_id`),
  CONSTRAINT `FK__cart_line_item__cart` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FK__cart_line_item__product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table estore.cart_line_item: ~27 rows (approximately)
DELETE FROM `cart_line_item`;
/*!40000 ALTER TABLE `cart_line_item` DISABLE KEYS */;
INSERT INTO `cart_line_item` (`id`, `cart_id`, `product_id`, `quantity`, `created_date`, `last_modified_date`) VALUES
	(1, 1, 1, 1, '2020-11-10 13:31:09', '2020-11-10 13:31:09'),
	(2, 1, 1, 2, '2020-11-10 13:31:09', '2020-11-10 13:31:09'),
	(3, 1, 1, 2, '2020-11-10 13:31:09', '2020-11-10 13:31:09'),
	(4, 1, 1, 2, '2020-11-10 13:31:09', '2020-11-10 13:31:09'),
	(5, 1, 1, 2, '2020-11-10 13:31:09', '2020-11-10 13:31:09'),
	(6, 1, 5, 1, '2020-11-10 13:31:09', '2020-11-10 13:31:09'),
	(7, 1, 7, 1, '2020-11-11 10:56:01', '2020-11-11 10:56:01'),
	(8, 1, 1, 1, '2020-11-18 00:14:27', '2020-11-18 00:14:27'),
	(9, 1, 1, 1, '2020-11-18 00:14:39', '2020-11-18 00:14:39'),
	(10, 1, 6, 1, '2020-11-18 00:20:24', '2020-11-18 00:20:24'),
	(17, 1, 1, 2, '2020-11-21 20:41:22', '2020-11-21 20:41:22'),
	(18, 1, 1, 2, '2020-11-21 20:51:20', '2020-11-21 20:51:20'),
	(19, 1, 2, 12, '2020-11-21 20:51:30', '2020-11-21 20:51:30'),
	(20, 1, 2, 12, '2020-11-21 20:56:59', '2020-11-21 20:56:59'),
	(21, 1, 2, 12, '2020-11-21 20:57:04', '2020-11-21 20:57:04'),
	(22, 1, 2, 12, '2020-11-21 20:57:58', '2020-11-21 20:57:58'),
	(23, 1, 2, 12, '2020-11-21 21:00:51', '2020-11-21 21:00:51'),
	(24, 1, 2, 12, '2020-11-21 21:10:53', '2020-11-21 21:10:53'),
	(25, 1, 2, 12, '2020-11-21 21:10:53', '2020-11-21 21:10:53'),
	(26, 1, 1, 1, '2020-11-23 02:14:08', '2020-11-23 02:14:08'),
	(27, 1, 2, 12, '2020-11-23 20:45:52', '2020-11-23 20:45:52'),
	(28, 1, 5, 1, '2020-11-23 20:52:34', '2020-11-23 20:52:34'),
	(29, 1, 6, 1, '2020-11-23 20:52:39', '2020-11-23 20:52:39'),
	(30, 1, 7, 1, '2020-11-23 20:52:40', '2020-11-23 20:52:40'),
	(31, 1, 3, 1, '2020-11-23 20:57:50', '2020-11-23 20:57:50'),
	(32, 1, 5, 1, '2020-11-23 20:58:08', '2020-11-23 20:58:08'),
	(33, 1, 3, 1, '2020-11-23 21:08:59', '2020-11-23 21:08:59'),
	(34, 1, 2, 1, '2020-11-23 21:09:11', '2020-11-23 21:09:11'),
	(35, 1, 5, 1, '2020-11-24 22:07:43', '2020-11-24 22:07:43');
/*!40000 ALTER TABLE `cart_line_item` ENABLE KEYS */;

-- Dumping structure for table estore.category
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table estore.category: ~0 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table estore.order
DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table estore.order: ~0 rows (approximately)
DELETE FROM `order`;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`id`, `created_date`, `last_modified_date`) VALUES
	(1, '2020-11-21 16:50:53', '2020-11-21 16:50:53');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- Dumping structure for table estore.order_line_item
DROP TABLE IF EXISTS `order_line_item`;
CREATE TABLE IF NOT EXISTS `order_line_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `unit_price` int NOT NULL DEFAULT '0',
  `total_price` int NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK__order_line_item__order` (`order_id`),
  CONSTRAINT `FK__order_line_item__order` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table estore.order_line_item: ~0 rows (approximately)
DELETE FROM `order_line_item`;
/*!40000 ALTER TABLE `order_line_item` DISABLE KEYS */;
INSERT INTO `order_line_item` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `total_price`, `created_date`, `last_modified_date`) VALUES
	(1, 1, 1, 2, 10, 20, '2020-11-21 16:51:03', '2020-11-21 16:51:03');
/*!40000 ALTER TABLE `order_line_item` ENABLE KEYS */;

-- Dumping structure for table estore.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` int NOT NULL DEFAULT '0',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` mediumtext,
  `category_id` int DEFAULT NULL,
  `inventory` int NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table estore.product: ~7 rows (approximately)
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `name`, `brand`, `unit_price`, `description`, `image`, `slug`, `category_id`, `inventory`, `created_date`, `last_modified_date`) VALUES
	(1, 'Bose QuietComfort® Earbuds', 'Bose', 24995, NULL, '/assets/images/001.png', 'bose-quietcomfort®-earbuds', 1, 0, '2020-11-10 13:33:12', '2020-11-11 10:34:35'),
	(2, 'ATH-S200BT', 'Audio Technica', 6900, NULL, '/assets/images/002.png', 'ath-s200bt', 1, 0, '2020-11-10 13:33:12', '2020-11-11 10:34:44'),
	(3, 'Sennheiser MOMENTUM True Wireless 2', 'Sennheiser', 27900, NULL, '/assets/images/003.png', 'sennheiser-momentum-true-wireless-2', 1, 0, '2020-11-10 13:33:12', '2020-11-11 10:34:52'),
	(4, 'Beyerdynamic High-end Tesla Headphones (3rd Generation)', 'Beyerdynamic', 99900, NULL, '/assets/images/004.png', 'beyerdynamic-high-end-tesla-headphones-3rd-generation', 1, 0, '2020-11-10 13:33:12', '2020-11-11 10:34:59'),
	(5, 'Nintendo Switch', 'Nintendo', 27999, NULL, '/assets/images/005.png', 'nintendo-switch', 2, 0, '2020-11-10 13:33:12', '2020-11-11 10:35:08'),
	(6, 'Xbox Series X', 'Microsoft', 44900, NULL, '/assets/images/006.png', 'xbox-series-x', 2, 0, '2020-11-10 13:33:12', '2020-11-11 10:35:14'),
	(7, 'PlayStation®5', 'Sony', 44900, NULL, '/assets/images/007.png', 'playstation®5', 2, 0, '2020-11-10 13:33:12', '2020-11-11 10:35:20');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table estore.testimonials
DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `review` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table estore.testimonials: ~6 rows (approximately)
DELETE FROM `testimonials`;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` (`id`, `first_name`, `last_name`, `review`) VALUES
	(1, 'Max', 'Harper', 'Great service from start to finish. Easy to find the product. Delivery tracking available. Very pleased with my product. Exceeded my expectations.'),
	(2, 'Leonard', 'Stokes', 'Shopped online. Easy to find the product, clear specs, pictures. Straightforward payment. Delivered on time.'),
	(3, 'William', 'Kennedy', 'Trusted company, honest and helpful. really good customer service well recommended. Would definitely use again.'),
	(4, 'Henry', 'Clegg', 'Prompt service. Items packages correctly and received on time.'),
	(5, 'Simone', 'Swan', 'A superb range of products and options, competitive prices and great service.'),
	(6, 'Ciaran', 'Travers', 'Good service, good delivery. Satisfied customer.'),
	(7, 'Sabrina', 'Hall', 'Prompt service, better than promised delivery, and good communication. No complaints at all! Thanks!');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;

-- Dumping structure for table estore.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_hash` binary(40) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_hash` (`email_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table estore.user: ~26 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `email`, `email_hash`, `password`, `first_name`, `last_name`, `created_date`, `last_modified_date`) VALUES
	(1, 'harry5@hchan.io', _binary 0x31346331396137623765363538326464356566393365643066323834336561666437306139613137, 'sdfds', 'harry23', 'chan23', '2020-11-22 15:50:12', '2020-11-22 16:59:15'),
	(2, 'harry88@hchan.io', _binary 0x38313064353935313561323938366639396261656666623133393861353734333436363538626338, '$2a$10$XVBoo2rJZ.CGcCxSfTdxQeMsOKFjo97lpiM0YB/a.dNQDsI4d1mZm', NULL, NULL, '2020-11-22 16:59:50', '2020-11-22 16:59:50'),
	(3, 'harry@hchan.io', _binary 0x37306263303063323964396435626166303831303066343735623265306236386338376566393936, '$2a$10$NnHbRgEO43MpGSs0NfgnF.hmPFB3v4qs6hUoEIC25sd3q1ShSPTo2', NULL, NULL, '2020-11-22 17:03:41', '2020-11-22 17:03:41'),
	(4, 'a2@a.com', _binary 0x64616463663134306636623863623239373264653466313631643561613537393133653862333438, '$2a$10$pjfkthUp7hap2fqifeEVIeY5.C1Y7iZJx.QP8q6BUgW63Ae6eRm3a', NULL, NULL, '2020-11-22 17:06:32', '2020-11-22 17:06:32'),
	(5, '$email', _binary 0x66663061333532356562316136336365343465373935316130623532323832396134643266363037, '$2a$10$wEMP4ZZeJJAscByjw/2Hlu5dNqreHj7MCoKEznPw.F7BzwN07nYiG', NULL, NULL, '2020-11-22 17:54:39', '2020-11-22 17:54:39'),
	(6, 'blah@blah.com', _binary 0x36353565616135636635666162346333643962326436363865393338666534613165366337383164, '$2a$10$vWq4b.fv3i.afBCvDschnOisl9uQ7VBI4UGWH6MSpWiYdmEIAEl.i', NULL, NULL, '2020-11-22 17:59:56', '2020-11-22 17:59:56'),
	(7, 'blah2@blah.com', _binary 0x61653931323065333730616439666330613233643362343265376635393437366463613332303838, '$2a$10$o.mT4AN.kqOnKcnWZWV5sOTuHNql52Pb90r046OyGxhiNqUTDuJc.', NULL, NULL, '2020-11-22 18:14:27', '2020-11-22 18:14:27'),
	(8, 'blah3@blah.com', _binary 0x34313865303232616538613031636437363462303938666439656133643661383936306666313836, '$2a$10$MwaANwgDJrqXTV8XjGp6XOyxNjcoZgPD9iZxlkj1H/XoGp/X91fMC', NULL, NULL, '2020-11-22 18:14:59', '2020-11-22 18:14:59'),
	(9, 'blah4@blah.com', _binary 0x37343632656532356362356562633238363262373834343239626262393666326364643166366539, '$2a$10$L5arJ843DNDvwzjt1Sbd.eTHsFWwM.WJ2qgXNufsnfRSANW/zn9d.', NULL, NULL, '2020-11-22 18:16:46', '2020-11-22 18:16:46'),
	(10, 'blah5@blah.com', _binary 0x32326666333333353839353137333738353035393131363665656462376431623464323365656462, '$2a$10$qrjFtfg8QivyPDnNOwu9rev1nbKkseGBM1sN5aX0FfycpOI1he4ju', NULL, NULL, '2020-11-22 18:22:08', '2020-11-22 18:22:08'),
	(11, 'blah10@blah.com', _binary 0x32386637383466623735643930326334646662356230636530376130323630336563343535653864, '$2a$10$RB9YegAIW6SCk/vUlakjR.gVa/TCBfy6CsLlUlG1D86jKTFNgDlga', NULL, NULL, '2020-11-22 18:30:40', '2020-11-22 18:30:40'),
	(12, 'a22@a.com', _binary 0x38313539303963613233386366663865666430653330643330326631316261363565626262613964, '$2a$10$KynNWAF4M58bWGwpuE7lI.vZRAvEkhtLdrxWl8cT3qhMIl5L6ENaK', NULL, NULL, '2020-11-22 19:34:49', '2020-11-22 19:34:49'),
	(13, 'a222@a.com', _binary 0x66626565376437313437396435316237313264663234646431633232346338656638353134343835, '$2a$10$19ZAlF3mfDumKoFMF97sduE5p7xLzROCc33UEeyrMoNgDg.BmbuTq', NULL, NULL, '2020-11-22 19:35:48', '2020-11-22 19:35:48'),
	(14, 'a2222@a.com', _binary 0x37383335313762326233613633643633333634316538663265303565626130653236363837613962, '$2a$10$57qElniCon5jcSN55oZT3OohXHjSbF/4SdlcqKR8.3J2xnT0nHvI6', NULL, NULL, '2020-11-22 19:43:26', '2020-11-22 19:43:26'),
	(15, 'a22222@a.com', _binary 0x32616638386662636261653335356135396434366538663430333334626462363961363533336134, '$2a$10$tmMxJXpCvRA/0oUYrXF31OBHT7QNee8Ctt2i3qupXm/P0vuv34dLi', NULL, NULL, '2020-11-22 19:45:12', '2020-11-22 19:45:12'),
	(16, 'a222222@a.com', _binary 0x38346337316639316163613162373535313034393936373238336564363136653065646564366464, '$2a$10$xm4Zh3U8g3IAgPsJ7TPIz.FeZwVCKteymCVAsaDqijOBjOCZAKYVm', NULL, NULL, '2020-11-22 19:45:18', '2020-11-22 19:45:18'),
	(17, 'a2222222@a.com', _binary 0x61636666333166623734393038646463366338336539636132326433323830363138383932653734, '$2a$10$MfxMVtMkIS19Vln8POl3UuxnQTJW9yFaFuPBl20MPb3NEBZyXOLHK', NULL, NULL, '2020-11-22 19:45:22', '2020-11-22 19:45:22'),
	(18, 'sddsf@dsf.com', _binary 0x37353030623330626266663437336361333537666239353839326132303962633239353364353964, '$2a$10$fk6UkRcl.I/iLSwAGzLpwuamz74LTo.eik.DSIFgzpERR8ezdw0Tm', NULL, NULL, '2020-11-22 20:42:04', '2020-11-22 20:42:04'),
	(19, 'sfsf@sdf.com', _binary 0x61396339356338303632373137383432303565666535643835336162343137613036343666363164, '$2a$10$cf84LDeCFnhyHCHcRxUw4..351pq0zND.a9Udnok/0IW/kOE3WOmu', NULL, NULL, '2020-11-22 20:42:57', '2020-11-22 20:42:57'),
	(20, 'dfsfsf@sdf.com', _binary 0x31643064653639323334313234383436303862383631623466666631333663323739323965643163, '$2a$10$JsZii1oeOyo4vPu2vlkq2OiiTOnd/4f.HEV/Jh/OGNtaWt8ganQbW', NULL, NULL, '2020-11-22 20:43:04', '2020-11-22 20:43:04'),
	(21, 'dfsddfs@asdas.cddf', _binary 0x66303431323861303062303234623264376338393663316433333536643965636438373832366235, '$2a$10$Zz2/RV6U4rSa5/WXiRZL/u.PjzqeivJ9ZdGEGY5q3KhfxYaUSB.ne', NULL, NULL, '2020-11-22 20:43:38', '2020-11-22 20:43:38'),
	(22, 'dsfdsf@dsfdf.com', _binary 0x63373361616539656566646135316335306436303539303938373730366662613939316332623563, '$2a$10$2PTY3dWgXbP2wnykewcza.JxCZM/2KdihsJrdRboc0cTSTUORkqyS', NULL, NULL, '2020-11-22 20:43:53', '2020-11-22 20:43:53'),
	(23, 'asdasdas@adasd.com', _binary 0x62613433353966313931623839393364626465623464616164623034393733666534643962656365, '$2a$10$6cItKHbjsLid/6b39uDBi.q37NabWVfMLwcHt5mEZGyURr.MqY96a', NULL, NULL, '2020-11-22 20:45:54', '2020-11-22 20:45:54'),
	(24, 'dsdsf@dsfds.com', _binary 0x62343363643266613237613364303362313066383237633939666630343237376631366539316135, '$2a$10$uDl28rOlvuAl/OEShs.zYe2kDVyXGFNVAKvH92SvftJy66.IYP4Xu', NULL, NULL, '2020-11-22 20:46:16', '2020-11-22 20:46:16'),
	(25, 'dadfds@dsfdsfsd.com', _binary 0x30303031303135326532386537393536383961373032623664386438646361656439636439326534, '$2a$10$8P9fRfyzyQfDzJryQTUbEuwowVcuceisZpAmVf4s7Y5pQyqjIkNPu', NULL, NULL, '2020-11-22 22:43:05', '2020-11-22 22:43:05'),
	(26, 'test@test.com', _binary 0x61366164303061633131336131396439353365666239313832306438373838653232363362323861, '$2a$10$iMF7GbEY5w6142IXjalMmektgbfrN67FSZubFPu/jHT2dlyKUw13W', NULL, NULL, '2020-11-22 23:31:14', '2020-11-22 23:31:14'),
	(27, 'test2@test.com', _binary 0x30663339326137633538623730306335393638303636623035363130613165356665626463336664, '$2a$10$sYni3pbywlrAo1YCT0jdcOObhu8uAPKgSV6mqTzMVxH97VJstyIBa', NULL, NULL, '2020-11-23 20:33:17', '2020-11-23 20:33:17');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for trigger estore.user_before_insert
DROP TRIGGER IF EXISTS `user_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_before_insert` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
	SET NEW.email_hash = SHA1(new.email);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger estore.user_before_update
DROP TRIGGER IF EXISTS `user_before_update`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_before_update` BEFORE UPDATE ON `user` FOR EACH ROW BEGIN
	SET NEW.email_hash = SHA1(new.email);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
