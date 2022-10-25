-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: db
-- Время создания: Окт 25 2022 г., 10:57
-- Версия сервера: 8.0.29
-- Версия PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `netwrix`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
--

CREATE TABLE `catalogs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `loc_country`
--

CREATE TABLE `loc_country` (
  `country_id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `loc_country`
--

INSERT INTO `loc_country` (`country_id`, `name`, `short_name`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Albania', 'AL'),
(3, 'Algeria', 'DZ'),
(4, 'American Samoa', 'AS'),
(5, 'Andorra', 'AD'),
(6, 'Angola', 'AO'),
(7, 'Anguilla', 'AI'),
(8, 'Antarctica', 'AQ'),
(9, 'Antigua and Barbuda', 'AG'),
(10, 'Argentina', 'AR'),
(11, 'Armenia', 'AM'),
(12, 'Aruba', 'AW'),
(13, 'Australia', 'AU'),
(14, 'Austria', 'AT'),
(15, 'Azerbaijan', 'AZ'),
(16, 'Bahamas', 'BS'),
(17, 'Bahrain', 'BH'),
(18, 'Bangladesh', 'BD'),
(19, 'Barbados', 'BB'),
(20, 'Belarus', 'BY'),
(21, 'Belgium', 'BE'),
(22, 'Belize', 'BZ'),
(23, 'Benin', 'BJ'),
(24, 'Bermuda', 'BM'),
(25, 'Bhutan', 'BT'),
(26, 'Bolivia', 'BO'),
(27, 'Bosnia and Herzegovina', 'BA'),
(28, 'Botswana', 'BW'),
(29, 'Bouvet Island', 'BV'),
(30, 'Brazil', 'BR'),
(31, 'British Indian Ocean Territory', 'IO'),
(32, 'Brunei Darussalam', 'BN'),
(33, 'Bulgaria', 'BG'),
(34, 'Burkina Faso', 'BF'),
(35, 'Burundi', 'BI'),
(36, 'Cambodia', 'KH'),
(37, 'Cameroon', 'CM'),
(38, 'Canada', 'CA'),
(39, 'Cabo Verde', 'CV'),
(40, 'Cayman Islands', 'KY'),
(41, 'Central African Republic', 'CF'),
(42, 'Chad', 'TD'),
(43, 'Chile', 'CL'),
(44, 'China', 'CN'),
(45, 'Christmas Island', 'CX'),
(46, 'Cocos (Keeling) Islands', 'CC'),
(47, 'Colombia', 'CO'),
(48, 'Comoros', 'KM'),
(49, 'Congo', 'CG'),
(50, 'Cook Islands', 'CK'),
(51, 'Costa Rica', 'CR'),
(52, 'Cote d\'Ivoire', 'CI'),
(53, 'Croatia', 'HR'),
(54, 'Cuba', 'CU'),
(55, 'Cyprus', 'CY'),
(56, 'Czech Republic', 'CZ'),
(57, 'Denmark', 'DK'),
(58, 'Djibouti', 'DJ'),
(59, 'Dominica', 'DM'),
(60, 'Dominican Republic', 'DO'),
(61, 'East Timor', 'TL'),
(62, 'Ecuador', 'EC'),
(63, 'Egypt', 'EG'),
(64, 'El Salvador', 'SV'),
(65, 'Equatorial Guinea', 'GQ'),
(66, 'Eritrea', 'ER'),
(67, 'Estonia', 'EE'),
(68, 'Ethiopia', 'ET'),
(69, 'Falkland Islands (Malvinas)', 'FK'),
(70, 'Faroe Islands', 'FO'),
(71, 'Fiji', 'FJ'),
(72, 'Finland', 'FI'),
(73, 'France', 'FR'),
(74, 'French Guiana', 'GF'),
(75, 'French Polynesia', 'PF'),
(76, 'French Southern Territories', 'TF'),
(77, 'Gabon', 'GA'),
(78, 'Gambia', 'GM'),
(79, 'Georgia', 'GE'),
(80, 'Germany', 'DE'),
(81, 'Ghana', 'GH'),
(82, 'Gibraltar', 'GI'),
(83, 'Greece', 'GR'),
(84, 'Greenland', 'GL'),
(85, 'Grenada', 'GD'),
(86, 'Guadeloupe', 'GP'),
(87, 'Guam', 'GUAM'),
(88, 'Guatemala', 'GT'),
(89, 'Guernsey', 'GG'),
(90, 'Guinea', 'GN'),
(91, 'Guinea-Bissau', 'GW'),
(92, 'Guyana', 'GY'),
(93, 'Haiti', 'HT'),
(94, 'Honduras', 'HN'),
(95, 'Hong Kong', 'HK'),
(96, 'Hungary', 'HU'),
(97, 'Iceland', 'IS'),
(98, 'India', 'IN'),
(99, 'Indonesia', 'ID'),
(100, 'Iran, Islamic Republic of', 'IR'),
(101, 'Iraq', 'IQ'),
(102, 'Ireland', 'IE'),
(103, 'Isle of Man', 'IM'),
(104, 'Israel', 'IL'),
(105, 'Italy', 'IT'),
(106, 'Jamaica', 'JM'),
(107, 'Japan', 'JP'),
(108, 'Jersey', 'JE'),
(109, 'Jordan', 'JO'),
(110, 'Kazakhstan', 'KZ'),
(111, 'Kenya', 'KE'),
(112, 'Kiribati', 'KI'),
(113, 'Korea, Democratic People\'s Republic of', 'KP'),
(114, 'Korea, Republic of', 'KR'),
(115, 'Kuwait', 'KW'),
(116, 'Kyrgyzstan', 'KG'),
(117, 'Lao People\'s Democratic Republic', 'LA'),
(118, 'Latvia', 'LV'),
(119, 'Lebanon', 'LB'),
(120, 'Lesotho', 'LS'),
(121, 'Liberia', 'LR'),
(122, 'Libyan Arab Jamahiriya', 'LY'),
(123, 'Liechtenstein', 'LI'),
(124, 'Lithuania', 'LT'),
(125, 'Luxembourg', 'LU'),
(126, 'Macau', 'MO'),
(127, 'Macedonia', 'MK'),
(128, 'Madagascar', 'MG'),
(129, 'Malawi', 'MW'),
(130, 'Malaysia', 'MY'),
(131, 'Maldives', 'MV'),
(132, 'Mali', 'ML'),
(133, 'Malta', 'MT'),
(134, 'Marshall Islands', 'MI'),
(135, 'Martinique', 'MQ'),
(136, 'Mauritania', 'MR'),
(137, 'Mauritius', 'MU'),
(138, 'Mexico', 'MX'),
(139, 'Moldova, Republic of', 'MD'),
(140, 'Monaco', 'MC'),
(141, 'Mongolia', 'MN'),
(142, 'Montserrat', 'MS'),
(143, 'Morocco', 'MA'),
(144, 'Mozambique', 'MZ'),
(145, 'Myanmar', 'MM'),
(146, 'Namibia', 'NA'),
(147, 'Nauru', 'NR'),
(148, 'Nepal', 'NP'),
(149, 'Netherlands', 'NL'),
(150, 'Netherlands Antilles', 'ANT'),
(151, 'Neutral Zone (Saudi/Iraq)', 'NT'),
(152, 'New Caledonia', 'NC'),
(153, 'New Zealand', 'NZ'),
(154, 'Nicaragua', 'NI'),
(155, 'Niger', 'NE'),
(156, 'Nigeria', 'NG'),
(157, 'Niue', 'NU'),
(158, 'Norfolk Island', 'NF'),
(159, 'Northern Ireland', 'NIR'),
(160, 'Northern Mariana Islands', 'NMI'),
(161, 'Norway', 'NO'),
(162, 'Oman', 'OM'),
(163, 'Pakistan', 'PK'),
(164, 'Palau', 'PAL'),
(165, 'Palestinian Territory', 'PS'),
(166, 'Panama', 'PA'),
(167, 'Panama Canal Zone', 'PZ'),
(168, 'Papua New Guinea', 'PG'),
(169, 'Paraguay', 'PY'),
(170, 'Peru', 'PE'),
(171, 'Philippines', 'PH'),
(172, 'Pitcairn Islands', 'PN'),
(173, 'Poland', 'PL'),
(174, 'Portugal', 'PT'),
(175, 'Puerto Rico', 'PR'),
(176, 'Qatar', 'QA'),
(177, 'Reunion', 'RE'),
(178, 'Romania', 'RO'),
(179, 'Russian Federation', 'RU'),
(180, 'Saint Kitts and Nevis', 'KN'),
(181, 'Saint Lucia', 'LC'),
(182, 'Samoa', 'WS'),
(183, 'San Marino', 'SM'),
(184, 'Sao Tome and Principe', 'ST'),
(185, 'Saudi Arabia', 'SA'),
(186, 'Scotland', 'SCT'),
(187, 'Senegal', 'SN'),
(188, 'Seychelles', 'SC'),
(189, 'Sierra Leone', 'SL'),
(190, 'Singapore', 'SG'),
(191, 'Slovakia', 'SK'),
(192, 'Slovenia', 'SI'),
(193, 'Solomon Islands', 'SB'),
(194, 'Somalia', 'SO'),
(195, 'South Africa', 'ZA'),
(196, 'Spain', 'ES'),
(197, 'Sri Lanka', 'LK'),
(198, 'Saint Helena', 'SH'),
(199, 'Saint Pierre and Miquelon', 'PM'),
(200, 'Saint Vincent and the Grenadines', 'VC'),
(201, 'Sudan', 'SD'),
(202, 'Suriname', 'SR'),
(203, 'Svalbard and Jan Mayen', 'SJ'),
(204, 'Swaziland', 'SZ'),
(205, 'Sweden', 'SE'),
(206, 'Switzerland', 'CH'),
(207, 'Syrian Arab Republic', 'SY'),
(208, 'Taiwan', 'TW'),
(209, 'Tajikistan', 'TJ'),
(210, 'Tanzania, United Republic of', 'TZ'),
(211, 'Thailand', 'TH'),
(212, 'Togo', 'TG'),
(213, 'Tokelau', 'TK'),
(214, 'Tonga', 'TO'),
(215, 'Trinidad and Tobago', 'TT'),
(216, 'Tunisia', 'TN'),
(217, 'Turkey', 'TR'),
(218, 'Turkmenistan', 'TM'),
(219, 'Turks and Caicos Islands', 'TC'),
(220, 'Tuvalu', 'TV'),
(221, 'United States Minor Outlying Islands', 'UMI'),
(222, 'Uganda', 'UG'),
(223, 'Ukraine', 'UA'),
(224, 'United Arab Emirates', 'AE'),
(225, 'United Kingdom', 'GB'),
(226, 'United States', 'US'),
(227, 'Uruguay', 'UY'),
(228, 'Uzbekistan', 'UZ'),
(229, 'Vanuatu', 'VU'),
(230, 'Holy See (Vatican City State)', 'VA'),
(231, 'Venezuela', 'VE'),
(232, 'Vietnam', 'VN'),
(233, 'Virgin Islands, British', 'VG'),
(234, 'Virgin Islands, U.S.', 'VUUSA'),
(235, 'Wales', 'WLS'),
(236, 'Wallis and Futuna', 'WF'),
(237, 'Western Sahara', 'EH'),
(238, 'Yemen', 'YE'),
(240, 'Congo, Democratic Republic of the', 'CD'),
(241, 'Zambia', 'ZM'),
(242, 'Zimbabwe', 'ZW'),
(243, 'Worldwide', 'WW'),
(244, 'Serbia', 'RS'),
(245, 'Montenegro', 'ME'),
(246, 'Kosovo', 'KSV');

-- --------------------------------------------------------

--
-- Структура таблицы `loc_state`
--

CREATE TABLE `loc_state` (
  `state_id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(50) DEFAULT NULL,
  `country_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `loc_state`
--

INSERT INTO `loc_state` (`state_id`, `name`, `short_name`, `country_id`) VALUES
(1, '[Nation Wide]', 'nostate', 226),
(2, 'Alabama', 'AL', 226),
(3, 'Alaska', 'AK', 226),
(4, 'American Samoa', 'AS', 226),
(5, 'Arizona', 'AZ', 226),
(6, 'Arkansas', 'AR', 226),
(7, 'California', 'CA', 226),
(8, 'Colorado', 'CO', 226),
(9, 'Connecticut', 'CT', 226),
(10, 'Delaware', 'DE', 226),
(11, 'District of Columbia', 'DC', 226),
(12, 'Florida', 'FL', 226),
(13, 'Georgia', 'GA', 226),
(14, 'Guam', 'GU', 226),
(15, 'Hawaii', 'HI', 226),
(16, 'Idaho', 'ID', 226),
(17, 'Illinois', 'IL', 226),
(18, 'Indiana', 'IN', 226),
(19, 'Iowa', 'IA', 226),
(20, 'Kansas', 'KS', 226),
(21, 'Kentucky', 'KY', 226),
(22, 'Louisiana', 'LA', 226),
(23, 'Maine', 'ME', 226),
(24, 'Marshall Islands', 'MH', 226),
(25, 'Maryland', 'MD', 226),
(26, 'Massachusetts', 'MA', 226),
(27, 'Michigan', 'MI', 226),
(28, 'Minnesota', 'MN', 226),
(29, 'Mississippi', 'MS', 226),
(30, 'Missouri', 'MO', 226),
(31, 'Montana', 'MT', 226),
(32, 'Nebraska', 'NE', 226),
(33, 'Nevada', 'NV', 226),
(34, 'New Hampshire', 'NH', 226),
(35, 'New Jersey', 'NJ', 226),
(36, 'New Mexico', 'NM', 226),
(37, 'New York', 'NY', 226),
(38, 'North Carolina', 'NC', 226),
(39, 'North Dakota', 'ND', 226),
(40, 'Northern Mariana Islands', 'MP', 226),
(41, 'Ohio', 'OH', 226),
(42, 'Oklahoma', 'OK', 226),
(43, 'Oregon', 'OR', 226),
(44, 'Palau', 'PW', 226),
(45, 'Pennsylvania', 'PA', 226),
(46, 'Puerto Rico', 'PR', 226),
(47, 'Rhode Island', 'RI', 226),
(48, 'South Carolina', 'SC', 226),
(49, 'South Dakota', 'SD', 226),
(50, 'Tennessee', 'TN', 226),
(51, 'Texas', 'TX', 226),
(52, 'Utah', 'UT', 226),
(53, 'Vermont', 'VT', 226),
(54, 'Virgin Islands', 'VI', 226),
(55, 'Virginia', 'VA', 226),
(56, 'Washington', 'WA', 226),
(57, 'West Virginia', 'WV', 226),
(58, 'Wisconsin', 'WI', 226),
(59, 'Wyoming', 'WY', 226),
(60, '[Nation Wide]', 'nostate', 38),
(61, 'Alberta', 'AB', 38),
(62, 'British Columbia', 'BC', 38),
(63, 'Manitoba', 'MB', 38),
(64, 'New Brunswick', 'NB', 38),
(65, 'Newfoundland and Labrador', 'NL', 38),
(66, 'Northwest Territories', 'NT', 38),
(67, 'Nova Scotia', 'NS', 38),
(68, 'Nunavut', 'NU', 38),
(69, 'Ontario', 'ON', 38),
(70, 'Prince Edward Island', 'PE', 38),
(71, 'Quebec', 'QC', 38),
(72, 'Saskatchewan', 'SK', 38),
(73, 'Yukon Territory', 'YT', 38),
(75, 'Andaman and Nicobar Islands', 'AN', 98),
(76, 'Andhra Pradesh', 'AP', 98),
(77, 'Arunachal Pradesh', 'AR', 98),
(78, 'Assam', 'AS', 98),
(79, 'Bihar', 'BR', 98),
(80, 'Chandigarh', 'CH', 98),
(81, 'Chhattisgarh', 'CT', 98),
(82, 'Dadra and Nagar Haveli', 'DN', 98),
(83, 'Daman and Diu', 'DD', 98),
(84, 'Delhi', 'DL', 98),
(85, 'Goa', 'GA', 98),
(86, 'Gujarat', 'GJ', 98),
(87, 'Haryana', 'HR', 98),
(88, 'Himachal Pradesh', 'HP', 98),
(89, 'Jammu and Kashmir', 'JK', 98),
(90, 'Jharkhand', 'JH', 98),
(91, 'Karnataka', 'KA', 98),
(92, 'Kerala', 'KL', 98),
(93, 'Lakshadweep', 'LD', 98),
(94, 'Madhya Pradesh', 'MP', 98),
(95, 'Maharashtra', 'MH', 98),
(96, 'Manipur', 'MN', 98),
(97, 'Meghalaya', 'ML', 98),
(98, 'Mizoram', 'MZ', 98),
(99, 'Nagaland', 'NL', 98),
(100, 'Odisha', 'OR', 98),
(101, 'Puducherry', 'PY', 98),
(102, 'Punjab', 'PB', 98),
(103, 'Rajasthan', 'RJ', 98),
(104, 'Sikkim', 'SK', 98),
(105, 'Tamil Nadu', 'TN', 98),
(106, 'Telangana', 'TG', 98),
(107, 'Tripura', 'TR', 98),
(108, 'Uttar Pradesh', 'UP', 98),
(109, 'Uttarakhand', 'UT', 98),
(110, 'West Bengal', 'WB', 98);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_14_160428_create_catalogs_table', 1),
(7, '2022_09_14_164444_catalog_product', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `partner_locator`
--

CREATE TABLE `partner_locator` (
  `id` int UNSIGNED NOT NULL,
  `company` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `countries_covered` varchar(1000) NOT NULL,
  `states_covered` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `partner_locator`
--

INSERT INTO `partner_locator` (`id`, `company`, `status`, `logo`, `address`, `website`, `phone`, `countries_covered`, `states_covered`) VALUES
(1, 'Napole IT', 'Preferred Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-preferred.png', '8223 Molson Way, Liverpool, New York, United States, 13090', 'https://example1.com', '+777(315) 727-0303', '[\"US\"]', '[\"NY\"]'),
(2, '123 srl', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', 'Viale dell’Industria, 50,Jesi (AN), Italy, 60035', 'https://example2.com', '+739 0731 288064', '[\"IT\"]', '[\"\"]'),
(3, 'Entioatsing Inc', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', '10251 Trademark St Unit A, Rancho Cucamonga, California, United States, 91730', 'https://example3.com', '+777 909-257-7270', '[\"US\"]', '[\"CA\"]'),
(4, 'WeVlan', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', 'Via Ungaretti, 33, Montecorvino Pugliano (Sa), Italy, 84090', 'https://example1.com', '+7 7828 1776820', '[\"IT\"]', '[\"\"]'),
(5, 'ABA-IT', 'Premium Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-premium.png', '112 Bureaux de la Colline, Saint Cloud Cedex, France, 92213', 'https://example.com', '+33 1 84 76 00 60', '[\"FR\"]', '[\"\"]'),
(6, 'Sync', 'Preferred Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-preferred.png', 'Houston, Texas, United States', 'https://example2.com', '(713) 299-5999', '[\"US\"]', '[\"IL\",\"NY\",\"TX\"]'),
(7, 'LLP', 'Premium Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-premium.png', '107-111 Fleet Street, London, United Kingdom, EC4A 2AB', 'https://example.com', '+0773 111005', '[\"GB\"]', '[\"\"]'),
(8, 'BARTEA', 'Premium Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-premium.png', '58 RUE JEAN DUVERT, BLANQUEFORT, France, 33290', 'https://example3.com', '+33 5 24 07 99 99', '[\"FR\"]', '[\"\"]'),
(9, 'ITZafy', 'Preferred Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-preferred.png', '313 S Rohlwing Road, Addison, Illinois, United States, 60101', 'https://example.com', '+77(630) 396-6300', '[\"US\"]', '[\"IL\"]'),
(10, 'LELAYE55', 'Premium Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-premium.png', 'Avenida Dom Joao Segundo, Lote 42, Escritorio 602, Lisboa, Portugal, 1990-095', 'https://example1.com', '+771218248480', '[\"PT\"]', '[\"\"]'),
(11, 'Caribbean Products', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', 'P.O. Box 10015, Grand Cayman, Cayman Islands, KY1-1001', 'https://example.com', '+99(345) 916-2401', '[\"AW\",\"KY\",\"GD\",\"JM\",\"TT\"]', '[\"\"]'),
(12, 'Professional software', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', 'Via Roma, 39, Campodarsego (PD), Italy, 35011', 'https://example.com', '+7799657098', '[\"IT\"]', '[\"\"]'),
(13, 'Segreguards GmbH', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', 'Marktstrasse 10, Vallendar, Germany, 56179', 'https://example2.com', '+77 960 986 00', '[\"DE\"]', '[\"\"]'),
(14, 'SHUSDEC', 'Preferred Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-preferred.png', 'ul. Bociana 22A, Krakow, Poland, 31-231', 'https://example.com', '(812)481235091', '[\"PL\"]', '[\"\"]'),
(15, 'Local PC Ltd', 'Preferred Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-preferred.png', 'Unit 7 / 950 Ferry Road, Christchurch, New Zealand, 8023', 'https://example3.com', '+123 03 961 7286', '[\"NZ\"]', '[\"\"]'),
(16, 'Software & Services', 'Distributor', 'https://img.netwrix.com/partner_logos/standard-logo-distributor-new.png', 'Awans, Belgium', 'https://example2.com', '+7 (322) 204-0266', '[\"BE\"]', '[\"\"]'),
(17, 'Electron', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', '38251 S Groesbeck Hwy, Clinton Township,Michigan, United States, 48036', 'https://example1.com', '+1 (146) 757-1200 x5105', '[\"US\"]', '[\"MI\"]'),
(18, 'ICCD prods', 'Distributor', 'https://img.netwrix.com/partner_logos/standard-logo-distributor-new.png', '5694 Mission Center Road, Ste 602, San Diego, California, United States, 92108', 'https://example.com', '+77 (858) 618-3870', '[\"US\"]', '[\"CA\"]'),
(19, 'COMMAS-Techline', 'Elite Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-elite.png', 'ул. Яшина, д. 40, Хабаровск, Russian Federation', 'https://example.com', '+7 (4212) 99-46-99', '[\"RU\"]', '[\"\"]'),
(20, 'XIREL BG Ltd.', 'Distributor', 'https://img.netwrix.com/partner_logos/standard-logo-distributor-new.png', '1712 , Mladost 3, bl. 306, ent.2, Sofia, Bulgaria', 'https://example3.com', '+777888329043', '[\"BG\"]', '[\"\"]'),
(21, 'Seretyus', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', '760 NE Hazel Dell Ave, Vancouver, United States', 'https://example2.com', '+7772183883', '[\"US\"]', '[\"CA\",\"WA\"]'),
(22, 'Dimension Values', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', 'Bryanston, Botswana', 'https://example1.com', '+1236772510387', '[\"BW\"]', '[\"\"]'),
(23, 'DAD d.o.o.', 'Premium Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-premium.png', 'Tbilisijska 85, Ljubljana, Slovenia', 'https://example.com', '+98744790011', '[\"SI\"]', '[\"\"]'),
(24, 'KINSST', 'Distributor', 'https://img.netwrix.com/partner_logos/standard-logo-distributor-new.png', '17503 Burbank Blvd, Encino, United States', 'https://example3.com', '+7 855-4482178', '[\"US\"]', '[\"CA\"]'),
(25, 'Communications Russia', 'Distributor', 'https://img.netwrix.com/partner_logos/standard-logo-distributor-new.png', 'Трехпрудный пер., д. 9, стр. 2, БЦ Трехпрудный, оф. 303-305, Москва, Russian Federation', 'https://example.com', '+7 (312) 664-23-56', '[\"RU\"]', '[\"\"]'),
(26, 'Service Srl', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', 'Italy, 50145', 'https://example2.com', '+77 5155095', '[\"IT\"]', '[\"\"]'),
(27, 'Derersedia', 'Elite Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-elite.png', 'France', 'https://example3.com', '+77632908453', '[\"FR\"]', '[\"\"]'),
(28, 'Guringer GmbH', 'Elite Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-elite.png', 'Schulhausstrasse, Switzerland', 'https://example.com', '+7 (0)43 843 23 45', '[\"CH\"]', '[\"\"]'),
(29, 'HeavyMesh', 'Distributor', 'https://img.netwrix.com/partner_logos/standard-logo-distributor-new.png', '20 Camden St, Suite 200, Toronto, Ontario, Canada', 'https://example1.com', '(995) 64789675', '[\"CA\"]', '[\"ON\"]'),
(30, 'ABCSoft Voronezh', 'Distributor', 'https://img.netwrix.com/partner_logos/standard-logo-distributor-new.png', 'ул. Кривошеина, 9, Воронеж, Russian Federation', 'https://example.com', '+7 (812) 239-30-50', '[\"RU\"]', '[\"\"]'),
(31, 'Wise Srl', 'Elite Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-elite.png', 'Via della Borsa, 1/a, Castelfranco Veneto, Italy, 31033', 'https://example.com', '+777423723453', '[\"IT\"]', '[\"\"]'),
(32, 'Development Point', 'Distributor', 'https://img.netwrix.com/partner_logos/standard-logo-distributor-new.png', '17 Avenida 19-70 Zona 10 Edificio Torino, Nivel 12 Oficina 1207, Guatemala City, Guatemala', 'https://example2.com', '+456-2458-4288', '[\"CR\",\"GT\"]', '[\"\"]'),
(33, 'Pushton Technology', 'MSP Partner', 'https://img.netwrix.com/partner_logos/standard-logo-managed-service-provider-new.png', '23625 Commerce Park, #130, Beachwood, United States', 'https://example3.com', '+7 (216) 223-7016', '[\"US\"]', '[\"OH\"]'),
(34, 'SQLSS', 'Preferred Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-preferred.png', 'Unit 15 Pavillion Business Park, Leeds, United Kingdom', 'https://example.com', '+0345 459 1995', '[\"GB\"]', '[\"\"]'),
(35, 'Xirel High', 'Preferred Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-preferred.png', 'Mladost 1, bl. 54, Sofia, Bulgaria', 'https://example1.com', '+77 3396763', '[\"BG\"]', '[\"\"]'),
(36, '4B Tech, PT.', 'Elite Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-elite.png', 'Jl. Engku Putri, Komp. Ruko Purimas, blok A-7, Batam Center, Kepri-29400, Indonesia', 'https://example3.com', '+777127033322', '[\"ID\",\"SG\"]', '[\"\"]'),
(37, 'Checkpoint', 'Preferred Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-preferred.png', '4120 Rio Bravo Suite 215, El Paso, United States', 'https://example2.com', '(915)-581-9999', '[\"US\"]', '[\"TX\"]'),
(38, 'MMMD Srl', 'Preferred Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-preferred.png', 'Via P. Borsellino 2, Reggio Emilia, Italy', 'https://example1.com', '+1366646046', '[\"IT\"]', '[\"\"]'),
(39, 'Security Chile', 'Preferred Partner', 'https://img.netwrix.com/partner_logos/standard-logo-reseller-preferred.png', 'Lavalle 1675, piso 4 oficina 5, Buenos Aires, Argentina', 'https://example1.com', '+54 11 5039999', '[\"AR\"]', '[\"\"]');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'myapptoken', 'c1519c6887a7d37c971c4a737ef476f2d14cf38067a49cfe546fe091ca8f2f34', '[\"*\"]', NULL, NULL, '2022-10-24 12:55:13', '2022-10-24 12:55:13'),
(2, 'App\\Models\\User', 1, 'myapptoken', '07e5bcba8d3287919fad51ec21b324fd8df3776f2d0876a3c11a281eb802983e', '[\"*\"]', NULL, NULL, '2022-10-24 12:55:22', '2022-10-24 12:55:22');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alex', 'mikhalkevich@ya.ru', NULL, '$2y$10$61eMVVsYJ3DEqfPFXjKEM.enBVX9SwRAQTP0Zr.b4lXwiiVLLWFgS', NULL, '2022-10-24 12:55:13', '2022-10-24 12:55:13');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `loc_country`
--
ALTER TABLE `loc_country`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `name` (`name`),
  ADD KEY `short_name` (`short_name`);

--
-- Индексы таблицы `loc_state`
--
ALTER TABLE `loc_state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `short_name` (`short_name`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `partner_locator`
--
ALTER TABLE `partner_locator`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `loc_country`
--
ALTER TABLE `loc_country`
  MODIFY `country_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT для таблицы `loc_state`
--
ALTER TABLE `loc_state`
  MODIFY `state_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `partner_locator`
--
ALTER TABLE `partner_locator`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
