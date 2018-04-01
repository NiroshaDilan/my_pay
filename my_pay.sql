-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2018 at 05:56 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_pay`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `active_status` int(11) NOT NULL,
  `lane1` varchar(255) DEFAULT NULL,
  `lane2` varchar(255) DEFAULT NULL,
  `no` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `logitude` double NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_si` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `sub_name_en` varchar(255) DEFAULT NULL,
  `sub_name_si` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_name_ta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `latitude`, `logitude`, `name_en`, `name_si`, `name_ta`, `postcode`, `sub_name_en`, `sub_name_si`, `sub_name_ta`, `district_id`) VALUES
(1, 7.2167, 81.85, 'Akkaraipattu', 'අක්කරපත්තුව', NULL, '32400', NULL, NULL, NULL, 1),
(2, 7.4, 81.3, 'Ambagahawatta', 'අඹගහවත්ත', NULL, '90326', NULL, NULL, NULL, 1),
(3, 7.2833, 81.6667, 'Ampara', 'අම්පාර', NULL, '32000', NULL, NULL, NULL, 1),
(4, 7.026268, 81.633832, 'Bakmitiyawa', 'බක්මිටියාව', NULL, '32024', NULL, NULL, NULL, 1),
(5, 7.2833, 81.6667, 'Deegawapiya', 'දීඝවාපිය', NULL, '32006', NULL, NULL, NULL, 1),
(6, 7.1889, 81.5778, 'Devalahinda', 'දෙවලහිඳ', NULL, '32038', NULL, NULL, NULL, 1),
(7, 7.2833, 81.6667, 'Digamadulla Weeragoda', 'දිගාමඩුල්ල වීරගොඩ', NULL, '32008', NULL, NULL, NULL, 1),
(8, 7.358849, 81.280133, 'Dorakumbura', 'දොරකුඹුර', NULL, '32104', NULL, NULL, NULL, 1),
(9, 7.449853, 81.618014, 'Gonagolla', 'ගොනගොල්ල', NULL, '32064', NULL, NULL, NULL, 1),
(10, 7.4, 81.3, 'Hulannuge', 'හුලංනුගේ', NULL, '32514', NULL, NULL, NULL, 1),
(11, 7.413897, 81.826718, 'Kalmunai', 'කල්මුණේ', NULL, '32300', NULL, NULL, NULL, 1),
(12, 7.2167, 81.85, 'Kannakipuram', 'කන්නකිපුරම්', NULL, '32405', NULL, NULL, NULL, 1),
(13, 7.3833, 81.8333, 'Karativu', 'කරතිව්', NULL, '32250', NULL, NULL, NULL, 1),
(14, 7.490724, 81.310836, 'Kekirihena', 'කැකිරිහේන', NULL, '32074', NULL, NULL, NULL, 1),
(15, 7.184832, 81.555806, 'Koknahara', 'කොක්නහර', NULL, '32035', NULL, NULL, NULL, 1),
(16, 7.351733, 81.249913, 'Kolamanthalawa', 'කෝලමන්තලාව', NULL, '32102', NULL, NULL, NULL, 1),
(17, 6.976958, 81.78883, 'Komari', 'කෝමාරි', NULL, '32418', NULL, NULL, NULL, 1),
(18, 7.415566, 81.33954, 'Lahugala', 'ලාහුගල', NULL, '32512', NULL, NULL, NULL, 1),
(19, 7.1125, 81.8542, 'lmkkamam', 'ල්ම්ක්කමම්', NULL, '32450', NULL, NULL, NULL, 1),
(20, 7.535248, 81.351145, 'Mahaoya', 'මහඔය', NULL, '32070', NULL, NULL, NULL, 1),
(21, 7.45, 81.8167, 'Marathamune', 'මාරත්මුනේ', NULL, '32314', NULL, NULL, NULL, 1),
(22, 7.1889, 81.5778, 'Namaloya', 'නාමල්ඔය', NULL, '32037', NULL, NULL, NULL, 1),
(23, 7.4333, 81.7833, 'Navithanveli', 'නාවිදන්වෙලි', NULL, '32308', NULL, NULL, NULL, 1),
(24, 7.35, 81.85, 'Nintavur', 'නින්දවූර්', NULL, '32340', NULL, NULL, NULL, 1),
(25, 7.2833, 81.85, 'Oluvil', 'ඔළුවිල', NULL, '32360', NULL, NULL, NULL, 1),
(26, 7.4, 81.2333, 'Padiyatalawa', 'පදියතලාව', NULL, '32100', NULL, NULL, NULL, 1),
(27, 7.21752, 81.578714, 'Pahalalanda', 'පහලලන්ද', NULL, '32034', NULL, NULL, NULL, 1),
(28, 6.812201, 81.712237, 'Panama', 'පානම', NULL, '32508', NULL, NULL, NULL, 1),
(29, 7.0667, 81.6167, 'Pannalagama', 'පන්නලගම', NULL, '32022', NULL, NULL, NULL, 1),
(30, 7.25669, 81.609526, 'Paragahakele', 'පරගහකැලේ', NULL, '32031', NULL, NULL, NULL, 1),
(31, 7.434002, 81.814169, 'Periyaneelavanai', 'පෙරියනීලවන්නි', NULL, '32316', NULL, NULL, NULL, 1),
(32, 7.1889, 81.5778, 'Polwaga Janapadaya', 'පොල්වග ජනපදය', NULL, '32032', NULL, NULL, NULL, 1),
(33, 6.8667, 81.8333, 'Pottuvil', 'පොතුවිල්', NULL, '32500', NULL, NULL, NULL, 1),
(34, 7.3833, 81.8333, 'Sainthamaruthu', 'සායින්දමරුදු', NULL, '32280', NULL, NULL, NULL, 1),
(35, 7.3833, 81.8333, 'Samanthurai', 'සමන්තුරේ', NULL, '32200', NULL, NULL, NULL, 1),
(36, 7.464517, 81.263599, 'Serankada', 'සේරන්කද', NULL, '32101', NULL, NULL, NULL, 1),
(37, 7.610374, 81.429907, 'Tempitiya', 'ටැම්පිටිය', NULL, '32072', NULL, NULL, NULL, 1),
(38, 7.132227, 81.819074, 'Thambiluvil', 'ල්තැඹිළුවි', NULL, '32415', NULL, NULL, NULL, 1),
(39, 7.1167, 81.85, 'Tirukovil', 'තිරුකෝවිල', NULL, '32420', NULL, NULL, NULL, 1),
(40, 7.363281, 81.637746, 'Uhana', 'උහන', NULL, '32060', NULL, NULL, NULL, 1),
(41, 7.127849, 81.56922, 'Wadinagala', 'වඩිනාගල', NULL, '32039', NULL, NULL, NULL, 1),
(42, 7.1125, 81.8542, 'Wanagamuwa', 'වනගමුව', NULL, '32454', NULL, NULL, NULL, 1),
(43, 8.177645, 80.205048, 'Angamuwa', 'අංගමුව', NULL, '50248', NULL, NULL, NULL, 2),
(44, 8.35, 80.3833, 'Anuradhapura', 'අනුරාධපුරය', NULL, '50000', NULL, NULL, NULL, 2),
(45, 7.9753, 80.5266, 'Awukana', 'අව්කන', NULL, '50169', NULL, NULL, NULL, 2),
(46, 8.328993, 80.251702, 'Bogahawewa', 'බෝගහවැව', NULL, '50566', NULL, NULL, NULL, 2),
(47, 8.357373, 80.870087, 'Dematawewa', 'දෙමටවැව', NULL, '50356', NULL, NULL, NULL, 2),
(48, 7.9167, 80.55, 'Dimbulagala', 'දිඹුලාගල', NULL, '51031', NULL, NULL, NULL, 2),
(49, 8.65, 80.5167, 'Dutuwewa', 'දුටුවැව', NULL, '50393', NULL, NULL, NULL, 2),
(50, 8.413522, 80.318148, 'Elayapattuwa', 'ඇලයාපත්තුව', NULL, '50014', NULL, NULL, NULL, 2),
(51, 7.9167, 80.55, 'Ellewewa', 'ඇල්ලේවැව', NULL, '51034', NULL, NULL, NULL, 2),
(52, 8.1167, 80.7333, 'Eppawala', 'එප්පාවල', NULL, '50260', NULL, NULL, NULL, 2),
(53, 8.5595, 80.5476, 'Etawatunuwewa', 'ඇතාවැටුනවැව', NULL, '50584', NULL, NULL, NULL, 2),
(54, 8.613962, 80.539713, 'Etaweeragollewa', 'ඇතාවීරගොලෑව', NULL, '50518', NULL, NULL, NULL, 2),
(55, 8.089843, 80.685528, 'Galapitagala', 'ගලපිටගල', NULL, '32066', NULL, NULL, NULL, 2),
(56, 8.5833, 80.55, 'Galenbindunuwewa', 'ගලෙන්බිඳුනුවැව', NULL, '50390', NULL, NULL, NULL, 2),
(57, 8.412861, 80.378175, 'Galkadawala', 'ගල්කඩවල', NULL, '50006', NULL, NULL, NULL, 2),
(58, 7.9414, 80.565, 'Galkiriyagama', 'ගල්කිරියාගම', NULL, '50120', NULL, NULL, NULL, 2),
(59, 8.270414, 80.506526, 'Galkulama', 'ගල්කුලම', NULL, '50064', NULL, NULL, NULL, 2),
(60, 8.2, 80.3667, 'Galnewa', 'ගල්නෑව', NULL, '50170', NULL, NULL, NULL, 2),
(61, 8.4667, 80.3667, 'Gambirigaswewa', 'ගම්බිරිගස්වැව', NULL, '50057', NULL, NULL, NULL, 2),
(62, 8.090528, 80.628195, 'Ganewalpola', 'ගනේවල්පොල', NULL, '50142', NULL, NULL, NULL, 2),
(63, 8.0667, 80.6833, 'Gemunupura', 'ගැමුණුපුර', NULL, '50224', NULL, NULL, NULL, 2),
(64, 8.6167, 80.5333, 'Getalawa', 'ගෙතලාව', NULL, '50392', NULL, NULL, NULL, 2),
(65, 8.297336, 80.431753, 'Gnanikulama', 'ඝාණිකුළම', NULL, '50036', NULL, NULL, NULL, 2),
(66, 8.5333, 80.5083, 'Gonahaddenawa', 'ගෝනහද්දෙනෑව', NULL, '50554', NULL, NULL, NULL, 2),
(67, 8.047531, 80.748664, 'Habarana', 'හබරන', NULL, '50150', NULL, NULL, NULL, 2),
(68, 7.9474, 80.594, 'Halmillawa Dambulla', 'හල්මිලෑව දඹුල්ල', NULL, '50124', NULL, NULL, NULL, 2),
(69, 8.35, 80.2667, 'Halmillawetiya', 'හල්මිල්ලවැටිය', NULL, '50552', NULL, NULL, NULL, 2),
(70, 8.250421, 80.418663, 'Hidogama', 'හිද්දෝගම', NULL, '50044', NULL, NULL, NULL, 2),
(71, 8.4333, 80.8667, 'Horawpatana', 'හොරොව්පතාන', NULL, '50350', NULL, NULL, NULL, 2),
(72, 8.0667, 80.6833, 'Horiwila', 'හොරිවිල', NULL, '50222', NULL, NULL, NULL, 2),
(73, 8.1333, 80.3667, 'Hurigaswewa', 'හුරිගස්වැව', NULL, '50176', NULL, NULL, NULL, 2),
(74, 8.6167, 80.5333, 'Hurulunikawewa', 'හුරුලුනිකවැව', NULL, '50394', NULL, NULL, NULL, 2),
(75, 8.153213, 80.559989, 'Ihala Puliyankulama', 'ඉහල පුලියන්කුලම', NULL, '61316', NULL, NULL, NULL, 2),
(76, 8.061465, 80.478039, 'Kagama', 'කගම', NULL, '50282', NULL, NULL, NULL, 2),
(77, 8.4167, 80.6833, 'Kahatagasdigiliya', 'කහටගස්දිගිලිය', NULL, '50320', NULL, NULL, NULL, 2),
(78, 8.45, 80.65, 'Kahatagollewa', 'කහටගොල්ලෑව', NULL, '50562', NULL, NULL, NULL, 2),
(79, 8.0833, 80.4667, 'Kalakarambewa', 'කලකරඹෑව', NULL, '50288', NULL, NULL, NULL, 2),
(80, 8.0667, 80.6833, 'Kalaoya', 'කලාඔය', NULL, '50226', NULL, NULL, NULL, 2),
(81, 8.5333, 80.5083, 'Kalawedi Ulpotha', 'කලාවැදි උල්පොත', NULL, '50556', NULL, NULL, NULL, 2),
(82, 8.45, 80.55, 'Kallanchiya', 'කලංචිය', NULL, '50454', NULL, NULL, NULL, 2),
(83, 8.2333, 79.7667, 'Kalpitiya', 'කල්පිටිය', NULL, '61360', NULL, NULL, NULL, 2),
(84, 7.9167, 80.55, 'Kalukele Badanagala', 'කළුකැලේ බදනාගල', NULL, '51037', NULL, NULL, NULL, 2),
(85, 8.4233, 80.6783, 'Kapugallawa', 'කපුගල්ලව', NULL, '50370', NULL, NULL, NULL, 2),
(86, 8.23416, 80.322772, 'Karagahawewa', 'කරගහවැව', NULL, '50232', NULL, NULL, NULL, 2),
(87, 7.9167, 80.55, 'Kashyapapura', 'කාශ්‍යපපුර', NULL, '51032', NULL, NULL, NULL, 2),
(88, 8.5333, 80.4833, 'Kebithigollewa', 'කැබිතිගොල්ලෑව', NULL, '50500', NULL, NULL, NULL, 2),
(89, 8.037462, 80.59801, 'Kekirawa', 'කැකිරාව', NULL, '50100', NULL, NULL, NULL, 2),
(90, 8.4833, 80.6, 'Kendewa', 'කේන්දෑව', NULL, '50452', NULL, NULL, NULL, 2),
(91, 8.19407, 80.37012, 'Kiralogama', 'කිරළෝගම', NULL, '50259', NULL, NULL, NULL, 2),
(92, 8.537767, 80.556651, 'Kirigalwewa', 'කිරිගල්වැව', NULL, '50511', NULL, NULL, NULL, 2),
(93, 8.2333, 79.7667, 'Kirimundalama', 'කිරිමුන්ඩලම', NULL, '61362', NULL, NULL, NULL, 2),
(94, 7.916592, 80.63811, 'Kitulhitiyawa', 'කිතුල්හිටියාව', NULL, '50132', NULL, NULL, NULL, 2),
(95, 8.2, 80.45, 'Kurundankulama', 'කුරුන්දන්කුලම', NULL, '50062', NULL, NULL, NULL, 2),
(96, 8.168026, 80.617001, 'Labunoruwa', 'ලබුනෝරුව', NULL, '50088', NULL, NULL, NULL, 2),
(97, 8.35, 80.5, 'Ihalagama', 'ඉහලගම', NULL, '50304', NULL, NULL, NULL, 2),
(98, 8.0833, 80.4667, 'Ipologama', 'ඉපොලොගම', NULL, '50280', NULL, NULL, NULL, 2),
(99, 7.940041, 80.638217, 'Madatugama', 'මාදතුගම', NULL, '50130', NULL, NULL, NULL, 2),
(100, 7.991935, 80.61824, 'Maha Elagamuwa', 'මහ ඇලගමුව', NULL, '50126', NULL, NULL, NULL, 2),
(101, 7.9753, 80.5266, 'Mahabulankulama', 'මහබුලංකුලම', NULL, '50196', NULL, NULL, NULL, 2),
(102, 8.106, 80.3619, 'Mahailluppallama', 'මහඉලුප්පල්ලම', NULL, '50270', NULL, NULL, NULL, 2),
(103, 8.35, 80.5, 'Mahakanadarawa', 'මහකනදරාව', NULL, '50306', NULL, NULL, NULL, 2),
(104, 8.4167, 80.6833, 'Mahapothana', 'මහපොතාන', NULL, '50327', NULL, NULL, NULL, 2),
(105, 8.5595, 80.5476, 'Mahasenpura', 'මහසෙන්පුර', NULL, '50574', NULL, NULL, NULL, 2),
(106, 8.2814, 80.4588, 'Mahawilachchiya', 'මහවිලච්චිය', NULL, '50022', NULL, NULL, NULL, 2),
(107, 8.4, 80.6333, 'Mailagaswewa', 'මයිලගස්වැව', NULL, '50384', NULL, NULL, NULL, 2),
(108, 8.225, 80.3333, 'Malwanagama', 'මල්වනගම', NULL, '50236', NULL, NULL, NULL, 2),
(109, 7.895997, 80.475966, 'Maneruwa', 'මනේරුව', NULL, '50182', NULL, NULL, NULL, 2),
(110, 8.1333, 80.4833, 'Maradankadawala', 'මරදන්කඩවල', NULL, '50080', NULL, NULL, NULL, 2),
(111, 8.317498, 80.537899, 'Maradankalla', 'මරදන්කල්ල', NULL, '50308', NULL, NULL, NULL, 2),
(112, 8.540822, 80.495957, 'Medawachchiya', 'මැදවච්චිය', NULL, '50500', NULL, NULL, NULL, 2),
(113, 8.2333, 80.7333, 'Megodawewa', 'මීගොඩවැව', NULL, '50334', NULL, NULL, NULL, 2),
(114, 8.35, 80.5, 'Mihintale', 'මිහින්තලේ', NULL, '50300', NULL, NULL, NULL, 2),
(115, 8.513051, 80.778223, 'Morakewa', 'මොරකෑව', NULL, '50349', NULL, NULL, NULL, 2),
(116, 8.4167, 80.6833, 'Mulkiriyawa', 'මුල්කිරියාව', NULL, '50324', NULL, NULL, NULL, 2),
(117, 8.236464, 80.654663, 'Muriyakadawala', 'මුරියකඩවල', NULL, '50344', NULL, NULL, NULL, 2),
(118, 6.959444, 79.875278, 'Colombo 15', 'කොළඹ 15', 'கொழும்பு 15', '01500', 'Modara', 'මෝදර', 'முகத்துவாரம்', 5),
(119, 8.2667, 80.4667, 'Nachchaduwa', 'නච්චදූව', NULL, '50046', NULL, NULL, NULL, 2),
(120, 8.2333, 80.7333, 'Namalpura', 'නාමල්පුර', NULL, '50339', NULL, NULL, NULL, 2),
(121, 7.9872, 80.4597, 'Negampaha', 'නෑගම්පහ', NULL, '50180', NULL, NULL, NULL, 2),
(122, 8.266802, 80.20823, 'Nochchiyagama', 'නොච්චියාගම', NULL, '50200', NULL, NULL, NULL, 2),
(123, 7.9167, 80.55, 'Nuwaragala', 'නුවරගල', NULL, '51039', NULL, NULL, NULL, 2),
(124, 8.5595, 80.5476, 'Padavi Maithripura', 'පදවි මෛත්‍රීපුර', NULL, '50572', NULL, NULL, NULL, 2),
(125, 8.5595, 80.5476, 'Padavi Parakramapura', 'පදවි පරාක්‍රමපුර', NULL, '50582', NULL, NULL, NULL, 2),
(126, 8.5595, 80.5476, 'Padavi Sripura', 'පදවි ශ්‍රීපුර', NULL, '50587', NULL, NULL, NULL, 2),
(127, 8.5595, 80.5476, 'Padavi Sritissapura', 'පදවි ශ්‍රීතිස්සපුර', NULL, '50588', NULL, NULL, NULL, 2),
(128, 8.5595, 80.5476, 'Padaviya', 'පදවිය', NULL, '50570', NULL, NULL, NULL, 2),
(129, 8.2333, 80.7333, 'Padikaramaduwa', 'පඩිකරමඩුව', NULL, '50338', NULL, NULL, NULL, 2),
(130, 8.21672, 80.19116, 'Pahala Halmillewa', 'පහල හල්මිල්ලෑව', NULL, '50206', NULL, NULL, NULL, 2),
(131, 8.0667, 80.6833, 'Pahala Maragahawe', 'පහල මරගහවෙ', NULL, '50220', NULL, NULL, NULL, 2),
(132, 8.186896, 80.283767, 'Pahalagama', 'පහලගම', NULL, '50244', NULL, NULL, NULL, 2),
(133, 8.053538, 80.71918, 'Palugaswewa', 'පලුගස්වැව', NULL, '50144', NULL, NULL, NULL, 2),
(134, 8.4467, 80.46731, 'Pandukabayapura', 'පන්ඩුකාබයපුර', NULL, '50448', NULL, NULL, NULL, 2),
(135, 8.2814, 80.4588, 'Pandulagama', 'පන්ඩුලගම', NULL, '50029', NULL, NULL, NULL, 2),
(136, 8.4167, 80.6833, 'Parakumpura', 'පරාක්‍රමපුර', NULL, '50326', NULL, NULL, NULL, 2),
(137, 8.491831, 80.910014, 'Parangiyawadiya', 'පරංගියාවාඩිය', NULL, '50354', NULL, NULL, NULL, 2),
(138, 8.4333, 80.4333, 'Parasangahawewa', 'පරසන්ගහවැව', NULL, '50055', NULL, NULL, NULL, 2),
(139, 7.9167, 80.55, 'Pelatiyawa', 'පැලටියාව', NULL, '51033', NULL, NULL, NULL, 2),
(140, 8.2814, 80.4588, 'Pemaduwa', 'පෙමදූව', NULL, '50020', NULL, NULL, NULL, 2),
(141, 8.270584, 80.535827, 'Perimiyankulama', 'පෙරිමියන්කුලම', NULL, '50004', NULL, NULL, NULL, 2),
(142, 8.5595, 80.5476, 'Pihimbiyagolewa', 'පිහිඹියගොල්ලෑව', NULL, '50512', NULL, NULL, NULL, 2),
(143, 7.9167, 80.6, 'Pubbogama', 'පුබ්බෝගම', NULL, '50122', NULL, NULL, NULL, 2),
(144, 8.6167, 80.4667, 'Punewa', 'පූනෑව', NULL, '50506', NULL, NULL, NULL, 2),
(145, 8.1708, 80.2833, 'Rajanganaya', 'රාජාංගනය', NULL, '50246', NULL, NULL, NULL, 2),
(146, 8.4333, 80.5, 'Rambewa', 'රම්බෑව්', NULL, '50450', NULL, NULL, NULL, 2),
(147, 8.4, 80.6333, 'Rampathwila', 'රම්පත්විල', NULL, '50386', NULL, NULL, NULL, 2),
(148, 8.5595, 80.5476, 'Rathmalgahawewa', 'රත්මල්ගහවැව', NULL, '50514', NULL, NULL, NULL, 2),
(149, 8.3389, 80.4333, 'Saliyapura', 'සාලියපුර', NULL, '50008', NULL, NULL, NULL, 2),
(150, 8.4, 80.6333, 'Seeppukulama', 'සීප්පුකුලම', NULL, '50380', NULL, NULL, NULL, 2),
(151, 8.0833, 80.4667, 'Senapura', 'සේනාපුර', NULL, '50284', NULL, NULL, NULL, 2),
(152, 8.25237, 80.641743, 'Sivalakulama', 'සිවලකුලම', NULL, '50068', NULL, NULL, NULL, 2),
(153, 7.95, 80.5167, 'Siyambalewa', 'සියඹලෑව', NULL, '50184', NULL, NULL, NULL, 2),
(154, 8.2667, 80.4333, 'Sravasthipura', 'ස්‍රාවස්තිපුර', NULL, '50042', NULL, NULL, NULL, 2),
(155, 8.2167, 80.35, 'Talawa', 'තලාව', NULL, '50230', NULL, NULL, NULL, 2),
(156, 8.15, 80.3, 'Tambuttegama', 'තඹුත්තේගම', NULL, '50240', NULL, NULL, NULL, 2),
(157, 8.0333, 80.6, 'Tammennawa', 'තම්මැන්නාව', NULL, '50104', NULL, NULL, NULL, 2),
(158, 8.4, 80.3, 'Tantirimale', 'තන්තිරිමලේ', NULL, '50016', NULL, NULL, NULL, 2),
(159, 8.15, 80.3333, 'Telhiriyawa', 'තෙල්හිරියාව', NULL, '50242', NULL, NULL, NULL, 2),
(160, 8.2167, 80.3833, 'Tirappane', 'තිරප්පනේ', NULL, '50072', NULL, NULL, NULL, 2),
(161, 8.7167, 80.75, 'Tittagonewa', 'තිත්තගෝනෑව', NULL, '50558', NULL, NULL, NULL, 2),
(162, 8.2417, 80.1917, 'Udunuwara Colony', 'උඩුනුවර කොළණිය', NULL, '50207', NULL, NULL, NULL, 2),
(163, 8.4, 80.6333, 'Upuldeniya', 'උපුල්දෙනිය', NULL, '50382', NULL, NULL, NULL, 2),
(164, 8.254989, 80.55487, 'Uttimaduwa', 'උට්ටිමඩුව', NULL, '50067', NULL, NULL, NULL, 2),
(165, 8.5167, 81.1833, 'Vellamanal', 'වෙල්ලමනල්', NULL, '31053', NULL, NULL, NULL, 2),
(166, 8.4, 80.3, 'Viharapalugama', 'විහාරපාළුගම', NULL, '50012', NULL, NULL, NULL, 2),
(167, 8.5667, 80.6222, 'Wahalkada', 'වාහල්කඩ', NULL, '50564', NULL, NULL, NULL, 2),
(168, 8.479838, 80.497451, 'Wahamalgollewa', 'වහමල්ගොල්ලෑව', NULL, '50492', NULL, NULL, NULL, 2),
(169, 8.153134, 80.499049, 'Walagambahuwa', 'වලගම්බාහුව', NULL, '50086', NULL, NULL, NULL, 2),
(170, 8.5595, 80.5476, 'Walahaviddawewa', 'වලහාවිද්දෑව', NULL, '50516', NULL, NULL, NULL, 2),
(171, 8.4333, 80.8667, 'Welimuwapotana', 'වැලිමුවපතාන', NULL, '50358', NULL, NULL, NULL, 2),
(172, 8.5595, 80.5476, 'Welioya Project', 'වැලිඔය ව්‍යාපෘතිය', NULL, '50586', NULL, NULL, NULL, 2),
(173, 6.7792, 80.9208, 'Akkarasiyaya', 'අක්කරසියය', NULL, '90166', NULL, NULL, NULL, 3),
(174, 7.317155, 81.127134, 'Aluketiyawa', 'අලුකෙටියාව', NULL, '90736', NULL, NULL, NULL, 3),
(175, 7.2167, 81.0667, 'Aluttaramma', 'අළුත්තරම', NULL, '90722', NULL, NULL, NULL, 3),
(176, 6.81591, 81.056492, 'Ambadandegama', 'අඹදන්ඩෙගම', NULL, '90108', NULL, NULL, NULL, 3),
(177, 6.928519, 80.892126, 'Ambagasdowa', 'අඹගස්දූව', NULL, '90300', NULL, NULL, NULL, 3),
(178, 7.162769, 81.07755, 'Arawa', 'අරාව', NULL, '90017', NULL, NULL, NULL, 3),
(179, 7.084925, 81.198802, 'Arawakumbura', 'අරාවකුඹුර', NULL, '90532', NULL, NULL, NULL, 3),
(180, 7.328715, 81.036976, 'Arawatta', 'අරාවත්ත', NULL, '90712', NULL, NULL, NULL, 3),
(181, 7.0667, 81.1056, 'Atakiriya', 'අටකිරියාව', NULL, '90542', NULL, NULL, NULL, 3),
(182, 6.995365, 81.048438, 'Badulla', 'බදුල්ල', NULL, '90000', NULL, NULL, NULL, 3),
(183, 7.151852, 81.023867, 'Baduluoya', 'බදුලුඔය', NULL, '90019', NULL, NULL, NULL, 3),
(184, 6.862905, 81.097249, 'Ballaketuwa', 'බල්ලකැටුව', NULL, '90092', NULL, NULL, NULL, 3),
(185, 7.1167, 81.0375, 'Bambarapana', 'බඹරපාන', NULL, '90322', NULL, NULL, NULL, 3),
(186, 6.828867, 80.990898, 'Bandarawela', 'බණ්ඩාරවෙල', NULL, '90100', NULL, NULL, NULL, 3),
(187, 7.055713, 80.987238, 'Beramada', 'බෙරමඩ', NULL, '90066', NULL, NULL, NULL, 3),
(188, 6.887473, 81.141268, 'Bibilegama', 'බිබිලේගම', NULL, '90502', NULL, NULL, NULL, 3),
(189, 6.901625, 80.840162, 'Boragas', 'බොරගස්', NULL, '90362', NULL, NULL, NULL, 3),
(190, 6.828637, 80.881603, 'Boralanda', 'බොරලන්ද', NULL, '90170', NULL, NULL, NULL, 3),
(191, 6.95, 80.9333, 'Bowela', 'බෝවෙල', NULL, '90302', NULL, NULL, NULL, 3),
(192, 7.3589, 81.1759, 'Central Camp', 'මධ්‍යම කඳවුර', NULL, '32050', NULL, NULL, NULL, 3),
(193, 7.2125, 81.0583, 'Damanewela', 'දමනෙවෙල', NULL, '32126', NULL, NULL, NULL, 3),
(194, 7.3583, 81.1083, 'Dambana', 'දඹාන', NULL, '90714', NULL, NULL, NULL, 3),
(195, 7.2125, 81.0583, 'Dehiattakandiya', 'දෙහිඅත්තකන්ඩිය', NULL, '32150', NULL, NULL, NULL, 3),
(196, 6.899055, 81.053273, 'Demodara', 'දෙමෝදර', NULL, '90080', NULL, NULL, NULL, 3),
(197, 6.8667, 80.9667, 'Diganatenna', 'දිගනතැන්න', NULL, '90132', NULL, NULL, NULL, 3),
(198, 6.7381, 80.9669, 'Dikkapitiya', 'දික්කපිටිය', NULL, '90214', NULL, NULL, NULL, 3),
(199, 7.006897, 80.948431, 'Dimbulana', 'දිඹුලාන', NULL, '90324', NULL, NULL, NULL, 3),
(200, 7.2167, 81.0667, 'Divulapelessa', 'දිවුලපැලැස්ස', NULL, '90726', NULL, NULL, NULL, 3),
(201, 6.8, 80.9667, 'Diyatalawa', 'දියතලාව', NULL, '90150', NULL, NULL, NULL, 3),
(202, 6.819618, 81.012115, 'Dulgolla', 'දුල්ගොල්ල', NULL, '90104', NULL, NULL, NULL, 3),
(203, 7.269736, 81.226709, 'Ekiriyankumbura', 'ඇකිරියන්කුඹුර', NULL, '91502', NULL, NULL, NULL, 3),
(204, 6.874485, 81.050937, 'Ella', 'ඇල්ල', NULL, '90090', NULL, NULL, NULL, 3),
(205, 6.9342, 80.9853, 'Ettampitiya', 'ඇට්ටම්පිටිය', NULL, '90140', NULL, NULL, NULL, 3),
(206, 7.037347, 80.981759, 'Galauda', 'ගලඋඩ', NULL, '90065', NULL, NULL, NULL, 3),
(207, 7.4, 81.05, 'Galporuyaya', 'ගල්පොරුයාය', NULL, '90752', NULL, NULL, NULL, 3),
(208, 6.897394, 81.069668, 'Gawarawela', 'ගවරවෙල', NULL, '90082', NULL, NULL, NULL, 3),
(209, 7.4, 81.05, 'Girandurukotte', 'ගිරාඳුරුකෝට්ටෙ', NULL, '90750', NULL, NULL, NULL, 3),
(210, 7.071959, 80.975003, 'Godunna', 'ගොඩුන්න', NULL, '90067', NULL, NULL, NULL, 3),
(211, 6.8431, 80.9228, 'Gurutalawa', 'ගුරුතලාව', NULL, '90208', NULL, NULL, NULL, 3),
(212, 6.77061, 80.884385, 'Haldummulla', 'හල්දුම්මුල්ල', NULL, '90180', NULL, NULL, NULL, 3),
(213, 6.95, 81.0333, 'Hali Ela', 'හාලි ඇල', NULL, '90060', NULL, NULL, NULL, 3),
(214, 6.948019, 80.871427, 'Hangunnawa', 'හඟුන්නෑව', NULL, '90224', NULL, NULL, NULL, 3),
(215, 6.7667, 80.9667, 'Haputale', 'හපුතලේ', NULL, '90160', NULL, NULL, NULL, 3),
(216, 7.2167, 81.0667, 'Hebarawa', 'හබරාව', NULL, '90724', NULL, NULL, NULL, 3),
(217, 6.8212, 80.9407, 'Heeloya', 'හීලොය', NULL, '90112', NULL, NULL, NULL, 3),
(218, 6.8212, 80.9407, 'Helahalpe', 'හෙලහල්පේ', NULL, '90122', NULL, NULL, NULL, 3),
(219, 6.8556, 81.0722, 'Helapupula', 'හෙලපුපුළ', NULL, '90094', NULL, NULL, NULL, 3),
(220, 6.9594, 81.1552, 'Hopton', 'හෝප්ටන්', NULL, '90524', NULL, NULL, NULL, 3),
(221, 6.7833, 80.9, 'Idalgashinna', 'ඉදල්ගස්ඉන්න', NULL, '96167', NULL, NULL, NULL, 3),
(222, 7.023705, 81.105188, 'Kahataruppa', 'කහටරුප්ප', NULL, '90052', NULL, NULL, NULL, 3),
(223, 7.123675, 81.094178, 'Kalugahakandura', 'කළුගහකණ්ඳුර', NULL, '90546', NULL, NULL, NULL, 3),
(224, 6.770298, 80.854521, 'Kalupahana', 'කළුපහණ', NULL, '90186', NULL, NULL, NULL, 3),
(225, 6.816937, 80.993072, 'Kebillawela', 'කොබිල්ලවෙල', NULL, '90102', NULL, NULL, NULL, 3),
(226, 6.990765, 81.110073, 'Kendagolla', 'කන්දෙගොල්ල', NULL, '90048', NULL, NULL, NULL, 3),
(227, 7.32819, 81.083285, 'Keselpotha', 'කෙසෙල්පොත', NULL, '90738', NULL, NULL, NULL, 3),
(228, 7.103503, 81.080813, 'Ketawatta', 'කේතවත්ත', NULL, '90016', NULL, NULL, NULL, 3),
(229, 6.971183, 80.91551, 'Kiriwanagama', 'කිරිවනගම', NULL, '90184', NULL, NULL, NULL, 3),
(230, 6.759935, 81.027417, 'Koslanda', 'කොස්ලන්ද', NULL, '90190', NULL, NULL, NULL, 3),
(231, 7.2167, 81.0667, 'Kuruwitenna', NULL, NULL, '90728', NULL, NULL, NULL, 3),
(232, 7.0167, 81.0833, 'Kuttiyagolla', NULL, NULL, '90046', NULL, NULL, NULL, 3),
(233, 7.002113, 81.000496, 'Landewela', NULL, NULL, '90068', NULL, NULL, NULL, 3),
(234, 6.817452, 81.032456, 'Liyangahawela', NULL, NULL, '90106', NULL, NULL, NULL, 3),
(235, 7.041299, 81.199335, 'Lunugala', NULL, NULL, '90530', NULL, NULL, NULL, 3),
(236, 6.953933, 80.917059, 'Lunuwatta', NULL, NULL, '90310', NULL, NULL, NULL, 3),
(237, 7.045064, 81.133375, 'Madulsima', NULL, NULL, '90535', NULL, NULL, NULL, 3),
(238, 7.2444, 81.1167, 'Mahiyanganaya', NULL, NULL, '90700', NULL, NULL, NULL, 3),
(239, 6.8212, 80.9407, 'Makulella', NULL, NULL, '90114', NULL, NULL, NULL, 3),
(240, 7.4, 81.05, 'Malgoda', NULL, NULL, '90754', NULL, NULL, NULL, 3),
(241, 7.3, 81.1167, 'Mapakadawewa', NULL, NULL, '90730', NULL, NULL, NULL, 3),
(242, 7.024427, 80.942159, 'Maspanna', NULL, NULL, '90328', NULL, NULL, NULL, 3),
(243, 6.898433, 81.147817, 'Maussagolla', NULL, NULL, '90582', NULL, NULL, NULL, 3),
(244, 7.2125, 81.0583, 'Mawanagama', NULL, NULL, '32158', NULL, NULL, NULL, 3),
(245, 6.846, 80.9279, 'Medawela Udukinda', NULL, NULL, '90218', NULL, NULL, NULL, 3),
(246, 7.0833, 80.9833, 'Meegahakiula', NULL, NULL, '90015', NULL, NULL, NULL, 3),
(247, 6.9667, 81.0833, 'Metigahatenna', NULL, NULL, '90540', NULL, NULL, NULL, 3),
(248, 6.8817, 80.9347, 'Mirahawatta', NULL, NULL, '90134', NULL, NULL, NULL, 3),
(249, 6.9167, 81.15, 'Miriyabedda', NULL, NULL, '90504', NULL, NULL, NULL, 3),
(250, 7.2125, 81.0583, 'Nawamedagama', NULL, NULL, '32120', NULL, NULL, NULL, 3),
(251, 7, 81.0917, 'Nelumgama', NULL, NULL, '90042', NULL, NULL, NULL, 3),
(252, 6.740622, 80.97083, 'Nikapotha', NULL, NULL, '90165', NULL, NULL, NULL, 3),
(253, 6.9, 80.8833, 'Nugatalawa', NULL, NULL, '90216', NULL, NULL, NULL, 3),
(254, 6.821352, 80.841789, 'Ohiya', NULL, NULL, '90168', NULL, NULL, NULL, 3),
(255, 7.4, 81.05, 'Pahalarathkinda', NULL, NULL, '90756', NULL, NULL, NULL, 3),
(256, 7.007551, 81.227033, 'Pallekiruwa', NULL, NULL, '90534', NULL, NULL, NULL, 3),
(257, 6.935017, 81.151166, 'Passara', NULL, NULL, '90500', NULL, NULL, NULL, 3),
(258, 6.8742, 80.9507, 'Pattiyagedara', NULL, NULL, '90138', NULL, NULL, NULL, 3),
(259, 6.9594, 81.1552, 'Pelagahatenna', NULL, NULL, '90522', NULL, NULL, NULL, 3),
(260, 6.943148, 80.84264, 'Perawella', NULL, NULL, '90222', NULL, NULL, NULL, 3),
(261, 7.106546, 81.135882, 'Pitamaruwa', NULL, NULL, '90544', NULL, NULL, NULL, 3),
(262, 6.803692, 80.884474, 'Pitapola', NULL, NULL, '90171', NULL, NULL, NULL, 3),
(263, 6.907145, 80.931109, 'Puhulpola', NULL, NULL, '90212', NULL, NULL, NULL, 3),
(264, 7.5458, 81.125, 'Rajagalatenna', NULL, NULL, '32068', NULL, NULL, NULL, 3),
(265, 6.8, 80.9167, 'Ratkarawwa', NULL, NULL, '90164', NULL, NULL, NULL, 3),
(266, 7.2333, 81.1, 'Ridimaliyadda', NULL, NULL, '90704', NULL, NULL, NULL, 3),
(267, 6.912388, 80.843988, 'Silmiyapura', NULL, NULL, '90364', NULL, NULL, NULL, 3),
(268, 7.003857, 81.073671, 'Sirimalgoda', NULL, NULL, '90044', NULL, NULL, NULL, 3),
(269, 7.2125, 81.0583, 'Siripura', NULL, NULL, '32155', NULL, NULL, NULL, 3),
(270, 7.3583, 81.1083, 'Sorabora Colony', NULL, NULL, '90718', NULL, NULL, NULL, 3),
(271, 6.8333, 80.8778, 'Soragune', NULL, NULL, '90183', NULL, NULL, NULL, 3),
(272, 7.0167, 81.05, 'Soranatota', NULL, NULL, '90008', NULL, NULL, NULL, 3),
(273, 7.0833, 81.05, 'Taldena', NULL, NULL, '90014', NULL, NULL, NULL, 3),
(274, 7.0333, 81.05, 'Timbirigaspitiya', NULL, NULL, '90012', NULL, NULL, NULL, 3),
(275, 6.94706, 80.85877, 'Uduhawara', NULL, NULL, '90226', NULL, NULL, NULL, 3),
(276, 7.237143, 81.102818, 'Uraniya', NULL, NULL, '90702', NULL, NULL, NULL, 3),
(277, 6.8333, 81.0667, 'Uva Karandagolla', NULL, NULL, '90091', NULL, NULL, NULL, 3),
(278, 6.7333, 81.0167, 'Uva Mawelagama', NULL, NULL, '90192', NULL, NULL, NULL, 3),
(279, 6.8333, 80.8778, 'Uva Tenna', NULL, NULL, '90188', NULL, NULL, NULL, 3),
(280, 7.3, 81.1167, 'Uva Tissapura', NULL, NULL, '90734', NULL, NULL, NULL, 3),
(281, 6.906059, 80.913222, 'Welimada', NULL, NULL, '90200', NULL, NULL, NULL, 3),
(282, 7.5458, 81.125, 'Werunketagoda', NULL, NULL, '32062', NULL, NULL, NULL, 3),
(283, 7.337729, 81.201255, 'Wewatta', NULL, NULL, '90716', NULL, NULL, NULL, 3),
(284, 7.029, 80.937, 'Wineethagama', NULL, NULL, '90034', NULL, NULL, NULL, 3),
(285, 7.047834, 80.950541, 'Yalagamuwa', NULL, NULL, '90329', NULL, NULL, NULL, 3),
(286, 7.2667, 81.15, 'Yalwela', NULL, NULL, '90706', NULL, NULL, NULL, 3),
(287, 7.4833, 81.75, 'Addalaichenai', NULL, NULL, '32350', NULL, NULL, NULL, 4),
(288, 7.8597, 81.4411, 'Ampilanthurai', 'අම්පිලන්තුරෙයි', NULL, '30162', NULL, NULL, NULL, 4),
(289, 7.667705, 81.725335, 'Araipattai', NULL, NULL, '30150', NULL, NULL, NULL, 4),
(290, 7.670934, 81.574798, 'Ayithiyamalai', NULL, NULL, '30362', NULL, NULL, NULL, 4),
(291, 7.5083, 81.7583, 'Bakiella', NULL, NULL, '30206', NULL, NULL, NULL, 4),
(292, 7.7167, 81.7, 'Batticaloa', 'මඩකලපුව', NULL, '30000', NULL, NULL, NULL, 4),
(293, 7.575161, 81.783189, 'Cheddipalayam', 'චෙඩ්ඩිපලයම්', NULL, '30194', NULL, NULL, NULL, 4),
(294, 7.7833, 81.6, 'Chenkaladi', 'චෙන්කලඩි', NULL, '30350', NULL, NULL, NULL, 4),
(295, 7.768518, 81.619817, 'Eravur', 'එරාවූර්', NULL, '30300', NULL, NULL, NULL, 4),
(296, 7.5167, 81.7833, 'Kaluwanchikudi', NULL, NULL, '30200', NULL, NULL, NULL, 4),
(297, 7.8, 81.5667, 'Kaluwankemy', NULL, NULL, '30372', NULL, NULL, NULL, 4),
(298, 7.675505, 81.674125, 'Kannankudah', NULL, NULL, '30016', NULL, NULL, NULL, 4),
(299, 7.689478, 81.531117, 'Karadiyanaru', NULL, NULL, '30354', NULL, NULL, NULL, 4),
(300, 8.243933, 81.360298, 'Kathiraveli', NULL, NULL, '30456', NULL, NULL, NULL, 4),
(301, 7.675, 81.73, 'Kattankudi', NULL, NULL, '30100', NULL, NULL, NULL, 4),
(302, 7.866841, 81.529737, 'Kiran', NULL, NULL, '30394', NULL, NULL, NULL, 4),
(303, 7.615628, 81.764245, 'Kirankulam', NULL, NULL, '30159', NULL, NULL, NULL, 4),
(304, 7.6389, 81.6639, 'Koddaikallar', NULL, NULL, '30249', NULL, NULL, NULL, 4),
(305, 7.8597, 81.4411, 'Kokkaddichcholai', NULL, NULL, '30160', NULL, NULL, NULL, 4),
(306, 7.594069, 81.77497, 'Kurukkalmadam', NULL, NULL, '30192', NULL, NULL, NULL, 4),
(307, 7.482114, 81.762407, 'Mandur', NULL, NULL, '30220', NULL, NULL, NULL, 4),
(308, 7.9, 81.5167, 'Miravodai', NULL, NULL, '30426', NULL, NULL, NULL, 4),
(309, 7.8667, 81.5333, 'Murakottanchanai', NULL, NULL, '30392', NULL, NULL, NULL, 4),
(310, 7.525, 81.725, 'Navagirinagar', NULL, NULL, '30238', NULL, NULL, NULL, 4),
(311, 7.5833, 81.7167, 'Navatkadu', NULL, NULL, '30018', NULL, NULL, NULL, 4),
(312, 7.9167, 81.5167, 'Oddamavadi', NULL, NULL, '30420', NULL, NULL, NULL, 4),
(313, 7.4833, 81.75, 'Palamunai', NULL, NULL, '32354', NULL, NULL, NULL, 4),
(314, 7.75, 81.5667, 'Pankudavely', NULL, NULL, '30352', NULL, NULL, NULL, 4),
(315, 7.536243, 81.764557, 'Periyaporativu', NULL, NULL, '30230', NULL, NULL, NULL, 4),
(316, 7.561255, 81.47434, 'Periyapullumalai', NULL, NULL, '30358', NULL, NULL, NULL, 4),
(317, 7.75, 81.6333, 'Pillaiyaradi', NULL, NULL, '30022', NULL, NULL, NULL, 4),
(318, 7.9667, 81.3833, 'Punanai', NULL, NULL, '30428', NULL, NULL, NULL, 4),
(319, 7.76355, 81.645852, 'Thannamunai', NULL, NULL, '30024', NULL, NULL, NULL, 4),
(320, 7.5833, 81.7833, 'Thettativu', NULL, NULL, '30196', NULL, NULL, NULL, 4),
(321, 7.525269, 81.684177, 'Thikkodai', NULL, NULL, '30236', NULL, NULL, NULL, 4),
(322, 7.525, 81.725, 'Thirupalugamam', NULL, NULL, '30234', NULL, NULL, NULL, 4),
(323, 7.6167, 81.55, 'Unnichchai', NULL, NULL, '30364', NULL, NULL, NULL, 4),
(324, 7.9167, 81.4333, 'Vakaneri', NULL, NULL, '30424', NULL, NULL, NULL, 4),
(325, 8.165968, 81.415623, 'Vakarai', NULL, NULL, '30450', NULL, NULL, NULL, 4),
(326, 7.7, 81.6, 'Valaichenai', NULL, NULL, '30400', NULL, NULL, NULL, 4),
(327, 7.807445, 81.591476, 'Vantharumoolai', NULL, NULL, '30376', NULL, NULL, NULL, 4),
(328, 7.5, 81.7333, 'Vellavely', NULL, NULL, '30204', NULL, NULL, NULL, 4),
(329, 6.95, 80.1, 'Akarawita', 'අකරවිට', NULL, '10732', NULL, NULL, NULL, 5),
(330, 6.77533, 79.96413, 'Ambalangoda', 'අම්බලන්ගොඩ', NULL, '80300', NULL, NULL, NULL, 5),
(331, 6.873072, 79.997214, 'Athurugiriya', 'අතුරුගිරිය', NULL, '10150', NULL, NULL, NULL, 5),
(332, 6.955003, 80.211692, 'Avissawella', 'අවිස්සාවේල්ල', NULL, '10700', NULL, NULL, NULL, 5),
(333, 6.877924, 80.051592, 'Batawala', 'බටවැල', NULL, '10513', NULL, NULL, NULL, 5),
(334, 6.900299, 79.922136, 'Battaramulla', 'බත්තරමුල්ල', NULL, '10120', NULL, NULL, NULL, 5),
(335, 6.9408, 79.9889, 'Biyagama', 'බියගම', NULL, '11650', NULL, NULL, NULL, 5),
(336, 6.8333, 80.1167, 'Bope', 'බෝපෙ', NULL, '10522', NULL, NULL, NULL, 5),
(337, 6.8425, 79.9006, 'Boralesgamuwa', 'බොරලැස්ගමුව', NULL, '10290', NULL, NULL, NULL, 5),
(338, 6.914722, 79.877778, 'Colombo 8', 'කොළඹ 8', 'கொழும்பு 8', '00800', 'Borella', 'බොරැල්ල', 'பொறளை', 5),
(339, 6.9115, 80.0622, 'Dedigamuwa', 'දැඩිගමුව', NULL, '10656', NULL, NULL, NULL, 5),
(340, 6.856387, 79.865156, 'Dehiwala', 'දෙහිවල', NULL, '10350', NULL, NULL, NULL, 5),
(341, 6.7833, 79.9167, 'Deltara', 'දෙල්තර', NULL, '10302', NULL, NULL, NULL, 5),
(342, 6.882518, 80.017704, 'Habarakada', 'හබරකඩ', NULL, '10204', NULL, NULL, NULL, 5),
(343, 6.905988, 80.083333, 'Hanwella', NULL, NULL, '10650', NULL, NULL, NULL, 5),
(344, 6.85, 79.95, 'Hiripitya', NULL, NULL, '10232', NULL, NULL, NULL, 5),
(345, 6.890237, 79.969894, 'Hokandara', NULL, NULL, '10118', NULL, NULL, NULL, 5),
(346, 6.85685, 80.005384, 'Homagama', NULL, NULL, '10200', NULL, NULL, NULL, 5),
(347, 6.807635, 80.066995, 'Horagala', NULL, NULL, '10502', NULL, NULL, NULL, 5),
(348, 6.930497, 79.984817, 'Kaduwela', NULL, NULL, '10640', NULL, NULL, NULL, 5),
(349, 6.9167, 80.1, 'Kaluaggala', NULL, NULL, '11224', NULL, NULL, NULL, 5),
(350, 6.9486, 80.1, 'Kapugoda', NULL, NULL, '10662', NULL, NULL, NULL, 5),
(351, 6.75, 79.9167, 'Kehelwatta', NULL, NULL, '12550', NULL, NULL, NULL, 5),
(352, 6.804157, 80.009759, 'Kiriwattuduwa', NULL, NULL, '10208', NULL, NULL, NULL, 5),
(353, 6.933035, 79.888095, 'Kolonnawa', NULL, NULL, '10600', NULL, NULL, NULL, 5),
(354, 6.9333, 80.1411, 'Kosgama', NULL, NULL, '10730', NULL, NULL, NULL, 5),
(355, 6.766824, 79.930103, 'Madapatha', NULL, NULL, '10306', NULL, NULL, NULL, 5),
(356, 6.843401, 79.932766, 'Maharagama', NULL, NULL, '10280', NULL, NULL, NULL, 5),
(357, 6.901241, 79.958072, 'Malabe', NULL, NULL, '10115', NULL, NULL, NULL, 5),
(358, 6.7733, 79.8825, 'Moratuwa', NULL, NULL, '10400', NULL, NULL, NULL, 5),
(359, 6.838864, 79.863141, 'Mount Lavinia', NULL, NULL, '10370', NULL, NULL, NULL, 5),
(360, 6.887403, 80.012959, 'Mullegama', NULL, NULL, '10202', NULL, NULL, NULL, 5),
(361, 6.9531, 80.2183, 'Napawela', NULL, NULL, '10704', NULL, NULL, NULL, 5),
(362, 6.877563, 79.886231, 'Nugegoda', NULL, NULL, '10250', NULL, NULL, NULL, 5),
(363, 6.837834, 80.090301, 'Padukka', NULL, NULL, '10500', NULL, NULL, NULL, 5),
(364, 6.843999, 79.944518, 'Pannipitiya', NULL, NULL, '10230', NULL, NULL, NULL, 5),
(365, 6.7981, 79.9264, 'Piliyandala', NULL, NULL, '10300', NULL, NULL, NULL, 5),
(366, 6.8477, 80.016, 'Pitipana Homagama', NULL, NULL, '10206', NULL, NULL, NULL, 5),
(367, 6.7842, 79.9811, 'Polgasowita', NULL, NULL, '10320', NULL, NULL, NULL, 5),
(368, 6.9703, 80.1222, 'Pugoda', NULL, NULL, '10660', NULL, NULL, NULL, 5),
(369, 6.915253, 80.032962, 'Ranala', NULL, NULL, '10654', NULL, NULL, NULL, 5),
(370, 6.815785, 79.955978, 'Siddamulla', NULL, NULL, '10304', NULL, NULL, NULL, 5),
(371, 6.800041, 79.966845, 'Siyambalagoda', NULL, NULL, '81462', NULL, NULL, NULL, 5),
(372, 6.8897, 79.9359, 'Sri Jayawardenepu', NULL, NULL, '10100', NULL, NULL, NULL, 5),
(373, 6.8692, 79.9411, 'Talawatugoda', NULL, NULL, '10116', NULL, NULL, NULL, 5),
(374, 6.9061, 80.1353, 'Tummodara', NULL, NULL, '10682', NULL, NULL, NULL, 5),
(375, 6.9061, 80.1353, 'Waga', NULL, NULL, '10680', NULL, NULL, NULL, 5),
(376, 6.874657, 79.860483, 'Colombo 6', 'කොළඹ 6', 'கொழும்பு 6', '00600', 'Wellawatta', 'වැල්ලවත්ත', 'வெள்ளவத்தை', 5),
(377, 6.1833, 80.2, 'Agaliya', 'අගලිය', NULL, '80212', NULL, NULL, NULL, 6),
(378, 5.970765, 80.370204, 'Ahangama', 'අහංගම', NULL, '80650', NULL, NULL, NULL, 6),
(379, 6.315216, 80.03029, 'Ahungalla', 'අහුන්ගල්ල', NULL, '80562', NULL, NULL, NULL, 6),
(380, 6.1845, 80.3032, 'Akmeemana', 'අක්මීමාන', NULL, '80090', NULL, NULL, NULL, 6),
(381, 6.4167, 80, 'Alawatugoda', 'අලවතුගොඩ', NULL, '20140', NULL, NULL, NULL, 6),
(382, 6.180801, 80.136538, 'Aluthwala', 'අළුත්වල', NULL, '80332', NULL, NULL, NULL, 6),
(383, 6.193907, 80.14453, 'Ampegama', 'අම්පෙගම', NULL, '80204', NULL, NULL, NULL, 6),
(384, 6.314635, 80.22104, 'Amugoda', 'අමුගොඩ', NULL, '80422', NULL, NULL, NULL, 6),
(385, 6.0722, 80.2389, 'Anangoda', 'අනන්ගොඩ', NULL, '80044', NULL, NULL, NULL, 6),
(386, 6.036963, 80.322148, 'Angulugaha', 'අඟුලුගහ', NULL, '80122', NULL, NULL, NULL, 6),
(387, 6.05329, 80.274014, 'Ankokkawala', 'අංකොක්කාවල', NULL, '80048', NULL, NULL, NULL, 6),
(388, 6.3167, 80.0333, 'Aselapura', 'ඇසලපුර', NULL, '51072', NULL, NULL, NULL, 6),
(389, 6.165975, 80.201841, 'Baddegama', 'බද්දේගම', NULL, '80200', NULL, NULL, NULL, 6),
(390, 6.269254, 80.036054, 'Balapitiya', 'බලපිටිය', NULL, '80550', NULL, NULL, NULL, 6),
(391, 6.2706, 80.42, 'Banagala', 'බනගල', NULL, '80143', NULL, NULL, NULL, 6),
(392, 6.235697, 80.120034, 'Batapola', 'බටපොල', NULL, '80320', NULL, NULL, NULL, 6),
(393, 6.4211, 79.9989, 'Bentota', 'බෙන්තොට', NULL, '80500', NULL, NULL, NULL, 6),
(394, 6.2233, 80.2, 'Boossa', 'බූස්ස', NULL, '80270', NULL, NULL, NULL, 6),
(395, 6.335012, 80.452741, 'Dellawa', 'දෙල්ලව', NULL, '81477', NULL, NULL, NULL, 6),
(396, 6.012945, 80.376153, 'Dikkumbura', 'දික්කුඹුර', NULL, '80654', NULL, NULL, NULL, 6),
(397, 6.0967, 80.1456, 'Dodanduwa', 'දොඩන්දූව', NULL, '80250', NULL, NULL, NULL, 6),
(398, 6.2922, 80.1988, 'Ella Tanabaddegama', 'ඇල්ල තනබද්දේගම', NULL, '80402', NULL, NULL, NULL, 6),
(399, 6.300214, 80.171923, 'Elpitiya', 'ඇල්පිටිය', NULL, '80400', NULL, NULL, NULL, 6),
(400, 6.0536, 80.2117, 'Galle', 'ගාල්ල', NULL, '80000', NULL, NULL, NULL, 6),
(401, 6.2233, 80.2, 'Ginimellagaha', 'ගිනිමෙල්ලගහ', NULL, '80220', NULL, NULL, NULL, 6),
(402, 6.0564, 80.1839, 'Gintota', 'ගින්තොට', NULL, '80280', NULL, NULL, NULL, 6),
(403, 6.2333, 80.0667, 'Godahena', 'ගොඩහේන', NULL, '80302', NULL, NULL, NULL, 6),
(404, 6.0667, 80.3, 'Gonamulla Junction', 'ගෝනමුල්ල හංදිය', NULL, '80054', NULL, NULL, NULL, 6),
(405, 6.2233, 80.2, 'Gonapinuwala', 'ගොනාපිනූවල', NULL, '80230', NULL, NULL, NULL, 6),
(406, 6.0043, 80.326, 'Habaraduwa', 'හබරාදූව', NULL, '80630', NULL, NULL, NULL, 6),
(407, 6.4052, 80.038306, 'Haburugala', 'හබුරුගල', NULL, '80506', NULL, NULL, NULL, 6),
(408, 6.139535, 80.113201, 'Hikkaduwa', NULL, NULL, '80240', NULL, NULL, NULL, 6),
(409, 6.316028, 80.328888, 'Hiniduma', NULL, NULL, '80080', NULL, NULL, NULL, 6),
(410, 6.079898, 80.317871, 'Hiyare', NULL, NULL, '80056', NULL, NULL, NULL, 6),
(411, 6.2244, 80.21, 'Kahaduwa', NULL, NULL, '80460', NULL, NULL, NULL, 6),
(412, 6.185429, 80.07601, 'Kahawa', NULL, NULL, '80312', NULL, NULL, NULL, 6),
(413, 6.084182, 80.395041, 'Karagoda', NULL, NULL, '80151', NULL, NULL, NULL, 6),
(414, 6.260467, 80.072462, 'Karandeniya', NULL, NULL, '80360', NULL, NULL, NULL, 6),
(415, 6.332288, 80.028315, 'Kosgoda', NULL, NULL, '80570', NULL, NULL, NULL, 6),
(416, 6.1375, 80.3419, 'Kottawagama', NULL, NULL, '80062', NULL, NULL, NULL, 6),
(417, 6.1667, 80.1, 'Kottegoda', NULL, NULL, '81180', NULL, NULL, NULL, 6),
(418, 6.2167, 80.1167, 'Kuleegoda', NULL, NULL, '80328', NULL, NULL, NULL, 6),
(419, 6.108129, 80.393927, 'Magedara', NULL, NULL, '80152', NULL, NULL, NULL, 6),
(420, 6.3167, 80.0333, 'Mahawela Sinhapura', NULL, NULL, '51076', NULL, NULL, NULL, 6),
(421, 6.234713, 80.27784, 'Mapalagama', NULL, NULL, '80112', NULL, NULL, NULL, 6),
(422, 6.2167, 80.3, 'Mapalagama Central', NULL, NULL, '80116', NULL, NULL, NULL, 6),
(423, 6.302366, 80.254218, 'Mattaka', NULL, NULL, '80424', NULL, NULL, NULL, 6),
(424, 6.1845, 80.3032, 'Meda-Keembiya', NULL, NULL, '80092', NULL, NULL, NULL, 6),
(425, 6.189135, 80.093504, 'Meetiyagoda', NULL, NULL, '80330', NULL, NULL, NULL, 6),
(426, 6.201296, 80.277829, 'Nagoda', NULL, NULL, '80110', NULL, NULL, NULL, 6),
(427, 6.143029, 80.338164, 'Nakiyadeniya', NULL, NULL, '80064', NULL, NULL, NULL, 6),
(428, 6.304655, 80.134175, 'Nawadagala', NULL, NULL, '80416', NULL, NULL, NULL, 6),
(429, 6.37393, 80.363267, 'Neluwa', NULL, NULL, '80082', NULL, NULL, NULL, 6),
(430, 6.207731, 80.107663, 'Nindana', NULL, NULL, '80318', NULL, NULL, NULL, 6),
(431, 6.293995, 80.475431, 'Pahala Millawa', NULL, NULL, '81472', NULL, NULL, NULL, 6),
(432, 6.274182, 80.334525, 'Panangala', NULL, NULL, '80075', NULL, NULL, NULL, 6),
(433, 6.36, 80.3653, 'Pannimulla Panagoda', NULL, NULL, '80086', NULL, NULL, NULL, 6),
(434, 6.2167, 80.3, 'Parana ThanaYamgoda', NULL, NULL, '80114', NULL, NULL, NULL, 6),
(435, 6.1333, 80.1167, 'Patana', NULL, NULL, '22012', NULL, NULL, NULL, 6),
(436, 6.348894, 80.217851, 'Pitigala', NULL, NULL, '80420', NULL, NULL, NULL, 6),
(437, 6.1167, 80.2167, 'Poddala', NULL, NULL, '80170', NULL, NULL, NULL, 6),
(438, 6.3244, 80.4383, 'Polgampola', NULL, NULL, '12136', NULL, NULL, NULL, 6),
(439, 6.279568, 80.231811, 'Porawagama', NULL, NULL, '80408', NULL, NULL, NULL, 6),
(440, 6.3833, 80.0833, 'Rantotuwila', NULL, NULL, '80354', NULL, NULL, NULL, 6),
(441, 6.0667, 80.3, 'Talagampola', NULL, NULL, '80058', NULL, NULL, NULL, 6),
(442, 6.3, 80.2, 'Talgaspe', NULL, NULL, '80406', NULL, NULL, NULL, 6),
(443, 6.0061, 80.2961, 'Talpe', NULL, NULL, '80615', NULL, NULL, NULL, 6),
(444, 6.3333, 80.3333, 'Tawalama', NULL, NULL, '80148', NULL, NULL, NULL, 6),
(445, 6.1333, 80.1167, 'Tiranagama', NULL, NULL, '80244', NULL, NULL, NULL, 6),
(446, 6.18924, 80.306106, 'Udalamatta', NULL, NULL, '80108', NULL, NULL, NULL, 6),
(447, 6.188469, 80.338951, 'Udugama', NULL, NULL, '80070', NULL, NULL, NULL, 6),
(448, 6.3056, 80.309, 'Uluvitike', NULL, NULL, '80168', NULL, NULL, NULL, 6),
(449, 6.0169, 80.249901, 'Unawatuna', NULL, NULL, '80600', NULL, NULL, NULL, 6),
(450, 6.2417, 80.225, 'Unenwitiya', NULL, NULL, '80214', NULL, NULL, NULL, 6),
(451, 6.35, 80.1167, 'Uragaha', NULL, NULL, '80352', NULL, NULL, NULL, 6),
(452, 6.358461, 80.082277, 'Uragasmanhandiya', NULL, NULL, '80350', NULL, NULL, NULL, 6),
(453, 6.1, 80.1833, 'Wakwella', NULL, NULL, '80042', NULL, NULL, NULL, 6),
(454, 6.05443, 80.251763, 'Walahanduwa', NULL, NULL, '80046', NULL, NULL, NULL, 6),
(455, 6.0333, 80.3167, 'Wanchawela', NULL, NULL, '80120', NULL, NULL, NULL, 6),
(456, 6.136388, 80.252794, 'Wanduramba', NULL, NULL, '80100', NULL, NULL, NULL, 6),
(457, 6.381574, 80.43131, 'Warukandeniya', NULL, NULL, '80084', NULL, NULL, NULL, 6),
(458, 6.25, 80.05, 'Watugedara', NULL, NULL, '80340', NULL, NULL, NULL, 6),
(459, 6.310127, 80.23392, 'Weihena', NULL, NULL, '80216', NULL, NULL, NULL, 6),
(460, 6.3167, 80.0333, 'Welikanda', NULL, NULL, '51070', NULL, NULL, NULL, 6),
(461, 6.4167, 80, 'Wilanagama', NULL, NULL, '20142', NULL, NULL, NULL, 6),
(462, 6.109027, 80.349195, 'Yakkalamulla', NULL, NULL, '80150', NULL, NULL, NULL, 6),
(463, 6.172247, 80.293052, 'Yatalamatta', NULL, NULL, '80107', NULL, NULL, NULL, 6),
(464, 7.262603, 79.958057, 'Akaragama', 'අකරගම', NULL, '11536', NULL, NULL, NULL, 7),
(465, 7.0833, 80.0667, 'Ambagaspitiya', 'අඹගස්පිටිය', NULL, '11052', NULL, NULL, NULL, 7),
(466, 7.25, 80.1667, 'Ambepussa', 'අඹේපුස්ස', NULL, '11212', NULL, NULL, NULL, 7),
(467, 7.188346, 79.902344, 'Andiambalama', 'ආඬිඅම්බලම', NULL, '11558', NULL, NULL, NULL, 7),
(468, 7.1119, 80.1328, 'Attanagalla', 'අත්තනගල්ල', NULL, '11120', NULL, NULL, NULL, 7),
(469, 7.291218, 79.978003, 'Badalgama', 'බඩල්ගම', NULL, '11538', NULL, NULL, NULL, 7),
(470, 7.2319, 80.0678, 'Banduragoda', 'බඳුරගොඩ', NULL, '11244', NULL, NULL, NULL, 7),
(471, 7.058399, 79.932048, 'Batuwatta', 'බටුවත්ත', NULL, '11011', NULL, NULL, NULL, 7),
(472, 7.120933, 80.028191, 'Bemmulla', 'බෙම්මුල්ල', NULL, '11040', NULL, NULL, NULL, 7),
(473, 6.9492, 80.0153, 'Biyagama IPZ', 'බියගම IPZ', NULL, '11672', NULL, NULL, NULL, 7),
(474, 7.2333, 80.15, 'Bokalagama', 'බොකලගම', NULL, '11216', NULL, NULL, NULL, 7),
(475, 7.0667, 79.95, 'Bollete (WP)', 'බොල්ලතේ', NULL, '11024', NULL, NULL, NULL, 7),
(476, 7.079641, 80.15868, 'Bopagama', 'බෝපගම', NULL, '11134', NULL, NULL, NULL, 7),
(477, 7.042846, 80.051854, 'Buthpitiya', 'බුත්පිටිය', NULL, '11720', NULL, NULL, NULL, 7),
(478, 7.221568, 79.927455, 'Dagonna', 'දාගොන්න', NULL, '11524', NULL, NULL, NULL, 7),
(479, 7.2028, 80.1758, 'Danowita', 'දංඕවිට', NULL, '11896', NULL, NULL, NULL, 7),
(480, 7.1389, 80.0981, 'Debahera', 'දෙබහැර', NULL, '11889', NULL, NULL, NULL, 7),
(481, 6.968317, 80.035385, 'Dekatana', 'දෙකටන', NULL, '11690', NULL, NULL, NULL, 7),
(482, 6.986583, 80.01576, 'Delgoda', 'දෙල්ගොඩ', NULL, '11700', NULL, NULL, NULL, 7),
(483, 7.265367, 80.003272, 'Delwagura', 'දෙල්වගුර', NULL, '11228', NULL, NULL, NULL, 7),
(484, 6.988934, 80.046886, 'Demalagama', 'දෙමළගම', NULL, '11692', NULL, NULL, NULL, 7),
(485, 7.2333, 79.9, 'Demanhandiya', 'දෙමන්හන්දිය', NULL, '11270', NULL, NULL, NULL, 7),
(486, 7.162553, 79.997446, 'Dewalapola', 'දේවාලපොල', NULL, '11102', NULL, NULL, NULL, 7),
(487, 7.2167, 80.0156, 'Divulapitiya', 'දිවුලපිටිය', NULL, '11250', NULL, NULL, NULL, 7),
(488, 7.3, 80.1, 'Divuldeniya', 'දිවුල්දෙණිය', NULL, '11208', NULL, NULL, NULL, 7),
(489, 6.949806, 80.055083, 'Dompe', 'දොම්පෙ', NULL, '11680', NULL, NULL, NULL, 7),
(490, 7.2342, 79.9756, 'Dunagaha', 'දුනගහ', NULL, '11264', NULL, NULL, NULL, 7),
(491, 7.105558, 79.91532, 'Ekala', 'ඒකල', NULL, '11380', NULL, NULL, NULL, 7),
(492, 7.135968, 80.132524, 'Ellakkala', 'ඇල්ලක්කල', NULL, '11116', NULL, NULL, NULL, 7),
(493, 7.178736, 80.021603, 'Essella', NULL, NULL, '11108', NULL, NULL, NULL, 7),
(494, 6.964202, 79.930611, 'Galedanda', 'ගලේදණ්ඩ', NULL, '90206', NULL, NULL, NULL, 7),
(495, 7.0917, 79.9942, 'Gampaha', 'ගම්පහ', NULL, '11000', NULL, NULL, NULL, 7),
(496, 7.064183, 79.963294, 'Ganemulla', 'ගණේමුල්ල', NULL, '11020', NULL, NULL, NULL, 7),
(497, 7.3275, 80.1267, 'Giriulla', 'ගිරිවුල්ල', NULL, '60140', NULL, NULL, NULL, 7),
(498, 6.9612, 79.9992, 'Gonawala', 'ගෝනවල', NULL, '11630', NULL, NULL, NULL, 7),
(499, 7.261935, 80.10821, 'Halpe', 'හල්පෙ', NULL, '70145', NULL, NULL, NULL, 7),
(500, 7.1, 80.1667, 'Hapugastenna', NULL, NULL, '70164', NULL, NULL, NULL, 7),
(501, 6.96283, 79.963309, 'Heiyanthuduwa', NULL, NULL, '11618', NULL, NULL, NULL, 7),
(502, 7.1667, 79.95, 'Hinatiyana Madawala', NULL, NULL, '11568', NULL, NULL, NULL, 7),
(503, 7.021559, 80.160869, 'Hiswella', NULL, NULL, '11734', NULL, NULL, NULL, 7),
(504, 7.185188, 79.976771, 'Horampella', NULL, NULL, '11564', NULL, NULL, NULL, 7),
(505, 7.244925, 79.996921, 'Hunumulla', NULL, NULL, '11262', NULL, NULL, NULL, 7),
(506, 7.111463, 80.130625, 'Hunupola', NULL, NULL, '60582', NULL, NULL, NULL, 7),
(507, 7.250345, 79.960941, 'Ihala Madampella', NULL, NULL, '11265', NULL, NULL, NULL, 7),
(508, 7.035, 79.9931, 'Imbulgoda', NULL, NULL, '11856', NULL, NULL, NULL, 7),
(509, 7.076147, 79.894932, 'Ja-Ela', NULL, NULL, '11350', NULL, NULL, NULL, 7),
(510, 7.0258, 79.9882, 'Kadawatha', NULL, NULL, '11850', NULL, NULL, NULL, 7),
(511, 7.0667, 80.1167, 'Kahatowita', NULL, NULL, '11144', NULL, NULL, NULL, 7),
(512, 7.118004, 80.058001, 'Kalagedihena', NULL, NULL, '11875', NULL, NULL, NULL, 7),
(513, 7.195, 80.1136, 'Kaleliya', NULL, NULL, '11160', NULL, NULL, NULL, 7),
(514, 7.05056, 79.895123, 'Kandana', NULL, NULL, '11320', NULL, NULL, NULL, 7),
(515, 7.2517, 79.9078, 'Katana', NULL, NULL, '11534', NULL, NULL, NULL, 7),
(516, 7.3, 80.0833, 'Katudeniya', NULL, NULL, '21016', NULL, NULL, NULL, 7),
(517, 7.1647, 79.8731, 'Katunayake', NULL, NULL, '11450', NULL, NULL, NULL, 7),
(518, 7.1407, 79.8782, 'Katunayake Air Force Camp', NULL, NULL, '11440', NULL, NULL, NULL, 7),
(519, 7.1407, 79.8782, 'Katunayake(FTZ)', NULL, NULL, '11420', NULL, NULL, NULL, 7),
(520, 7.208557, 79.94572, 'Katuwellegama', NULL, NULL, '11526', NULL, NULL, NULL, 7),
(521, 6.956357, 79.921431, 'Kelaniya', NULL, NULL, '11600', NULL, NULL, NULL, 7),
(522, 7.202265, 79.908937, 'Kimbulapitiya', NULL, NULL, '11522', NULL, NULL, NULL, 7),
(523, 7.044223, 80.126707, 'Kirindiwela', NULL, NULL, '11730', NULL, NULL, NULL, 7),
(524, 7.3, 80.1, 'Kitalawalana', NULL, NULL, '11206', NULL, NULL, NULL, 7),
(525, 7.2581, 79.8542, 'Kochchikade', NULL, NULL, '11540', NULL, NULL, NULL, 7),
(526, 7.279861, 80.05581, 'Kotadeniyawa', NULL, NULL, '11232', NULL, NULL, NULL, 7),
(527, 7.1217, 79.9297, 'Kotugoda', NULL, NULL, '11390', NULL, NULL, NULL, 7),
(528, 7.179375, 80.082233, 'Kumbaloluwa', NULL, NULL, '11105', NULL, NULL, NULL, 7),
(529, 7.294586, 80.126624, 'Loluwagoda', NULL, NULL, '11204', NULL, NULL, NULL, 7),
(530, 7.2, 80.0167, 'Mabodale', NULL, NULL, '11114', NULL, NULL, NULL, 7),
(531, 7.110062, 79.948175, 'Madelgamuwa', NULL, NULL, '11033', NULL, NULL, NULL, 7),
(532, 7.1, 79.9333, 'Makewita', NULL, NULL, '11358', NULL, NULL, NULL, 7),
(533, 6.983178, 79.9525, 'Makola', NULL, NULL, '11640', NULL, NULL, NULL, 7),
(534, 6.951988, 80.012561, 'Malwana', NULL, NULL, '11670', NULL, NULL, NULL, 7),
(535, 7.003066, 80.097082, 'Mandawala', NULL, NULL, '11061', NULL, NULL, NULL, 7),
(536, 7.2447, 79.9696, 'Marandagahamula', NULL, NULL, '11260', NULL, NULL, NULL, 7),
(537, 7.285808, 80.023977, 'Mellawagedara', NULL, NULL, '11234', NULL, NULL, NULL, 7),
(538, 7.176455, 79.954904, 'Minuwangoda', NULL, NULL, '11550', NULL, NULL, NULL, 7),
(539, 7.2414, 80.1325, 'Mirigama', NULL, NULL, '11200', NULL, NULL, NULL, 7),
(540, 7.0711, 80.0183, 'Miriswatta', NULL, NULL, '80508', NULL, NULL, NULL, 7),
(541, 6.9648, 80.0648, 'Mithirigala', NULL, NULL, '11742', NULL, NULL, NULL, 7),
(542, 7.2167, 80.05, 'Muddaragama', NULL, NULL, '11112', NULL, NULL, NULL, 7),
(543, 7.064698, 79.999092, 'Mudungoda', NULL, NULL, '11056', NULL, NULL, NULL, 7),
(544, 6.9301, 80.0549, 'Mulleriyawa New Town', NULL, NULL, '10620', NULL, NULL, NULL, 7),
(545, 7.001631, 80.027404, 'Naranwala', NULL, NULL, '11063', NULL, NULL, NULL, 7),
(546, 7.270062, 80.092618, 'Nawana', NULL, NULL, '11222', NULL, NULL, NULL, 7),
(547, 7.05, 80.0333, 'Nedungamuwa', NULL, NULL, '11066', NULL, NULL, NULL, 7),
(548, 7.2086, 79.8358, 'Negombo', NULL, NULL, '11500', NULL, NULL, NULL, 7),
(549, 7.1167, 80.1333, 'Nikadalupotha', NULL, NULL, '60580', NULL, NULL, NULL, 7),
(550, 7.099089, 80.179551, 'Nikahetikanda', NULL, NULL, '11128', NULL, NULL, NULL, 7),
(551, 7.144243, 80.096178, 'Nittambuwa', NULL, NULL, '11880', NULL, NULL, NULL, 7),
(552, 7.078762, 79.928331, 'Niwandama', NULL, NULL, '11354', NULL, NULL, NULL, 7),
(553, 7.132037, 79.921419, 'Opatha', NULL, NULL, '80142', NULL, NULL, NULL, 7),
(554, 7.094359, 79.844569, 'Pamunugama', NULL, NULL, '11370', NULL, NULL, NULL, 7),
(555, 7.214678, 80.139696, 'Pamunuwatta', NULL, NULL, '11214', NULL, NULL, NULL, 7),
(556, 6.9833, 80.0333, 'Panawala', NULL, NULL, '70612', NULL, NULL, NULL, 7),
(557, 7.172926, 80.115911, 'Pasyala', NULL, NULL, '11890', NULL, NULL, NULL, 7),
(558, 6.960977, 79.878852, 'Peliyagoda', NULL, NULL, '11830', NULL, NULL, NULL, 7),
(559, 7.002342, 80.128886, 'Pepiliyawala', NULL, NULL, '11741', NULL, NULL, NULL, 7),
(560, 7.1167, 80.0167, 'Pethiyagoda', NULL, NULL, '11043', NULL, NULL, NULL, 7),
(561, 7.0444, 79.8782, 'Polpithimukulana', NULL, NULL, '11324', NULL, NULL, NULL, 7),
(562, 7.040498, 80.064451, 'Puwakpitiya', NULL, NULL, '10712', NULL, NULL, NULL, 7),
(563, 7.177279, 80.141344, 'Radawadunna', NULL, NULL, '11892', NULL, NULL, NULL, 7),
(564, 7.029871, 80.100915, 'Radawana', NULL, NULL, '11725', NULL, NULL, NULL, 7),
(565, 7.140656, 79.898198, 'Raddolugama', NULL, NULL, '11400', NULL, NULL, NULL, 7),
(566, 7.025281, 79.917386, 'Ragama', NULL, NULL, '11010', NULL, NULL, NULL, 7),
(567, 7.0667, 80.1167, 'Ruggahawila', NULL, NULL, '11142', NULL, NULL, NULL, 7),
(568, 7.132059, 79.885024, 'Seeduwa', NULL, NULL, '11410', NULL, NULL, NULL, 7),
(569, 6.964545, 79.986406, 'Siyambalape', NULL, NULL, '11607', NULL, NULL, NULL, 7),
(570, 7.1667, 79.8167, 'Talahena', NULL, NULL, '11504', NULL, NULL, NULL, 7),
(571, 7.1167, 80.1333, 'Thambagalla', NULL, NULL, '60584', NULL, NULL, NULL, 7),
(572, 7.2669, 79.9495, 'Thimbirigaskatuwa', NULL, NULL, '11532', NULL, NULL, NULL, 7),
(573, 6.9297, 80.0889, 'Tittapattara', NULL, NULL, '10664', NULL, NULL, NULL, 7),
(574, 7.075, 80.0333, 'Udathuthiripitiya', NULL, NULL, '11054', NULL, NULL, NULL, 7),
(575, 7.1167, 79.9833, 'Udugampola', NULL, NULL, '11030', NULL, NULL, NULL, 7),
(576, 7.135549, 79.948259, 'Uggalboda', NULL, NULL, '11034', NULL, NULL, NULL, 7),
(577, 7.104792, 80.136935, 'Urapola', NULL, NULL, '11126', NULL, NULL, NULL, 7),
(578, 7.031046, 79.860339, 'Uswetakeiyawa', NULL, NULL, '11328', NULL, NULL, NULL, 7),
(579, 7.156981, 80.095842, 'Veyangoda', NULL, NULL, '11100', NULL, NULL, NULL, 7),
(580, 7.071902, 80.116511, 'Walgammulla', NULL, NULL, '11146', NULL, NULL, NULL, 7),
(581, 7.258131, 80.034704, 'Walpita', NULL, NULL, '11226', NULL, NULL, NULL, 7),
(582, 7.0418, 79.9257, 'Walpola (WP)', NULL, NULL, '11012', NULL, NULL, NULL, 7),
(583, 7.0421, 80.0701, 'Wathurugama', NULL, NULL, '11724', NULL, NULL, NULL, 7),
(584, 7.2, 79.9833, 'Watinapaha', NULL, NULL, '11104', NULL, NULL, NULL, 7),
(585, 6.990037, 79.892207, 'Wattala', NULL, NULL, '11104', NULL, NULL, NULL, 7),
(586, 7.0167, 79.9833, 'Weboda', NULL, NULL, '11858', NULL, NULL, NULL, 7),
(587, 7.178443, 79.962063, 'Wegowwa', NULL, NULL, '11562', NULL, NULL, NULL, 7),
(588, 7.1834, 80.1446, 'Weweldeniya', NULL, NULL, '11894', NULL, NULL, NULL, 7),
(589, 7.1167, 80.05, 'Yakkala', NULL, NULL, '11870', NULL, NULL, NULL, 7),
(590, 7.184998, 79.931858, 'Yatiyana', NULL, NULL, '11566', NULL, NULL, NULL, 7),
(591, 6.114494, 81.025983, 'Ambalantota', 'අම්බලන්තොට', NULL, '82100', NULL, NULL, NULL, 8),
(592, 6.162261, 80.899471, 'Angunakolapelessa', 'අඟුණකොළපැලැස්ස', NULL, '82220', NULL, NULL, NULL, 8),
(593, 6.389127, 81.093226, 'Angunakolawewa', 'අඟුණකොලවැව', NULL, '91302', NULL, NULL, NULL, 8),
(594, 6.1833, 81.1389, 'Bandagiriya Colony', 'බන්ඩගිරිය කොලොනි', NULL, '82005', NULL, NULL, NULL, 8),
(595, 6.1667, 80.8167, 'Barawakumbuka', 'බරවකුඹුර', NULL, '82110', NULL, NULL, NULL, 8),
(596, 6.048637, 80.734343, 'Beliatta', 'බෙලිඅත්ත', NULL, '82400', NULL, NULL, NULL, 8),
(597, 6.15, 81.0667, 'Beragama', 'බෙරගම', NULL, '82102', NULL, NULL, NULL, 8),
(598, 6.2556, 81.2944, 'Beralihela', 'බෙරලිහෙල', NULL, '82618', NULL, NULL, NULL, 8),
(599, 6.195164, 81.250493, 'Bundala', 'බූන්දල', NULL, '82002', NULL, NULL, NULL, 8),
(600, 6.26867, 81.359512, 'Ellagala', 'ඇල්ලගල', NULL, '82619', NULL, NULL, NULL, 8);
INSERT INTO `city` (`id`, `latitude`, `logitude`, `name_en`, `name_si`, `name_ta`, `postcode`, `sub_name_en`, `sub_name_si`, `sub_name_ta`, `district_id`) VALUES
(601, 6.2833, 80.7167, 'Gangulandeniya', 'ගඟුලදෙණිය', NULL, '82586', NULL, NULL, NULL, 8),
(602, 6.036244, 80.669146, 'Getamanna', 'ගැටමාන්න', NULL, '82420', NULL, NULL, NULL, 8),
(603, 6.0333, 80.75, 'Goda Koggalla', 'ගොඩ කොග්ගල්ල', NULL, '82401', NULL, NULL, NULL, 8),
(604, 6.25, 81.2917, 'Gonagamuwa Uduwila', 'ගොනාගමුව උඩුවිල', NULL, '82602', NULL, NULL, NULL, 8),
(605, 6.230443, 81.112465, 'Gonnoruwa', 'ගොන්නොරුව', NULL, '82006', NULL, NULL, NULL, 8),
(606, 6.146456, 80.83047, 'Hakuruwela', 'හකුරුවෙල', NULL, '82248', NULL, NULL, NULL, 8),
(607, 6.127563, 81.111287, 'Hambantota', 'හම්බන්තොට', NULL, '82000', NULL, NULL, NULL, 8),
(608, 6.188877, 80.62414, 'Handugala', 'හඳගුල', NULL, '81326', NULL, NULL, NULL, 8),
(609, 6.108006, 80.927144, 'Hungama', NULL, NULL, '82120', NULL, NULL, NULL, 8),
(610, 6.092378, 80.747311, 'Ihala Beligalla', NULL, NULL, '82412', NULL, NULL, NULL, 8),
(611, 6.167432, 80.735179, 'Ittademaliya', NULL, NULL, '82462', NULL, NULL, NULL, 8),
(612, 6.2261, 80.7403, 'Julampitiya', NULL, NULL, '82252', NULL, NULL, NULL, 8),
(613, 6.078654, 80.902917, 'Kahandamodara', NULL, NULL, '82126', NULL, NULL, NULL, 8),
(614, 6.257359, 80.809448, 'Kariyamaditta', NULL, NULL, '82274', NULL, NULL, NULL, 8),
(615, 6.2667, 80.6972, 'Katuwana', NULL, NULL, '82500', NULL, NULL, NULL, 8),
(616, 6.2786, 81.2524, 'Kawantissapura', NULL, NULL, '82622', NULL, NULL, NULL, 8),
(617, 6.2117, 80.6653, 'Kirama', NULL, NULL, '82550', NULL, NULL, NULL, 8),
(618, 6.268985, 81.290653, 'Kirinda', NULL, NULL, '82614', NULL, NULL, NULL, 8),
(619, 6.098517, 80.971511, 'Lunama', NULL, NULL, '82108', NULL, NULL, NULL, 8),
(620, 6.3417, 81.15, 'Lunugamwehera', NULL, NULL, '82634', NULL, NULL, NULL, 8),
(621, 6.280108, 81.270354, 'Magama', NULL, NULL, '82608', NULL, NULL, NULL, 8),
(622, 6.1833, 81.1389, 'Mahagalwewa', NULL, NULL, '82016', NULL, NULL, NULL, 8),
(623, 6.158126, 80.96681, 'Mamadala', NULL, NULL, '82109', NULL, NULL, NULL, 8),
(624, 6.175878, 80.770016, 'Medamulana', NULL, NULL, '82254', NULL, NULL, NULL, 8),
(625, 6.2494, 80.7672, 'Middeniya', NULL, NULL, '82270', NULL, NULL, NULL, 8),
(626, 6.1833, 81.1389, 'Migahajandur', NULL, NULL, '82014', NULL, NULL, NULL, 8),
(627, 6.117576, 80.720781, 'Modarawana', NULL, NULL, '82416', NULL, NULL, NULL, 8),
(628, 6.12, 80.7397, 'Mulkirigala', NULL, NULL, '82242', NULL, NULL, NULL, 8),
(629, 6.1842, 80.9063, 'Nakulugamuwa', NULL, NULL, '82300', NULL, NULL, NULL, 8),
(630, 6.066848, 80.850703, 'Netolpitiya', NULL, NULL, '82135', NULL, NULL, NULL, 8),
(631, 6.077147, 80.696499, 'Nihiluwa', NULL, NULL, '82414', NULL, NULL, NULL, 8),
(632, 6.35, 81.1667, 'Padawkema', NULL, NULL, '82636', NULL, NULL, NULL, 8),
(633, 6.1833, 81.1389, 'Pahala Andarawewa', NULL, NULL, '82008', NULL, NULL, NULL, 8),
(634, 6.2117, 80.6653, 'Rammalawarapitiya', NULL, NULL, '82554', NULL, NULL, NULL, 8),
(635, 6.2167, 81.3, 'Ranakeliya', NULL, NULL, '82612', NULL, NULL, NULL, 8),
(636, 6.1833, 81.1389, 'Ranmuduwewa', NULL, NULL, '82018', NULL, NULL, NULL, 8),
(637, 6.103377, 80.890168, 'Ranna', NULL, NULL, '82125', NULL, NULL, NULL, 8),
(638, 6.2667, 80.85, 'Ratmalwala', NULL, NULL, '82276', NULL, NULL, NULL, 8),
(639, 6.1375, 81.0042, 'RU/Ridiyagama', NULL, NULL, '82106', NULL, NULL, NULL, 8),
(640, 6.1833, 81.1389, 'Sooriyawewa Town', NULL, NULL, '82010', NULL, NULL, NULL, 8),
(641, 6.0231, 80.7889, 'Tangalla', NULL, NULL, '82200', NULL, NULL, NULL, 8),
(642, 6.370333, 81.328087, 'Tissamaharama', NULL, NULL, '82600', NULL, NULL, NULL, 8),
(643, 6.2667, 80.6972, 'Uda Gomadiya', NULL, NULL, '82504', NULL, NULL, NULL, 8),
(644, 6.3333, 81.1333, 'Udamattala', NULL, NULL, '82638', NULL, NULL, NULL, 8),
(645, 6.246247, 80.862175, 'Uswewa', NULL, NULL, '82278', NULL, NULL, NULL, 8),
(646, 6.1824, 80.806, 'Vitharandeniya', NULL, NULL, '82232', NULL, NULL, NULL, 8),
(647, 6.15, 80.7, 'Walasmulla', NULL, NULL, '82450', NULL, NULL, NULL, 8),
(648, 6.135, 80.7865, 'Weeraketiya', NULL, NULL, '82240', NULL, NULL, NULL, 8),
(649, 6.3417, 81.15, 'Weerawila', NULL, NULL, '82632', NULL, NULL, NULL, 8),
(650, 6.2556, 81.2944, 'Weerawila NewTown', NULL, NULL, '82615', NULL, NULL, NULL, 8),
(651, 6.135, 80.7865, 'Wekandawela', NULL, NULL, '82246', NULL, NULL, NULL, 8),
(652, 6.205897, 81.196032, 'Weligatta', NULL, NULL, '82004', NULL, NULL, NULL, 8),
(653, 6.1, 80.6833, 'Yatigala', NULL, NULL, '82418', NULL, NULL, NULL, 8),
(654, 9.660668, 80.022706, 'Jaffna', NULL, NULL, '40000', NULL, NULL, NULL, 9),
(655, 6.541499, 80.155785, 'Agalawatta', 'අගලවත්ත', NULL, '12200', NULL, NULL, NULL, 10),
(656, 6.711977, 79.965857, 'Alubomulla', 'අලුබෝමුල්ල', NULL, '12524', NULL, NULL, NULL, 10),
(657, 6.6383, 80.0861, 'Anguruwatota', 'අංගුරුවතොට', NULL, '12320', NULL, NULL, NULL, 10),
(658, 6.45, 80.2667, 'Atale', 'අටලේ', NULL, '71363', NULL, NULL, NULL, 10),
(659, 6.523102, 80.232371, 'Baduraliya', 'බදුරලීය', NULL, '12230', NULL, NULL, NULL, 10),
(660, 6.710264, 79.986087, 'Bandaragama', 'බණ්ඩාරගම', NULL, '12530', NULL, NULL, NULL, 10),
(661, 6.769068, 80.142775, 'Batugampola', 'බටුගම්පොල', NULL, '10526', NULL, NULL, NULL, 10),
(662, 6.518936, 80.183117, 'Bellana', 'බෙල්ලන', NULL, '12224', NULL, NULL, NULL, 10),
(663, 6.4739, 79.9842, 'Beruwala', 'බේරුවල', NULL, '12070', NULL, NULL, NULL, 10),
(664, 6.62099, 80.015288, 'Bolossagama', 'බොලොස්සගම', NULL, '12008', NULL, NULL, NULL, 10),
(665, 6.5833, 80.0167, 'Bombuwala', 'බොඹුවල', NULL, '12024', NULL, NULL, NULL, 10),
(666, 6.438709, 80.278799, 'Boralugoda', 'බොරළුගොඩ', NULL, '12142', NULL, NULL, NULL, 10),
(667, 6.666199, 80.164896, 'Bulathsinhala', 'බුලත්සිංහල', NULL, '12300', NULL, NULL, NULL, 10),
(668, 6.4333, 80.2667, 'Danawala Thiniyawala', 'දනවල තිනියවල', NULL, '12148', NULL, NULL, NULL, 10),
(669, 6.67833, 80.210488, 'Delmella', 'දෙල්මෙල්ල', NULL, '12304', NULL, NULL, NULL, 10),
(670, 6.648, 80.0089, 'Dharga Town', 'දර්ගා නගරය', NULL, '12090', NULL, NULL, NULL, 10),
(671, 6.696767, 80.146983, 'Diwalakada', 'දිවාලකද', NULL, '12308', NULL, NULL, NULL, 10),
(672, 6.555952, 80.006847, 'Dodangoda', 'දොඩන්ගොඩ', NULL, '12020', NULL, NULL, NULL, 10),
(673, 6.661797, 80.053343, 'Dombagoda', 'දොඹගොඩ', NULL, '12416', NULL, NULL, NULL, 10),
(674, 6.4415, 80.1807, 'Ethkandura', 'ඇත්කඳුර', NULL, '80458', NULL, NULL, NULL, 10),
(675, 6.5983, 80.0015, 'Galpatha', 'ගල්පාත', NULL, '12005', NULL, NULL, NULL, 10),
(676, 6.597103, 80.005539, 'Gamagoda', 'ගමගොඩ', NULL, '12016', NULL, NULL, NULL, 10),
(677, 6.6307, 80.0169, 'Gonagalpura', 'ගොනාගල්පුර', NULL, '80502', NULL, NULL, NULL, 10),
(678, 6.6944, 80.0333, 'Gonapola Junction', 'ගෝනපොල හංදිය', NULL, '12410', NULL, NULL, NULL, 10),
(679, 6.663337, 80.116274, 'Govinna', 'ගෝවින්න', NULL, '12310', NULL, NULL, NULL, 10),
(680, 6.5333, 80.2667, 'Gurulubadda', 'ගුරුලුබැද්ද', NULL, '12236', NULL, NULL, NULL, 10),
(681, 6.5167, 80.0167, 'Halkandawila', 'හල්කන්දවිල', NULL, '12055', NULL, NULL, NULL, 10),
(682, 6.69554, 80.02127, 'Haltota', 'හල්තොට', NULL, '12538', NULL, NULL, NULL, 10),
(683, 6.5791, 80.2233, 'Halvitigala Colony', 'හල්විටගල ජනපදය', NULL, '80146', NULL, NULL, NULL, 10),
(684, 6.416524, 80.106562, 'Halwala', 'හල්වල', NULL, '12118', NULL, NULL, NULL, 10),
(685, 6.7, 80.2, 'Halwatura', 'හල්වතුර', NULL, '12306', NULL, NULL, NULL, 10),
(686, 6.789746, 80.140774, 'Handapangoda', 'හඳපාන්ගොඩ', NULL, '10524', NULL, NULL, NULL, 10),
(687, 6.5333, 80.2667, 'Hedigalla Colony', NULL, NULL, '12234', NULL, NULL, NULL, 10),
(688, 6.7167, 80.0333, 'Henegama', NULL, NULL, '11715', NULL, NULL, NULL, 10),
(689, 6.461362, 79.992643, 'Hettimulla', NULL, NULL, '71210', NULL, NULL, NULL, 10),
(690, 6.719389, 80.061557, 'Horana', NULL, NULL, '12400', NULL, NULL, NULL, 10),
(691, 6.42254, 80.079501, 'Ittapana', NULL, NULL, '12116', NULL, NULL, NULL, 10),
(692, 6.7833, 80.1, 'Kahawala', NULL, NULL, '10508', NULL, NULL, NULL, 10),
(693, 6.4619, 80.0004, 'Kalawila Kiranthidiya', NULL, NULL, '12078', NULL, NULL, NULL, 10),
(694, 6.581333, 79.958546, 'Kalutara', NULL, NULL, '12000', NULL, NULL, NULL, 10),
(695, 6.7667, 80.05, 'Kananwila', NULL, NULL, '12418', NULL, NULL, NULL, 10),
(696, 6.7667, 80.0778, 'Kandanagama', NULL, NULL, '12428', NULL, NULL, NULL, 10),
(697, 6.587128, 80.29322, 'Kelinkanda', NULL, NULL, '12218', NULL, NULL, NULL, 10),
(698, 6.5167, 80.1833, 'Kitulgoda', NULL, NULL, '12222', NULL, NULL, NULL, 10),
(699, 6.618149, 79.989353, 'Koholana', NULL, NULL, '12007', NULL, NULL, NULL, 10),
(700, 6.747871, 80.078499, 'Kuda Uduwa', NULL, NULL, '12426', NULL, NULL, NULL, 10),
(701, 6.4833, 80, 'Labbala', NULL, NULL, '60162', NULL, NULL, NULL, 10),
(702, 6.4415, 80.1807, 'lhalahewessa', NULL, NULL, '80432', NULL, NULL, NULL, 10),
(703, 6.4681, 80.0257, 'lnduruwa', NULL, NULL, '80510', NULL, NULL, NULL, 10),
(704, 6.7296, 80.0604, 'lngiriya', NULL, NULL, '12440', NULL, NULL, NULL, 10),
(705, 6.503158, 79.977597, 'Maggona', NULL, NULL, '12060', NULL, NULL, NULL, 10),
(706, 6.620177, 80.154204, 'Mahagama', NULL, NULL, '12210', NULL, NULL, NULL, 10),
(707, 6.3917, 80.1417, 'Mahakalupahana', NULL, NULL, '12126', NULL, NULL, NULL, 10),
(708, 6.4667, 80, 'Maharangalla', NULL, NULL, '71211', NULL, NULL, NULL, 10),
(709, 6.5791, 80.2233, 'Malgalla Talangalla', NULL, NULL, '80144', NULL, NULL, NULL, 10),
(710, 6.5222, 80.1144, 'Matugama', NULL, NULL, '12100', NULL, NULL, NULL, 10),
(711, 6.3637, 80.285, 'Meegahatenna', NULL, NULL, '12130', NULL, NULL, NULL, 10),
(712, 6.648, 80.0089, 'Meegama', NULL, NULL, '12094', NULL, NULL, NULL, 10),
(713, 6.8053, 80.0829, 'Meegoda', NULL, NULL, '10504', NULL, NULL, NULL, 10),
(714, 6.686206, 80.017227, 'Millaniya', NULL, NULL, '12412', NULL, NULL, NULL, 10),
(715, 6.7833, 80.0667, 'Millewa', NULL, NULL, '12422', NULL, NULL, NULL, 10),
(716, 6.75, 80.1, 'Miwanapalana', NULL, NULL, '12424', NULL, NULL, NULL, 10),
(717, 6.607725, 80.238612, 'Molkawa', NULL, NULL, '12216', NULL, NULL, NULL, 10),
(718, 6.527127, 80.263667, 'Morapitiya', NULL, NULL, '12232', NULL, NULL, NULL, 10),
(719, 6.65, 79.9667, 'Morontuduwa', NULL, NULL, '12564', NULL, NULL, NULL, 10),
(720, 6.5019, 80.0937, 'Nawattuduwa', NULL, NULL, '12106', NULL, NULL, NULL, 10),
(721, 6.5906, 80.0842, 'Neboda', NULL, NULL, '12030', NULL, NULL, NULL, 10),
(722, 6.456979, 80.009049, 'Padagoda', NULL, NULL, '12074', NULL, NULL, NULL, 10),
(723, 6.4333, 80.2667, 'Pahalahewessa', NULL, NULL, '12144', NULL, NULL, NULL, 10),
(724, 6.5167, 80.0167, 'Paiyagala', NULL, NULL, '12050', NULL, NULL, NULL, 10),
(725, 6.7133, 79.9042, 'Panadura', NULL, NULL, '12500', NULL, NULL, NULL, 10),
(726, 6.4833, 80, 'Pannala', NULL, NULL, '60160', NULL, NULL, NULL, 10),
(727, 6.6667, 80, 'Paragastota', NULL, NULL, '12414', NULL, NULL, NULL, 10),
(728, 6.627108, 80.24112, 'Paragoda', NULL, NULL, '12302', NULL, NULL, NULL, 10),
(729, 6.4167, 80.1167, 'Paraigama', NULL, NULL, '12122', NULL, NULL, NULL, 10),
(730, 6.6056, 80.2333, 'Pelanda', NULL, NULL, '12214', NULL, NULL, NULL, 10),
(731, 6.385227, 80.207989, 'Pelawatta', NULL, NULL, '12138', NULL, NULL, NULL, 10),
(732, 6.570997, 80.161311, 'Pimbura', NULL, NULL, '70472', NULL, NULL, NULL, 10),
(733, 6.45, 80.2667, 'Pitagaldeniya', NULL, NULL, '71360', NULL, NULL, NULL, 10),
(734, 6.7333, 80.0333, 'Pokunuwita', NULL, NULL, '12404', NULL, NULL, NULL, 10),
(735, 6.7333, 80.1167, 'Poruwedanda', NULL, NULL, '12432', NULL, NULL, NULL, 10),
(736, 6.45, 80.2, 'Ratmale', NULL, NULL, '81030', NULL, NULL, NULL, 10),
(737, 6.594994, 80.031349, 'Remunagoda', NULL, NULL, '12009', NULL, NULL, NULL, 10),
(738, 6.4415, 80.1807, 'Talgaswela', NULL, NULL, '80470', NULL, NULL, NULL, 10),
(739, 6.5944, 80.0611, 'Tebuwana', NULL, NULL, '12025', NULL, NULL, NULL, 10),
(740, 6.6167, 80.0667, 'Uduwara', NULL, NULL, '12322', NULL, NULL, NULL, 10),
(741, 6.3917, 80.1417, 'Utumgama', NULL, NULL, '12127', NULL, NULL, NULL, 10),
(742, 6.5422, 80.1583, 'Veyangalla', NULL, NULL, '12204', NULL, NULL, NULL, 10),
(743, 6.667121, 79.924051, 'Wadduwa', NULL, NULL, '12560', NULL, NULL, NULL, 10),
(744, 6.437775, 80.071449, 'Walagedara', NULL, NULL, '12112', NULL, NULL, NULL, 10),
(745, 6.3667, 80.2, 'Walallawita', NULL, NULL, '12134', NULL, NULL, NULL, 10),
(746, 6.6317, 79.9442, 'Waskaduwa', NULL, NULL, '12580', NULL, NULL, NULL, 10),
(747, 6.466448, 80.101763, 'Welipenna', NULL, NULL, '12108', NULL, NULL, NULL, 10),
(748, 6.7167, 80.0333, 'Weliveriya', NULL, NULL, '11710', NULL, NULL, NULL, 10),
(749, 6.7072, 80.01, 'Welmilla Junction', NULL, NULL, '12534', NULL, NULL, NULL, 10),
(750, 6.527062, 80.004097, 'Weragala', NULL, NULL, '71622', NULL, NULL, NULL, 10),
(751, 6.378714, 80.161812, 'Yagirala', NULL, NULL, '12124', NULL, NULL, NULL, 10),
(752, 6.52309, 80.064428, 'Yatadolawatta', NULL, NULL, '12104', NULL, NULL, NULL, 10),
(753, 6.5983, 80.0015, 'Yatawara Junction', NULL, NULL, '12006', NULL, NULL, NULL, 10),
(754, 7.370491, 80.46648, 'Aludeniya', 'අලුදෙණිය', NULL, '20062', NULL, NULL, NULL, 11),
(755, 7.243803, 81.00264, 'Ambagahapelessa', 'අඹගහපැලැස්ස', NULL, '20986', NULL, NULL, NULL, 11),
(756, 7.0333, 80.5, 'Ambagamuwa Udabulathgama', 'අඹගමුව උඩබුලත්ගම', NULL, '20678', NULL, NULL, NULL, 11),
(757, 7.3472, 80.6192, 'Ambatenna', 'අඹතැන්න', NULL, '20136', NULL, NULL, NULL, 11),
(758, 7.2667, 80.65, 'Ampitiya', 'අම්පිටිය', NULL, '20160', NULL, NULL, NULL, 11),
(759, 7.434149, 80.568704, 'Ankumbura', 'අංකුඹුර', NULL, '20150', NULL, NULL, NULL, 11),
(760, 7.1333, 80.6, 'Atabage', 'අටබාගෙ', NULL, '20574', NULL, NULL, NULL, 11),
(761, 7.269032, 80.485503, 'Balana', 'බලන', NULL, '20308', NULL, NULL, NULL, 11),
(762, 7.0523, 80.5023, 'Bambaragahaela', 'බඹරගහඇල', NULL, '20644', NULL, NULL, NULL, 11),
(763, 7.41596, 80.576688, 'Batagolladeniya', 'බටගොල්ලදෙණිය', NULL, '20154', NULL, NULL, NULL, 11),
(764, 7.366275, 80.59604, 'Batugoda', 'බටුගොඩ', NULL, '20132', NULL, NULL, NULL, 11),
(765, 7.256086, 80.978905, 'Batumulla', 'බටුමුල්ල', NULL, '20966', NULL, NULL, NULL, 11),
(766, 7.211388, 80.718828, 'Bawlana', 'බව්ලන', NULL, '20218', NULL, NULL, NULL, 11),
(767, 7.3, 80.9, 'Bopana', 'බෝපන', NULL, '20932', NULL, NULL, NULL, 11),
(768, 7.2833, 80.5333, 'Danture', 'දංතුරේ', NULL, '20465', NULL, NULL, NULL, 11),
(769, 7.3333, 80.4333, 'Dedunupitiya', 'දේදුනුපිටිය', NULL, '20068', NULL, NULL, NULL, 11),
(770, 7.014688, 80.509932, 'Dekinda', 'දෙකිඳ', NULL, '20658', NULL, NULL, NULL, 11),
(771, 7.2, 80.6667, 'Deltota', 'දෙල්තොට', NULL, '20430', NULL, NULL, NULL, 11),
(772, 7.175, 80.55, 'Divulankadawala', 'දිවුලන්කදවල', NULL, '51428', NULL, NULL, NULL, 11),
(773, 7.393576, 80.584659, 'Dolapihilla', 'දොලපිහිල්ල', NULL, '20126', NULL, NULL, NULL, 11),
(774, 7.0806, 80.4731, 'Dolosbage', 'දොලොස්බාගෙ', NULL, '20510', NULL, NULL, NULL, 11),
(775, 7.3833, 80.6333, 'Dunuwila', 'දුනුවිල', NULL, '20824', NULL, NULL, NULL, 11),
(776, 7.2333, 80.65, 'Etulgama', 'ඇතුල්ගම', NULL, '20202', NULL, NULL, NULL, 11),
(777, 6.9875, 80.5319, 'Galaboda', 'ගලබොඩ', NULL, '20664', NULL, NULL, NULL, 11),
(778, 7.369716, 80.520308, 'Galagedara', 'ගලගෙදර', NULL, '20100', NULL, NULL, NULL, 11),
(779, 7.195764, 80.668659, 'Galaha', 'ගලහ', NULL, '20420', NULL, NULL, NULL, 11),
(780, 7.418361, 80.560015, 'Galhinna', 'ගල්හින්න', NULL, '20152', NULL, NULL, NULL, 11),
(781, 7.1647, 80.5767, 'Gampola', 'ගම්පොල', NULL, '20500', NULL, NULL, NULL, 11),
(782, 7.2136, 80.6017, 'Gelioya', 'ගෙලිඔය', NULL, '20620', NULL, NULL, NULL, 11),
(783, 7.227313, 80.697447, 'Godamunna', 'ගොඩමුන්න', NULL, '20214', NULL, NULL, NULL, 11),
(784, 7.3167, 80.7333, 'Gomagoda', 'ගොමගොඩ', NULL, '20184', NULL, NULL, NULL, 11),
(785, 7.1517, 80.7118, 'Gonagantenna', 'ගොනාගන්තැන්න', NULL, '20712', NULL, NULL, NULL, 11),
(786, 7.0358, 80.5262, 'Gonawalapatana', 'ගෝනවලපතන', NULL, '20656', NULL, NULL, NULL, 11),
(787, 7.2696, 80.6537, 'Gunnepana', 'ගුන්නෙපන', NULL, '20270', NULL, NULL, NULL, 11),
(788, 7.265953, 80.702921, 'Gurudeniya', 'ගුරුදෙණිය', NULL, '20189', NULL, NULL, NULL, 11),
(789, 7.334701, 80.82402, 'Hakmana', 'හක්මන', NULL, '81300', NULL, NULL, NULL, 11),
(790, 7.277451, 80.989485, 'Handaganawa', 'හඳගනාව', NULL, '20984', NULL, NULL, NULL, 11),
(791, 7.2, 80.6667, 'Handawalapitiya', 'හඳවලපිටිය', NULL, '20438', NULL, NULL, NULL, 11),
(792, 7.230048, 80.580831, 'Handessa', 'හඳැස්ස', NULL, '20480', NULL, NULL, NULL, 11),
(793, 7.1517, 80.7118, 'Hanguranketha', NULL, NULL, '20710', NULL, NULL, NULL, 11),
(794, 7.0271, 80.5493, 'Harangalagama', NULL, NULL, '20669', NULL, NULL, NULL, 11),
(795, 7.3333, 80.4667, 'Hataraliyadda', NULL, NULL, '20060', NULL, NULL, NULL, 11),
(796, 7.231512, 80.600815, 'Hindagala', NULL, NULL, '20414', NULL, NULL, NULL, 11),
(797, 7.1364, 80.5766, 'Hondiyadeniya', NULL, NULL, '20524', NULL, NULL, NULL, 11),
(798, 7.298756, 80.849834, 'Hunnasgiriya', NULL, NULL, '20948', NULL, NULL, NULL, 11),
(799, 7.175038, 80.599767, 'Inguruwatta', NULL, NULL, '60064', NULL, NULL, NULL, 11),
(800, 7.3833, 80.6333, 'Jambugahapitiya', NULL, NULL, '20822', NULL, NULL, NULL, 11),
(801, 7.2536, 80.5275, 'Kadugannawa', NULL, NULL, '20300', NULL, NULL, NULL, 11),
(802, 7.376, 80.8213, 'Kahataliyadda', NULL, NULL, '20924', NULL, NULL, NULL, 11),
(803, 7.390136, 80.883008, 'Kalugala', NULL, NULL, '20926', NULL, NULL, NULL, 11),
(804, 7.2964, 80.635, 'Kandy', NULL, NULL, '20000', NULL, NULL, NULL, 11),
(805, 7.2401, 80.6808, 'Kapuliyadde', NULL, NULL, '20206', NULL, NULL, NULL, 11),
(806, 7.3161, 80.6211, 'Katugastota', NULL, NULL, '20800', NULL, NULL, NULL, 11),
(807, 7.1089, 80.6339, 'Katukitula', NULL, NULL, '20588', NULL, NULL, NULL, 11),
(808, 7.0049, 80.5182, 'Kelanigama', NULL, NULL, '20688', NULL, NULL, NULL, 11),
(809, 7.296461, 80.711767, 'Kengalla', NULL, NULL, '20186', NULL, NULL, NULL, 11),
(810, 7.0271, 80.5493, 'Ketaboola', NULL, NULL, '20660', NULL, NULL, NULL, 11),
(811, 7.210532, 80.571678, 'Ketakumbura', NULL, NULL, '20306', NULL, NULL, NULL, 11),
(812, 7.376, 80.8213, 'Kobonila', NULL, NULL, '20928', NULL, NULL, NULL, 11),
(813, 7.225, 80.7167, 'Kolabissa', NULL, NULL, '20212', NULL, NULL, NULL, 11),
(814, 7.3552, 80.8375, 'Kolongoda', NULL, NULL, '20971', NULL, NULL, NULL, 11),
(815, 7.315193, 80.590268, 'Kulugammana', NULL, NULL, '20048', NULL, NULL, NULL, 11),
(816, 7.2969, 80.7686, 'Kumbukkandura', NULL, NULL, '20902', NULL, NULL, NULL, 11),
(817, 7.357279, 80.551316, 'Kumburegama', NULL, NULL, '20086', NULL, NULL, NULL, 11),
(818, 7.2667, 80.6833, 'Kundasale', NULL, NULL, '20168', NULL, NULL, NULL, 11),
(819, 7.2333, 80.5833, 'Leemagahakotuwa', NULL, NULL, '20482', NULL, NULL, NULL, 11),
(820, 7.3167, 80.5833, 'lhala Kobbekaduwa', NULL, NULL, '20042', NULL, NULL, NULL, 11),
(821, 7.198402, 80.578244, 'Lunugama', NULL, NULL, '11062', NULL, NULL, NULL, 11),
(822, 7.3292, 80.716, 'Lunuketiya Maditta', NULL, NULL, '20172', NULL, NULL, NULL, 11),
(823, 7.2696, 80.6537, 'Madawala Bazaar', NULL, NULL, '20260', NULL, NULL, NULL, 11),
(824, 7.3792, 80.4982, 'Madawalalanda', NULL, NULL, '32016', NULL, NULL, NULL, 11),
(825, 7.265802, 80.882139, 'Madugalla', NULL, NULL, '20938', NULL, NULL, NULL, 11),
(826, 7.400281, 80.728874, 'Madulkele', NULL, NULL, '20840', NULL, NULL, NULL, 11),
(827, 7.3, 80.85, 'Mahadoraliyadda', NULL, NULL, '20945', NULL, NULL, NULL, 11),
(828, 7.225, 80.7167, 'Mahamedagama', NULL, NULL, '20216', NULL, NULL, NULL, 11),
(829, 7.3792, 80.4982, 'Mahanagapura', NULL, NULL, '32018', NULL, NULL, NULL, 11),
(830, 7.1517, 80.7118, 'Mailapitiya', NULL, NULL, '20702', NULL, NULL, NULL, 11),
(831, 7.3833, 80.6333, 'Makkanigama', NULL, NULL, '20828', NULL, NULL, NULL, 11),
(832, 7.341706, 80.777466, 'Makuldeniya', NULL, NULL, '20921', NULL, NULL, NULL, 11),
(833, 7.285856, 80.563656, 'Mangalagama', NULL, NULL, '32069', NULL, NULL, NULL, 11),
(834, 7.007889, 80.531101, 'Mapakanda', NULL, NULL, '20662', NULL, NULL, NULL, 11),
(835, 7.221663, 80.732336, 'Marassana', NULL, NULL, '20210', NULL, NULL, NULL, 11),
(836, 7.1517, 80.7118, 'Marymount Colony', NULL, NULL, '20714', NULL, NULL, NULL, 11),
(837, 7.1, 80.5667, 'Mawatura', NULL, NULL, '20564', NULL, NULL, NULL, 11),
(838, 7.3, 80.85, 'Medamahanuwara', NULL, NULL, '20940', NULL, NULL, NULL, 11),
(839, 7.3417, 80.6833, 'Medawala Harispattuwa', NULL, NULL, '20120', NULL, NULL, NULL, 11),
(840, 7.0986, 80.4699, 'Meetalawa', NULL, NULL, '20512', NULL, NULL, NULL, 11),
(841, 7.2631, 80.6028, 'Megoda Kalugamuwa', NULL, NULL, '20409', NULL, NULL, NULL, 11),
(842, 7.288455, 80.501662, 'Menikdiwela', NULL, NULL, '20470', NULL, NULL, NULL, 11),
(843, 7.3167, 80.7, 'Menikhinna', NULL, NULL, '20170', NULL, NULL, NULL, 11),
(844, 7.4333, 80.8333, 'Mimure', NULL, NULL, '20923', NULL, NULL, NULL, 11),
(845, 7.3333, 80.5167, 'Minigamuwa', NULL, NULL, '20109', NULL, NULL, NULL, 11),
(846, 7.223556, 80.990971, 'Minipe', NULL, NULL, '20983', NULL, NULL, NULL, 11),
(847, 7.3792, 80.4982, 'Moragahapallama', NULL, NULL, '32012', NULL, NULL, NULL, 11),
(848, 7.3, 80.5667, 'Murutalawa', NULL, NULL, '20232', NULL, NULL, NULL, 11),
(849, 7.1364, 80.5766, 'Muruthagahamulla', NULL, NULL, '20526', NULL, NULL, NULL, 11),
(850, 7.1171, 80.6387, 'Nanuoya', NULL, NULL, '22150', NULL, NULL, NULL, 11),
(851, 7.339733, 80.729831, 'Naranpanawa', NULL, NULL, '20176', NULL, NULL, NULL, 11),
(852, 7.3167, 80.8, 'Narawelpita', NULL, NULL, '81302', NULL, NULL, NULL, 11),
(853, 7.05048, 80.530631, 'Nawalapitiya', NULL, NULL, '20650', NULL, NULL, NULL, 11),
(854, 7.0333, 80.5, 'Nawathispane', NULL, NULL, '20670', NULL, NULL, NULL, 11),
(855, 7.15, 80.6333, 'Nillambe', NULL, NULL, '20418', NULL, NULL, NULL, 11),
(856, 7.2333, 80.7, 'Nugaliyadda', NULL, NULL, '20204', NULL, NULL, NULL, 11),
(857, 7.45, 80.5667, 'Ovilikanda', NULL, NULL, '21020', NULL, NULL, NULL, 11),
(858, 7.3333, 80.5667, 'Pallekotuwa', NULL, NULL, '20084', NULL, NULL, NULL, 11),
(859, 7.1556, 80.6314, 'Panwilatenna', NULL, NULL, '20544', NULL, NULL, NULL, 11),
(860, 7.12293, 80.618959, 'Paradeka', NULL, NULL, '20578', NULL, NULL, NULL, 11),
(861, 7.0358, 80.5262, 'Pasbage', NULL, NULL, '20654', NULL, NULL, NULL, 11),
(862, 7.1167, 80.4667, 'Pattitalawa', NULL, NULL, '20511', NULL, NULL, NULL, 11),
(863, 7.2631, 80.6028, 'Peradeniya', NULL, NULL, '20400', NULL, NULL, NULL, 11),
(864, 7.2333, 80.5333, 'Pilimatalawa', NULL, NULL, '20450', NULL, NULL, NULL, 11),
(865, 7.343274, 80.520186, 'Poholiyadda', NULL, NULL, '20106', NULL, NULL, NULL, 11),
(866, 7.385927, 80.481336, 'Pubbiliya', NULL, NULL, '21502', NULL, NULL, NULL, 11),
(867, 7.115632, 80.677455, 'Pupuressa', NULL, NULL, '20546', NULL, NULL, NULL, 11),
(868, 7.112565, 80.644101, 'Pussellawa', NULL, NULL, '20580', NULL, NULL, NULL, 11),
(869, 7.334198, 80.759353, 'Putuhapuwa', NULL, NULL, '20906', NULL, NULL, NULL, 11),
(870, 7.280519, 80.748217, 'Rajawella', NULL, NULL, '20180', NULL, NULL, NULL, 11),
(871, 7.0333, 80.5, 'Rambukpitiya', NULL, NULL, '20676', NULL, NULL, NULL, 11),
(872, 7.294759, 80.777664, 'Rambukwella', NULL, NULL, '20128', NULL, NULL, NULL, 11),
(873, 7.344486, 80.795047, 'Rangala', NULL, NULL, '20922', NULL, NULL, NULL, 11),
(874, 7.3552, 80.8375, 'Rantembe', NULL, NULL, '20990', NULL, NULL, NULL, 11),
(875, 7.3167, 80.5833, 'Sangarajapura', NULL, NULL, '20044', NULL, NULL, NULL, 11),
(876, 7.280125, 80.761602, 'Senarathwela', NULL, NULL, '20904', NULL, NULL, NULL, 11),
(877, 7.2536, 80.6925, 'Talatuoya', NULL, NULL, '20200', NULL, NULL, NULL, 11),
(878, 7.2969, 80.7686, 'Teldeniya', NULL, NULL, '20900', NULL, NULL, NULL, 11),
(879, 7.2833, 80.6667, 'Tennekumbura', NULL, NULL, '20166', NULL, NULL, NULL, 11),
(880, 7.249001, 80.614072, 'Uda Peradeniya', NULL, NULL, '20404', NULL, NULL, NULL, 11),
(881, 7.0889, 80.5189, 'Udahentenna', NULL, NULL, '20506', NULL, NULL, NULL, 11),
(882, 7.3161, 80.6211, 'Udatalawinna', NULL, NULL, '20802', NULL, NULL, NULL, 11),
(883, 7.3552, 80.8375, 'Udispattuwa', NULL, NULL, '20916', NULL, NULL, NULL, 11),
(884, 7.3552, 80.8375, 'Ududumbara', NULL, NULL, '20950', NULL, NULL, NULL, 11),
(885, 7.2833, 80.8917, 'Uduwahinna', NULL, NULL, '20934', NULL, NULL, NULL, 11),
(886, 7.2722, 80.6667, 'Uduwela', NULL, NULL, '20164', NULL, NULL, NULL, 11),
(887, 7.114072, 80.552445, 'Ulapane', NULL, NULL, '20562', NULL, NULL, NULL, 11),
(888, 7.1517, 80.7118, 'Unuwinna', NULL, NULL, '20708', NULL, NULL, NULL, 11),
(889, 7.0523, 80.5023, 'Velamboda', NULL, NULL, '20640', NULL, NULL, NULL, 11),
(890, 7.39731, 80.588304, 'Watagoda', NULL, NULL, '22110', NULL, NULL, NULL, 11),
(891, 7.3569, 80.6012, 'Watagoda Harispattuwa', NULL, NULL, '20134', NULL, NULL, NULL, 11),
(892, 7.234802, 80.543661, 'Wattappola', NULL, NULL, '20454', NULL, NULL, NULL, 11),
(893, 7.0271, 80.5493, 'Weligampola', NULL, NULL, '20666', NULL, NULL, NULL, 11),
(894, 7.3552, 80.8375, 'Wendaruwa', NULL, NULL, '20914', NULL, NULL, NULL, 11),
(895, 7.3167, 80.9833, 'Weragantota', NULL, NULL, '20982', NULL, NULL, NULL, 11),
(896, 7.2969, 80.7686, 'Werapitya', NULL, NULL, '20908', NULL, NULL, NULL, 11),
(897, 7.3167, 80.5833, 'Werellagama', NULL, NULL, '20080', NULL, NULL, NULL, 11),
(898, 7.3508, 80.5221, 'Wettawa', NULL, NULL, '20108', NULL, NULL, NULL, 11),
(899, 7.3, 80.5667, 'Yahalatenna', NULL, NULL, '20234', NULL, NULL, NULL, 11),
(900, 7.3, 80.6, 'Yatihalagala', NULL, NULL, '20034', NULL, NULL, NULL, 11),
(901, 7.197379, 80.282779, 'Alawala', 'අලවල', NULL, '11122', NULL, NULL, NULL, 12),
(902, 7.1333, 80.3333, 'Alawatura', 'අලවතුර', NULL, '71204', NULL, NULL, NULL, 12),
(903, 7.2875, 80.2536, 'Alawwa', 'අලව්ව', NULL, '60280', NULL, NULL, NULL, 12),
(904, 7.158338, 80.162939, 'Algama', 'අල්ගම', NULL, '71607', NULL, NULL, NULL, 12),
(905, 7.2333, 80.4667, 'Alutnuwara', 'අළුත්නුවර', NULL, '71508', NULL, NULL, NULL, 12),
(906, 7.134049, 80.446804, 'Ambalakanda', 'අම්බලකන්ද', NULL, '71546', NULL, NULL, NULL, 12),
(907, 7.239127, 80.409623, 'Ambulugala', 'අම්බුළුගල', NULL, '71503', NULL, NULL, NULL, 12),
(908, 7.0306, 80.1839, 'Amitirigala', 'අමිතිරිගල', NULL, '71320', NULL, NULL, NULL, 12),
(909, 7.080239, 80.289037, 'Ampagala', 'අම්පාගල', NULL, '71232', NULL, NULL, NULL, 12),
(910, 7.2667, 80.2667, 'Anhandiya', 'අංහන්දිය', NULL, '60074', NULL, NULL, NULL, 12),
(911, 6.922121, 80.371876, 'Anhettigama', 'අංහෙට්ටිගම', NULL, '71403', NULL, NULL, NULL, 12),
(912, 7.144705, 80.461358, 'Aranayaka', 'අරනායක', NULL, '71540', NULL, NULL, NULL, 12),
(913, 7.117733, 80.306712, 'Aruggammana', 'අරුග්ගම්මන', NULL, '71041', NULL, NULL, NULL, 12),
(914, 7.044339, 80.179129, 'Batuwita', 'බටුවිට', NULL, '71321', NULL, NULL, NULL, 12),
(915, 7.2167, 80.2917, 'Beligala(Sab)', 'බෙලිගල', NULL, '71044', NULL, NULL, NULL, 12),
(916, 7.2667, 80.2167, 'Belihuloya', 'බෙලිහුල්ඔය', NULL, '70140', NULL, NULL, NULL, 12),
(917, 7.064482, 80.405526, 'Berannawa', 'බෙරන්නව', NULL, '71706', NULL, NULL, NULL, 12),
(918, 7.179761, 80.205221, 'Bopitiya', 'බෝපිටිය', NULL, '60155', NULL, NULL, NULL, 12),
(919, 7.2583, 80.2167, 'Bopitiya (SAB)', 'බෝපිටිය (සබර)', NULL, '71612', NULL, NULL, NULL, 12),
(920, 6.979656, 80.330338, 'Boralankada', 'බොරලන්කද', NULL, '71418', NULL, NULL, NULL, 12),
(921, 7.1333, 80.4, 'Bossella', 'බොස්සැල්ල', NULL, '71208', NULL, NULL, NULL, 12),
(922, 7.105994, 80.338761, 'Bulathkohupitiya', 'බුලත්කොහුපිටිය', NULL, '71230', NULL, NULL, NULL, 12),
(923, 7.187968, 80.334456, 'Damunupola', 'දමුනුපොල', NULL, '71034', NULL, NULL, NULL, 12),
(924, 7.1833, 80.3583, 'Debathgama', 'දෙබත්ගම', NULL, '71037', NULL, NULL, NULL, 12),
(925, 7.093849, 80.418959, 'Dedugala', 'දේදුගල', NULL, '71237', NULL, NULL, NULL, 12),
(926, 7.2333, 80.2667, 'Deewala Pallegama', 'දීවල පල්ලෙගම', NULL, '71022', NULL, NULL, NULL, 12),
(927, 6.9706, 80.2675, 'Dehiowita', 'දෙහිඕවිට', NULL, '71400', NULL, NULL, NULL, 12),
(928, 7.280914, 80.35876, 'Deldeniya', 'දෙල්දෙණිය', NULL, '71009', NULL, NULL, NULL, 12),
(929, 6.9653, 80.3181, 'Deloluwa', 'දෙලෝලුව', NULL, '71401', NULL, NULL, NULL, 12),
(930, 6.932387, 80.335039, 'Deraniyagala', 'දැරණියගල', NULL, '71430', NULL, NULL, NULL, 12),
(931, 7.278928, 80.319135, 'Dewalegama', 'දේවාලේගම', NULL, '71050', NULL, NULL, NULL, 12),
(932, 7.2167, 80.4667, 'Dewanagala', 'දෙවනගල', NULL, '71527', NULL, NULL, NULL, 12),
(933, 7.37974, 80.348761, 'Dombemada', 'දොඹේමද', NULL, '71115', NULL, NULL, NULL, 12),
(934, 7.1833, 80.2167, 'Dorawaka', 'දොරවක', NULL, '71601', NULL, NULL, NULL, 12),
(935, 7.1738, 80.2074, 'Dunumala', 'දුනුමල', NULL, '71605', NULL, NULL, NULL, 12),
(936, 7.14, 80.2364, 'Galapitamada', 'ගලපිටමඩ', NULL, '71603', NULL, NULL, NULL, 12),
(937, 7.2167, 80.4167, 'Galatara', 'ගලතර', NULL, '71505', NULL, NULL, NULL, 12),
(938, 7.2, 80.3, 'Galigamuwa Town', 'ගලිගමුව නගරය', NULL, '71350', NULL, NULL, NULL, 12),
(939, 6.85, 80.35, 'Gallella', 'ගල්ලෑල්ල', NULL, '70062', NULL, NULL, NULL, 12),
(940, 7.05, 80.2333, 'Galpatha(Sab)', 'ගල්පාත (සබරගමුව)', NULL, '71312', NULL, NULL, NULL, 12),
(941, 7.1667, 80.3667, 'Gantuna', 'ගන්තුන', NULL, '71222', NULL, NULL, NULL, 12),
(942, 6.9128, 80.2358, 'Getahetta', 'ගැටහැත්ත', NULL, '70620', NULL, NULL, NULL, 12),
(943, 6.885959, 80.313855, 'Godagampola', 'ගොඩගම්පොල', NULL, '70556', NULL, NULL, NULL, 12),
(944, 7.035326, 80.207373, 'Gonagala', 'ගෝනාගල', NULL, '71318', NULL, NULL, NULL, 12),
(945, 7.2, 80.3, 'Hakahinna', 'හකහින්න', NULL, '71352', NULL, NULL, NULL, 12),
(946, 7.003952, 80.328796, 'Hakbellawaka', 'හක්බෙල්ලවක', NULL, '71715', NULL, NULL, NULL, 12),
(947, 7.2, 80.35, 'Halloluwa', 'හල්ලෝලුව', NULL, '20032', NULL, NULL, NULL, 12),
(948, 6.9306, 80.2747, 'Hedunuwewa', NULL, NULL, '22024', NULL, NULL, NULL, 12),
(949, 7.1667, 80.5, 'Hemmatagama', NULL, NULL, '71530', NULL, NULL, NULL, 12),
(950, 7.372493, 80.377574, 'Hewadiwela', NULL, NULL, '71108', NULL, NULL, NULL, 12),
(951, 7.247803, 80.469032, 'Hingula', NULL, NULL, '71520', NULL, NULL, NULL, 12),
(952, 6.91506, 80.304394, 'Hinguralakanda', NULL, NULL, '71417', NULL, NULL, NULL, 12),
(953, 6.9167, 80.4167, 'Hingurana', NULL, NULL, '32010', NULL, NULL, NULL, 12),
(954, 7.2833, 80.3833, 'Hiriwadunna', NULL, NULL, '71014', NULL, NULL, NULL, 12),
(955, 7.350958, 80.397324, 'Ihala Walpola', NULL, NULL, '80134', NULL, NULL, NULL, 12),
(956, 7.2667, 80.3333, 'Ihalagama', NULL, NULL, '70144', NULL, NULL, NULL, 12),
(957, 7.08264, 80.245565, 'Imbulana', NULL, NULL, '71313', NULL, NULL, NULL, 12),
(958, 7.2853, 80.3186, 'Imbulgasdeniya', NULL, NULL, '71055', NULL, NULL, NULL, 12),
(959, 7.136698, 80.341558, 'Kabagamuwa', NULL, NULL, '71202', NULL, NULL, NULL, 12),
(960, 7.3, 80.4583, 'Kahapathwala', NULL, NULL, '60062', NULL, NULL, NULL, 12),
(961, 7.2333, 80.4667, 'Kandaketya', NULL, NULL, '90020', NULL, NULL, NULL, 12),
(962, 7.081348, 80.275311, 'Kannattota', NULL, NULL, '71372', NULL, NULL, NULL, 12),
(963, 7.3604, 80.3832, 'Karagahinna', NULL, NULL, '21014', NULL, NULL, NULL, 12),
(964, 7.249349, 80.351662, 'Kegalle', NULL, NULL, '71000', NULL, NULL, NULL, 12),
(965, 7.161131, 80.519539, 'Kehelpannala', NULL, NULL, '71533', NULL, NULL, NULL, 12),
(966, 7.1167, 80.35, 'Ketawala Leula', NULL, NULL, '20198', NULL, NULL, NULL, 12),
(967, 6.9944, 80.4114, 'Kitulgala', NULL, NULL, '71720', NULL, NULL, NULL, 12),
(968, 7.2667, 80.4333, 'Kondeniya', NULL, NULL, '71501', NULL, NULL, NULL, 12),
(969, 7.0833, 80.2667, 'Kotiyakumbura', NULL, NULL, '71370', NULL, NULL, NULL, 12),
(970, 7.112902, 80.239, 'Lewangama', NULL, NULL, '71315', NULL, NULL, NULL, 12),
(971, 7.019803, 80.450227, 'Mahabage', NULL, NULL, '71722', NULL, NULL, NULL, 12),
(972, 7.282441, 80.47528, 'Makehelwala', NULL, NULL, '71507', NULL, NULL, NULL, 12),
(973, 7.053091, 80.351009, 'Malalpola', NULL, NULL, '71704', NULL, NULL, NULL, 12),
(974, 6.9306, 80.2747, 'Maldeniya', NULL, NULL, '22021', NULL, NULL, NULL, 12),
(975, 6.887528, 80.464212, 'Maliboda', NULL, NULL, '71411', NULL, NULL, NULL, 12),
(976, 7.2333, 80.4667, 'Maliyadda', NULL, NULL, '90022', NULL, NULL, NULL, 12),
(977, 7.15, 80.2833, 'Malmaduwa', NULL, NULL, '71325', NULL, NULL, NULL, 12),
(978, 7.2333, 80.35, 'Marapana', NULL, NULL, '70041', NULL, NULL, NULL, 12),
(979, 7.244446, 80.439045, 'Mawanella', NULL, NULL, '71500', NULL, NULL, NULL, 12),
(980, 7.3, 80.4583, 'Meetanwala', NULL, NULL, '60066', NULL, NULL, NULL, 12),
(981, 7.0333, 80.3333, 'Migastenna Sabara', NULL, NULL, '71716', NULL, NULL, NULL, 12),
(982, 6.900423, 80.351075, 'Miyanawita', NULL, NULL, '71432', NULL, NULL, NULL, 12),
(983, 7.25, 80.3833, 'Molagoda', NULL, NULL, '71016', NULL, NULL, NULL, 12),
(984, 7.1667, 80.3667, 'Morontota', NULL, NULL, '71220', NULL, NULL, NULL, 12),
(985, 7.07922, 80.360764, 'Narangala', NULL, NULL, '90064', NULL, NULL, NULL, 12),
(986, 7.198165, 80.294552, 'Narangoda', NULL, NULL, '60152', NULL, NULL, NULL, 12),
(987, 7.1167, 80.35, 'Nattarampotha', NULL, NULL, '20194', NULL, NULL, NULL, 12),
(988, 7.2319, 80.2669, 'Nelundeniya', NULL, NULL, '71060', NULL, NULL, NULL, 12),
(989, 7.1667, 80.2167, 'Niyadurupola', NULL, NULL, '71602', NULL, NULL, NULL, 12),
(990, 6.9508, 80.3174, 'Noori', NULL, NULL, '71407', NULL, NULL, NULL, 12),
(991, 6.866357, 80.320996, 'Pannila', NULL, NULL, '12114', NULL, NULL, NULL, 12),
(992, 7.315516, 80.434412, 'Pattampitiya', NULL, NULL, '71130', NULL, NULL, NULL, 12),
(993, 7.1167, 80.35, 'Pilawala', NULL, NULL, '20196', NULL, NULL, NULL, 12),
(994, 7.1833, 80.3583, 'Pothukoladeniya', NULL, NULL, '71039', NULL, NULL, NULL, 12),
(995, 7.3667, 80.3667, 'Puswelitenna', NULL, NULL, '60072', NULL, NULL, NULL, 12),
(996, 7.323016, 80.391856, 'Rambukkana', NULL, NULL, '71100', NULL, NULL, NULL, 12),
(997, 7.2333, 80.4667, 'Rilpola', NULL, NULL, '90026', NULL, NULL, NULL, 12),
(998, 7.2, 80.4833, 'Rukmale', NULL, NULL, '11129', NULL, NULL, NULL, 12),
(999, 7.048852, 80.2561, 'Ruwanwella', NULL, NULL, '71300', NULL, NULL, NULL, 12),
(1000, 7.2667, 80.2167, 'Samanalawewa', NULL, NULL, '70142', NULL, NULL, NULL, 12),
(1001, 7.0469, 80.3502, 'Seaforth Colony', NULL, NULL, '71708', NULL, NULL, NULL, 12),
(1002, 6.926944, 79.848611, 'Colombo 2', 'කොළඹ 2', 'கொழும்பு 2', '200', 'Slave Island', 'කොම්පඤ්ඤ වීදිය', 'கொம்பனித்தெரு', 5),
(1003, 7.2333, 80.4667, 'Spring Valley', NULL, NULL, '90028', NULL, NULL, NULL, 12),
(1004, 7.1667, 80.4833, 'Talgaspitiya', NULL, NULL, '71541', NULL, NULL, NULL, 12),
(1005, 7.0033, 80.3647, 'Teligama', NULL, NULL, '71724', NULL, NULL, NULL, 12),
(1006, 7.233983, 80.225956, 'Tholangamuwa', NULL, NULL, '71619', NULL, NULL, NULL, 12),
(1007, 7.3555, 80.3969, 'Thotawella', NULL, NULL, '71106', NULL, NULL, NULL, 12),
(1008, 7.05, 80.2833, 'Udaha Hawupe', NULL, NULL, '70154', NULL, NULL, NULL, 12),
(1009, 7.09414, 80.377416, 'Udapotha', NULL, NULL, '71236', NULL, NULL, NULL, 12),
(1010, 7.110957, 80.387557, 'Uduwa', NULL, NULL, '20052', NULL, NULL, NULL, 12),
(1011, 7.141866, 80.365332, 'Undugoda', NULL, NULL, '71200', NULL, NULL, NULL, 12),
(1012, 7.216957, 80.444573, 'Ussapitiya', NULL, NULL, '71510', NULL, NULL, NULL, 12),
(1013, 7.058236, 80.207402, 'Wahakula', NULL, NULL, '71303', NULL, NULL, NULL, 12),
(1014, 7.088513, 80.198619, 'Waharaka', NULL, NULL, '71304', NULL, NULL, NULL, 12),
(1015, 7.0667, 80.175, 'Wanaluwewa', NULL, NULL, '11068', NULL, NULL, NULL, 12),
(1016, 7.230053, 80.196768, 'Warakapola', NULL, NULL, '71600', NULL, NULL, NULL, 12),
(1017, 7.1833, 80.3833, 'Watura', NULL, NULL, '71035', NULL, NULL, NULL, 12),
(1018, 7.0469, 80.3502, 'Weeoya', NULL, NULL, '71702', NULL, NULL, NULL, 12),
(1019, 7.099631, 80.30654, 'Wegalla', NULL, NULL, '71234', NULL, NULL, NULL, 12),
(1020, 7.1833, 80.2, 'Weligalla', NULL, NULL, '20610', NULL, NULL, NULL, 12),
(1021, 7.0333, 80.3333, 'Welihelatenna', NULL, NULL, '71712', NULL, NULL, NULL, 12),
(1022, 6.85, 80.35, 'Wewelwatta', NULL, NULL, '70066', NULL, NULL, NULL, 12),
(1023, 7.32512, 80.356415, 'Yatagama', NULL, NULL, '71116', NULL, NULL, NULL, 12),
(1024, 7.1333, 80.3, 'Yatapana', NULL, NULL, '71326', NULL, NULL, NULL, 12),
(1025, 7.0242, 80.3006, 'Yatiyantota', NULL, NULL, '71700', NULL, NULL, NULL, 12),
(1026, 7.2333, 80.2667, 'Yattogoda', NULL, NULL, '71029', NULL, NULL, NULL, 12),
(1027, 9.4515585, 80.5008173, 'Kandavalai', NULL, NULL, '', NULL, NULL, NULL, 13),
(1028, 9.3769363, 80.3766044, 'Karachchi', NULL, NULL, '', NULL, NULL, NULL, 13),
(1029, 9.416667, 80.416667, 'Kilinochchi', NULL, NULL, '', NULL, NULL, NULL, 13),
(1030, 9.6115808, 80.3273106, 'Pachchilaipalli', NULL, NULL, '', NULL, NULL, NULL, 13),
(1031, 9.5035013, 80.2111173, 'Poonakary', NULL, NULL, '', NULL, NULL, NULL, 13),
(1032, 7.637034, 80.023362, 'Akurana', 'අකුරණ', NULL, '20850', NULL, NULL, NULL, 14),
(1033, 7.6779, 80.1151, 'Alahengama', 'අලහෙන්ගම', NULL, '60416', NULL, NULL, NULL, 14),
(1034, 7.473913, 80.171211, 'Alahitiyawa', 'අලහිටියාව', NULL, '60182', NULL, NULL, NULL, 14),
(1035, 7.492063, 80.452844, 'Ambakote', 'අඹකොටේ', NULL, '60036', NULL, NULL, NULL, 14),
(1036, 7.915973, 80.237512, 'Ambanpola', 'අඹන්පොල', NULL, '60650', NULL, NULL, NULL, 14),
(1037, 7.4667, 80.1333, 'Andiyagala', 'ආඬියාගල', NULL, '50112', NULL, NULL, NULL, 14),
(1038, 7.501814, 80.120028, 'Anukkane', 'අනුක්කනේ', NULL, '60214', NULL, NULL, NULL, 14),
(1039, 7.366116, 80.344207, 'Aragoda', 'අරංගොඩ', NULL, '60308', NULL, NULL, NULL, 14),
(1040, 7.9696, 80.2768, 'Ataragalla', 'අටරගල්ල', NULL, '60706', NULL, NULL, NULL, 14),
(1041, 7.6569, 80.2203, 'Awulegama', 'අවුලේගම', NULL, '60462', NULL, NULL, NULL, 14),
(1042, 7.791025, 80.250762, 'Balalla', 'බලල්ල', NULL, '60604', NULL, NULL, NULL, 14),
(1043, 7.8667, 80.2167, 'Bamunukotuwa', 'බමුණකොටුව', NULL, '60347', NULL, NULL, NULL, 14),
(1044, 7.603296, 80.17257, 'Bandara Koswatta', 'බන්ඩාර කොස්වත්ත', NULL, '60424', NULL, NULL, NULL, 14),
(1045, 7.605177, 79.921996, 'Bingiriya', 'බින්ගිරිය', NULL, '60450', NULL, NULL, NULL, 14),
(1046, 7.4589, 80.2107, 'Bogamulla', 'බෝගමුල්ල', NULL, '60107', NULL, NULL, NULL, 14),
(1047, 7.682578, 80.034757, 'Boraluwewa', 'බොරළුවැව', NULL, '60437', NULL, NULL, NULL, 14),
(1048, 7.452272, 80.341672, 'Boyagane', 'බෝයගානෙ', NULL, '60027', NULL, NULL, NULL, 14),
(1049, 7.4581, 80.0603, 'Bujjomuwa', 'බුජ්ජෝමුව', NULL, '60291', NULL, NULL, NULL, 14),
(1050, 7.484201, 80.473535, 'Buluwala', 'බුලුවල', NULL, '60076', NULL, NULL, NULL, 14),
(1051, 7.65, 79.9667, 'Dadayamtalawa', 'දඩයම්තලාව', NULL, '32046', NULL, NULL, NULL, 14),
(1052, 7.370527, 80.146193, 'Dambadeniya', 'දඹදෙණිය', NULL, '60130', NULL, NULL, NULL, 14),
(1053, 7.359407, 79.978233, 'Daraluwa', 'දරලුව', NULL, '60174', NULL, NULL, NULL, 14),
(1054, 7.510205, 80.029797, 'Deegalla', 'දීගල්ල', NULL, '60228', NULL, NULL, NULL, 14),
(1055, 7.513976, 80.258741, 'Demataluwa', 'දෙමටලුව', NULL, '60024', NULL, NULL, NULL, 14),
(1056, 7.35, 80.1667, 'Demuwatha', 'දෙමුවත', NULL, '70332', NULL, NULL, NULL, 14),
(1057, 7.685279, 80.47286, 'Diddeniya', 'දෙණියාය', NULL, '60544', NULL, NULL, NULL, 14),
(1058, 7.897218, 80.101328, 'Digannewa', 'දිගන්නෑව', NULL, '60485', NULL, NULL, NULL, 14),
(1059, 7.75, 80.2, 'Divullegoda', 'දිවුලේගොඩ', NULL, '60472', NULL, NULL, NULL, 14),
(1060, 7.8167, 80.1833, 'Diyasenpura', 'දියසෙන්පුර', NULL, '51504', NULL, NULL, NULL, 14),
(1061, 7.5667, 80.5333, 'Dodangaslanda', 'දොඩන්ගස්ලන්ද', NULL, '60530', NULL, NULL, NULL, 14),
(1062, 7.621516, 80.418833, 'Doluwa', 'දොළුව', NULL, '20532', NULL, NULL, NULL, 14),
(1063, 7.5833, 79.9333, 'Doragamuwa', 'දොරගමුව', NULL, '20816', NULL, NULL, NULL, 14),
(1064, 7.450628, 80.380562, 'Doratiyawa', 'දොරටියාව', NULL, '60013', NULL, NULL, NULL, 14),
(1065, 7.8, 80.0833, 'Dunumadalawa', 'දුනුමඩවල', NULL, '50214', NULL, NULL, NULL, 14),
(1066, 7.3667, 80.2, 'Dunuwilapitiya', 'දුනුවිලපිටිය', NULL, '21538', NULL, NULL, NULL, 14),
(1067, 7.927568, 80.332035, 'Ehetuwewa', 'ඇහැටුවැව', NULL, '60716', NULL, NULL, NULL, 14),
(1068, 7.313179, 80.056935, 'Elibichchiya', 'ඇලිබිච්චිය', NULL, '60156', NULL, NULL, NULL, 14),
(1069, 7.9214, 80.3608, 'Embogama', NULL, NULL, '60718', NULL, NULL, NULL, 14),
(1070, 7.5167, 79.9667, 'Etungahakotuwa', 'ඇතුන්ගහකොටුව', NULL, '60266', NULL, NULL, NULL, 14),
(1071, 7.8, 80.0833, 'Galadivulwewa', 'ගලදිවුල්වැව', NULL, '50210', NULL, NULL, NULL, 14),
(1072, 7.995468, 80.267527, 'Galgamuwa', 'ගල්ගමුව', NULL, '60700', NULL, NULL, NULL, 14),
(1073, 7.3, 80.15, 'Gallellagama', 'ගල්ලෑල්ලගම', NULL, '20095', NULL, NULL, NULL, 14),
(1074, 7.9667, 80.3333, 'Gallewa', NULL, NULL, '60712', NULL, NULL, NULL, 14),
(1075, 7.5833, 80, 'Ganegoda', 'ගණේගොඩ', NULL, '80440', NULL, NULL, NULL, 14),
(1076, 7.9833, 80.3833, 'Girathalana', 'ගිරාතලන', NULL, '60752', NULL, NULL, NULL, 14),
(1077, 7.6301, 80.3775, 'Gokaralla', 'ගොකරුල්ල', NULL, '60522', NULL, NULL, NULL, 14),
(1078, 7.3167, 80, 'Gonawila', 'ගොනාවිල', NULL, '60170', NULL, NULL, NULL, 14),
(1079, 7.5953, 79.9972, 'Halmillawewa', 'හල්මිල්ලවැව', NULL, '60441', NULL, NULL, NULL, 14),
(1080, 7.3667, 80.2, 'Handungamuwa', NULL, NULL, '21536', NULL, NULL, NULL, 14),
(1081, 7.3, 80.15, 'Harankahawa', NULL, NULL, '20092', NULL, NULL, NULL, 14),
(1082, 7.3167, 80.2833, 'Helamada', NULL, NULL, '71046', NULL, NULL, NULL, 14),
(1083, 7.703282, 80.111254, 'Hengamuwa', NULL, NULL, '60414', NULL, NULL, NULL, 14),
(1084, 7.605372, 80.083137, 'Hettipola', NULL, NULL, '60430', NULL, NULL, NULL, 14),
(1085, 7.3333, 80.2167, 'Hewainna', NULL, NULL, '10714', NULL, NULL, NULL, 14),
(1086, 7.75, 80.0833, 'Hilogama', NULL, NULL, '60486', NULL, NULL, NULL, 14),
(1087, 7.4833, 80.4167, 'Hindagolla', NULL, NULL, '60034', NULL, NULL, NULL, 14),
(1088, 7.6709, 80.4751, 'Hiriyala Lenawa', NULL, NULL, '60546', NULL, NULL, NULL, 14),
(1089, 7.553915, 79.924699, 'Hiruwalpola', NULL, NULL, '60458', NULL, NULL, NULL, 14),
(1090, 7.45, 80.1833, 'Horambawa', NULL, NULL, '60181', NULL, NULL, NULL, 14),
(1091, 7.7833, 80.1833, 'Hulogedara', NULL, NULL, '60474', NULL, NULL, NULL, 14),
(1092, 7.79059, 80.140007, 'Hulugalla', NULL, NULL, '60477', NULL, NULL, NULL, 14),
(1093, 7.5167, 80.0833, 'Ihala Gomugomuwa', NULL, NULL, '60211', NULL, NULL, NULL, 14),
(1094, 7.3672, 80.1467, 'Ihala Katugampala', NULL, NULL, '60135', NULL, NULL, NULL, 14),
(1095, 7.422625, 80.402808, 'Indulgodakanda', NULL, NULL, '60016', NULL, NULL, NULL, 14),
(1096, 7.4458, 80.3458, 'Ithanawatta', NULL, NULL, '60025', NULL, NULL, NULL, 14),
(1097, 7.7167, 80, 'Kadigawa', NULL, NULL, '60492', NULL, NULL, NULL, 14),
(1098, 8.05, 80.3833, 'Kalankuttiya', NULL, NULL, '50174', NULL, NULL, NULL, 14),
(1099, 7.6333, 80.3667, 'Kalatuwawa', NULL, NULL, '10718', NULL, NULL, NULL, 14),
(1100, 7.449717, 80.256696, 'Kalugamuwa', NULL, NULL, '60096', NULL, NULL, NULL, 14),
(1101, 7.43824, 80.535658, 'Kanadeniyawala', NULL, NULL, '60054', NULL, NULL, NULL, 14),
(1102, 7.6167, 80.2, 'Kanattewewa', NULL, NULL, '60422', NULL, NULL, NULL, 14),
(1103, 7.424611, 80.071498, 'Kandegedara', NULL, NULL, '90070', NULL, NULL, NULL, 14),
(1104, 7.475787, 80.209967, 'Karagahagedara', NULL, NULL, '60106', NULL, NULL, NULL, 14),
(1105, 7.805937, 80.339167, 'Karambe', NULL, NULL, '60602', NULL, NULL, NULL, 14),
(1106, 7.624637, 80.553944, 'Katiyawa', NULL, NULL, '50261', NULL, NULL, NULL, 14),
(1107, 7.5331, 80.1897, 'Katupota', NULL, NULL, '60350', NULL, NULL, NULL, 14),
(1108, 7.75, 80.3833, 'Kawudulla', NULL, NULL, '51414', NULL, NULL, NULL, 14),
(1109, 7.8167, 80.1833, 'Kawuduluwewa Stagell', NULL, NULL, '51514', NULL, NULL, NULL, 14),
(1110, 7.49608, 80.170446, 'Kekunagolla', NULL, NULL, '60183', NULL, NULL, NULL, 14),
(1111, 7.323203, 80.190441, 'Keppitiwalana', NULL, NULL, '60288', NULL, NULL, NULL, 14),
(1112, 7.6709, 80.4751, 'Kimbulwanaoya', NULL, NULL, '60548', NULL, NULL, NULL, 14),
(1113, 7.5247, 80.1408, 'Kirimetiyawa', NULL, NULL, '60184', NULL, NULL, NULL, 14),
(1114, 7.502078, 80.096123, 'Kirindawa', NULL, NULL, '60212', NULL, NULL, NULL, 14),
(1115, 7.554314, 80.475005, 'Kirindigalla', NULL, NULL, '60502', NULL, NULL, NULL, 14),
(1116, 7.4816, 80.1615, 'Kithalawa', NULL, NULL, '60188', NULL, NULL, NULL, 14),
(1117, 7.5, 80.5333, 'Kitulwala', NULL, NULL, '11242', NULL, NULL, NULL, 14),
(1118, 7.656731, 80.120999, 'Kobeigane', NULL, NULL, '60410', NULL, NULL, NULL, 14),
(1119, 7.4167, 80.3667, 'Kohilagedara', NULL, NULL, '60028', NULL, NULL, NULL, 14),
(1120, 7.8, 80.0667, 'Konwewa', NULL, NULL, '60630', NULL, NULL, NULL, 14),
(1121, 7.574081, 80.138826, 'Kosdeniya', NULL, NULL, '60356', NULL, NULL, NULL, 14),
(1122, 7.4, 80.3833, 'Kosgolla', NULL, NULL, '60029', NULL, NULL, NULL, 14),
(1123, 7.45, 80.2333, 'Kotagala', NULL, NULL, '22080', NULL, NULL, NULL, 14),
(1124, 6.942778, 79.858611, 'Colombo 13', 'කොළඹ 13', 'கொழும்பு 13', '01300', 'Kotahena', 'කොටහේන', 'கொட்டாஞ்சேனை', 5),
(1125, 7.7911, 80.1023, 'Kotawehera', NULL, NULL, '60483', NULL, NULL, NULL, 14),
(1126, 7.558498, 80.340333, 'Kudagalgamuwa', NULL, NULL, '60003', NULL, NULL, NULL, 14),
(1127, 7.9833, 80.3833, 'Kudakatnoruwa', NULL, NULL, '60754', NULL, NULL, NULL, 14),
(1128, 7.469551, 80.04873, 'Kuliyapitiya', NULL, NULL, '60200', NULL, NULL, NULL, 14),
(1129, 7.75, 80.3833, 'Kumaragama', NULL, NULL, '51412', NULL, NULL, NULL, 14),
(1130, 7.675, 80.3667, 'Kumbukgeta', NULL, NULL, '60508', NULL, NULL, NULL, 14),
(1131, 7.797468, 80.217857, 'Kumbukwewa', NULL, NULL, '60506', NULL, NULL, NULL, 14),
(1132, 7.6, 80.1333, 'Kuratihena', NULL, NULL, '60438', NULL, NULL, NULL, 14),
(1133, 7.4867, 80.3647, 'Kurunegala', NULL, NULL, '60000', NULL, NULL, NULL, 14),
(1134, 7.675, 80.3667, 'lbbagamuwa', NULL, NULL, '60500', NULL, NULL, NULL, 14),
(1135, 7.5436, 79.9819, 'lhala Kadigamuwa', NULL, NULL, '60238', NULL, NULL, NULL, 14),
(1136, 7.3447, 79.9425, 'Lihiriyagama', NULL, NULL, '61138', NULL, NULL, NULL, 14),
(1137, 7.4333, 80.1333, 'lllagolla', NULL, NULL, '20724', NULL, NULL, NULL, 14),
(1138, 7.5436, 79.9819, 'llukhena', NULL, NULL, '60232', NULL, NULL, NULL, 14),
(1139, 7.4589, 80.2107, 'Lonahettiya', NULL, NULL, '60108', NULL, NULL, NULL, 14),
(1140, 7.711952, 80.499003, 'Madahapola', NULL, NULL, '60552', NULL, NULL, NULL, 14),
(1141, 7.44599, 79.994062, 'Madakumburumulla', NULL, NULL, '60209', NULL, NULL, NULL, 14),
(1142, 7.353398, 80.314033, 'Madalagama', NULL, NULL, '70158', NULL, NULL, NULL, 14),
(1143, 7.703, 80.5051, 'Madawala Ulpotha', NULL, NULL, '21074', NULL, NULL, NULL, 14),
(1144, 7.5667, 80.5333, 'Maduragoda', NULL, NULL, '60532', NULL, NULL, NULL, 14),
(1145, 7.734847, 80.4079, 'Maeliya', NULL, NULL, '60512', NULL, NULL, NULL, 14),
(1146, 7.542895, 80.090321, 'Magulagama', NULL, NULL, '60221', NULL, NULL, NULL, 14),
(1147, 7.8167, 80.1833, 'Maha Ambagaswewa', NULL, NULL, '51518', NULL, NULL, NULL, 14),
(1148, 8.062861, 80.28052, 'Mahagalkadawala', NULL, NULL, '60731', NULL, NULL, NULL, 14),
(1149, 7.8333, 80.1333, 'Mahagirilla', NULL, NULL, '60479', NULL, NULL, NULL, 14),
(1150, 7.7417, 80.4318, 'Mahamukalanyaya', NULL, NULL, '60516', NULL, NULL, NULL, 14),
(1151, 8.013545, 80.183367, 'Mahananneriya', NULL, NULL, '60724', NULL, NULL, NULL, 14),
(1152, 7.366, 80.0918, 'Mahapallegama', NULL, NULL, '71063', NULL, NULL, NULL, 14),
(1153, 7.335989, 80.212673, 'Maharachchimulla', NULL, NULL, '60286', NULL, NULL, NULL, 14),
(1154, 7.8167, 80.1833, 'Mahatalakolawewa', NULL, NULL, '51506', NULL, NULL, NULL, 14),
(1155, 7.5167, 79.9167, 'Mahawewa', NULL, NULL, '61220', NULL, NULL, NULL, 14),
(1156, 7.8228, 80.2778, 'Maho', NULL, NULL, '60600', NULL, NULL, NULL, 14),
(1157, 7.998315, 80.345072, 'Makulewa', NULL, NULL, '60714', NULL, NULL, NULL, 14),
(1158, 7.751748, 80.43986, 'Makulpotha', NULL, NULL, '60514', NULL, NULL, NULL, 14),
(1159, 7.6333, 80.05, 'Makulwewa', NULL, NULL, '60578', NULL, NULL, NULL, 14),
(1160, 7.65, 80.2667, 'Malagane', NULL, NULL, '60404', NULL, NULL, NULL, 14),
(1161, 7.63521, 80.108641, 'Mandapola', NULL, NULL, '60434', NULL, NULL, NULL, 14),
(1162, 7.8667, 80.2167, 'Maspotha', NULL, NULL, '60344', NULL, NULL, NULL, 14),
(1163, 7.409691, 80.315775, 'Mawathagama', NULL, NULL, '60060', NULL, NULL, NULL, 14),
(1164, 7.8167, 80.1833, 'Medirigiriya', NULL, NULL, '51500', NULL, NULL, NULL, 14),
(1165, 7.7678, 80.2858, 'Medivawa', NULL, NULL, '60612', NULL, NULL, NULL, 14),
(1166, 7.9833, 80.3833, 'Meegalawa', NULL, NULL, '60750', NULL, NULL, NULL, 14),
(1167, 7.8167, 80.1833, 'Meegaswewa', NULL, NULL, '51508', NULL, NULL, NULL, 14),
(1168, 7.85, 80.15, 'Meewellawa', NULL, NULL, '60484', NULL, NULL, NULL, 14),
(1169, 7.65, 80.5, 'Melsiripura', NULL, NULL, '60540', NULL, NULL, NULL, 14),
(1170, 7.3615, 80.3177, 'Metikumbura', NULL, NULL, '60304', NULL, NULL, NULL, 14),
(1171, 7.390854, 80.180612, 'Metiyagane', NULL, NULL, '60121', NULL, NULL, NULL, 14),
(1172, 7.581261, 80.307757, 'Minhettiya', NULL, NULL, '60004', NULL, NULL, NULL, 14),
(1173, 7.7167, 80.25, 'Minuwangete', NULL, NULL, '60406', NULL, NULL, NULL, 14),
(1174, 7.6542, 80.2583, 'Mirihanagama', NULL, NULL, '60408', NULL, NULL, NULL, 14),
(1175, 7.824042, 80.060587, 'Monnekulama', NULL, NULL, '60495', NULL, NULL, NULL, 14),
(1176, 7.547791, 80.130329, 'Moragane', NULL, NULL, '60354', NULL, NULL, NULL, 14),
(1177, 7.6333, 80.2167, 'Moragollagama', NULL, NULL, '60640', NULL, NULL, NULL, 14),
(1178, 7.510701, 80.488428, 'Morathiha', NULL, NULL, '60038', NULL, NULL, NULL, 14),
(1179, 7.55, 80.0667, 'Munamaldeniya', NULL, NULL, '60218', NULL, NULL, NULL, 14),
(1180, 7.3942, 80.1861, 'Muruthenge', NULL, NULL, '60122', NULL, NULL, NULL, 14),
(1181, 7.3667, 80.1667, 'Mutugala', NULL, NULL, '51064', NULL, NULL, NULL, 14),
(1182, 7.6833, 80.0667, 'Nabadewa', NULL, NULL, '60482', NULL, NULL, NULL, 14),
(1183, 7.752013, 80.309254, 'Nagollagama', NULL, NULL, '60590', NULL, NULL, NULL, 14),
(1184, 7.563335, 80.037807, 'Nagollagoda', NULL, NULL, '60226', NULL, NULL, NULL, 14),
(1185, 7.448259, 80.141879, 'Nakkawatta', NULL, NULL, '60186', NULL, NULL, NULL, 14),
(1186, 7.431387, 80.206159, 'Narammala', NULL, NULL, '60100', NULL, NULL, NULL, 14),
(1187, 7.3667, 80.1667, 'Nawasenapura', NULL, NULL, '51066', NULL, NULL, NULL, 14),
(1188, 7.4581, 80.0603, 'Nawatalwatta', NULL, NULL, '60292', NULL, NULL, NULL, 14),
(1189, 7.690523, 80.457947, 'Nelliya', NULL, NULL, '60549', NULL, NULL, NULL, 14),
(1190, 7.747585, 80.115201, 'Nikaweratiya', NULL, NULL, '60470', NULL, NULL, NULL, 14),
(1191, 7.3667, 80.2, 'Nugagolla', NULL, NULL, '21534', NULL, NULL, NULL, 14),
(1192, 7.329999, 80.220383, 'Nugawela', NULL, NULL, '20072', NULL, NULL, NULL, 14),
(1193, 7.648348, 80.222132, 'Padeniya', NULL, NULL, '60461', NULL, NULL, NULL, 14),
(1194, 7.545547, 79.9905, 'Padiwela', NULL, NULL, '60236', NULL, NULL, NULL, 14),
(1195, 8.0833, 80.2111, 'Pahalagiribawa', NULL, NULL, '60735', NULL, NULL, NULL, 14),
(1196, 7.4833, 80.2, 'Pahamune', NULL, NULL, '60112', NULL, NULL, NULL, 14),
(1197, 7.4667, 80.1333, 'Palagala', NULL, NULL, '50111', NULL, NULL, NULL, 14),
(1198, 7.9, 80.2, 'Palapathwela', NULL, NULL, '21070', NULL, NULL, NULL, 14),
(1199, 7.5785, 79.9098, 'Palaviya', NULL, NULL, '61280', NULL, NULL, NULL, 14),
(1200, 7.4667, 79.9833, 'Pallewela', NULL, NULL, '11150', NULL, NULL, NULL, 14),
(1201, 7.947895, 80.279058, 'Palukadawala', NULL, NULL, '60704', NULL, NULL, NULL, 14),
(1202, 7.8667, 80.2167, 'Panadaragama', NULL, NULL, '60348', NULL, NULL, NULL, 14),
(1203, 7.55, 80.4667, 'Panagamuwa', NULL, NULL, '60052', NULL, NULL, NULL, 14),
(1204, 7.328059, 80.331852, 'Panaliya', NULL, NULL, '60312', NULL, NULL, NULL, 14),
(1205, 7.4167, 80.1833, 'Panapitiya', NULL, NULL, '70152', NULL, NULL, NULL, 14);
INSERT INTO `city` (`id`, `latitude`, `logitude`, `name_en`, `name_si`, `name_ta`, `postcode`, `sub_name_en`, `sub_name_si`, `sub_name_ta`, `district_id`) VALUES
(1206, 7.7061, 80.4964, 'Panliyadda', NULL, NULL, '60558', NULL, NULL, NULL, 14),
(1207, 7.7061, 80.4964, 'Pansiyagama', NULL, NULL, '60554', NULL, NULL, NULL, 14),
(1208, 7.3667, 80.4167, 'Parape', NULL, NULL, '71105', NULL, NULL, NULL, 14),
(1209, 7.4167, 80.0833, 'Pathanewatta', NULL, NULL, '90071', NULL, NULL, NULL, 14),
(1210, 7.3833, 80.3167, 'Pattiya Watta', NULL, NULL, '20118', NULL, NULL, NULL, 14),
(1211, 7.3667, 80.2, 'Perakanatta', NULL, NULL, '21532', NULL, NULL, NULL, 14),
(1212, 7.7417, 80.4318, 'Periyakadneluwa', NULL, NULL, '60518', NULL, NULL, NULL, 14),
(1213, 7.6299, 80.0953, 'Pihimbiya Ratmale', NULL, NULL, '60439', NULL, NULL, NULL, 14),
(1214, 7.460742, 80.512294, 'Pihimbuwa', NULL, NULL, '60053', NULL, NULL, NULL, 14),
(1215, 7.45, 80.4167, 'Pilessa', NULL, NULL, '60058', NULL, NULL, NULL, 14),
(1216, 7.332765, 80.295285, 'Polgahawela', NULL, NULL, '60300', NULL, NULL, NULL, 14),
(1217, 7.4167, 80.5333, 'Polgolla', NULL, NULL, '20250', NULL, NULL, NULL, 14),
(1218, 7.8142, 80.4042, 'Polpitigama', NULL, NULL, '60620', NULL, NULL, NULL, 14),
(1219, 7.4181, 80.3317, 'Pothuhera', NULL, NULL, '60330', NULL, NULL, NULL, 14),
(1220, 7.35542, 80.17166, 'Pothupitiya', NULL, NULL, '70338', NULL, NULL, NULL, 14),
(1221, 7.3833, 80.3167, 'Pujapitiya', NULL, NULL, '20112', NULL, NULL, NULL, 14),
(1222, 7.9, 80.4, 'Rakwana', NULL, NULL, '70300', NULL, NULL, NULL, 14),
(1223, 7.8, 80.0833, 'Ranorawa', NULL, NULL, '50212', NULL, NULL, NULL, 14),
(1224, 7.5833, 79.9333, 'Rathukohodigala', NULL, NULL, '20818', NULL, NULL, NULL, 14),
(1225, 7.802, 80.287, 'Ridibendiella', NULL, NULL, '60606', NULL, NULL, NULL, 14),
(1226, 7.55, 80.4833, 'Ridigama', NULL, NULL, '60040', NULL, NULL, NULL, 14),
(1227, 8.0833, 80.2111, 'Saliya Asokapura', NULL, NULL, '60736', NULL, NULL, NULL, 14),
(1228, 7.304619, 79.944358, 'Sandalankawa', NULL, NULL, '60176', NULL, NULL, NULL, 14),
(1229, 7.3667, 80.1667, 'Sevanapitiya', NULL, NULL, '51062', NULL, NULL, NULL, 14),
(1230, 8.1, 80.2667, 'Sirambiadiya', NULL, NULL, '61312', NULL, NULL, NULL, 14),
(1231, 7.7772, 80.1506, 'Sirisetagama', NULL, NULL, '60478', NULL, NULL, NULL, 14),
(1232, 7.529179, 80.340311, 'Siyambalangamuwa', NULL, NULL, '60646', NULL, NULL, NULL, 14),
(1233, 7.65, 79.9667, 'Siyambalawewa', NULL, NULL, '32048', NULL, NULL, NULL, 14),
(1234, 8.153657, 80.153384, 'Solepura', NULL, NULL, '60737', NULL, NULL, NULL, 14),
(1235, 8.145855, 80.132596, 'Solewewa', NULL, NULL, '60738', NULL, NULL, NULL, 14),
(1236, 7.6299, 80.0953, 'Sunandapura', NULL, NULL, '60436', NULL, NULL, NULL, 14),
(1237, 7.3833, 80.3, 'Talawattegedara', NULL, NULL, '60306', NULL, NULL, NULL, 14),
(1238, 8.0833, 80.2167, 'Tambutta', NULL, NULL, '60734', NULL, NULL, NULL, 14),
(1239, 7.4167, 80.0833, 'Tennepanguwa', NULL, NULL, '90072', NULL, NULL, NULL, 14),
(1240, 7.432473, 80.001954, 'Thalahitimulla', NULL, NULL, '60208', NULL, NULL, NULL, 14),
(1241, 7.796943, 80.433851, 'Thalakolawewa', NULL, NULL, '60624', NULL, NULL, NULL, 14),
(1242, 7.5943, 80.2108, 'Thalwita', NULL, NULL, '60572', NULL, NULL, NULL, 14),
(1243, 7.5333, 80.0667, 'Tharana Udawela', NULL, NULL, '60227', NULL, NULL, NULL, 14),
(1244, 7.750904, 80.140975, 'Thimbiriyawa', NULL, NULL, '60476', NULL, NULL, NULL, 14),
(1245, 7.6065, 79.9406, 'Tisogama', NULL, NULL, '60453', NULL, NULL, NULL, 14),
(1246, 7.5167, 80.4, 'Torayaya', NULL, NULL, '60499', NULL, NULL, NULL, 14),
(1247, 7.2833, 80.2167, 'Tulhiriya', NULL, NULL, '71610', NULL, NULL, NULL, 14),
(1248, 7.5, 79.9167, 'Tuntota', NULL, NULL, '71062', NULL, NULL, NULL, 14),
(1249, 7.6, 80.1333, 'Tuttiripitigama', NULL, NULL, '60426', NULL, NULL, NULL, 14),
(1250, 7.3583, 80.35, 'Udagaldeniya', NULL, NULL, '71113', NULL, NULL, NULL, 14),
(1251, 7.3, 80.15, 'Udahingulwala', NULL, NULL, '20094', NULL, NULL, NULL, 14),
(1252, 7.4333, 80.1333, 'Udawatta', NULL, NULL, '20722', NULL, NULL, NULL, 14),
(1253, 7.4828, 79.9753, 'Udubaddawa', NULL, NULL, '60250', NULL, NULL, NULL, 14),
(1254, 7.45, 80.4, 'Udumulla', NULL, NULL, '71521', NULL, NULL, NULL, 14),
(1255, 7.4667, 80.2833, 'Uhumiya', NULL, NULL, '60094', NULL, NULL, NULL, 14),
(1256, 7.8071, 80.4188, 'Ulpotha Pallekele', NULL, NULL, '60622', NULL, NULL, NULL, 14),
(1257, 7.7167, 80.3167, 'Ulpothagama', NULL, NULL, '20965', NULL, NULL, NULL, 14),
(1258, 8.0833, 80.2111, 'Usgala Siyabmalangamuwa', NULL, NULL, '60732', NULL, NULL, NULL, 14),
(1259, 7.4667, 80.1333, 'Vijithapura', NULL, NULL, '50110', NULL, NULL, NULL, 14),
(1260, 7.39697, 80.267596, 'Wadakada', NULL, NULL, '60318', NULL, NULL, NULL, 14),
(1261, 7.4167, 79.9667, 'Wadumunnegedara', NULL, NULL, '60204', NULL, NULL, NULL, 14),
(1262, 7.4167, 80.0167, 'Walakumburumulla', NULL, NULL, '60198', NULL, NULL, NULL, 14),
(1263, 7.6569, 80.2203, 'Wannigama', NULL, NULL, '60465', NULL, NULL, NULL, 14),
(1264, 7.9977, 80.2964, 'Wannikudawewa', NULL, NULL, '60721', NULL, NULL, NULL, 14),
(1265, 7.9977, 80.2964, 'Wannilhalagama', NULL, NULL, '60722', NULL, NULL, NULL, 14),
(1266, 7.6889, 80.1556, 'Wannirasnayakapura', NULL, NULL, '60490', NULL, NULL, NULL, 14),
(1267, 8.121572, 80.14855, 'Warawewa', NULL, NULL, '60739', NULL, NULL, NULL, 14),
(1268, 7.628694, 80.235989, 'Wariyapola', NULL, NULL, '60400', NULL, NULL, NULL, 14),
(1269, 7.397142, 80.432878, 'Watareka', NULL, NULL, '10511', NULL, NULL, NULL, 14),
(1270, 7.5833, 79.9333, 'Wattegama', NULL, NULL, '20810', NULL, NULL, NULL, 14),
(1271, 7.5167, 79.9167, 'Watuwatta', NULL, NULL, '60262', NULL, NULL, NULL, 14),
(1272, 7.649426, 79.981893, 'Weerapokuna', NULL, NULL, '60454', NULL, NULL, NULL, 14),
(1273, 7.6569, 80.2203, 'Welawa Juncton', NULL, NULL, '60464', NULL, NULL, NULL, 14),
(1274, 7.4581, 80.0603, 'Welipennagahamulla', NULL, NULL, '60240', NULL, NULL, NULL, 14),
(1275, 7.6167, 80.2833, 'Wellagala', NULL, NULL, '60402', NULL, NULL, NULL, 14),
(1276, 7.5729, 79.913974, 'Wellarawa', NULL, NULL, '60456', NULL, NULL, NULL, 14),
(1277, 7.566524, 80.369189, 'Wellawa', NULL, NULL, '60570', NULL, NULL, NULL, 14),
(1278, 7.4333, 80.05, 'Welpalla', NULL, NULL, '60206', NULL, NULL, NULL, 14),
(1279, 7.369467, 80.219573, 'Wennoruwa', NULL, NULL, '60284', NULL, NULL, NULL, 14),
(1280, 7.4, 80.1667, 'Weuda', NULL, NULL, '60080', NULL, NULL, NULL, 14),
(1281, 7.42031, 80.099835, 'Wewagama', NULL, NULL, '60195', NULL, NULL, NULL, 14),
(1282, 7.3667, 80.2, 'Wilgamuwa', NULL, NULL, '21530', NULL, NULL, NULL, 14),
(1283, 7.3833, 80.0333, 'Yakwila', NULL, NULL, '60202', NULL, NULL, NULL, 14),
(1284, 7.328729, 80.264509, 'Yatigaloluwa', NULL, NULL, '60314', NULL, NULL, NULL, 14),
(1285, 8.9833, 79.9, 'Mannar', NULL, NULL, '41000', NULL, NULL, NULL, 15),
(1286, 9.046951, 79.853286, 'Puthukudiyiruppu', NULL, NULL, '30158', NULL, NULL, NULL, 15),
(1287, 7.646383, 80.600048, 'Akuramboda', 'අකුරම්බොඩ', NULL, '21142', NULL, NULL, NULL, 16),
(1288, 7.55, 80.5583, 'Alawatuwala', 'අලවතුවල', NULL, '60047', NULL, NULL, NULL, 16),
(1289, 7.449444, 80.663358, 'Alwatta', 'අල්වත්ත', NULL, '21004', NULL, NULL, NULL, 16),
(1290, 7.651007, 80.693816, 'Ambana', 'අම්බාන', NULL, '21504', NULL, NULL, NULL, 16),
(1291, 7.696, 80.5842, 'Aralaganwila', 'අරලගන්විල', NULL, '51100', NULL, NULL, NULL, 16),
(1292, 7.5333, 80.6067, 'Ataragallewa', 'අටරගල්ලෑව', NULL, '21512', NULL, NULL, NULL, 16),
(1293, 7.784315, 80.540511, 'Bambaragaswewa', 'බඹරගස්වැව', NULL, '21212', NULL, NULL, NULL, 16),
(1294, 7.5667, 80.625, 'Barawardhana Oya', 'බරවර්ධන ඔය', NULL, '20967', NULL, NULL, NULL, 16),
(1295, 7.725882, 80.552789, 'Beligamuwa', 'බෙලිගමුව', NULL, '21214', NULL, NULL, NULL, 16),
(1296, 7.8417, 80.5797, 'Damana', 'දමන', NULL, '32014', NULL, NULL, NULL, 16),
(1297, 7.868039, 80.646464, 'Dambulla', 'දඹුල්ල', NULL, '21100', NULL, NULL, NULL, 16),
(1298, 7.696, 80.5842, 'Damminna', 'දම්මින්න', NULL, '51106', NULL, NULL, NULL, 16),
(1299, 7.519616, 80.694168, 'Dankanda', 'දංකන්ද', NULL, '21032', NULL, NULL, NULL, 16),
(1300, 7.55, 80.5583, 'Delwite', 'දෙල්විටේ', NULL, '60044', NULL, NULL, NULL, 16),
(1301, 7.5833, 80.9667, 'Devagiriya', 'දේවගිරිය', NULL, '21552', NULL, NULL, NULL, 16),
(1302, 7.7589, 80.5683, 'Dewahuwa', 'දේවහුව', NULL, '21206', NULL, NULL, NULL, 16),
(1303, 7.696, 80.5842, 'Divuldamana', 'දිවුල්දමන', NULL, '51104', NULL, NULL, NULL, 16),
(1304, 7.511012, 80.59862, 'Dullewa', 'දුල්වල', NULL, '21054', NULL, NULL, NULL, 16),
(1305, 7.4917, 80.625, 'Dunkolawatta', 'දුන්කොලවත්ත', NULL, '21046', NULL, NULL, NULL, 16),
(1306, 7.410706, 80.693258, 'Elkaduwa', 'ඇල්කඩුව', NULL, '21012', NULL, NULL, NULL, 16),
(1307, 7.8633, 80.6842, 'Erawula Junction', 'එරවුල හන්දිය', NULL, '21108', NULL, NULL, NULL, 16),
(1308, 7.5217, 80.6847, 'Etanawala', 'එතනවල', NULL, '21402', NULL, NULL, NULL, 16),
(1309, 7.759807, 80.56744, 'Galewela', 'ගලේවෙල', NULL, '21200', NULL, NULL, NULL, 16),
(1310, 7.696, 80.5842, 'Galoya Junction', 'ගල්ඔය හන්දිය', NULL, '51375', NULL, NULL, NULL, 16),
(1311, 7.581654, 80.698521, 'Gammaduwa', 'ගම්මඩුව', NULL, '21068', NULL, NULL, NULL, 16),
(1312, 7.5217, 80.6847, 'Gangala Puwakpitiya', 'ගන්ගල පුවක්පිටිය', NULL, '21404', NULL, NULL, NULL, 16),
(1313, 7.5667, 80.625, 'Hasalaka', NULL, NULL, '20960', NULL, NULL, NULL, 16),
(1314, 7.5333, 80.6067, 'Hattota Amuna', NULL, NULL, '21514', NULL, NULL, NULL, 16),
(1315, 7.575027, 80.663159, 'Imbulgolla', NULL, NULL, '21064', NULL, NULL, NULL, 16),
(1316, 7.951344, 80.690187, 'Inamaluwa', NULL, NULL, '21124', NULL, NULL, NULL, 16),
(1317, 7.55, 80.6333, 'Iriyagolla', NULL, NULL, '60045', NULL, NULL, NULL, 16),
(1318, 7.507177, 80.659444, 'Kaikawala', NULL, NULL, '21066', NULL, NULL, NULL, 16),
(1319, 7.8, 80.7167, 'Kalundawa', NULL, NULL, '21112', NULL, NULL, NULL, 16),
(1320, 7.887403, 80.703507, 'Kandalama', NULL, NULL, '21106', NULL, NULL, NULL, 16),
(1321, 7.5914, 80.6258, 'Kavudupelella', NULL, NULL, '21072', NULL, NULL, NULL, 16),
(1322, 7.9397, 80.7278, 'Kibissa', NULL, NULL, '21122', NULL, NULL, NULL, 16),
(1323, 7.4917, 80.625, 'Kiwula', NULL, NULL, '21042', NULL, NULL, NULL, 16),
(1324, 7.679932, 80.706607, 'Kongahawela', NULL, NULL, '21500', NULL, NULL, NULL, 16),
(1325, 7.5333, 80.6067, 'Laggala Pallegama', NULL, NULL, '21520', NULL, NULL, NULL, 16),
(1326, 7.4346, 80.6519, 'Leliambe', NULL, NULL, '21008', NULL, NULL, NULL, 16),
(1327, 7.753507, 80.660161, 'Lenadora', NULL, NULL, '21094', NULL, NULL, NULL, 16),
(1328, 7.8667, 80.6417, 'lhala Halmillewa', NULL, NULL, '50262', NULL, NULL, NULL, 16),
(1329, 7.5217, 80.6847, 'lllukkumbura', NULL, NULL, '21406', NULL, NULL, NULL, 16),
(1330, 7.6833, 80.5833, 'Madipola', NULL, NULL, '21156', NULL, NULL, NULL, 16),
(1331, 7.696, 80.5842, 'Maduruoya', NULL, NULL, '51108', NULL, NULL, NULL, 16),
(1332, 7.581804, 80.607485, 'Mahawela', NULL, NULL, '21140', NULL, NULL, NULL, 16),
(1333, 7.685106, 80.601107, 'Mananwatta', NULL, NULL, '21144', NULL, NULL, NULL, 16),
(1334, 7.586801, 80.962009, 'Maraka', NULL, NULL, '21554', NULL, NULL, NULL, 16),
(1335, 7.4717, 80.6244, 'Matale', NULL, NULL, '21000', NULL, NULL, NULL, 16),
(1336, 7.5458, 80.5833, 'Melipitiya', NULL, NULL, '21055', NULL, NULL, NULL, 16),
(1337, 7.536495, 80.654081, 'Metihakka', NULL, NULL, '21062', NULL, NULL, NULL, 16),
(1338, 7.6503, 80.5772, 'Millawana', NULL, NULL, '21154', NULL, NULL, NULL, 16),
(1339, 7.461452, 80.660098, 'Muwandeniya', NULL, NULL, '21044', NULL, NULL, NULL, 16),
(1340, 7.662487, 80.635004, 'Nalanda', NULL, NULL, '21082', NULL, NULL, NULL, 16),
(1341, 7.708132, 80.652321, 'Naula', NULL, NULL, '21090', NULL, NULL, NULL, 16),
(1342, 7.619927, 80.698338, 'Opalgala', NULL, NULL, '21076', NULL, NULL, NULL, 16),
(1343, 7.620686, 80.600466, 'Pallepola', NULL, NULL, '21152', NULL, NULL, NULL, 16),
(1344, 7.696, 80.5842, 'Pimburattewa', NULL, NULL, '51102', NULL, NULL, NULL, 16),
(1345, 7.67, 80.565, 'Pulastigama', NULL, NULL, '51050', NULL, NULL, NULL, 16),
(1346, 7.5333, 80.6067, 'Ranamuregama', NULL, NULL, '21524', NULL, NULL, NULL, 16),
(1347, 7.5217, 80.6847, 'Rattota', NULL, NULL, '21400', NULL, NULL, NULL, 16),
(1348, 7.594457, 80.58381, 'Selagama', NULL, NULL, '21058', NULL, NULL, NULL, 16),
(1349, 7.954968, 80.755205, 'Sigiriya', NULL, NULL, '21120', NULL, NULL, NULL, 16),
(1350, 7.696, 80.5842, 'Sinhagama', NULL, NULL, '51378', NULL, NULL, NULL, 16),
(1351, 7.67, 80.565, 'Sungavila', NULL, NULL, '51052', NULL, NULL, NULL, 16),
(1352, 7.5722, 80.6222, 'Talagoda Junction', NULL, NULL, '21506', NULL, NULL, NULL, 16),
(1353, 7.8206, 80.6172, 'Talakiriyagama', NULL, NULL, '21116', NULL, NULL, NULL, 16),
(1354, 7.67, 80.565, 'Tamankaduwa', NULL, NULL, '51089', NULL, NULL, NULL, 16),
(1355, 7.535254, 80.570342, 'Udasgiriya', NULL, NULL, '21051', NULL, NULL, NULL, 16),
(1356, 7.4167, 80.65, 'Udatenna', NULL, NULL, '21006', NULL, NULL, NULL, 16),
(1357, 7.423917, 80.62996, 'Ukuwela', NULL, NULL, '21300', NULL, NULL, NULL, 16),
(1358, 7.7142, 80.5972, 'Wahacotte', NULL, NULL, '21160', NULL, NULL, NULL, 16),
(1359, 7.520365, 80.597403, 'Walawela', NULL, NULL, '21048', NULL, NULL, NULL, 16),
(1360, 7.409019, 80.669112, 'Wehigala', NULL, NULL, '21009', NULL, NULL, NULL, 16),
(1361, 7.5217, 80.6847, 'Welangahawatte', NULL, NULL, '21408', NULL, NULL, NULL, 16),
(1362, 7.8103, 80.6669, 'Wewalawewa', NULL, NULL, '21114', NULL, NULL, NULL, 16),
(1363, 7.562698, 80.578361, 'Yatawatta', NULL, NULL, '21056', NULL, NULL, NULL, 16),
(1364, 6.0964, 80.4808, 'Akuressa', 'අකුරැස්ස', NULL, '81400', NULL, NULL, NULL, 17),
(1365, 6.2833, 80.45, 'Alapaladeniya', 'අලපලදෙණිය', NULL, '81475', NULL, NULL, NULL, 17),
(1366, 6.008083, 80.621556, 'Aparekka', 'අපරැක්ක', NULL, '81032', NULL, NULL, NULL, 17),
(1367, 6.069724, 80.497879, 'Athuraliya', 'අතුරලීය', NULL, '81402', NULL, NULL, NULL, 17),
(1368, 6.253417, 80.59808, 'Bengamuwa', 'බෙන්ගමුව', NULL, '81614', NULL, NULL, NULL, 17),
(1369, 6.1561, 80.4903, 'Bopagoda', 'බෝපගොඩ', NULL, '81412', NULL, NULL, NULL, 17),
(1370, 6.259631, 80.633081, 'Dampahala', 'දම්පහල', NULL, '81612', NULL, NULL, NULL, 17),
(1371, 6.2333, 80.45, 'Deegala Lenama', 'දීගල ලෙනම', NULL, '81452', NULL, NULL, NULL, 17),
(1372, 6.152388, 80.604696, 'Deiyandara', 'දෙයියන්දර', NULL, '81320', NULL, NULL, NULL, 17),
(1373, 6.11481, 80.642749, 'Denagama', 'දෙනගම', NULL, '81314', NULL, NULL, NULL, 17),
(1374, 5.9667, 80.45, 'Denipitiya', 'දෙණිපිටිය', NULL, '81730', NULL, NULL, NULL, 17),
(1375, 6.339732, 80.548055, 'Deniyaya', 'දෙණියාය', NULL, '81500', NULL, NULL, NULL, 17),
(1376, 6.229572, 80.445492, 'Derangala', 'දෙරණගල', NULL, '81454', NULL, NULL, NULL, 17),
(1377, 5.9319, 80.6069, 'Devinuwara (Dondra)', 'දෙවිනුවර (දෙවුන්දර)', NULL, '81160', NULL, NULL, NULL, 17),
(1378, 5.9667, 80.6833, 'Dikwella', 'දික්වැල්ල', NULL, '81200', NULL, NULL, NULL, 17),
(1379, 5.9833, 80.5667, 'Diyagaha', 'දියගහ', NULL, '81038', NULL, NULL, NULL, 17),
(1380, 6.121802, 80.447911, 'Diyalape', 'දියලපේ', NULL, '81422', NULL, NULL, NULL, 17),
(1381, 5.933629, 80.61575, 'Gandara', 'ගන්දර', NULL, '81170', NULL, NULL, NULL, 17),
(1382, 6.121801, 80.480996, 'Godapitiya', 'ගොඩපිටිය', NULL, '81408', NULL, NULL, NULL, 17),
(1383, 6.1833, 80.5667, 'Gomilamawarala', 'ගොමිලමවරල', NULL, '81072', NULL, NULL, NULL, 17),
(1384, 6.129973, 80.489743, 'Hawpe', NULL, NULL, '80132', NULL, NULL, NULL, 17),
(1385, 6.1167, 80.5833, 'Horapawita', NULL, NULL, '81108', NULL, NULL, NULL, 17),
(1386, 6.3167, 80.4, 'Kalubowitiyana', NULL, NULL, '81478', NULL, NULL, NULL, 17),
(1387, 5.940612, 80.496449, 'Kamburugamuwa', NULL, NULL, '81750', NULL, NULL, NULL, 17),
(1388, 6.069847, 80.56473, 'Kamburupitiya', NULL, NULL, '81100', NULL, NULL, NULL, 17),
(1389, 6.0715, 80.5193, 'Karagoda Uyangoda', NULL, NULL, '81082', NULL, NULL, NULL, 17),
(1390, 6.07377, 80.603484, 'Karaputugala', NULL, NULL, '81106', NULL, NULL, NULL, 17),
(1391, 6.0667, 80.6667, 'Karatota', NULL, NULL, '81318', NULL, NULL, NULL, 17),
(1392, 6.0715, 80.5193, 'Kekanadurra', NULL, NULL, '81020', NULL, NULL, NULL, 17),
(1393, 6.372272, 80.533507, 'Kiriweldola', NULL, NULL, '81514', NULL, NULL, NULL, 17),
(1394, 6.249957, 80.451047, 'Kiriwelkele', NULL, NULL, '81456', NULL, NULL, NULL, 17),
(1395, 6.321671, 80.500227, 'Kolawenigama', NULL, NULL, '81522', NULL, NULL, NULL, 17),
(1396, 6.292393, 80.533957, 'Kotapola', NULL, NULL, '81480', NULL, NULL, NULL, 17),
(1397, 6.35, 80.4667, 'Lankagama', NULL, NULL, '81526', NULL, NULL, NULL, 17),
(1398, 6.137036, 80.571982, 'Makandura', NULL, NULL, '81070', NULL, NULL, NULL, 17),
(1399, 6.1333, 80.4167, 'Maliduwa', NULL, NULL, '81424', NULL, NULL, NULL, 17),
(1400, 6.1614, 80.5035, 'Maramba', NULL, NULL, '81416', NULL, NULL, NULL, 17),
(1401, 5.9486, 80.5428, 'Matara', NULL, NULL, '81000', NULL, NULL, NULL, 17),
(1402, 6.35, 80.4667, 'Mediripitiya', NULL, NULL, '81524', NULL, NULL, NULL, 17),
(1403, 6.1167, 80.6833, 'Miella', NULL, NULL, '81312', NULL, NULL, NULL, 17),
(1404, 5.94679, 80.452288, 'Mirissa', NULL, NULL, '81740', NULL, NULL, NULL, 17),
(1405, 6.25, 80.4833, 'Morawaka', NULL, NULL, '81470', NULL, NULL, NULL, 17),
(1406, 6.1833, 80.5667, 'Mulatiyana Junction', NULL, NULL, '81071', NULL, NULL, NULL, 17),
(1407, 5.975464, 80.548935, 'Nadugala', NULL, NULL, '81092', NULL, NULL, NULL, 17),
(1408, 6.0715, 80.5193, 'Naimana', NULL, NULL, '81017', NULL, NULL, NULL, 17),
(1409, 5.984516, 80.518656, 'Palatuwa', NULL, NULL, '81050', NULL, NULL, NULL, 17),
(1410, 6.150219, 80.61675, 'Parapamulla', NULL, NULL, '81322', NULL, NULL, NULL, 17),
(1411, 6.242998, 80.616175, 'Pasgoda', NULL, NULL, '81615', NULL, NULL, NULL, 17),
(1412, 6.034813, 80.450626, 'Penetiyana', NULL, NULL, '81722', NULL, NULL, NULL, 17),
(1413, 6.2167, 80.45, 'Pitabeddara', NULL, NULL, '81450', NULL, NULL, NULL, 17),
(1414, 6.045752, 80.619203, 'Puhulwella', NULL, NULL, '81290', NULL, NULL, NULL, 17),
(1415, 6.124672, 80.60726, 'Radawela', NULL, NULL, '81316', NULL, NULL, NULL, 17),
(1416, 6.0715, 80.5193, 'Ransegoda', NULL, NULL, '81064', NULL, NULL, NULL, 17),
(1417, 6.229142, 80.571151, 'Rotumba', NULL, NULL, '81074', NULL, NULL, NULL, 17),
(1418, 5.9667, 80.5, 'Sultanagoda', NULL, NULL, '81051', NULL, NULL, NULL, 17),
(1419, 6.0715, 80.5193, 'Telijjawila', NULL, NULL, '81060', NULL, NULL, NULL, 17),
(1420, 6.011602, 80.561851, 'Thihagoda', NULL, NULL, '81280', NULL, NULL, NULL, 17),
(1421, 6.302863, 80.631175, 'Urubokka', NULL, NULL, '81600', NULL, NULL, NULL, 17),
(1422, 6.0116, 80.6437, 'Urugamuwa', NULL, NULL, '81230', NULL, NULL, NULL, 17),
(1423, 6.150181, 80.519582, 'Urumutta', NULL, NULL, '81414', NULL, NULL, NULL, 17),
(1424, 6.379073, 80.598006, 'Viharahena', NULL, NULL, '81508', NULL, NULL, NULL, 17),
(1425, 6.01655, 80.649889, 'Walakanda', NULL, NULL, '81294', NULL, NULL, NULL, 17),
(1426, 5.981913, 80.693678, 'Walasgala', NULL, NULL, '81220', NULL, NULL, NULL, 17),
(1427, 6.277439, 80.522519, 'Waralla', NULL, NULL, '81479', NULL, NULL, NULL, 17),
(1428, 5.9667, 80.4167, 'Weligama', NULL, NULL, '81700', NULL, NULL, NULL, 17),
(1429, 6.1, 80.5167, 'Wilpita', NULL, NULL, '81404', NULL, NULL, NULL, 17),
(1430, 6.028888, 80.603158, 'Yatiyana', NULL, NULL, '81034', NULL, NULL, NULL, 17),
(1431, 7.1, 81.2333, 'Ayiwela', NULL, NULL, '91516', NULL, NULL, NULL, 18),
(1432, 6.893287, 81.234346, 'Badalkumbura', 'බඩල්කුඹුර', NULL, '91070', NULL, NULL, NULL, 18),
(1433, 7.11307, 81.435299, 'Baduluwela', 'බදුලුවෙල', NULL, '91058', NULL, NULL, NULL, 18),
(1434, 6.9333, 81.2833, 'Bakinigahawela', 'බකිණිගහවෙල', NULL, '91554', NULL, NULL, NULL, 18),
(1435, 6.520177, 81.058519, 'Balaharuwa', 'බලහරුව', NULL, '91295', NULL, NULL, NULL, 18),
(1436, 7.1667, 81.2167, 'Bibile', 'බිබිලේ', NULL, '91500', NULL, NULL, NULL, 18),
(1437, 7.046413, 81.486844, 'Buddama', 'බුද්ධගම', NULL, '91038', NULL, NULL, NULL, 18),
(1438, 6.75, 81.2333, 'Buttala', 'බුත්තල', NULL, '91100', NULL, NULL, NULL, 18),
(1439, 6.955743, 81.375946, 'Dambagalla', 'දඹගල්ල', NULL, '91050', NULL, NULL, NULL, 18),
(1440, 7.1056, 81.2222, 'Diyakobala', 'දියකොබල', NULL, '91514', NULL, NULL, NULL, 18),
(1441, 6.898197, 81.441375, 'Dombagahawela', 'දොඹගහවෙල', NULL, '91010', NULL, NULL, NULL, 18),
(1442, 6.9216, 81.3833, 'Ethimalewewa', 'ඇතිමලේවැව', NULL, '91020', NULL, NULL, NULL, 18),
(1443, 6.73, 81.12, 'Ettiliwewa', 'ඇත්තිලිවැව', NULL, '91250', NULL, NULL, NULL, 18),
(1444, 6.9167, 81.3833, 'Galabedda', 'ගලබැද්ද', NULL, '91008', NULL, NULL, NULL, 18),
(1445, 6.9167, 81.2, 'Gamewela', 'ගමේවැල', NULL, '90512', NULL, NULL, NULL, 18),
(1446, 6.503718, 80.874695, 'Hambegamuwa', 'හම්බෙගමුව', NULL, '91308', NULL, NULL, NULL, 18),
(1447, 6.817257, 81.153429, 'Hingurukaduwa', NULL, NULL, '90508', NULL, NULL, NULL, 18),
(1448, 6.868479, 81.333215, 'Hulandawa', NULL, NULL, '91004', NULL, NULL, NULL, 18),
(1449, 7.198617, 81.494496, 'Inginiyagala', NULL, NULL, '91040', NULL, NULL, NULL, 18),
(1450, 6.9667, 81.5167, 'Kandaudapanguwa', NULL, NULL, '91032', NULL, NULL, NULL, 18),
(1451, 6.9333, 81.2833, 'Kandawinna', NULL, NULL, '91552', NULL, NULL, NULL, 18),
(1452, 6.4167, 81.3333, 'Kataragama', NULL, NULL, '91400', NULL, NULL, NULL, 18),
(1453, 7.116448, 81.17788, 'Kotagama', NULL, NULL, '91512', NULL, NULL, NULL, 18),
(1454, 6.892542, 81.177651, 'Kotamuduna', NULL, NULL, '90506', NULL, NULL, NULL, 18),
(1455, 6.4636, 81.053, 'Kotawehera Mankada', NULL, NULL, '91312', NULL, NULL, NULL, 18),
(1456, 6.4167, 81.0333, 'Kudawewa', NULL, NULL, '61226', NULL, NULL, NULL, 18),
(1457, 6.814795, 81.274913, 'Kumbukkana', NULL, NULL, '91098', NULL, NULL, NULL, 18),
(1458, 6.805944, 81.381458, 'Marawa', NULL, NULL, '91006', NULL, NULL, NULL, 18),
(1459, 6.975969, 81.481047, 'Mariarawa', NULL, NULL, '91052', NULL, NULL, NULL, 18),
(1460, 6.9333, 81.2833, 'Medagana', NULL, NULL, '91550', NULL, NULL, NULL, 18),
(1461, 6.9167, 81.2, 'Medawelagama', NULL, NULL, '90518', NULL, NULL, NULL, 18),
(1462, 6.869169, 81.152967, 'Miyanakandura', NULL, NULL, '90584', NULL, NULL, NULL, 18),
(1463, 6.8667, 81.35, 'Monaragala', NULL, NULL, '91000', NULL, NULL, NULL, 18),
(1464, 6.75, 81.2333, 'Moretuwegama', NULL, NULL, '91108', NULL, NULL, NULL, 18),
(1465, 6.887816, 81.306082, 'Nakkala', NULL, NULL, '91003', NULL, NULL, NULL, 18),
(1466, 6.8667, 81.1167, 'Namunukula', NULL, NULL, '90580', NULL, NULL, NULL, 18),
(1467, 7.0833, 81.25, 'Nannapurawa', NULL, NULL, '91519', NULL, NULL, NULL, 18),
(1468, 7.389929, 81.408141, 'Nelliyadda', NULL, NULL, '91042', NULL, NULL, NULL, 18),
(1469, 7.215945, 81.312806, 'Nilgala', NULL, NULL, '91508', NULL, NULL, NULL, 18),
(1470, 6.8786, 81.3476, 'Obbegoda', NULL, NULL, '91007', NULL, NULL, NULL, 18),
(1471, 6.753201, 81.29752, 'Okkampitiya', NULL, NULL, '91060', NULL, NULL, NULL, 18),
(1472, 6.9833, 81.3167, 'Pangura', NULL, NULL, '91002', NULL, NULL, NULL, 18),
(1473, 7.191575, 81.27524, 'Pitakumbura', NULL, NULL, '91505', NULL, NULL, NULL, 18),
(1474, 6.803474, 81.1119, 'Randeniya', NULL, NULL, '91204', NULL, NULL, NULL, 18),
(1475, 7.017476, 81.386203, 'Ruwalwela', NULL, NULL, '91056', NULL, NULL, NULL, 18),
(1476, 6.4167, 81.3333, 'Sella Kataragama', NULL, NULL, '91405', NULL, NULL, NULL, 18),
(1477, 6.8, 81.1333, 'Siyambalagune', NULL, NULL, '91202', NULL, NULL, NULL, 18),
(1478, 6.910581, 81.552112, 'Siyambalanduwa', NULL, NULL, '91030', NULL, NULL, NULL, 18),
(1479, 6.4636, 81.053, 'Suriara', NULL, NULL, '91306', NULL, NULL, NULL, 18),
(1480, 6.4333, 81.1333, 'Tanamalwila', NULL, NULL, '91300', NULL, NULL, NULL, 18),
(1481, 7.0056, 81.4222, 'Uva Gangodagama', NULL, NULL, '91054', NULL, NULL, NULL, 18),
(1482, 6.75, 81.2, 'Uva Kudaoya', NULL, NULL, '91298', NULL, NULL, NULL, 18),
(1483, 6.75, 81.2333, 'Uva Pelwatta', NULL, NULL, '91112', NULL, NULL, NULL, 18),
(1484, 6.75, 81.2333, 'Warunagama', NULL, NULL, '91198', NULL, NULL, NULL, 18),
(1485, 6.8333, 81.3833, 'Wedikumbura', NULL, NULL, '91005', NULL, NULL, NULL, 18),
(1486, 6.7778, 81.1167, 'Weherayaya Handapanagala', NULL, NULL, '91206', NULL, NULL, NULL, 18),
(1487, 6.719458, 81.106295, 'Wellawaya', NULL, NULL, '91200', NULL, NULL, NULL, 18),
(1488, 6.9216, 81.3833, 'Wilaoya', NULL, NULL, '91022', NULL, NULL, NULL, 18),
(1489, 6.776882, 81.229725, 'Yudaganawa', NULL, NULL, '51424', NULL, NULL, NULL, 18),
(1490, 9.266667, 80.816667, 'Mullativu', NULL, NULL, '42000', NULL, NULL, NULL, 19),
(1491, 6.824224, 80.709671, 'Agarapathana', 'ආගරපතන', NULL, '22094', NULL, NULL, NULL, 20),
(1492, 7.05, 80.6667, 'Ambatalawa', 'අඹතලාව', NULL, '20686', NULL, NULL, NULL, 20),
(1493, 6.899935, 80.783603, 'Ambewela', 'අඹේවෙල', NULL, '22216', NULL, NULL, NULL, 20),
(1494, 6.8, 80.6833, 'Bogawantalawa', 'බොගවන්තලාව', NULL, '22060', NULL, NULL, NULL, 20),
(1495, 6.9011, 80.6694, 'Bopattalawa', 'බෝපත්තලාව', NULL, '22095', NULL, NULL, NULL, 20),
(1496, 6.977604, 80.466144, 'Dagampitiya', 'දාගම්පිටිය', NULL, '20684', NULL, NULL, NULL, 20),
(1497, 6.9011, 80.6694, 'Dayagama Bazaar', 'දයගම බසාර්', NULL, '22096', NULL, NULL, NULL, 20),
(1498, 6.8786, 80.6272, 'Dikoya', 'දික්ඔය', NULL, '22050', NULL, NULL, NULL, 20),
(1499, 7.0731, 80.5892, 'Doragala', 'දොරගල', NULL, '20567', NULL, NULL, NULL, 20),
(1500, 6.982643, 80.632911, 'Dunukedeniya', 'දුනුකෙදෙණිය', NULL, '22002', NULL, NULL, NULL, 20),
(1501, 7.024081, 80.662636, 'Egodawela', 'එගොඩවෙල', NULL, '90013', NULL, NULL, NULL, 20),
(1502, 7.148834, 80.757167, 'Ekiriya', 'ඇකිරිය', NULL, '20732', NULL, NULL, NULL, 20),
(1503, 7.0833, 80.8, 'Elamulla', 'ඇලමුල්ල', NULL, '20742', NULL, NULL, NULL, 20),
(1504, 6.9864, 80.4894, 'Ginigathena', 'ගිනිගතැන', NULL, '20680', NULL, NULL, NULL, 20),
(1505, 6.9917, 80.8194, 'Gonakele', 'ගොනාකැලේ', NULL, '22226', NULL, NULL, NULL, 20),
(1506, 6.9697, 80.77, 'Haggala', 'හග්ගල', NULL, '22208', NULL, NULL, NULL, 20),
(1507, 7.0417, 80.8917, 'Halgranoya', 'හාල්ගරනඔය', NULL, '22240', NULL, NULL, NULL, 20),
(1508, 6.932637, 80.464959, 'Hangarapitiya', 'අන්ගරපිටිය', NULL, '22044', NULL, NULL, NULL, 20),
(1509, 7.0667, 80.5667, 'Hapugastalawa', NULL, NULL, '20668', NULL, NULL, NULL, 20),
(1510, 7.04738, 80.876477, 'Harasbedda', NULL, NULL, '22262', NULL, NULL, NULL, 20),
(1511, 6.899356, 80.599855, 'Hatton', NULL, NULL, '22000', NULL, NULL, NULL, 20),
(1512, 7.1108, 80.7547, 'Hewaheta', NULL, NULL, '20440', NULL, NULL, NULL, 20),
(1513, 6.947521, 80.457154, 'Hitigegama', NULL, NULL, '22046', NULL, NULL, NULL, 20),
(1514, 7.0333, 80.8917, 'Jangulla', NULL, NULL, '90063', NULL, NULL, NULL, 20),
(1515, 7.104232, 80.902715, 'Kalaganwatta', NULL, NULL, '22282', NULL, NULL, NULL, 20),
(1516, 6.981495, 80.802798, 'Kandapola', NULL, NULL, '22220', NULL, NULL, NULL, 20),
(1517, 7.057024, 80.899844, 'Karandagolla', NULL, NULL, '20738', NULL, NULL, NULL, 20),
(1518, 7.1108, 80.8581, 'Keerthi Bandarapura', NULL, NULL, '22274', NULL, NULL, NULL, 20),
(1519, 7.1108, 80.7547, 'Kiribathkumbura', NULL, NULL, '20442', NULL, NULL, NULL, 20),
(1520, 6.784171, 80.68557, 'Kotiyagala', NULL, NULL, '91024', NULL, NULL, NULL, 20),
(1521, 7.0214, 80.5942, 'Kotmale', NULL, NULL, '20560', NULL, NULL, NULL, 20),
(1522, 6.893287, 80.50215, 'Kottellena', NULL, NULL, '22040', NULL, NULL, NULL, 20),
(1523, 7.109883, 80.853852, 'Kumbalgamuwa', NULL, NULL, '22272', NULL, NULL, NULL, 20),
(1524, 7.055729, 80.887479, 'Kumbukwela', NULL, NULL, '22246', NULL, NULL, NULL, 20),
(1525, 7.01894, 80.920981, 'Kurupanawela', NULL, NULL, '22252', NULL, NULL, NULL, 20),
(1526, 7.0442, 80.6919, 'Labukele', NULL, NULL, '20592', NULL, NULL, NULL, 20),
(1527, 6.8952, 80.5088, 'Laxapana', NULL, NULL, '22034', NULL, NULL, NULL, 20),
(1528, 6.920326, 80.684129, 'Lindula', NULL, NULL, '22090', NULL, NULL, NULL, 20),
(1529, 7.047667, 80.918204, 'Madulla', NULL, NULL, '22256', NULL, NULL, NULL, 20),
(1530, 7.0833, 80.8, 'Mandaram Nuwara', NULL, NULL, '20744', NULL, NULL, NULL, 20),
(1531, 6.831379, 80.568585, 'Maskeliya', NULL, NULL, '22070', NULL, NULL, NULL, 20),
(1532, 7.072503, 80.6439, 'Maswela', NULL, NULL, '20566', NULL, NULL, NULL, 20),
(1533, 7.0833, 80.8, 'Maturata', NULL, NULL, '20748', NULL, NULL, NULL, 20),
(1534, 7.0333, 80.9167, 'Mipanawa', NULL, NULL, '22254', NULL, NULL, NULL, 20),
(1535, 6.8667, 80.8167, 'Mipilimana', NULL, NULL, '22214', NULL, NULL, NULL, 20),
(1536, 6.942625, 80.478482, 'Morahenagama', NULL, NULL, '22036', NULL, NULL, NULL, 20),
(1537, 7.11534, 80.809403, 'Munwatta', NULL, NULL, '20752', NULL, NULL, NULL, 20),
(1538, 7.0731, 80.5892, 'Nayapana Janapadaya', NULL, NULL, '20568', NULL, NULL, NULL, 20),
(1539, 7.0833, 80.8833, 'Nildandahinna', NULL, NULL, '22280', NULL, NULL, NULL, 20),
(1540, 6.8358, 80.5703, 'Nissanka Uyana', NULL, NULL, '22075', NULL, NULL, NULL, 20),
(1541, 6.835736, 80.602181, 'Norwood', NULL, NULL, '22058', NULL, NULL, NULL, 20),
(1542, 6.9697, 80.77, 'Nuwara Eliya', NULL, NULL, '22200', NULL, NULL, NULL, 20),
(1543, 7.092506, 80.798544, 'Padiyapelella', NULL, NULL, '20750', NULL, NULL, NULL, 20),
(1544, 7.1151, 80.8108, 'Pallebowala', NULL, NULL, '20734', NULL, NULL, NULL, 20),
(1545, 7.0667, 80.6833, 'Panvila', NULL, NULL, '20830', NULL, NULL, NULL, 20),
(1546, 6.998608, 80.452257, 'Pitawala', NULL, NULL, '20682', NULL, NULL, NULL, 20),
(1547, 7.018255, 80.676081, 'Pundaluoya', NULL, NULL, '22120', NULL, NULL, NULL, 20),
(1548, 7.060427, 80.69534, 'Ramboda', NULL, NULL, '20590', NULL, NULL, NULL, 20),
(1549, 7.145849, 80.78095, 'Rikillagaskada', NULL, NULL, '20730', NULL, NULL, NULL, 20),
(1550, 6.9306, 80.5531, 'Rozella', NULL, NULL, '22008', NULL, NULL, NULL, 20),
(1551, 7.0333, 80.9, 'Rupaha', NULL, NULL, '22245', NULL, NULL, NULL, 20),
(1552, 6.93721, 80.772258, 'Ruwaneliya', NULL, NULL, '22212', NULL, NULL, NULL, 20),
(1553, 6.9697, 80.77, 'Santhipura', NULL, NULL, '22202', NULL, NULL, NULL, 20),
(1554, 6.9367, 80.6611, 'Talawakele', NULL, NULL, '22100', NULL, NULL, NULL, 20),
(1555, 7.0667, 80.6833, 'Tawalantenna', NULL, NULL, '20838', NULL, NULL, NULL, 20),
(1556, 7.1189, 80.9244, 'Teripeha', NULL, NULL, '22287', NULL, NULL, NULL, 20),
(1557, 7.094106, 80.914817, 'Udamadura', NULL, NULL, '22285', NULL, NULL, NULL, 20),
(1558, 7.0333, 80.9111, 'Udapussallawa', NULL, NULL, '22250', NULL, NULL, NULL, 20),
(1559, 7.0333, 80.8917, 'Uva Deegalla', NULL, NULL, '90062', NULL, NULL, NULL, 20),
(1560, 7.0333, 80.8917, 'Uva Uduwara', NULL, NULL, '90061', NULL, NULL, NULL, 20),
(1561, 6.8832, 80.7912, 'Uvaparanagama', NULL, NULL, '90230', NULL, NULL, NULL, 20),
(1562, 7.091924, 80.860522, 'Walapane', NULL, NULL, '22270', NULL, NULL, NULL, 20),
(1563, 6.951339, 80.533199, 'Watawala', NULL, NULL, '22010', NULL, NULL, NULL, 20),
(1564, 6.8952, 80.5088, 'Widulipura', NULL, NULL, '22032', NULL, NULL, NULL, 20),
(1565, 7.0167, 80.6167, 'Wijebahukanda', NULL, NULL, '22018', NULL, NULL, NULL, 20),
(1566, 7.903734, 80.828104, 'Attanakadawala', 'අත්තනගඩවල', NULL, '51235', NULL, NULL, NULL, 21),
(1567, 7.7833, 80.8167, 'Bakamuna', 'බකමූණ', NULL, '51250', NULL, NULL, NULL, 21),
(1568, 7.89851, 80.898332, 'Diyabeduma', 'දියබෙදුම', NULL, '51225', NULL, NULL, NULL, 21),
(1569, 7.7244, 80.7883, 'Elahera', 'ඇලහැර', NULL, '51258', NULL, NULL, NULL, 21),
(1570, 7.9833, 80.9333, 'Giritale', 'ගිරිතලේ', NULL, '51026', NULL, NULL, NULL, 21),
(1571, 8.055896, 81.011875, 'Hingurakdamana', NULL, NULL, '51408', NULL, NULL, NULL, 21),
(1572, 8.036505, 80.948686, 'Hingurakgoda', NULL, NULL, '51400', NULL, NULL, NULL, 21),
(1573, 8, 81, 'Jayanthipura', NULL, NULL, '51024', NULL, NULL, NULL, 21),
(1574, 7.9583, 81.0417, 'Kalingaela', NULL, NULL, '51002', NULL, NULL, NULL, 21),
(1575, 7.9583, 81.0417, 'Lakshauyana', NULL, NULL, '51006', NULL, NULL, NULL, 21),
(1576, 7.9833, 81.25, 'Mankemi', NULL, NULL, '30442', NULL, NULL, NULL, 21),
(1577, 8.036343, 80.903215, 'Minneriya', NULL, NULL, '51410', NULL, NULL, NULL, 21),
(1578, 7.992203, 81.090758, 'Onegama', NULL, NULL, '51004', NULL, NULL, NULL, 21),
(1579, 7.751972, 80.812093, 'Orubendi Siyambalawa', NULL, NULL, '51256', NULL, NULL, NULL, 21),
(1580, 8.0167, 81.0833, 'Palugasdamana', NULL, NULL, '51046', NULL, NULL, NULL, 21),
(1581, 7.9833, 81.25, 'Panichankemi', NULL, NULL, '30444', NULL, NULL, NULL, 21),
(1582, 7.940295, 81.007138, 'Polonnaruwa', NULL, NULL, '51000', NULL, NULL, NULL, 21),
(1583, 8.0167, 81.0833, 'Talpotha', NULL, NULL, '51044', NULL, NULL, NULL, 21),
(1584, 8.0167, 81.0833, 'Tambala', NULL, NULL, '51049', NULL, NULL, NULL, 21),
(1585, 8.001006, 80.995549, 'Unagalavehera', NULL, NULL, '51008', NULL, NULL, NULL, 21),
(1586, 8.0167, 81.0833, 'Wijayabapura', NULL, NULL, '51042', NULL, NULL, NULL, 21),
(1587, 7.5833, 79.8417, 'Adippala', NULL, NULL, '61012', NULL, NULL, NULL, 22),
(1588, 7.7667, 79.9333, 'Alutgama', 'අළුත්ගම', NULL, '12080', NULL, NULL, NULL, 22),
(1589, 7.8667, 79.95, 'Alutwewa', 'අළුත්වැව', NULL, '51014', NULL, NULL, NULL, 22),
(1590, 7.5333, 79.8, 'Ambakandawila', 'අඹකඳවිල', NULL, '61024', NULL, NULL, NULL, 22),
(1591, 7.881625, 80.00353, 'Anamaduwa', 'ආනමඩුව', NULL, '61500', NULL, NULL, NULL, 22),
(1592, 7.7775, 79.9528, 'Andigama', 'අඬිගම', NULL, '61508', NULL, NULL, NULL, 22),
(1593, 7.7667, 79.85, 'Angunawila', 'අඟුණවිල', NULL, '61264', NULL, NULL, NULL, 22),
(1594, 7.4167, 79.8833, 'Attawilluwa', 'අත්තවිල්ලුව', NULL, '61328', NULL, NULL, NULL, 22),
(1595, 7.619471, 79.809055, 'Bangadeniya', 'බංගදෙණිය', NULL, '61238', NULL, NULL, NULL, 22),
(1596, 7.803253, 79.872624, 'Baranankattuwa', 'බරණන්කට්ටුව', NULL, '61262', NULL, NULL, NULL, 22),
(1597, 7.734655, 79.817455, 'Battuluoya', 'බත්තුලුඔය', NULL, '61246', NULL, NULL, NULL, 22),
(1598, 7.3333, 79.9, 'Bujjampola', 'බුජ්ජම්පොල', NULL, '61136', NULL, NULL, NULL, 22),
(1599, 7.5758, 79.7953, 'Chilaw', 'හලාවත', NULL, '61000', NULL, NULL, NULL, 22),
(1600, 7.3167, 79.85, 'Dalukana', 'දලුකන', NULL, '51092', NULL, NULL, NULL, 22),
(1601, 7.300443, 79.88505, 'Dankotuwa', 'දංකොටුව', NULL, '61130', NULL, NULL, NULL, 22),
(1602, 7.3167, 79.85, 'Dewagala', 'දේවගල', NULL, '51094', NULL, NULL, NULL, 22),
(1603, 7.4833, 79.9, 'Dummalasuriya', 'දුම්මලසූරිය', NULL, '60260', NULL, NULL, NULL, 22),
(1604, 7.4167, 79.9, 'Dunkannawa', 'දුන්කන්නාව', NULL, '61192', NULL, NULL, NULL, 22),
(1605, 8.332832, 79.859928, 'Eluwankulama', 'එළුවන්කුලම', NULL, '61308', NULL, NULL, NULL, 22),
(1606, 8.097416, 79.717306, 'Ettale', 'ඇත්තලේ', NULL, '61343', NULL, NULL, NULL, 22),
(1607, 7.464661, 79.872371, 'Galamuna', 'ගලමුන', NULL, '51416', NULL, NULL, NULL, 22),
(1608, 7.501718, 79.895774, 'Galmuruwa', 'ගල්මුරුව', NULL, '61233', NULL, NULL, NULL, 22),
(1609, 7.3167, 79.85, 'Hansayapalama', NULL, NULL, '51098', NULL, NULL, NULL, 22),
(1610, 7.383069, 79.871755, 'Ihala Kottaramulla', NULL, NULL, '61154', NULL, NULL, NULL, 22),
(1611, 7.567036, 79.826233, 'Ilippadeniya', NULL, NULL, '61018', NULL, NULL, NULL, 22),
(1612, 7.964099, 80.112055, 'Inginimitiya', NULL, NULL, '61514', NULL, NULL, NULL, 22),
(1613, 8.0333, 79.8167, 'Ismailpuram', NULL, NULL, '61302', NULL, NULL, NULL, 22),
(1614, 7.6333, 79.8167, 'Jayasiripura', NULL, NULL, '51246', NULL, NULL, NULL, 22),
(1615, 7.5333, 79.8267, 'Kakkapalliya', NULL, NULL, '61236', NULL, NULL, NULL, 22),
(1616, 8.1167, 79.7167, 'Kalkudah', NULL, NULL, '30410', NULL, NULL, NULL, 22),
(1617, 7.95, 79.9333, 'Kalladiya', NULL, NULL, '61534', NULL, NULL, NULL, 22),
(1618, 7.98, 79.9569, 'Kandakuliya', NULL, NULL, '61358', NULL, NULL, NULL, 22),
(1619, 8.192511, 79.832662, 'Karathivu', NULL, NULL, '61307', NULL, NULL, NULL, 22),
(1620, 7.572417, 79.86173, 'Karawitagara', NULL, NULL, '61022', NULL, NULL, NULL, 22),
(1621, 8.037625, 79.94267, 'Karuwalagaswewa', NULL, NULL, '61314', NULL, NULL, NULL, 22),
(1622, 7.3667, 79.8333, 'Katuneriya', NULL, NULL, '61180', NULL, NULL, NULL, 22),
(1623, 7.3667, 79.9, 'Koswatta', NULL, NULL, '61158', NULL, NULL, NULL, 22),
(1624, 7.85, 79.7833, 'Kottantivu', NULL, NULL, '61252', NULL, NULL, NULL, 22),
(1625, 7.63568, 79.815394, 'Kottapitiya', NULL, NULL, '51244', NULL, NULL, NULL, 22),
(1626, 7.938617, 79.954577, 'Kottukachchiya', NULL, NULL, '61532', NULL, NULL, NULL, 22),
(1627, 7.661964, 79.886873, 'Kumarakattuwa', NULL, NULL, '61032', NULL, NULL, NULL, 22),
(1628, 7.98, 79.9569, 'Kurinjanpitiya', NULL, NULL, '61356', NULL, NULL, NULL, 22),
(1629, 8.0167, 80.05, 'Kuruketiyawa', NULL, NULL, '61516', NULL, NULL, NULL, 22),
(1630, 7.350819, 79.85725, 'Lunuwila', NULL, NULL, '61150', NULL, NULL, NULL, 22),
(1631, 7.5, 79.8333, 'Madampe', NULL, NULL, '61230', NULL, NULL, NULL, 22),
(1632, 7.896391, 79.836449, 'Madurankuliya', NULL, NULL, '61270', NULL, NULL, NULL, 22),
(1633, 7.85, 79.9, 'Mahakumbukkadawala', NULL, NULL, '61272', NULL, NULL, NULL, 22),
(1634, 7.9575, 80.0683, 'Mahauswewa', NULL, NULL, '61512', NULL, NULL, NULL, 22),
(1635, 7.3167, 79.85, 'Mampitiya', NULL, NULL, '51090', NULL, NULL, NULL, 22),
(1636, 7.9964, 79.7411, 'Mampuri', NULL, NULL, '61341', NULL, NULL, NULL, 22),
(1637, 7.775, 79.85, 'Mangalaeliya', NULL, NULL, '61266', NULL, NULL, NULL, 22),
(1638, 7.4094, 79.8322, 'Marawila', NULL, NULL, '61210', NULL, NULL, NULL, 22),
(1639, 7.799533, 79.977428, 'Mudalakkuliya', NULL, NULL, '61506', NULL, NULL, NULL, 22),
(1640, 7.58487, 79.854684, 'Mugunuwatawana', NULL, NULL, '61014', NULL, NULL, NULL, 22),
(1641, 7.928236, 79.75648, 'Mukkutoduwawa', NULL, NULL, '61274', NULL, NULL, NULL, 22),
(1642, 7.7958, 79.8283, 'Mundel', NULL, NULL, '61250', NULL, NULL, NULL, 22),
(1643, 7.45, 79.8833, 'Muttibendiwila', NULL, NULL, '61195', NULL, NULL, NULL, 22),
(1644, 7.3714, 79.8837, 'Nainamadama', NULL, NULL, '61120', NULL, NULL, NULL, 22),
(1645, 7.689152, 79.844243, 'Nalladarankattuwa', NULL, NULL, '61244', NULL, NULL, NULL, 22),
(1646, 7.4086, 79.8683, 'Nattandiya', NULL, NULL, '61190', NULL, NULL, NULL, 22),
(1647, 8, 80.1167, 'Nawagattegama', NULL, NULL, '61520', NULL, NULL, NULL, 22),
(1648, 7.3167, 79.85, 'Nelumwewa', NULL, NULL, '51096', NULL, NULL, NULL, 22),
(1649, 7.9964, 79.7411, 'Norachcholai', NULL, NULL, '61342', NULL, NULL, NULL, 22),
(1650, 7.681225, 79.918239, 'Pallama', NULL, NULL, '61040', NULL, NULL, NULL, 22),
(1651, 7.98, 79.9569, 'Palliwasalturai', NULL, NULL, '61354', NULL, NULL, NULL, 22),
(1652, 7.542426, 79.886377, 'Panirendawa', NULL, NULL, '61234', NULL, NULL, NULL, 22),
(1653, 7.8667, 79.95, 'Parakramasamudraya', NULL, NULL, '51016', NULL, NULL, NULL, 22),
(1654, 7.4833, 79.9, 'Pothuwatawana', NULL, NULL, '61162', NULL, NULL, NULL, 22),
(1655, 8.043613, 79.841209, 'Puttalam', NULL, NULL, '61300', NULL, NULL, NULL, 22),
(1656, 7.4167, 79.8833, 'Puttalam Cement Factory', NULL, NULL, '61326', NULL, NULL, NULL, 22),
(1657, 7.650515, 79.828283, 'Rajakadaluwa', NULL, NULL, '61242', NULL, NULL, NULL, 22),
(1658, 7.4167, 79.8833, 'Saliyawewa Junction', NULL, NULL, '61324', NULL, NULL, NULL, 22),
(1659, 7.7333, 79.9167, 'Serukele', NULL, NULL, '61042', NULL, NULL, NULL, 22),
(1660, 7.8239, 79.978, 'Siyambalagashene', NULL, NULL, '61504', NULL, NULL, NULL, 22),
(1661, 7.4167, 79.8833, 'Tabbowa', NULL, NULL, '61322', NULL, NULL, NULL, 22),
(1662, 7.9964, 79.7411, 'Talawila Church', NULL, NULL, '61344', NULL, NULL, NULL, 22),
(1663, 7.4861, 79.8022, 'Toduwawa', NULL, NULL, '61224', NULL, NULL, NULL, 22),
(1664, 7.5758, 79.7953, 'Udappuwa', NULL, NULL, '61004', NULL, NULL, NULL, 22),
(1665, 7.8239, 79.978, 'Uridyawa', NULL, NULL, '61502', NULL, NULL, NULL, 22),
(1666, 8.17001, 79.8461, 'Vanathawilluwa', NULL, NULL, '61306', NULL, NULL, NULL, 22),
(1667, 7.2833, 79.85, 'Waikkal', NULL, NULL, '61110', NULL, NULL, NULL, 22),
(1668, 7.4667, 79.9, 'Watugahamulla', NULL, NULL, '61198', NULL, NULL, NULL, 22),
(1669, 7.35048, 79.850112, 'Wennappuwa', NULL, NULL, '61170', NULL, NULL, NULL, 22),
(1670, 7.5758, 79.7953, 'Wijeyakatupotha', NULL, NULL, '61006', NULL, NULL, NULL, 22),
(1671, 7.5758, 79.7953, 'Wilpotha', NULL, NULL, '61008', NULL, NULL, NULL, 22),
(1672, 7.5833, 79.8667, 'Yodaela', NULL, NULL, '51422', NULL, NULL, NULL, 22),
(1673, 7.286035, 79.924213, 'Yogiyana', NULL, NULL, '61144', NULL, NULL, NULL, 22),
(1674, 6.59053, 80.644197, 'Akarella', 'අකරැල්ල', NULL, '70082', NULL, NULL, NULL, 23),
(1675, 6.7333, 80.75, 'Amunumulla', 'අමුනුමුල්ල', NULL, '90204', NULL, NULL, NULL, 23),
(1676, 6.5333, 80.6, 'Atakalanpanna', 'අටකලන්පන්න', NULL, '70294', NULL, NULL, NULL, 23),
(1677, 6.63662, 80.317329, 'Ayagama', 'අයගම', NULL, '70024', NULL, NULL, NULL, 23),
(1678, 6.661743, 80.69371, 'Balangoda', 'බලන්ගොඩ', NULL, '70100', NULL, NULL, NULL, 23),
(1679, 6.8333, 80.3667, 'Batatota', 'බටතොට', NULL, '70504', NULL, NULL, NULL, 23),
(1680, 6.4521, 80.4894, 'Beralapanathara', 'බෙරලපනතර', NULL, '81541', NULL, NULL, NULL, 23),
(1681, 6.6833, 80.7667, 'Bogahakumbura', 'බෝගහකුඹුර', NULL, '90354', NULL, NULL, NULL, 23),
(1682, 6.739114, 80.664956, 'Bolthumbe', 'බොල්තුඹෙ', NULL, '70131', NULL, NULL, NULL, 23),
(1683, 6.4, 80.6333, 'Bomluwageaina', NULL, NULL, '70344', NULL, NULL, NULL, 23),
(1684, 6.3917, 80.6833, 'Bowalagama', 'බෝවලගම', NULL, '82458', NULL, NULL, NULL, 23),
(1685, 6.4333, 80.65, 'Bulutota', 'බුලුතොට', NULL, '70346', NULL, NULL, NULL, 23),
(1686, 6.7167, 80.3333, 'Dambuluwana', 'දඹුලුවාන', NULL, '70019', NULL, NULL, NULL, 23),
(1687, 6.4901, 80.4248, 'Daugala', 'දවුගල', NULL, '70455', NULL, NULL, NULL, 23),
(1688, 6.6258, 80.4486, 'Dela', 'දෙල', NULL, '70042', NULL, NULL, NULL, 23),
(1689, 6.513055, 80.473993, 'Delwala', 'දෙල්වල', NULL, '70046', NULL, NULL, NULL, 23),
(1690, 6.73603, 80.301105, 'Dodampe', 'දොඩම්පෙ', NULL, '70017', NULL, NULL, NULL, 23),
(1691, 6.55133, 80.470258, 'Doloswalakanda', 'දොලොස්වලකන්ද', NULL, '70404', NULL, NULL, NULL, 23),
(1692, 6.680322, 80.247485, 'Dumbara Manana', 'දුම්බර මනන', NULL, '70495', NULL, NULL, NULL, 23),
(1693, 6.85, 80.2667, 'Eheliyagoda', 'ඇහැළියගොඩ', NULL, '70600', NULL, NULL, NULL, 23),
(1694, 6.3406, 80.7804, 'Ekamutugama', 'එකමුතුගම', NULL, '70254', NULL, NULL, NULL, 23),
(1695, 6.66081, 80.366828, 'Elapatha', 'ඇලපාත', NULL, '70032', NULL, NULL, NULL, 23),
(1696, 6.5687, 80.363, 'Ellagawa', 'ඇල්ලගාව', NULL, '70492', NULL, NULL, NULL, 23),
(1697, 6.8583, 80.3083, 'Ellaulla', '', NULL, '70552', NULL, NULL, NULL, 23),
(1698, 6.809945, 80.259547, 'Ellawala', 'ඇල්ලවල', NULL, '70606', NULL, NULL, NULL, 23),
(1699, 6.3439, 80.8489, 'Embilipitiya', 'ඇඹිලිපිටිය', NULL, '70200', NULL, NULL, NULL, 23),
(1700, 6.7986, 80.3784, 'Eratna', 'එරත්න', NULL, '70506', NULL, NULL, NULL, 23),
(1701, 6.804277, 80.242773, 'Erepola', 'එරෙපොල', NULL, '70602', NULL, NULL, NULL, 23),
(1702, 6.7167, 80.35, 'Gabbela', 'ගබ්බෙල', NULL, '70156', NULL, NULL, NULL, 23),
(1703, 6.7516, 80.5927, 'Gangeyaya', 'ගන්ගෙයාය', NULL, '70195', NULL, NULL, NULL, 23),
(1704, 6.6422, 80.2667, 'Gawaragiriya', 'ගවරගිරිය', NULL, '70026', NULL, NULL, NULL, 23),
(1705, 6.729, 80.4415, 'Gillimale', 'ගිලීමලේ', NULL, '70002', NULL, NULL, NULL, 23),
(1706, 6.505599, 80.647268, 'Godakawela', 'ගොඩකවැල', NULL, '70160', NULL, NULL, NULL, 23),
(1707, 6.7, 80.5667, 'Gurubewilagama', 'ගුරුබෙවිලගම', NULL, '70136', NULL, NULL, NULL, 23),
(1708, 6.6833, 80.7167, 'Halwinna', 'හල්වින්න', NULL, '70171', NULL, NULL, NULL, 23),
(1709, 6.562839, 80.780347, 'Handagiriya', 'හඳගිරිය', NULL, '70106', NULL, NULL, NULL, 23),
(1710, 6.532527, 80.739407, 'Hatangala', NULL, NULL, '70105', NULL, NULL, NULL, 23),
(1711, 6.65, 80.75, 'Hatarabage', NULL, NULL, '70108', NULL, NULL, NULL, 23),
(1712, 6.6833, 80.7667, 'Hewanakumbura', NULL, NULL, '90358', NULL, NULL, NULL, 23),
(1713, 6.7192, 80.3842, 'Hidellana', NULL, NULL, '70012', NULL, NULL, NULL, 23),
(1714, 6.533544, 80.60045, 'Hiramadagama', NULL, NULL, '70296', NULL, NULL, NULL, 23),
(1715, 6.3917, 80.6833, 'Horewelagoda', NULL, NULL, '82456', NULL, NULL, NULL, 23),
(1716, 6.403532, 80.636458, 'Ittakanda', NULL, NULL, '70342', NULL, NULL, NULL, 23),
(1717, 6.704217, 80.362927, 'Kahangama', NULL, NULL, '70016', NULL, NULL, NULL, 23),
(1718, 6.708145, 80.303805, 'Kahawatta', NULL, NULL, '70150', NULL, NULL, NULL, 23),
(1719, 6.531595, 80.407285, 'Kalawana', NULL, NULL, '70450', NULL, NULL, NULL, 23),
(1720, 6.6833, 80.6833, 'Kaltota', NULL, NULL, '70122', NULL, NULL, NULL, 23),
(1721, 6.6833, 80.7667, 'Kalubululanda', NULL, NULL, '90352', NULL, NULL, NULL, 23),
(1722, 6.7361, 80.4354, 'Kananke Bazaar', NULL, NULL, '80136', NULL, NULL, NULL, 23),
(1723, 6.6833, 80.7667, 'Kandepuhulpola', NULL, NULL, '90356', NULL, NULL, NULL, 23),
(1724, 6.77254, 80.206883, 'Karandana', NULL, NULL, '70488', NULL, NULL, NULL, 23),
(1725, 6.677224, 80.368723, 'Karangoda', NULL, NULL, '70018', NULL, NULL, NULL, 23),
(1726, 6.4, 80.6833, 'Kella Junction', NULL, NULL, '70352', NULL, NULL, NULL, 23),
(1727, 6.6833, 80.7667, 'Keppetipola', NULL, NULL, '90350', NULL, NULL, NULL, 23),
(1728, 6.753583, 80.265838, 'Kiriella', NULL, NULL, '70480', NULL, NULL, NULL, 23),
(1729, 6.3406, 80.7804, 'Kiriibbanwewa', NULL, NULL, '70252', NULL, NULL, NULL, 23),
(1730, 6.7516, 80.5927, 'Kolambageara', NULL, NULL, '70180', NULL, NULL, NULL, 23),
(1731, 6.5667, 80.4833, 'Kolombugama', NULL, NULL, '70403', NULL, NULL, NULL, 23),
(1732, 6.404095, 80.681552, 'Kolonna', NULL, NULL, '70350', NULL, NULL, NULL, 23),
(1733, 6.757336, 80.504485, 'Kudawa', NULL, NULL, '70005', NULL, NULL, NULL, 23),
(1734, 6.7792, 80.3686, 'Kuruwita', NULL, NULL, '70500', NULL, NULL, NULL, 23),
(1735, 6.655172, 80.471348, 'Lellopitiya', NULL, NULL, '70056', NULL, NULL, NULL, 23),
(1736, 6.7361, 80.4354, 'lmaduwa', NULL, NULL, '80130', NULL, NULL, NULL, 23),
(1737, 6.7159, 80.6375, 'lmbulpe', NULL, NULL, '70134', NULL, NULL, NULL, 23),
(1738, 6.3406, 80.7804, 'Mahagama Colony', NULL, NULL, '70256', NULL, NULL, NULL, 23),
(1739, 6.5833, 80.75, 'Mahawalatenna', NULL, NULL, '70112', NULL, NULL, NULL, 23),
(1740, 6.5333, 80.6, 'Makandura Sabara', NULL, NULL, '70298', NULL, NULL, NULL, 23),
(1741, 6.7, 80.4333, 'Malwala Junction', NULL, NULL, '70001', NULL, NULL, NULL, 23),
(1742, 6.65, 80.4167, 'Malwatta', NULL, NULL, '32198', NULL, NULL, NULL, 23),
(1743, 6.7667, 80.2333, 'Matuwagalagama', NULL, NULL, '70482', NULL, NULL, NULL, 23),
(1744, 6.6414, 80.2882, 'Medagalatur', NULL, NULL, '70021', NULL, NULL, NULL, 23),
(1745, 6.6833, 80.6833, 'Meddekanda', NULL, NULL, '70127', NULL, NULL, NULL, 23),
(1746, 6.5687, 80.363, 'Minipura Dumbara', NULL, NULL, '70494', NULL, NULL, NULL, 23),
(1747, 6.836923, 80.221949, 'Mitipola', NULL, NULL, '70604', NULL, NULL, NULL, 23),
(1748, 6.8333, 80.3, 'Moragala Kirillapone', NULL, NULL, '81532', NULL, NULL, NULL, 23),
(1749, 6.679967, 80.691531, 'Morahela', NULL, NULL, '70129', NULL, NULL, NULL, 23),
(1750, 6.291657, 80.760239, 'Mulendiyawala', NULL, NULL, '70212', NULL, NULL, NULL, 23),
(1751, 6.645942, 80.817832, 'Mulgama', NULL, NULL, '70117', NULL, NULL, NULL, 23),
(1752, 6.5167, 80.3333, 'Nawalakanda', NULL, NULL, '70469', NULL, NULL, NULL, 23),
(1753, 6.7168, 80.4999, 'NawinnaPinnakanda', NULL, NULL, '70165', NULL, NULL, NULL, 23),
(1754, 6.65, 80.3667, 'Niralagama', NULL, NULL, '70038', NULL, NULL, NULL, 23),
(1755, 6.6, 80.4553, 'Nivitigala', NULL, NULL, '70400', NULL, NULL, NULL, 23),
(1756, 6.327391, 80.694691, 'Omalpe', NULL, NULL, '70215', NULL, NULL, NULL, 23),
(1757, 6.608359, 80.625134, 'Opanayaka', NULL, NULL, '70080', NULL, NULL, NULL, 23),
(1758, 6.244961, 80.916029, 'Padalangala', NULL, NULL, '70230', NULL, NULL, NULL, 23),
(1759, 6.45, 80.7333, 'Pallebedda', NULL, NULL, '70170', NULL, NULL, NULL, 23),
(1760, 6.6333, 80.6667, 'Pallekanda', NULL, NULL, '82454', NULL, NULL, NULL, 23),
(1761, 6.7333, 80.6833, 'Pambagolla', NULL, NULL, '70133', NULL, NULL, NULL, 23),
(1762, 6.351417, 80.776404, 'Panamura', NULL, NULL, '70218', NULL, NULL, NULL, 23),
(1763, 6.425337, 80.445421, 'Panapola', NULL, NULL, '70461', NULL, NULL, NULL, 23),
(1764, 6.601317, 80.343575, 'Paragala', NULL, NULL, '81474', NULL, NULL, NULL, 23),
(1765, 6.825482, 80.299049, 'Parakaduwa', NULL, NULL, '70550', NULL, NULL, NULL, 23),
(1766, 6.540192, 80.452191, 'Pebotuwa', NULL, NULL, '70045', NULL, NULL, NULL, 23),
(1767, 6.620071, 80.542243, 'Pelmadulla', NULL, NULL, '70070', NULL, NULL, NULL, 23),
(1768, 6.731251, 80.672146, 'Pinnawala', NULL, NULL, '70130', NULL, NULL, NULL, 23),
(1769, 6.8333, 80.3, 'Pothdeniya', NULL, NULL, '81538', NULL, NULL, NULL, 23),
(1770, 6.609347, 80.797987, 'Rajawaka', NULL, NULL, '70116', NULL, NULL, NULL, 23),
(1771, 6.553121, 80.665495, 'Ranwala', NULL, NULL, '70162', NULL, NULL, NULL, 23),
(1772, 6.695227, 80.617304, 'Rassagala', NULL, NULL, '70135', NULL, NULL, NULL, 23),
(1773, 6.7333, 80.4833, 'Ratgama', NULL, NULL, '80260', NULL, NULL, NULL, 23),
(1774, 6.65, 80.3667, 'Ratna Hangamuwa', NULL, NULL, '70036', NULL, NULL, NULL, 23),
(1775, 6.677603, 80.405592, 'Ratnapura', NULL, NULL, '70000', NULL, NULL, NULL, 23),
(1776, 6.3406, 80.7804, 'Sewanagala', NULL, NULL, '70250', NULL, NULL, NULL, 23),
(1777, 6.800198, 80.476202, 'Sri Palabaddala', NULL, NULL, '70004', NULL, NULL, NULL, 23),
(1778, 6.7833, 80.4, 'Sudagala', NULL, NULL, '70502', NULL, NULL, NULL, 23),
(1779, 6.5844, 80.7332, 'Talakolahinna', NULL, NULL, '70101', NULL, NULL, NULL, 23),
(1780, 6.6361, 80.8536, 'Tanjantenna', NULL, NULL, '70118', NULL, NULL, NULL, 23),
(1781, 6.75, 80.3167, 'Teppanawa', NULL, NULL, '70512', NULL, NULL, NULL, 23),
(1782, 6.2833, 80.8833, 'Tunkama', NULL, NULL, '70205', NULL, NULL, NULL, 23),
(1783, 6.7317, 80.4287, 'Udakarawita', NULL, NULL, '70044', NULL, NULL, NULL, 23),
(1784, 6.65, 80.3667, 'Udaniriella', NULL, NULL, '70034', NULL, NULL, NULL, 23),
(1785, 6.7516, 80.5927, 'Udawalawe', NULL, NULL, '70190', NULL, NULL, NULL, 23),
(1786, 6.367322, 80.631196, 'Ullinduwawa', NULL, NULL, '70345', NULL, NULL, NULL, 23),
(1787, 6.45, 80.4333, 'Veddagala', NULL, NULL, '70459', NULL, NULL, NULL, 23),
(1788, 6.4, 80.6333, 'Vijeriya', NULL, NULL, '70348', NULL, NULL, NULL, 23),
(1789, 6.726367, 80.64106, 'Waleboda', NULL, NULL, '70138', NULL, NULL, NULL, 23),
(1790, 6.577958, 80.510709, 'Watapotha', NULL, NULL, '70408', NULL, NULL, NULL, 23),
(1791, 6.4833, 80.4333, 'Waturawa', NULL, NULL, '70456', NULL, NULL, NULL, 23),
(1792, 6.567212, 80.707078, 'Weligepola', NULL, NULL, '70104', NULL, NULL, NULL, 23),
(1793, 6.6833, 80.6833, 'Welipathayaya', NULL, NULL, '70124', NULL, NULL, NULL, 23),
(1794, 6.6203, 80.7467, 'Wikiliya', NULL, NULL, '70114', NULL, NULL, NULL, 23),
(1795, 8.330575, 80.97191, 'Agbopura', 'අග්බෝපුර', NULL, '31304', NULL, NULL, NULL, 24),
(1796, 8.6667, 80.95, 'Buckmigama', 'බක්මීගම', NULL, '31028', NULL, NULL, NULL, 24),
(1797, 8.561664, 81.187386, 'China Bay', 'චීන වරාය', NULL, '31050', NULL, NULL, NULL, 24),
(1798, 8.4458, 81.2875, 'Dehiwatte', 'දෙහිවත්ත', NULL, '31226', NULL, NULL, NULL, 24),
(1799, 8.4458, 81.2875, 'Echchilampattai', 'එච්චිලම්පට්ටෙයි', NULL, '31236', NULL, NULL, NULL, 24),
(1800, 8.3683, 81.0281, 'Galmetiyawa', 'ගල්මැටියාව', NULL, '31318', NULL, NULL, NULL, 24),
(1801, 8.677731, 80.960417, 'Gomarankadawala', 'ගෝමරන්කඩවල', NULL, '31026', NULL, NULL, NULL, 24),
(1802, 8.459198, 81.278164, 'Kaddaiparichchan', NULL, NULL, '31212', NULL, NULL, NULL, 24),
(1803, 8.2833, 81.2667, 'Kallar', NULL, NULL, '30250', NULL, NULL, NULL, 24),
(1804, 8.6333, 81.0167, 'Kanniya', NULL, NULL, '31032', NULL, NULL, NULL, 24),
(1805, 8.365483, 80.966897, 'Kantalai', NULL, NULL, '31300', NULL, NULL, NULL, 24),
(1806, 8.3683, 81.0281, 'Kantalai Sugar Factory', NULL, NULL, '31306', NULL, NULL, NULL, 24),
(1807, 8.354092, 81.275605, 'Kiliveddy', NULL, NULL, '31220', NULL, NULL, NULL, 24);
INSERT INTO `city` (`id`, `latitude`, `logitude`, `name_en`, `name_si`, `name_ta`, `postcode`, `sub_name_en`, `sub_name_si`, `sub_name_ta`, `district_id`) VALUES
(1808, 8.497717, 81.179214, 'Kinniya', NULL, NULL, '31100', NULL, NULL, NULL, 24),
(1809, 8.792709, 81.036113, 'Kuchchaveli', NULL, NULL, '31014', NULL, NULL, NULL, 24),
(1810, 8.7333, 81.15, 'Kumburupiddy', NULL, NULL, '31012', NULL, NULL, NULL, 24),
(1811, 8.4989, 81.1897, 'Kurinchakemy', NULL, NULL, '31112', NULL, NULL, NULL, 24),
(1812, 8.4458, 81.2875, 'Lankapatuna', NULL, NULL, '31234', NULL, NULL, NULL, 24),
(1813, 8.613863, 80.9518, 'Mahadivulwewa', NULL, NULL, '31036', NULL, NULL, NULL, 24),
(1814, 8.4989, 81.1897, 'Maharugiramam', NULL, NULL, '31106', NULL, NULL, NULL, 24),
(1815, 8.4458, 81.2875, 'Mallikativu', NULL, NULL, '31224', NULL, NULL, NULL, 24),
(1816, 8.4458, 81.2875, 'Mawadichenai', NULL, NULL, '31238', NULL, NULL, NULL, 24),
(1817, 8.3683, 81.0281, 'Mullipothana', NULL, NULL, '31312', NULL, NULL, NULL, 24),
(1818, 8.45, 81.2667, 'Mutur', NULL, NULL, '31200', NULL, NULL, NULL, 24),
(1819, 8.4458, 81.2875, 'Neelapola', NULL, NULL, '31228', NULL, NULL, NULL, 24),
(1820, 8.658756, 81.148516, 'Nilaveli', NULL, NULL, '31010', NULL, NULL, NULL, 24),
(1821, 8.6333, 81.0167, 'Pankulam', NULL, NULL, '31034', NULL, NULL, NULL, 24),
(1822, 8.9333, 80.9833, 'Pulmoddai', NULL, NULL, '50567', NULL, NULL, NULL, 24),
(1823, 8.6333, 81.0167, 'Rottawewa', NULL, NULL, '31038', NULL, NULL, NULL, 24),
(1824, 8.6167, 81.2, 'Sampaltivu', NULL, NULL, '31006', NULL, NULL, NULL, 24),
(1825, 8.493354, 81.284828, 'Sampoor', NULL, NULL, '31216', NULL, NULL, NULL, 24),
(1826, 8.4458, 81.2875, 'Serunuwara', NULL, NULL, '31232', NULL, NULL, NULL, 24),
(1827, 8.4458, 81.2875, 'Seruwila', NULL, NULL, '31260', NULL, NULL, NULL, 24),
(1828, 8.3683, 81.0281, 'Sirajnagar', NULL, NULL, '31314', NULL, NULL, NULL, 24),
(1829, 8.4458, 81.2875, 'Somapura', NULL, NULL, '31222', NULL, NULL, NULL, 24),
(1830, 8.4925, 81.0964, 'Tampalakamam', NULL, NULL, '31046', NULL, NULL, NULL, 24),
(1831, 8.2833, 81.2667, 'Thuraineelavanai', NULL, NULL, '30254', NULL, NULL, NULL, 24),
(1832, 8.7444, 81.15, 'Tiriyayi', NULL, NULL, '31016', NULL, NULL, NULL, 24),
(1833, 8.4, 81.3167, 'Toppur', NULL, NULL, '31250', NULL, NULL, NULL, 24),
(1834, 8.5667, 81.2333, 'Trincomalee', NULL, NULL, '31000', NULL, NULL, NULL, 24),
(1835, 8.3683, 81.0281, 'Wanela', NULL, NULL, '31308', NULL, NULL, NULL, 24),
(1836, 8.758818, 80.493461, 'Vavuniya', NULL, NULL, '43000', NULL, NULL, NULL, 25),
(1837, 6.925833, 79.841667, 'Colombo 1', 'කොළඹ 1', 'கொழும்பு 1', '100', 'Fort', 'කොටුව', 'கோட்டை', 5),
(1838, 6.900556, 79.853333, 'Colombo 3', 'කොළඹ 3', 'கொழும்பு 3', '300', 'Colpetty', 'කොල්ලුපිටිය', 'கொள்ளுபிட்டி', 5),
(1839, 6.888889, 79.856667, 'Colombo 4', 'කොළඹ 4', 'கொழும்பு 4', '400', 'Bambalapitiya', 'බම්බලපිටිය', 'பம்பலப்பிட்டி', 5),
(1840, 6.879444, 79.865278, 'Colombo 5', 'කොළඹ 5', 'கொழும்பு 5', '500', 'Havelock Town', 'තිඹිරිගස්යාය', 'ஹெவ்லொக் நகரம்', 5),
(1841, 6.906667, 79.863333, 'Colombo 7', 'කොළඹ 7', 'கொழும்பு 7', '700', 'Cinnamon Gardens', 'කුරුඳු වත්ත', 'கறுவாத் தோட்டம்', 5),
(1842, 6.93, 79.877778, 'Colombo 9', 'කොළඹ 9', 'கொழும்பு 9', '900', 'Dematagoda', 'දෙමටගොඩ', 'தெமட்டகொடை', 5),
(1843, 6.928333, 79.864167, 'Colombo 10', 'කොළඹ 10', 'கொழும்பு 10', '1000', 'Maradana', 'මරදාන', 'மருதானை', 5),
(1844, 6.936667, 79.849722, 'Colombo 11', 'කොළඹ 11', 'கொழும்பு 11', '1100', 'Pettah', 'පිට කොටුව', 'புறக் கோட்டை', 5),
(1845, 6.9425, 79.858333, 'Colombo 12', 'කොළඹ 12', 'கொழும்பு 12', '1200', 'Hulftsdorp', 'අලුත් කඩේ', 'புதுக்கடை', 5),
(1846, 6.9475, 79.874722, 'Colombo 14', 'කොළඹ 14', 'கொழும்பு 14', '1400', 'Grandpass', 'ග්‍රන්ඩ්පාස්', 'பாலத்துறை', 5);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_si` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name_en`, `name_si`, `name_ta`, `province_id`) VALUES
(1, 'Ampara', 'අම්පාර', 'அம்பாறை', 6),
(2, 'Anuradhapura', 'අනුරාධපුරය', 'அனுராதபுரம்', 8),
(3, 'Badulla', 'බදුල්ල', 'பதுளை', 7),
(4, 'Batticaloa', 'මඩකලපුව', 'மட்டக்களப்பு', 6),
(5, 'Colombo', 'කොළඹ', 'கொழும்பு', 1),
(6, 'Galle', 'ගාල්ල', 'காலி', 3),
(7, 'Gampaha', 'ගම්පහ', 'கம்பஹா', 1),
(8, 'Hambantota', 'හම්බන්තොට', 'அம்பாந்தோட்டை', 3),
(9, 'Jaffna', 'යාපනය', 'யாழ்ப்பாணம்', 9),
(10, 'Kalutara', 'කළුතර', 'களுத்துறை', 1),
(11, 'Kandy', 'මහනුවර', 'கண்டி', 2),
(12, 'Kegalle', 'කෑගල්ල', 'கேகாலை', 5),
(13, 'Kilinochchi', 'කිලිනොච්චිය', 'கிளிநொச்சி', 9),
(14, 'Kurunegala', 'කුරුණෑගල', 'குருணாகல்', 4),
(15, 'Mannar', 'මන්නාරම', 'மன்னார்', 9),
(16, 'Matale', 'මාතලේ', 'மாத்தளை', 2),
(17, 'Matara', 'මාතර', 'மாத்தறை', 3),
(18, 'Monaragala', 'මොණරාගල', 'மொணராகலை', 7),
(19, 'Mullaitivu', 'මුලතිව්', 'முல்லைத்தீவு', 9),
(20, 'Nuwara Eliya', 'නුවර එළිය', 'நுவரேலியா', 2),
(21, 'Polonnaruwa', 'පොළොන්නරුව', 'பொலன்னறுவை', 8),
(22, 'Puttalam', 'පුත්තලම', 'புத்தளம்', 4),
(23, 'Ratnapura', 'රත්නපුර', 'இரத்தினபுரி', 5),
(24, 'Trincomalee', 'ත්‍රිකුණාමලය', 'திருகோணமலை', 6),
(25, 'Vavuniya', 'වව්නියාව', 'வவுனியா', 9);

-- --------------------------------------------------------

--
-- Table structure for table `lesipay_account`
--

CREATE TABLE `lesipay_account` (
  `id` int(11) NOT NULL,
  `account_status` int(11) NOT NULL,
  `lesipay_account_name` varchar(255) DEFAULT NULL,
  `lesipay_id` bigint(20) DEFAULT NULL,
  `outstanding` double NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `line_item`
--

CREATE TABLE `line_item` (
  `id` int(11) NOT NULL,
  `expire_date` datetime DEFAULT NULL,
  `manufacture_date` datetime DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `ordered_date` datetime DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `total` double DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `user_account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `down_payment` double DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone_number`
--

CREATE TABLE `phone_number` (
  `id` int(11) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prdct_prdct_spec`
--

CREATE TABLE `prdct_prdct_spec` (
  `product_id` int(11) NOT NULL,
  `product_spec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_spec`
--

CREATE TABLE `product_spec` (
  `id` int(11) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_si` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name_en`, `name_si`, `name_ta`) VALUES
(1, 'Western', 'බස්නාහිර', 'மேல்'),
(2, 'Central', 'මධ්‍යම', 'மத்திய'),
(3, 'Southern', 'දකුණු', 'தென்'),
(4, 'North Western', 'වයඹ', 'வட மேல்'),
(5, 'Sabaragamuwa', 'සබරගමුව', 'சபரகமுவ'),
(6, 'Eastern', 'නැගෙනහිර', 'கிழக்கு'),
(7, 'Uva', 'ඌව', 'ஊவா'),
(8, 'North Central', 'උතුරු මැද', 'வட மத்திய'),
(9, 'Northern', 'උතුරු', 'வட');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `nic` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `avatar_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `close_date` datetime DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `open_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_active_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpo044ng5x4gynb291cv24vtea` (`city_id`),
  ADD KEY `FKqbjwfi50pdenou8j14knnffrh` (`district_id`),
  ADD KEY `FKf8x0jfwoo94op8u88og1ohdcn` (`province_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6i8553aggy2wl3ylubqvt5aro` (`district_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK276utu38g5lgqeth6pwfm3rw2` (`province_id`);

--
-- Indexes for table `lesipay_account`
--
ALTER TABLE `lesipay_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_hvaigkdeihp54s27i7049gfpf` (`lesipay_id`),
  ADD KEY `FK1007gcxncvufgdafu1cobsgc8` (`order_id`),
  ADD KEY `FK5phlb7s1rkwx72tb8y81idwva` (`user_account_id`);

--
-- Indexes for table `line_item`
--
ALTER TABLE `line_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKj5l4bgtlxey3xsxn3lqqmes7s` (`order_id`),
  ADD KEY `FK237t8tbj9haibqe7wafj4t54x` (`product_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_c19ayt4j75vpp3slm1gitc22v` (`order_number`),
  ADD KEY `FKal550jx92fbea8sry5q4siyn1` (`payment_id`),
  ADD KEY `FKqkw7yci68qb117pcb7oiuq569` (`user_account_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_number`
--
ALTER TABLE `phone_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKb609grkur7fch5if2c0nrcujh` (`user_id`);

--
-- Indexes for table `prdct_prdct_spec`
--
ALTER TABLE `prdct_prdct_spec`
  ADD PRIMARY KEY (`product_id`,`product_spec_id`),
  ADD KEY `FK93btoo45fvxoewkq1a72uwmd7` (`product_spec_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcwclrqu392y86y0pmyrsi649r` (`product_category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_c4mvv9or7vacph0ggkttmy252` (`code`);

--
-- Indexes for table `product_spec`
--
ALTER TABLE `product_spec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  ADD UNIQUE KEY `UK_cf69eql64ont5pb889q2x2wt6` (`nic`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6uttjcpvx1afo91pfous3wuwc` (`account_name`),
  ADD KEY `FK4qaqge5ewvmfuwsp5eddfr4r2` (`user_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_id`,`address_id`),
  ADD KEY `FKdaaxogn1ss81gkcsdn05wi6jp` (`address_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1847;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `lesipay_account`
--
ALTER TABLE `lesipay_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `line_item`
--
ALTER TABLE `line_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phone_number`
--
ALTER TABLE `phone_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_spec`
--
ALTER TABLE `product_spec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FKf8x0jfwoo94op8u88og1ohdcn` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`),
  ADD CONSTRAINT `FKpo044ng5x4gynb291cv24vtea` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `FKqbjwfi50pdenou8j14knnffrh` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK6i8553aggy2wl3ylubqvt5aro` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`);

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `FK276utu38g5lgqeth6pwfm3rw2` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`);

--
-- Constraints for table `lesipay_account`
--
ALTER TABLE `lesipay_account`
  ADD CONSTRAINT `FK1007gcxncvufgdafu1cobsgc8` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `FK5phlb7s1rkwx72tb8y81idwva` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`);

--
-- Constraints for table `line_item`
--
ALTER TABLE `line_item`
  ADD CONSTRAINT `FK237t8tbj9haibqe7wafj4t54x` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKj5l4bgtlxey3xsxn3lqqmes7s` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FKal550jx92fbea8sry5q4siyn1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `FKqkw7yci68qb117pcb7oiuq569` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`);

--
-- Constraints for table `phone_number`
--
ALTER TABLE `phone_number`
  ADD CONSTRAINT `FKb609grkur7fch5if2c0nrcujh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `prdct_prdct_spec`
--
ALTER TABLE `prdct_prdct_spec`
  ADD CONSTRAINT `FK6chlx7akuy6nf0ey6h2k878n6` FOREIGN KEY (`product_id`) REFERENCES `product_spec` (`id`),
  ADD CONSTRAINT `FK93btoo45fvxoewkq1a72uwmd7` FOREIGN KEY (`product_spec_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKcwclrqu392y86y0pmyrsi649r` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `user_account`
--
ALTER TABLE `user_account`
  ADD CONSTRAINT `FK4qaqge5ewvmfuwsp5eddfr4r2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `FKdaaxogn1ss81gkcsdn05wi6jp` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `FKk2ox3w9jm7yd6v1m5f68xibry` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
