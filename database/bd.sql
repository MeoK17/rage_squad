-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 04 2020 г., 10:50
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `horizon`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE `accounts` (
  `socialclub` text NOT NULL,
  `login` varchar(155) NOT NULL,
  `hwid` varchar(155) NOT NULL,
  `redbucks` varchar(155) NOT NULL,
  `ip` varchar(155) NOT NULL,
  `character1` varchar(155) NOT NULL,
  `character2` varchar(155) NOT NULL,
  `character3` varchar(155) NOT NULL,
  `email` varchar(155) NOT NULL,
  `password` varchar(155) NOT NULL,
  `viplvl` varchar(155) NOT NULL,
  `vipdate` datetime NOT NULL,
  `promocodes` varchar(155) NOT NULL,
  `present` tinyint(1) NOT NULL DEFAULT 0,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accounts`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adminaccess`
--

CREATE TABLE `adminaccess` (
  `minrank` int(11) NOT NULL,
  `command` varchar(155) NOT NULL,
  `isadmin` tinyint(1) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `adminaccess`
--

INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'createstock', 1, 1);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'setleader', 1, 2);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'guns', 1, 3);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'giveammo', 1, 4);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'givemoney', 1, 5);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'vehc', 1, 6);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'hp', 1, 7);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'delacars', 1, 8);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'givereds', 1, 9);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'setdim', 1, 10);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'createmp', 1, 11);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'startmp', 1, 12);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'stopmp', 1, 13);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'stt', 1, 14);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'setbizmafia', 1, 15);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'takeoffbiz', 1, 16);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'skick', 1, 17);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'setcolour', 1, 18);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'fixcar', 1, 19);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'createsafe', 1, 20);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'allspawncar', 1, 21);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'save', 1, 22);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'ban', 1, 23);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'setfracveh', 1, 24);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'delfrac', 1, 25);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'startmatwars', 1, 26);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'setvehdirt', 1, 27);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'createbusiness', 1, 28);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'newfracveh', 1, 29);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (1, 'redname', 1, 30);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'setadmin', 1, 31);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'setadminrank', 1, 32);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'global', 1, 33);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'metp', 1, 34);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'demorgan', 1, 35);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (1, 'a', 1, 36);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'warn', 1, 37);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'unwarn', 1, 38);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'tp', 1, 39);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'admins', 1, 40);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'gm', 1, 41);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'sp', 1, 42);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'checkmoney', 1, 43);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (1, 'id', 1, 44);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'mute', 1, 45);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (1, 'asms', 1, 46);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (1, 'ans', 1, 47);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'fz', 1, 48);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'udemorgan', 1, 49);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'deladmin', 1, 50);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'delacar', 1, 51);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'setskin', 1, 52);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'agm', 1, 53);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'ufz', 1, 54);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'offban', 1, 55);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'newrentveh', 1, 56);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'newjobveh', 1, 57);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'sendcreator', 1, 58);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'delleader', 1, 59);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'ar', 1, 60);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'st', 1, 61);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'unmute', 1, 62);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'inv', 1, 63);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'oguns', 1, 64);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'rescar', 1, 65);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'giveclothes', 1, 66);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'delhouseowner', 1, 67);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'checkprop', 1, 68);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'deletebusiness', 1, 69);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'afuel', 1, 70);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'setviplvl', 1, 71);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'sw', 1, 72);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'deljob', 1, 73);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'stop', 1, 74);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'createunloadpoint', 1, 75);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'pa', 1, 76);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'sa', 1, 77);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'stats', 1, 78);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'delad', 1, 79);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'offjail', 1, 80);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'offwarn', 1, 81);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'removeobj', 1, 82);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'giveexp', 1, 83);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'svh', 1, 84);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'expmultiplier', 1, 85);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'payday', 1, 86);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'newsimcard', 1, 87);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'fixgovbizprices', 1, 88);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'housetypeprice', 1, 89);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'kick', 1, 90);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'kill', 1, 91);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'svm', 1, 92);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'changename', 1, 93);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'givelic', 1, 94);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'tpcar', 1, 95);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'lsn', 1, 96);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'changestock', 1, 97);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'mtp', 1, 98);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'tpc', 1, 99);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'offdelfrac', 1, 100);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'removesafe', 1, 101);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'paydaymultiplier', 1, 102);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'setproductbyindex', 1, 103);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'deleteproducts', 1, 104);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'changebizprice', 1, 105);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'delhouseowner', 1, 106);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'vehhash', 1, 107);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'veh', 1, 108);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'newvnum', 1, 109);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'admins', 1, 110);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'stop', 1, 111);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'revive', 1, 112);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'getbonus', 1, 113);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'lastbonus', 1, 114);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'setbonus', 1, 115);
-- --------------------------------------------------------

--
-- Структура таблицы `advertised`
--

CREATE TABLE `advertised` (
  `ID` int(12) UNSIGNED NOT NULL,
  `Author` varchar(40) NOT NULL,
  `AuthorSIM` int(11) NOT NULL,
  `AD` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Editor` varchar(40) DEFAULT NULL,
  `EditedAD` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Opened` datetime NOT NULL,
  `Closed` datetime DEFAULT NULL,
  `Status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `alcoclubs`
--

CREATE TABLE `alcoclubs` (
  `id` int(155) NOT NULL,
  `alco1` int(155) NOT NULL,
  `alco2` int(155) NOT NULL,
  `alco3` int(155) NOT NULL,
  `pricemod` varchar(155) NOT NULL,
  `mats` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `alcoclubs`
--

INSERT INTO `alcoclubs` (`id`, `alco1`, `alco2`, `alco3`, `pricemod`, `mats`) VALUES
(10, 421, 312, 220, '0', 1000),
(11, 0, 0, 0, '0', 995),
(12, 485, 388, 297, '0', 1000),
(13, 0, 0, 0, '0', 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `banned`
--

CREATE TABLE `banned` (
  `uuid` int(155) NOT NULL,
  `name` text NOT NULL,
  `account` text NOT NULL,
  `time` varchar(155) NOT NULL,
  `until` varchar(155) NOT NULL,
  `ishard` bigint(155) NOT NULL,
  `ip` varchar(155) NOT NULL,
  `socialclub` text NOT NULL,
  `hwid` varchar(155) NOT NULL,
  `reason` text NOT NULL,
  `byadmin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `businesses`
--

CREATE TABLE `businesses` (
  `id` int(255) NOT NULL,
  `owner` text NOT NULL,
  `sellprice` text NOT NULL,
  `type` text NOT NULL,
  `products` text NOT NULL,
  `enterpoint` text NOT NULL,
  `unloadpoint` text NOT NULL,
  `money` text NOT NULL,
  `mafia` text NOT NULL,
  `orders` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `businesses`
--

INSERT INTO `businesses` (`id`, `owner`, `sellprice`, `type`, `products`, `enterpoint`, `unloadpoint`, `money`, `mafia`, `orders`) VALUES
(1, 'Государство', '250000', '1', '[{\"Price\":4,\"Lefts\":76732,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-70.06739,\"y\":-1760.14441,\"z\":28.4140377}', '{\"x\":-73.90815,\"y\":-1773.15356,\"z\":28.778429}', '239700', '10', '[]'),
(2, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-48.1351662,\"y\":-1757.58716,\"z\":28.3009987}', '{\"x\":-30.6712265,\"y\":-137.504532,\"z\":56.980423}', '368581', '10', '[{\"Name\":\"Фонарик\",\"Amount\":5},{\"Name\":\"Молоток\",\"Amount\":5}]'),
(3, 'Государство', '250000', '1', '[{\"Price\":5,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":265.066132,\"y\":-1263.33813,\"z\":28.1729412}', '{\"x\":264.819122,\"y\":-1283.881,\"z\":29.1734142}', '975718', '10', '[]'),
(4, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":796813,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":175.203369,\"y\":-1561.85132,\"z\":28.14208}', '{\"x\":155.525452,\"y\":-1572.7688,\"z\":29.2454815}', '804284', '10', '[]'),
(5, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":25.7490425,\"y\":-1346.60315,\"z\":28.3770275}', '{\"x\":18.9526539,\"y\":-1354.33655,\"z\":29.30266}', '41002', '10', '[]'),
(6, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":8608,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":422.415771,\"y\":-809.7023,\"z\":28.3711281}', '{\"x\":411.7006,\"y\":-808.452637,\"z\":29.1457481}', '858783', '10', '[]'),
(7, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":6559,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":false}]', '{\"x\":77.58358,\"y\":-1389.2688,\"z\":28.2561417}', '{\"x\":97.56552,\"y\":-1402.75879,\"z\":29.1981}', '895471', '10', '[]'),
(8, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":9793,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-319.703217,\"y\":-1472.16211,\"z\":29.4286861}', '{\"x\":-298.1518,\"y\":6234.973,\"z\":31.4381218}', '467400', '10', '[]'),
(12, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":554,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":475,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":9521,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":810.1498,\"y\":-2157.24146,\"z\":28.49901}', '{\"x\":816.1721,\"y\":-2128.54248,\"z\":29.2923584}', '537600', '10', '[]'),
(13, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":475,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":9920,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":21.9912987,\"y\":-1106.91724,\"z\":28.6770229}', '{\"x\":14.400857,\"y\":-1127.73718,\"z\":28.7759323}', '964885', '11', '[]'),
(14, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":465,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":10000,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":842.3952,\"y\":-1033.68677,\"z\":27.0748482}', '{\"x\":847.8642,\"y\":-1007.35028,\"z\":28.3418388}', '409350', '10', '[]'),
(15, 'Государство', '250000', '1', '[{\"Price\":3,\"Lefts\":9941,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":818.8285,\"y\":-1027.56165,\"z\":25.2843132}', '{\"x\":819.497131,\"y\":-1011.059,\"z\":26.155447}', '600683', '10', '[]'),
(16, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":9996,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1136.03308,\"y\":-982.2533,\"z\":45.29586}', '{\"x\":1150.572,\"y\":-980.6595,\"z\":46.1583}', '505910', '10', '[{\"Name\":\"Фонарик\",\"Amount\":5},{\"Name\":\"Молоток\",\"Amount\":5}]'),
(17, 'Государство', '250000', '1', '[{\"Price\":7,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":1208.88245,\"y\":-1402.42517,\"z\":34.10415}', '{\"x\":1220.52832,\"y\":-1392.94568,\"z\":35.1502571}', '892650', '10', '[{\"Name\":\"Бензин\",\"Amount\":9000}]'),
(18, 'Государство', '400000', '9', '[{\"Price\":100,\"Lefts\":9718,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Татуировки\",\"Ordered\":false}]', '{\"x\":1321.72876,\"y\":-1653.29919,\"z\":51.1552963}', '{\"x\":1316.91248,\"y\":-1639.098,\"z\":52.375042}', '47621', '10', '[]'),
(19, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":0,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":125.596184,\"y\":-223.745468,\"z\":53.43743}', '{\"x\":132.016327,\"y\":-201.47261,\"z\":54.4956436}', '173617', '11', '[]'),
(20, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":25,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":-163.4802,\"y\":-302.8575,\"z\":38.6132851}', '{\"x\":-149.489761,\"y\":-309.134644,\"z\":38.4286957}', '714210', '10', '[]'),
(22, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":3665,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":-709.8169,\"y\":-153.047455,\"z\":36.2951164}', '{\"x\":-726.959534,\"y\":-163.092346,\"z\":37.08786}', '526612', '10', '[]'),
(23, 'Государство', '3800000', '12', '[{\"Price\":100,\"Lefts\":576,\"Autosell\":10000,\"Name\":\"Запчасти\",\"Ordered\":true}]', '{\"x\":-361.602478,\"y\":-132.873581,\"z\":37.560154}', '{\"x\":-379.471039,\"y\":-119.772125,\"z\":38.68728}', '392248', '11', '[]'),
(24, 'Государство', '3800000', '12', '[{\"Price\":95,\"Lefts\":93984,\"Autosell\":0,\"Name\":\"Запчасти\",\"Ordered\":true}]', '{\"x\":-205.807541,\"y\":-1306.96777,\"z\":30.16265}', '{\"x\":-193.220123,\"y\":-1304.82678,\"z\":31.342062}', '141134', '11', '[]'),
(25, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":496,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":544,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":545,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":537,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":456,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":289,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":541,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":374.3244,\"y\":326.75058,\"z\":102.446358}', '{\"x\":375.335571,\"y\":315.834351,\"z\":103.2855}', '713340', '11', '[]'),
(26, 'Государство', '250000', '10', '[{\"Price\":100,\"Lefts\":9983,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Парики\",\"Ordered\":false}]', '{\"x\":-30.54569,\"y\":-149.898636,\"z\":55.95653}', '{\"x\":-32.1384468,\"y\":-139.677719,\"z\":57.08342}', '862433', '11', '[]'),
(27, 'Государство', '250000', '10', '[{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Парики\",\"Ordered\":false}]', '{\"x\":1209.66443,\"y\":-470.760559,\"z\":65.0879745}', '{\"x\":1131.78943,\"y\":-3267.703,\"z\":5.2302804}', '834908', '11', '[{\"Name\":\"Расходники\",\"Amount\":80}]'),
(28, 'Государство', '250000', '0', '[{\"Price\":225,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":250,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":225,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9990,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":220,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1163.24963,\"y\":-323.301544,\"z\":68.0850754}', '{\"x\":1156.75317,\"y\":-345.325043,\"z\":67.4118347}', '93345', '11', '[]'),
(30, 'Государство', '250000', '1', '[{\"Price\":6,\"Lefts\":78879,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":1180.82849,\"y\":-334.415222,\"z\":68.05686}', '{\"x\":1195.16626,\"y\":-331.459473,\"z\":69.1170349}', '344214', '11', '[]'),
(31, 'Государство', '250000', '1', '[{\"Price\":4,\"Lefts\":9057,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":620.685852,\"y\":268.866882,\"z\":101.969383}', '{\"x\":618.141235,\"y\":254.147079,\"z\":103.1056}', '624506', '11', '[]'),
(33, 'Государство', '1500000', '3', '[{\"Price\":482000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Comet2\",\"Ordered\":true},{\"Price\":500000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Coquette\",\"Ordered\":true},{\"Price\":495500,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Ninef\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"Ninef2\",\"Ordered\":true},{\"Price\":552000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Jester\",\"Ordered\":true},{\"Price\":455000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Elegy2\",\"Ordered\":true},{\"Price\":525000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Infernus\",\"Ordered\":true},{\"Price\":565000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Carbonizzare\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"Dubsta2\",\"Ordered\":true},{\"Price\":560000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Baller3\",\"Ordered\":true},{\"Price\":485000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Huntley\",\"Ordered\":true},{\"Price\":820000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Superd\",\"Ordered\":true},{\"Price\":720000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Windsor\",\"Ordered\":true},{\"Price\":482000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"BestiaGTS\",\"Ordered\":true},{\"Price\":835000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Banshee2\",\"Ordered\":true},{\"Price\":920000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"EntityXF\",\"Ordered\":true},{\"Price\":945000,\"Lefts\":540,\"Autosell\":0,\"Name\":\"Neon\",\"Ordered\":true},{\"Price\":880000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Jester2\",\"Ordered\":true},{\"Price\":1400000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"Turismor\",\"Ordered\":true},{\"Price\":1320000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Penetrator\",\"Ordered\":true},{\"Price\":765000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"Omnis\",\"Ordered\":true},{\"Price\":2400000,\"Lefts\":544,\"Autosell\":0,\"Name\":\"Reaper\",\"Ordered\":true},{\"Price\":1800000,\"Lefts\":549,\"Autosell\":0,\"Name\":\"Italigtb2\",\"Ordered\":true},{\"Price\":3000000,\"Lefts\":542,\"Autosell\":0,\"Name\":\"Xa21\",\"Ordered\":true},{\"Price\":3500000,\"Lefts\":547,\"Autosell\":0,\"Name\":\"Osiris\",\"Ordered\":true},{\"Price\":4400000,\"Lefts\":541,\"Autosell\":0,\"Name\":\"Pfister811\",\"Ordered\":true},{\"Price\":5500000,\"Lefts\":544,\"Autosell\":0,\"Name\":\"Zentorno\",\"Ordered\":true}]', '{\"x\":-804.3674,\"y\":-224.580078,\"z\":36.1057549}', '{\"x\":-811.55304,\"y\":-228.504929,\"z\":37.2433434}', '664576', '11', '[]'),
(34, 'Государство', '1500000', '3', '[{\"Price\":482000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"\",\"Ordered\":true},{\"Price\":500000,\"Lefts\":547,\"Autosell\":0,\"Name\":\"Coquette\",\"Ordered\":true},{\"Price\":495500,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Ninef\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"Ninef2\",\"Ordered\":true},{\"Price\":552000,\"Lefts\":545,\"Autosell\":0,\"Name\":\"Jester\",\"Ordered\":true},{\"Price\":455000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Elegy2\",\"Ordered\":true},{\"Price\":525000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Infernus\",\"Ordered\":true},{\"Price\":565000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Carbonizzare\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"Dubsta2\",\"Ordered\":true},{\"Price\":560000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"Baller3\",\"Ordered\":true},{\"Price\":485000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Huntley\",\"Ordered\":true},{\"Price\":820000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Superd\",\"Ordered\":true},{\"Price\":720000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Windsor\",\"Ordered\":true},{\"Price\":482000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"BestiaGTS\",\"Ordered\":true},{\"Price\":835000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Banshee2\",\"Ordered\":true},{\"Price\":920000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"EntityXF\",\"Ordered\":true},{\"Price\":945000,\"Lefts\":540,\"Autosell\":0,\"Name\":\"Neon\",\"Ordered\":true},{\"Price\":880000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Jester2\",\"Ordered\":true},{\"Price\":1400000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"Turismor\",\"Ordered\":true},{\"Price\":1320000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Penetrator\",\"Ordered\":true},{\"Price\":765000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"Omnis\",\"Ordered\":true},{\"Price\":2400000,\"Lefts\":543,\"Autosell\":0,\"Name\":\"Reaper\",\"Ordered\":true},{\"Price\":1800000,\"Lefts\":549,\"Autosell\":0,\"Name\":\"Italigtb2\",\"Ordered\":true},{\"Price\":3000000,\"Lefts\":542,\"Autosell\":0,\"Name\":\"Xa21\",\"Ordered\":true},{\"Price\":3500000,\"Lefts\":542,\"Autosell\":0,\"Name\":\"Osiris\",\"Ordered\":true},{\"Price\":4400000,\"Lefts\":541,\"Autosell\":0,\"Name\":\"Pfister811\",\"Ordered\":true},{\"Price\":5500000,\"Lefts\":543,\"Autosell\":0,\"Name\":\"Zentorno\",\"Ordered\":true}]', '{\"x\":-640.2429,\"y\":297.010376,\"z\":81.3361}', '{\"x\":-638.574951,\"y\":284.024841,\"z\":81.42186}', '579844', '11', '[]'),
(35, 'Государство', '680000', '4', '[{\"Price\":7500,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado3\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado4\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Emperor2\",\"Ordered\":true},{\"Price\":8250,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo2\",\"Ordered\":true},{\"Price\":8500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Regina\",\"Ordered\":true},{\"Price\":8750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ingot\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Emperor\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Picador\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Minivan\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista2\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Manana\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Dilettante\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asea\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Glendale\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Surge\",\"Ordered\":true},{\"Price\":33750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Primo\",\"Ordered\":true},{\"Price\":35000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stanier\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stratum\",\"Ordered\":true},{\"Price\":38750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Tampa\",\"Ordered\":true},{\"Price\":39500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Prairie\",\"Ordered\":true},{\"Price\":39000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Radi\",\"Ordered\":true},{\"Price\":41500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista\",\"Ordered\":true},{\"Price\":42500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stalion\",\"Ordered\":true},{\"Price\":47000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asterope\",\"Ordered\":true},{\"Price\":49750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Washington\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Premier\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Intruder\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ruiner\",\"Ordered\":true},{\"Price\":52500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Oracle\",\"Ordered\":true},{\"Price\":62500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Phoenix\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Gauntlet\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Buffalo\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"RancherXL\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Seminole\",\"Ordered\":true},{\"Price\":125000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Baller\",\"Ordered\":true},{\"Price\":137500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Landstalker\",\"Ordered\":true},{\"Price\":150000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Cavalcade\",\"Ordered\":true},{\"Price\":152500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"BJXL\",\"Ordered\":true},{\"Price\":175000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Patriot\",\"Ordered\":true},{\"Price\":75000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Bison3\",\"Ordered\":true},{\"Price\":85000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Issi2\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Panto\",\"Ordered\":true}]', '{\"x\":11.1838675,\"y\":-1668.51208,\"z\":28.1402664}', '{\"x\":1131.78943,\"y\":-3267.703,\"z\":5.2302804}', '910669', '11', '[]'),
(36, 'Государство', '680000', '4', '[{\"Price\":7500,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado3\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado4\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Emperor2\",\"Ordered\":true},{\"Price\":8250,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo2\",\"Ordered\":true},{\"Price\":8500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Regina\",\"Ordered\":true},{\"Price\":8750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ingot\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Emperor\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Picador\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Minivan\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista2\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Manana\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Dilettante\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asea\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Glendale\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Surge\",\"Ordered\":true},{\"Price\":33750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Primo\",\"Ordered\":true},{\"Price\":35000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stanier\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stratum\",\"Ordered\":true},{\"Price\":38750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Tampa\",\"Ordered\":true},{\"Price\":39500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Prairie\",\"Ordered\":true},{\"Price\":39000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Radi\",\"Ordered\":true},{\"Price\":41500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista\",\"Ordered\":true},{\"Price\":42500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stalion\",\"Ordered\":true},{\"Price\":47000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asterope\",\"Ordered\":true},{\"Price\":49750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Washington\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Premier\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Intruder\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ruiner\",\"Ordered\":true},{\"Price\":52500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Oracle\",\"Ordered\":true},{\"Price\":62500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Phoenix\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Gauntlet\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Buffalo\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"RancherXL\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Seminole\",\"Ordered\":true},{\"Price\":125000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Baller\",\"Ordered\":true},{\"Price\":137500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Landstalker\",\"Ordered\":true},{\"Price\":150000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Cavalcade\",\"Ordered\":true},{\"Price\":152500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"BJXL\",\"Ordered\":true},{\"Price\":175000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Patriot\",\"Ordered\":true},{\"Price\":75000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Bison3\",\"Ordered\":true},{\"Price\":85000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Issi2\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Panto\",\"Ordered\":true}]', '{\"x\":-51.3517036,\"y\":6360.021,\"z\":30.3317814}', '{\"x\":-40.0485535,\"y\":6356.36475,\"z\":31.3234921}', '996891', '11', '[]'),
(37, 'Государство', '680000', '4', '[{\"Price\":7500,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado3\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado4\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Emperor2\",\"Ordered\":true},{\"Price\":8250,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo2\",\"Ordered\":true},{\"Price\":8500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Regina\",\"Ordered\":true},{\"Price\":8750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ingot\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Emperor\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Picador\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Minivan\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista2\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Manana\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Dilettante\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asea\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Glendale\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Surge\",\"Ordered\":true},{\"Price\":33750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Primo\",\"Ordered\":true},{\"Price\":35000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stanier\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stratum\",\"Ordered\":true},{\"Price\":38750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Tampa\",\"Ordered\":true},{\"Price\":39500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Prairie\",\"Ordered\":true},{\"Price\":39000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Radi\",\"Ordered\":true},{\"Price\":41500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista\",\"Ordered\":true},{\"Price\":42500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stalion\",\"Ordered\":true},{\"Price\":47000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asterope\",\"Ordered\":true},{\"Price\":49750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Washington\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Premier\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Intruder\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ruiner\",\"Ordered\":true},{\"Price\":52500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Oracle\",\"Ordered\":true},{\"Price\":62500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Phoenix\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Gauntlet\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Buffalo\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"RancherXL\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Seminole\",\"Ordered\":true},{\"Price\":125000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Baller\",\"Ordered\":true},{\"Price\":137500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Landstalker\",\"Ordered\":true},{\"Price\":150000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Cavalcade\",\"Ordered\":true},{\"Price\":152500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"BJXL\",\"Ordered\":true},{\"Price\":175000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Patriot\",\"Ordered\":true},{\"Price\":75000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Bison3\",\"Ordered\":true},{\"Price\":85000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Issi2\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Panto\",\"Ordered\":true}]', '{\"x\":-69.42376,\"y\":62.67527,\"z\":70.77328}', '{\"x\":-77.5058441,\"y\":54.6940536,\"z\":71.84757}', '328613', '11', '[]'),
(39, 'Государство', '1100000', '2', '[{\"Price\":1000000,\"Lefts\":545,\"Autosell\":0,\"Name\":\"gtr\",\"Ordered\":true},{\"Price\":135000,\"Lefts\":547,\"Autosell\":0,\"Name\":\"Sultan\",\"Ordered\":true},{\"Price\":960000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"SultanRS\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Kuruma\",\"Ordered\":true},{\"Price\":111000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Fugitive\",\"Ordered\":true},{\"Price\":114000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Tailgater\",\"Ordered\":true},{\"Price\":135000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Sentinel\",\"Ordered\":true},{\"Price\":144000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"F620\",\"Ordered\":true},{\"Price\":219000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Schwarzer\",\"Ordered\":true},{\"Price\":225000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Exemplar\",\"Ordered\":true},{\"Price\":249000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Felon\",\"Ordered\":true},{\"Price\":240000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Schafter2\",\"Ordered\":true},{\"Price\":270000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Jackal\",\"Ordered\":true},{\"Price\":300000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Oracle2\",\"Ordered\":true},{\"Price\":360000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Surano\",\"Ordered\":true},{\"Price\":390000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Zion\",\"Ordered\":true},{\"Price\":450000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Dominator\",\"Ordered\":true},{\"Price\":270000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"FQ2\",\"Ordered\":true},{\"Price\":315000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Gresley\",\"Ordered\":true},{\"Price\":330000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Serrano\",\"Ordered\":true},{\"Price\":390000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Dubsta\",\"Ordered\":true},{\"Price\":405000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Rocoto\",\"Ordered\":true},{\"Price\":450000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Cavalcade2\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"XLS\",\"Ordered\":true},{\"Price\":540000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Baller2\",\"Ordered\":true},{\"Price\":840000,\"Lefts\":539,\"Autosell\":0,\"Name\":\"Elegy\",\"Ordered\":true},{\"Price\":810000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Banshee\",\"Ordered\":true},{\"Price\":714000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Massacro2\",\"Ordered\":true},{\"Price\":750000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"GP1\",\"Ordered\":true}]', '{\"x\":-38.7776527,\"y\":-1109.83826,\"z\":25.3179569}', '{\"x\":-62.8620644,\"y\":-1108.12427,\"z\":26.3592052}', '792270', '11', '[]'),
(40, 'Государство', '1100000', '2', '[{\"Price\":135000,\"Lefts\":548,\"Autosell\":0,\"Name\":\"Sultan\",\"Ordered\":true},{\"Price\":960000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"SultanRS\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Kuruma\",\"Ordered\":true},{\"Price\":111000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Fugitive\",\"Ordered\":true},{\"Price\":114000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Tailgater\",\"Ordered\":true},{\"Price\":135000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Sentinel\",\"Ordered\":true},{\"Price\":144000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"F620\",\"Ordered\":true},{\"Price\":219000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Schwarzer\",\"Ordered\":true},{\"Price\":225000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Exemplar\",\"Ordered\":true},{\"Price\":249000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Felon\",\"Ordered\":true},{\"Price\":240000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Schafter2\",\"Ordered\":true},{\"Price\":270000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Jackal\",\"Ordered\":true},{\"Price\":300000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Oracle2\",\"Ordered\":true},{\"Price\":360000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Surano\",\"Ordered\":true},{\"Price\":390000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Zion\",\"Ordered\":true},{\"Price\":450000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Dominator\",\"Ordered\":true},{\"Price\":270000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"FQ2\",\"Ordered\":true},{\"Price\":315000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Gresley\",\"Ordered\":true},{\"Price\":330000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Serrano\",\"Ordered\":true},{\"Price\":390000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Dubsta\",\"Ordered\":true},{\"Price\":405000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Rocoto\",\"Ordered\":true},{\"Price\":450000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Cavalcade2\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"XLS\",\"Ordered\":true},{\"Price\":540000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Baller2\",\"Ordered\":true},{\"Price\":840000,\"Lefts\":539,\"Autosell\":0,\"Name\":\"Elegy\",\"Ordered\":true},{\"Price\":810000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Banshee\",\"Ordered\":true},{\"Price\":714000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Massacro2\",\"Ordered\":true},{\"Price\":750000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"GP1\",\"Ordered\":true}]', '{\"x\":1174.66174,\"y\":2648.34155,\"z\":36.6761627}', '{\"x\":1177.24927,\"y\":2660.06152,\"z\":37.9990158}', '7929', '11', '[]'),
(41, 'Государство', '380000', '11', '[{\"Price\":100,\"Lefts\":9992,\"Autosell\":0,\"Name\":\"Маски\",\"Ordered\":false}]', '{\"x\":-1337.7655,\"y\":-1277.31848,\"z\":3.762885}', '{\"x\":-1336.95764,\"y\":-1295.47168,\"z\":4.83847332}', '193645', '11', '[]'),
(42, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":498,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":50,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":422,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-3243.16064,\"y\":1001.66724,\"z\":11.705678}', '{\"x\":-3230.602,\"y\":1003.31091,\"z\":12.3125191}', '493466', '11', '[]'),
(43, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-3040.22681,\"y\":586.1577,\"z\":6.77249432}', '{\"x\":-3030.126,\"y\":592.1546,\"z\":7.76843357}', '262647', '12', '[{\"Name\":\"Фонарик\",\"Amount\":5},{\"Name\":\"Молоток\",\"Amount\":5}]'),
(44, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":49,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1729.538,\"y\":6415.213,\"z\":33.9172173}', '{\"x\":1723.4718,\"y\":6402.528,\"z\":34.2770844}', '335785', '12', '[]'),
(45, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":30,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":535,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":2678.31543,\"y\":3281.311,\"z\":54.12112}', '{\"x\":2691.84326,\"y\":3284.796,\"z\":55.2405243}', '213493', '12', '[]'),
(46, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":544,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":30,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":537,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":2556.57617,\"y\":382.462036,\"z\":107.502892}', '{\"x\":2575.692,\"y\":398.397552,\"z\":108.447441}', '745219', '12', '[]'),
(47, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":546,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":49,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":527,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1961.18811,\"y\":3741.19775,\"z\":31.2237186}', '{\"x\":1969.81616,\"y\":3731.47314,\"z\":32.3546753}', '401096', '12', '[]'),
(48, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":46,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":403,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1698.844,\"y\":4924.11035,\"z\":40.943634}', '{\"x\":1690.6936,\"y\":4937.692,\"z\":42.1078644}', '265811', '12', '[]'),
(49, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9996,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9989,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":547.0276,\"y\":2670.162,\"z\":41.0364571}', '{\"x\":542.0344,\"y\":2681.44727,\"z\":42.2523956}', '610466', '12', '[{\"Name\":\"Фонарик\",\"Amount\":5},{\"Name\":\"Молоток\",\"Amount\":5}]'),
(50, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":547,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":50,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":511,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":491,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":548,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1166.41,\"y\":2709.18457,\"z\":37.03764}', '{\"x\":1165.99817,\"y\":2692.4563,\"z\":37.90284}', '604606', '12', '[]'),
(51, 'Государство', '250000', '0', '[{\"Price\":230,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":260,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":230,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":230,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":140,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":70,\"Lefts\":9995,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":120,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":235,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":235,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-1223.89966,\"y\":-906.8769,\"z\":11.2062941}', '{\"x\":-1229.94629,\"y\":-892.973,\"z\":12.3492374}', '510748', '12', '[]'),
(52, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-707.604431,\"y\":-913.824341,\"z\":18.0955734}', '{\"x\":-722.5427,\"y\":-921.1238,\"z\":19.0140419}', '867727', '12', '[{\"Name\":\"Фонарик\",\"Amount\":5},{\"Name\":\"Молоток\",\"Amount\":5}]'),
(53, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9996,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9899,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-1821.29138,\"y\":792.9603,\"z\":137.001221}', '{\"x\":-1802.89734,\"y\":778.2964,\"z\":137.039749}', '800434', '12', '[]'),
(54, 'Государство', '250000', '0', '[{\"Price\":210,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":993,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":77.884964,\"y\":-226.15773,\"z\":53.52209}', '{\"x\":86.8339,\"y\":-205.151733,\"z\":54.49134}', '11610', '12', '[]'),
(55, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":9914,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":1205.74158,\"y\":2658.04688,\"z\":36.7042923}', '{\"x\":1202.79211,\"y\":2670.93042,\"z\":37.75307}', '299737', '12', '[]'),
(56, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":79897,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":2581.088,\"y\":361.911,\"z\":107.348686}', '{\"x\":2579.80762,\"y\":337.9975,\"z\":108.446136}', '468774', '12', '[]'),
(57, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":9644,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-525.634338,\"y\":-1211.07727,\"z\":17.0511761}', '{\"x\":-542.3996,\"y\":-1197.64807,\"z\":18.0142727}', '63989', '12', '[]'),
(58, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":9474,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-1436.56543,\"y\":-276.918335,\"z\":45.0811539}', '{\"x\":-1455.40515,\"y\":-287.4856,\"z\":46.53601}', '648965', '12', '[]'),
(59, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":9954,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-2096.324,\"y\":-316.9588,\"z\":11.90341}', '{\"x\":-2096.202,\"y\":-349.548218,\"z\":12.808816}', '128310', '12', '[]'),
(60, 'Государство', '250000', '1', '[{\"Price\":7,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-1801.248,\"y\":804.5142,\"z\":137.347733}', '{\"x\":-1784.113,\"y\":785.7257,\"z\":138.3047}', '145634', '12', '[]'),
(61, 'Государство', '250000', '1', '[{\"Price\":4,\"Lefts\":9845,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-2555.043,\"y\":2334.29272,\"z\":31.92724}', '{\"x\":-2531.66382,\"y\":2332.90332,\"z\":33.05685}', '753153', '12', '[{\"Name\":\"Бензин\",\"Amount\":5000}]'),
(62, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":80000,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":179.974442,\"y\":6602.88428,\"z\":30.7481575}', '{\"x\":179.712082,\"y\":6580.05273,\"z\":31.84439}', '842316', '11', '[]'),
(63, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":79726,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":1702.22632,\"y\":6420.794,\"z\":31.50728}', '{\"x\":1686.82349,\"y\":6404.84131,\"z\":31.5433521}', '333778', '12', '[]'),
(64, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":79741,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":2682.836,\"y\":3262.572,\"z\":54.1205063}', '{\"x\":2675.53125,\"y\":3246.5293,\"z\":55.2263527}', '627989', '12', '[]');
INSERT INTO `businesses` (`id`, `owner`, `sellprice`, `type`, `products`, `enterpoint`, `unloadpoint`, `money`, `mafia`, `orders`) VALUES
(65, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":475,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":10000,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":-1117.67993,\"y\":2698.89551,\"z\":17.434124}', '{\"x\":-1103.45422,\"y\":2685.62061,\"z\":19.2382488}', '484926', '13', '[]'),
(66, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":475,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":10000,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":-330.25827,\"y\":6084.55664,\"z\":30.334753}', '{\"x\":-316.978149,\"y\":6067.50537,\"z\":31.1962566}', '209512', '13', '[]'),
(67, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":474,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":8891,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":-3171.90869,\"y\":1088.22827,\"z\":19.7187176}', '{\"x\":-3156.62256,\"y\":1079.93408,\"z\":20.69209}', '33434', '13', '[]'),
(68, 'Государство', '250000', '0', '[{\"Price\":210,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9984,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-1487.093,\"y\":-379.434662,\"z\":39.04345}', '{\"x\":-1509.184,\"y\":-388.679657,\"z\":40.737072}', '913004', '12', '[]'),
(69, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":472,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":546,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":1701,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":-662.0225,\"y\":-935.5671,\"z\":20.7092056}', '{\"x\":-663.1217,\"y\":-953.027344,\"z\":21.3285446}', '141732', '13', '[]'),
(70, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":475,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":10000,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":1693.81116,\"y\":3760.32178,\"z\":33.57493}', '{\"x\":1705.18591,\"y\":3746.067,\"z\":33.7958946}', '434198', '13', '[]'),
(71, 'Государство', '500000', '7', '[{\"Price\":80,\"Lefts\":706,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":false}]', '{\"x\":1199.62939,\"y\":2707.944,\"z\":37.10261}', '{\"x\":1188.3988,\"y\":2693.28955,\"z\":37.8783646}', '165995', '13', '[]'),
(72, 'Государство', '500000', '1', '[{\"Price\":5,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":2005.18347,\"y\":3774.22021,\"z\":31.27714}', '{\"x\":2028.83838,\"y\":3780.91113,\"z\":32.3173676}', '696957', '13', '[]'),
(74, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":13154,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":1.29105687,\"y\":6511.752,\"z\":30.7578468}', '{\"x\":-5.73671246,\"y\":6522.363,\"z\":31.2750511}', '957483', '13', '[]'),
(75, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":10000,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":-1097.49084,\"y\":2709.87573,\"z\":17.98746}', '{\"x\":-1088.38953,\"y\":2696.223,\"z\":20.1692028}', '182811', '13', '[]'),
(76, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":33910,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":1691.59583,\"y\":4819.584,\"z\":40.9430542}', '{\"x\":1672.18628,\"y\":4817.8125,\"z\":42.0242653}', '1290', '13', '[]'),
(77, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":9868,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":false}]', '{\"x\":-819.035339,\"y\":-1074.36621,\"z\":10.2079821}', '{\"x\":-810.1715,\"y\":-1091.70642,\"z\":10.7681923}', '821503', '13', '[]'),
(78, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":6882,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":-1450.672,\"y\":-237.27858,\"z\":48.68984}', '{\"x\":-1461.93188,\"y\":-227.497162,\"z\":49.27594}', '92010', '13', '[]'),
(79, 'Государство', '500000', '7', '[{\"Price\":150,\"Lefts\":7361,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":-1192.24036,\"y\":-768.2272,\"z\":16.1999226}', '{\"x\":-1226.274,\"y\":-776.5295,\"z\":18.2160454}', '354814', '13', '[]'),
(85, 'Государство', '400000', '9', '[{\"Price\":100,\"Lefts\":4058,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Татуировки\",\"Ordered\":false}]', '{\"x\":322.338684,\"y\":181.6579,\"z\":102.459709}', '{\"x\":315.215332,\"y\":165.3087,\"z\":103.708687}', '776722', '13', '[]'),
(86, 'Государство', '400000', '9', '[{\"Price\":100,\"Lefts\":3342,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":5000,\"Autosell\":0,\"Name\":\"Татуировки\",\"Ordered\":false}]', '{\"x\":1864.00378,\"y\":3749.57935,\"z\":31.9118214}', '{\"x\":1851.36121,\"y\":3742.94214,\"z\":33.12282}', '532613', '13', '[]'),
(87, 'Государство', '400000', '9', '[{\"Price\":100,\"Lefts\":795,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":5000,\"Autosell\":0,\"Name\":\"Татуировки\",\"Ordered\":false}]', '{\"x\":-292.9138,\"y\":6198.12061,\"z\":30.3602352}', '{\"x\":-283.419434,\"y\":6202.01367,\"z\":31.3185139}', '652494', '10', '[]'),
(88, 'Государство', '250000', '10', '[{\"Price\":100,\"Lefts\":981,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":1000,\"Autosell\":0,\"Name\":\"Парики\",\"Ordered\":false}]', '{\"x\":-279.4777,\"y\":6231.512,\"z\":30.5755081}', '{\"x\":1131.78943,\"y\":-3267.703,\"z\":5.2302804}', '817639', '10', '[]'),
(89, 'Государство', '250000', '10', '[{\"Price\":100,\"Lefts\":985,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":1000,\"Autosell\":0,\"Name\":\"Парики\",\"Ordered\":false}]', '{\"x\":1932.00745,\"y\":3726.64453,\"z\":31.72441}', '{\"x\":1131.78943,\"y\":-3267.703,\"z\":5.2302804}', '284537', '11', '[]'),
(90, 'Государство', '380000', '11', '[{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Маски\",\"Ordered\":false}]', '{\"x\":-2966.78564,\"y\":452.043549,\"z\":14.1804485}', '{\"x\":-2983.12329,\"y\":449.038818,\"z\":15.0970907}', '608389', '13', '[]'),
(91, 'Государство', '600000', '8', '[{\"Price\":80,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":60,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":-1180.76526,\"y\":-882.3682,\"z\":12.7150126}', '{\"x\":-1172.39868,\"y\":-879.6908,\"z\":14.084898}', '376556', '-1', '[{\"Name\":\"Бургер\",\"Amount\":25}]'),
(92, 'Государство', '600000', '8', '[{\"Price\":100,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":60,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":-1546.58679,\"y\":-466.92807,\"z\":35.07086}', '{\"x\":-1547.23694,\"y\":-479.3586,\"z\":35.35823}', '606630', '-1', '[]'),
(93, 'Государство', '600000', '8', '[{\"Price\":100,\"Lefts\":9927,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9981,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":9974,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":30,\"Lefts\":9983,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":98.2156754,\"y\":283.9292,\"z\":108.856255}', '{\"x\":79.60029,\"y\":246.732956,\"z\":109.093285}', '410448', '-1', '[{\"Name\":\"eCola\",\"Amount\":10},{\"Name\":\"Sprunk\",\"Amount\":10}]'),
(94, 'Государство', '600000', '8', '[{\"Price\":110,\"Lefts\":9984,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":70,\"Lefts\":9985,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":35,\"Lefts\":9989,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":33,\"Lefts\":9992,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":-137.866013,\"y\":-256.778748,\"z\":42.474968}', '{\"x\":-127.275681,\"y\":-253.6882,\"z\":43.8664742}', '887619', '-1', '[{\"Name\":\"Бургер\",\"Amount\":25},{\"Name\":\"Хот-Дог\",\"Amount\":10},{\"Name\":\"Сэндвич\",\"Amount\":10},{\"Name\":\"eCola\",\"Amount\":10},{\"Name\":\"Sprunk\",\"Amount\":10}]'),
(95, 'Государство', '600000', '8', '[{\"Price\":105,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":70,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":35,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":-185.414932,\"y\":-1427.50049,\"z\":30.3610268}', '{\"x\":-193.35997,\"y\":-1424.19238,\"z\":31.3378029}', '106169', '12', '[{\"Name\":\"Сэндвич\",\"Amount\":30},{\"Name\":\"Sprunk\",\"Amount\":30},{\"Name\":\"eCola\",\"Amount\":20},{\"Name\":\"Хот-Дог\",\"Amount\":60}]'),
(97, 'Государство', '600000', '8', '[{\"Price\":120,\"Lefts\":9994,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":70,\"Lefts\":9995,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":35,\"Lefts\":9994,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":24,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":35,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":165.850418,\"y\":-1452.01038,\"z\":28.12164}', '{\"x\":163.360168,\"y\":-1462.042,\"z\":29.1416073}', '857063', '11', '[]'),
(98, 'Государство', '600000', '8', '[{\"Price\":120,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":70,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":35,\"Lefts\":9991,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":24,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":35,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":144.777908,\"y\":-1461.338,\"z\":28.0216179}', '{\"x\":128.916626,\"y\":-1449.40149,\"z\":29.2926311}', '814340', '-1', '[]'),
(99, 'Государство', '600000', '8', '[{\"Price\":100,\"Lefts\":10192,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":false},{\"Price\":60,\"Lefts\":9994,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":30,\"Lefts\":9994,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":169.230347,\"y\":-1633.71667,\"z\":28.1716671}', '{\"x\":158.623856,\"y\":-1622.20532,\"z\":29.2667027}', '335887', '-1', '[{\"Name\":\"Хот-Дог\",\"Amount\":10},{\"Name\":\"Сэндвич\",\"Amount\":10},{\"Name\":\"eCola\",\"Amount\":10},{\"Name\":\"Sprunk\",\"Amount\":10}]'),
(100, 'Государство', '250000', '13', '[{\"Price\":200,\"Lefts\":11191,\"Autosell\":0,\"Name\":\"Средство для мытья\",\"Ordered\":false}]', '{\"x\":-699.734741,\"y\":-932.436951,\"z\":17.893898}', '{\"x\":-707.1299,\"y\":-948.920044,\"z\":19.1610222}', '320320', '-1', '[]'),
(101, 'Государство', '200000', '13', '[{\"Price\":200,\"Lefts\":11199,\"Autosell\":0,\"Name\":\"Средство для мытья\",\"Ordered\":false}]', '{\"x\":104.208336,\"y\":6622.299,\"z\":30.7085018}', '{\"x\":116.525826,\"y\":6611.232,\"z\":31.8753357}', '690068', '-1', '[]'),
(102, 'Государство', '300000', '13', '[{\"Price\":200,\"Lefts\":11200,\"Autosell\":0,\"Name\":\"Средство для мытья\",\"Ordered\":false}]', '{\"x\":1182.44141,\"y\":2638.496,\"z\":36.675045}', '{\"x\":1182.70361,\"y\":2660.33374,\"z\":37.9147224}', '927792', '-1', '[]'),
(103, 'Государство', '400000', '9', '[{\"Price\":100,\"Lefts\":100,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":false},{\"Price\":100,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Татуировки\",\"Ordered\":false}]', '{\"x\":-1155.3573,\"y\":-1427.2318,\"z\":3.8344622}', '{\"x\":0.0,\"y\":0.0,\"z\":0.0}', '282122', '-1', '[]'),
(104, 'Государство', '250000', '11', '[{\"Price\":100,\"Lefts\":47,\"Autosell\":0,\"Name\":\"Маски\",\"Ordered\":false}]', '{\"x\":-1483.1567,\"y\":-226.71503,\"z\":48.879322}', '{\"x\":0.0,\"y\":0.0,\"z\":0.0}', '202414', '-1', '[]'),
(105, 'Государство', '250000', '15', '[{\"Price\":1200,\"Lefts\":996,\"Autosell\":1,\"Name\":\"Удочка\",\"Ordered\":true},{\"Price\":110,\"Lefts\":941,\"Autosell\":1,\"Name\":\"Наживка\",\"Ordered\":true}]', '{\"x\":-1654.8417,\"y\":-1036.9357,\"z\":12.032769}', '{\"x\":314.557373,\"y\":-1151.36816,\"z\":29.2919159}', '769338', '11', '[{\"Name\":\"Удочка\",\"Amount\":10},{\"Name\":\"Наживка\",\"Amount\":10},{\"Name\":\"Улучшенная удочка\",\"Amount\":1},{\"Name\":\"Удочка MK2\",\"Amount\":1}]'),
(106, 'Государство', '5000000', '16', '[{\"Price\":13,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Корюшка\",\"Ordered\":false},{\"Price\":16,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Кунджа\",\"Ordered\":false},{\"Price\":10,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Лосось\",\"Ordered\":false},{\"Price\":4,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Окунь\",\"Ordered\":false},{\"Price\":5,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Осётр\",\"Ordered\":false},{\"Price\":12,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Скат\",\"Ordered\":false},{\"Price\":18,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Тунец\",\"Ordered\":false},{\"Price\":5,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Угорь\",\"Ordered\":false},{\"Price\":15,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Чёрный амур\",\"Ordered\":false},{\"Price\":6,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Щука\",\"Ordered\":false}]', '{\"x\":1953.49231,\"y\":3842.458,\"z\":31.061697}', '{\"x\":0.0,\"y\":0.0,\"z\":0.0}', '815214', '-1', '[]');
INSERT INTO `businesses` (`id`, `owner`, `sellprice`, `type`, `products`, `enterpoint`, `unloadpoint`, `money`, `mafia`, `orders`) VALUES (107, 'Государство', '100000000', '17', '[{"Price":300,"Lefts":10000,"Autosell":0,"Name":"deluxo","Ordered":true}]', '{"x":-177.17743,"y":-1158.7092,"z":22.693691}', '{"x":-177.17743,"y":-1158.7092,"z":22.693691}', '0', '-1', '[]');
-- --------------------------------------------------------

--
-- Структура таблицы `characters`
--

CREATE TABLE `characters` (
  `uuid` bigint(255) NOT NULL,
  `personid` text NOT NULL,
  `adminlvl` int(255) NOT NULL,
  `money` int(255) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `fraction` int(255) NOT NULL,
  `fractionlvl` int(255) NOT NULL,
  `warns` int(255) NOT NULL,
  `biz` text NOT NULL,
  `hotel` int(255) NOT NULL,
  `hotelleft` int(255) NOT NULL,
  `sim` int(255) NOT NULL,
  `PetName` text DEFAULT NULL,
  `eat` int(255) NOT NULL,
  `water` int(255) NOT NULL,
  `demorgan` int(255) NOT NULL,
  `arrest` int(255) NOT NULL,
  `unwarn` datetime NOT NULL,
  `unmute` int(255) NOT NULL,
  `bank` int(255) NOT NULL,
  `wanted` text DEFAULT NULL,
  `lvl` int(255) NOT NULL,
  `exp` int(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `health` int(255) NOT NULL,
  `armor` int(255) NOT NULL,
  `licenses` text NOT NULL,
  `lastveh` text NOT NULL,
  `onduty` tinyint(1) NOT NULL,
  `lasthour` int(255) NOT NULL,
  `lastbonus` int(255) NOT NULL,
  `isbonused` int(255) NOT NULL,
  `contacts` text NOT NULL,
  `achiev` text NOT NULL,
  `createdate` datetime NOT NULL,
  `pos` text NOT NULL,
  `work` int(255) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `characters`
--


-- --------------------------------------------------------

--
-- Структура таблицы `customization`
--

CREATE TABLE `customization` (
  `uuid` bigint(255) NOT NULL,
  `gender` text NOT NULL,
  `parents` text NOT NULL,
  `features` text NOT NULL,
  `appearance` text NOT NULL,
  `hair` text NOT NULL,
  `clothes` text NOT NULL,
  `accessory` text NOT NULL,
  `tattoos` text NOT NULL,
  `eyebrowc` text NOT NULL,
  `beardc` text NOT NULL,
  `eyec` text NOT NULL,
  `blushc` text NOT NULL,
  `lipstickc` text NOT NULL,
  `chesthairc` text NOT NULL,
  `iscreated` tinyint(1) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customization`
--


-- --------------------------------------------------------

--
-- Структура таблицы `eventcfg`
--

CREATE TABLE `eventcfg` (
  `RewardLimit` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `e_candidates`
--

CREATE TABLE `e_candidates` (
  `ID` int(11) NOT NULL,
  `Votes` text NOT NULL,
  `Election` text NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `e_points`
--

CREATE TABLE `e_points` (
  `Election` int(155) NOT NULL,
  `X` varchar(11) NOT NULL,
  `Y` varchar(11) NOT NULL,
  `Z` varchar(11) NOT NULL,
  `Dimension` int(11) NOT NULL,
  `Opened` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `e_voters`
--

CREATE TABLE `e_voters` (
  `Election` int(155) NOT NULL,
  `Login` text NOT NULL,
  `TimeVoted` text NOT NULL,
  `VotedFor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fractionaccess`
--

CREATE TABLE `fractionaccess` (
  `idkey` int(155) NOT NULL,
  `fraction` int(155) NOT NULL,
  `commands` text NOT NULL,
  `weapons` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `fractionaccess`
--

INSERT INTO `fractionaccess` (`idkey`, `fraction`, `commands`, `weapons`) VALUES
(1, 1, '{\"takedrugs\":6,\"takemedkits\":8,\"takestock\":10,\"openweaponstock\":10,\"takemats\":10,\"capture\":10,\"takemoney\":11,\"invite\":10,\"setrank\":11,\"openstock\":10,\"closestock\":10,\"respawn\":12,\"uninvite\":10,\"buydrugs\":8}', '{\"Medkits\":8}'),
(2, 2, '{\"takedrugs\":6,\"takemedkits\":8,\"takestock\":10,\"openweaponstock\":10,\"takemats\":10,\"capture\":10,\"takemoney\":11,\"invite\":10,\"setrank\":11,\"openstock\":10,\"closestock\":10,\"respawn\":12,\"uninvite\":10,\"buydrugs\":8}', '{\"Medkits\":8}'),
(3, 3, '{\"takedrugs\":6,\"takemedkits\":8,\"takestock\":10,\"openweaponstock\":10,\"takemats\":10,\"capture\":10,\"takemoney\":11,\"invite\":10,\"setrank\":11,\"openstock\":10,\"closestock\":10,\"respawn\":12,\"uninvite\":10,\"buydrugs\":8}', '{\"Medkits\":8}'),
(4, 4, '{\"takedrugs\":6,\"takemedkits\":8,\"takestock\":10,\"openweaponstock\":10,\"takemats\":10,\"capture\":10,\"takemoney\":11,\"invite\":10,\"setrank\":11,\"openstock\":10,\"closestock\":10,\"respawn\":12,\"uninvite\":10,\"buydrugs\":8}', '{\"Medkits\":8}'),
(5, 5, '{\"takedrugs\":6,\"takemedkits\":8,\"takestock\":10,\"openweaponstock\":10,\"takemats\":10,\"capture\":10,\"takemoney\":11,\"invite\":10,\"setrank\":11,\"openstock\":10,\"closestock\":10,\"respawn\":12,\"uninvite\":10,\"buydrugs\":8}', '{\"Medkits\":8}'),
(6, 6, '{\"openweaponstock\":4,\"follow\":4,\"cuff\":4,\"uncuff\":4,\"dep\":6,\"gov\":7,\"invite\":7,\"uninvite\":7,\"setrank\":7,\"openstock\":7,\"closestock\":7,\"respawn\":8,\"opensafedoor\":8,\"takemedkits\":4}', '{\"stungun\":3,\"pistol\":4,\"PistolAmmo\":4,\"armor\":4,\"MedKits\":4,\"AdvancedRifle\":5,\"RiflesAmmo\":5,\"gusenberg\":20,\"SMGAmmo\":6,\"Medkits\":4}'),
(7, 7, '{\"dep\":12,\"gov\":12,\"pd\":1,\"takeguns\":2,\"openweaponstock\":2,\"cuff\":2,\"uncuff\":2,\"ticket\":2,\"pull\":2,\"incar\":2,\"su\":2,\"arrest\":2,\"rfp\":2,\"follow\":2,\"takegunlic\":5,\"warg\":9,\"givegunlic\":9,\"invite\":13,\"uninvite\":13,\"setrank\":13,\"openstock\":13,\"closestock\":13,\"respawn\":14}', '{\"Nightstick\":1,\"Pistol\":2,\"PistolAmmo\":2,\"armor\":2,\"Medkits\":2,\"StunGun\":2,\"PumpShotgun\":4,\"ShotgunsAmmo\":4,\"SMG\":5,\"SMGAmmo\":5,\"HeavyShotgun\":13,\"RiflesAmmo\":5,\"CarabineRifle\":5}'),
(8, 8, '{\"dep\":9,\"gov\":9,\"heal\":1,\"ems\":2,\"givemedlic\":4,\"setrank\":9,\"invite\":9,\"uninvite\":9,\"openstock\":11,\"closestock\":11,\"respawn\":11}', '{\"Medkits\":2,\"StunGun\":3}'),
(9, 9, '{\"dep\":11,\"gov\":12,\"pd\":1,\"takeguns\":2,\"cuff\":2,\"uncuff\":2,\"ticket\":2,\"pull\":2,\"incar\":2,\"su\":2,\"arrest\":2,\"rfp\":2,\"follow\":2,\"openweaponstock\":3,\"takegunlic\":6,\"warg\":10,\"invite\":13,\"uninvite\":13,\"setrank\":13,\"openstock\":13,\"closestock\":13,\"respawn\":14}', '{\"StunGun\":1,\"Pistol\":2,\"PistolAmmo\":2,\"armor\":2,\"CombatPDW\":3,\"SMGAmmo\":3,\"AdvancedRifle\":4,\"RiflesAmmo\":4,\"HeavySniper\":13,\"SniperAmmo\":13,\"Medkits\":2}'),
(10, 10, '{\"buydrugs\":8,\"cuff\":2,\"uncuff\":2,\"pocket\":2,\"follow\":2,\"incar\":2,\"pull\":2,\"takedrugs\":3,\"takemedkits\":4,\"openweaponstock\":5,\"takemats\":5,\"bizwar\":7,\"takemoney\":8,\"takestock\":8,\"setrank\":9,\"invite\":9,\"uninvite\":9,\"openstock\":9,\"closestock\":9,\"respawn\":10,\"takebiz\":8}', '{\"Medkits\":4}'),
(11, 11, '{\"buydrugs\":8,\"cuff\":2,\"uncuff\":2,\"pocket\":2,\"takebiz\":8,\"follow\":2,\"incar\":2,\"pull\":2,\"takedrugs\":3,\"takemedkits\":4,\"openweaponstock\":5,\"takemats\":5,\"bizwar\":7,\"takemoney\":8,\"takestock\":8,\"setrank\":9,\"invite\":9,\"uninvite\":9,\"openstock\":9,\"closestock\":9,\"respawn\":10}', '{\"Medkits\":4}'),
(12, 12, '{\"buydrugs\":8,\"cuff\":2,\"uncuff\":2,\"pocket\":2,\"follow\":2,\"incar\":2,\"pull\":2,\"takedrugs\":3,\"takemedkits\":4,\"openweaponstock\":5,\"takemats\":5,\"bizwar\":7,\"takemoney\":8,\"takestock\":8,\"setrank\":9,\"invite\":9,\"uninvite\":9,\"openstock\":9,\"closestock\":9,\"respawn\":10,\"takebiz\":8}', '{\"Medkits\":4}'),
(13, 13, '{\"buydrugs\":8,\"cuff\":2,\"uncuff\":2,\"pocket\":2,\"follow\":2,\"incar\":2,\"pull\":2,\"takedrugs\":3,\"takemedkits\":4,\"openweaponstock\":5,\"takemats\":5,\"bizwar\":7,\"takemoney\":8,\"takestock\":8,\"setrank\":9,\"invite\":9,\"uninvite\":9,\"openstock\":9,\"closestock\":9,\"respawn\":10,\"takebiz\":8}', '{\"Medkits\":4}'),
(14, 14, '{\"dep\":12,\"gov\":13,\"openweaponstock\":5,\"cuff\":8,\"follow\":8,\"incar\":8,\"pull\":8,\"invite\":14,\"uninvite\":14,\"setrank\":14,\"openstock\":14,\"closestock\":14,\"respawn\":15,\"givearmylic\":14}', '{\"pistol\":2,\"PistolAmmo\":2,\"carabine\":3,\"RiflesAmmo\":3,\"Medkits\":3,\"armor\":3,\"SMGAmmo\":13,\"CombatMG\":14}');

INSERT INTO `fractionaccess` (`idkey`, `fraction`, `commands`, `weapons`) VALUES (18, 18, '{"invite": "13",  "uninvite": "13",  "setrank": "13",  "ticket": "1",  "arrest": "1",  "rfp": "1",  "follow": "1",  "su": "1",  "incar": "1",  "pull": "1",  "warg": "12",  "openweaponstock": "12",  "openstock": "12",  "givegunlic": "5",  "takegunlic": "5",  "cuff": "1",  "dep": "1",  "gov": "1"}', '{"sheriffgun":"1", "armor":"1", "Medkits":"1", "PistolAmmo":"1", "SMGAmmo":"1", "ShotgunsAmmo":"1", "RiflesAmmo":"1"}');

-- --------------------------------------------------------

--
-- Структура таблицы `fractionranks`
--

CREATE TABLE `fractionranks` (
  `idkey` int(155) NOT NULL,
  `fraction` int(155) NOT NULL,
  `rank` int(155) NOT NULL,
  `payday` int(155) NOT NULL,
  `name` text NOT NULL,
  `clothesm` text NOT NULL,
  `clothesf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `fractionranks`
--

INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES
(8, 1, 1, 100, 'Outsider', '', ''),
(9, 1, 2, 200, 'Playa', '', ''),
(10, 1, 3, 300, 'Killa', '', ''),
(11, 1, 4, 400, 'B.A.D', '', ''),
(12, 1, 5, 500, 'Gangster', '', ''),
(13, 1, 6, 600, 'De King', '', ''),
(14, 1, 7, 700, 'O.G', '', ''),
(15, 1, 8, 800, 'Hommie', '', ''),
(16, 1, 9, 900, 'Sweet', '', ''),
(17, 1, 10, 1000, 'Legend', '', ''),
(18, 1, 11, 1100, 'Mad Dog', '', ''),
(19, 1, 12, 1200, 'Big Daddy', '', ''),
(26, 2, 1, 100, 'Freak', '', ''),
(27, 2, 2, 200, 'Little Nigga', '', ''),
(28, 2, 3, 300, 'Homeboy', '', ''),
(29, 2, 4, 400, 'Mature', '', ''),
(30, 2, 5, 500, 'Gun Bro', '', ''),
(31, 2, 6, 600, 'Gunsta', '', ''),
(32, 2, 7, 700, 'Hustle', '', ''),
(33, 2, 8, 800, 'Young Gangsta', '', ''),
(34, 2, 9, 900, 'Wiseman', '', ''),
(35, 2, 10, 1000, 'Beast', '', ''),
(36, 2, 11, 1100, 'O.G', '', ''),
(37, 2, 12, 1200, 'Daddy', '', ''),
(44, 3, 1, 100, 'Novito', '', ''),
(45, 3, 2, 200, 'Ordinario', '', ''),
(46, 3, 3, 300, 'Locale', '', ''),
(47, 3, 4, 400, 'Verification', '', ''),
(48, 3, 5, 500, 'Sangre Joven', '', ''),
(49, 3, 6, 600, 'Murda', '', ''),
(50, 3, 7, 700, 'Assessino', '', ''),
(51, 3, 8, 800, 'Latino King', '', ''),
(52, 3, 9, 900, 'Bandito', '', ''),
(53, 3, 10, 1000, 'Definido', '', ''),
(54, 3, 11, 1100, 'De Confianza', '', ''),
(55, 3, 12, 1200, 'Padrino', '', ''),
(62, 4, 1, 100, 'Nadie', '', ''),
(63, 4, 2, 200, 'Seguro', '', ''),
(64, 4, 3, 300, 'Artesano', '', ''),
(65, 4, 4, 400, 'Allegado', '', ''),
(66, 4, 5, 500, 'Caza', '', ''),
(67, 4, 6, 600, 'Soldado', '', ''),
(68, 4, 7, 700, 'J.', '', ''),
(69, 4, 8, 800, 'Ayudante', '', ''),
(70, 4, 9, 900, 'Mentor', '', ''),
(71, 4, 10, 1000, 'Explosion', '', ''),
(72, 4, 11, 1100, 'Maestro', '', ''),
(73, 4, 12, 1200, 'El Padre', '', ''),
(80, 5, 1, 100, 'Fresh Meat', '', ''),
(81, 5, 2, 200, 'Young Blood', '', ''),
(82, 5, 3, 300, 'Mature Blood', '', ''),
(83, 5, 4, 400, 'Gangster Blood', '', ''),
(84, 5, 5, 500, 'Kill Blood', '', ''),
(85, 5, 6, 600, 'Beef', '', ''),
(86, 5, 7, 700, 'Looker Blood', '', ''),
(87, 5, 8, 800, 'Confirmed ', '', ''),
(88, 5, 9, 900, 'Little Bos', '', ''),
(89, 5, 10, 1000, 'Big Blood Boss', '', ''),
(90, 5, 11, 1100, 'Rex', '', ''),
(91, 5, 12, 1200, 'King of Blood', '', ''),
(94, 6, 1, 350, 'Trainee', 'city_1', 'city_1'),
(95, 6, 2, 450, 'Jurist', 'city_1', 'city_1'),
(96, 6, 3, 600, 'Secretary', 'city_1', 'city_1'),
(97, 6, 4, 750, 'Officer', 'city_4', 'city_4'),
(98, 6, 5, 1000, 'Junior Lawyer', 'city_2', 'city_2'),
(99, 6, 6, 1200, 'Secretary Assistant', 'city_2', 'city_2'),
(100, 6, 7, 1300, 'Agent', 'city_5', 'city_5'),
(101, 6, 8, 1450, 'Lawyer', 'city_3', 'city_3'),
(102, 6, 9, 1550, 'HR Manager', 'city_7', 'city_7'),
(103, 6, 10, 1750, 'Special Agent', 'city_5', 'city_5'),
(104, 6, 11, 1900, 'Prosecutor', 'city_7', 'city_7'),
(105, 6, 12, 2100, 'Event Manager', 'city_3', 'city_3'),
(106, 6, 13, 2250, 'Head', 'city_6', 'city_6'),
(107, 6, 14, 2500, 'Judge', 'city_5', 'city_5'),
(108, 6, 15, 2800, 'Supreme Judge', 'city_6', 'city_6'),
(109, 6, 16, 3100, 'Chief of Staff', 'city_7', 'city_7'),
(110, 6, 17, 3450, 'Director', 'city_6', 'city_6'),
(111, 6, 18, 3650, 'Advisor', 'city_8', 'city_8'),
(112, 6, 19, 3800, 'Mayor', 'city_8', 'city_8'),
(113, 6, 20, 4000, 'Minister', 'city_9', 'city_9'),
(114, 6, 21, 4500, 'Governor', 'city_9', 'city_9'),
(116, 7, 1, 100, 'Cadet', 'police_1', 'police_1'),
(117, 7, 2, 200, 'Officer I', 'police_1', 'police_1'),
(118, 7, 3, 500, 'Officer II', 'police_2', 'police_2'),
(119, 7, 4, 700, 'Senior Officer', 'police_2', 'police_2'),
(120, 7, 5, 850, 'Corporal', 'police_3', 'police_3'),
(121, 7, 6, 900, 'Sergeant I', 'police_4', 'police_4'),
(122, 7, 7, 1150, 'Sergeant II', 'police_5', 'police_5'),
(123, 7, 8, 1350, 'Lieutenant', 'police_6', 'police_6'),
(124, 7, 9, 1500, 'Captain', 'police_6', 'police_6'),
(125, 7, 10, 1650, 'Major', 'police_7', 'police_7'),
(126, 7, 11, 1850, 'Colonel', 'police_7', 'police_7'),
(127, 7, 12, 2000, 'Commander', 'police_8', 'police_8'),
(128, 7, 13, 2250, 'Deputy Chief', 'police_8', 'police_8'),
(129, 7, 14, 2500, 'Chief', 'police_8', 'police_8'),
(134, 8, 1, 300, 'Intern', 'ems_1', 'ems_1'),
(135, 8, 2, 650, 'Medical Worker', 'ems_1', 'ems_1'),
(136, 8, 3, 850, 'Assistant of Doctor', 'ems_1', 'ems_1'),
(137, 8, 4, 1100, 'Doctor', 'ems_2', 'ems_2'),
(138, 8, 5, 1350, 'Narcology', 'ems_2', 'ems_2'),
(139, 8, 6, 1450, 'Superintendent', 'ems_3', 'ems_3'),
(140, 8, 7, 1600, 'Specialist', 'ems_3', 'ems_3'),
(141, 8, 8, 1750, 'Deputy Chief of Department', 'ems_3', 'ems_3'),
(142, 8, 9, 1850, 'Chief Department', 'ems_4', 'ems_4'),
(143, 8, 10, 2000, 'Deputy Head Physician', 'ems_4', 'ems_4'),
(144, 8, 11, 2250, 'Head Physician', 'ems_4', 'ems_4'),
(152, 9, 1, 350, 'Trainee', 'city_6', 'city_6'),
(153, 9, 2, 500, 'Bureau Security', 'city_6', 'city_6'),
(154, 9, 3, 650, 'Junior Agent', 'city_6', 'city_6'),
(155, 9, 4, 750, 'Agent', 'city_6', 'city_6'),
(156, 9, 5, 900, 'Secret Agent', 'city_6', 'city_6'),
(157, 9, 6, 1200, 'Special Agent', 'city_6', 'city_6'),
(158, 9, 7, 1350, 'Head of Agency', 'city_6', 'city_6'),
(159, 9, 8, 1550, 'Agent NATs. Securities', 'city_6', 'city_6'),
(160, 9, 9, 1700, 'Deputy Chief of Department', 'city_6', 'city_6'),
(161, 9, 10, 1950, 'Chief of the Department', 'city_5', 'city_5'),
(162, 9, 11, 2350, 'Head of Department', 'city_5', 'city_5'),
(163, 9, 12, 2550, 'Inspector', 'city_5', 'city_5'),
(164, 9, 13, 2850, 'Deputy of Director', 'city_5', 'city_5'),
(165, 9, 14, 3100, 'Director', 'city_5', 'city_5'),
(170, 10, 1, 100, 'Novicio', '', ''),
(171, 10, 2, 200, 'Assosiato', '', ''),
(172, 10, 3, 300, 'Combattente', '', ''),
(173, 10, 4, 400, 'Soldato', '', ''),
(174, 10, 5, 500, 'Man-O-War', '', ''),
(175, 10, 6, 600, 'Sotto-Kapo', '', ''),
(176, 10, 7, 700, 'Kapo', '', ''),
(177, 10, 8, 800, 'Little Boss', '', ''),
(178, 10, 9, 900, 'Consigliere', '', ''),
(179, 10, 10, 1000, 'Don', '', ''),
(188, 11, 1, 100, 'Шнырь', '', ''),
(189, 11, 2, 200, 'Босяк', '', ''),
(190, 11, 3, 300, 'Бык', '', ''),
(191, 11, 4, 400, 'Барыга', '', ''),
(192, 11, 5, 500, 'Блатной', '', ''),
(193, 11, 6, 600, 'Фраер', '', ''),
(194, 11, 7, 700, 'Браток', '', ''),
(195, 11, 8, 800, 'Пахан', '', ''),
(196, 11, 9, 900, 'Авторитет', '', ''),
(197, 11, 10, 1000, 'Вор в законе', '', ''),
(206, 12, 1, 100, 'Cyatay', '', ''),
(207, 12, 2, 200, 'Kodai', '', ''),
(208, 12, 3, 300, 'Syatai', '', ''),
(209, 12, 4, 400, 'Fuku-Hombute', '', ''),
(210, 12, 5, 500, 'Wakagasira', '', ''),
(211, 12, 6, 600, 'So-Hombute', '', ''),
(212, 12, 7, 700, 'Kambu', '', ''),
(213, 12, 8, 800, 'Saiko-Komon', '', ''),
(214, 12, 9, 900, 'Kumite', '', ''),
(215, 12, 10, 1000, 'Oyadzi', '', ''),
(224, 13, 1, 100, 'Ержан', '', ''),
(225, 13, 2, 200, 'Лав Тха', '', ''),
(226, 13, 3, 300, 'Хардах', '', ''),
(227, 13, 4, 400, 'Анцагорц', '', ''),
(228, 13, 5, 500, 'Джепкир', '', ''),
(229, 13, 6, 600, 'Ехпайр', '', ''),
(230, 13, 7, 700, 'Найох', '', ''),
(231, 13, 8, 800, 'Гох', '', ''),
(232, 13, 9, 900, 'Кероп', '', ''),
(233, 13, 10, 1000, 'Баир', '', ''),
(242, 14, 1, 350, 'Recruit', 'army_1', 'army_1'),
(243, 14, 2, 450, 'Private', 'army_2', 'army_2'),
(244, 14, 3, 650, 'Specialist', 'army_3', 'army_3'),
(245, 14, 4, 800, 'Corporal', 'army_4', 'army_4'),
(246, 14, 5, 900, 'Sergeant', 'army_5', 'army_5'),
(247, 14, 6, 600, 'Staff Sergeant', 'army_6', 'army_6'),
(248, 14, 7, 700, 'Master Segeant', 'army_7', 'army_7'),
(249, 14, 8, 800, 'Sergeant Major', 'army_8', 'army_8'),
(250, 14, 9, 900, 'Warrant Officer', 'army_9', 'army_9'),
(251, 14, 10, 1050, 'Lieutenant', 'army_10', 'army_10'),
(252, 14, 11, 1350, 'Captain', 'army_11', 'army_11'),
(253, 14, 12, 1550, 'Major', 'army_12', 'army_12'),
(254, 14, 13, 1750, 'Colonel', 'army_13', 'army_13'),
(255, 14, 14, 2200, 'General lieutenant', 'army_14', 'army_14'),
(256, 14, 15, 2600, 'General', 'army_15', 'army_15'),
(259, 15, 1, 300, 'Trainee', '', ''),
(260, 15, 2, 500, 'Journalist', '', ''),
(261, 15, 3, 700, 'Specialist', ' ', ''),
(262, 15, 4, 900, 'Mentor', ' ', ' '),
(263, 15, 5, 1100, 'Photographer', ' ', ' '),
(264, 15, 6, 1250, 'Rewriter', ' ', ' '),
(265, 15, 7, 1350, 'Assistant Editor', ' ', ' '),
(266, 15, 8, 1500, 'Operator', ' ', ' '),
(267, 15, 9, 1600, 'Personnel Manager', ' ', ' '),
(268, 15, 10, 1750, 'Chief Editor', ' ', ' '),
(269, 15, 11, 1850, 'Producer', ' ', ' '),
(270, 15, 12, 1900, 'Chief Manager', ' ', ' '),
(271, 15, 13, 2100, 'Head Editor', ' ', ' '),
(272, 15, 14, 2200, 'Head Presenter', ' ', ' '),
(273, 15, 15, 2250, 'Head Manager', ' ', ' '),
(274, 15, 16, 2400, 'Deputy General Director', ' ', ' '),
(275, 15, 17, 2600, 'General Director', ' ', ' '),
(277, 16, 0, 0, 'rank_0', 'police_1', 'police_1'),
(278, 16, 1, 100, 'rank_1', 'police_1', 'police_1'),
(279, 16, 2, 200, 'rank_2', 'police_1', 'police_1'),
(280, 16, 3, 300, 'rank_3', 'police_1', 'police_1'),
(281, 16, 4, 400, 'rank_4', 'police_1', 'police_1'),
(282, 16, 5, 500, 'rank_5', 'police_1', 'police_1'),
(283, 16, 6, 600, 'rank_6', 'police_1', 'police_1'),
(284, 16, 7, 700, 'rank_7', 'police_1', 'police_1'),
(285, 16, 8, 800, 'rank_8', 'police_1', 'police_1'),
(286, 16, 9, 900, 'rank_9', 'police_1', 'police_1'),
(287, 16, 10, 1000, 'rank_10', 'police_1', 'police_1'),
(288, 16, 11, 1100, 'rank_11', 'police_1', 'police_1'),
(289, 16, 12, 1200, 'rank_12', 'police_1', 'police_1'),
(290, 16, 13, 1300, 'rank_13', 'police_1', 'police_1'),
(291, 16, 14, 1400, 'rank_14', 'police_1', 'police_1'),
(292, 16, 15, 1500, 'rank_15', 'police_1', 'police_1'),
(293, 16, 16, 1600, 'rank_16', 'police_1', 'police_1'),
(294, 16, 17, 1700, 'rank_17', 'police_1', 'police_1'),
(295, 17, 0, 0, 'rank_0', 'police_1', 'police_1'),
(296, 17, 1, 100, 'rank_1', 'police_1', 'police_1'),
(297, 17, 2, 200, 'rank_2', 'police_1', 'police_1'),
(298, 17, 3, 300, 'rank_3', 'police_1', 'police_1'),
(299, 17, 4, 400, 'rank_4', 'police_1', 'police_1'),
(300, 17, 5, 500, 'rank_5', 'police_1', 'police_1'),
(301, 17, 6, 600, 'rank_6', 'police_1', 'police_1'),
(302, 17, 7, 700, 'rank_7', 'police_1', 'police_1'),
(303, 17, 8, 800, 'rank_8', 'police_1', 'police_1'),
(304, 17, 9, 900, 'rank_9', 'police_1', 'police_1'),
(305, 17, 10, 1000, 'rank_10', 'police_1', 'police_1'),
(306, 17, 11, 1100, 'rank_11', 'police_1', 'police_1'),
(307, 17, 12, 1200, 'rank_12', 'police_1', 'police_1'),
(308, 17, 13, 1300, 'rank_13', 'police_1', 'police_1'),
(309, 17, 14, 1400, 'rank_14', 'police_1', 'police_1'),
(310, 17, 15, 1500, 'rank_15', 'police_1', 'police_1'),
(311, 17, 16, 1600, 'rank_16', 'police_1', 'police_1'),
(312, 17, 17, 1700, 'rank_17', 'police_1', 'police_1');

INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (313, 18, 1, 300, 'Кадет', 'sheriff_1', 'sheriff_1');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (314, 18, 2, 400, 'Стёпка 2 уровня', 'sheriff_1', 'sheriff_1');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (315, 18, 3, 500, 'Стёпка 3 уровня', 'sheriff_2', 'sheriff_2');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (316, 18, 4, 600, 'Стёпка 4 уровня', 'sheriff_2', 'sheriff_2');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (317, 18, 5, 700, 'Стёпка 5 уровня', 'sheriff_3', 'sheriff_3');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (318, 18, 6, 800, 'Стёпка 6 уровня', 'sheriff_4', 'sheriff_4');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (319, 18, 7, 900, 'Стёпка 7 уровня', 'sheriff_4', 'sheriff_4');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (320, 18, 8, 1000, 'Стёпка 8 уровня', 'sheriff_4', 'sheriff_4');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (321, 18, 9, 1100, 'Стёпка 9 уровня', 'sheriff_5', 'sheriff_5');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (322, 18, 10, 1200, 'Стёпка 10 уровня', 'sheriff_6', 'sheriff_6');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (323, 18, 11, 1300, 'Стёпка 11 уровня', 'sheriff_7', 'sheriff_7');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (324, 18, 12, 1500, 'Стёпка 12 уровня', 'sheriff_8', 'sheriff_8');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (325, 18, 13, 3000, 'Стёпка 13 уровня', 'sheriff_8', 'sheriff_8');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (326, 18, 14, 6600, 'Стёпка 14 уровня', 'sheriff_8', 'sheriff_8');


-- --------------------------------------------------------

--
-- Структура таблицы `fractions`
--

CREATE TABLE `fractions` (
  `id` int(155) NOT NULL,
  `drugs` int(155) NOT NULL,
  `money` int(155) NOT NULL,
  `mats` int(155) NOT NULL,
  `medkits` int(155) NOT NULL,
  `lastserial` text NOT NULL,
  `weapons` text NOT NULL,
  `isopen` tinyint(1) NOT NULL,
  `fuellimit` int(155) NOT NULL,
  `fuelleft` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fractions`
--

INSERT INTO `fractions` (`id`, `drugs`, `money`, `mats`, `medkits`, `lastserial`, `weapons`, `isopen`, `fuellimit`, `fuelleft`) VALUES
(1, 1300, 1788500, 115920, 0, '24', '[{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":103,\"Type\":103,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":204,\"Type\":204,\"Count\":100,\"IsActive\":false},{\"Data\":\"201300055\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300083\",\"ID\":143,\"Type\":143,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"families1\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"families1\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"families1\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":120,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":142,\"Type\":142,\"Count\":1,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":120,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":120,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":60,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":15,\"IsActive\":false}]', 1, 0, 0),
(2, 128, 1240669, 117538, 0, '24', '[{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":4,\"IsActive\":false}]', 1, 0, 0),
(3, 160, 1297900, 121372, 117, '24', '[]', 1, 0, 0),
(4, 1173, 6637900, 205930, 176, '24', '[{\"Data\":\"101400098\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300087\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300081\",\"ID\":104,\"Type\":104,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900047\",\"ID\":116,\"Type\":116,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":204,\"Type\":204,\"Count\":40,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900079\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900124\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900125\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900127\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900053\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900089\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900129\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900081\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900143\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900075\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900091\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900132\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900076\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900130\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900063\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900087\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900133\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900142\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900080\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900145\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900088\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900137\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900082\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900146\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900134\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900092\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900122\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900136\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900144\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900135\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900147\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900086\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900141\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900140\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900085\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201200080\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900084\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900138\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900120\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":120,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":110,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":80,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":122,\"Type\":122,\"Count\":1,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":122,\"Type\":122,\"Count\":1,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":122,\"Type\":122,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700219\",\"ID\":130,\"Type\":130,\"Count\":1,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":146,\"Type\":146,\"Count\":1,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":146,\"Type\":146,\"Count\":1,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":146,\"Type\":146,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":58,\"IsActive\":false},{\"Data\":\"1004xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1004xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false}]', 1, 0, 0),
(5, 160, 2833600, 134600, 0, '24', '[{\"Data\":\"100700056\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"101400046\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"101400049\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":142,\"Type\":142,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":142,\"Type\":142,\"Count\":1,\"IsActive\":false},{\"Data\":\"101400044\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700030\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":9,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300076\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false}]', 1, 0, 0),
(6, 0, 541254, 116408, 128, '147', '[{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":148,\"IsActive\":false},{\"Data\":\"100600058\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false}]', 1, 150000, 150000),
(7, 0, 1, 114824, 843, '347', '[{\"Data\":\"100700170\",\"ID\":141,\"Type\":141,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700176\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700216\",\"ID\":117,\"Type\":117,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700217\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700236\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"101400129\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700274\",\"ID\":141,\"Type\":141,\"Count\":1,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700269\",\"ID\":117,\"Type\":117,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":150,\"IsActive\":false},{\"Data\":\"100700285\",\"ID\":102,\"Type\":102,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":58,\"IsActive\":false}]', 1, 1000, 1000),
(8, 0, 1, 50101, 348, '53', '[{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":1,\"IsActive\":false}]', 1, 150000, 150000),
(9, 0, 1, 34336, 489, '376', '[{\"Data\":\"100900035\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900083\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900161\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900172\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":\"100900299\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900307\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"206500033\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900309\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900315\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700260\",\"ID\":117,\"Type\":117,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":\"100900318\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900185\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300239\",\"ID\":116,\"Type\":116,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"201200089\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900330\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900346\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":203,\"Type\":203,\"Count\":20,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":140,\"IsActive\":false},{\"Data\":\"100900339\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"Admin7777\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900347\",\"ID\":128,\"Type\":128,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700039\",\"ID\":143,\"Type\":143,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900352\",\"ID\":128,\"Type\":128,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900351\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900256\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900116\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900369\",\"ID\":137,\"Type\":137,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":203,\"Type\":203,\"Count\":9,\"IsActive\":false},{\"Data\":\"100900375\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":143,\"IsActive\":false}]', 1, 150000, 150000),
(10, 240, 7066740, 111534, 0, '24', '[{\"Data\":\"201300192\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300172\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300174\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300186\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300180\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700076\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700060\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700066\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700068\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300193\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300179\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300181\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300191\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300187\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300183\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300177\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300175\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300079\",\"ID\":143,\"Type\":143,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false}]', 1, 0, 0),
(11, 236, 967656, 148485, 0, '24', '[{\"Data\":\"201300019\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":105,\"Type\":105,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900002\",\"ID\":116,\"Type\":116,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":141,\"Type\":141,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"101400054\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700010\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":105,\"Type\":105,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false}]', 0, 0, 0),
(12, 165, 1112057, 122362, 629, '24', '[]', 1, 0, 0),
(13, 190, 417608, 129046, 272, '24', '[{\"Data\":\"Admin1234\",\"ID\":128,\"Type\":128,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":204,\"Type\":204,\"Count\":100,\"IsActive\":false},{\"Data\":\"1013xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1013xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false}]', 1, 0, 0),
(14, 0, 1, 97494, 0, '162', '[]', 1, 10000, 10000),
(15, 0, 1, 1, 100, '4', '[{\"Data\":null,\"ID\":0,\"Type\":0,\"Count\":0,\"IsActive\":false}]', 1, 1000, 0),
(16, 0, 1, 1, 10, '4', '[{\"Data\":null,\"ID\":0,\"Type\":0,\"Count\":0,\"IsActive\":false}]', 1, 0, 0),
(17, 0, 1, 1, 100, '4', '[{\"Data\":null,\"ID\":0,\"Type\":0,\"Count\":0,\"IsActive\":false}]', 1, 0, 0);

INSERT INTO `fractions` VALUES ('18', '0', '0', '10000', '0', '18', '[]', '1', '200', '200');

-- --------------------------------------------------------

--
-- Структура таблицы `fractionvehicles`
--

CREATE TABLE `fractionvehicles` (
  `fraction` int(155) NOT NULL,
  `number` text NOT NULL,
  `components` text NOT NULL,
  `model` text NOT NULL,
  `position` text NOT NULL,
  `rotation` text NOT NULL,
  `rank` int(155) NOT NULL,
  `colorprim` int(11) NOT NULL,
  `colorsec` int(11) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Структура таблицы `furniture`
--

CREATE TABLE `furniture` (
  `uuid` varchar(155) NOT NULL,
  `furniture` text NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `furniture`
--

INSERT INTO `furniture` (`uuid`, `furniture`, `data`) VALUES
('0', '{\"0\":{\"Name\":\"Оружейный сейф\",\"Model\":\"prop_ld_int_safe_01\",\"ID\":0,\"Position\":{\"x\":0.0,\"y\":0.0,\"z\":0.0},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":0.0},\"IsSet\":false},\"1\":{\"Name\":\"Шкаф с одеждой\",\"Model\":\"prop_rub_cabinet02\",\"ID\":1,\"Position\":{\"x\":0.0,\"y\":0.0,\"z\":0.0},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":0.0},\"IsSet\":false}}', '{\"0\":[],\"1\":[]}'),
('1', '{}', '{}'),
('10', '{}', '{}'),
('100', '{}', '{}'),
('101', '{}', '{}'),
('102', '{}', '{}'),
('103', '{}', '{}'),
('104', '{}', '{}'),
('105', '{}', '{}'),
('106', '{}', '{}'),
('107', '{}', '{}'),
('108', '{}', '{}'),
('109', '{}', '{}'),
('11', '{}', '{}'),
('110', '{}', '{}'),
('111', '{}', '{}'),
('112', '{}', '{}'),
('113', '{}', '{}'),
('114', '{}', '{}'),
('115', '{}', '{}'),
('116', '{}', '{}'),
('117', '{}', '{}'),
('118', '{}', '{}'),
('119', '{}', '{}'),
('12', '{}', '{}'),
('120', '{}', '{}'),
('121', '{}', '{}'),
('122', '{}', '{}'),
('123', '{}', '{}'),
('124', '{}', '{}'),
('125', '{}', '{}'),
('126', '{}', '{}'),
('127', '{}', '{}'),
('128', '{}', '{}'),
('129', '{}', '{}'),
('13', '{}', '{}'),
('130', '{}', '{}'),
('131', '{}', '{}'),
('132', '{}', '{}'),
('133', '{}', '{}'),
('134', '{}', '{}'),
('135', '{}', '{}'),
('136', '{}', '{}'),
('137', '{}', '{}'),
('138', '{}', '{}'),
('139', '{}', '{}'),
('14', '{}', '{}'),
('140', '{}', '{}'),
('141', '{}', '{}'),
('142', '{}', '{}'),
('143', '{}', '{}'),
('144', '{}', '{}'),
('145', '{}', '{}'),
('146', '{}', '{}'),
('147', '{}', '{}'),
('148', '{}', '{}'),
('149', '{}', '{}'),
('15', '{}', '{}'),
('150', '{}', '{}'),
('151', '{}', '{}'),
('152', '{}', '{}'),
('153', '{}', '{}'),
('154', '{}', '{}'),
('155', '{}', '{}'),
('156', '{}', '{}'),
('157', '{}', '{}'),
('158', '{}', '{}'),
('159', '{}', '{}'),
('16', '{}', '{}'),
('160', '{}', '{}'),
('161', '{}', '{}'),
('162', '{}', '{}'),
('163', '{}', '{}'),
('164', '{}', '{}'),
('165', '{}', '{}'),
('166', '{}', '{}'),
('167', '{}', '{}'),
('168', '{}', '{}'),
('169', '{}', '{}'),
('17', '{}', '{}'),
('170', '{}', '{}'),
('171', '{}', '{}'),
('172', '{}', '{}'),
('173', '{}', '{}'),
('174', '{}', '{}'),
('175', '{}', '{}'),
('176', '{}', '{}'),
('177', '{}', '{}'),
('178', '{}', '{}'),
('179', '{}', '{}'),
('18', '{}', '{}'),
('180', '{}', '{}'),
('181', '{}', '{}'),
('182', '{}', '{}'),
('183', '{}', '{}'),
('184', '{}', '{}'),
('185', '{}', '{}'),
('186', '{}', '{}'),
('187', '{}', '{}'),
('188', '{}', '{}'),
('189', '{}', '{}'),
('19', '{}', '{}'),
('190', '{}', '{}'),
('191', '{}', '{}'),
('192', '{}', '{}'),
('193', '{}', '{}'),
('194', '{}', '{}'),
('195', '{}', '{}'),
('196', '{}', '{}'),
('197', '{}', '{}'),
('198', '{}', '{}'),
('199', '{}', '{}'),
('2', '{}', '{}'),
('20', '{}', '{}'),
('200', '{}', '{}'),
('201', '{}', '{}'),
('202', '{}', '{}'),
('203', '{}', '{}'),
('204', '{}', '{}'),
('205', '{}', '{}'),
('206', '{}', '{}'),
('207', '{}', '{}'),
('208', '{}', '{}'),
('209', '{}', '{}'),
('21', '{}', '{}'),
('210', '{}', '{}'),
('211', '{}', '{}'),
('212', '{}', '{}'),
('213', '{}', '{}'),
('214', '{}', '{}'),
('215', '{}', '{}'),
('216', '{}', '{}'),
('217', '{}', '{}'),
('218', '{}', '{}'),
('219', '{}', '{}'),
('22', '{}', '{}'),
('220', '{}', '{}'),
('221', '{}', '{}'),
('222', '{}', '{}'),
('223', '{}', '{}'),
('224', '{}', '{}'),
('225', '{}', '{}'),
('226', '{}', '{}'),
('227', '{}', '{}'),
('228', '{}', '{}'),
('229', '{}', '{}'),
('23', '{}', '{}'),
('230', '{}', '{}'),
('231', '{}', '{}'),
('232', '{}', '{}'),
('233', '{}', '{}'),
('234', '{}', '{}'),
('235', '{}', '{}'),
('236', '{}', '{}'),
('237', '{}', '{}'),
('238', '{}', '{}'),
('239', '{}', '{}'),
('24', '{}', '{}'),
('240', '{}', '{}'),
('241', '{}', '{}'),
('242', '{}', '{}'),
('243', '{}', '{}'),
('244', '{}', '{}'),
('245', '{}', '{}'),
('246', '{}', '{}'),
('247', '{}', '{}'),
('248', '{}', '{}'),
('249', '{}', '{}'),
('25', '{}', '{}'),
('250', '{}', '{}'),
('251', '{}', '{}'),
('252', '{}', '{}'),
('253', '{}', '{}'),
('254', '{}', '{}'),
('255', '{}', '{}'),
('256', '{}', '{}'),
('257', '{}', '{}'),
('258', '{}', '{}'),
('259', '{}', '{}'),
('26', '{}', '{}'),
('260', '{}', '{}'),
('261', '{}', '{}'),
('262', '{}', '{}'),
('263', '{}', '{}'),
('264', '{}', '{}'),
('265', '{}', '{}'),
('266', '{}', '{}'),
('267', '{}', '{}'),
('268', '{}', '{}'),
('269', '{}', '{}'),
('27', '{}', '{}'),
('270', '{}', '{}'),
('271', '{}', '{}'),
('272', '{}', '{}'),
('273', '{}', '{}'),
('274', '{}', '{}'),
('275', '{}', '{}'),
('276', '{}', '{}'),
('277', '{}', '{}'),
('278', '{}', '{}'),
('279', '{}', '{}'),
('28', '{}', '{}'),
('280', '{}', '{}'),
('281', '{}', '{}'),
('282', '{}', '{}'),
('283', '{}', '{}'),
('284', '{}', '{}'),
('285', '{}', '{}'),
('286', '{}', '{}'),
('287', '{}', '{}'),
('288', '{}', '{}'),
('289', '{}', '{}'),
('29', '{}', '{}'),
('290', '{}', '{}'),
('291', '{}', '{}'),
('292', '{}', '{}'),
('293', '{}', '{}'),
('294', '{}', '{}'),
('295', '{}', '{}'),
('296', '{}', '{}'),
('297', '{}', '{}'),
('298', '{}', '{}'),
('299', '{}', '{}'),
('3', '{}', '{}'),
('30', '{}', '{}'),
('300', '{}', '{}'),
('301', '{}', '{}'),
('302', '{}', '{}'),
('303', '{}', '{}'),
('304', '{}', '{}'),
('305', '{}', '{}'),
('306', '{}', '{}'),
('307', '{}', '{}'),
('308', '{}', '{}'),
('309', '{}', '{}'),
('31', '{}', '{}'),
('310', '{}', '{}'),
('311', '{}', '{}'),
('312', '{}', '{}'),
('313', '{}', '{}'),
('314', '{}', '{}'),
('315', '{}', '{}'),
('316', '{}', '{}'),
('317', '{}', '{}'),
('318', '{}', '{}'),
('319', '{}', '{}'),
('32', '{}', '{}'),
('320', '{}', '{}'),
('321', '{}', '{}'),
('322', '{}', '{}'),
('323', '{}', '{}'),
('324', '{}', '{}'),
('325', '{}', '{}'),
('326', '{}', '{}'),
('327', '{}', '{}'),
('328', '{}', '{}'),
('329', '{}', '{}'),
('33', '{}', '{}'),
('330', '{}', '{}'),
('331', '{}', '{}'),
('332', '{}', '{}'),
('333', '{}', '{}'),
('334', '{}', '{}'),
('335', '{}', '{}'),
('336', '{}', '{}'),
('337', '{}', '{}'),
('338', '{}', '{}'),
('339', '{}', '{}'),
('34', '{}', '{}'),
('340', '{}', '{}'),
('341', '{}', '{}'),
('342', '{}', '{}'),
('343', '{}', '{}'),
('344', '{}', '{}'),
('345', '{}', '{}'),
('346', '{}', '{}'),
('347', '{}', '{}'),
('348', '{}', '{}'),
('349', '{}', '{}'),
('35', '{}', '{}'),
('350', '{}', '{}'),
('351', '{}', '{}'),
('352', '{}', '{}'),
('353', '{}', '{}'),
('355', '{}', '{}'),
('356', '{}', '{}'),
('357', '{}', '{}'),
('358', '{}', '{}'),
('359', '{}', '{}'),
('36', '{}', '{}'),
('360', '{}', '{}'),
('361', '{}', '{}'),
('362', '{}', '{}'),
('363', '{}', '{}'),
('364', '{}', '{}'),
('365', '{}', '{}'),
('366', '{}', '{}'),
('367', '{}', '{}'),
('368', '{}', '{}'),
('369', '{}', '{}'),
('37', '{}', '{}'),
('370', '{}', '{}'),
('371', '{}', '{}'),
('372', '{}', '{}'),
('373', '{}', '{}'),
('374', '{}', '{}'),
('375', '{}', '{}'),
('376', '{}', '{}'),
('377', '{}', '{}'),
('378', '{}', '{}'),
('379', '{}', '{}'),
('38', '{}', '{}'),
('380', '{}', '{}'),
('381', '{}', '{}'),
('382', '{}', '{}'),
('383', '{}', '{}'),
('384', '{}', '{}'),
('385', '{}', '{}'),
('386', '{}', '{}'),
('387', '{}', '{}'),
('388', '{}', '{}'),
('389', '{}', '{}'),
('39', '{}', '{}'),
('390', '{}', '{}'),
('391', '{}', '{}'),
('392', '{}', '{}'),
('393', '{}', '{}'),
('394', '{}', '{}'),
('395', '{}', '{}'),
('396', '{}', '{}'),
('397', '{}', '{}'),
('398', '{}', '{}'),
('399', '{}', '{}'),
('4', '{}', '{}'),
('40', '{}', '{}'),
('400', '{}', '{}'),
('401', '{}', '{}'),
('402', '{}', '{}'),
('403', '{}', '{}'),
('404', '{}', '{}'),
('405', '{}', '{}'),
('406', '{}', '{}'),
('407', '{}', '{}'),
('408', '{}', '{}'),
('409', '{}', '{}'),
('41', '{}', '{}'),
('410', '{}', '{}'),
('411', '{}', '{}'),
('412', '{}', '{}'),
('413', '{}', '{}'),
('414', '{}', '{}'),
('415', '{}', '{}'),
('416', '{}', '{}'),
('417', '{}', '{}'),
('418', '{}', '{}'),
('419', '{}', '{}'),
('42', '{}', '{}'),
('420', '{}', '{}'),
('421', '{}', '{}'),
('422', '{}', '{}'),
('423', '{}', '{}'),
('424', '{}', '{}'),
('425', '{}', '{}'),
('426', '{}', '{}'),
('427', '{}', '{}'),
('428', '{}', '{}'),
('429', '{}', '{}'),
('43', '{}', '{}'),
('430', '{}', '{}'),
('431', '{}', '{}'),
('432', '{}', '{}'),
('433', '{}', '{}'),
('434', '{}', '{}'),
('435', '{}', '{}'),
('436', '{}', '{}'),
('437', '{}', '{}'),
('438', '{}', '{}'),
('439', '{}', '{}'),
('44', '{}', '{}'),
('440', '{}', '{}'),
('441', '{}', '{}'),
('442', '{}', '{}'),
('443', '{}', '{}'),
('444', '{}', '{}'),
('445', '{}', '{}'),
('446', '{}', '{}'),
('447', '{}', '{}'),
('448', '{}', '{}'),
('449', '{}', '{}'),
('45', '{}', '{}'),
('450', '{}', '{}'),
('451', '{}', '{}'),
('452', '{}', '{}'),
('453', '{}', '{}'),
('454', '{}', '{}'),
('455', '{}', '{}'),
('456', '{}', '{}'),
('457', '{}', '{}'),
('458', '{}', '{}'),
('459', '{}', '{}'),
('46', '{}', '{}'),
('460', '{}', '{}'),
('461', '{}', '{}'),
('462', '{}', '{}'),
('463', '{}', '{}'),
('464', '{}', '{}'),
('465', '{}', '{}'),
('466', '{}', '{}'),
('467', '{}', '{}'),
('468', '{}', '{}'),
('469', '{}', '{}'),
('47', '{}', '{}'),
('470', '{}', '{}'),
('471', '{}', '{}'),
('472', '{}', '{}'),
('473', '{}', '{}'),
('474', '{}', '{}'),
('475', '{}', '{}'),
('476', '{}', '{}'),
('477', '{}', '{}'),
('478', '{}', '{}'),
('479', '{}', '{}'),
('48', '{}', '{}'),
('480', '{}', '{}'),
('481', '{}', '{}'),
('482', '{}', '{}'),
('483', '{}', '{}'),
('484', '{}', '{}'),
('485', '{}', '{}'),
('486', '{}', '{}'),
('487', '{}', '{}'),
('488', '{}', '{}'),
('489', '{}', '{}'),
('49', '{}', '{}'),
('490', '{}', '{}'),
('491', '{}', '{}'),
('492', '{}', '{}'),
('493', '{}', '{}'),
('494', '{}', '{}'),
('495', '{}', '{}'),
('496', '{}', '{}'),
('497', '{}', '{}'),
('498', '{}', '{}'),
('499', '{}', '{}'),
('5', '{}', '{}'),
('50', '{}', '{}'),
('500', '{}', '{}'),
('501', '{}', '{}'),
('502', '{}', '{}'),
('503', '{}', '{}'),
('504', '{}', '{}'),
('505', '{}', '{}'),
('506', '{}', '{}'),
('507', '{}', '{}'),
('508', '{}', '{}'),
('509', '{}', '{}'),
('51', '{}', '{}'),
('510', '{}', '{}'),
('511', '{}', '{}'),
('512', '{}', '{}'),
('513', '{}', '{}'),
('514', '{}', '{}'),
('515', '{}', '{}'),
('516', '{}', '{}'),
('517', '{}', '{}'),
('518', '{}', '{}'),
('519', '{}', '{}'),
('52', '{}', '{}'),
('520', '{}', '{}'),
('521', '{}', '{}'),
('522', '{}', '{}'),
('523', '{}', '{}'),
('524', '{}', '{}'),
('525', '{}', '{}'),
('526', '{}', '{}'),
('527', '{}', '{}'),
('528', '{}', '{}'),
('529', '{}', '{}'),
('53', '{}', '{}'),
('530', '{}', '{}'),
('531', '{}', '{}'),
('532', '{}', '{}'),
('533', '{}', '{}'),
('534', '{}', '{}'),
('535', '{}', '{}'),
('536', '{}', '{}'),
('537', '{}', '{}'),
('538', '{}', '{}'),
('539', '{}', '{}'),
('54', '{}', '{}'),
('540', '{}', '{}'),
('541', '{}', '{}'),
('542', '{}', '{}'),
('543', '{}', '{}'),
('544', '{}', '{}'),
('545', '{}', '{}'),
('546', '{}', '{}'),
('547', '{}', '{}'),
('548', '{}', '{}'),
('549', '{}', '{}'),
('55', '{}', '{}'),
('550', '{}', '{}'),
('551', '{}', '{}'),
('552', '{}', '{}'),
('553', '{}', '{}'),
('554', '{}', '{}'),
('555', '{}', '{}'),
('556', '{}', '{}'),
('557', '{}', '{}'),
('558', '{}', '{}'),
('559', '{}', '{}'),
('56', '{}', '{}'),
('560', '{}', '{}'),
('561', '{}', '{}'),
('562', '{}', '{}'),
('563', '{}', '{}'),
('564', '{}', '{}'),
('565', '{}', '{}'),
('566', '{}', '{}'),
('567', '{}', '{}'),
('568', '{}', '{}'),
('569', '{}', '{}'),
('57', '{}', '{}'),
('570', '{}', '{}'),
('571', '{}', '{}'),
('572', '{}', '{}'),
('573', '{}', '{}'),
('574', '{}', '{}'),
('575', '{}', '{}'),
('576', '{}', '{}'),
('577', '{}', '{}'),
('578', '{}', '{}'),
('579', '{}', '{}'),
('58', '{}', '{}'),
('580', '{}', '{}'),
('581', '{}', '{}'),
('582', '{}', '{}'),
('583', '{}', '{}'),
('584', '{}', '{}'),
('585', '{}', '{}'),
('586', '{}', '{}'),
('587', '{}', '{}'),
('588', '{}', '{}'),
('589', '{}', '{}'),
('59', '{}', '{}'),
('590', '{}', '{}'),
('591', '{}', '{}'),
('592', '{}', '{}'),
('593', '{}', '{}'),
('594', '{}', '{}'),
('595', '{}', '{}'),
('596', '{}', '{}'),
('597', '{}', '{}'),
('598', '{}', '{}'),
('599', '{}', '{}'),
('6', '{}', '{}'),
('60', '{}', '{}'),
('600', '{}', '{}'),
('601', '{}', '{}'),
('602', '{}', '{}'),
('603', '{}', '{}'),
('604', '{}', '{}'),
('605', '{}', '{}'),
('606', '{}', '{}'),
('607', '{}', '{}'),
('608', '{}', '{}'),
('609', '{}', '{}'),
('61', '{}', '{}'),
('610', '{}', '{}'),
('611', '{}', '{}'),
('612', '{}', '{}'),
('613', '{}', '{}'),
('614', '{}', '{}'),
('615', '{}', '{}'),
('616', '{}', '{}'),
('617', '{}', '{}'),
('618', '{}', '{}'),
('619', '{}', '{}'),
('62', '{}', '{}'),
('620', '{}', '{}'),
('621', '{}', '{}'),
('622', '{}', '{}'),
('623', '{}', '{}'),
('624', '{}', '{}'),
('625', '{}', '{}'),
('626', '{}', '{}'),
('627', '{}', '{}'),
('628', '{}', '{}'),
('629', '{}', '{}'),
('63', '{}', '{}'),
('630', '{}', '{}'),
('631', '{}', '{}'),
('632', '{}', '{}'),
('633', '{}', '{}'),
('634', '{}', '{}'),
('635', '{}', '{}'),
('636', '{}', '{}'),
('637', '{}', '{}'),
('638', '{}', '{}'),
('639', '{}', '{}'),
('64', '{}', '{}'),
('640', '{}', '{}'),
('641', '{}', '{}'),
('642', '{}', '{}'),
('643', '{}', '{}'),
('644', '{}', '{}'),
('645', '{}', '{}'),
('646', '{}', '{}'),
('647', '{}', '{}'),
('648', '{}', '{}'),
('649', '{}', '{}'),
('65', '{}', '{}'),
('650', '{}', '{}'),
('651', '{}', '{}'),
('652', '{}', '{}'),
('653', '{}', '{}'),
('654', '{}', '{}'),
('655', '{}', '{}'),
('656', '{}', '{}'),
('657', '{}', '{}'),
('658', '{}', '{}'),
('659', '{}', '{}'),
('66', '{}', '{}'),
('660', '{}', '{}'),
('661', '{}', '{}'),
('662', '{}', '{}'),
('663', '{}', '{}'),
('664', '{}', '{}'),
('665', '{}', '{}'),
('666', '{}', '{}'),
('667', '{}', '{}'),
('668', '{}', '{}'),
('669', '{}', '{}'),
('67', '{}', '{}'),
('670', '{}', '{}'),
('671', '{}', '{}'),
('672', '{}', '{}'),
('673', '{}', '{}'),
('674', '{}', '{}'),
('675', '{}', '{}'),
('676', '{}', '{}'),
('677', '{}', '{}'),
('678', '{}', '{}'),
('679', '{}', '{}'),
('68', '{}', '{}'),
('680', '{}', '{}'),
('681', '{}', '{}'),
('682', '{}', '{}'),
('683', '{}', '{}'),
('684', '{}', '{}'),
('685', '{}', '{}'),
('686', '{}', '{}'),
('687', '{}', '{}'),
('688', '{}', '{}'),
('689', '{}', '{}'),
('69', '{}', '{}'),
('690', '{}', '{}'),
('691', '{}', '{}'),
('692', '{}', '{}'),
('693', '{}', '{}'),
('694', '{}', '{}'),
('695', '{}', '{}'),
('696', '{}', '{}'),
('697', '{}', '{}'),
('698', '{}', '{}'),
('699', '{}', '{}'),
('7', '{}', '{}'),
('70', '{}', '{}'),
('700', '{}', '{}'),
('701', '{}', '{}'),
('702', '{}', '{}'),
('703', '{}', '{}'),
('704', '{}', '{}'),
('705', '{}', '{}'),
('706', '{}', '{}'),
('707', '{}', '{}'),
('708', '{}', '{}'),
('709', '{}', '{}'),
('71', '{}', '{}'),
('710', '{}', '{}'),
('711', '{}', '{}'),
('712', '{}', '{}'),
('713', '{}', '{}'),
('714', '{}', '{}'),
('715', '{}', '{}'),
('716', '{}', '{}'),
('717', '{}', '{}'),
('718', '{}', '{}'),
('719', '{}', '{}'),
('72', '{}', '{}'),
('720', '{}', '{}'),
('73', '{}', '{}'),
('74', '{}', '{}'),
('75', '{}', '{}'),
('76', '{}', '{}'),
('77', '{}', '{}'),
('78', '{}', '{}'),
('79', '{}', '{}'),
('8', '{}', '{}'),
('80', '{}', '{}'),
('81', '{}', '{}'),
('82', '{}', '{}'),
('83', '{}', '{}'),
('84', '{}', '{}'),
('85', '{}', '{}'),
('86', '{}', '{}'),
('87', '{}', '{}'),
('88', '{}', '{}'),
('89', '{}', '{}'),
('9', '{}', '{}'),
('90', '{}', '{}'),
('91', '{}', '{}'),
('92', '{}', '{}'),
('93', '{}', '{}'),
('94', '{}', '{}'),
('95', '{}', '{}'),
('96', '{}', '{}'),
('97', '{}', '{}'),
('98', '{}', '{}'),
('99', '{}', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `gangspoints`
--

CREATE TABLE `gangspoints` (
  `id` int(155) NOT NULL,
  `gangid` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gangspoints`
--

INSERT INTO `gangspoints` (`id`, `gangid`) VALUES
(0, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 3),
(11, 3),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 3),
(19, 3),
(20, 3),
(21, 1),
(22, 1),
(23, 2),
(24, 2),
(25, 2),
(26, 3),
(27, 3),
(28, 3),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 3),
(34, 3),
(35, 3),
(36, 2),
(37, 2),
(38, 2),
(39, 3),
(40, 3),
(41, 3),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(52, 5),
(53, 5),
(54, 5),
(55, 5),
(56, 5),
(57, 5),
(58, 5),
(59, 5),
(60, 5),
(61, 5),
(62, 5),
(63, 5),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 5),
(70, 5),
(71, 5),
(72, 5),
(73, 5),
(74, 5),
(75, 4),
(76, 4),
(77, 5),
(78, 5),
(79, 5),
(80, 4),
(81, 4),
(82, 4),
(83, 5),
(84, 5),
(85, 4),
(86, 4),
(87, 4),
(88, 4),
(89, 4),
(90, 3),
(91, 3),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 3),
(97, 1),
(98, 3),
(99, 3),
(100, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `garages`
--

CREATE TABLE `garages` (
  `id` int(155) NOT NULL,
  `type` int(155) NOT NULL,
  `position` text NOT NULL,
  `rotation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `garages` ENABLE KEYS */;

--
-- Структура таблицы `houses`
--

CREATE TABLE `houses` (
  `id` int(155) NOT NULL,
  `owner` text NOT NULL,
  `type` varchar(11) NOT NULL,
  `position` text NOT NULL,
  `price` text NOT NULL,
  `locked` tinyint(155) NOT NULL,
  `garage` text NOT NULL,
  `bank` text NOT NULL,
  `roommates` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `houses` ENABLE KEYS */;

--
-- Структура таблицы `inventory`
--

CREATE TABLE `inventory` (
  `items` text NOT NULL,
  `uuid` int(255) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Структура таблицы `main`
--

CREATE TABLE `main` (
  `Fraction` int(11) NOT NULL DEFAULT 0,
  `Rank` double NOT NULL DEFAULT 0,
  `FPosX` double NOT NULL DEFAULT 0,
  `FPosY` double NOT NULL DEFAULT 0,
  `FPosZ` double NOT NULL DEFAULT 0,
  `FPosDim` double NOT NULL DEFAULT 0,
  `TPosX` double NOT NULL DEFAULT 0,
  `TPosY` double NOT NULL DEFAULT 0,
  `TPosZ` double NOT NULL DEFAULT 0,
  `TPosDim` double NOT NULL DEFAULT 0,
  `Revers` int(11) NOT NULL DEFAULT 0,
  `ForVeh` int(11) NOT NULL DEFAULT 0,
  `Interact` int(11) NOT NULL DEFAULT 0,
  `SID` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `money`
--

CREATE TABLE `money` (
  `id` varchar(155) NOT NULL,
  `holder` varchar(155) NOT NULL,
  `balance` varchar(155) NOT NULL,
  `type` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `money`
--

INSERT INTO `money` (`id`, `holder`, `balance`, `type`) VALUES
	('10368', '', '0', '2'),
	('104415', '', '0', '2'),
	('105213', '', '0', '2'),
	('106169', '', '0', '3'),
	('106301', '', '0', '2'),
	('10649', '', '0', '2'),
	('107030', '', '0', '2'),
	('112782', '', '0', '2'),
	('115360', '', '0', '2'),
	('11610', '', '0', '3'),
	('116463', '', '0', '2'),
	('117567', '', '0', '2'),
	('121701', '', '0', '2'),
	('122167', '', '0', '2'),
	('1226', '', '0', '2'),
	('123516', '', '0', '2'),
	('12400', '', '0', '2'),
	('124493', '', '0', '2'),
	('12473', '', '0', '2'),
	('125643', '', '0', '2'),
	('126597', 'Lil_Pumpers', '0', '1'),
	('127492', '', '0', '2'),
	('128310', '', '0', '3'),
	('1290', '', '0', '3'),
	('13002', '', '0', '2'),
	('130056', '', '0', '2'),
	('130486', '', '0', '2'),
	('13273', '', '0', '2'),
	('133815', '', '0', '2'),
	('135372', '', '0', '2'),
	('135958', '', '0', '2'),
	('136594', '', '0', '2'),
	('139828', '', '0', '2'),
	('141134', '', '0', '3'),
	('141732', '', '0', '3'),
	('142153', '', '0', '2'),
	('142699', '', '0', '2'),
	('143339', '', '0', '2'),
	('144240', '', '0', '2'),
	('144645', '', '0', '2'),
	('145634', '', '0', '3'),
	('146052', '', '0', '2'),
	('146279', '', '0', '2'),
	('148456', '', '0', '2'),
	('148734', '', '0', '2'),
	('150251', '', '0', '2'),
	('150490', '', '0', '2'),
	('150565', '', '0', '2'),
	('153922', '', '0', '2'),
	('154737', '', '0', '2'),
	('155542', '', '0', '2'),
	('156176', '', '0', '2'),
	('15645', '', '0', '2'),
	('159535', '', '0', '2'),
	('159702', '', '0', '2'),
	('159913', '', '0', '2'),
	('162701', '', '0', '2'),
	('164723', '', '0', '2'),
	('165586', '', '0', '2'),
	('165995', '', '0', '3'),
	('166296', '', '0', '2'),
	('166818', '', '0', '2'),
	('167876', '', '0', '2'),
	('171515', '', '0', '2'),
	('172109', '', '0', '2'),
	('172423', '', '0', '2'),
	('172488', '', '0', '2'),
	('172933', '', '0', '2'),
	('173419', '', '0', '2'),
	('173617', '', '0', '3'),
	('175195', '', '0', '2'),
	('179196', '', '0', '2'),
	('179979', '', '0', '2'),
	('181710', '', '0', '2'),
	('18237', '', '0', '2'),
	('182606', '', '0', '2'),
	('182811', '', '0', '3'),
	('184154', '', '0', '2'),
	('188394', '', '0', '2'),
	('188679', '', '0', '2'),
	('189268', '', '0', '2'),
	('189317', '', '0', '2'),
	('189751', '', '0', '2'),
	('193645', '', '0', '3'),
	('195358', '', '0', '2'),
	('195485', '', '0', '2'),
	('196436', '', '0', '2'),
	('196695', '', '0', '2'),
	('197396', '', '0', '2'),
	('197930', '', '0', '2'),
	('200946', '', '0', '2'),
	('201698', '', '0', '2'),
	('202126', '', '0', '2'),
	('202414', '', '0', '3'),
	('202539', '', '0', '2'),
	('203641', '', '0', '2'),
	('206312', '', '0', '2'),
	('20844', '', '0', '2'),
	('209166', '', '0', '2'),
	('209512', '', '0', '3'),
	('210874', '', '0', '2'),
	('213493', '', '0', '3'),
	('214323', '', '0', '2'),
	('2149', '', '0', '2'),
	('215000', '', '0', '2'),
	('217197', 'Elena_Pegas', '0', '1'),
	('217739', '', '0', '2'),
	('220091', '', '0', '2'),
	('221001', '', '0', '2'),
	('221085', '', '0', '2'),
	('22532', '', '0', '2'),
	('227490', '', '0', '2'),
	('228573', '', '0', '2'),
	('229160', '', '0', '2'),
	('229466', '', '0', '2'),
	('229765', '', '0', '2'),
	('230484', '', '0', '2'),
	('23158', '', '0', '2'),
	('231825', '', '0', '2'),
	('232375', '', '0', '2'),
	('234616', '', '0', '2'),
	('236464', '', '0', '2'),
	('236504', '', '0', '2'),
	('237743', '', '0', '2'),
	('237975', '', '0', '2'),
	('238025', '', '0', '2'),
	('239700', '', '0', '3'),
	('23971', '', '0', '2'),
	('240745', '', '0', '2'),
	('241559', '', '0', '2'),
	('242216', '', '0', '2'),
	('243304', '', '0', '2'),
	('247021', '', '0', '2'),
	('249194', '', '0', '2'),
	('249634', '', '0', '2'),
	('250055', '', '0', '2'),
	('252400', '', '0', '2'),
	('252558', '', '0', '2'),
	('252798', '', '0', '2'),
	('254906', '', '0', '2'),
	('255654', '', '0', '2'),
	('257992', '', '0', '2'),
	('259682', '', '0', '2'),
	('259808', '', '0', '2'),
	('262647', '', '0', '3'),
	('26447', '', '0', '2'),
	('265153', '', '0', '2'),
	('265811', '', '0', '3'),
	('270543', '', '0', '2'),
	('271476', '', '0', '2'),
	('272883', '', '0', '2'),
	('27376', 'Julia_Aurora', '0', '1'),
	('275156', '', '0', '2'),
	('276537', '', '0', '2'),
	('278515', '', '0', '2'),
	('27897', '', '0', '2'),
	('280925', '', '0', '2'),
	('282122', '', '0', '3'),
	('28323', '', '0', '2'),
	('283900', 'Elena_Pegas', '0', '1'),
	('284494', '', '0', '2'),
	('284537', '', '0', '3'),
	('285119', '', '0', '2'),
	('286286', '', '0', '2'),
	('286595', '', '0', '2'),
	('288075', '', '0', '2'),
	('288166', '', '0', '2'),
	('288343', '', '0', '2'),
	('288822', '', '0', '2'),
	('291043', '', '0', '2'),
	('292060', '', '0', '2'),
	('295118', '', '0', '2'),
	('295649', '', '0', '2'),
	('297869', '', '0', '2'),
	('299737', '', '0', '3'),
	('301799', '', '0', '2'),
	('30214', '', '0', '2'),
	('306909', '', '0', '2'),
	('308938', '', '0', '2'),
	('309280', '', '0', '2'),
	('309495', '', '0', '2'),
	('309554', '', '0', '2'),
	('310345', '', '0', '2'),
	('310679', '', '0', '2'),
	('311350', '', '0', '2'),
	('311429', '', '0', '2'),
	('31713', '', '0', '2'),
	('320320', '', '0', '3'),
	('321454', '', '0', '2'),
	('322668', '', '0', '2'),
	('324500', '', '0', '2'),
	('326031', '', '0', '2'),
	('326448', '', '0', '2'),
	('327801', '', '0', '2'),
	('327823', '', '0', '2'),
	('328613', '', '0', '3'),
	('328925', '', '0', '2'),
	('329765', '', '0', '2'),
	('330111', '', '0', '2'),
	('33106', '', '0', '2'),
	('331900', '', '0', '2'),
	('331916', '', '0', '2'),
	('333301', '', '0', '2'),
	('333778', '', '0', '3'),
	('333790', '', '0', '2'),
	('33434', '', '0', '3'),
	('335785', '', '0', '3'),
	('335822', '', '0', '2'),
	('335887', '', '0', '3'),
	('337533', '', '0', '2'),
	('338441', '', '0', '2'),
	('338770', '', '0', '2'),
	('339945', '', '0', '2'),
	('340005', '', '0', '2'),
	('340317', '', '0', '2'),
	('341093', '', '0', '2'),
	('344214', '', '0', '3'),
	('345132', '', '0', '2'),
	('346849', '', '0', '2'),
	('347749', '', '0', '2'),
	('349744', '', '0', '2'),
	('350018', '', '0', '2'),
	('350251', '', '0', '2'),
	('350354', '', '0', '2'),
	('352419', '', '0', '2'),
	('3526', '', '0', '2'),
	('353040', '', '0', '2'),
	('353637', '', '0', '3'),
	('353736', '', '0', '2'),
	('354333', '', '0', '2'),
	('354814', '', '0', '3'),
	('357472', '', '0', '2'),
	('357682', '', '0', '2'),
	('358251', '', '0', '2'),
	('365352', '', '0', '2'),
	('365991', '', '0', '2'),
	('366070', '', '0', '2'),
	('368065', '', '0', '2'),
	('368314', '', '0', '2'),
	('368473', '', '0', '2'),
	('368581', '', '0', '3'),
	('369810', '', '0', '2'),
	('370312', '', '0', '2'),
	('371257', '', '0', '2'),
	('371953', '', '0', '2'),
	('373198', '', '0', '2'),
	('374414', '', '0', '2'),
	('376556', '', '0', '3'),
	('37771', '', '0', '2'),
	('378127', '', '0', '2'),
	('379183', '', '0', '2'),
	('380585', '', '0', '2'),
	('383566', '', '0', '2'),
	('383578', '', '0', '2'),
	('383818', '', '0', '2'),
	('385236', '', '0', '2'),
	('385560', '', '0', '2'),
	('385591', '', '0', '2'),
	('390483', '', '0', '2'),
	('391738', '', '0', '2'),
	('392248', '', '0', '3'),
	('397757', '', '0', '2'),
	('398406', '', '0', '2'),
	('400753', '', '0', '2'),
	('401096', '', '0', '3'),
	('404125', '', '0', '2'),
	('404444', '', '0', '2'),
	('405305', '', '0', '2'),
	('408318', '', '0', '2'),
	('408503', '', '0', '2'),
	('408636', '', '0', '2'),
	('409350', '', '0', '3'),
	('409397', '', '0', '2'),
	('41002', '', '0', '3'),
	('410188', '', '0', '2'),
	('410198', '', '0', '2'),
	('410448', '', '0', '3'),
	('413654', '', '0', '2'),
	('416037', '', '0', '2'),
	('416533', '', '0', '2'),
	('416648', '', '0', '2'),
	('417513', '', '0', '2'),
	('418408', '', '0', '2'),
	('418727', '', '0', '2'),
	('421244', '', '0', '2'),
	('421823', '', '0', '2'),
	('426091', '', '0', '2'),
	('42627', '', '0', '2'),
	('426487', '', '0', '2'),
	('428603', '', '0', '2'),
	('431200', '', '0', '2'),
	('431545', '', '0', '2'),
	('431560', '', '0', '2'),
	('434198', '', '0', '3'),
	('434460', '', '0', '2'),
	('434724', '', '0', '2'),
	('435444', '', '0', '2'),
	('436090', '', '0', '2'),
	('436981', '', '0', '2'),
	('43777', '', '0', '2'),
	('440530', '', '0', '2'),
	('441895', '', '0', '2'),
	('443851', '', '0', '2'),
	('443912', '', '0', '2'),
	('445627', '', '0', '2'),
	('446589', '', '0', '2'),
	('447123', '', '0', '2'),
	('449422', '', '0', '2'),
	('449719', '', '0', '2'),
	('449839', '', '0', '2'),
	('451674', '', '0', '2'),
	('45305', '', '0', '2'),
	('455329', '', '0', '2'),
	('456866', '', '0', '2'),
	('460048', '', '0', '2'),
	('464133', '', '0', '2'),
	('464217', '', '0', '2'),
	('466442', '', '0', '2'),
	('467400', '', '0', '3'),
	('468774', '', '0', '3'),
	('470276', '', '0', '2'),
	('470357', '', '0', '2'),
	('471423', 'Julia_Aurora', '0', '1'),
	('471433', '', '0', '2'),
	('472500', '', '0', '2'),
	('472932', 'Sergey_Hydra', '0', '1'),
	('474531', '', '0', '2'),
	('47621', '', '0', '3'),
	('477094', '', '0', '2'),
	('477299', '', '0', '2'),
	('47756', '', '0', '2'),
	('477919', '', '0', '2'),
	('478010', '', '0', '2'),
	('481501', '', '0', '2'),
	('483180', '', '0', '2'),
	('483485', '', '0', '2'),
	('484926', '', '0', '3'),
	('485225', '', '0', '2'),
	('485592', '', '0', '2'),
	('48628', '', '0', '2'),
	('489529', '', '0', '2'),
	('490074', '', '0', '2'),
	('490914', '', '0', '2'),
	('493165', '', '0', '2'),
	('493466', '', '0', '3'),
	('494702', '', '0', '2'),
	('49581', '', '0', '2'),
	('496613', '', '0', '2'),
	('499804', '', '0', '2'),
	('501432', '', '0', '2'),
	('502446', '', '0', '2'),
	('503112', '', '0', '2'),
	('504736', '', '0', '2'),
	('505585', 'Test_Test', '0', '1'),
	('50566', '', '0', '2'),
	('505910', '', '0', '3'),
	('50603', '', '0', '2'),
	('506558', '', '0', '2'),
	('506566', '', '0', '2'),
	('508730', '', '0', '2'),
	('509759', '', '0', '2'),
	('510099', '', '0', '2'),
	('510748', '', '0', '3'),
	('512764', '', '0', '2'),
	('513225', '', '0', '2'),
	('513295', '', '0', '2'),
	('514559', '', '0', '2'),
	('515853', '', '0', '2'),
	('516828', '', '0', '2'),
	('517194', '', '0', '2'),
	('517218', '', '0', '2'),
	('519735', '', '0', '2'),
	('520202', '', '0', '2'),
	('521686', '', '0', '2'),
	('521713', '', '0', '2'),
	('522613', '', '0', '2'),
	('524802', '', '0', '2'),
	('525099', '', '0', '2'),
	('52600', '', '0', '2'),
	('52626', '', '0', '2'),
	('52645', '', '0', '2'),
	('526597', '', '0', '2'),
	('526612', '', '0', '3'),
	('526710', '', '0', '2'),
	('527162', '', '0', '2'),
	('527402', '', '0', '2'),
	('527757', '', '0', '2'),
	('532033', '', '0', '2'),
	('532613', '', '0', '3'),
	('533751', '', '0', '2'),
	('536042', '', '0', '2'),
	('536450', '', '0', '2'),
	('536465', '', '0', '2'),
	('537600', '', '0', '3'),
	('538995', '', '0', '2'),
	('540547', '', '0', '2'),
	('542485', '', '0', '2'),
	('543830', '', '0', '2'),
	('54543', '', '0', '2'),
	('547134', '', '0', '2'),
	('547162', '', '0', '2'),
	('548100', '', '0', '2'),
	('548262', '', '0', '2'),
	('552377', '', '0', '2'),
	('552726', '', '0', '2'),
	('554459', '', '0', '2'),
	('554799', '', '0', '2'),
	('5600', '', '0', '2'),
	('560095', '', '0', '2'),
	('560123', '', '0', '2'),
	('56155', '', '0', '2'),
	('562240', '', '0', '2'),
	('565615', '', '0', '2'),
	('566631', '', '0', '2'),
	('570451', '', '0', '2'),
	('57143', '', '0', '2'),
	('572155', '', '0', '2'),
	('572212', '', '0', '2'),
	('578341', '', '0', '2'),
	('579844', '', '0', '3'),
	('580401', '', '0', '2'),
	('580888', '', '0', '2'),
	('586110', '', '0', '2'),
	('586713', '', '0', '2'),
	('58683', '', '0', '2'),
	('587066', '', '0', '2'),
	('58717', '', '0', '2'),
	('592522', '', '0', '2'),
	('592732', '', '0', '2'),
	('593590', '', '0', '2'),
	('594246', '', '0', '2'),
	('594652', '', '0', '2'),
	('597819', '', '0', '2'),
	('600314', '', '0', '2'),
	('600683', '', '0', '3'),
	('602053', '', '0', '2'),
	('603690', '', '0', '2'),
	('604217', '', '0', '2'),
	('604496', '', '0', '2'),
	('604606', '', '0', '3'),
	('604880', '', '0', '2'),
	('605795', '', '0', '2'),
	('606630', '', '0', '3'),
	('606788', '', '0', '2'),
	('607852', '', '0', '2'),
	('608389', '', '0', '3'),
	('608453', '', '0', '2'),
	('608946', '', '0', '2'),
	('610466', '', '0', '3'),
	('61105', '', '0', '2'),
	('612005', '', '0', '2'),
	('614522', '', '0', '2'),
	('614597', '', '0', '2'),
	('617247', '', '0', '2'),
	('618509', '', '0', '2'),
	('618732', '', '0', '2'),
	('620207', '', '0', '2'),
	('620254', '', '0', '2'),
	('620656', '', '0', '2'),
	('621191', '', '0', '2'),
	('622190', '', '0', '2'),
	('624506', '', '0', '3'),
	('626518', '', '0', '2'),
	('627027', '', '0', '2'),
	('627989', '', '0', '3'),
	('629637', '', '0', '2'),
	('630218', '', '0', '2'),
	('631485', '', '0', '2'),
	('633051', '', '0', '2'),
	('634524', '', '0', '2'),
	('635504', '', '0', '2'),
	('637321', '', '0', '2'),
	('637711', '', '0', '2'),
	('639578', '', '0', '2'),
	('63989', '', '0', '3'),
	('641259', '', '0', '2'),
	('643436', '', '0', '2'),
	('645228', '', '0', '2'),
	('647090', '', '0', '2'),
	('648965', '', '0', '3'),
	('650924', '', '0', '2'),
	('651573', '', '0', '2'),
	('652494', '', '0', '3'),
	('653585', '', '0', '2'),
	('654016', '', '0', '2'),
	('657022', '', '0', '2'),
	('657058', '', '0', '2'),
	('657196', '', '0', '2'),
	('66082', '', '0', '2'),
	('661034', '', '0', '2'),
	('661178', '', '0', '2'),
	('662089', '', '0', '2'),
	('662359', '', '0', '2'),
	('663098', '', '0', '2'),
	('663299', '', '0', '2'),
	('664576', '', '0', '3'),
	('665236', '', '0', '2'),
	('667360', '', '0', '2'),
	('66911', '', '0', '2'),
	('669861', '', '0', '2'),
	('670740', '', '0', '2'),
	('670835', '', '0', '2'),
	('671625', '', '0', '2'),
	('671997', '', '0', '2'),
	('672103', '', '0', '2'),
	('672279', '', '0', '2'),
	('672684', '', '0', '2'),
	('672719', '', '0', '2'),
	('673172', '', '0', '2'),
	('673655', '', '0', '2'),
	('678657', '', '0', '2'),
	('680510', '', '0', '2'),
	('681293', '', '0', '2'),
	('681386', '', '0', '2'),
	('681541', '', '0', '2'),
	('682313', '', '0', '2'),
	('682525', '', '0', '2'),
	('683233', '', '0', '2'),
	('683940', '', '0', '2'),
	('685129', '', '0', '2'),
	('687227', '', '0', '2'),
	('689257', '', '0', '2'),
	('690068', '', '0', '3'),
	('690108', '', '0', '2'),
	('6943', '', '0', '2'),
	('696671', '', '0', '2'),
	('696957', '', '0', '3'),
	('699680', '', '0', '2'),
	('700006', '', '0', '2'),
	('700737', '', '0', '2'),
	('701041', '', '0', '2'),
	('704540', '', '0', '2'),
	('705980', '', '0', '2'),
	('706461', '', '0', '2'),
	('707326', '', '0', '2'),
	('707545', '', '0', '2'),
	('707587', '', '0', '2'),
	('707959', '', '0', '2'),
	('70891', '', '0', '2'),
	('712121', '', '0', '2'),
	('712973', '', '0', '2'),
	('713340', '', '0', '3'),
	('713382', '', '0', '2'),
	('714210', '', '0', '3'),
	('714405', '', '0', '2'),
	('714553', '', '0', '2'),
	('715321', '', '0', '2'),
	('71662', '', '0', '2'),
	('719554', '', '0', '2'),
	('721413', '', '0', '2'),
	('721538', '', '0', '2'),
	('721794', '', '0', '2'),
	('722047', '', '0', '2'),
	('722421', '', '0', '2'),
	('723112', '', '0', '2'),
	('723530', '', '0', '2'),
	('725198', '', '0', '2'),
	('727883', '', '0', '2'),
	('728262', '', '0', '2'),
	('728712', '', '0', '2'),
	('729994', '', '0', '2'),
	('730353', '', '0', '2'),
	('733033', '', '0', '2'),
	('733339', '', '0', '2'),
	('734141', '', '0', '2'),
	('734749', '', '0', '2'),
	('735174', '', '0', '2'),
	('736865', '', '0', '2'),
	('739053', '', '0', '2'),
	('740017', '', '0', '2'),
	('740405', '', '0', '2'),
	('741929', '', '0', '2'),
	('74265', '', '0', '2'),
	('744336', '', '0', '2'),
	('745046', '', '0', '2'),
	('745216', '', '0', '2'),
	('745219', '', '0', '3'),
	('745403', '', '0', '2'),
	('748201', '', '0', '2'),
	('748384', '', '0', '2'),
	('749066', '', '0', '2'),
	('751477', '', '0', '2'),
	('751906', '', '0', '2'),
	('752276', '', '0', '2'),
	('752385', '', '0', '2'),
	('753153', '', '0', '3'),
	('754150', '', '0', '2'),
	('755432', '', '0', '2'),
	('75599', '', '0', '2'),
	('757955', '', '0', '2'),
	('764615', '', '0', '2'),
	('765247', '', '0', '2'),
	('765312', '', '0', '2'),
	('766275', 'John_Shepard', '0', '1'),
	('766876', '', '0', '2'),
	('769338', '', '0', '3'),
	('769796', '', '0', '2'),
	('772819', '', '0', '2'),
	('773191', '', '0', '2'),
	('773819', '', '0', '2'),
	('775256', '', '0', '2'),
	('776722', '', '0', '3'),
	('778266', '', '0', '2'),
	('779744', '', '0', '2'),
	('780764', '', '0', '2'),
	('781268', 'Trest_Trest', '0', '1'),
	('783793', '', '0', '2'),
	('783856', '', '0', '2'),
	('784564', '', '0', '2'),
	('785102', '', '0', '2'),
	('786594', '', '0', '2'),
	('787103', '', '0', '2'),
	('788669', '', '0', '2'),
	('788704', '', '0', '2'),
	('789215', '', '0', '2'),
	('789981', '', '0', '2'),
	('791763', '', '0', '2'),
	('792270', '', '0', '3'),
	('7929', '', '0', '3'),
	('793524', '', '0', '2'),
	('794271', '', '0', '2'),
	('794608', '', '0', '2'),
	('794724', '', '0', '2'),
	('794814', '', '0', '2'),
	('794871', '', '0', '2'),
	('797788', '', '0', '2'),
	('797838', '', '0', '2'),
	('799014', '', '0', '2'),
	('79964', '', '0', '2'),
	('800434', '', '0', '3'),
	('80197', '', '0', '2'),
	('80233', '', '0', '2'),
	('803498', '', '0', '2'),
	('803918', '', '0', '2'),
	('804284', '', '0', '3'),
	('807588', '', '0', '2'),
	('808070', '', '0', '2'),
	('80979', '', '0', '2'),
	('810384', '', '0', '2'),
	('811129', '', '0', '2'),
	('811286', '', '0', '2'),
	('811312', '', '0', '2'),
	('814256', '', '0', '2'),
	('814340', '', '0', '3'),
	('815214', '', '0', '3'),
	('815218', '', '0', '2'),
	('815834', '', '0', '2'),
	('816565', '', '0', '2'),
	('817639', '', '0', '3'),
	('817716', '', '0', '2'),
	('818997', '', '0', '2'),
	('819484', '', '0', '2'),
	('821503', '', '0', '3'),
	('821935', '', '0', '2'),
	('822643', '', '0', '2'),
	('823852', '', '0', '2'),
	('824275', '', '0', '2'),
	('826465', '', '0', '2'),
	('826774', '', '0', '2'),
	('827915', '', '0', '2'),
	('830677', '', '0', '2'),
	('8311', '', '0', '2'),
	('834908', '', '0', '3'),
	('835705', '', '0', '2'),
	('835966', '', '0', '2'),
	('837725', '', '0', '2'),
	('840252', '', '0', '2'),
	('84075', '', '0', '2'),
	('842316', '', '0', '3'),
	('842607', '', '0', '2'),
	('842771', '', '0', '2'),
	('84364', '', '0', '2'),
	('844283', '', '0', '2'),
	('845006', '', '0', '2'),
	('845580', '', '0', '2'),
	('846370', '', '0', '2'),
	('84800', '', '0', '2'),
	('849743', '', '0', '2'),
	('85120', '', '0', '2'),
	('851303', '', '0', '2'),
	('852375', '', '0', '2'),
	('852506', '', '0', '2'),
	('852621', '', '0', '2'),
	('855877', '', '0', '2'),
	('856482', '', '0', '2'),
	('856558', '', '0', '2'),
	('857063', '', '0', '3'),
	('857367', '', '0', '2'),
	('857655', '', '0', '2'),
	('857730', '', '0', '2'),
	('858783', '', '0', '3'),
	('85909', '', '0', '2'),
	('859707', '', '0', '2'),
	('860051', '', '0', '2'),
	('860056', '', '0', '2'),
	('860649', '', '0', '2'),
	('861033', '', '0', '2'),
	('862433', '', '0', '3'),
	('863034', '', '0', '2'),
	('863501', '', '0', '2'),
	('863756', '', '0', '2'),
	('86459', '', '0', '2'),
	('864608', '', '0', '2'),
	('864789', '', '0', '2'),
	('865572', '', '0', '2'),
	('86768', '', '0', '2'),
	('867727', '', '0', '3'),
	('868093', '', '0', '2'),
	('868748', '', '0', '2'),
	('870214', '', '0', '2'),
	('87023', '', '0', '2'),
	('873053', '', '0', '2'),
	('876086', '', '0', '2'),
	('876530', '', '0', '2'),
	('878164', '', '0', '2'),
	('878829', '', '0', '2'),
	('883059', '', '0', '2'),
	('883444', '', '0', '2'),
	('884102', '', '0', '2'),
	('885072', '', '0', '2'),
	('885739', '', '0', '2'),
	('887573', '', '0', '2'),
	('887619', '', '0', '3'),
	('888268', '', '0', '2'),
	('888270', '', '0', '2'),
	('88847', '', '0', '2'),
	('890393', '', '0', '2'),
	('892106', '', '0', '2'),
	('892493', '', '0', '2'),
	('892567', '', '0', '2'),
	('892650', '', '0', '3'),
	('895423', '', '0', '2'),
	('895471', '', '0', '3'),
	('896660', '', '0', '2'),
	('898917', '', '0', '2'),
	('900171', '', '0', '2'),
	('902086', '', '0', '2'),
	('902671', '', '0', '2'),
	('902875', '', '0', '2'),
	('90512', '', '0', '2'),
	('905219', 'Fost_Frendy', '0', '1'),
	('905343', '', '0', '2'),
	('907463', '', '0', '2'),
	('907988', '', '0', '2'),
	('90812', '', '0', '2'),
	('90843', '', '0', '2'),
	('909126', '', '0', '2'),
	('910669', '', '0', '3'),
	('912157', '', '0', '2'),
	('912369', '', '0', '2'),
	('91285', '', '0', '2'),
	('913004', '', '0', '3'),
	('913911', '', '0', '2'),
	('914050', '', '0', '2'),
	('914125', '', '0', '2'),
	('91413', '', '0', '2'),
	('915512', '', '0', '2'),
	('915895', '', '0', '2'),
	('916059', '', '0', '2'),
	('9188', '', '0', '2'),
	('92010', '', '0', '3'),
	('922026', '', '0', '2'),
	('926452', '', '0', '2'),
	('926682', '', '0', '2'),
	('927792', '', '0', '3'),
	('92790', '', '0', '2'),
	('931536', '', '0', '2'),
	('931609', '', '0', '2'),
	('932318', '', '0', '2'),
	('93345', '', '0', '3'),
	('933616', '', '0', '2'),
	('933824', '', '0', '2'),
	('934310', '', '0', '2'),
	('934645', '', '0', '2'),
	('935306', '', '0', '2'),
	('936546', '', '0', '2'),
	('938111', '', '0', '2'),
	('942014', '', '0', '2'),
	('942102', '', '0', '2'),
	('947258', '', '0', '2'),
	('950155', '', '0', '2'),
	('953533', '', '0', '2'),
	('954604', '', '0', '2'),
	('955380', '', '0', '2'),
	('957483', '', '0', '3'),
	('957526', '', '0', '2'),
	('957658', '', '0', '2'),
	('957832', 'Julia_Cyrus', '0', '1'),
	('959886', '', '0', '2'),
	('962342', '', '0', '2'),
	('963008', '', '0', '2'),
	('963571', '', '0', '2'),
	('964491', '', '0', '2'),
	('964690', '', '0', '2'),
	('964869', '', '0', '2'),
	('964885', '', '0', '3'),
	('967814', '', '0', '2'),
	('96826', '', '0', '2'),
	('969793', '', '0', '2'),
	('973273', '', '0', '2'),
	('974819', '', '0', '2'),
	('97513', '', '0', '2'),
	('975718', '', '0', '3'),
	('976341', '', '0', '2'),
	('976999', '', '0', '2'),
	('977467', '', '0', '2'),
	('981245', '', '0', '2'),
	('98128', '', '0', '2'),
	('981584', '', '0', '2'),
	('981695', '', '0', '2'),
	('985033', '', '0', '2'),
	('985135', '', '0', '2'),
	('98659', '', '0', '2'),
	('987644', '', '0', '2'),
	('987905', '', '0', '2'),
	('988071', '', '0', '2'),
	('988868', '', '0', '2'),
	('991618', '', '0', '2'),
	('992120', '', '0', '2'),
	('993410', '', '0', '2'),
	('993735', '', '0', '2'),
	('99380', '', '0', '2'),
	('994518', '', '0', '2'),
	('995566', '', '0', '2'),
	('996891', '', '0', '3'),
	('99790', '', '0', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `nicknames`
--

CREATE TABLE `nicknames` (
  `srv` varchar(155) NOT NULL,
  `name` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `othervehicles`
--

CREATE TABLE `othervehicles` (
  `type` varchar(155) NOT NULL,
  `number` text NOT NULL,
  `model` text NOT NULL,
  `position` text NOT NULL,
  `rotation` text NOT NULL,
  `color1` int(155) NOT NULL,
  `color2` int(155) NOT NULL,
  `price` int(155) NOT NULL,
  `idkey` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Структура таблицы `promocodes`
--

CREATE TABLE `promocodes` (
  `name` text NOT NULL,
  `type` int(155) NOT NULL,
  `count` int(155) NOT NULL,
  `owner` int(155) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `ID` int(12) UNSIGNED NOT NULL,
  `Author` text NOT NULL,
  `Question` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Respondent` text DEFAULT NULL,
  `Response` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Opened` datetime NOT NULL,
  `Closed` datetime DEFAULT NULL,
  `Status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `rodings`
--

CREATE TABLE `rodings` (
  `id` int(11) NOT NULL,
  `radius` varchar(255) DEFAULT NULL,
  `pos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `rodings`
--

INSERT INTO `rodings` (`id`, `radius`, `pos`) VALUES
(0, '50', '{\"x\":-1858.76306,\"y\":-1243.2915,\"z\":7.4957943}'),
(1, '50', '{\"x\":-2018.68884,\"y\":-1032.878,\"z\":1.32705271}'),
(2, '200', '{\"x\":-2104.93164,\"y\":-1005.13721,\"z\":7.85218334}'),
(3, '500', '{\"x\":2558.60278,\"y\":6155.892,\"z\":160.88092}'),
(4, '900', '{\"x\":713.062,\"y\":4093.02173,\"z\":33.60789}'),
(5, '300', '{\"x\":-1612.84766,\"y\":5262.49561,\"z\":2.85410357}');

-- --------------------------------------------------------

--
-- Структура таблицы `safes`
--

CREATE TABLE `safes` (
  `minamount` int(155) NOT NULL,
  `maxamount` int(155) NOT NULL,
  `pos` text NOT NULL,
  `address` text NOT NULL,
  `rotation` int(11) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `safes` (`minamount`, `maxamount`, `pos`, `address`, `rotation`, `idkey`) VALUES
	(12859, 35870, '{"x":262.900482,"y":216.127136,"z":101.683334}', '0', 0, 1),
	(32428, 55800, '{"x":266.267944,"y":215.220749,"z":101.683441}', '0', 0, 2),
	(45200, 75800, '{"x":264.3013,"y":216.193329,"z":101.683372}', '0', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `holder` varchar(155) NOT NULL,
  `model` varchar(155) NOT NULL,
  `health` int(11) NOT NULL,
  `fuel` int(11) NOT NULL,
  `components` text NOT NULL,
  `items` text NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `rotation` varchar(255) DEFAULT NULL,
  `keynum` int(11) DEFAULT NULL,
  `dirt` float DEFAULT NULL,
  `price` int(11) NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(155) NOT NULL,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `weapons`
--

CREATE TABLE `weapons` (
  `id` varchar(155) NOT NULL,
  `lastserial` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `weapons`
--

INSERT INTO `weapons` (`id`, `lastserial`) VALUES
('12', '101'),
('13', '319'),
('14', '53'),
('65', '39'),
('66', '20'),
('67', '106'),
('69', '203'),
('70', '22');

-- --------------------------------------------------------

--
-- Структура таблицы `whitelist`
--

CREATE TABLE `whitelist` (
  `id` int(11) NOT NULL,
  `socialclub` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `adminaccess`
--
ALTER TABLE `adminaccess`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `advertised`
--
ALTER TABLE `advertised`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `alcoclubs`
--
ALTER TABLE `alcoclubs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `banned`
--
ALTER TABLE `banned`
  ADD PRIMARY KEY (`uuid`);

--
-- Индексы таблицы `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `customization`
--
ALTER TABLE `customization`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `e_candidates`
--
ALTER TABLE `e_candidates`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `e_points`
--
ALTER TABLE `e_points`
  ADD PRIMARY KEY (`Election`);

--
-- Индексы таблицы `fractionaccess`
--
ALTER TABLE `fractionaccess`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `fractionranks`
--
ALTER TABLE `fractionranks`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `fractions`
--
ALTER TABLE `fractions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fractionvehicles`
--
ALTER TABLE `fractionvehicles`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`uuid`);

--
-- Индексы таблицы `gangspoints`
--
ALTER TABLE `gangspoints`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`SID`);

--
-- Индексы таблицы `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `othervehicles`
--
ALTER TABLE `othervehicles`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `rodings`
--
ALTER TABLE `rodings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `safes`
--
ALTER TABLE `safes`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accounts`
--
ALTER TABLE `accounts`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT для таблицы `adminaccess`
--
ALTER TABLE `adminaccess`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT для таблицы `advertised`
--
ALTER TABLE `advertised`
  MODIFY `ID` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `characters`
--
ALTER TABLE `characters`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT для таблицы `customization`
--
ALTER TABLE `customization`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=669;

--
-- AUTO_INCREMENT для таблицы `e_candidates`
--
ALTER TABLE `e_candidates`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `e_points`
--
ALTER TABLE `e_points`
  MODIFY `Election` int(155) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fractionaccess`
--
ALTER TABLE `fractionaccess`
  MODIFY `idkey` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `fractionranks`
--
ALTER TABLE `fractionranks`
  MODIFY `idkey` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT для таблицы `fractionvehicles`
--
ALTER TABLE `fractionvehicles`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT для таблицы `inventory`
--
ALTER TABLE `inventory`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `othervehicles`
--
ALTER TABLE `othervehicles`
  MODIFY `idkey` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT для таблицы `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `ID` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `safes`
--
ALTER TABLE `safes`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `whitelist`
--
ALTER TABLE `whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/* Система контейнеров (база данных) */
-- ----------------------------
-- Table structure for containers
-- ----------------------------
DROP TABLE IF EXISTS `containers`;
CREATE TABLE `containers`  (
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `price` int NOT NULL DEFAULT 0,
  `donate` tinyint(1) NULL DEFAULT 0,
  `position` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `rotation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `loot` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of containers
-- ----------------------------
INSERT INTO `containers` VALUES (0, 'Premium', 2500000, 0, '{\"x\":1214,\"y\":-2970,\"z\":4.8}', '{\"x\":0,\"y\":0,\"z\":-180}', '{\"lc200\":\"40\", \"m5\":\"30\", \"m5e60\":\"15\", \"lexgs350f\":\"10\",\"m8\":\"5\"}\r\n');
INSERT INTO `containers` VALUES (1, 'Medium', 4500000, 0, '{\"x\":1218.6,\"y\":-2970,\"z\":4.8}', '{\"x\":0,\"y\":0,\"z\":-180}', '{\"c63coupe\":\"40\", \"e63amg\":\"30\", \"2019m5\":\"15\", \"BRABUS700\":\"10\", \"mgt\":\"5\"}\r\n');
INSERT INTO `containers` VALUES (2, 'Premium+', 7000000, 0, '{\"x\":1214,\"y\":-2990,\"z\":4.8}', '{\"x\":0,\"y\":0,\"z\":-180}', '{\"g65\":\"40\", \"gle6c\":\"30\", \"gt63samg\":\"15\", \"gallardo\":\"10\", \"brabus850\":\"5\"}\r\n');
INSERT INTO `containers` VALUES (3, 'VIP', 9000000, 0, '{\"x\":1218.6,\"y\":-2990,\"z\":4.8}', '{\"x\":0,\"y\":0,\"z\":-180}', '{\"e63\":\"40\", \"e63amg\":\"30\", \"g63amg6x6cop\":\"15\", \"18perfomante\":\"10\",\"g65\":\"5\"}\r\n');
INSERT INTO `containers` VALUES (5, 'Low', 2500000, 0, '{\"x\":1218.6,\"y\":-3010,\"z\":4.8}', '{\"x\":0,\"y\":0,\"z\":-180}', '{\"lc200\":\"40\", \"m5\":\"30\", \"m5e60\":\"15\", \"lexgs350f\":\"10\",\"m8\":\"5\"}\r\n');
/* */

/* Farmer Job */
CREATE TABLE IF NOT EXISTS `farmer` (
  `uuid` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  `allpoints` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;