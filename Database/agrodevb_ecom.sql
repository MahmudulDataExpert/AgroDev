-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 17, 2023 at 05:50 PM
-- Server version: 10.6.13-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrodevb_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT 0,
  `photo` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, '1676132028311708518_3009053059392308_5864042758773739528_n.jpg', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', 1, 'hSJzVqEMDG4LfVJT6ZcIe6ueLWMybGWlIeNVJtu5tPj1l8GXw7Q2uFYEs5YU', '2018-02-28 23:27:08', '2023-02-11 15:13:48', 'Agro-Dev'),
(5, 'Mr Mahmudul', 'xxxxx@gmail.com', 'xxxxxxxxxx', 18, '1676889230326985271_1217813865827320_7350153338154027169_n.jpg', '$2y$10$q0X8le1U2Qvcb42Bx6r9yutSJID4KBtNO6Wv4iOtOaw/f4oBvphZS', 1, NULL, '2019-09-18 04:47:24', '2023-02-20 09:33:50', NULL),
(6, 'Mr. Likhon', 'xxxx@gmail.com', 'xxxxxxxxxx', 18, '1679637536Picture2.jpg', '$2y$10$DWhPeqB/2nM0/CcNdjvPBOpw.CcCz7vM.447nuqWnXY6D2dWnbISC', 1, NULL, '2019-09-18 21:22:41', '2023-03-24 04:58:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`) VALUES
(1, '1676179595hand-drawn-agriculture-company-facebook-cover_23-2149694595.jpg', 'https://product.agrodevbd.com/item/all-season-red-carrot-seeds-30-pcs-seeds-2qz53841s0', 'TopSmall'),
(2, '1676179779flash2.jpg', 'https://product.agrodevbd.com/item/brinjal-long-eggplant-vegetable-60-seeds-white-kwt5778lka', 'TopSmall'),
(4, '167915231522.jpg', 'https://product.agrodevbd.com/', 'BottomSmall'),
(5, '167915229111.jpg', 'https://product.agrodevbd.com/', 'BottomSmall'),
(6, '167915227233.jpg', 'https://product.agrodevbd.com/', 'BottomSmall');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `source` varchar(191) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(9, 12, 'How to Identify and Treat Plant Disease', '<div align=\"justify\"><p><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">Protect\r\nyour plants from debilitating diseases by learning to recognize the symptoms\r\nand practice prevention.&nbsp; A wholistic approach includes first identifying\r\nthe pathogen.&nbsp; Then decide on a treatment method that is safe, effective\r\nand responsible. Read on and bookmark this page for plant disease identification.<o:p></o:p></span></p>\r\n\r\n<h3 style=\"margin: 0in; box-sizing: inherit; text-align: start;\"><strong style=\"box-sizing: inherit\"><span style=\"font-size:\r\n12.0pt;font-family:&quot;Open Sans&quot;;color:#003333\">Black Spot&nbsp;</span></strong><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></h3>\r\n\r\n<p style=\"box-sizing: inherit; text-align: start;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Black spot is one of the most common diseases found on roses,\r\nbut it can also occur on other ornamental and garden plants.&nbsp; This fungal\r\ndisease causes black, round spots that form on the upper sides of leaves. Lower\r\nleaves are usually infected first.&nbsp; Severe infestations cause infected\r\nleaves to turn yellow and fall off the plant. Black spot is a problem during\r\nextended periods of wet weather or when leaves are wet for 6 hours or more.\r\nBlack spot spores overwinter in the fallen leaves.&nbsp;<o:p></o:p></span></p>\r\n\r\n<figure class=\"wp-block-image size-large\" style=\"box-sizing: inherit; color: rgb(64, 64, 64); font-family: GothamNarrow-Book; text-align: start; margin-top: 10px !important; margin-bottom: 10px !important;\">\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p>\r\n\r\n<p><strong style=\"box-sizing: inherit\"><span style=\"font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Tips for Controlling Black Spots on Leaves</span></strong><span style=\"font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l2 level1 lfo1;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">Plant\r\n     in well-draining soil. Keep your plants healthy by providing regular\r\n     feedings of organic fertilizer. This will help prevent fungal disease in\r\n     plants.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l2 level1 lfo1;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">The\r\n     fungus spores overwinter in plant debris. Remove dead leaves and infected\r\n     canes from around the plants and disguard in the trash. Do not add to the\r\n     compost pile.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l2 level1 lfo1;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">Disinfect\r\n     your pruners with a household disinfectant after every use. &nbsp;Ethanol\r\n     or isopropyl alcohol can be used straight out of the bottle. &nbsp;<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l2 level1 lfo1;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">Because\r\n     water (not wind) spreads the fungal spores, avoid applying water on the\r\n     leaves.&nbsp; When you water, apply water directly to the roots. Use a\r\n     soaker hose to water plants prone to the disease.<o:p></o:p></span></li>\r\n</ul>\r\n\r\n<h3 style=\"margin: 0in; box-sizing: inherit;\"><strong style=\"box-sizing: inherit\"><span style=\"font-size:\r\n12.0pt;font-family:&quot;Open Sans&quot;;color:#003333\">Other Leaf Spots</span></strong><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></h3>\r\n\r\n<p style=\"box-sizing: inherit;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Fungal leaf spot disease can be found both indoors on\r\nhouseplants, and outdoors in the landscape. This occurs during warm, wet\r\nconditions. As the disease progresses, the fungal spots grow large enough to\r\ntouch each other.&nbsp; At this point the leaf surface appears more like\r\nblotches than spots. &nbsp;Leaf spot may result in defoliation of a plant.\r\n&nbsp;Follow the same tips as the ones to control black spot.<o:p></o:p></span></p>\r\n\r\n<figure class=\"wp-block-image size-large\" style=\"box-sizing: inherit; margin-top: 10px !important; margin-bottom: 10px !important;\">\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p>\r\n\r\n<h3 style=\"margin:0in\"><strong style=\"box-sizing: inherit\"><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333\">Powdery Mildew</span></strong><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333\">&nbsp;&nbsp;<o:p></o:p></span></h3>\r\n\r\n<p style=\"box-sizing: inherit;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Powdery mildew is a fungal disease that affects many of our\r\nlandscape plants, flowers, vegetables and fruits. Powdery mildew is an easy one\r\nto identify. Infected plants will display a white powdery substance that is\r\nmost visible on upper leaf surfaces, but it can appear anywhere on the plant\r\nincluding stems, flower buds, and even the fruit of the plant. &nbsp;This\r\nfungus thrives during low soil moisture conditions combined with high humidity\r\nlevels on the upper parts of the plant surface. &nbsp;It tends to affect plants\r\nkept in shady areas more than those in direct sun.<o:p></o:p></span></p>\r\n\r\n<figure class=\"wp-block-image size-large\" style=\"box-sizing: inherit; margin-top: 10px !important; margin-bottom: 10px !important;\">\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p>\r\n\r\n<p><strong style=\"box-sizing: inherit\"><span style=\"font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Tips for Controlling Powdery Mildew</span></strong><span style=\"font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l1 level1 lfo2;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">Inspect\r\n     plants that you buy from a greenhouse before purchasing for mildew (and\r\n     insects).&nbsp;<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l1 level1 lfo2;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">Wiping\r\n     off the leaves is not an effective powdery mildew treatment as it will\r\n     return within days of cleaning.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l1 level1 lfo2;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">Because\r\n     spores overwinter in debris all infected debris should be removed. Trim\r\n     and remove infected plant parts.&nbsp;<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l1 level1 lfo2;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">Do\r\n     not till the debris into the soil or use in the compost pile.&nbsp;<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l1 level1 lfo2;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">Space\r\n     plants far enough apart to increase air circulation and reduce humidity.<o:p></o:p></span></li>\r\n</ul>\r\n\r\n<h3 style=\"margin: 0in; box-sizing: inherit;\"><strong style=\"box-sizing: inherit\"><span style=\"font-size:\r\n12.0pt;font-family:&quot;Open Sans&quot;;color:#003333\">Downy Mildew</span></strong><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></h3>\r\n\r\n<p style=\"box-sizing: inherit;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Because downy mildews differ from powdery mildews, it is\r\nimportant to understand the differences between the two.&nbsp; Powdery mildews\r\nare true fungal pathogens that display a white powdery substance on the upper\r\nleaves.&nbsp; Downy mildews, on the other hand, are more related to algae and produce\r\ngrayish fuzzy looking spores on the lower surfaces of leaves. &nbsp;To identify\r\ndowny mildew, look for pale green or yellow spots on the upper surfaces of\r\nolder leaves.&nbsp; On the lower surfaces, the fungus will display a white to\r\ngrayish, cotton-like downy substance. Downy mildew occurs during cool, moist\r\nweather such as in early spring or late fall.&nbsp; Spore production is favored\r\nby temperatures below 65°F and with a high relative humidity.&nbsp;<o:p></o:p></span></p>\r\n\r\n<figure class=\"wp-block-image size-large\" style=\"box-sizing: inherit; margin-top: 10px !important; margin-bottom: 10px !important;\">\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p>\r\n\r\n<p><strong style=\"box-sizing: inherit\"><span style=\"font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Tips for Downy Mildew Treatment</span></strong><span style=\"font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l0 level1 lfo3;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">Downy\r\n     mildew needs water to survive and spread.&nbsp; It there is no water on\r\n     your leaves, the disease cannot spread. Keep water off leaves as much as\r\n     possible. &nbsp;&nbsp;<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color:#003333;mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n     auto;line-height:normal;mso-list:l0 level1 lfo3;tab-stops:list .5in;\r\n     box-sizing: inherit\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;\">Because\r\n     the disease overwinters on dead plant debris, be sure to clean around your\r\n     plants in the fall to help prevent the disease in the following spring.<o:p></o:p></span></li>\r\n</ul>\r\n\r\n<p style=\"box-sizing: inherit;\"><em style=\"box-sizing: inherit\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Open Sans&quot;;color:#003333\">*Some of the fungicides used to control\r\npowdery mildew will not control downy mildew.&nbsp; Earth’s Ally’s fungicide\r\nwill control both powdery and downy mildew.</span></em><span style=\"font-size:\r\n10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p></figure></figure></figure></figure></div>', '1679418800img44.jpg', 'By Angelo Randaci, Earth’s Ally Horticulturist', 41, 1, NULL, NULL, 'crops,diseases', '2018-02-06 09:53:41');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(10, 14, 'How To Identify, Prevent, And Treat Common Tomato Diseases', '<div align=\"justify\"><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">Tomatoes (<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">Solanum lycopersicum</span></em>) can be grown\r\non almost any moderately well-drained soil type. A good supply of organic\r\nmatter can increase yield and reduce production problems. Tomatoes and related\r\nvegetables, such as potatoes, peppers, and eggplants, should not be planted on\r\nthe same land more than once in three years. Ideally, any cover crop or crop\r\npreceding tomatoes should be members of the grass family. Corn, an excellent\r\nrotation crop with tomatoes, supplies large amounts of organic matter and does\r\nnot promote the growth of disease organisms that attack tomatoes. Certified seeds\r\nand plants are recommended and should be used whenever possible.<o:p></o:p></span></p>\r\n\r\n<h2 style=\"margin-top: 0in; line-height: 15.6pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; text-align: start;\"><b><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333;\r\nletter-spacing:.4pt\">Bacterial Wilt<o:p></o:p></span></b></h2>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">Bacterial wilt\r\nor Southern bacterial blight is a serious disease caused by&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">Ralstonia solanacearum</span></em>&nbsp;(formerly&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">Pseudomonas solanacearum</span></em>). This\r\nbacterium survives in the soil for extended periods and enters the roots\r\nthrough wounds made by transplanting, cultivation, insect feeding damage, and\r\nnatural wounds where secondary roots emerge.</span></p><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: start;\">Disease\r\ndevelopment is favored by high temperatures and high moisture. The bacteria\r\nmultiply rapidly inside the water-conducting tissue of the plant, filling it\r\nwith slime. This results in rapid wilt of the plant while the leaves stay\r\ngreen. If an infected stem is cut crosswise, it will look brown and tiny drops\r\nof yellowish ooze may be visible.</span></p><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><strong style=\"font-size: inherit; text-align: start; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"font-family:&quot;Open Sans&quot;;color:#003333;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">Prevention &amp; Treatment:</span></strong><span style=\"text-align: start; font-family: &quot;Open Sans&quot;; color: rgb(0, 51, 51);\">&nbsp;</span><span style=\"font-size: 10.5pt; text-align: start; font-family: &quot;Open Sans&quot;; color: rgb(0, 51, 51);\">Control of\r\nbacterial wilt of plants grown in infested soil is difficult. Rotation with\r\nnon-susceptible plants, such as corn, beans, and cabbage, for at least three\r\nyears provides some control. Do not use pepper, eggplant, potato, sunflower, or\r\ncosmos in this rotation. Remove and destroy all infected plant material. Plant\r\nonly certified disease-free plants. The cultivar Kewalo is partially resistant\r\nto bacterial wilt but is an uncommon cultivar. Chemical control is not\r\navailable for this disease.</span></p><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: start;\">Consider\r\ngrowing all susceptible solanaceous plants (tomatoes, peppers, eggplants, and\r\nIrish potatoes) in a separate newly prepared garden site, completely separate\r\nfrom the original garden. Be sure to thoroughly hose off all soil from tiller\r\ntines and tools used in the original infested site before use in the new garden\r\nsite.</span></p><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: start;\">Recently,\r\nseveral bacterial wilt resistant rootstocks for grafted tomatoes, peppers, and\r\neggplants have been tested and found to have a high level of resistance.\r\nGrafted plants may be available.</span></p>\r\n\r\n<h2 style=\"margin-top: 0in; line-height: 15.6pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; text-align: start;\"><b><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333;\r\nletter-spacing:.4pt\">Early Blight<o:p></o:p></span></b></h2>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">This disease is\r\ncaused by the fungi&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">Alternaria</span></em>&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">linariae&nbsp;</span></em>(formally known as&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">A.</span></em>&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">solani</span></em>) and is first observed on\r\nthe plants as small, brown lesions mostly on the older foliage. Spots enlarge\r\nand concentric rings in a bull’s-eye pattern may be seen in the center of the\r\ndiseased area. The tissue surrounding the spots may turn yellow. If high\r\ntemperature and humidity occur at this time, much of the foliage is killed.\r\nLesions on the stems are similar to those on leaves and sometimes girdle the\r\nplant if they occur near the soil line (collar rot). On the fruits, lesions\r\nattain considerable size, usually involving nearly the entire fruit. Concentric\r\nrings are also present on the fruit. Infected fruit frequently drops.</span><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: start;\">The\r\nfungus survives on infected debris in the soil, on seed, on volunteer tomato\r\nplants, and other solanaceous hosts, such as Irish potato, eggplant, and black\r\nnightshade (a common, related weed).</span></p><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><strong style=\"font-size: inherit; text-align: start; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"font-family:&quot;Open Sans&quot;;color:#003333;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\"><br></span></strong></p><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><strong style=\"font-size: inherit; text-align: start; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"font-family:&quot;Open Sans&quot;;color:#003333;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">Prevention &amp; Treatment:</span></strong><span style=\"text-align: start; font-family: &quot;Open Sans&quot;; color: rgb(0, 51, 51);\">&nbsp;</span><span style=\"font-size: 10.5pt; text-align: start; font-family: &quot;Open Sans&quot;; color: rgb(0, 51, 51);\">Use resistant or\r\ntolerant tomato cultivars. Use pathogen-free seed and do not set diseased\r\nplants in the field. Use crop rotation, eradicate weeds and volunteer tomato\r\nplants, space plants to not touch, mulch plants, fertilize properly, don’t wet\r\ntomato foliage with irrigation water, and keep the plants growing vigorously.\r\nTrim off and dispose of infected lower branches and leaves.</span></p><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: start;\">To\r\nreduce disease severity, test the garden soil annually and maintain a sufficient\r\nlevel of potassium. Lime the soil according to soil test results. Side dress\r\ntomato plants monthly with calcium nitrate for adequate growth.</span></p><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: start;\">If\r\nthe disease is severe enough to warrant chemical control, select one of the\r\nfollowing fungicides: mancozeb (very good); chlorothalonil or copper fungicides\r\n(good). Follow the directions on the label. See Table 1 for examples of\r\nfungicide products for home garden use. See Table 2 for tomato cultivars with\r\nresistance or tolerance to early blight.</span></p>\r\n\r\n<h2 style=\"margin-top: 0in; line-height: 15.6pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; text-align: start;\"><b><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333;\r\nletter-spacing:.4pt\">Late Blight<o:p></o:p></span></b></h2><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; margin: 1.25rem; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; word-break: break-word; overflow-wrap: break-word; text-align: start;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">Late\r\nblight is a potentially serious disease of potato and tomato and is caused by\r\nthe water mold pathogen&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">Phytophthora\r\ninfestans</span></em>. Late blight is especially damaging during cool, wet\r\nweather. This pathogen can affect all plant parts. Young leaf lesions are small\r\nand appear as dark, water-soaked spots. These leaf spots will quickly enlarge,\r\nand a white mold will appear at the margins of the affected area on the lower\r\nsurface of leaves. Complete defoliation (browning and shriveling of leaves and\r\nstems) can occur within 14 days from the first symptoms. Infected tomato fruits\r\ndevelop shiny, dark, or olive-colored lesions, which may cover large areas.\r\nFungal spores are spread between plants and gardens by rain and wind. A\r\ncombination of daytime temperatures in the upper 70s °F with high humidity is\r\nideal for infection.</span></p><p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; margin: 1.25rem; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; word-break: break-word; overflow-wrap: break-word; text-align: start;\"><strong style=\"font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"font-family:&quot;Open Sans&quot;;color:#003333;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">Prevention &amp; Treatment:</span></strong><span style=\"font-family: &quot;Open Sans&quot;; color: rgb(0, 51, 51);\">&nbsp;</span><span style=\"font-size: 10.5pt; font-family: &quot;Open Sans&quot;; color: rgb(0, 51, 51);\">The following\r\nguidelines should be followed to minimize late blight problems:</span></p>\r\n\r\n<ul style=\"margin-top: 0in; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; text-align: start;\" type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"color: rgb(0, 51, 51); margin-bottom: 8.4pt; line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:\r\n     &quot;Open Sans&quot;\">Keep foliage dry. Locate your garden where it will receive\r\n     morning sun.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(0, 51, 51); margin-bottom: 8.4pt; line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:\r\n     &quot;Open Sans&quot;\">Allow extra room between the plants, and avoid overhead\r\n     watering, especially late in the day.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(0, 51, 51); margin-bottom: 8.4pt; line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:\r\n     &quot;Open Sans&quot;\">Purchase certified disease-free seeds and plants.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(0, 51, 51); margin-bottom: 8.4pt; line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:\r\n     &quot;Open Sans&quot;\">Destroy volunteer tomato and potato plants, as well as\r\n     nightshade family weeds, such as Carolina horsenettle or black nightshade,\r\n     which may harbor the fungus.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(0, 51, 51); margin-bottom: 8.4pt; line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:\r\n     &quot;Open Sans&quot;\">Do not compost rotten, store-bought potatoes.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(0, 51, 51); margin-bottom: 8.4pt; line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:\r\n     &quot;Open Sans&quot;\">Pull out and destroy diseased plants.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(0, 51, 51); margin-bottom: 8.4pt; line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:\r\n     &quot;Open Sans&quot;\">If the disease is severe enough to warrant chemical control,\r\n     select one of the following fungicides: chlorothalonil (very good), copper\r\n     fungicide, or mancozeb (good). See Table 1 for examples of fungicide\r\n     products for home garden use. Follow the directions on the label.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: rgb(0, 51, 51); margin-bottom: 8.4pt; line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:\r\n     &quot;Open Sans&quot;\">Plant resistant cultivars. See Table 3 for tomato cultivars\r\n     with resistance to late blight.<o:p></o:p></span></li>\r\n</ul>\r\n\r\n<h2 style=\"margin-top: 0in; line-height: 15.6pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><b><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333;\r\nletter-spacing:.4pt\">Septoria Leaf Spot<o:p></o:p></span></b></h2>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; margin: 1.25rem; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; word-break: break-word; overflow-wrap: break-word; text-align: start;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">This\r\ndestructive disease of tomato foliage, petioles, and stems (fruit is not\r\ninfected) is caused by the fungus&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">Septoria</span></em>&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">lycopersici</span></em>. Infection usually\r\noccurs on the lower leaves near the ground, after plants begin to set fruit.\r\nNumerous small, circular spots with dark borders surrounding a beige-colored\r\ncenter appear on the older leaves. Tiny black specks, which are spore-producing\r\nbodies, can be seen in the center of the spots. Severely spotted leaves turn\r\nyellow, die, and fall off the plant. The fungus is most active when\r\ntemperatures range from 68 to 77° F, the humidity is high, and rainfall or\r\noverhead irrigation wets the plants. Defoliation weakens the plant, reduces the\r\nsize and quality of the fruit, and exposes the fruit to sunscald (see below).\r\nThe fungus is not soil-borne but can overwinter on crop residue from previous\r\ncrops, decaying vegetation, and on some weeds related to tomato.<o:p></o:p></span></p>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; margin: 1.25rem; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; word-break: break-word; overflow-wrap: break-word; text-align: start;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"font-family:&quot;Open Sans&quot;;color:#003333;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">Prevention &amp; Treatment:</span></strong><span style=\"font-family:&quot;Open Sans&quot;;color:#003333\">&nbsp;</span><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">Most currently\r\ngrown tomato cultivars are susceptible to Septoria leaf spot. Crop rotation of\r\n3 years and sanitation (removal of crop debris) will reduce the amount of\r\ninoculum. Do not use overhead irrigation. Repeated fungicide applications with\r\nchlorothalonil (very good) or copper fungicide, or mancozeb (good) will keep\r\nthe disease in check. See Table 1 for examples of fungicide products for home\r\ngarden use.<o:p></o:p></span></p>\r\n\r\n<h2 style=\"margin-top: 0in; line-height: 15.6pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; text-align: start;\"><b><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333;\r\nletter-spacing:.4pt\">Leaf Mold<o:p></o:p></span></b></h2>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; margin: 1.25rem; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; word-break: break-word; overflow-wrap: break-word; text-align: start;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">The\r\nfungus&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">Passalora fulva&nbsp;</span></em>causes leaf\r\nmold. It is first observed on older leaves near the soil where air movement is\r\npoor and humidity is high. The initial symptoms are pale green or yellowish\r\nspots on the upper leaf surface, which enlarge and turn a distinctive yellow.<o:p></o:p></span></p>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; margin: 1.25rem; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; word-break: break-word; overflow-wrap: break-word; text-align: start;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">Under\r\nhumid conditions, the spots on the lower leaf surfaces become covered with a\r\ngray, velvety growth of the spores produced by the fungus. When infection is\r\nsevere, the spots coalesce, and the foliage is killed. Occasionally, the fungus\r\nattacks stems, blossoms and fruits. Green and mature fruit can have a black,\r\nleathery rot on the stem end.<br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">The fungus\r\nsurvives on crop residue and in the soil. Spores are spread by rain, wind, or\r\ntools. Seeds can be contaminated. The fungus is dependent on high relative\r\nhumidity and high temperature for disease development.<o:p></o:p></span></p>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; margin: 1.25rem; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; word-break: break-word; overflow-wrap: break-word; text-align: start;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"font-family:&quot;Open Sans&quot;;color:#003333;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">Prevention &amp;\r\nTreatment:&nbsp;</span></strong><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Crop residue should be removed from the field. Staking and\r\npruning to increase air circulation helps to control the disease. Space tomato\r\nplants further apart for better air circulation between plants. Avoid wetting\r\nleaves when watering. Rotate with vegetables other than tomatoes. Using a\r\npreventative fungicide program with chlorothalonil, mancozeb, or copper\r\nfungicide, can control the disease. See Table 1 for fungicide products for home\r\ngarden use.<o:p></o:p></span></p>\r\n\r\n<h2 style=\"margin-top: 0in; line-height: 15.6pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; text-align: start;\"><b><span style=\"font-size:12.0pt;font-family:&quot;Open Sans&quot;;color:#003333;\r\nletter-spacing:.4pt\">Bacterial Spot<o:p></o:p></span></b></h2>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; margin: 1.25rem; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; word-break: break-word; overflow-wrap: break-word; text-align: start;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">This\r\ndisease is caused by several species of the bacterium&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">Xanthomonas</span></em>&nbsp;(but primarily by&nbsp;<em style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 1pt none windowtext; padding: 0in;\">Xanthomonas perforans</span></em>), which\r\ninfect green but not red tomatoes. Peppers are also infected. The disease is\r\nmore prevalent during wet seasons. Damage to the plants includes leaf and fruit\r\nspots, which result in reduced yields, defoliation, and sunscalded fruit. The\r\nsymptoms consist of numerous small, angular to irregular, water-soaked spots on\r\nthe leaves and slightly raised to scabby spots on the fruits. The leaf spots\r\nmay have a yellow halo. The centers dry out and frequently tear.<o:p></o:p></span></p>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">The bacteria\r\nsurvive the winter on volunteer tomato plants and on infected plant debris.\r\nMoist weather is conducive to disease development. Most outbreaks of the\r\ndisease can be traced back to heavy rainstorms that occurred in the area.\r\nInfection of leaves occurs through natural openings. Infection of fruits must\r\noccur through insect punctures or other mechanical injuries.<o:p></o:p></span></p>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; margin: 1.25rem; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; word-break: break-word; overflow-wrap: break-word; text-align: start;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;color:#003333\">Bacterial\r\nspot is difficult to control once it appears in the field. Any water movement\r\nfrom one leaf or plant to another, such as splashing raindrops, overhead\r\nirrigation, and touching or handling wet plants, may spread the bacteria from\r\ndiseased to healthy plants.<o:p></o:p></span></p>\r\n\r\n<p style=\"line-height: 20.4pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; margin: 1.25rem; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; word-break: break-word; overflow-wrap: break-word; text-align: start;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"font-family:&quot;Open Sans&quot;;color:#003333;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">Prevention &amp;\r\nTreatment:&nbsp;</span></strong><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Only use certified disease-free seeds and plants. Avoid areas\r\nthat were planted with peppers or tomatoes during the previous year. Avoid\r\noverhead watering by using drip or furrow irrigation. Remove and dispose of all\r\ndiseased plant material. Prune plants to promote air circulation. Spraying with\r\na copper fungicide will give fairly good control of the bacterial disease.\r\nFollow the instructions on the label. See Table 1 for fungicide products for\r\nhome garden use.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p></div>', '1679418479img43.jpg', 'https://gardenerspath.com/', 19, 1, NULL, NULL, 'tomato,vegetables,crops,diseases', '2018-03-06 09:54:21'),
(12, 8, 'New Technologies In Agriculture Are Increasing Farm Profitability', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Sitting in front of my office is a two-row,\r\nhorse-drawn planter. I inherited it from a ranch I bought where it sat from the\r\nday it was last used, more than 100 years prior. If all went well, you could\r\nplant four to five acres in a day, working from sunup to sundown. Today’s\r\nmulti-row planters can plant up to 1,500 acres per day.</span></p><p class=\"MsoNormal\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; font-variant-ligatures: common-ligatures; text-align: start;\">As a farmer, farmland owner and CEO of a farmland\r\ninvestment platform, when I look at farmland as an asset, I look at both its\r\nhistory and its potential. How has it performed, and what’s next?</span></p><p class=\"MsoNormal\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; font-variant-ligatures: common-ligatures; text-align: start;\">Over the past century, the way we farm has\r\ncompletely transformed. Mechanical engineering and advancement allowed the\r\ntransition from horse-pulled plows, sowing seed by hand and back-breaking\r\nharvests. In the 1940s, tractors and mechanical equipment replaced manual\r\nprocesses and horses. Farmers who could once only tend a dozen or so acres\r\nfound the new capability of managing hundreds of acres. Now, as we forge our\r\nway into a new millennium, farmers have access to a tool just as tantamount and\r\njust as revolutionary: technology.</span></p></div>', '1679417927img42.jpg', 'https://www.forbes.com/', 23, 1, NULL, NULL, 'agriculture,techonology', '2018-04-06 22:04:20');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(13, 15, '25 Of The Sweetest, Juiciest Watermelon Varieties You Can Grow', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\">Watermelons\r\nare such a delightful and refreshing summer staple – it seems almost too good\r\nto be true that we can grow these fruits in our own backyards.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Of course, there are so many incredible varieties to\r\nchoose from, it can be very difficult to know which ones to pick.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">I’ve made a list of 25 of the best watermelon\r\ncultivars – including picnic, icebox, personal-sized, and seedless varieties,\r\nas well as some with unexpected flesh colors.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\"></span></p><figure class=\"aligncenter size-full\" style=\"display: table; margin-right: auto; margin-bottom: 1.5em; margin-left: auto; clear: both; max-width: 100%; height: auto;\">the\r\nfruits weigh at least 15 pounds, but often more – enough to feed a small crowd\r\nduring a summer gathering.<o:p></o:p><p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"line-height: 107%;\"><b style=\"\"><font size=\"4\">1. Allsweet</font></b><span style=\"font-size: 12pt;\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Allsweet’ has the classic look of a picnic watermelon\r\nvariety. With good disease resistance, it’s well-suited to long growing\r\nseasons.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This cultivar produces large oblong fruits weighing in\r\nat 25-30 pounds each, with dark and light green striped skin.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">With sweet, bright red, firm flesh, fruits will reach\r\n17-19 inches long and seven inches in diameter at maturity. Seeds are dark\r\nbrown.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Also called ‘All Sweet’ this is an open-pollinated\r\nvariety, so you can save the seeds from this year’s crop to grow next year’s\r\nmelons.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/arJW9MD.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants have a height of 15-24 inches, with vines\r\nspreading to 72-96 inches, and are resistant to fusarium wilt and anthracnose.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Allsweet’ will be ready to harvest in 90-104 days\r\nafter sowing.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>2. Charleston Gray</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Charleston Gray’ is a distinguished heirloom variety\r\nproducing large cylindrical fruit that have uniform greenish-gray skin.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Also sometimes referred to as ‘Charleston Grey,’ this\r\nopen-pollinated picnic cultivar’s sweet red flesh is crisp and fiberless. The\r\nfruits’ hard rinds make them good keepers.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">These often top out at 28 to 35 pounds each when\r\nthey’re ready to harvest, so you better be ready to eat some watermelon this\r\nsummer if you choose this type!<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/jP93ZmG.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants reach a height of 15-24 inches and should be\r\nthinned to 36 inches apart, to allow for a spread of 72 to 96 inches.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This cultivar is resistant to fusarium wilt and\r\nanthracnose as well as sunburn. Expect a harvest in 85 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>3. Crimson Sweet</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Crimson Sweet’ is an open-pollinated picnic-type\r\nheirloom variety that remains many gardeners’ top pick, and for good reason –\r\nit’s delicious, productive, and disease resistant.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This large, round cultivar weighs in at around 25-35\r\npounds at harvest, and it has a light green rind with dark green stripes.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This watermelon’s flesh is dark red and firm, with a\r\nfine texture and small dark seeds.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Crimson Sweet’ has a high sugar content, contributing\r\nto its delicious sweet flavor. Fruits have thick rinds, which hold up well to\r\nhandling.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/0oee8i1.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants are vigorous, reaching heights of 15-24 inches\r\nwith a spread of six to eight feet, and are resistant to anthracnose and\r\nfusarium wilt.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">You’ll be harvesting these sweet juicy melons in 80\r\ndays.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>4. Georgia Rattlesnake</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Georgia Rattlesnake’ bears large, oblong fruits with\r\nlight green skin and dark green stripes – bringing rattlesnake skin to mind to\r\nsome gardeners.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This picnic-type heirloom variety can reach 24 inches\r\nlong and averages 30 pounds at maturity, with bright pink sweet flesh, and a\r\nthin rind.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">And it’s open-pollinated, so save those seeds for\r\nplanting next year.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/MT6VcTG.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Expect 90 days to maturity, with a height of 15-24\r\ninches and a spread of 72-96 inches.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>5. Klondike Blue Ribbon Striped</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Klondike Blue Ribbon Striped’ is an open-pollinated\r\nheirloom variety that has been a garden favorite since the early 1900s, beloved\r\nfor its delicious sweet flesh.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This picnic cultivar produces oblong melons that will\r\nmax out at 20-30 pounds.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Fruits have thin but tough rinds with alternating\r\nlight and dark green stripes. Flesh is bright crimson, delicious, crisp, and\r\nits high sugar content makes it super sweet.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/NszMq50.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants are resistant to fusarium wilt, anthracnose,\r\nand sunburn. Although the rinds of these fruits are thin, they hold up well to\r\nhandling.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Klondike Blue Ribbon Striped’ will be ready to\r\nharvest in 80-90 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>6. Sweet Princess</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Sweet Princess’ is an open-pollinated,\r\ndisease-resistant heirloom watermelon bearing oblong fruits that reach 20-30\r\npounds.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Fruits have thin but tough rinds that are light green\r\nwith dark green marbling. Flesh is pink, crisp, and sweet, with a fine texture\r\nand very small tan seeds.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">These pink-fleshed picnic watermelons grow to 15\r\ninches long by eight inches wide.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/EKNyTvy.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Sweet Princess’ has good resistance to fusarium wilt\r\nand anthracnose, and will be ready to harvest in 85-95 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Icebox<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Moving on from picnic to icebox type watermelons, we\r\nare moving down in size. Icebox types grow to six to 15 pounds at full ripeness\r\nand can generally fit in the fridge, aka the “icebox.”<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">If you’re concerned about not being able to finish a\r\nwhole picnic watermelon once you cut it open, these make a good alternative.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Another advantage to icebox types is that they tend to\r\nmature earlier than most picnic cultivars, so these are generally better\r\nchoices for gardeners with a shorter growing season.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Or they can be grown alongside picnic varieties by\r\ngardeners who want to make sure they have an earlier crop to enjoy, as well as\r\nan abundance of fruit throughout the season.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>7. Blacktail Mountain</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">If your climate tends to feel like an icebox at night,\r\neven in midsummer, ‘Blacktail Mountain’ may be your answer if you want to grow\r\nwatermelons.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Developed in Northern Idaho, this is a short season\r\nopen-pollinated cultivar that will tolerate cool nighttime temperatures.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Blacktail Mountain’ produces fruit that weigh six to\r\n15 pounds, just the right size for storing in your fridge. Fruits are round\r\nwith a dark green rind and sweet scarlet-hued flesh.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/TJKd9yV.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"539\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">And if your first frost comes early, fruits can be\r\npicked a little before full ripeness and ripened in storage, where they can\r\nkeep for up to two months.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Wonderful for northern areas with cool nights and\r\nshort growing seasons, this variety comes to maturity in just 70-75 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>8. Bush Sugar Baby</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Looking for a bush type watermelon that’s perfect for\r\nsmaller gardens – or even for&nbsp;<a href=\"https://gardenerspath.com/category/how-to/containers/\" style=\"transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s\"><span style=\"color: windowtext;\">growing in\r\ncontainers</span></a>?<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\">We’ve got\r\nyou covered. ‘Bush Sugar Baby’ produces an average of two 12-pound melons per\r\nplant, on “space-saving” vines.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This icebox type is small enough to store in the\r\nfridge, producing round dark green fruit with sweet scarlet flesh.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/r0V1Xvq.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants grow to a height of 15-24 inches, with vines\r\ngrowing to be 3 1/2 feet long. This variety has good resistance to cool\r\nweather, cracking, drought, and sunburn.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Bush Sugar Baby’ will be ready to harvest in around\r\n80 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>9. Sweet Beauty</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Sweet Beauty’ is a hybrid variety with superior\r\neating quality that was the All-America Selections winner in 2004.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">A smaller icebox variety, these fruits weigh in at six\r\nto seven pounds.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Small oblong watermelons are striped with dark and\r\nlight green. Flesh is deep red with a sweet flavor and crisp texture.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/Ts7FGNO.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">The vines on this variety will spread eight to 10 feet\r\nand bear harvestable fruit in just 77-80 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>10. Golden Midget</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Golden Midget’ is a personal-sized watermelon variety\r\nthat will really stand out in your melon patch – literally.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">The rinds of this open-pollinated cultivar turn gold\r\nwhen ripe, making harvesting a snap.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Round fruits are tiny, at just three pounds each, and\r\nthey contain sweet pink-colored flesh with dark seeds.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><img src=\"https://i.imgur.com/rzKQEBP.jpg\" width=\"500\"><br></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Golden Midget’ is a super early variety that’s great\r\nfor short-season growers – fruit will be ready to harvest in just 70 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>11. Little Darling</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Little Darling’ is a small, early maturing hybrid\r\nwatermelon variety that bears oblong, five to seven-pound fruit with dark green\r\nrinds.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">These personal-sized fruits have a high sugar content,\r\nwhich means their red flesh is super sweet.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/HYLi83V.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"539\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">The vines of this early-maturing cultivar are compact\r\nat four to five feet long, producing melons that are ready to harvest in 65-70\r\ndays. Expect three to four fruits per plant.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>12. Mini Love</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Mini Love’ is a high-yielding and compact hybrid that\r\nproduces single-serving-sized round watermelons.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This variety was the All-America Selections winner in\r\nthe edible category in 2017, winning for both its crack resistant rinds and its\r\ndelectable flavor.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Fruits weigh in at three to six pounds, with about six\r\nfruits per plant.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">The flesh of this cultivar is deep red and has a high\r\nsugar content, making for a delicious and juicy personal-sized treat.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\"><a href=\"https://www.amazon.com/dp/B07W1X521Q?tag=prettyac-20&amp;linkCode=ogi&amp;th=1&amp;psc=1\" target=\"_blank\" data-cart=\"n\" data-cloak=\"n\" data-identifier=\"B07W1X521Q\" data-locale=\"US\" data-localize=\"y\" data-popups=\"n\" data-tag=\"prettyac-20\" style=\"transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s\"><span style=\"font-family: &quot;Open Sans&quot;; color: rgb(30, 115, 190); border: 1pt none windowtext; padding: 0in;\"><o:p></o:p></span></a></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/aIedlMI.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">The vines of ‘Mini Love’ are compact at three to four\r\nfeet long, making this cultivar an excellent option for growing in small spaces\r\nand containers. These plants have good resistance to anthracnose.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Fruits have thin but strong rinds, giving them good\r\nresistance to cracking and splitting.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This early maturing variety will be ready to harvest\r\nin around 70 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Giant<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Most of us have heard of gardeners&nbsp;<a href=\"https://gardenerspath.com/plants/vegetables/grow-pumpkins/\" style=\"transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s\"><span style=\"color: windowtext;\">growing giant\r\npumpkins</span></a>, but giant watermelons aren’t quite as common. I guess we\r\nhave been missing out on this branch of competitive gardening – at least I\r\nhave!<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">According to Guinness World Records, the&nbsp;<a href=\"https://www.guinnessworldrecords.com/world-records/heaviest-watermelon\" target=\"_blank\" style=\"transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s\"><span style=\"color: windowtext;\">largest\r\nwatermelon ever grown</span></a>&nbsp;weighed in at just over 350 pounds!<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">You don’t have to get quite that big for your melon to\r\nbe considered a giant though. Giant cultivars include those that weigh at least\r\n32 pounds at full ripeness.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Keep in mind that you will certainly need a generous\r\ngrowing season in order for your watermelons to grow to such mammoth\r\nproportions.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">And psst, there’s a trick to getting such huge melons.\r\nIf you’re going for whoppers, you’ll want to whittle down an excess of baby\r\nmelons to allow the plants to focus their energies on just a couple.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\"><b>13. Black\r\nDiamond Yellow Belly</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Black Diamond Yellow Belly’ is a high yielding,\r\nopen-pollinated heirloom variety that produces slightly oblong fruit, with dark\r\nblue-black rinds that are bright yellow where the melons touch the ground.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Fruits have rich red flesh with an excellent texture.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">They are generally 25-35 pounds but with enough\r\navailable growing days and attentive care, these can weigh in at a whopping 75\r\npounds.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Also known as ‘Yellow Belly Black Diamond’ and\r\n‘Superior Black Diamond,’ this cultivar’s thick rinds make for excellent\r\nstorage.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/T4S9i4G.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants have large leaves, protecting the fruits from\r\nsunburn. When the bellies of these melons turn bright yellow, that’s when\r\nyou’ll know they’re ripe.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Black Diamond Yellow Belly’ will be ready to harvest\r\nin around 90 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>14. Carolina Cross </b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Carolina Cross #183’ is truly a giant, with some\r\ngrowers producing gigantic watermelons weighing over 200 pounds at harvest.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">You read that right – the range described on seed\r\npackets for these is 50-200 pounds, so enormous yields aren’t all that unusual,\r\nunder the right conditions. One reviewer on the Burpee website said they are\r\n“so big that people stop and ask questions.”<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">And these heirlooms are not just for show – when grown\r\nto full maturity, the red flesh inside is delicious, too.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/Wu2bC5Y.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Oblong in shape, ‘Carolina Cross #183’ has a light\r\ngreen rind with narrow dark green stripes.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants reach a height of 15-24 inches with a spread of\r\n96-120 inches. They grow quickly, requiring about 100 days to harvest.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>15. Florida Giant</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Florida Giant’ produces round fruit that generally\r\nreach 30-40 pounds but can max out at 50 pounds in the right conditions.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Introduced in the 1940s, this heirloom open-pollinated\r\nvariety has a dark green rind and tasty red flesh.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/L98H3b6.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">For watermelons that are at their sweetest, make sure\r\nto let them ripen fully – for this variety, count on about 90 days until\r\nharvest.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Seedless<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Are you a fan of seedless watermelon?<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Personally, I don’t mind seeds in my melons, but the\r\nseedless types do have a very useful purpose beyond the desire for a seedless\r\nslice.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">When you’re using this fruit for culinary creations,\r\nsuch as sorbets or salads, seedless fruits are much more convenient than the\r\nseeded types since you get to skip the tedious step of removing those tiny pips\r\nfrom the flesh.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Growing these hybrids at home is doable, but it\r\nrequires a bit more work and is a bit trickier than growing seeded types.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">To start with, seedless varieties have a lower\r\ngermination rate and because of this, they are often started as transplants\r\ninstead of direct sowing.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">In addition to lower chances of successful\r\ngermination, seedless varieties must be planted with a pollinator plant (i.e. a\r\nseeded watermelon) nearby in order for seedless plants to produce fruit.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">And this pollinator variety needs to bloom at the same\r\ntime as the seedless cultivar.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">So it’s a little extra work, but by no means a\r\ndaunting gardening project.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">If you’re the type of gardener who’s up for a bit of a\r\nchallenge – and most importantly, one who prefers seedless watermelon – give it\r\na try!<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\"><b>16. Big\r\nTasty</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This seedless hybrid offers big flavor in a tiny\r\npackage.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Topping out at six to eight pounds each, ‘Big Tasty’\r\nmelons reach about 10-12 inches in diameter when they’re ready for harvest.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Fruits are round or oval shaped with pale gray-green skins\r\nthat hold crisp, firm, bright red flesh with stunning flavor.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">In fact, this variety won Burpee’s taste test when\r\ncompared to over 50 other varieties.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This watermelon cultivar is known to keep its\r\ndelicious flavor longer than other types after you cut into it, so it’s perfect\r\nfor those with small households who know they might not be able to eat a whole\r\nmelon all at once.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/xvisTRG.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">As a seedless variety, ‘Big Tasty’ will need to be\r\nplanted with a seeded pollinator cultivar, such as ‘Gold in Gold.’<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants reach a height of 15-24 inches with a spread of\r\n60-72 inches. Expect a harvest in 85 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>17. Mini Piccolo</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Mini Piccolo’ is a seedless hybrid variety that comes\r\nin a single-serving size. Round fruits have green rinds with darker green\r\nstriping and weigh a diminutive two to four pounds.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">These personal-sized watermelons have dense red flesh\r\nand are super sweet.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/MPGiijn.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants are vigorous, producing up to six fruits each,\r\nand growing 14 inches tall with a 10-foot spread. Make sure to plant ‘Mini\r\nPiccolo’ with a seeded pollinator variety, such as ‘Crimson Sweet.’<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">These melons will be ready to harvest in 80-83 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>18. Triple Crown</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Triple Crown’ bears large picnic-sized watermelons.\r\nThe “triple” in this cultivar’s name refers to the fact that it is a triploid,\r\nor in other words, a seedless hybrid.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Fruits weigh 18-20 pounds and are oval shaped, with\r\nlight green rinds and dark green stripes. The fruits of this variety have deep\r\nred, juicy, firm flesh with a fine-grained texture.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/u3ehxpA.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"539\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Don’t forget that this seedless type will need to be\r\ngrown with a pollinator variety. ‘Bush Sugar Baby’ makes a good pollinator for\r\n‘Triple Crown.’<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">High yielding plants will produce fruit that’s ready\r\nto harvest in 80 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>19. Orange Crisp</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This orange-fleshed picnic variety offers an added\r\nbonus if you’re not up for spitting or picking out pips. ‘Orange Crisp’ is a\r\nhybrid watermelon that has sweet, crisp, deep orange flesh unmarred by pesky\r\nseeds.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Fruits are 11 inches in diameter, weigh 17-19 pounds\r\nwhen ripe, and are round to oval shaped. ‘Orange Crisp’ has a thick rind that’s\r\nlight green with darker green stripes, and holds in storage very well.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\"><a href=\"https://www.amazon.com/dp/B07D1F27V7?tag=prettyac-20&amp;linkCode=ogi&amp;th=1&amp;psc=1\" target=\"_blank\" data-cart=\"n\" data-cloak=\"n\" data-identifier=\"B07D1F27V7\" data-locale=\"US\" data-localize=\"y\" data-popups=\"n\" data-tag=\"prettyac-20\" style=\"transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s\"><span style=\"font-family: &quot;Open Sans&quot;; color: rgb(30, 115, 190); border: 1pt none windowtext; padding: 0in;\"><o:p></o:p></span></a></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/6qSSMdk.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants produce heavy yields of fruits that are\r\nresistant to sunburn and hollow heart.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Don’t forget to plant seedless ‘Orange Crisp’ with a\r\nseeded pollinator cultivar, such as ‘Charleston Gray.’<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Expect a harvest of these orange-fleshed beauties in\r\nabout 87 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>20. Orangeglo</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Orangeglo’ has the crisp and refreshing mouthfeel of\r\na regular watermelon – but its orange flesh has a surprising, somewhat tropical\r\ntaste.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">The flesh of this open-pollinated variety is simply\r\nstunning – it’s bright orange in color and sugary sweet with hints of exotic\r\nfruit flavors.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Orangeglo’ has unusual seeds as well – they are beige\r\nwith two brown dots at the tips.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/6qdTszN.jpg\" style=\"font-size: 16px; text-align: left;\" width=\"500\"></p>\r\n\r\n<figure id=\"attachment_42281\" aria-describedby=\"caption-attachment-42281\" class=\"wp-caption aligncenter\" style=\"margin-right: auto; margin-bottom: 1.5em; margin-left: auto; clear: both; max-width: 100%; position: relative; width: 790px;\">\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\"></span></p><figcaption id=\"caption-attachment-42281\" class=\"wp-caption-text\" style=\"font-size: 15px; padding-top: 5px; opacity: 0.8;\">Fruits\r\nare oblong, light green with green striping, and top out at 20-30 pounds when\r\nripe. Rinds are fairly thin – slice a knife into one of these melons and it\r\nwill crack open with little effort.<o:p></o:p><p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">This picnic variety was developed by the Willhite Seed\r\nCompany in Poolville, Texas in the 1960s, but despite its Southern origins, it\r\ndoes well in northern climates and is cold tolerant.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\"><a href=\"https://www.amazon.com/dp/B00AAH3PUK?tag=prettyac-20&amp;linkCode=ogi&amp;th=1&amp;psc=1\" target=\"_blank\" data-cart=\"n\" data-cloak=\"n\" data-identifier=\"B00AAH3PUK\" data-locale=\"US\" data-localize=\"y\" data-popups=\"n\" data-tag=\"prettyac-20\" style=\"transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s\"><span style=\"font-family: &quot;Open Sans&quot;; color: rgb(30, 115, 190); border: 1pt none windowtext; padding: 0in;\"><o:p></o:p></span></a></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants produce heavy yields and have good resistance\r\nto wilt and insect pests. Fruits are resistant to splitting on the vine.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">You’ll be harvesting ‘Orangeglo’ in 90-100 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>21. Orange Tendersweet</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Orange Tendersweet’ (or ‘Tendersweet Orange,’\r\ndepending on who you ask) is sure to be a favorite, with its attractive oblong\r\nshape and bright orange flesh.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Also called ‘Orange Flesh Tendersweet,’ this heirloom\r\nvariety is in fact very sweet, and fruit will weigh 30-50 pounds at full\r\nripeness.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">And since it’s open-pollinated, you could try saving\r\nyour own seeds to grow next year.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Rinds are sturdy, and striped with dark and light\r\ngreen. The bright orange flesh of this melon is sweet and tasty with a tender\r\ntexture.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/NoiYzOY.jpg\" style=\"font-size: 15px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants reach a height of 15-24 inches with a spread of\r\n72-96 inches, and produce harvestable fruit in 90 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>22. Gold in Gold</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Gold in Gold’ is an early maturing yellow-fleshed\r\nhybrid variety that was the All-America Selections winner for 2017.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">These icebox sized watermelons are sure to surprise\r\nyou – not only do they have gold flesh, they also come dressed in a two-toned\r\nyellow and gold rind.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">They don’t just look delicious, though – their flavor\r\nis also a thrill. These melons have a high sugar content and their sweet golden\r\nflesh has a pleasantly crisp texture.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Fruits are oval shaped and weigh 11-16 pounds when\r\nripe, so they fit nicely in the fridge.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/tN6Ffcv.jpg\" style=\"font-size: 15px; text-align: left;\" width=\"539\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants grow to 20 inches high with vines that spread\r\nup to 10 feet. ‘Gold in Gold’ has good general disease resistance, and thin but\r\nstrong rinds that resist cracking.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">You’ll be ready to harvest these golden fruits in\r\n80-84 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>23. Mountain Sweet Yellow</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Mountain Sweet Yellow’ is an open-pollinated,\r\nyellow-fleshed heirloom variety that was developed from ‘Mountain Sweet,’ a red\r\nfleshed cultivar grown in the Northeast in the 1800s.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">These oblong picnic-style watermelons reach 20-35\r\npounds at full ripeness. Rinds are dark green with light green stripes, and the\r\nflesh is deep yellow with black seeds.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><img src=\"https://i.imgur.com/K05QKma.jpg\" width=\"500\"><br></span></p><p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><br></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Mountain Sweet Yellow’ has a high sugar content that\r\nwill have you coming back for more of its juicy, firm, sweet yellow flesh.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Vines will spread to six to 10 feet, with fruit that’s\r\nready to harvest in 95-100 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>24. Yellow Petite</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Yellow Petite’ is an early maturing icebox watermelon\r\nwith sweet yellow flesh that is&nbsp;nearly&nbsp;seedless.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Also known as ‘Petite Yellow,’ fruits reach six to 10\r\npounds, and have light green rinds with dark green stripes.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">The rinds on these round fruits resist cracking,\r\nmaking them easy to transport to picnics or family reunions.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/LfyZyxD.jpg\" style=\"font-size: 15px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">The leaves on these open-pollinated plants will cover\r\nthe fruits, helping to protect them from sunburn.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Expect fruits to be ready for harvest in 65-85 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\"><b>25. Cream of Saskatchewan</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">‘Cream of Saskatchewan’ is a rare white-fleshed\r\nheirloom watermelon that was developed in Ukraine. Thanks to its heritage, this\r\nvariety does well in northern climates.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Small round melons reach four to 10 pounds – or more,\r\nin warmer climates – with thin rinds that are light green with dark green\r\nstripes.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">And you’ll love the sugary sweet cream-colored flesh.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\"><a href=\"https://www.amazon.com/dp/B074V46ZW4?tag=prettyac-20&amp;linkCode=ogi&amp;th=1&amp;psc=1\" target=\"_blank\" data-cart=\"n\" data-cloak=\"n\" data-identifier=\"B074V46ZW4\" data-locale=\"US\" data-localize=\"y\" data-popups=\"n\" data-tag=\"prettyac-20\" style=\"transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s\"><span style=\"font-family: &quot;Open Sans&quot;; color: rgb(30, 115, 190); border: 1pt none windowtext; padding: 0in;\"><o:p></o:p></span></a></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span><img src=\"https://i.imgur.com/9pcDScF.jpg\" style=\"font-size: 15px; text-align: left;\" width=\"500\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">Plants grow six to 12 inches tall with eight to\r\n10-foot-long vines. They stand up well to cool weather, and will be ready to\r\nharvest in 75-85 days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"overflow-wrap: break-word\"><span style=\"font-size:\r\n12.0pt;line-height:107%\">&nbsp;</span></p></figcaption></figure></figure></div>', '1679417551img41.jpg', 'by Kristina Hicks-Hamblin', 62, 1, NULL, NULL, 'watermelon,care,fruits', '2018-05-06 22:04:36');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(14, 9, 'BRRI develops seven high-yielding Aman paddy varieties', '<div align=\"justify\"><p class=\"MsoNormal\"><b><span style=\"font-size:12.0pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;color:#003333\">The seven are comparatively\r\nhigher-yielding than the local Swarna variety.<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">The Bangladesh Rice Research Institute (BRRI) has\r\ndeveloped seven modern paddy varieties for Aman season – creating high hopes\r\namong &nbsp;Rajshahi’s farmers, including along its vast Barind tract.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">The varieties—Brridhan71, Brridhan75, Brridhan80,\r\nBrridhan87 and Brridhan90—are comparatively higher-yielding, drought-tolerant,\r\nand shorter-duration than the local Swarna variety. – Swarna is prone to\r\ndisease and attracts insects that affect the farmers.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">BRRI Chief Scientific Officer Dr Aminul Islam\r\nannounced this while presenting his keynote paper at a technical session of a\r\ndaylong regional seminar titled “Way Forward for Boosting Aman Paddy Yield in\r\nRajshahi region,” at BRRI’s Regional Office conference hall in Rajshahi on\r\nTuesday, reports BSS.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">He mentioned that the Swarna variety can easily be\r\nreplaced with the modern Brridhan varieties, in the Barind area, and this can\r\nbe an effective means of ensuring food security by &nbsp;boosting paddy\r\nproduction.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">The modern varieties have opened up the doors to\r\nenormous prospects of food security, and mitigating the crises of irrigation\r\nwater.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Agriculture Ministry’s Additional Secretary\r\n(Research) Komolaranjan Das addressed the seminar as chief guest with BRRI\r\nDirector General Dr Shahjahan Kabir in the chair.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Director General of Bangladesh Sugar Crop Research\r\nInstitute Dr Amzad Hossain, Additional Director of the Department of\r\nAgriculture Extension (DAE) Dev Dulal Dhali, BRRI Director Dr Ansar Ali and its\r\nSenior Scientific Office Harun-Or-Rashid also spoke at the seminar.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Komolaranjan Das urged the DAE officials to expand\r\nfarming the drought-tolerant varieties to the drought-affected areas—like the\r\nTanore and Godagari Upazilas in Rajshahi, Nachole and Gomostapur Upazilas in\r\nChapainawabgonj ;and Porsha and Shapahar in Naogaon districts—for a better\r\nyield.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">He said the concerted efforts of all scientists,\r\nresearchers, and extension officials are very important to boost Aman paddy\r\nyield to feed the gradually-increasing population of the country.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">As rice is a staple food of the country, its\r\nproduction needs to be enhanced, by managing &nbsp;challenges like disease and\r\nadverse impacts of climate change.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Dr Shahjahan Kabir told the meeting that BRRI has,\r\nso far, developed 41 Aman varieties, including 39 inbreeds, which are suitable\r\nfor cultivation across the country.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">“We have released seven drought-tolerant varieties,\r\nincluding one aromatic, for the Barind area,” he said; adding that some of them\r\nhave gained popularity among farmers during the last couple of years.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">He also mentioned that the conventional varieties\r\nare being replaced by modern varieties – good signs for the region, in terms of\r\nboosting yield.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 1rem; white-space: pre-line;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">More than 100 paddy-related scientists, researchers,\r\nand extension officials—from both the government and non-government entities\r\nconcerned—attended the workshop, sharing views on the issue.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p></div>', '1679414943img15.jpg', 'https://archive.dhakatribune.com/', 8, 1, NULL, NULL, 'rice,grain,aman,paddy,brri', '2018-06-03 06:02:30'),
(15, 16, '15 Tips To Make Your Roses Bloom More', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Roses are one of the most commonly sought out flowers\r\nfor their beauty, scent and overall abundance. If you are thinking of starting\r\na rose garden or if you already have one of your own and are looking for a few\r\nextra tips on how to make rose plants flower more, you are in the right place.\r\nPerry Homes has compiled a list of recommendations that will aid in making your\r\nroses bloom in quantity so you can either keep them for yourself or share them\r\nwith others. Follow these 15 tips, from feeding to pruning, to make your rose\r\ngarden really blossoms.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">1. Banana Peels</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Due to the fact that bananas contain phosphorus, using banana\r\npeels in your rose garden will help with blooming. You can chop up some banana\r\npeels and bury them beneath the rose’s leaves but away from the stem. Another\r\nway to use banana peels is to pulverize them into a blender, add water if\r\nneeded and allow it to sit for approximately 15 minutes. After the solution has\r\nbeen left to sit, you can apply it directly to the soil beneath a rose. &nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">2. Alfalfa</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Using alfalfa in your rose garden is a great way to provide an\r\nextra dose of nutrition. You can choose between alfalfa meal or pellets and add\r\nthem directly into the soil using either 1 cup for each large rose bush or ½\r\ncup for smaller bushes. Another option is to brew some alfalfa tea by soaking\r\nthe meal or pellets in water and adding it to the soil.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">3. Feed Flowers</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">At least three fertilizer applications is needed for roses that\r\nbloom throughout the growing season. The first application should be done when\r\nthe plants break out of winter, then two more in mid-June and July to keep the\r\nflowers growing. Use a balanced fertilizer and other mulches, such as compost\r\nor rotted manure, to help roses get additional nutrients. &nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">4. Water</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">All plants need some amount of water to grow. Check the soil to\r\nsee if it is moist and consider the weather conditions recently. Apply water\r\ndirectly to the soil using a soaker hose or through drip irrigation if the soil\r\nseems too dry.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">5. Regular Pruning</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">This is something that should be done in early spring and will\r\nhelp to continue to produce flowers throughout the season. First, pull off all\r\nthe leaves and use your pruning shears to trim the horizontal canes that are\r\ngrowing into the center of the plant, around, or anything crossing the plant.\r\nThis will allow an open center and decrease friction of the branches and\r\nblooms. Next, remove any branches that are diseased or dead. Cut back the\r\nvertical canes to an outward facing bud, making the cut about a half inch above\r\nthat bud at a 45-degree angle and away from the bud.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">6. Regular Inspections</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Check on your roses to catch early signs of disease outbreaks or\r\npests. This will allow for your roses to have much higher longevity. &nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">7. Mulch</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Add course, organic mulch around your roses in about a 2-3 inch\r\nlayer. The coarseness of the mulch helps to reduce disease on the leaves of the\r\nroses since it decreases the amount of water that splashes onto them.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">8. Soil</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Plant roses in a soil that allows drainage. If there is poor\r\ndrainage, it will drown your roses and allow little to no breathing room. Mix\r\norganic matter such as compost with excavated soil to use as backfill for the\r\nplanting hole. &nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">9. Site</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">The location where you plant your roses is equally as important\r\nas caring for them afterward. Make sure your roses are in an area that provides\r\nat least six hours of sun each day. If your roses are in the shade, they will\r\nbe prone to diseases and other harmful conditions. &nbsp;&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">10. Plant Reblooming\r\nRoses</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">If you want roses that continue to bloom throughout the growing\r\nseason, make sure to pick up Bright Melody, Fairy Moss and Knock Out roses.\r\nThese are a few types of roses that will more readily rebloom.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">11. Egg Shells</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Egg shells are rich in calcium. This strengthens the tissue of a\r\nrose allowing for healthier blooms. Mix in crushed up shells into potting soil\r\nand add it to your potted roses or crush the shells and sprinkle them on the\r\ntop layer of soil around the rose. The finer the shell is crushed, the faster\r\nit has the ability to release calcium into the soil. &nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">12. Coffee Grounds</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Coffee grounds contain nitrogen which helps roses. Sprinkle some\r\nto the base of the rose or add some to a compost pile to help enrich the soil.\r\nBeware of adding too much because it will, unfortunately, hurt your roses.Just\r\nremember that a little goes a long way.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">13. Insect Control</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Using a systemic pesticide like acephate does its job in\r\nprotecting the growth of your roses from mites, whiteflies, aphids and other\r\npests. If your rose bush is adjacent to a vegetable garden, organic options\r\nlike neem oil and insecticidal soap will be better.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">14. Nurse Roots</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Plants absorb nutrients and water from its roots, so do your\r\nbest to tend for them. If you are going to dig around the soil of your roses be\r\nsure to not cut or damage the roots since a damaged plant will have a high risk\r\nof dying or may have a long recovery time. &nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><strong><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">15. Classical Music</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Although this is not proven science, some gardeners truly\r\nbelieve that playing music helps plants grow from their response to the\r\nvibrations of the musical notes. &nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\"><br>\r\n</span><b><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Beautiful Elegance</span></b><b><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 2rem 0px 3.4rem; text-align: start;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Now that you have some tips to help you how to make rose plants\r\nflower more, look for a company that builds beautiful homes. At&nbsp;<a href=\"https://www.perryhomes.com/\"><span style=\"color:#003333\">Perry Homes</span></a>, we create homes with lasting\r\nelegance. Take a look at our&nbsp;<a href=\"https://www.perryhomes.com/gallery-of-homes/\"><span style=\"color:#003333\">gallery</span></a>. With homes throughout Texas, we have\r\neverything needed to offer you your forever home. &nbsp;&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p></div>', '1679414553img14.jpg', 'https://www.perryhomes.com/', 17, 1, NULL, NULL, 'rose,care,red,flowers', '2018-07-03 06:02:53'),
(16, 15, 'Growing Mango Trees: Information On Planting And Caring For A Mango Tree', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">The juicy, ripe mango fruit has a rich, tropical\r\naroma and flavor that summons thoughts of sunny climates and sultry breezes.\r\nHome gardeners can bring that taste out of a warmer-zone garden. However, how\r\ndo you grow a mango tree? Mango tree planting is suitable in zones where\r\ntemperatures do not usually dip below 40 F (4 C.). If you’re lucky enough to\r\nlive in a tropical to sub-tropical climate, take these tips for mango tree care\r\nand enjoy the fruits of your labors in just a few years.</span><br style=\"box-sizing: inherit; text-align: start;\">\r\n<br style=\"box-sizing: inherit; text-align: start;\">\r\n<b><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\"><span style=\"text-align: start;\">How Do You Grow a Mango Tree?</span></span></b><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">\r\n</span><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Mango trees (Mangifera indica) are deep-rooted\r\nplants that may become large specimens in the landscape. They are evergreen and\r\ngenerally produced off rootstocks that increase the hardiness of the plants.\r\nMango trees begin fruit production in three years and form fruit quickly.</span><br style=\"box-sizing: inherit; text-align: start;\">\r\nChoose a variety that is best suited for your zone. The plant can thrive in\r\nalmost any soil but requires well-drained soil in a site with protection from\r\ncold. Position your tree where it will receive full sun for best fruit\r\nproduction. New mango tree planting is done in late winter to early spring when\r\nthe plant is not actively growing.<br style=\"box-sizing: inherit; text-align: start;\">\r\n<br style=\"box-sizing: inherit; text-align: start;\">\r\n<b><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\"><span style=\"text-align: start;\">Mango Tree Planting</span></span></b><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">\r\n</span><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Prepare the site by digging a hole that is twice as wide\r\nand deep as the root ball. Check the drainage by filling the hole with water\r\nand watching how fast it drains. Mango trees can survive some periods of\r\nflooding, but the healthiest plants are produced where soils percolate well.\r\nPlant the young tree with the graft scar just at the soil surface.</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">You don’t need to prune the young plant, but watch\r\nfor suckers from the graft and prune them off. Young mango tree care must\r\ninclude frequent watering as the plant establishes.</span><br style=\"box-sizing: inherit; text-align: start;\">\r\n<br style=\"box-sizing: inherit; text-align: start;\">\r\n<b><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\"><span style=\"text-align: start;\">Growing Mango Trees from Seed</span></span></b><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Mango trees grow easily from seed. Get a fresh mango\r\npit and slit the hard husk. Remove the seed inside and plant it in seed starter\r\nmix in a large pot. Situating the seed with ¼-inch (.6 cm.) protruding above\r\nthe soil surface works best for growing mango trees. Keep the soil evenly moist\r\nand place the pot where temperatures remain at least 70 F. (21 C.). Sprouting\r\nmay occur as early as eight to 14 days, but may take up to three weeks. Keep in\r\nmind that your new mango tree seedling will not produce fruit for at least six\r\nyears. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:12.0pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;color:#003333\">Caring for a Mango Tree <o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Mango tree care is similar to that of any fruit\r\ntree. Water the trees deeply to saturate the long taproot. Allow the top\r\nsurface of the soil to dry to a depth of several inches before watering again.\r\nWithhold irrigation for two months prior to flowering and then resume once\r\nfruits begin to produce. Fertilize the tree with nitrogen fertilizer three\r\ntimes per year. Space the feedings and apply 1 pound (.45 kg.) per year of tree\r\ngrowth. Prune when the tree is four years old to remove any weak stems and\r\nproduce a strong scaffold of branches. Thereafter, prune only to remove broken\r\nor diseased plant material.</span><br style=\"box-sizing: inherit; text-align: start;\">\r\n<br style=\"box-sizing: inherit; text-align: start;\">\r\n<br>\r\n<span style=\"text-align: start;\"><br style=\"box-sizing: inherit;\">\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p>\r\n\r\n<span style=\"text-align: start;\"></span></div>', '1679414012img13.jpg', 'By: Bonnie L. Grant, Certified Urban Agriculturist', 15, 1, NULL, NULL, 'mango,crops,care,trees', '2018-08-03 06:03:14'),
(17, 9, 'Crop disease decimating maize in Chuadanga', '<div align=\"justify\"><p class=\"MsoNormal\"><b><span style=\"font-size:10.5pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;color:#003333\">Name Of The Disease:<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"padding: 0.3rem; opacity: 0.8; background-color: rgba(240, 255, 251, 0.616);\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Ear Rot Disease of Maize (<i>Diplodia\r\nmaydis &amp; other fungi</i>)<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:10.5pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;color:#003333\">Symptoms:<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Mocha and grain rot diseases are more common if the\r\nrainfall is high from the time of emergence of Mocha on the corn plant to the\r\nmaturity of the corn.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Affected pods are discolored, malnourished and\r\nshriveled.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:10.5pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;color:#003333\">Integrated Suppression Management:<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Cut the corn as soon as it is ripe.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Collect and burn the abandoned parts after\r\nharvesting.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Protecting maize from insect and bird infestation in\r\nthe field.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Cultivation of maize in succession rather than\r\nrepeated cultivation of the same land.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\"><br></span></p><p class=\"MsoNormal\"><b><span style=\"font-size:10.5pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;color:#003333\">Buy Vitavax Power Carboxin<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p><p class=\"MsoNormal\"><img src=\"https://i.imgur.com/XYAVT2Z.jpg\" width=\"539\"><br></p><p class=\"MsoNormal\"><b><span style=\"font-size:10.5pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;color:#003333\">Name Of The Product:<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"padding: 0.3rem; font-size: 1rem; opacity: 0.8;\"><span style=\"font-size:10.5pt;line-height:107%;font-family:&quot;Open Sans&quot;;\r\ncolor:#003333\">Vitavax Power (Carboxin 37.5% + Thiram 37.5% DS) is a broad\r\nspectrum, dual-action (systemic and contact) fungicide which controls seed and\r\nsoil-borne diseases, and also acts as a plant growth stimulant. World wide, it\r\nis a specialized seed treatment fungicide for effective control and prevention\r\nof disease present externally and within the seeds, with the increased level of\r\ndisease control.<o:p></o:p></span></p><p class=\"MsoNormal\"><b><span style=\"font-size:10.5pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;color:#003333\">How To Use<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Seed treatment with Thiram or Vitavex (0.25%) at the\r\nrate of 2.5-3.0 g per kg of seed greatly reduces the attack of maize seed rot\r\ndisease.<o:p></o:p></span></p><p class=\"MsoNormal\"><b><span style=\"font-size:10.5pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;color:#003333\">Keep In Mind<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">It is forbidden to smell, put on the body and taste.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Do not drink or smoke during use.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\"><br></span></p></div>', '1679413403img85.jpg', 'https://www.thedailystar.net/', 59, 1, NULL, NULL, 'crops,diseases,corn,vitavex', '2019-01-03 06:03:37'),
(18, 5, 'Breakthrough in fight against plant diseases', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">A global research team including scientists from La\r\nTrobe University have identified specific locations within plants\' chromosomes\r\ncapable of transferring immunity to their offspring.</span></p><o:p></o:p><p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">Led by the University\r\nof Sheffield (UK), the research team identified, for the first time, specific\r\nlocations (loci) within a plant\'s chromosomes that impart disease resistance to\r\ntheir offspring by undergoing a reversible biochemical modification known as\r\nDNA methylation, in response of pathogen attack.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">Published in the\r\njournal&nbsp;<i>eLife</i>, the research\r\nidentifies four DNA loci that control disease resistance against a common plant\r\npathogen called downy mildew. Importantly, this resistance was not associated\r\nwith any&nbsp;<a href=\"https://phys.org/tags/negative+effects/\"><span style=\"color:#003333\">negative effects</span></a>&nbsp;on\r\ngrowth or resistance against other environmental stresses.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">La Trobe University\r\nResearch Fellow Dr. Ritushree Jain said that when plants are repetitively\r\nattacked by pathogens, they develop a \'memory\' (known as priming in plants) of\r\nthis encounter which enables them to fight efficiently when attacked again.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">\"One of the\r\nmechanisms for transferring this \'memory\' to their next generation via seeds is\r\nDNA methylation,\" Dr. Jain said.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">\"It is an\r\nepigenetic phenomenon—meaning there is no change in the DNA sequence.\"<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">Dr. Jain explained the\r\npotential benefit to farmers these findings offer.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">\"Not only could\r\nthis significant discovery lead to new ways of preventing disease in important\r\ncrops, but it could also help reduce our reliance on pesticides,\" Dr. Jain\r\nsaid.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">Lead researcher\r\nProfessor Jurriaan Ton from the University of Sheffield\'s P3 Plant Production\r\nand Protection Centre said findings from the study pave the way for further\r\nresearch into how epigenetics can help to improve disease resistance in&nbsp;<a href=\"https://phys.org/tags/food+crops/\"><span style=\"color:#003333\">food crops</span></a>.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">\"We now hope to\r\nuse this study to carry out further research to understand how these epigenetic\r\nloci control so many different defence genes,\" Professor Ton said.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">\"We are also keen\r\nto participate in more translational studies, in order to find out whether\r\nepigenetics can be used to prime&nbsp;<a href=\"https://phys.org/tags/disease+resistance/\"><span style=\"color:#003333\">disease resistance</span></a>&nbsp;in crops that are\r\nvital to food supplies around the world.\"<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">Led by the University\r\nof Sheffield in the UK, the research was conducted in collaboration with La\r\nTrobe University, PSL University (Paris) and the Technical University of Munich\r\n(Germany).<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">The research paper,\r\nIdentification and characterisation of hypomethylated DNA loci controlling\r\nquantitative&nbsp;<a href=\"https://phys.org/tags/resistance/\"><span style=\"color:#003333\">resistance</span></a>&nbsp;in&nbsp;<i>Arabidopsis</i>,\r\nwas published in&nbsp;<i>eLife</i>.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p></div>', '1679403626img11.jpg', 'by La Trobe University', 165, 1, NULL, NULL, 'Breakthrough,plant,diseases', '2019-01-03 06:03:59'),
(20, 5, 'New pathogen threatens fennel yield in Italy', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">A new fennel fungal disease caused by a new genus\r\nand species—<i>Ochraceocephala foeniculi</i>, was observed for the first time\r\nin 2017 on 5% of the \"Apollo\" fennel cultivar grown in the sampled\r\nlocalities in Catania province, Italy. Now, it has spread to 2 more cultivars:\r\n\"Narciso\" and \"Pompeo\", causing crop losses of around\r\n20-30%. The new pathogen damages the fennel with necrotic lesions on the crown,\r\nroot and stem.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Fennel, a crop native in arid and semi-arid regions\r\nof southern Europe and the Mediterranean area is massively used as a vegetable,\r\nherb and seed spice in food, pharmaceutical, cosmetic and healthcare industries\r\nwith Italy taking the world-leading production. It is an important and widely\r\ncultivated crop in Sicily (southern Italy).<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Worldwide, fennel&nbsp;<a href=\"https://phys.org/tags/crops/\"><span style=\"color:#003333\">crops</span></a>&nbsp;are\r\naffected by several&nbsp;<a href=\"https://phys.org/tags/fungal+diseases/\"><span style=\"color:#003333\">fungal diseases</span></a>. In Italy, amongst soilborne\r\ndiseases, there have been reports of brown rot and wilt caused by&nbsp;<a href=\"https://doi.org/10.1094/PD-90-0110A\"><i><span style=\"color:#003333\">Phytophthora\r\nmegasperma</span></i></a>&nbsp;and crown rot caused by&nbsp;<a href=\"https://europepmc.org/article/med/18396823\"><i><span style=\"color:#003333\">Didymella\r\nglomerata</span></i></a>.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">International research group, led by Ms. Dalia\r\nAiello from the University of Catania, made the first step in handling the new\r\nfennel&nbsp;<a href=\"https://phys.org/tags/disease/\"><span style=\"color:#003333\">disease</span></a>&nbsp;by\r\nidentifying the causal agent obtained from symptomatic plants and publishing\r\nthe results of their research in the open-access journal&nbsp;<i>Mycokeys</i>.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">In order to understand the origin of the causal\r\nagent, scientists collected 30 samples during several surveys in the affected\r\nareas in Sicily, and studied the consistently grown fungal colonies from\r\nsymptomatic tissues.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><img src=\"https://i.imgur.com/wqgeETz.jpg\" width=\"539\"><br></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">\"The&nbsp;<a href=\"https://phys.org/tags/fungal+species/\"><span style=\"color:#003333\">fungal\r\nspecies</span></a>&nbsp;obtained from symptomatic tissues was identified based\r\non morphological characters and molecular phylogenetic analyses of an\r\nITS-LSU-SSU rDNA matrix, resulting in the description of the fennel pathogen as\r\na new genus and species,&nbsp;<i>Ochraceocephala foeniculi</i>,\" shares\r\nDr. Dalia Aiello.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">According to the pathogenicity tests, O. foeniculi causes\r\nsymptoms on artificially inoculated plants of the same cultivar. Preliminary\r\nevaluation of fennel germplasm, according to the susceptibility to the new\r\ndisease, shows that some cultivars (\"Narciso\", \"Apollo\" and\r\n\"Pompeo\") are more susceptible and some are less susceptible\r\n(\"Aurelio\", \"Archimede\" and \"Pegaso\"), but this\r\nis a subject yet to be confirmed by additional investigations. More studies are\r\nrequired in order to plan further effective disease management strategies.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">\"On the basis of the disease incidence and\r\nseverity observed in the field, we believe that this disease represents a\r\nserious threat to fennel crop in Sicily and may become a major problem also to\r\nother areas of fennel production if accidentally introduced,\" concludes\r\nDr. Dalia Aiello.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">v<o:p></o:p></span></p></div>', '1679402038img10.jpg', 'by Pensoft Publishers', 17, 1, NULL, NULL, 'pathogen,diseases', '2018-08-03 06:03:14'),
(21, 5, 'New study reveals use of antibiotics on crops is more widespread than previously thought', '<div align=\"justify\"><div align=\"justify\">The world is aware of the overuse of antibiotics and the development of resistance in bacterial populations. This has led to calls for greater control and monitoring of their use in both human and veterinary medicine. What is less well known is that antibiotics are routinely used in crop production, and according to new research, are being recommended far more frequently and on a much greater variety of crops than previously thought.</div><div align=\"justify\">The use of antibiotics to control plant diseases is not new; they have been used for decades on crops like apples and pears and represent an effective means of controlling some bacterial diseases. However, the extent of their use worldwide has been little studied and is largely unknown.</div><div align=\"justify\">A recent joint investigation by the FAO, OIE and the WHO into antibiotic use found that the numbers of countries that are currently monitoring the use of antibiotics in crop cultivation is very low compared to those monitoring antibiotic use in the veterinary and medical arenas. Out of the 158 countries surveyed, only 3% indicated they had any kind of regular assessment of the types and amounts of antibiotic use on crops. This contrasts strongly with countries that have monitoring systems in place for human use (26%) and animal health (23%). This lack of data on the use of antibiotics in crop-based agriculture has led many people to presume the amounts being used were negligible.</div><div align=\"justify\">The new research was an analysis of more than 436,000 records from Plantwise plant clinics in 32 countries between 2012 and 2018. It revealed that antibiotics, some of which are considered critically important for human medicine, are being recommended for use on over 100 crops, and in some cases, in copious quantities and as prophylactic treatments.</div><div align=\"justify\">The paper, published in CABI Agriculture and Bioscience, estimates that 63 tons of streptomycin and 7 tons of tetracycline (both critically important antibiotics in human medicine) are sprayed annually on the rice crop in Southeast Asia alone. In some years and in some regions, nearly 10% of rice recommendations featured an antibiotic.</div><div align=\"justify\"><img src=\"https://i.imgur.com/6wbjipn.jpg\" width=\"539\"><br></div><div align=\"justify\">Whilst antibiotics are predominantly used against bacterial diseases, an alarming proportion of recommendations are issued for antibiotics against other crop problems for which the antibiotic will have no effect.</div><div align=\"justify\">Dr. Philip Taylor, lead author of the study, said, \"There is a considerable proportion of crop advisors recommending antibiotics against insect pests—either the advisors are unaware that they will have no impact on insect pests, or they are recommending antibiotics as a preventative measure against bacterial diseases.\"</div><div align=\"justify\">The researchers found that 11 antibiotics (often blended together) are being recommended on crops grown in the Americas, Eastern Mediterranean, Southeast Asia and the Pacific Rim countries. The regional variation is considerable both in quantity and class of antibiotic, but it was noteworthy that no antibiotic recommendations were recorded from Africa, despite the large number of records from this region.</div><div align=\"justify\">Dr. Taylor added, \"It is very interesting that there are no records from Africa. You may suspect that this was due to price, yet that does not appear to be the reason.\"</div><div align=\"justify\">Although the quantities used on crops globally are comparatively small relative to medical and veterinary use, this niche does provide some unique avenues by which resistance could develop in human pathogens. It has been shown that when antibiotics are mixed with other agro chemicals, bacteria can develop resistance to the antibiotic up to 100,000 times faster. This, coupled with the consumption of raw food, may provide an avenue for the production of resistant bacteria.</div><div align=\"justify\"><img src=\"https://i.imgur.com/csqEhmx.jpg\" width=\"539\"><br></div><div align=\"justify\">Co-author Dr. Rob Reeder said, \"Further research into the scale of antibiotic use in crop protection is warranted, as the potential for interactions with other crop protection products that might promote cross-resistance or co-selection for antibiotic resistance is considerable.</div><div align=\"justify\">\"There is considerable attention paid to the medical and veterinary use of antibiotics, but there is a paucity of data on their use in global crop production. The only well-documented use of antibiotics on crops is that on top fruit in the U.S. These data appear to indicate that the use of antibiotics in crop production is more extensive than most of the literature would suggest.\"</div><div align=\"justify\">Dr. Taylor added, \"Some evidence suggests that crops are a potential vehicle for resistant bacteria to enter the human gut, and is an area where further research is needed.\" The science around the development of antibiotic resistance is still being hotly debated; those who advocate their use on crops are quick to point out that there is no proven evidence of resistance having spread from plant pathogenic bacteria to human or animal pathogens.</div><div align=\"justify\">\"It is hoped that the data presented in this paper will increase the debate regarding the use of antibiotics against crop pathogens and that crop production will be included under the one health umbrella.\"</div><div align=\"justify\"><br></div></div>', '1679401645img8.jpg', 'by CABI', 43, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(22, 8, 'Digital crop protection from disease and pest plants', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; line-height: 107%; font-family: &quot;Open Sans&quot;; color: rgb(0, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Crop diseases threaten yields in the\r\nfield. Pests and parasitic weeds cause high crop losses of up to 30 percent\r\nevery year. In the FarmerSpace project, the Fraunhofer Institute for Optronics,\r\nSystem Technologies and Image Exploitation IOSB in Ilmenau is working together\r\nwith partners to investigate the use of digital technologies for crop\r\nprotection. The aim is to detect leaf diseases and the spread of weeds at an\r\nearly stage and to initiate targeted protective measures using sensors,\r\nrobotics and data-driven solutions.</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333\">Targeted\r\ncrop protection is critical in agriculture. It ensures that plants are\r\nprotected from diseases, pests and weeds. A healthy supply of nutrients to\r\nwheat, corn and the like influences the quality of the food and prevents crop\r\nlosses. In the FarmerSpace digital experimental field, the project partners are\r\nexploring the potential of digital technologies to detect&nbsp;<a href=\"https://phys.org/tags/crop+diseases/\"><span style=\"color:#003333\">crop\r\ndiseases</span></a>&nbsp;at the right time and place in the field. The platform\r\nfor practical experiments offers players from research, practice and industry\r\nthe opportunity to test sensor and data transmission systems, radio sensor\r\nnetworks, optical and machine-supported sensors, drone technology, robotics and\r\nmachine learning methods in the fight against crop parasites. The project is\r\nbeing carried out by four partners: the institute branch Applied Systems\r\nTechnology AST of Fraunhofer IOSB-AST, the Institute for Sugar Beet Research at\r\nthe University of Göttingen, the Section of Agricultural Engineering at the\r\nUniversity of Göttingen and the Lower Saxony Chamber of Agriculture. The German\r\nFederal Ministry of Food and Agriculture BMEL is funding the project, which\r\nwill run from February 2020 to February 2023. The focus is on early detection\r\nand control of weeds and leaf diseases in sugar beet and spring wheat, which\r\nwere sown specifically for research purposes in a trial field near Göttingen.\r\nWhile weed management is the focus in the spring, work in the summer\r\nconcentrates on leaf diseases.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333\">&nbsp;</span></b></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333\">Digital\r\nsurvey of the field</span></b><span style=\"font-size:14.0pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333\">As a first\r\nstep, the research team at Fraunhofer IOSB-AST created a 3D model of the field,\r\nwhich serves as a reference model for the project partners. The surface of the\r\nfive-hectare experimental field was surveyed using a laser scanner and GPS\r\npositioning system. This took two days, while the survey using drone technology\r\ntook only 20 minutes. \"However, the time factor alone is not decisive.\r\nPrimarily, we want to find out which method provides more precise geodata. For\r\nthis purpose, we also used camera recordings of robots driving over the field.\r\nThe evaluation of the results, however, is not yet available,\" explains\r\nAndré Weiskopf, a scientist at Fraunhofer IOSB-AST. The evaluation is intended\r\nto provide information not only on accuracy, but also on practical criteria\r\nsuch as measurement, processing and evaluation time, area capacity and\r\nassociated costs.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333\">The goal\r\nof digitally surveying a field is, on the one hand, to obtain more precise\r\ninformation about the density of the crop stand. On the other hand, it is\r\nimportant to find out when and where a disease infects the crop through\r\nviruses, fungi, aphids or other pests, and which measure the farmer can best\r\nuse to control it. The key, then, is to apply targeted crop protection measures\r\nat the right time and limit them locally to the field area where they are\r\nneeded. This can help reduce the use of crop protection products, thus reducing\r\ncosts and time. \"For example, if the weevil only attacks ten square meters\r\nof the entire field, the farmer can disregard the remaining area. In this way,\r\nthe groundwater is less polluted,\" continues Weiskopf. For the Bremen\r\nWater Protection Ordinance stipulates that minimum distances must be maintained\r\nfrom flowing bodies of water. Farmers are not allowed to spray pesticides\r\neverywhere. \"The terrain angle is an important parameter related to\r\nthis,\" explains Norbert Fränzel, a colleague of Weiskopf at Fraunhofer\r\nIOSB-AST. \"The previous terrain maps do not provide such accurate values\r\nin this regard. We hope to obtain more precise data and terrain models by\r\ndigitizing the field.\"<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333\">Sensors\r\ninstalled in the field could additionally support making precise predictions\r\nregarding pest infestation, detecting changes in time and thus enabling early\r\nintervention. Microclimate sensors record soil temperature and soil moisture\r\nand provide information on disease infection conditions.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%;\r\nfont-family:&quot;Open Sans&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333\">Evaluation\r\nof market-available digital solutions for practice-oriented use<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333\">Comparing\r\nmethods for digital terrain modeling provides&nbsp;<a href=\"https://phys.org/tags/decision+support/\"><span style=\"color:#003333\">decision\r\nsupport</span></a>&nbsp;for farmers when purchasing new technologies and selecting\r\nservices. Fraunhofer IOSB-AST, for example, is investigating a wide variety of\r\nradio technology and radio sensors to determine their suitability for economic\r\nuse and is flanking the project with its expertise in this field of\r\napplication. \"We derive a recommendation for action as to which technology\r\nis suitable for which problem and inform the farmer about the type and number\r\nof sensors and measurements required,\" says Fränzel.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333\">In\r\naddition, machine learning methods create the prerequisite for evaluating the\r\nvariety of data collected. In a common data room, all field-relevant data is to\r\nbe recorded synchronously in terms of time and space, so that models can\r\nsubsequently be trained that provide forecasts for further action required.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p></div>', '1679401169img5.jpg', 'by Martin Käßler, Fraunhofer-Gesellschaft', 78, 1, NULL, NULL, 'techonology,protection,pest', '2019-01-03 06:03:59'),
(23, 13, 'New tools needed to prevent plant disease pandemics', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">Plant diseases don\'t stop at a nation\'s borders and\r\nmiles of oceans don\'t prevent their spread, either. That\'s why plant disease\r\nsurveillance, improved plant disease detection systems and predictive plant\r\ndisease modeling—integrated at the global scale—are necessary to mitigate\r\nfuture plant disease outbreaks and protect the global food supply, according to\r\na team of researchers in a new commentary published in&nbsp;<i>Proceedings of the National Academy of Sciences.</i></span></p><p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; text-align: left;\"><br></span></p><p class=\"MsoNormal\"><font color=\"#003333\"><span style=\"font-size: 10.5pt; text-align: left;\">The idea is to \"detect these plant&nbsp;</span><a href=\"https://phys.org/tags/disease/\" style=\"font-size: 10.5pt; text-align: left; background-color: rgb(255, 255, 255);\">disease</a><span style=\"font-size: 10.5pt; text-align: left;\">&nbsp;outbreak sources early and stop\r\nthe spread before it becomes a pandemic,\" says Jean Ristaino, William Neal\r\nReynolds Distinguished Professor of Plant Pathology at North Carolina State\r\nUniversity and the paper\'s corresponding author. Once an epidemic occurs it is\r\ndifficult to control, Ristaino said, likening the effort to the one undertaken\r\nto stop the spread of COVID-19.</span></font><br></p><p style=\"margin-top: 0in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></p><p></p><p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">While some diseases are\r\nalready under some sort of global surveillance—Ristaino mentioned wheat rust\r\nand late blight, an important pathogen that affects potatoes and caused the\r\nIrish famine—other&nbsp;<a href=\"https://phys.org/tags/crop+diseases/\"><span style=\"color:#003333\">crop diseases</span></a>&nbsp;are\r\nnot routinely monitored.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">\"There are a few\r\nexisting surveillance networks, but they need to be connected and funded by\r\nintergovernmental agencies and expanded to global surveillance systems,\"\r\nRistaino said. \"We can improve disease monitoring using electronic sensors\r\nthat can help rapidly detect and then track emerging&nbsp;<a href=\"https://phys.org/tags/plant+pathogens/\"><span style=\"color:#003333\">plant pathogens</span></a>.\"<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">Ristaino said that the\r\nefforts from a wide range of scholars—so-called convergence science—are needed\r\nto prevent plant disease pandemics. That means economists, engineers, crop\r\nscientists, crop disease specialists, geneticists, geographers, data analysts,\r\nstatisticians and others working together to protect&nbsp;<a href=\"https://phys.org/tags/crops/\"><span style=\"color:#003333\">crops</span></a>, the farmers growing crops and the\r\npeople fed by those crops. The GRIP4PSI Plant Science Initiative is helping to\r\nfund such a team at NC State.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">Research is underway to\r\nmodel the risk of plant pathogen spread and help predict and then prevent\r\noutbreaks, the researchers report in the paper. Modeling and forecasting\r\ndisease spread can help mobilize mitigation strategies more precisely to stop\r\npandemics.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">Global plant disease\r\noutbreaks are increasing in frequency and threaten the&nbsp;<a href=\"https://phys.org/tags/global+food+supply/\"><span style=\"color:#003333\">global food supply</span></a>, the researchers say. Mean\r\nlosses to major food crops such as wheat, rice and maize ranged from 21% to 30%\r\ndue to plant pests and diseases, according to a paper published in 2019. Or\r\ntake the case of bananas, specifically the Cavendish variety, which has no\r\nresistance to a specific pathogen called Fusarium odoratissimum Tropical race\r\n4, which causes Panama disease of banana. That pathogen spread rapidly from\r\nAsia to Africa, the Middle East and recently into South America, where it\r\naffects Cavendish bananas—the main type of banana grown in the Americas for\r\nexport.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">Climate change will\r\nlikely exacerbate these outbreaks, Ristaino said. In Africa, for example,\r\nclimate change and drought in Saharan Africa affects the population and range\r\nof locusts, which devastate crops further south in sub-Saharan Africa. Climate\r\ndata can help drive disease forecasting and spread models.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">\"More frequent\r\nrainfall can allow airborne plant&nbsp;<a href=\"https://phys.org/tags/pathogens/\"><span style=\"color:#003333\">pathogens</span></a>&nbsp;to spread and fungal spores can\r\nmove with hurricanes, which is how soybean rust came to North America from\r\nSouth America—via storms,\" Ristaino, who also directs NC State\'s faculty\r\ncluster on emerging plant disease and global food security, said. \"There\r\nare also cases of early emergence, when pathogens emerge earlier in the growing\r\nseason than usual due to warmer springs.\"<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">Further, the global\r\nnature of the food trade is driving some plant disease pandemics. The emergence\r\nof new harmful plant pathogens adds other risks to the food supply, which is\r\nalready strained by growing world populations.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 1.75rem;\"><span style=\"font-size:10.5pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;;color:#003333\">\"There is a need\r\nto link human global health and plant global health researchers to work\r\ntogether,\" Ristaino said. \"Food security and livelihoods are linked\r\nto agriculture and human health is linked to the&nbsp;<a href=\"https://phys.org/tags/food/\"><span style=\"color:#003333\">food</span></a>&nbsp;we consume.\"<o:p></o:p></span></p><p style=\"margin-top: 0in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333\">&nbsp;</span></p></div>', '1679400038img4.jpg', 'https://phys.org/', 14, 1, NULL, NULL, 'cash,crops,diseases', '2018-08-03 06:03:14'),
(24, 9, 'Winter Wheat Remains In Worse Condition Than Last Year', '<div align=\"justify\"><p class=\"MsoNormal\" style=\"margin-bottom: 16.45pt; line-height: normal;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#003333\">The United States Department of Agriculture\r\nreleased its 34th Crop Progress report of the growing season Monday afternoon.\r\nThese reports run weekly through the end of November and look at the progress\r\nand condition of various crops on a national and state-by-state scale.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 6pt; line-height: 14.4pt;\"><b><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333;text-transform:uppercase\">WHEAT<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 16.45pt; line-height: normal;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#003333\">This week, USDA reports 87% of winter wheat\r\nhas emerged, slightly ahead of the five-year average of 86%.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 16.45pt; line-height: normal;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#003333\">Winter wheat condition is rated 32%\r\ngood/excellent, the same rating as last week. Thirty-five percent is rated\r\nfair.&nbsp;Thirty-three percent is rated poor/very poor, up 1% from last week.\r\nLast year at this time 44% was rated good/excellent.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 6pt; line-height: 14.4pt;\"><b><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333;text-transform:uppercase\">TOP\r\nSOIL MOISTURE&nbsp;<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 16.45pt; line-height: normal;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#003333\">According to USDA, 53% of the top soil in the\r\n48 continental states is short or very short of moisture. This is down from 54%\r\nthe week before.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 6pt; line-height: 14.4pt;\"><b><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#003333;text-transform:uppercase\">CORN<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 16.45pt; line-height: normal;\"><span style=\"font-size:10.5pt;font-family:&quot;Open Sans&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#003333\">As of Nov. 20, 96% of the corn is harvested,\r\nahead of the&nbsp;five-year average of 90%.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 16.45pt; line-height: normal;\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">In the top 18 growing corn states, corn\r\nharvest is over 90% complete in every state besides Michigan, Pennsylvania, and\r\nWisconsin.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 16.45pt; line-height: normal;\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">About the report:&nbsp;Crop progress and condition estimates are\r\nbased on survey data collected each week from early April through the end of\r\nNovember, according to USDA. The non-probability crop progress and condition\r\nsurveys include input from approximately 3,600 respondents whose occupations\r\nprovide them opportunities to make visual observations and frequently bring\r\nthem in contact with farmers in their counties. Most respondents complete the\r\nquestionnaire on Friday or early Monday morning and submit them to the National\r\nAgricultural Statistics Service (NASS) field offices in their states by mail,\r\ntelephone, fax, email, or through a secured internet website. A small number of\r\nreports are completed on Thursday, Saturday, and Sunday. Regardless of when\r\nquestionnaires are completed, respondents are asked to report for the entire\r\nweek ending on Sunday, according to the Crop Progress Report.</span></p><p class=\"MsoNormal\" style=\"margin-bottom:16.45pt;line-height:normal\"><span style=\"font-size:14.5pt;font-family:&quot;Georgia&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#003333\">\r\n&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"color:#003333\">&nbsp;</span></p></div><br>', '1679398942img3.jpg', 'https://www.tbsnews.net/', 40, 1, NULL, NULL, 'grain,diseases,wheat,crops,higher', '2019-01-03 06:03:37'),
(25, 9, 'High-yielding varieties 32 lakh tonnes by FY25', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;line-height:107%;font-family:\r\n&quot;Open Sans&quot;;color:#003333;background:#FEFEFE\">Annual rice production can\r\nincrease another 32.36 lakh tonnes by the fiscal 2024-25, if high-yielding and\r\nhybrid varieties of paddy can be used to replace conventional varieties, such\r\nas Boro, Aman, and Aush being grown now.</span></p><p class=\"MsoNormal\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt;\">\"If\r\nBRRI-28, BRRI-29 paddy, which have been cultivated for more than two decades,\r\nare replaced with high-yielding varieties like BRRI-89, BRRI-92, BRRI hybrid-5,\r\nproductivity will increase from 4 tonnes per hectare to 4.6 tonnes by\r\nFY25,\" said Habibur Rahman Chowdhury, director Field Service Wing of\r\nDepartment of Agricultural Extension (DAE), at a workshop yesterday.</span></p></div><p align=\"justify\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; background-color: rgb(254, 254, 254); text-align: left;\">Similarly, the\r\nproductivity of Aman paddy per hectare can increase from 2.95 tonnes to 3.44\r\ntonnes simply by changing the varieties grown. This would increase total annual\r\nAman production another 14.63 lakh tonnes. Doing the same in the Aush season,\r\npaddy output can increase 3.62 lakh tonnes, said Habibur Rahman Chowdhury, in a\r\npaper presented at the programme.</span><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\"><img src=\"https://i.imgur.com/y7k5L4q.jpg\" width=\"539\"><p class=\"rtejustify\" style=\"background: rgb(254, 254, 254);\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\"><br></span></p><p class=\"rtejustify\" style=\"background: rgb(254, 254, 254);\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">Bangladesh Rice Research Institute (BRRI) organised the\r\nprogramme on \"Inclusion of oilseeds in conventional crop distribution\r\nsystems and increasing production of high-yielding varieties of paddy\r\ncrops\", at the Krishibid Institution Bangladesh (KIB) auditorium, in\r\nassociation with the Department of Agricultural Extension (DAE).</span></p>\r\n\r\n<p class=\"rtejustify\" style=\"background: rgb(254, 254, 254);\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">According to the\r\nBangladesh Bureau of Statistics, the country produced 3.76 crore tonnes of rice\r\nin FY21.</span><br></p><p class=\"rtejustify\" style=\"background: rgb(254, 254, 254);\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">At the\r\nprogramme, Dr Md Ibrahim, principal scientific officer of BRRI, said, \"In\r\norder to increase paddy production, first we have to try replacing the\r\nconventional varieties with high-yielding varieties. We also have to develop\r\nour production system, bring unused land under cultivation, and change\r\nconventional crop distribution to increase production.\"</span><br></p><p class=\"rtejustify\" style=\"background: rgb(254, 254, 254);\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">\"We\r\nhave to research how to shorten crop cycles, and must discover crops that can\r\nbe cultivated alongside another, and between two crops. Adopting such practices\r\nshould be promoted among farmers across the country,\" he added.</span><br></p><p class=\"rtejustify\" style=\"background: rgb(254, 254, 254);\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">Agriculturalists\r\nattending the programme also focused on increasing the production of various\r\noilseed crops including mustard, groundnut, sunflower, sesame, and soybean.</span><br></p><p class=\"rtejustify\" style=\"background: rgb(254, 254, 254);\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">Agriculture\r\nMinister Dr Muhammad Abdur Razzaque said, \"We have good varieties of\r\nmustard, but we still spend $2 billion every year to import other edible oil.\r\nIt takes 7-10 years to popularise a new variety at the ground level. We have to\r\nget out of this situation and better varieties of mustard must reach the fields\r\nquickly.\"</span><br></p><p class=\"rtejustify\" style=\"background: rgb(254, 254, 254);\"><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">He\r\nsaid, \"Currently, 90% of the demand for edible oil has to be met by\r\nimports. We want to bring it down to 40-50%.\"</span><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">Regarding the\r\nincrease in the price of rice, the agriculture minister said, \"The price\r\nof rice in the country has definitely increased. When the price of wheat\r\nincreases, people eat more rice. Consequently, the price of rice increases.</span><span style=\"color: rgb(0, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 10.5pt; text-align: left;\">\"Besides,\r\nwe also have to feed the Rohingyas, while Covid-19 and the Russia-Ukraine war\r\nare also putting pressure on the economy. People are suffering due to the price\r\nincrease of rice, but there is no shortage of food in the country.\"</span></p>\r\n\r\n<p class=\"rtejustify\" style=\"background: rgb(254, 254, 254);\"><span style=\"font-size:15.0pt;font-family:&quot;FF Meta Serif Pro&quot;,serif;color:black\">&nbsp;</span></p>\r\n\r\n<pubguru data-pg-ad=\"TBS-LB-SND-NewsEnd\" class=\"pg-loaded\" id=\"pg-ad-nv1mvtfi\" data-google-query-id=\"CNqF9vLw7P0CFceVZgId7W4JCQ\" style=\"box-sizing: inherit; outline: none;\"></pubguru></h3>', '1679398142img1.jpg', 'https://www.tbsnews.net/bangladesh/high-yielding-varieties-can-boost-rise-output-32-lakh-tonnes-fy25-513266', 55, 1, NULL, NULL, 'grain,rice,crops,diseases', '2019-01-03 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(4, 'Chemical Research', 'chemical_research'),
(5, 'Agriculture', 'agriculture'),
(6, 'Mechanical', 'mechanical'),
(8, 'Technology', 'technology'),
(9, 'Grain Crops', 'Grain-Crops'),
(10, 'Fiber Crops', 'Fiber-Crops'),
(11, 'Pulse Crops', 'Pulse-Crops'),
(12, 'Oil Crops', 'Oil-Crops'),
(13, 'Cash Crops', 'Cash-Crops'),
(14, 'Vegetable Crops', 'Vegetable-Crops'),
(15, 'Fruit Crops', 'Fruit-Crops'),
(16, 'Flower Crops', 'Flower-Crops'),
(17, 'Spice Crops', 'Spice-Crops'),
(18, 'Spring Crops', 'Spring-Crops');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`) VALUES
(4, 'Electronic', 'electric', 0, '1557807287light.png', 1, '1568709131f6.jpg'),
(8, 'Plant Pot', 'plant-pot', 0, '1679435338flower-pot.png', 1, '1679434478images.jpg'),
(11, 'Soil', 'soil', 0, '1679435836604147.png', 1, '1679433716soil_PNG44.png'),
(20, 'Seeds', 'seeds', 1, '16794361878471080.png', 1, '1676094684tsu.png'),
(21, 'Fertilizer', 'fertilizer', 1, '1679436440f5cc738c.png', 1, '1676095047downlassdasdoad.png'),
(22, 'Pesticide', 'pesticide', 1, '16794367223812820-removebg-preview.png', 1, '1676095202pestisides-1.png'),
(23, 'Machinery', 'machinery', 1, '16794374892194813-removebg-preview.png', 1, '1676095416machinery2.png'),
(24, 'Animal feed', 'animal-feed', 1, '1676095600Animal.png', 1, '1676095600Animal-2.png'),
(25, 'Tools & agro-electronics', 'tools-and-agro-electronics', 1, '16794373681835211-removebg-preview.png', 1, '1676095798Circle-icons-tools.svg.png'),
(26, 'Irrigation', 'irrigation', 1, '16794377099997760-removebg-preview.png', 1, '1676095918irrigation2.png');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `subject`, `sent_user`, `recieved_user`, `message`, `created_at`, `updated_at`) VALUES
(1, 'likhon', 30, 30, '.l;;', '2023-03-21 17:24:55', '2023-03-21 17:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 1306, 0, NULL),
(4, 'browser', 'Linux', 237, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 1492, 0, NULL),
(6, 'browser', 'Windows 7', 421, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 541, 0, NULL),
(9, 'referral', 'www.google.com', 14, 0, NULL),
(10, 'browser', 'Android', 398, 0, NULL),
(11, 'browser', 'Mac OS X', 539, 0, NULL),
(12, 'referral', 'l.facebook.com', 1, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 1, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 9, 0, NULL),
(18, 'browser', 'iPhone', 10, 0, NULL),
(19, 'referral', 'agrodevbd.com', 200, 0, NULL),
(20, 'referral', 'www.bing.com', 2, 0, NULL),
(21, 'browser', 'Windows Vista', 6, 0, NULL),
(22, 'referral', 'www.agrodevbd.com', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20'),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '665', 1, 1, '2019-05-23', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 0),
(4, 'BDT', '৳', 85, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency` blob DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_value` double DEFAULT 0,
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `currency`, `currency_code`, `amount`, `currency_value`, `method`, `txnid`, `flutter_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 22, 0x5224, 'BRL', 2.4875621890547, 4.02, 'MercadoPago', '1235324161', NULL, 1, '2021-04-01 05:00:42', '2021-04-01 05:00:42'),
(2, 13, 0x24, 'USD', 10, 1, 'Molly Payment', 'tr_g3Kc3sHWwb', NULL, 1, '2021-04-03 03:00:17', '2021-04-03 03:00:17'),
(3, 13, 0xe282a6, 'NGN', 0.02747864222533, 363.919, 'Paystack', '245249284', NULL, 1, '2021-04-03 03:01:03', '2021-04-03 03:01:03'),
(4, 13, 0x24, 'USD', 10, 1, 'Flutterwave', NULL, 'i16r1617440896', 0, '2021-04-03 03:08:16', '2021-04-03 03:08:16'),
(5, 13, 0x24, 'USD', 10, 1, 'Flutterwave', '2004551', 'Niim1617441161', 1, '2021-04-03 03:12:41', '2021-04-03 03:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) DEFAULT NULL,
  `email_subject` mediumtext DEFAULT NULL,
  `email_body` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Commerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1),
(6, 'wallet_deposit', 'Balance Added to Your Account.', '<p>Hello {customer_name},<br>${deposit_amount} has been deposited in your account. Your current balance is ${wallet_balance}</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `details` text NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'Right my front it wound cause fully', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(3, 'Man particular insensible celebrated', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(4, 'Civilly why how end viewing related', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(5, 'Six started far placing saw respect', '<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: center;\"><br></div></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `featured_banners`
--

CREATE TABLE `featured_banners` (
  `id` int(191) NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_links`
--

CREATE TABLE `featured_links` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(200, 186, '167609770661Hi5eG46iL.jpg'),
(201, 187, '1676098031248864a3b98bd1d7c77ec6e7f01e0438.jpg'),
(202, 188, '167610290865d9a153980f154375ea91db4416710f.jpg'),
(203, 189, '1676103339ttomato.jfif'),
(204, 190, '1676105079potatoseeds.jfif'),
(206, 191, '1676105762hbSv4z2M.jpg'),
(207, 192, '1676105983brinjal.jpg'),
(208, 193, '1676106712brinjall.jpg'),
(209, 194, '1676125909Capsicum-Yellow-F1-Hybrid_sq.jpg'),
(210, 195, '1676126295Mag-Sulph-500g.png'),
(211, 196, '1676126646RootHormoneForPlantIndianCuttingAid.jpg'),
(212, 197, '1676127108ChaffCutterMachine-3HPMotor-AgroMachineries-9ZT-0.6T.jpg'),
(213, 198, '16761274815f6cbe0dc4049200115cb697.jpg'),
(214, 199, '1676127725download.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `header_email` text DEFAULT NULL,
  `header_phone` text DEFAULT NULL,
  `footer` text NOT NULL,
  `copyright` text NOT NULL,
  `colors` varchar(191) DEFAULT NULL,
  `loader` varchar(191) NOT NULL,
  `admin_loader` varchar(191) DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `map_key` text DEFAULT NULL,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext DEFAULT NULL,
  `is_contact` tinyint(1) NOT NULL DEFAULT 0,
  `is_faq` tinyint(1) NOT NULL DEFAULT 0,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_check` tinyint(1) NOT NULL DEFAULT 0,
  `cod_check` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_key` text DEFAULT NULL,
  `stripe_secret` text DEFAULT NULL,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `mail_engine` varchar(191) DEFAULT NULL,
  `smtp_host` varchar(191) DEFAULT NULL,
  `smtp_port` varchar(191) DEFAULT NULL,
  `smtp_user` varchar(191) DEFAULT NULL,
  `smtp_pass` varchar(191) DEFAULT NULL,
  `from_email` varchar(191) DEFAULT NULL,
  `from_name` varchar(191) DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `is_comment` tinyint(1) NOT NULL DEFAULT 1,
  `is_currency` tinyint(1) NOT NULL DEFAULT 1,
  `add_cart` text DEFAULT NULL,
  `out_stock` text DEFAULT NULL,
  `add_wish` text DEFAULT NULL,
  `already_wish` text DEFAULT NULL,
  `wish_remove` text DEFAULT NULL,
  `add_compare` text DEFAULT NULL,
  `already_compare` text DEFAULT NULL,
  `compare_remove` text DEFAULT NULL,
  `color_change` text DEFAULT NULL,
  `coupon_found` text DEFAULT NULL,
  `no_coupon` text DEFAULT NULL,
  `already_coupon` text DEFAULT NULL,
  `order_title` text DEFAULT NULL,
  `order_text` text DEFAULT NULL,
  `is_affilate` tinyint(1) NOT NULL DEFAULT 1,
  `affilate_charge` int(100) NOT NULL DEFAULT 0,
  `affilate_banner` text DEFAULT NULL,
  `already_cart` text DEFAULT NULL,
  `fixed_commission` double NOT NULL DEFAULT 0,
  `percentage_commission` double NOT NULL DEFAULT 0,
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT 0,
  `reg_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `cod_text` text DEFAULT NULL,
  `paypal_text` text DEFAULT NULL,
  `stripe_text` text DEFAULT NULL,
  `header_color` varchar(191) DEFAULT NULL,
  `footer_color` varchar(191) DEFAULT NULL,
  `copyright_color` varchar(191) DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `menu_color` varchar(191) DEFAULT NULL,
  `menu_hover_color` varchar(191) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_key` varchar(191) DEFAULT NULL,
  `instamojo_token` varchar(191) DEFAULT NULL,
  `instamojo_text` text DEFAULT NULL,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT 0,
  `is_paystack` tinyint(1) NOT NULL DEFAULT 0,
  `paystack_key` text DEFAULT NULL,
  `paystack_email` text DEFAULT NULL,
  `paystack_text` text DEFAULT NULL,
  `wholesell` int(191) NOT NULL DEFAULT 0,
  `is_capcha` tinyint(1) NOT NULL DEFAULT 0,
  `error_banner` varchar(191) DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT 0,
  `popup_title` text DEFAULT NULL,
  `popup_text` text DEFAULT NULL,
  `popup_background` text DEFAULT NULL,
  `invoice_logo` varchar(191) DEFAULT NULL,
  `user_image` varchar(191) DEFAULT NULL,
  `vendor_color` varchar(191) DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT 0,
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT 0,
  `paypal_client_id` text DEFAULT NULL,
  `paypal_client_secret` text DEFAULT NULL,
  `paypal_sandbox_check` tinyint(2) DEFAULT 2,
  `footer_logo` text DEFAULT NULL,
  `email_encryption` varchar(191) DEFAULT NULL,
  `paytm_merchant` text DEFAULT NULL,
  `paytm_secret` text DEFAULT NULL,
  `paytm_website` text DEFAULT NULL,
  `paytm_industry` text DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 1,
  `paytm_text` text DEFAULT NULL,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT 0,
  `molly_key` text DEFAULT NULL,
  `molly_text` text DEFAULT NULL,
  `is_razorpay` int(11) NOT NULL DEFAULT 1,
  `razorpay_key` text DEFAULT NULL,
  `razorpay_secret` text DEFAULT NULL,
  `razorpay_text` text DEFAULT NULL,
  `show_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_maintain` tinyint(1) NOT NULL DEFAULT 0,
  `maintain_text` text DEFAULT NULL,
  `is_authorize` tinyint(4) NOT NULL,
  `authorize_login_id` text NOT NULL,
  `authorize_txn_key` text NOT NULL,
  `authorize_text` text NOT NULL,
  `authorize_mode` enum('PRODUCTION','SANDBOX') NOT NULL,
  `is_mercado` tinyint(4) NOT NULL,
  `mercado_token` text NOT NULL,
  `mercado_publish_key` varchar(255) DEFAULT NULL,
  `mercado_text` text NOT NULL,
  `mercadopago_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `is_buy_now` tinyint(4) NOT NULL,
  `is_flutter` tinyint(4) NOT NULL DEFAULT 1,
  `flutter_public_key` text DEFAULT NULL,
  `flutter_text` text DEFAULT NULL,
  `flutter_secret` text DEFAULT NULL,
  `is_twocheckout` tinyint(1) NOT NULL DEFAULT 1,
  `twocheckout_private_key` text DEFAULT NULL,
  `twocheckout_seller_id` text DEFAULT NULL,
  `twocheckout_public_key` text DEFAULT NULL,
  `twocheckout_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `twocheckout_text` text DEFAULT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT 1,
  `ssl_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `ssl_store_id` text DEFAULT NULL,
  `ssl_store_password` text DEFAULT NULL,
  `ssl_text` text DEFAULT NULL,
  `is_voguepay` tinyint(1) NOT NULL DEFAULT 1,
  `vougepay_merchant_id` text DEFAULT NULL,
  `vougepay_developer_code` text DEFAULT NULL,
  `voguepay_text` text DEFAULT NULL,
  `version` varchar(40) DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT 1,
  `decimal_separator` varchar(191) DEFAULT NULL,
  `thousand_separator` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `mail_engine`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_client_id`, `paypal_client_secret`, `paypal_sandbox_check`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`, `is_authorize`, `authorize_login_id`, `authorize_txn_key`, `authorize_text`, `authorize_mode`, `is_mercado`, `mercado_token`, `mercado_publish_key`, `mercado_text`, `mercadopago_sandbox_check`, `is_buy_now`, `is_flutter`, `flutter_public_key`, `flutter_text`, `flutter_secret`, `is_twocheckout`, `twocheckout_private_key`, `twocheckout_seller_id`, `twocheckout_public_key`, `twocheckout_sandbox_check`, `twocheckout_text`, `is_ssl`, `ssl_sandbox_check`, `ssl_store_id`, `ssl_store_password`, `ssl_text`, `is_voguepay`, `vougepay_merchant_id`, `vougepay_developer_code`, `voguepay_text`, `version`, `affilate_product`, `decimal_separator`, `thousand_separator`) VALUES
(1, '1675616439logo3.png', '1675616089logo3.png', 'Agro Development Technology', 'Info@example.com', '0123 456789', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae', 'COPYRIGHT © 2023. All Rights Reserved By <a href=\"http://agrodevbd.com\" title=\"\" target=\"\">Agrodevbd</a>', '#007045', '1679428500logo.gif', '1564224329loading3.gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 1, 1, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 0, 5, 5, 0, 5, 'smtp', NULL, NULL, NULL, NULL, 'geniustest11@gmail.com', 'GeniusTest', 1, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 0, 8, '1679430119WelcomeToAgroProduct.png', 'Already Added To Cart', 5, 5, 1, 1, 1, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#007045', '#02020c', 0, '#ff5500', '#02020c', 0, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 1, 1, 1, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 1, '1566878455404.png', 1, '.', '.', '1679504500WelcomeT.png', '1675616598logo3.png', '16794297704139981.png', '#666666', 1, 1, 1, 'AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi', 'EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE', 1, '1675616604logo3.png', NULL, 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 1, 'Pay via your Paytm account.', 'sandbox', 1, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 1, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', 1, '76zu9VgUSxrJ', '2Vj62a6skSrP5U3X', 'Pay Via Authorize.Net', 'SANDBOX', 1, 'TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482', 'TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8', 'Pay Via MarcadoPago', 1, 1, 1, 'FLWPUBK_TEST-a34940f2f87746abbdd8c117caee81cf-X', 'Pay via your Flutter Wave account.', 'FLWSECK_TEST-1cb427c96e0b1e6772a04504be3638bd-X', 1, '9668BB2D-C246-4175-8F5B-CB72F655097B', '901417869', '2C2879C4-9F81-47D5-89F3-863F4CF0E7A3', 1, 'Pay Via 2Checkout', 1, 1, 'geniu5e1b00621f81e', 'geniu5e1b00621f81e@ssl', 'Pay Via SSLCommerz', 1, 'demo', '5a61be72ab323', 'Pay Via Voguepay', '4.1', 1, '.', '.');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(11, 1, 'English', '1579775344B7uQhhvr.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `message`, `sent_user`, `recieved_user`, `created_at`, `updated_at`) VALUES
(1, 1, '.l;;', 30, NULL, '2023-03-21 17:24:55', '2023-03-21 17:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(7, NULL, 29, NULL, NULL, NULL, 1, '2023-02-15 05:35:08', '2023-03-21 16:14:31'),
(8, NULL, 30, NULL, NULL, NULL, 1, '2023-03-16 19:17:52', '2023-03-21 16:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT 0,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT 0,
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT 0,
  `vendor_packing_id` int(191) NOT NULL DEFAULT 0,
  `wallet_price` double NOT NULL DEFAULT 0,
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_discount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Our Mission</font></h2><p>The mission of our project is to promote sustainable agriculture by providing farmers in Bangladesh with effective and environmentally friendly solutions for managing crop diseases. We aim to reduce the losses caused by diseases and increase the productivity of crops, thereby contributing to food security and the economic development of the country.<br></p><p>To achieve our mission, we will focus on promoting research and technology expansion related to crop diseases and its suppression management. We will encourage the use of integrated pest management strategies that involve the use of natural predators, resistant crop varieties, and other non-chemical approaches to control pests and diseases. Our project will also provide farmers with training and education on best practices for disease management, including the proper use of pesticides, as well as information on the potential risks associated with pesticide use.<br></p><p>We will work closely with farmers, agricultural experts, and other stakeholders in the agricultural sector to develop and disseminate updated technologies and knowledge related to crop disease management. Our project will also strive to raise awareness about the importance of sustainable agriculture practices and promote the adoption of eco-friendly approaches to crop disease control.<br></p><p>By fulfilling our mission, we aim to contribute to the development of a sustainable and resilient agricultural system in Bangladesh that supports the livelihoods of farmers and ensures the availability of safe and nutritious food for the country\'s 160 million people.<br></p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Our Vision</font></h2><p>The vision of our project is to improve crop production in Bangladesh by reducing the impact of crop diseases on the agricultural sector. Our goal is to develop and implement environmentally friendly and sustainable strategies for disease control in crops, through the use of modern technology and research. We aim to reduce the annual loss of crops due to diseases from 10 to 15 percent to a minimum level, to ensure food security for the country\'s 160 million people, and to support the economic development of Bangladesh.<br></p><p>Our project will focus on promoting the use of integrated pest management techniques that involve the use of natural enemies, resistant cultivars, and cultural practices to control crop diseases. We will work closely with farmers and agriculturists to develop an effective disease management plan that takes into account their specific needs and concerns. We will also educate farmers on the importance of using the right pesticides, in the right amount and at the right time, to reduce the negative impact on the environment and human health.</p><p>Our project will provide updated information on the latest research and technologies related to crop disease management, through a user-friendly website accessible to all involved in agriculture. With the implementation of our project, we hope to increase crop yields, reduce production costs, and improve the overall health of the agricultural sector in Bangladesh.</p><div><br></div></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><br></h2></div>', NULL, NULL, 1, 1),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 0),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) NOT NULL,
  `contact_email` varchar(191) NOT NULL,
  `contact_title` text DEFAULT NULL,
  `contact_text` text DEFAULT NULL,
  `side_title` text DEFAULT NULL,
  `side_text` text DEFAULT NULL,
  `street` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `fax` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `site` text DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 1,
  `service` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `small_banner` tinyint(1) NOT NULL DEFAULT 1,
  `best` tinyint(1) NOT NULL DEFAULT 1,
  `top_rated` tinyint(1) NOT NULL DEFAULT 1,
  `large_banner` tinyint(1) NOT NULL DEFAULT 1,
  `big` tinyint(1) NOT NULL DEFAULT 1,
  `hot_sale` tinyint(1) NOT NULL DEFAULT 1,
  `partners` tinyint(1) NOT NULL DEFAULT 0,
  `review_blog` tinyint(1) NOT NULL DEFAULT 1,
  `best_seller_banner` text DEFAULT NULL,
  `best_seller_banner_link` text DEFAULT NULL,
  `big_save_banner` text DEFAULT NULL,
  `big_save_banner_link` text DEFAULT NULL,
  `bottom_small` tinyint(1) NOT NULL DEFAULT 0,
  `flash_deal` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller_banner1` text DEFAULT NULL,
  `best_seller_banner_link1` text DEFAULT NULL,
  `big_save_banner1` text DEFAULT NULL,
  `big_save_banner_link1` text DEFAULT NULL,
  `featured_category` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'info@agrodevbd.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', '416/2, Mirpur, Dhaka', '01xxxxxxxxx', NULL, 'info@agrodevbd.com', 'http://agrodevbd.com/', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, '1568889138banner1.jpg', 'http://google.com', '1565150264banner3.jpg', 'http://google.com', 1, 0, '1568889138banner2.jpg', 'http://google.com', '1565150264banner4.jpg', 'http://google.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(7, '1679431770welthungerhilfe.jpg', 'https://www.google.com/'),
(8, '1679431759world-agroforestry-icraf-vector-logo.png', 'https://www.google.com/'),
(11, '1679431234food-and-agriculture-organization-of-the-united-nations-fao-logomini.jpg', 'https://www.google.com/'),
(12, '1679431226IFAD.png', 'https://www.google.com/'),
(13, '1679431217rockefeller_foundation.jpg', 'https://www.google.com/'),
(15, '1679431202ghanaman-trust-fund.jpg', 'https://www.google.com/'),
(16, '1679431194country-wise.jpg', 'https://www.google.com/'),
(17, '1679431187logo.png', 'https://www.google.com/'),
(20, '1679431160alience.jpg', 'https://www.google.com/'),
(21, '1679431782new_logo_dam.png', NULL),
(22, '1679431793ekrishi-logo.png', NULL),
(23, '1679431799IFIAPP-Logo-v2.png', NULL),
(24, '1679431807dae.png', NULL),
(25, '1679431813govt.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `status`) VALUES
(46, 'Pay via Manual Payment.', 'Manual Payment', '<font size=\"3\"><font size=\"3\"><b>Manual Payment</b></font><b>&nbsp;No: 6528068515</b><br><br></font>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `views` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `product_condition` tinyint(1) NOT NULL DEFAULT 0,
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(95, 'pr495jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 95', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027732dTwHda8l.png', '1568027751AidGUyJv.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 48, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, '2019-09-09 07:36:06', '2020-01-23 02:28:35', 1, '09/08/2021', NULL, NULL, 0, 0),
(116, 'pr496jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 116', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027684whVhJDrR.png', '1568027717gm0tFzeb.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', 'Keyword1,Keyword 2', '#ff1a1a,#0fbcd4', 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:15:17', 1, '09/08/2021', NULL, NULL, 0, 0),
(117, 'pr497jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 117', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027658Up0FIXsW.png', '1568027670dTA7gQml.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:14:30', 1, '09/08/2021', NULL, NULL, 0, 0),
(118, 'pr498jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 118', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027631cnmEylRa.png', '1568027643PgYviwVK.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:14:03', 1, '09/08/2021', NULL, NULL, 0, 0),
(119, 'pr499jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 1', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027603i5UAZiKB.png', '1568027616O1coe3aV.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:13:36', 1, '09/08/2021', NULL, NULL, 0, 0),
(120, 'pr500jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 120', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027558gLSECTIh.png', '1568027591b1oUIo7Q.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2019-09-09 12:36:06', '2019-09-09 10:53:33', 1, '09/08/2021', NULL, NULL, 0, 0),
(121, 'pr501jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 121', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027534O1QEBPpR.png', '1568027543P8eoamtf.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:12:23', 1, '09/08/2021', NULL, NULL, 0, 0),
(122, 'pr502jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 122', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027493eLqHNoZP.png', '1568027517LGq90luX.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:11:57', 1, '09/08/2021', NULL, NULL, 0, 0),
(186, 'zcN7065PQV', 'normal', NULL, 0, 20, 20, NULL, NULL, '2 Kg Black Rice Seeds', '2-kg-black-rice-seeds-zcn7065pqv', '1676097706zIXmE5Vh.png', '1676097706uULphHVK.jpg', NULL, NULL, NULL, NULL, NULL, 11.764705882353, 0, '<span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\">Black rice is rich in amino acids, fatty acids, antioxidants, flavonoids, anthocyanins, and other phenolic compounds. There are 18 amino acids in black rice, with a mix of essential and non-essential types. Amino acids are crucial to many of your body\'s functions, from helping repair skin and tissues to improving your energy levels and digestion.Black rice is also a good source of the following nutrients: Vitamin ERiboflavin (B2)Niacin (B3)Beta-caroteneLuteinZeaxanthin CalciumChromiumPhosphorusIronManganese PotassiumZincCopperMagnesiumA quarter-cup of black rice, which measures 1/2 cup when cooked, contains:Calories: 173 Protein: 5 gramsFat: 2 grams Carbohydrates: 38 grams Fiber: 3 gramsSugar: 1 gramCholesterol: 0 milligramsSodium: 4 milligramsThis colorful black rice offers a variety of health benefits. One of the most noticeable comes from the deep color of the grain. Anthocyanins are pigments found in a variety of blue and purple foods, and they help to protect your cells against damage. These pigments are also known for reducing inflammation and helping reduce the risk of cardiovascular conditions. Eating black rice can give you a worthwhile boost on your heart health and overall fitness. Anthocyanins from black rice may also have potent anticancer properties.Black rice also provides these health benefits:Improved Eye HealthAlong with protective anthocyanins, black rice contains high amounts of lutein and zeaxanthin, two carotenoids known for their role in supporting eye health. These antioxidants help to protect the cells in your eyes and to reduce the effects of ultraviolet (UV) radiation. Diabetes ManagementFlavonoids like anthocyanins also influence blood sugar levels and diabetes management. Phytochemicals have a positive influence on your body, improving insulin sensitivity so you can better use glucose. They also help by reducing sugar digestion in your small intestine, which lowers sugar levels in your blood.Weight Loss Management:Black rice is a good source of protein and fiber, both of which can help promote weight loss by reducing appetite and increasing feelings of fullness.</span><br>', NULL, 'No return.', 1, 5, 'rice seeds,padddy seeds,black rice seeds', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 1, '2023-02-11 05:41:46', '2023-04-26 22:30:38', 0, NULL, NULL, NULL, 0, 0),
(187, '5Eb7836OYK', 'normal', NULL, 0, 20, 20, NULL, NULL, 'Pure Crop Brown Hybrid Rice Seed-2 Kg', 'pure-crop-brown-hybrid-rice-seed-2-kg-5eb7836oyk', '1676098031BbXwjzs1.png', '1676098031gj4ZjfNO.jpg', NULL, NULL, NULL, NULL, NULL, 8.8235294117647, 0, '<span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\">To serve the needs and demands of our huge clientele, we offer finest quality&nbsp;</span><b style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial;\">Hybrid Rice Seed</b><b style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial;\">.&nbsp;</b><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\">Offered seed is processed by our experienced professionals using modern techniques in adherence with set industrial norms and standards. For our clients, this seed is offered by us in safe packaging options as per their requirement. We offer it to our clients at a most reasonable price.</span><br>', NULL, '<br>', 1, 6, 'Pure Crop Brown Hybrid Rice Seed,rice seeds', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 1, '2023-02-11 05:47:11', '2023-04-21 17:07:28', 0, NULL, NULL, NULL, 1, 0),
(188, '9Q92726mue', 'normal', NULL, 0, 20, 20, NULL, NULL, 'Chinigura Paddy (Dhan) For Bird-1kg', 'chinigura-paddy-dhan-for-bird-1kg-9q92726mue', '16761029087pH0cbXm.png', '1676102908pxVAZ0GF.jpg', NULL, NULL, NULL, NULL, NULL, 4.1176470588235, 5.2941176470588, '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand:Tanvir\'s Group</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Quantity:1kg</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Quality:Good</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Flavour:NA</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Nutritious Blend</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">For:Budgie,Finch,Java,Small Birds</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">PADDY RICE is rice that has been removed from the outer chaff, but still has it\'s outer husk.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">This gives the rice more nutrients than other, more processed forms of rice.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Many birds enjoy PADDY RICE, such as parrots, cockatoos, lovebirds, parakeets and finches. It is especially ideal for newly-imported seed-eating birds (such as Java Rice Finches or Red-Capped Cardinals).</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">High in fiber and carbohydrates.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Supplied in resealable, transparent plastic bags.</li></ul></div>', NULL, 'No return.', 1, 5, 'Chinigura Paddy,basmoti chal', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2023-02-11 07:08:28', '2023-04-25 17:22:57', 0, NULL, NULL, NULL, 0, 0),
(189, '8tR3011GXm', 'normal', NULL, 0, 20, 18, NULL, NULL, 'Fresh Red Tomato Seeds-30pcs', 'fresh-red-tomato-seeds-30pcs-8tr3011gxm', '1676103339r26DlyFy.png', '16761033392Tepl95V.jpg', NULL, NULL, NULL, NULL, NULL, 0.58823529411765, 0, '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Full-bloom Period:summer</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Applicable Constellation:Aquarius</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Flowerpot:Excluded</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Cultivating Difficulty Degree:Very Easy</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Function:Interest</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Classification:Mini Garden</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Use:Outdoor Plants</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style:Annual</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Climate:Subtropics</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Location:Courtyard</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Model Number:001</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size:Mini</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type:Bonsai</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Type:vegetable seed</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Variety:vegetable</li></ul>', NULL, 'No return.', 1, 6, 'Fresh Red Tomato Seeds,Tomato Seed', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, 0, 0, 0, '2023-02-11 07:15:39', '2023-04-26 22:52:11', 0, NULL, NULL, NULL, 0, 0),
(190, 'h2P4920a4H', 'normal', NULL, 0, 20, 19, NULL, NULL, 'Potato seeds 5 Kg', 'potato-seeds-5-kg-h2p4920a4h', '1676128333dQ7jjchV.png', '1676128333lYSO313y.jpg', NULL, NULL, NULL, NULL, NULL, 2.9411764705882, 3.7647058823529, '<br>', NULL, '<br>', 1, 6, 'Potato seeds', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 0, '2023-02-11 07:44:39', '2023-04-20 02:53:48', 0, NULL, NULL, NULL, 0, 0),
(191, '2qz53841s0', 'normal', NULL, 0, 20, 23, NULL, NULL, 'All Season Red Carrot Seeds - 30 Pcs Seeds', 'all-season-red-carrot-seeds-30-pcs-seeds-2qz53841s0', '1676105756MAXxIABs.png', '16761057568FLR8Jip.jpg', NULL, NULL, NULL, NULL, NULL, 0.58823529411765, 0.82352941176471, '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.5ef1F3wWF3wWjP\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Seeds Type: Vegetables</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Organic Plant Seed</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Seed For: Red Carrot</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Suitable For: Indoor/Outdoor</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Climate:Subtropics</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Cultivating Difficulty Degree: Regular</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Germination Rate: 80%-95%</li></ul>', NULL, 'No return.', 1, 18, 'carrots,red-carrots', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, 1, 1, 0, '2023-02-11 07:52:37', '2023-04-21 04:23:36', 0, NULL, NULL, NULL, 0, 0),
(192, 'KWT5778lKA', 'normal', NULL, 0, 20, 26, NULL, NULL, 'Brinjal Long Eggplant Vegetable 60 Seeds (White)', 'brinjal-long-eggplant-vegetable-60-seeds-white-kwt5778lka', '1676105982da41a4QC.png', '1676105982dt08DZk3.jpg', NULL, NULL, NULL, NULL, NULL, 0.64705882352941, 0.76470588235294, '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\"><ul class=\"\" style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.5834kN6DkN6DXM\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">White Long Eggplant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Vegetable 60 Seeds</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Actual white fruit</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\"><br></li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\"><br></li></ul><div style=\"\"><span style=\"font-size: 14px;\"><br></span></div></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><li style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; Brinjal Long Eggplant Vegetable 50 Seeds (White)</li></ul><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><li style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; These seeds are suitable for Bd climate</li><li style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; It is easy to grow</li><li data-spm-anchor-id=\"0.0.0.i5.80fd7463E4nzwy\" style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; 60 Seeds</li></ul></div>', NULL, '<br>', 1, 8, 'eggplant,brinjal,Brinjal Long Eggplant Vegetable Seeds', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 1, 0, 0, '2023-02-11 07:59:42', '2023-05-14 09:56:01', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(193, 'Alk6565k97', 'normal', NULL, 0, 20, 26, NULL, NULL, 'Black Eggplant Vegetable Seeds - 20 Pcs Seeds', 'black-eggplant-vegetable-seeds-20-pcs-seeds-alk6565k97', '1676106711htDMVLCV.png', '1676106712KvaeUtSJ.jpg', NULL, NULL, NULL, NULL, NULL, 0.58823529411765, 0, '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Seeds Type: Vegetables</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Organic Plant Seed</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Seed For: Black Eggplant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Suitable For: Indoor/Outdoor</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Climate:Subtropics</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.1f5c2pkz2pkzOF\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Cultivating Difficulty Degree: Regular</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Germination Rate: 80%-95%</li></ul>', NULL, '<br>', 1, 6, 'brinjal,eggplant', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, 1, 0, '2023-02-11 08:11:51', '2023-04-26 07:14:29', 0, NULL, NULL, NULL, 0, 0),
(194, 'FkN5791LJJ', 'normal', NULL, 0, 20, 25, NULL, NULL, 'Capsicum Yellow F1 Hybrid - 40 Seeds', 'capsicum-yellow-f1-hybrid-40-seeds-fkn5791ljj', '1676125909xwyoZ4Jm.png', '16761259092gZweiJe.jpg', NULL, NULL, NULL, NULL, NULL, 0.35294117647059, 0, '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; color: rgb(152, 151, 151); font-family: Poboto, sans-serif; font-size: 17px; letter-spacing: 0.34px;\"><em style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit; font-weight: bold; color: rgb(58, 58, 58);\">Germination Rate (Min):</strong>&nbsp;75%</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; color: rgb(152, 151, 151); font-family: Poboto, sans-serif; font-size: 17px; letter-spacing: 0.34px;\"><em style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit; font-weight: bold; color: rgb(58, 58, 58);\">Physical Purity (Min):</strong>&nbsp;98%</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; color: rgb(152, 151, 151); font-family: Poboto, sans-serif; font-size: 17px; letter-spacing: 0.34px;\"><em style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit; font-weight: bold; color: rgb(58, 58, 58);\">Genetic Purity (Min):</strong>&nbsp;98%</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; color: rgb(152, 151, 151); font-family: Poboto, sans-serif; font-size: 17px; letter-spacing: 0.34px;\">&nbsp;</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; color: rgb(152, 151, 151); font-family: Poboto, sans-serif; font-size: 17px; letter-spacing: 0.34px;\"><em style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit; font-weight: bold; color: rgb(58, 58, 58);\">Germination Temperature:</strong>&nbsp;25 °C to 29 °C</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; color: rgb(152, 151, 151); font-family: Poboto, sans-serif; font-size: 17px; letter-spacing: 0.34px;\">&nbsp;</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; color: rgb(152, 151, 151); font-family: Poboto, sans-serif; font-size: 17px; letter-spacing: 0.34px;\"><strong style=\"box-sizing: inherit; font-weight: bold; color: rgb(58, 58, 58);\"><em style=\"box-sizing: inherit;\">Moisture Requirement:&nbsp;</em></strong><em style=\"box-sizing: inherit;\">Keep seed moist until germination</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; color: rgb(152, 151, 151); font-family: Poboto, sans-serif; font-size: 17px; letter-spacing: 0.34px;\"><strong style=\"box-sizing: inherit; font-weight: bold; color: rgb(58, 58, 58);\"><em style=\"box-sizing: inherit;\">Maturation Period:&nbsp;</em></strong><em style=\"box-sizing: inherit;\">_65_ to _80_ days</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; color: rgb(152, 151, 151); font-family: Poboto, sans-serif; font-size: 17px; letter-spacing: 0.34px;\"><strong style=\"box-sizing: inherit; font-weight: bold; color: rgb(58, 58, 58);\"><em style=\"box-sizing: inherit;\">Can Reach Up To (Height.):</em></strong><em style=\"box-sizing: inherit;\">&nbsp;__ to __ inches</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; color: rgb(152, 151, 151); font-family: Poboto, sans-serif; font-size: 17px; letter-spacing: 0.34px;\"><strong style=\"box-sizing: inherit; font-weight: bold; color: rgb(58, 58, 58);\"><em style=\"box-sizing: inherit;\">Sowing Rate:&nbsp;</em></strong><em style=\"box-sizing: inherit;\">_02_ to _03_ seeds per cup</em></p>', NULL, '<br>', 1, 11, 'capcicum seeds', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 1, 0, '2023-02-11 13:31:49', '2023-04-26 09:54:44', 0, NULL, NULL, NULL, 0, 0),
(195, 'bKa6066xLI', 'normal', NULL, 0, 21, NULL, NULL, NULL, 'Epsom Salt 1kg Intact Brand Pack (Magnesium Sulphate) For Any Plant', 'epsom-salt-1kg-intact-brand-pack-magnesium-sulphate-for-any-plant-bka6066xli', '16761262941FFp5K5S.png', '1676126295ET0404QF.jpg', NULL, NULL, NULL, NULL, NULL, 1.0588235294118, 1.1764705882353, '<ul><li>গাছকে মাটি থেকে খাদ্য উপাদান গ্রহনে বিশেষ সহায়তা করে।</li><li>মাটির গঠন উন্নয়নে ইহা গুরুত্বপুর্ন ভুমিকা রাখে।</li><li>ফসলের গুনগতমান বৃদ্ধি পাবে।</li><li>ফসলের পাতার রং ও আকার স্বাভাবিক হবে।</li><li>আশানুরূপ ফলন পাওয়া যাবে।</li><li>ইহা ব্যাবহারে মাটির PH এর উপর কোন প্রভাব ফেলে না ।</li><li>সঠিক প্রয়োগে ইহার কোন পার্শ্ব প্রতিক্রিয়া নেই এবং পরিবেশের উপর কোন প্রভাব ফেলে না ।</li></ul>', NULL, '<br>', 1, 34, 'Magnesium Sulphate', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 0, 0, '2023-02-11 13:38:14', '2023-04-26 06:44:07', 0, NULL, NULL, NULL, 0, 0),
(196, 'Gfa6463nIp', 'normal', NULL, 0, 22, NULL, NULL, NULL, 'Root Hormone For Plant Indian Cutting Aid', 'root-hormone-for-plant-indian-cutting-aid-gfa6463nip', '1676126646nuPnNnCh.png', '16761266468D9VbXty.jpg', NULL, NULL, NULL, NULL, NULL, 5.2941176470588, 0, '<ol><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-weight: bolder;\">Rooting hormoneis a mixture of plant hormones</span></li><li><span style=\"font-weight: bolder; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Promote cutting roots, rapid rooting and seed germination</span></li><li><span style=\"font-weight: bolder; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Intact Box With 50 gram White Rooting Powder</span></li><li><span style=\"font-weight: bolder; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Increase The Growth of Orchid And other Plant</span></li></ol>', NULL, '<br>', 1, 5, 'Root Hormone For Plant Indian Cutting Aid', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, '2023-02-11 13:44:06', '2023-04-20 20:54:22', 0, NULL, NULL, NULL, 0, 0),
(197, 'pox6888AQa', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Chaff Cutter Machine - 3HP Motor - Agro Machineries - 9ZT-0.6T', 'chaff-cutter-machine-3hp-motor-agro-machineries-9zt-06t-pox6888aqa', '1676127108AaWIXO6L.png', '1676127108EvSLuXwA.jpg', NULL, NULL, NULL, NULL, NULL, 382.35294117647, 411.76470588235, '<ol><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Overall dimension</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">1220*485*910mm</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Package size</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">560*435*365mm</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Rated power</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">2.2kw / 3.0hp</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Rated Voltage</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">220v</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Standard motor speed</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">2200r/min</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Weight(without motor)</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">47kg</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">productivity</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">600-800kg/h</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Output Size</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">10-30mm</span></li></ol>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2023-02-11 13:51:48', '2023-04-24 13:21:56', 0, NULL, NULL, NULL, 0, 0),
(198, 'LWL7265KCX', 'normal', NULL, 0, 24, NULL, NULL, NULL, 'Rabbit Food/Pellet for rabbit/Best quality feed for rabbit/Fresh rabbit feed.', 'rabbit-foodpellet-for-rabbitbest-quality-feed-for-rabbitfresh-rabbit-feed-lwl7265kcx', '1676127481uWaRl6ou.png', '1676127481nRsMQFxf.jpg', NULL, NULL, NULL, NULL, NULL, 1.1764705882353, 1.4117647058824, '<ul><li>Brand : (Fresh Meghna Group Of Industries)</li><li>Feed Type : Pellet</li><li>Keeps rabbit healthy</li><li>Good for rabbit teeth</li><li>Increases body weight &amp; mass of bunnies</li><li>Available in 1-5 Kg Package</li><li>Best quality rabbit food.</li></ul>', NULL, '<br>', 1, 5, 'Rabbit Food', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 0, '2023-02-11 13:58:01', '2023-04-26 03:41:38', 0, NULL, NULL, NULL, 0, 0),
(199, '6yh7618Od6', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Water Feeder for Rabbits, Hamsters', 'water-feeder-for-rabbits-hamsters-6yh7618od6', '1676127724HUhhllo9.png', '1676127725PKrmtqZs.jpg', NULL, NULL, NULL, NULL, NULL, 1.6470588235294, 1.8823529411765, '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.1f76nD8ZnD8ZHb\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid; column-span: all;\">Material: Plastic+Stainless steelColor: Random delivery, if you buy more than one products, which colors may be different or the sameFeaturesStoring water for your petEasy for your pet to get the water from the bottleQuite convenient to hold it onto other objectMade with clip at the bottom of the bottleNon-toxic materialsGoods have two style,have pattern or without pattern,we will sent at random, can not selectable style and color. Size: 4cm*16cm/1.57\" x 5.30\"Quantity:1 Pc 　</li></ul>', NULL, '<br>', 1, 5, 'Water Feeder for Rabbits,Rabbits', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 0, '2023-02-11 14:02:04', '2023-04-25 00:43:42', 0, NULL, NULL, NULL, 0, 0),
(200, 'kiQ8109YwV', 'normal', NULL, 0, 26, NULL, NULL, NULL, 'DC 12V 280W Submersible Deep Well Water Pump Irrigation 3200 rpm AU', 'dc-12v-280w-submersible-deep-well-water-pump-irrigation-3200-rpm-au-kiq8109ywv', '1676128202rxYBwXgu.png', '1676128202XqXLtbwW.jpg', NULL, NULL, NULL, NULL, NULL, 129.41176470588, 0, '<span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">Comes with copper motor, enjoying high efficiency and low consumption.</span><br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">Multi-purpose: Farmland irrigation, family car washing, deep well water intake, garden greening, domestic drainage, etc.</span><br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">Made from premium materials, anti-rust, wear-resistant and available for long lifespan.</span><br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">Only suitable for 12V batteries. capacity must be above 12AH.</span><br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">Red-line for anode and blue-line for cathode (anode-cathode protection switch, connect line reversely without burning the machine. If there is no water, just exchange the line.)</span><br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">The outlet design can seize the pipe tightly and prevent it from falling off.</span><br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">', NULL, '<br>', 1, 5, 'pump,water pump', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2023-02-11 14:10:02', '2023-04-24 23:27:12', 0, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(6, 95, '2020-01-23'),
(37, 186, '2023-02-11'),
(38, 186, '2023-02-11'),
(40, 190, '2023-02-11'),
(41, 191, '2023-02-11'),
(42, 191, '2023-02-11'),
(43, 192, '2023-02-11'),
(44, 192, '2023-02-11'),
(45, 191, '2023-02-11'),
(46, 191, '2023-02-12'),
(47, 195, '2023-02-12'),
(48, 191, '2023-02-13'),
(49, 191, '2023-02-15'),
(50, 195, '2023-02-15'),
(51, 194, '2023-02-15'),
(52, 195, '2023-02-15'),
(53, 191, '2023-02-16'),
(54, 194, '2023-02-16'),
(55, 195, '2023-02-17'),
(56, 195, '2023-02-17'),
(57, 195, '2023-02-17'),
(58, 195, '2023-02-17'),
(59, 195, '2023-02-18'),
(60, 195, '2023-02-18'),
(61, 195, '2023-02-18'),
(62, 194, '2023-02-18'),
(63, 195, '2023-02-18'),
(64, 195, '2023-02-18'),
(65, 195, '2023-02-18'),
(66, 195, '2023-02-18'),
(67, 195, '2023-02-18'),
(68, 195, '2023-02-18'),
(69, 195, '2023-02-18'),
(70, 195, '2023-02-19'),
(71, 194, '2023-02-19'),
(72, 195, '2023-02-19'),
(73, 195, '2023-02-19'),
(74, 195, '2023-02-19'),
(75, 195, '2023-02-19'),
(76, 195, '2023-02-19'),
(77, 195, '2023-02-19'),
(78, 195, '2023-02-19'),
(79, 195, '2023-02-19'),
(80, 195, '2023-02-19'),
(81, 195, '2023-02-20'),
(82, 195, '2023-02-20'),
(83, 191, '2023-02-20'),
(84, 194, '2023-02-20'),
(86, 190, '2023-03-15'),
(87, 196, '2023-03-16'),
(88, 192, '2023-03-16'),
(89, 191, '2023-03-16'),
(90, 187, '2023-03-17'),
(91, 186, '2023-03-17'),
(92, 189, '2023-03-17'),
(95, 197, '2023-03-19'),
(96, 200, '2023-03-20'),
(97, 199, '2023-03-20'),
(98, 194, '2023-03-20'),
(99, 188, '2023-03-20'),
(100, 198, '2023-03-21'),
(101, 195, '2023-03-21'),
(102, 193, '2023-03-21'),
(103, 194, '2023-03-21'),
(104, 191, '2023-03-21'),
(105, 191, '2023-03-21'),
(106, 191, '2023-03-21'),
(107, 191, '2023-03-21'),
(108, 194, '2023-03-21'),
(109, 191, '2023-03-21'),
(110, 191, '2023-03-23'),
(111, 192, '2023-03-23'),
(112, 196, '2023-03-23'),
(113, 189, '2023-03-24'),
(114, 189, '2023-03-24'),
(115, 189, '2023-03-25'),
(116, 190, '2023-03-27'),
(117, 196, '2023-03-27'),
(118, 191, '2023-03-28'),
(119, 192, '2023-03-28'),
(120, 193, '2023-03-28'),
(121, 187, '2023-03-28'),
(122, 186, '2023-03-29'),
(123, 189, '2023-03-29'),
(124, 190, '2023-03-29'),
(125, 188, '2023-03-30'),
(126, 199, '2023-03-31'),
(127, 197, '2023-03-31'),
(128, 200, '2023-03-31'),
(129, 199, '2023-03-31'),
(130, 188, '2023-04-01'),
(131, 198, '2023-04-02'),
(132, 195, '2023-04-02'),
(133, 193, '2023-04-02'),
(134, 194, '2023-04-02'),
(135, 187, '2023-04-03'),
(136, 190, '2023-04-08'),
(137, 187, '2023-04-08'),
(138, 196, '2023-04-08'),
(139, 191, '2023-04-09'),
(140, 192, '2023-04-09'),
(141, 187, '2023-04-09'),
(142, 195, '2023-04-09'),
(143, 197, '2023-04-10'),
(144, 197, '2023-04-12'),
(145, 200, '2023-04-12'),
(146, 199, '2023-04-12'),
(147, 188, '2023-04-13'),
(148, 198, '2023-04-13'),
(149, 195, '2023-04-14'),
(150, 193, '2023-04-14'),
(151, 198, '2023-04-14'),
(152, 194, '2023-04-14'),
(153, 200, '2023-04-16'),
(154, 190, '2023-04-20'),
(155, 196, '2023-04-20'),
(156, 191, '2023-04-21'),
(157, 192, '2023-04-21'),
(158, 187, '2023-04-21'),
(159, 193, '2023-04-23'),
(160, 197, '2023-04-24'),
(161, 200, '2023-04-25'),
(162, 199, '2023-04-25'),
(163, 188, '2023-04-25'),
(164, 198, '2023-04-26'),
(165, 195, '2023-04-26'),
(166, 193, '2023-04-26'),
(167, 194, '2023-04-26'),
(168, 186, '2023-04-27'),
(169, 189, '2023-04-27'),
(170, 192, '2023-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Expert panel', 'messages');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text DEFAULT NULL,
  `meta_keys` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Script</script>', 'agriculture,agro,agri,agrobd,');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'FREE SHIPPING', 'Free Shipping All Order', '1571288944s1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1571288950s2.png'),
(4, 0, '30 DAY RETURNS', '30-Day Return Policy', '1571288955s3.png'),
(5, 0, 'HELP CENTER', '24/7 Support System', '1571288959s4.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1571457250s1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1571457257s2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1571457261s3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1571457265s4.png');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0),
(2, 0, 'Express Shipping', '(5 - 6 days)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(8, NULL, '24', '#ffffff', 'slideInUp', 'Up to 40% Off', '60', '#ffffff', 'slideInDown', 'Learn about higher yields from all Thorn crops.', '16', '#ffffff', 'slideInRight', '1676180560h2-slide1.jpg', 'slide-three', 'http://agrodevbd.com/'),
(9, NULL, '24', '#ffffff', 'slideInUp', 'Up to 40% Off', '60', '#ffffff', 'slideInDown', 'Learn about higher yields from all Thorn crops.', '16', '#ffffff', 'slideInDown', '1676180664slide02.jpg', 'slide-one', 'http://agrodevbd.com/'),
(10, NULL, '24', '#f4e6e6', 'slideInUp', 'Up to 40% Off', '60', '#f6eded', 'slideInDown', 'Learn about higher yields from all Thorn crops.', '16', '#fdfdfd', 'slideInLeft', '1676180418slider_20171114150812.jpg', 'slide-one', 'http://agrodevbd.com/');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) NOT NULL,
  `gplus` varchar(191) NOT NULL,
  `twitter` varchar(191) NOT NULL,
  `linkedin` varchar(191) NOT NULL,
  `dribble` varchar(191) DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text DEFAULT NULL,
  `fclient_secret` text DEFAULT NULL,
  `fredirect` text DEFAULT NULL,
  `gclient_id` text DEFAULT NULL,
  `gclient_secret` text DEFAULT NULL,
  `gredirect` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/upgraded/kingcommerce-new/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/upgraded/kingcommerce-new/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(18, 20, 'Tomato seeds', 'tomato-seeds', 1),
(19, 20, 'Potato seeds', 'potato-seeds', 1),
(20, 20, 'Paddy seeds', 'Paddy-seeds', 1),
(21, 20, 'Corn seeds', 'Corn-seeds', 1),
(22, 20, 'Jute seeds', 'Jute-seeds', 1),
(23, 20, 'Carrot seeds', 'Carrot-seeds', 1),
(24, 20, 'Radish seeds', 'Radish-seeds', 1),
(25, 20, 'Capcicum seeds', 'Capcicum-seeds', 1),
(26, 20, 'Eggplant seeds', 'Eggplant-seeds', 1),
(27, 24, 'Cow feed', 'Cow-feed', 1),
(28, 24, 'Fish feed', 'Fish-feed', 1),
(29, 24, 'Poultry', 'poultry', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', '৳', 'BDT', 5.8823529411765, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', '৳', 'BDT', 11.764705882353, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', '৳', 'BDT', 23.529411764706, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_sign` blob DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `txn_number`, `amount`, `currency_sign`, `currency_code`, `currency_value`, `method`, `txnid`, `details`, `type`, `created_at`, `updated_at`) VALUES
(1, 22, 'SKk0774sN9', 320, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-05-31 04:26:14', '2020-05-31 04:26:14'),
(2, 22, 'nNI0989op1', 130, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-05-31 04:29:49', '2020-05-31 04:29:49'),
(3, 22, '7re14878jD', 130, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-05-31 04:38:07', '2020-05-31 04:38:07'),
(4, 22, 'BYr2053KuN', 1600, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-06-01 22:27:33', '2020-06-01 22:27:33'),
(5, 22, 'Ee648427Nl', 2.4875621890547, 0x5224, 'BRL', 4.02, 'MercadoPago', '1235324161', 'Payment Deposit', 'plus', '2021-04-01 05:00:42', '2021-04-01 05:00:42'),
(6, 13, 'k0g0417jXR', 10, 0x24, 'USD', 1, 'Molly Payment', 'tr_g3Kc3sHWwb', 'Payment Deposit', 'plus', '2021-04-03 03:00:17', '2021-04-03 03:00:17'),
(7, 13, 'cNR0463svz', 0.02747864222533, 0xe282a6, 'NGN', 363.919, 'Paystack', '245249284', 'Payment Deposit', 'plus', '2021-04-03 03:01:03', '2021-04-03 03:01:03'),
(8, 13, 'N561202Ssb', 10, 0x24, 'USD', 1, 'Flutterwave', '2004551', 'Payment Deposit', 'plus', '2021-04-03 03:13:22', '2021-04-03 03:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `fax` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text DEFAULT NULL,
  `email_verified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `affilate_code` text DEFAULT NULL,
  `affilate_income` double NOT NULL DEFAULT 0,
  `shop_name` text DEFAULT NULL,
  `owner_name` text DEFAULT NULL,
  `shop_number` text DEFAULT NULL,
  `shop_address` text DEFAULT NULL,
  `reg_number` text DEFAULT NULL,
  `shop_message` text DEFAULT NULL,
  `shop_details` text DEFAULT NULL,
  `shop_image` varchar(191) DEFAULT NULL,
  `f_url` text DEFAULT NULL,
  `g_url` text DEFAULT NULL,
  `t_url` text DEFAULT NULL,
  `l_url` text DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `f_check` tinyint(1) NOT NULL DEFAULT 0,
  `g_check` tinyint(1) NOT NULL DEFAULT 0,
  `t_check` tinyint(1) NOT NULL DEFAULT 0,
  `l_check` tinyint(1) NOT NULL DEFAULT 0,
  `mail_sent` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `balance` decimal(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`) VALUES
(13, 'Vendor', '1557677677bouquet_PNG62.png', '1234', NULL, 'Algeria', 'UN', NULL, '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'JKf1fVEBd1lMqPf0plI4qCpCZFDFi0Nu519MbWpsd1joyHlGXUAMDymwr9Vo', '2018-03-07 18:05:44', '2023-02-11 05:49:22', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 5000, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', 'TEST DETAILS', '1579424193adv-banner.jpg', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, 5208.02, '2021-09-30', 0, 119.82),
(22, 'User', NULL, '1231', 'Test City', 'United States', 'UN', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', '8FYJ8gkV2fN8SApzPo4XB3WqxRmiyReibzK79hiSCvQe3JJKt0BB1ejxHVdA', '2019-06-20 12:26:24', '2021-04-01 05:00:42', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4953.290000000001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 127296.67),
(27, 'Test User', NULL, '1234', 'Test City', 'United Kingdom', 'UN', 'Space Needle 400 Broad St, Seattles', '34534534', '34534534', 'junajunnun@gmail.com', '$2y$10$pxNqceuvTvYLuwA.gZ15aejOTtXGHrDT7t2m8wfIZhNO1e52z7aLS', 'RdBI4RFgbKUzSDCo8mhI3LSz4oXURe8RNUizf7DXUEIO4sdVF35qJlLleDHn', '2019-10-05 04:15:08', '2020-03-20 22:53:39', 0, 0, '0521bba4c819528b6a18a581a5842f17', 'Yes', 'bb9d23401cd70f11998fe36ea7677797', 0, 'Test Store', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'ds', '<br>', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-24', 0, 10000.00),
(28, 'User', NULL, '1234', 'Test City', 'Algeria', 'UN', NULL, '34534534', '034534534', 'junnun@gmail.com', '$2y$10$YDfElg7O3K6eQK5enu.TBOyo.8TIr6Ynf9hFQ8dsIDeWAfmmg6hA.', 'pNFebTvEQ3jRaky9p7XnCetHs9aNFFG7nqRFho0U7nWrgT7phS6MoX8f9EYz', '2019-10-13 05:39:13', '2020-01-12 01:36:05', 0, 0, '8036978c6d71501e893ba7d3f3ecc15d', 'Yes', '33899bafa30292165430cb90b545728a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 9000.00),
(29, 'S M Sayem', '1676443192311708518_3009053059392308_5864042758773739528_n.jpg', NULL, 'Mirpur-10', 'Bangladesh', NULL, 'Dhaka', '0000000000', NULL, 'test@gmail.com', '$2y$10$1dLiv7Wd/mfmEH2Ns9CHz.gN15QRrDtt/p1ixkRvzfHdpEYMD8raS', NULL, '2023-02-15 05:35:08', '2023-02-15 05:39:52', 0, 0, 'f9bfeb37c8707b21091f3e1db6c195f8', 'Yes', '036b92a00c6c0265b8088096f5f70be5', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(30, 'LIKHON DAS', '1678997962Picture6.jpg', NULL, NULL, NULL, NULL, 'ii', '01533931921', NULL, 'likhondas874@gmail.com', '$2y$10$TSYnvpf2BlDVRhbYfDhPGeEbJK4/vpemRbQBmvwpa0lJH9mmyIxJq', NULL, '2023-03-16 19:17:52', '2023-03-16 19:19:22', 0, 0, '9fa2a8596ba2f32cde9aabf1c921a14f', 'Yes', 'a0d4371d6fb2c7eb45fe05673d626df6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `flutter_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(81, 27, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '688094995', NULL, NULL, '2019-10-09 21:32:57', '2023-03-21 20:15:56', 1, NULL),
(94, 13, 5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Voguepay', 'demo-5e1d577004e90', NULL, NULL, '2020-01-13 23:54:30', '2023-03-21 20:15:56', 1, NULL),
(95, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_1IbOJiJlIV5dN9n733iPl3bf', 'ch_1IbOJiJlIV5dN9n78XPjQP8R', NULL, '2021-04-01 05:04:02', '2023-03-21 20:15:43', 1, NULL),
(96, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Molly', 'tr_VqBFPF2bxJ', NULL, NULL, '2021-04-03 01:38:06', '2023-03-21 20:15:43', 1, NULL),
(97, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Paytm', '20210403111212800110168189602520839', NULL, NULL, '2021-04-03 01:39:37', '2023-03-21 20:15:43', 1, NULL),
(98, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Flutterwave', NULL, NULL, 'UlIV1617435825', '2021-04-03 01:43:45', '2023-03-21 20:15:43', 0, NULL),
(99, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Paytm', '20210403111212800110168732702510494', NULL, NULL, '2021-04-03 01:44:25', '2023-03-21 20:15:43', 1, NULL),
(100, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Razorpay', NULL, NULL, NULL, '2021-04-03 01:45:06', '2023-03-21 20:15:43', 0, NULL),
(101, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Razorpay', NULL, NULL, NULL, '2021-04-03 01:48:12', '2023-03-21 20:15:43', 0, NULL),
(102, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Voguepay', 'demo-606827e13aeaf', NULL, NULL, '2021-04-03 02:32:28', '2023-03-21 20:15:43', 1, NULL),
(103, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_606828350cde1', NULL, NULL, '2021-04-03 02:32:53', '2023-03-21 20:15:43', 1, NULL),
(104, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Flutterwave', NULL, NULL, 'KbDW1617438797', '2021-04-03 02:33:17', '2023-03-21 20:15:43', 0, NULL),
(105, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Razorpay', NULL, NULL, NULL, '2021-04-03 02:34:22', '2023-03-21 20:15:43', 0, NULL),
(106, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Paytm', '20210403111212800110168460302504788', NULL, NULL, '2021-04-03 02:34:31', '2023-03-21 20:15:43', 1, NULL),
(107, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Molly', 'tr_Pab6mUeUA5', NULL, NULL, '2021-04-03 02:35:23', '2023-03-21 20:15:43', 1, NULL),
(108, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Razorpay', NULL, NULL, NULL, '2021-04-03 02:38:34', '2023-03-21 20:15:43', 0, NULL),
(109, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Razorpay', 'pay_GuNyDg4A1IBj6c', NULL, NULL, '2021-04-03 02:39:38', '2023-03-21 20:15:43', 1, NULL),
(110, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Flutterwave', NULL, NULL, 'OLtG1617439285', '2021-04-03 02:41:25', '2023-03-21 20:15:43', 0, NULL),
(111, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Flutterwave', '2004501', NULL, 'ywWX1617439390', '2021-04-03 02:43:10', '2023-03-21 20:15:43', 1, NULL),
(112, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Paystack', '347943714', NULL, NULL, '2021-04-03 02:56:55', '2023-03-21 20:15:43', 1, NULL),
(113, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Razorpay', NULL, NULL, NULL, '2021-04-03 02:57:21', '2023-03-21 20:15:43', 0, NULL),
(114, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Authorize.net', '40062045020', NULL, NULL, '2021-04-03 02:58:10', '2023-03-21 20:15:43', 1, NULL),
(115, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Molly', 'tr_6CDckPKnW8', NULL, NULL, '2021-04-03 02:59:35', '2023-03-21 20:15:43', 1, NULL),
(116, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Flutterwave', '2004554', NULL, 'LGnk1617441223', '2021-04-03 03:13:43', '2023-03-21 20:15:43', 1, NULL),
(117, 13, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Molly', 'tr_N42VHc8WPr', NULL, NULL, '2021-04-03 03:16:13', '2023-03-21 20:15:43', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_warning` tinyint(1) NOT NULL DEFAULT 0,
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Verified', 'TEst', 0, NULL, '2019-11-14 03:30:49', '2019-11-14 03:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(1, 30, 196);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_banners`
--
ALTER TABLE `featured_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_links`
--
ALTER TABLE `featured_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `featured_banners`
--
ALTER TABLE `featured_banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `featured_links`
--
ALTER TABLE `featured_links`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
