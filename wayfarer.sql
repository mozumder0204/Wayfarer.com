-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2018 at 05:34 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wayfarer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(10) NOT NULL,
  `ad_username` varchar(100) NOT NULL,
  `ad_pass` varchar(100) NOT NULL,
  `ad_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_id`, `ad_username`, `ad_pass`, `ad_name`) VALUES
(1, 'admin1', '1111', 'User One'),
(2, 'admin2', '2222', 'User Two');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `a_id` int(100) NOT NULL,
  `a_name` varchar(500) NOT NULL,
  `c_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`a_id`, `a_name`, `c_id`) VALUES
(1, 'Agargaon', 14),
(2, 'Badda', 14),
(3, 'Bailey Road', 14),
(4, 'Banani', 14),
(5, 'Banani dohs', 14),
(6, 'Bandar', 14),
(7, 'Bangshal', 14),
(8, 'Baridhara', 14),
(9, 'Baridhara dohs', 14),
(10, 'Basabo', 14),
(11, 'Bashundhara', 14),
(12, 'Biman Bandar', 14),
(13, 'Bimanbandar', 14),
(14, 'Cantonment', 14),
(15, 'Chawkbazar', 14),
(16, 'Chawkbazar Model', 14),
(17, 'Chowdhurypara', 14),
(18, 'Dakshinkhan', 14),
(19, 'Darus Salam', 14),
(20, 'Demra', 14),
(21, 'Dhaka housing', 14),
(22, 'Dhaka university area', 14),
(23, 'Dhanmondi', 14),
(24, 'Dilkusha Commercial Area', 14),
(25, 'Elephant Road', 14),
(26, 'Eskaton', 14),
(27, 'Gazipur Sadar', 14),
(28, 'Gendaria', 14),
(29, 'Goran', 14),
(30, 'Green road', 14),
(31, 'Gulshan', 14),
(32, 'Gulshan 1', 14),
(33, 'Gulshan 2', 14),
(34, 'Hatirpul Residential Area', 14),
(35, 'Hazaribagh', 14),
(36, 'Indira Road', 14),
(37, 'Jatrabari', 14),
(38, 'Kadamtali', 14),
(39, 'Kafrul', 14),
(40, 'Kakrail', 14),
(41, 'Kalabagan', 14),
(42, 'Kallyanpur', 14),
(43, 'Kamrangirchar', 14),
(44, 'Katabon', 14),
(45, 'Kawran bazar', 14),
(46, 'Keraniganj', 14),
(47, 'Khilgaon', 14),
(48, 'Khilgaon-taltola', 14),
(49, 'Khilkhet', 14),
(50, 'Kotwali', 14),
(51, 'Kotwali', 14),
(52, 'Lalbagh', 14),
(53, 'Lalmatia', 14),
(54, 'Maghbazar', 14),
(55, 'Malibagh', 14),
(56, 'Mirpur', 14),
(57, 'Mirpur dohs', 14),
(58, 'Mirpur Model', 14),
(59, 'Mirpur-1', 14),
(60, 'Mirpur-10', 14),
(61, 'Mirpur-11', 14),
(62, 'Mirpur-12', 14),
(63, 'Mirpur-13', 14),
(64, 'Mirpur-14', 14),
(65, 'Mirpur-2', 14),
(66, 'Mirpur-6', 14),
(67, 'Mirpur-7', 14),
(68, 'Mirpur-Pallabi', 14),
(69, 'Mohakhali', 14),
(70, 'Mohakhali dohs', 14),
(71, 'Mohammadpur', 14),
(72, 'Monipuripara', 14),
(73, 'Motijheel', 14),
(74, 'Mouchak', 14),
(75, 'Narayanganj Sadar', 14),
(76, 'New Market', 14),
(77, 'Niketan', 14),
(78, 'Nikunjo - 1', 14),
(79, 'Nikunjo - 2', 14),
(80, 'Pallabi', 14),
(81, 'Paltan', 14),
(82, 'Panthapath', 14),
(83, 'Paribagh', 14),
(84, 'Ramna', 14),
(85, 'Rampura', 14),
(86, 'Rayer bazar', 14),
(87, 'Sabujbagh', 14),
(88, 'Savar', 14),
(89, 'Segunbagicha', 14),
(90, 'Shah Ali', 14),
(91, 'Shahbagh', 14),
(92, 'Shahjadpur', 14),
(93, 'Shahjanpur', 14),
(94, 'Shantinagar', 14),
(95, 'Shekhertek', 14),
(96, 'Sher-e-Bangla Nagar', 14),
(97, 'Shyamoli', 14),
(98, 'Shyampur', 14),
(99, 'Siddeshwari', 14),
(100, 'Sutrapur', 14),
(101, 'Tejgaon', 14),
(102, 'Tejgaon I/A', 14),
(103, 'Tejgaon Industrial Area', 14),
(104, 'Turag', 14),
(105, 'Uttar Khan', 14),
(106, 'Uttara', 14),
(107, 'Zigatola', 14),
(108, '60 feet', 14);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `c_id` int(100) NOT NULL,
  `c_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`c_id`, `c_name`) VALUES
(1, 'Bagerhat'),
(2, 'Bandarban'),
(3, 'Barguna'),
(4, 'Barisal'),
(5, 'Bhola'),
(6, 'Bogra'),
(7, 'Brahmanbaria'),
(8, 'Chandpur'),
(9, 'Chapainawabganj'),
(10, 'Chittagong'),
(11, 'Chuadanga'),
(12, 'Comilla'),
(13, 'Cox\'s Bazar'),
(14, 'Dhaka'),
(15, 'Dinajpur'),
(16, 'Faridpur'),
(17, 'Feni'),
(18, 'Gaibandha'),
(19, 'Gazipur'),
(20, 'Gopalganj'),
(21, 'Habiganj'),
(22, 'Jamalpur'),
(23, 'Jessore'),
(24, 'Jhalokati'),
(25, 'Jhenaidah'),
(26, 'Joypurhat'),
(27, 'Khagrachhari'),
(28, 'Khulna'),
(29, 'Kishoreganj'),
(30, 'Kurigram'),
(31, 'Kushtia'),
(32, 'Lakshmipur'),
(33, 'Lalmonirhat'),
(34, 'Madaripur'),
(35, 'Magura'),
(36, 'Manikganj'),
(37, 'Meherpur'),
(38, 'Moulvibazar'),
(39, 'Munshiganj'),
(40, 'Mymensingh'),
(41, 'Naogaon'),
(42, 'Narail'),
(43, 'Narayanganj'),
(44, 'Narsingdi'),
(45, 'Natore'),
(46, 'Netrakona'),
(47, 'Nilphamari'),
(48, 'Noakhali'),
(49, 'Pabna'),
(50, 'Panchagarh'),
(51, 'Patuakhali'),
(52, 'Pirojpur'),
(53, 'Rajbari'),
(54, 'Rajshahi'),
(55, 'Rangamati'),
(56, 'Rangpur'),
(57, 'Satkhira'),
(58, 'Shariatpur'),
(59, 'Sherpur'),
(60, 'Sirajgonj'),
(61, 'Sunamganj'),
(62, 'Sylhet'),
(63, 'Tangail'),
(64, 'Thakurgaon');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `p_id` int(100) NOT NULL,
  `p_name` varchar(500) NOT NULL,
  `t_id` int(100) NOT NULL,
  `a_id` int(100) NOT NULL,
  `p_address` varchar(500) NOT NULL,
  `p_phone` int(100) NOT NULL,
  `p_mail` varchar(400) NOT NULL,
  `p_website` varchar(400) NOT NULL,
  `p_point` int(100) NOT NULL,
  `p_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`p_id`, `p_name`, `t_id`, `a_id`, `p_address`, `p_phone`, `p_mail`, `p_website`, `p_point`, `p_url`) VALUES
(1, 'PQ ATM Booth', 1, 1, '39 Malek Avenue,Agargaon,Dhaka,Bangladesh', 1849077120, 'PQ@gmail.com', 'PQ.com', 0, './image_db/atm.png'),
(2, 'Bank1 Limited', 2, 1, '401 Kazi St.,Agargaon,Dhaka,Bangladesh', 1744817595, 'Bank1@outlook.com', 'Bank1.com', 0, './image_db/bank.png'),
(3, 'HLP Hospital', 3, 1, '10 Hazi Danesh,Agargaon,Dhaka,Bangladesh', 1721545085, 'HLP@yahoo.com', 'HLP.com', 0, './image_db/hospital.png'),
(4, 'PX Government Office', 4, 1, '410 Kazi St.,Agargaon,Dhaka,Bangladesh', 1854089576, 'PX@gmail.com', 'PX.com', 0, './image_db/government.png'),
(5, 'SS Hotel', 5, 1, 'South Park,Agargaon,Dhaka,Bangladesh', 1838359089, 'SS@outlook.com', 'SS.com', 0, './image_db/hotel.png'),
(6, 'ABCD University', 6, 1, '9225 Pacific Road,Agargaon,Dhaka,Bangladesh', 1760086559, 'ABCD@yahoo.com', 'ABCD.com', 0, './image_db/university.png'),
(7, 'PQR School', 7, 1, '991 Durham Road,Agargaon,Dhaka,Bangladesh', 1800916412, 'PQR@gmail.com', 'PQR.com', 0, './image_db/school.png'),
(8, 'BS Airport', 8, 1, '273 Grant Street,Agargaon,Dhaka,Bangladesh', 1767746426, 'BS@outlook.com', 'BS.com', 0, './image_db/airport.png'),
(9, 'XYZ Shopping Mall', 9, 1, '73 Ali Road,Agargaon,Dhaka,Bangladesh', 1701895083, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/mall.png'),
(10, 'HLLP Fire Station', 10, 1, '8686 Tagore Avenue,Agargaon,Dhaka,Bangladesh', 1810960671, 'HLLP@gmail.com', 'HLLP.com', 0, './image_db/fire.png'),
(11, 'CHR Police Staion', 11, 1, '8000 Queen Ave.,Agargaon,Dhaka,Bangladesh', 1753677178, 'CHR@outlook.com', 'CHR.com', 0, './image_db/police.png'),
(12, 'XTD Train Staion', 12, 1, '89 Police Circle,Agargaon,Dhaka,Bangladesh', 1791478069, 'XTD@yahoo.com', 'XTD.com', 0, './image_db/train.png'),
(13, 'AZ Bus Station', 13, 1, '77 High Noon Street,Agargaon,Dhaka,Bangladesh', 1769476082, 'AZ@gmail.com', 'AZ.com', 0, './image_db/bus.png'),
(14, 'FF Filling Station', 14, 1, '9 Asparagus Lane,Agargaon,Dhaka,Bangladesh', 1772208151, 'FF@outlook.com', 'FF.com', 0, './image_db/filling.png'),
(15, 'JH Library', 15, 1, '203 Olive Court,Agargaon,Dhaka,Bangladesh', 1701349905, 'JH@yahoo.com', 'JH.com', 0, './image_db/library.png'),
(16, 'CDF Restaurant', 16, 1, '9037 E. Branch St.,Agargaon,Dhaka,Bangladesh', 1802768705, 'CDF@gmail.com', 'CDF.com', 0, './image_db/restaurant.png'),
(17, 'MN Super Market', 17, 1, '561 Campfire Avenue,Agargaon,Dhaka,Bangladesh', 1810767759, 'MN@outlook.com', 'MN.com', 0, './image_db/market.png'),
(18, 'ALL1 Pharmacy', 18, 1, '7324 Fifth Drive,Agargaon,Dhaka,Bangladesh', 1785913656, 'ALL1@yahoo.com', 'ALL1.com', 0, './image_db/pharmacy.png'),
(19, 'PP Post Office', 19, 1, '9199 University St.,Agargaon,Dhaka,Bangladesh', 1840955848, 'PP@gmail.com', 'PP.com', 0, './image_db/post.png'),
(20, 'MNO Stadium', 20, 1, '5 Princeton St.,Agargaon,Dhaka,Bangladesh', 1884454278, 'MNO@outlook.com', 'MNO.com', 0, './image_db/stadium.png'),
(21, 'PUR Museum', 21, 1, '7969 SE. Sunbeam Lane,Agargaon,Dhaka,Bangladesh', 1849158771, 'PUR@yahoo.com', 'PUR.com', 0, './image_db/museum.png'),
(22, 'XYZ ATM Booth', 1, 2, 'South Park,Badda,Dhaka,Bangladesh', 1848662593, 'PQ@outlook.com', 'PQ.com', 0, './image_db/atm.png'),
(23, 'SS Bank Limited', 2, 2, '991 Durham Road,Badda,Dhaka,Bangladesh', 1874750485, 'SS@outlook.com', 'SS.com', 0, './image_db/bank.png'),
(24, 'PX Hospital', 3, 2, '9225 Pacific Road,Badda,Dhaka,Bangladesh', 1826498420, 'PX@yahoo.com', 'PX.com', 0, './image_db/hospital.png'),
(25, 'PQR Government Office', 4, 2, '9037 E. Branch St.,Badda,Dhaka,Bangladesh', 1729369248, 'PQR@gmail.com', 'PQR.com', 0, './image_db/government.png'),
(26, 'PQ Hotel', 5, 2, '9 Asparagus Lane,Badda,Dhaka,Bangladesh', 1782766482, 'PQ@outlook.com', 'PQ.com', 0, './image_db/hotel.png'),
(27, 'HLP University', 6, 2, '89 Police Circle,Badda,Dhaka,Bangladesha', 1821160679, 'HLP@yahoo.com', 'HLP.com', 0, './image_db/university.png'),
(28, 'HLLP School', 7, 2, '8686 Tagore Avenue,Badda,Dhaka,Bangladesh', 1742048012, 'HLLP@gmail.com', 'HLLP.com', 0, './image_db/school.png'),
(29, 'BS Airport', 8, 2, '8000 Queen Ave.,Badda,Dhaka,Bangladesh', 1818438217, 'BS@outlook.com', 'BS.com', 0, './image_db/airport.png'),
(30, 'Bank1 Shopping Mall', 9, 2, '77 High Noon Street,Badda,Dhaka,Bangladesh', 1822933325, 'Bank1@yahoo.com', 'Bank1.com', 0, './image_db/mall.png'),
(31, 'ABCD Fire Station', 10, 2, '73 Ali Road,Badda,Dhaka,Bangladesh', 1775273613, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/fire.png'),
(32, 'ALL1 Police Staion', 11, 2, '561 Campfire Avenue,Badda,Dhaka,Bangladesh', 1733867266, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/police.png'),
(33, 'AZ Train Staion', 12, 2, '410 Kazi St.,Badda,Dhaka,Bangladesh', 1877810351, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/train.png'),
(34, 'CDF Bus Station', 13, 2, '401 Kazi St.,Badda,Dhaka,Bangladesh', 1738784331, 'CDF@gmail.com', 'CDF.com', 0, './image_db/bus.png'),
(35, 'CHR Filling Station', 14, 2, '39 Malek Avenue,Badda,Dhaka,Bangladesh', 1874134167, 'CHR@outlook.com', 'CHR.com', 0, './image_db/filling.png'),
(36, 'FF Library', 15, 2, '273 Grant Street,Badda,Dhaka,Bangladesh', 1797234600, 'FF@yahoo.com', 'FF.com', 0, './image_db/library.png'),
(37, 'JH Restaurant', 16, 2, '203 Olive Court,Badda,Dhaka,Bangladesh', 1709794339, 'JH@gmail.com', 'JH.com', 0, './image_db/restaurant.png'),
(38, 'MN Super Market', 17, 2, '10 Hazi Danesh,Badda,Dhaka,Bangladesh', 1766343099, 'MN@outlook.com', 'MN.com', 0, './image_db/market.png'),
(39, 'MNO Pharmacy', 18, 2, '7324 Fifth Drive,Badda,Dhaka,Bangladesh', 1859105819, 'MNO@yahoo.com', 'MNO.com', 0, './image_db/pharmacy.png'),
(40, 'PP Post Office', 19, 2, '9199 University St.,Badda,Dhaka,Bangladesh', 1702231220, 'PP@gmail.com', 'PP.com', 0, './image_db/post.png'),
(41, 'PUR Stadium', 20, 2, '5 Princeton St.,Badda,Dhaka,Bangladesh', 1807572828, 'PUR@outlook.com', 'PUR.com', 0, './image_db/stadium.png'),
(42, 'XTD Museum', 21, 2, '7969 SE. Sunbeam Lane,Badda,Dhaka,Bangladesh', 1749965332, 'XTD@yahoo.com', 'XTD.com', 0, './image_db/museum.png'),
(43, 'ABCD ATM Booth', 1, 3, 'South Park,Bailey Road,Dhaka,Bangladesh', 1823664981, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(44, 'ALL1 Bank Limited', 2, 3, '991 Durham Road,Bailey Road,Dhaka,Bangladesh', 1868728653, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(45, 'AZ Hospital', 3, 3, '9225 Pacific Road,Bailey Road,Dhaka,Bangladesh', 1895693323, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(46, 'ASD Government Office', 4, 3, '9037 E. Branch St.,Bailey Road,Dhaka,Bangladesh', 1711352130, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(47, 'BS Hotel', 5, 3, '9 Asparagus Lane,Bailey Road,Dhaka,Bangladesh', 1866843056, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(48, 'CDF University', 6, 3, '89 Police Circle,Bailey Road,Dhaka,Bangladesh', 1800496864, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(49, 'CHR School', 7, 3, '8686 Tagore Avenue,Bailey Road,Dhaka,Bangladesh', 1851313210, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(50, 'FF Airport', 8, 3, '8000 Queen Ave.,Bailey Road,Dhaka,Bangladesh', 1893285127, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(51, 'HLLP Shopping Mall', 9, 3, '77 High Noon Street,Bailey Road,Dhaka,Bangladesh', 1854183866, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(52, 'HLP Fire Station', 10, 3, '73 Ali Road,Bailey Road,Dhaka,Bangladesh', 1781978228, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(53, 'JH Police Staion', 11, 3, '561 Campfire Avenue,Bailey Road,Dhaka,Bangladesh', 1826171324, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(54, 'MN Train Staion', 12, 3, '410 Kazi St.,Bailey Road,Dhaka,Bangladesh', 1734820497, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(55, 'MNO Bus Station', 13, 3, '401 Kazi St.,Bailey Road,Dhaka,Bangladesh', 1824465593, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(56, 'PP Filling Station', 14, 3, '39 Malek Avenue,Bailey Road,Dhaka,Bangladesh', 1726321326, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(57, 'PQ Library', 15, 3, '273 Grant Street,Bailey Road,Dhaka,Bangladesh', 1872676968, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(58, 'PQR Restaurant', 16, 3, '203 Olive Court,Bailey Road,Dhaka,Bangladesh', 1714194770, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(59, 'PUR Super Market', 17, 3, '10 Hazi Danesh,Bailey Road,Dhaka,Bangladesh', 1852803801, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(60, 'PX Pharmacy', 18, 3, '7324 Fifth Drive,Bailey Road,Dhaka,Bangladesh', 1734372614, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(61, 'SS Post Office', 19, 3, '9199 University St.,Bailey Road,Dhaka,Bangladesh', 1844163020, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(62, 'XTD Stadium', 20, 3, '5 Princeton St.,Bailey Road,Dhaka,Bangladesh', 1762895174, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(63, 'XYZ Museum', 21, 3, '7969 SE. Sunbeam Lane,Bailey Road,Dhaka,Bangladesh', 1738100072, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(64, 'FF ATM Booth', 1, 4, 'South Park,Banani,Dhaka,Bangladesh', 1737599023, 'FF@gmail.com', 'FF.com', 0, './image_db/atm.png'),
(65, 'HLLP Bank Limited', 2, 4, '991 Durham Road,Banani,Dhaka,Bangladesh', 1702183891, 'HLLP@outlook.com', 'HLLP.com', 0, './image_db/bank.png'),
(66, 'HLP Hospital', 3, 4, '9225 Pacific Road,Banani,Dhaka,Bangladesh', 1719095519, 'HLP@yahoo.com', 'HLP.com', 0, './image_db/hospital.png'),
(67, 'JH Government Office', 4, 4, '9037 E. Branch St.,Banani,Dhaka,Bangladesh', 1775707254, 'JH@gmail.com', 'JH.com', 0, './image_db/government.png'),
(68, 'XTD Hotel', 5, 4, '9 Asparagus Lane,Banani,Dhaka,Bangladesh', 1709457357, 'XTD@outlook.com', 'XTD.com', 0, './image_db/hotel.png'),
(69, 'XYZ University', 6, 4, '89 Police Circle,Banani,Dhaka,Bangladesh', 1754512887, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/university.png'),
(70, 'CHR School', 7, 4, '8686 Tagore Avenue,Banani,Dhaka,Bangladesh', 1706093671, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(71, 'CDF Airport', 8, 4, '8000 Queen Ave.,Banani,Dhaka,Bangladesh', 1778158654, 'CDF@outlook.com', 'CDF.com', 0, './image_db/airport.png'),
(72, 'BS Shopping Mall', 9, 4, '77 High Noon Street,Banani,Dhaka,Bangladesh', 1789521101, 'BS@yahoo.com', 'BS.com', 0, './image_db/mall.png'),
(73, 'AZ Fire Station', 10, 4, '73 Ali Road,Banani,Dhaka,Bangladesh', 1888480143, 'AZ@gmail.com', 'AZ.com', 0, './image_db/fire.png'),
(74, 'ASD Police Staion', 11, 4, '561 Campfire Avenue,Banani,Dhaka,Bangladesh', 1821552381, 'ASD@outlook.com', 'ASD.com', 0, './image_db/police.png'),
(75, 'ALL1 Train Staion', 12, 4, '410 Kazi St.,Banani,Dhaka,Bangladesh', 1884675125, 'ALL1@yahoo.com', 'ALL1.com', 0, './image_db/train.png'),
(76, 'ABCD Bus Station', 13, 4, '401 Kazi St.,Banani,Dhaka,Bangladesh', 1834698280, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/bus.png'),
(77, 'SS Filling Station', 14, 4, '39 Malek Avenue,Banani,Dhaka,Bangladesh', 1892882524, 'SS@outlook.com', 'SS.com', 0, './image_db/filling.png'),
(78, 'PX Library', 15, 4, '273 Grant Street,Banani,Dhaka,Bangladesh', 1807123333, 'PX@yahoo.com', 'PX.com', 0, './image_db/library.png'),
(79, 'PUR Restaurant', 16, 4, '203 Olive Court,Banani,Dhaka,Bangladesh', 1843348928, 'PUR@gmail.com', 'PUR.com', 0, './image_db/restaurant.png'),
(80, 'PQR Super Market', 17, 4, '10 Hazi Danesh,Banani,Dhaka,Bangladesh', 1701784446, 'PQR@outlook.com', 'PQR.com', 0, './image_db/market.png'),
(81, 'PQ Pharmacy', 18, 4, '7324 Fifth Drive,Banani,Dhaka,Bangladesh', 1708695914, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/pharmacy.png'),
(82, 'PP Post Office', 19, 4, '9199 University St.,Banani,Dhaka,Bangladesh', 1714855867, 'PP@gmail.com', 'PP.com', 0, './image_db/post.png'),
(83, 'MNO Stadium', 20, 4, '5 Princeton St.,Banani,Dhaka,Bangladesh', 1823719042, 'MNO@outlook.com', 'MNO.com', 0, './image_db/stadium.png'),
(84, 'MN Museum', 21, 4, '7969 SE. Sunbeam Lane,Banani,Dhaka,Bangladesh', 1725242842, 'MN@yahoo.com', 'MN.com', 0, './image_db/museum.png'),
(85, 'ABCD ATM Booth', 1, 5, 'South Park,Banani dohs,Dhaka,Bangladesh', 1777827073, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(86, 'ALL1 Bank Limited', 2, 5, '991 Durham Road,Banani dohs,Dhaka,Bangladesh', 1705704343, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(87, 'AZ Hospital', 3, 5, '9225 Pacific Road,Banani dohs,Dhaka,Bangladesh', 1839237931, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(88, 'ASD Government Office', 4, 5, '9037 E. Branch St.,Banani dohs,Dhaka,Bangladesh', 1741391630, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(89, 'BS Hotel', 5, 5, '9 Asparagus Lane,Banani dohs,Dhaka,Bangladesh', 1842535112, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(90, 'CDF University', 6, 5, '89 Police Circle,Banani dohs,Dhaka,Bangladesh', 1738690199, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(91, 'CHR School', 7, 5, '8686 Tagore Avenue,Banani dohs,Dhaka,Bangladesh', 1717784142, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(92, 'FF Airport', 8, 5, '8000 Queen Ave.,Banani dohs,Dhaka,Bangladesh', 1815686720, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(93, 'HLLP Shopping Mall', 9, 5, '77 High Noon Street,Banani dohs,Dhaka,Bangladesh', 1881865453, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(94, 'HLP Fire Station', 10, 5, '73 Ali Road,Banani dohs,Dhaka,Bangladesh', 1819096215, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(95, 'JH Police Staion', 11, 5, '561 Campfire Avenue,Banani dohs,Dhaka,Bangladesh', 1750404252, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(96, 'MN Train Staion', 12, 5, '410 Kazi St.,Banani dohs,Dhaka,Bangladesh', 1805909472, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(97, 'MNO Bus Station', 13, 5, '401 Kazi St.,Banani dohs,Dhaka,Bangladesh', 1838468900, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(98, 'PP Filling Station', 14, 5, '39 Malek Avenue,Banani dohs,Dhaka,Bangladesh', 1814409537, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(99, 'PQ Library', 15, 5, '273 Grant Street,Banani dohs,Dhaka,Bangladesh', 1843594493, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(100, 'PQR Restaurant', 16, 5, '203 Olive Court,Banani dohs,Dhaka,Bangladesh', 1793966861, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(101, 'PUR Super Market', 17, 5, '10 Hazi Danesh,Banani dohs,Dhaka,Bangladesh', 1872842711, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(102, 'PX Pharmacy', 18, 5, '7324 Fifth Drive,Banani dohs,Dhaka,Bangladesh', 1879228019, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(103, 'SS Post Office', 19, 5, '9199 University St.,Banani dohs,Dhaka,Bangladesh', 1795821840, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(104, 'XTD Stadium', 20, 5, '5 Princeton St.,Banani dohs,Dhaka,Bangladesh', 1734073563, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(105, 'XYZ Museum', 21, 5, '7969 SE. Sunbeam Lane,Banani dohs,Dhaka,Bangladesh', 1784525475, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(106, 'ABCD ATM Booth', 1, 8, 'South Park,Baridhara,Dhaka,Bangladesh', 1896836894, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(107, 'ALL1 Bank Limited', 2, 8, '991 Durham Road,Baridhara,Dhaka,Bangladesh', 1745980424, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(108, 'AZ Hospital', 3, 8, '9225 Pacific Road,Baridhara,Dhaka,Bangladesh', 1839640261, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(109, 'ASD Government Office', 4, 8, '9037 E. Branch St.,Baridhara,Dhaka,Bangladesh', 1814562707, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(110, 'BS Hotel', 5, 8, '9 Asparagus Lane,Baridhara,Dhaka,Bangladesh', 1874818878, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(111, 'CDF University', 6, 8, '89 Police Circle,Baridhara,Dhaka,Bangladesh', 1727177746, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(112, 'CHR School', 7, 8, '8686 Tagore Avenue,Baridhara,Dhaka,Bangladesh', 1796113619, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(113, 'FF Airport', 8, 8, '8000 Queen Ave.,Baridhara,Dhaka,Bangladesh', 1830900640, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(114, 'HLLP Shopping Mall', 9, 8, '77 High Noon Street,Baridhara,Dhaka,Bangladesh', 1740651425, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(115, 'HLP Fire Station', 10, 8, '73 Ali Road,Baridhara,Dhaka,Bangladesh', 1881615677, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(116, 'JH Police Staion', 11, 8, '561 Campfire Avenue,Baridhara,Dhaka,Bangladesh', 1872743967, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(117, 'MN Train Staion', 12, 8, '410 Kazi St.,Baridhara,Dhaka,Bangladesh', 1796855624, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(118, 'MNO Bus Station', 13, 8, '401 Kazi St.,Baridhara,Dhaka,Bangladesh', 1732869307, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(119, 'PP Filling Station', 14, 8, '39 Malek Avenue,Baridhara,Dhaka,Bangladesh', 1893628268, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(120, 'PQ Library', 15, 8, '273 Grant Street,Baridhara,Dhaka,Bangladesh', 1746311677, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(121, 'PQR Restaurant', 16, 8, '203 Olive Court,Baridhara,Dhaka,Bangladesh', 1743482467, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(122, 'PUR Super Market', 17, 8, '10 Hazi Danesh,Baridhara,Dhaka,Bangladesh', 1888705963, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(123, 'PX Pharmacy', 18, 8, '7324 Fifth Drive,Baridhara,Dhaka,Bangladesh', 1827933978, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(124, 'SS Post Office', 19, 8, '9199 University St.,Baridhara,Dhaka,Bangladesh', 1789126520, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(125, 'XTD Stadium', 20, 8, '5 Princeton St.,Baridhara,Dhaka,Bangladesh', 1768850217, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(126, 'XYZ Museum', 21, 8, '7969 SE. Sunbeam Lane,Baridhara,Dhaka,Bangladesh', 1844293245, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(127, 'FF ATM Booth', 1, 7, 'South Park,Bangshal,Dhaka,Bangladesh', 1807070715, 'FF@gmail.com', 'FF.com', 0, './image_db/atm.png'),
(128, 'HLLP Bank Limited', 2, 7, '991 Durham Road,Bangshal,Dhaka,Bangladesh', 1855693095, 'HLLP@outlook.com', 'HLLP.com', 0, './image_db/bank.png'),
(129, 'HLP Hospital', 3, 7, '9225 Pacific Road,Bangshal,Dhaka,Bangladesh', 1876505911, 'HLP@yahoo.com', 'HLP.com', 0, './image_db/hospital.png'),
(130, 'JH Government Office', 4, 7, '9037 E. Branch St.,Bangshal,Dhaka,Bangladesh', 1718620685, 'JH@gmail.com', 'JH.com', 0, './image_db/government.png'),
(131, 'XTD Hotel', 5, 7, '9 Asparagus Lane,Bangshal,Dhaka,Bangladesh', 1854819258, 'XTD@outlook.com', 'XTD.com', 0, './image_db/hotel.png'),
(132, 'XYZ University', 6, 7, '89 Police Circle,Bangshal,Dhaka,Bangladesh', 1754776223, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/university.png'),
(133, 'CHR School', 7, 7, '8686 Tagore Avenue,Bangshal,Dhaka,Bangladesh', 1825604663, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(134, 'CDF Airport', 8, 7, '8000 Queen Ave.,Bangshal,Dhaka,Bangladesh', 1728034054, 'CDF@outlook.com', 'CDF.com', 0, './image_db/airport.png'),
(135, 'BS Shopping Mall', 9, 7, '77 High Noon Street,Bangshal,Dhaka,Bangladesh', 1825845939, 'BS@yahoo.com', 'BS.com', 0, './image_db/mall.png'),
(136, 'AZ Fire Station', 10, 7, '73 Ali Road,Bangshal,Dhaka,Bangladesh', 1782768012, 'AZ@gmail.com', 'AZ.com', 0, './image_db/fire.png'),
(137, 'ASD Police Staion', 11, 7, '561 Campfire Avenue,Bangshal,Dhaka,Bangladesh', 1758552119, 'ASD@outlook.com', 'ASD.com', 0, './image_db/police.png'),
(138, 'ALL1 Train Staion', 12, 7, '410 Kazi St.,Bangshal,Dhaka,Bangladesh', 1799924487, 'ALL1@yahoo.com', 'ALL1.com', 0, './image_db/train.png'),
(139, 'ABCD Bus Station', 13, 7, '401 Kazi St.,Bangshal,Dhaka,Bangladesh', 1719474449, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/bus.png'),
(140, 'SS Filling Station', 14, 7, '39 Malek Avenue,Bangshal,Dhaka,Bangladesh', 1871692754, 'SS@outlook.com', 'SS.com', 0, './image_db/filling.png'),
(141, 'PX Library', 15, 7, '273 Grant Street,Bangshal,Dhaka,Bangladesh', 1718536310, 'PX@yahoo.com', 'PX.com', 0, './image_db/library.png'),
(142, 'PUR Restaurant', 16, 7, '203 Olive Court,Bangshal,Dhaka,Bangladesh', 1731968791, 'PUR@gmail.com', 'PUR.com', 0, './image_db/restaurant.png'),
(143, 'PQR Super Market', 17, 7, '10 Hazi Danesh,Bangshal,Dhaka,Bangladesh', 1844027209, 'PQR@outlook.com', 'PQR.com', 0, './image_db/market.png'),
(144, 'PQ Pharmacy', 18, 7, '7324 Fifth Drive,Bangshal,Dhaka,Bangladesh', 1764445622, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/pharmacy.png'),
(145, 'PP Post Office', 19, 7, '9199 University St.,Bangshal,Dhaka,Bangladesh', 1888200262, 'PP@gmail.com', 'PP.com', 0, './image_db/post.png'),
(146, 'MNO Stadium', 20, 7, '5 Princeton St.,Bangshal,Dhaka,Bangladesh', 1892433782, 'MNO@outlook.com', 'MNO.com', 0, './image_db/stadium.png'),
(147, 'MN Museum', 21, 7, '7969 SE. Sunbeam Lane,Bangshal,Dhaka,Bangladesh', 1892361197, 'MN@yahoo.com', 'MN.com', 0, './image_db/museum.png'),
(148, 'ABCD ATM Booth', 1, 6, 'South Park,Bandar,Dhaka,Bangladesh', 1751279832, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(149, 'ALL1 Bank Limited', 2, 6, '991 Durham Road,Bandar,Dhaka,Bangladesh', 1722540105, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(150, 'AZ Hospital', 3, 6, '9225 Pacific Road,Bandar,Dhaka,Bangladesh', 1836829469, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(151, 'ASD Government Office', 4, 6, '9037 E. Branch St.,Bandar,Dhaka,Bangladesh', 1708141001, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(152, 'BS Hotel', 5, 6, '9 Asparagus Lane,Bandar,Dhaka,Bangladesh', 1861343259, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(153, 'CDF University', 6, 6, '89 Police Circle,Bandar,Dhaka,Bangladesh', 1700909496, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(154, 'CHR School', 7, 6, '8686 Tagore Avenue,Bandar,Dhaka,Bangladesh', 1882390193, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(155, 'FF Airport', 8, 6, '8000 Queen Ave.,Bandar,Dhaka,Bangladesh', 1727610498, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(156, 'HLLP Shopping Mall', 9, 6, '77 High Noon Street,Bandar,Dhaka,Bangladesh', 1897519610, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(157, 'HLP Fire Station', 10, 6, '73 Ali Road,Bandar,Dhaka,Bangladesh', 1784167827, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(158, 'JH Police Staion', 11, 6, '561 Campfire Avenue,Bandar,Dhaka,Bangladesh', 1738259971, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(159, 'MN Train Staion', 12, 6, '410 Kazi St.,Bandar,Dhaka,Bangladesh', 1793933688, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(160, 'MNO Bus Station', 13, 6, '401 Kazi St.,Bandar,Dhaka,Bangladesh', 1701171115, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(161, 'PP Filling Station', 14, 6, '39 Malek Avenue,Bandar,Dhaka,Bangladesh', 1771586335, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(162, 'PQ Library', 15, 6, '273 Grant Street,Bandar,Dhaka,Bangladesh', 1788433241, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(163, 'PQR Restaurant', 16, 6, '203 Olive Court,Bandar,Dhaka,Bangladesh', 1862340834, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(164, 'PUR Super Market', 17, 6, '10 Hazi Danesh,Bandar,Dhaka,Bangladesh', 1872609954, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(165, 'PX Pharmacy', 18, 6, '7324 Fifth Drive,Bandar,Dhaka,Bangladesh', 1865811256, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(166, 'SS Post Office', 19, 6, '9199 University St.,Bandar,Dhaka,Bangladesh', 1744587857, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(167, 'XTD Stadium', 20, 6, '5 Princeton St.,Bandar,Dhaka,Bangladesh', 1705842795, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(168, 'XYZ Museum', 21, 6, '7969 SE. Sunbeam Lane,Bandar,Dhaka,Bangladesh', 1888803809, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(169, 'ABCD ATM Booth', 1, 9, 'South Park,Baridhara dohs,Dhaka,Bangladesh', 1869675787, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(170, 'ALL1 Bank Limited', 2, 9, '991 Durham Road,Baridhara dohs,Dhaka,Bangladesh', 1846404455, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(171, 'AZ Hospital', 3, 9, '9225 Pacific Road,Baridhara dohs,Dhaka,Bangladesh', 1774749018, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(172, 'ASD Government Office', 4, 9, '9037 E. Branch St.,Baridhara dohs,Dhaka,Bangladesh', 1711700673, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(173, 'BS Hotel', 5, 9, '9 Asparagus Lane,Baridhara dohs,Dhaka,Bangladesh', 1787149871, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(174, 'CDF University', 6, 9, '89 Police Circle,Baridhara dohs,Dhaka,Bangladesh', 1808016814, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(175, 'CHR School', 7, 9, '8686 Tagore Avenue,Baridhara dohs,Dhaka,Bangladesh', 1820618298, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(176, 'FF Airport', 8, 9, '8000 Queen Ave.,Baridhara dohs,Dhaka,Bangladesh', 1894776853, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(177, 'HLLP Shopping Mall', 9, 9, '77 High Noon Street,Baridhara dohs,Dhaka,Bangladesh', 1861495565, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(178, 'HLP Fire Station', 10, 9, '73 Ali Road,Baridhara dohs,Dhaka,Bangladesh', 1758644885, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(179, 'JH Police Staion', 11, 9, '561 Campfire Avenue,Baridhara dohs,Dhaka,Bangladesh', 1724477406, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(180, 'MN Train Staion', 12, 9, '410 Kazi St.,Baridhara dohs,Dhaka,Bangladesh', 1712903170, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(181, 'MNO Bus Station', 13, 9, '401 Kazi St.,Baridhara dohs,Dhaka,Bangladesh', 1846868601, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(182, 'PP Filling Station', 14, 9, '39 Malek Avenue,Baridhara dohs,Dhaka,Bangladesh', 1831805043, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(183, 'PQ Library', 15, 9, '273 Grant Street,Baridhara dohs,Dhaka,Bangladesh', 1707920340, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(184, 'PQR Restaurant', 16, 9, '203 Olive Court,Baridhara dohs,Dhaka,Bangladesh', 1762526906, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(185, 'PUR Super Market', 17, 9, '10 Hazi Danesh,Baridhara dohs,Dhaka,Bangladesh', 1858373335, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(186, 'PX Pharmacy', 18, 9, '7324 Fifth Drive,Baridhara dohs,Dhaka,Bangladesh', 1766711531, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(187, 'SS Post Office', 19, 9, '9199 University St.,Baridhara dohs,Dhaka,Bangladesh', 1776395947, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(188, 'XTD Stadium', 20, 9, '5 Princeton St.,Baridhara dohs,Dhaka,Bangladesh', 1747417473, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(189, 'XYZ Museum', 21, 9, '7969 SE. Sunbeam Lane,Baridhara dohs,Dhaka,Bangladesh', 1830071820, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(190, 'FF ATM Booth', 1, 10, 'South Park,Basabo,Dhaka,Bangladesh', 1740969280, 'FF@gmail.com', 'FF.com', 0, './image_db/atm.png'),
(191, 'HLLP Bank Limited', 2, 10, '991 Durham Road,Basabo,Dhaka,Bangladesh', 1874452647, 'HLLP@outlook.com', 'HLLP.com', 0, './image_db/bank.png'),
(192, 'HLP Hospital', 3, 10, '9225 Pacific Road,Basabo,Dhaka,Bangladesh', 1726767099, 'HLP@yahoo.com', 'HLP.com', 0, './image_db/hospital.png'),
(193, 'JH Government Office', 4, 10, '9037 E. Branch St.,Basabo,Dhaka,Bangladesh', 1710215767, 'JH@gmail.com', 'JH.com', 0, './image_db/government.png'),
(194, 'XTD Hotel', 5, 10, '9 Asparagus Lane,Basabo,Dhaka,Bangladesh', 1883352972, 'XTD@outlook.com', 'XTD.com', 0, './image_db/hotel.png'),
(195, 'XYZ University', 6, 10, '89 Police Circle,Basabo,Dhaka,Bangladesh', 1861381151, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/university.png'),
(196, 'CHR School', 7, 10, '8686 Tagore Avenue,Basabo,Dhaka,Bangladesh', 1731936625, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(197, 'CDF Airport', 8, 10, '8000 Queen Ave.,Basabo,Dhaka,Bangladesh', 1878553739, 'CDF@outlook.com', 'CDF.com', 0, './image_db/airport.png'),
(198, 'BS Shopping Mall', 9, 10, '77 High Noon Street,Basabo,Dhaka,Bangladesh', 1811821610, 'BS@yahoo.com', 'BS.com', 0, './image_db/mall.png'),
(199, 'AZ Fire Station', 10, 10, '73 Ali Road,Basabo,Dhaka,Bangladesh', 1865518064, 'AZ@gmail.com', 'AZ.com', 0, './image_db/fire.png'),
(200, 'ASD Police Staion', 11, 10, '561 Campfire Avenue,Basabo,Dhaka,Bangladesh', 1757258177, 'ASD@outlook.com', 'ASD.com', 0, './image_db/police.png'),
(201, 'ALL1 Train Staion', 12, 10, '410 Kazi St.,Basabo,Dhaka,Bangladesh', 1778049929, 'ALL1@yahoo.com', 'ALL1.com', 0, './image_db/train.png'),
(202, 'ABCD Bus Station', 13, 10, '401 Kazi St.,Basabo,Dhaka,Bangladesh', 1894161980, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/bus.png'),
(203, 'SS Filling Station', 14, 10, '39 Malek Avenue,Basabo,Dhaka,Bangladesh', 1768070483, 'SS@outlook.com', 'SS.com', 0, './image_db/filling.png'),
(204, 'PX Library', 15, 10, '273 Grant Street,Basabo,Dhaka,Bangladesh', 1816804655, 'PX@yahoo.com', 'PX.com', 0, './image_db/library.png'),
(205, 'PUR Restaurant', 16, 10, '203 Olive Court,Basabo,Dhaka,Bangladesh', 1860090562, 'PUR@gmail.com', 'PUR.com', 0, './image_db/restaurant.png'),
(206, 'PQR Super Market', 17, 10, '10 Hazi Danesh,Basabo,Dhaka,Bangladesh', 1703135036, 'PQR@outlook.com', 'PQR.com', 0, './image_db/market.png'),
(207, 'PQ Pharmacy', 18, 10, '7324 Fifth Drive,Basabo,Dhaka,Bangladesh', 1890864171, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/pharmacy.png'),
(208, 'PP Post Office', 19, 10, '9199 University St.,Basabo,Dhaka,Bangladesh', 1827135710, 'PP@gmail.com', 'PP.com', 0, './image_db/post.png'),
(209, 'MNO Stadium', 20, 10, '5 Princeton St.,Basabo,Dhaka,Bangladesh', 1732516623, 'MNO@outlook.com', 'MNO.com', 0, './image_db/stadium.png'),
(210, 'MN Museum', 21, 10, '7969 SE. Sunbeam Lane,Basabo,Dhaka,Bangladesh', 1800204046, 'MN@yahoo.com', 'MN.com', 0, './image_db/museum.png'),
(211, 'ABCD ATM Booth', 1, 11, 'South Park,Bashundhara,Dhaka,Bangladesh', 1757017592, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(212, 'ALL1 Bank Limited', 2, 11, '991 Durham Road,Bashundhara,Dhaka,Bangladesh', 1772157440, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(213, 'AZ Hospital', 3, 11, '9225 Pacific Road,Bashundhara,Dhaka,Bangladesh', 1785003405, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(214, 'ASD Government Office', 4, 11, '9037 E. Branch St.,Bashundhara,Dhaka,Bangladesh', 1873187151, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(215, 'BS Hotel', 5, 11, '9 Asparagus Lane,Bashundhara,Dhaka,Bangladesh', 1871589484, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(216, 'CDF University', 6, 11, '89 Police Circle,Bashundhara,Dhaka,Bangladesh', 1777131246, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(217, 'CHR School', 7, 11, '8686 Tagore Avenue,Bashundhara,Dhaka,Bangladesh', 1893695733, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(218, 'FF Airport', 8, 11, '8000 Queen Ave.,Bashundhara,Dhaka,Bangladesh', 1794078578, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(219, 'HLLP Shopping Mall', 9, 11, '77 High Noon Street,Bashundhara,Dhaka,Bangladesh', 1829967304, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(220, 'HLP Fire Station', 10, 11, '73 Ali Road,Bashundhara,Dhaka,Bangladesh', 1766790280, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(221, 'JH Police Staion', 11, 11, '561 Campfire Avenue,Bashundhara,Dhaka,Bangladesh', 1848045884, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(222, 'MN Train Staion', 12, 11, '410 Kazi St.,Bashundhara,Dhaka,Bangladesh', 1755069690, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(223, 'MNO Bus Station', 13, 11, '401 Kazi St.,Bashundhara,Dhaka,Bangladesh', 1812423265, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(224, 'PP Filling Station', 14, 11, '39 Malek Avenue,Bashundhara,Dhaka,Bangladesh', 1866971742, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(225, 'PQ Library', 15, 11, '273 Grant Street,Bashundhara,Dhaka,Bangladesh', 1822453455, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(226, 'PQR Restaurant', 16, 11, '203 Olive Court,Bashundhara,Dhaka,Bangladesh', 1868937454, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(227, 'PUR Super Market', 17, 11, '10 Hazi Danesh,Bashundhara,Dhaka,Bangladesh', 1873601102, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(228, 'PX Pharmacy', 18, 11, '7324 Fifth Drive,Bashundhara,Dhaka,Bangladesh', 1738635590, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(229, 'SS Post Office', 19, 11, '9199 University St.,Bashundhara,Dhaka,Bangladesh', 1722066102, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(230, 'XTD Stadium', 20, 11, '5 Princeton St.,Bashundhara,Dhaka,Bangladesh', 1838595897, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(231, 'XYZ Museum', 21, 11, '7969 SE. Sunbeam Lane,Bashundhara,Dhaka,Bangladesh', 1828118443, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(232, 'ABCD ATM Booth', 1, 14, 'South Park,Cantonment,Dhaka,Bangladesh', 1706819727, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(233, 'ALL1 Bank Limited', 2, 14, '991 Durham Road,Cantonment,Dhaka,Bangladesh', 1855332684, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(234, 'AZ Hospital', 3, 14, '9225 Pacific Road,Cantonment,Dhaka,Bangladesh', 1716575725, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(235, 'ASD Government Office', 4, 14, '9037 E. Branch St.,Cantonment,Dhaka,Bangladesh', 1766444211, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(236, 'BS Hotel', 5, 14, '9 Asparagus Lane,Cantonment,Dhaka,Bangladesh', 1744765569, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(237, 'CDF University', 6, 14, '89 Police Circle,Cantonment,Dhaka,Bangladesh', 1725120786, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(238, 'CHR School', 7, 14, '8686 Tagore Avenue,Cantonment,Dhaka,Bangladesh', 1856812024, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(239, 'FF Airport', 8, 14, '8000 Queen Ave.,Cantonment,Dhaka,Bangladesh', 1770228817, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(240, 'HLLP Shopping Mall', 9, 14, '77 High Noon Street,Cantonment,Dhaka,Bangladesh', 1704578667, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(241, 'HLP Fire Station', 10, 14, '73 Ali Road,Cantonment,Dhaka,Bangladesh', 1776454829, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(242, 'JH Police Staion', 11, 14, '561 Campfire Avenue,Cantonment,Dhaka,Bangladesh', 1816985289, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(243, 'MN Train Staion', 12, 14, '410 Kazi St.,Cantonment,Dhaka,Bangladesh', 1828613624, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(244, 'MNO Bus Station', 13, 14, '401 Kazi St.,Cantonment,Dhaka,Bangladesh', 1797914963, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(245, 'PP Filling Station', 14, 14, '39 Malek Avenue,Cantonment,Dhaka,Bangladesh', 1814675991, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(246, 'PQ Library', 15, 14, '273 Grant Street,Cantonment,Dhaka,Bangladesh', 1824217374, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(247, 'PQR Restaurant', 16, 14, '203 Olive Court,Cantonment,Dhaka,Bangladesh', 1816368003, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(248, 'PUR Super Market', 17, 14, '10 Hazi Danesh,Cantonment,Dhaka,Bangladesh', 1712756378, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(249, 'PX Pharmacy', 18, 14, '7324 Fifth Drive,Cantonment,Dhaka,Bangladesh', 1799905934, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(250, 'SS Post Office', 19, 14, '9199 University St.,Cantonment,Dhaka,Bangladesh', 1804839440, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(251, 'XTD Stadium', 20, 14, '5 Princeton St.,Cantonment,Dhaka,Bangladesh', 1801949541, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(252, 'PQR Museum', 21, 14, '7969 SE. Sunbeam Lane,Cantonment,Dhaka,Bangladesh', 1710802649, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(253, 'FF ATM Booth', 1, 13, 'South Park,Bimanbandar,Dhaka,Bangladesh', 1858855575, 'FF@gmail.com', 'FF.com', 0, './image_db/atm.png'),
(254, 'HLLP Bank Limited', 2, 13, '991 Durham Road,Bimanbandar,Dhaka,Bangladesh', 1881775384, 'HLLP@outlook.com', 'HLLP.com', 0, './image_db/bank.png'),
(255, 'HLP Hospital', 3, 13, '9225 Pacific Road,Bimanbandar,Dhaka,Bangladesh', 1726029660, 'HLP@yahoo.com', 'HLP.com', 0, './image_db/hospital.png'),
(256, 'JH Government Office', 4, 13, '9037 E. Branch St.,Bimanbandar,Dhaka,Bangladesh', 1762319132, 'JH@gmail.com', 'JH.com', 0, './image_db/government.png'),
(257, 'XTD Hotel', 5, 13, '9 Asparagus Lane,Bimanbandar,Dhaka,Bangladesh', 1764793967, 'XTD@outlook.com', 'XTD.com', 0, './image_db/hotel.png'),
(258, 'XYZ University', 6, 13, '89 Police Circle,Bimanbandar,Dhaka,Bangladesh', 1767356779, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/university.png'),
(259, 'CHR School', 7, 13, '8686 Tagore Avenue,Bimanbandar,Dhaka,Bangladesh', 1712023647, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(260, 'CDF Airport', 8, 13, '8000 Queen Ave.,Bimanbandar,Dhaka,Bangladesh', 1837617992, 'CDF@outlook.com', 'CDF.com', 0, './image_db/airport.png'),
(261, 'BS Shopping Mall', 9, 13, '77 High Noon Street,Bimanbandar,Dhaka,Bangladesh', 1704252303, 'BS@yahoo.com', 'BS.com', 0, './image_db/mall.png'),
(262, 'AZ Fire Station', 10, 13, '73 Ali Road,Bimanbandar,Dhaka,Bangladesh', 1847568619, 'AZ@gmail.com', 'AZ.com', 0, './image_db/fire.png'),
(263, 'ASD Police Staion', 11, 13, '561 Campfire Avenue,Bimanbandar,Dhaka,Bangladesh', 1855963664, 'ASD@outlook.com', 'ASD.com', 0, './image_db/police.png'),
(264, 'ALL1 Train Staion', 12, 13, '410 Kazi St.,Bimanbandar,Dhaka,Bangladesh', 1756166898, 'ALL1@yahoo.com', 'ALL1.com', 0, './image_db/train.png'),
(265, 'ABCD Bus Station', 13, 13, '401 Kazi St.,Bimanbandar,Dhaka,Bangladesh', 1789375438, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/bus.png'),
(266, 'SS Filling Station', 14, 13, '39 Malek Avenue,Bimanbandar,Dhaka,Bangladesh', 1794387204, 'SS@outlook.com', 'SS.com', 0, './image_db/filling.png'),
(267, 'PX Library', 15, 13, '273 Grant Street,Bimanbandar,Dhaka,Bangladesh', 1809056002, 'PX@yahoo.com', 'PX.com', 0, './image_db/library.png'),
(268, 'PUR Restaurant', 16, 13, '203 Olive Court,Bimanbandar,Dhaka,Bangladesh', 1850849656, 'PUR@gmail.com', 'PUR.com', 0, './image_db/restaurant.png'),
(269, 'PQR Super Market', 17, 13, '10 Hazi Danesh,Bimanbandar,Dhaka,Bangladesh', 1836406602, 'PQR@outlook.com', 'PQR.com', 0, './image_db/market.png'),
(270, 'PQ Pharmacy', 18, 13, '7324 Fifth Drive,Bimanbandar,Dhaka,Bangladesh', 1847514599, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/pharmacy.png'),
(271, 'PP Post Office', 19, 13, '9199 University St.,Bimanbandar,Dhaka,Bangladesh', 1800121296, 'PP@gmail.com', 'PP.com', 0, './image_db/post.png'),
(272, 'MNO Stadium', 20, 13, '5 Princeton St.,Bimanbandar,Dhaka,Bangladesh', 1741445380, 'MNO@outlook.com', 'MNO.com', 0, './image_db/stadium.png'),
(273, 'MN Museum', 21, 13, '7969 SE. Sunbeam Lane,Bimanbandar,Dhaka,Bangladesh', 1791407967, 'MN@yahoo.com', 'MN.com', 0, './image_db/museum.png'),
(274, 'ABCD ATM Booth', 1, 12, 'South Park,Biman Bandar,Dhaka,Bangladesh', 1848269440, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(275, 'ALL1 Bank Limited', 2, 12, '991 Durham Road,Biman Bandar,Dhaka,Bangladesh', 1767322456, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(276, 'AZ Hospital', 3, 12, '9225 Pacific Road,Biman Bandar,Dhaka,Bangladesh', 1723540554, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(277, 'ASD Government Office', 4, 12, '9037 E. Branch St.,Biman Bandar,Dhaka,Bangladesh', 1778251603, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(278, 'BS Hotel', 5, 12, '9 Asparagus Lane,Biman Bandar,Dhaka,Bangladesh', 1761813116, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(279, 'CDF University', 6, 12, '89 Police Circle,Biman Bandar,Dhaka,Bangladesh', 1824306749, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(280, 'CHR School', 7, 12, '8686 Tagore Avenue,Biman Bandar,Dhaka,Bangladesh', 1850876607, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(281, 'FF Airport', 8, 12, '8000 Queen Ave.,Biman Bandar,Dhaka,Bangladesh', 1836207763, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(282, 'HLLP Shopping Mall', 9, 12, '77 High Noon Street,Biman Bandar,Dhaka,Bangladesh', 1877284035, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(283, 'HLP Fire Station', 10, 12, '73 Ali Road,Biman Bandar,Dhaka,Bangladesh', 1881006685, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(284, 'JH Police Staion', 11, 12, '561 Campfire Avenue,Biman Bandar,Dhaka,Bangladesh', 1815794433, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(285, 'MN Train Staion', 12, 12, '410 Kazi St.,Biman Bandar,Dhaka,Bangladesh', 1880454898, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(286, 'MNO Bus Station', 13, 12, '401 Kazi St.,Biman Bandar,Dhaka,Bangladesh', 1787030808, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(287, 'PP Filling Station', 14, 12, '39 Malek Avenue,Biman Bandar,Dhaka,Bangladesh', 1763832604, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(288, 'PQ Library', 15, 12, '273 Grant Street,Biman Bandar,Dhaka,Bangladesh', 1828201090, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(289, 'PQR Restaurant', 16, 12, '203 Olive Court,Biman Bandar,Dhaka,Bangladesh', 1751363166, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(290, 'PUR Super Market', 17, 12, '10 Hazi Danesh,Biman Bandar,Dhaka,Bangladesh', 1753781335, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(291, 'PX Pharmacy', 18, 12, '7324 Fifth Drive,Biman Bandar,Dhaka,Bangladesh', 1726189137, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(292, 'SS Post Office', 19, 12, '9199 University St.,Biman Bandar,Dhaka,Bangladesh', 1715725283, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(293, 'XTD Stadium', 20, 12, '5 Princeton St.,Biman Bandar,Dhaka,Bangladesh', 1856534292, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(294, 'XYZ Museum', 21, 12, '7969 SE. Sunbeam Lane,Biman Bandar,Dhaka,Bangladesh', 1776624415, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(295, 'ABCD ATM Booth', 1, 15, 'South Park,Chawkbazar,Dhaka,Bangladesh', 1751758678, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(296, 'ALL1 Bank Limited', 2, 15, '991 Durham Road,Chawkbazar,Dhaka,Bangladesh', 1751897147, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(297, 'AZ Hospital', 3, 15, '9225 Pacific Road,Chawkbazar,Dhaka,Bangladesh', 1766439292, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(298, 'ASD Government Office', 4, 15, '9037 E. Branch St.,Chawkbazar,Dhaka,Bangladesh', 1721286328, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(299, 'BS Hotel', 5, 15, '9 Asparagus Lane,Chawkbazar,Dhaka,Bangladesh', 1897351414, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(300, 'CDF University', 6, 15, '89 Police Circle,Chawkbazar,Dhaka,Bangladesh', 1857961576, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(301, 'CHR School', 7, 15, '8686 Tagore Avenue,Chawkbazar,Dhaka,Bangladesh', 1842657761, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(302, 'FF Airport', 8, 15, '8000 Queen Ave.,Chawkbazar,Dhaka,Bangladesh', 1713696339, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(303, 'HLLP Shopping Mall', 9, 15, '77 High Noon Street,Chawkbazar,Dhaka,Bangladesh', 1867092909, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(304, 'HLP Fire Station', 10, 15, '73 Ali Road,Chawkbazar,Dhaka,Bangladesh', 1825089253, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(305, 'JH Police Staion', 11, 15, '561 Campfire Avenue,Chawkbazar,Dhaka,Bangladesh', 1873201058, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(306, 'MN Train Staion', 12, 15, '410 Kazi St.,Chawkbazar,Dhaka,Bangladesh', 1763588986, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(307, 'MNO Bus Station', 13, 15, '401 Kazi St.,Chawkbazar,Dhaka,Bangladesh', 1867689797, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(308, 'PP Filling Station', 14, 15, '39 Malek Avenue,Chawkbazar,Dhaka,Bangladesh', 1754063494, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(309, 'PQ Library', 15, 15, '273 Grant Street,Chawkbazar,Dhaka,Bangladesh', 1797771581, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(310, 'PQR Restaurant', 16, 15, '203 Olive Court,Chawkbazar,Dhaka,Bangladesh', 1730371784, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(311, 'PUR Super Market', 17, 15, '10 Hazi Danesh,Chawkbazar,Dhaka,Bangladesh', 1744259583, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(312, 'PX Pharmacy', 18, 15, '7324 Fifth Drive,Chawkbazar,Dhaka,Bangladesh', 1857473312, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(313, 'SS Post Office', 19, 15, '9199 University St.,Chawkbazar,Dhaka,Bangladesh', 1700598274, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(314, 'XTD Stadium', 20, 15, '5 Princeton St.,Chawkbazar,Dhaka,Bangladesh', 1778884297, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(315, 'U Museum', 21, 15, '7969 SE. Sunbeam Lane,Chawkbazar,Dhaka,Bangladesh', 1805131995, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(316, 'FF ATM Booth', 1, 16, 'South Park,Chawkbazar Model,Dhaka,Bangladesh', 1809957028, 'FF@gmail.com', 'FF.com', 0, './image_db/atm.png'),
(317, 'HLLP Bank Limited', 2, 16, '991 Durham Road,Chawkbazar Model,Dhaka,Bangladesh', 1745114373, 'HLLP@outlook.com', 'HLLP.com', 0, './image_db/bank.png'),
(318, 'HLP Hospital', 3, 16, '9225 Pacific Road,Chawkbazar Model,Dhaka,Bangladesh', 1867736278, 'HLP@yahoo.com', 'HLP.com', 0, './image_db/hospital.png'),
(319, 'JH Government Office', 4, 16, '9037 E. Branch St.,Chawkbazar Model,Dhaka,Bangladesh', 1813869680, 'JH@gmail.com', 'JH.com', 0, './image_db/government.png'),
(320, 'XTD Hotel', 5, 16, '9 Asparagus Lane,Chawkbazar Model,Dhaka,Bangladesh', 1860081453, 'XTD@outlook.com', 'XTD.com', 0, './image_db/hotel.png'),
(321, 'XYZ University', 6, 16, '89 Police Circle,Chawkbazar Model,Dhaka,Bangladesh', 1834612781, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/university.png'),
(322, 'CHR School', 7, 16, '8686 Tagore Avenue,Chawkbazar Model,Dhaka,Bangladesh', 1856518921, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(323, 'CDF Airport', 8, 16, '8000 Queen Ave.,Chawkbazar Model,Dhaka,Bangladesh', 1712580618, 'CDF@outlook.com', 'CDF.com', 0, './image_db/airport.png'),
(324, 'BS Shopping Mall', 9, 16, '77 High Noon Street,Chawkbazar Model,Dhaka,Bangladesh', 1872133230, 'BS@yahoo.com', 'BS.com', 0, './image_db/mall.png'),
(325, 'AZ Fire Station', 10, 16, '73 Ali Road,Chawkbazar Model,Dhaka,Bangladesh', 1714836163, 'AZ@gmail.com', 'AZ.com', 0, './image_db/fire.png'),
(326, 'ASD Police Staion', 11, 16, '561 Campfire Avenue,Chawkbazar Model,Dhaka,Bangladesh', 1732921732, 'ASD@outlook.com', 'ASD.com', 0, './image_db/police.png'),
(327, 'ALL1 Train Staion', 12, 16, '410 Kazi St.,Chawkbazar Model,Dhaka,Bangladesh', 1714362128, 'ALL1@yahoo.com', 'ALL1.com', 0, './image_db/train.png'),
(328, 'ABCD Bus Station', 13, 16, '401 Kazi St.,Chawkbazar Model,Dhaka,Bangladesh', 1848908153, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/bus.png'),
(329, 'SS Filling Station', 14, 16, '39 Malek Avenue,Chawkbazar Model,Dhaka,Bangladesh', 1791872546, 'SS@outlook.com', 'SS.com', 0, './image_db/filling.png'),
(330, 'PX Library', 15, 16, '273 Grant Street,Chawkbazar Model,Dhaka,Bangladesh', 1779274964, 'PX@yahoo.com', 'PX.com', 0, './image_db/library.png'),
(331, 'PUR Restaurant', 16, 16, '203 Olive Court,Chawkbazar Model,Dhaka,Bangladesh', 1882903203, 'PUR@gmail.com', 'PUR.com', 0, './image_db/restaurant.png'),
(332, 'PQR Super Market', 17, 16, '10 Hazi Danesh,Chawkbazar Model,Dhaka,Bangladesh', 1771262586, 'PQR@outlook.com', 'PQR.com', 0, './image_db/market.png'),
(333, 'PQ Pharmacy', 18, 16, '7324 Fifth Drive,Chawkbazar Model,Dhaka,Bangladesh', 1735250089, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/pharmacy.png'),
(334, 'PP Post Office', 19, 16, '9199 University St.,Chawkbazar Model,Dhaka,Bangladesh', 1795085296, 'PP@gmail.com', 'PP.com', 0, './image_db/post.png'),
(335, 'MNO Stadium', 20, 16, '5 Princeton St.,Chawkbazar Model,Dhaka,Bangladesh', 1888528087, 'MNO@outlook.com', 'MNO.com', 0, './image_db/stadium.png'),
(336, 'MN Museum', 21, 16, '7969 SE. Sunbeam Lane,Chawkbazar Model,Dhaka,Bangladesh', 1804602773, 'MN@yahoo.com', 'MN.com', 0, './image_db/museum.png'),
(337, 'ABCD ATM Booth', 1, 17, 'South Park,Chowdhurypara,Dhaka,Bangladesh', 1728211340, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(338, 'ALL1 Bank Limited', 2, 17, '991 Durham Road,Chowdhurypara,Dhaka,Bangladesh', 1887286353, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(339, 'AZ Hospital', 3, 17, '9225 Pacific Road,Chowdhurypara,Dhaka,Bangladesh', 1886097968, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(340, 'ASD Government Office', 4, 17, '9037 E. Branch St.,Chowdhurypara,Dhaka,Bangladesh', 1713882666, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(341, 'BS Hotel', 5, 17, '9 Asparagus Lane,Chowdhurypara,Dhaka,Bangladesh', 1810393867, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(342, 'CDF University', 6, 17, '89 Police Circle,Chowdhurypara,Dhaka,Bangladesh', 1829475551, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(343, 'CHR School', 7, 17, '8686 Tagore Avenue,Chowdhurypara,Dhaka,Bangladesh', 1779220461, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png');
INSERT INTO `place` (`p_id`, `p_name`, `t_id`, `a_id`, `p_address`, `p_phone`, `p_mail`, `p_website`, `p_point`, `p_url`) VALUES
(344, 'FF Airport', 8, 17, '8000 Queen Ave.,Chowdhurypara,Dhaka,Bangladesh', 1827933656, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(345, 'HLLP Shopping Mall', 9, 17, '77 High Noon Street,Chowdhurypara,Dhaka,Bangladesh', 1786182450, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(346, 'HLP Fire Station', 10, 17, '73 Ali Road,Chowdhurypara,Dhaka,Bangladesh', 1824523895, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(347, 'JH Police Staion', 11, 17, '561 Campfire Avenue,Chowdhurypara,Dhaka,Bangladesh', 1702771133, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(348, 'MN Train Staion', 12, 17, '410 Kazi St.,Chowdhurypara,Dhaka,Bangladesh', 1761494361, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(349, 'MNO Bus Station', 13, 17, '401 Kazi St.,Chowdhurypara,Dhaka,Bangladesh', 1782951953, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(350, 'PP Filling Station', 14, 17, '39 Malek Avenue,Chowdhurypara,Dhaka,Bangladesh', 1771324596, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(351, 'PQ Library', 15, 17, '273 Grant Street,Chowdhurypara,Dhaka,Bangladesh', 1713760128, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(352, 'PQR Restaurant', 16, 17, '203 Olive Court,Chowdhurypara,Dhaka,Bangladesh', 1843344396, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(353, 'PUR Super Market', 17, 17, '10 Hazi Danesh,Chowdhurypara,Dhaka,Bangladesh', 1783848962, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(354, 'PX Pharmacy', 18, 17, '7324 Fifth Drive,Chowdhurypara,Dhaka,Bangladesh', 1727965123, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(355, 'SS Post Office', 19, 17, '9199 University St.,Chowdhurypara,Dhaka,Bangladesh', 1865222075, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(356, 'XTD Stadium', 20, 17, '5 Princeton St.,Chowdhurypara,Dhaka,Bangladesh', 1809922714, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(357, 'ATOZ Museum', 21, 17, '7969 SE. Sunbeam Lane,Chowdhurypara,Dhaka,Bangladesh', 1779458942, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(358, 'ABCD ATM Booth', 1, 20, 'South Park,Demra,Dhaka,Bangladesh', 1795635171, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(359, 'ALL1 Bank Limited', 2, 20, '991 Durham Road,Demra,Dhaka,Bangladesh', 1782461558, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(360, 'AZ Hospital', 3, 20, '9225 Pacific Road,Demra,Dhaka,Bangladesh', 1821031385, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(361, 'ASD Government Office', 4, 20, '9037 E. Branch St.,Demra,Dhaka,Bangladesh', 1744993662, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(362, 'BS Hotel', 5, 20, '9 Asparagus Lane,Demra,Dhaka,Bangladesh', 1754309926, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(363, 'CDF University', 6, 20, '89 Police Circle,Demra,Dhaka,Bangladesh', 1835375218, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(364, 'CHR School', 7, 20, '8686 Tagore Avenue,Demra,Dhaka,Bangladesh', 1853617269, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(365, 'FF Airport', 8, 20, '8000 Queen Ave.,Demra,Dhaka,Bangladesh', 1752016583, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(366, 'HLLP Shopping Mall', 9, 20, '77 High Noon Street,Demra,Dhaka,Bangladesh', 1704974795, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(367, 'HLP Fire Station', 10, 20, '73 Ali Road,Demra,Dhaka,Bangladesh', 1716847157, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(368, 'JH Police Staion', 11, 20, '561 Campfire Avenue,Demra,Dhaka,Bangladesh', 1875136219, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(369, 'MN Train Staion', 12, 20, '410 Kazi St.,Demra,Dhaka,Bangladesh', 1754913219, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(370, 'MNO Bus Station', 13, 20, '401 Kazi St.,Demra,Dhaka,Bangladesh', 1718912341, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(371, 'PP Filling Station', 14, 20, '39 Malek Avenue,Demra,Dhaka,Bangladesh', 1838750125, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(372, 'PQ Library', 15, 20, '273 Grant Street,Demra,Dhaka,Bangladesh', 1850400213, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(373, 'PQR Restaurant', 16, 20, '203 Olive Court,Demra,Dhaka,Bangladesh', 1779295111, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(374, 'PUR Super Market', 17, 20, '10 Hazi Danesh,Demra,Dhaka,Bangladesh', 1710756952, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(375, 'PX Pharmacy', 18, 20, '7324 Fifth Drive,Demra,Dhaka,Bangladesh', 1764958914, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(376, 'SS Post Office', 19, 20, '9199 University St.,Demra,Dhaka,Bangladesh', 1739660364, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(377, 'XTD Stadium', 20, 20, '5 Princeton St.,Demra,Dhaka,Bangladesh', 1880997075, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(378, 'XYZ Museum', 21, 20, '7969 SE. Sunbeam Lane,Demra,Dhaka,Bangladesh', 1866677272, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(379, 'FF ATM Booth', 1, 19, 'South Park,Darus Salam,Dhaka,Bangladesh', 1889317732, 'FF@gmail.com', 'FF.com', 0, './image_db/atm.png'),
(380, 'HLLP Bank Limited', 2, 19, '991 Durham Road,Darus Salam,Dhaka,Bangladesh', 1855544398, 'HLLP@outlook.com', 'HLLP.com', 0, './image_db/bank.png'),
(381, 'HLP Hospital', 3, 19, '9225 Pacific Road,Darus Salam,Dhaka,Bangladesh', 1867327631, 'HLP@yahoo.com', 'HLP.com', 0, './image_db/hospital.png'),
(382, 'JH Government Office', 4, 19, '9037 E. Branch St.,Darus Salam,Dhaka,Bangladesh', 1765085285, 'JH@gmail.com', 'JH.com', 0, './image_db/government.png'),
(383, 'XTD Hotel', 5, 19, '9 Asparagus Lane,Darus Salam,Dhaka,Bangladesh', 1745240516, 'XTD@outlook.com', 'XTD.com', 0, './image_db/hotel.png'),
(384, 'XYZ University', 6, 19, '89 Police Circle,Darus Salam,Dhaka,Bangladesh', 1894269388, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/university.png'),
(385, 'CHR School', 7, 19, '8686 Tagore Avenue,Darus Salam,Dhaka,Bangladesh', 1874725331, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(386, 'CDF Airport', 8, 19, '8000 Queen Ave.,Darus Salam,Dhaka,Bangladesh', 1828139638, 'CDF@outlook.com', 'CDF.com', 0, './image_db/airport.png'),
(387, 'BS Shopping Mall', 9, 19, '77 High Noon Street,Darus Salam,Dhaka,Bangladesh', 1823256590, 'BS@yahoo.com', 'BS.com', 0, './image_db/mall.png'),
(388, 'AZ Fire Station', 10, 19, '73 Ali Road,Darus Salam,Dhaka,Bangladesh', 1763981955, 'AZ@gmail.com', 'AZ.com', 0, './image_db/fire.png'),
(389, 'ASD Police Staion', 11, 19, '561 Campfire Avenue,Darus Salam,Dhaka,Bangladesh', 1770744885, 'ASD@outlook.com', 'ASD.com', 0, './image_db/police.png'),
(390, 'ALL1 Train Staion', 12, 19, '410 Kazi St.,Darus Salam,Dhaka,Bangladesh', 1738215084, 'ALL1@yahoo.com', 'ALL1.com', 0, './image_db/train.png'),
(391, 'ABCD Bus Station', 13, 19, '401 Kazi St.,Darus Salam,Dhaka,Bangladesh', 1733772007, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/bus.png'),
(392, 'SS Filling Station', 14, 19, '39 Malek Avenue,Darus Salam,Dhaka,Bangladesh', 1802491281, 'SS@outlook.com', 'SS.com', 0, './image_db/filling.png'),
(393, 'PX Library', 15, 19, '273 Grant Street,Darus Salam,Dhaka,Bangladesh', 1731019148, 'PX@yahoo.com', 'PX.com', 0, './image_db/library.png'),
(394, 'PUR Restaurant', 16, 19, '203 Olive Court,Darus Salam,Dhaka,Bangladesh', 1836643811, 'PUR@gmail.com', 'PUR.com', 0, './image_db/restaurant.png'),
(395, 'PQR Super Market', 17, 19, '10 Hazi Danesh,Darus Salam,Dhaka,Bangladesh', 1704886132, 'PQR@outlook.com', 'PQR.com', 0, './image_db/market.png'),
(396, 'PQ Pharmacy', 18, 19, '7324 Fifth Drive,Darus Salam,Dhaka,Bangladesh', 1898830789, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/pharmacy.png'),
(397, 'PP Post Office', 19, 19, '9199 University St.,Darus Salam,Dhaka,Bangladesh', 1779589963, 'PP@gmail.com', 'PP.com', 0, './image_db/post.png'),
(398, 'MNO Stadium', 20, 19, '5 Princeton St.,Darus Salam,Dhaka,Bangladesh', 1780820104, 'MNO@outlook.com', 'MNO.com', 0, './image_db/stadium.png'),
(399, 'MN Museum', 21, 19, '7969 SE. Sunbeam Lane,Darus Salam,Dhaka,Bangladesh', 1737219407, 'MN@yahoo.com', 'MN.com', 0, './image_db/museum.png'),
(400, 'ABCD ATM Booth', 1, 18, 'South Park,Dakshinkhan,Dhaka,Bangladesh', 1744080862, 'ABCD@gmail.com', 'ABCD.com', 0, './image_db/atm.png'),
(401, 'ALL1 Bank Limited', 2, 18, '991 Durham Road,Dakshinkhan,Dhaka,Bangladesh', 1726604522, 'ALL1@outlook.com', 'ALL1.com', 0, './image_db/bank.png'),
(402, 'AZ Hospital', 3, 18, '9225 Pacific Road,Dakshinkhan,Dhaka,Bangladesh', 1836859007, 'AZ@yahoo.com', 'AZ.com', 0, './image_db/hospital.png'),
(403, 'ASD Government Office', 4, 18, '9037 E. Branch St.,Dakshinkhan,Dhaka,Bangladesh', 1892505928, 'ASD@gmail.com', 'ASD.com', 0, './image_db/government.png'),
(404, 'BS Hotel', 5, 18, '9 Asparagus Lane,Dakshinkhan,Dhaka,Bangladesh', 1774526447, 'BS@outlook.com', 'BS.com', 0, './image_db/hotel.png'),
(405, 'CDF University', 6, 18, '89 Police Circle,Dakshinkhan,Dhaka,Bangladesh', 1802166775, 'CDF@yahoo.com', 'CDF.com', 0, './image_db/university.png'),
(406, 'CHR School', 7, 18, '8686 Tagore Avenue,Dakshinkhan,Dhaka,Bangladesh', 1844619070, 'CHR@gmail.com', 'CHR.com', 0, './image_db/school.png'),
(407, 'FF Airport', 8, 18, '8000 Queen Ave.,Dakshinkhan,Dhaka,Bangladesh', 1787574192, 'FF@outlook.com', 'FF.com', 0, './image_db/airport.png'),
(408, 'HLLP Shopping Mall', 9, 18, '77 High Noon Street,Dakshinkhan,Dhaka,Bangladesh', 1771013742, 'HLLP@yahoo.com', 'HLLP.com', 0, './image_db/mall.png'),
(409, 'HLP Fire Station', 10, 18, '73 Ali Road,Dakshinkhan,Dhaka,Bangladesh', 1797134334, 'HLP@gmail.com', 'HLP.com', 0, './image_db/fire.png'),
(410, 'JH Police Staion', 11, 18, '561 Campfire Avenue,Dakshinkhan,Dhaka,Bangladesh', 1839477567, 'JH@outlook.com', 'JH.com', 0, './image_db/police.png'),
(411, 'MN Train Staion', 12, 18, '410 Kazi St.,Dakshinkhan,Dhaka,Bangladesh', 1779503189, 'MN@yahoo.com', 'MN.com', 0, './image_db/train.png'),
(412, 'MNO Bus Station', 13, 18, '401 Kazi St.,Dakshinkhan,Dhaka,Bangladesh', 1785362812, 'MNO@gmail.com', 'MNO.com', 0, './image_db/bus.png'),
(413, 'PP Filling Station', 14, 18, '39 Malek Avenue,Dakshinkhan,Dhaka,Bangladesh', 1878247070, 'PP@outlook.com', 'PP.com', 0, './image_db/filling.png'),
(414, 'PQ Library', 15, 18, '273 Grant Street,Dakshinkhan,Dhaka,Bangladesh', 1898947300, 'PQ@yahoo.com', 'PQ.com', 0, './image_db/library.png'),
(415, 'PQR Restaurant', 16, 18, '203 Olive Court,Dakshinkhan,Dhaka,Bangladesh', 1887342025, 'PQR@gmail.com', 'PQR.com', 0, './image_db/restaurant.png'),
(416, 'PUR Super Market', 17, 18, '10 Hazi Danesh,Dakshinkhan,Dhaka,Bangladesh', 1848563865, 'PUR@outlook.com', 'PUR.com', 0, './image_db/market.png'),
(417, 'PX Pharmacy', 18, 18, '7324 Fifth Drive,Dakshinkhan,Dhaka,Bangladesh', 1840450650, 'PX@yahoo.com', 'PX.com', 0, './image_db/pharmacy.png'),
(418, 'SS Post Office', 19, 18, '9199 University St.,Dakshinkhan,Dhaka,Bangladesh', 1808945976, 'SS@gmail.com', 'SS.com', 0, './image_db/post.png'),
(419, 'XTD Stadium', 20, 18, '5 Princeton St.,Dakshinkhan,Dhaka,Bangladesh', 1792121585, 'XTD@outlook.com', 'XTD.com', 0, './image_db/stadium.png'),
(430, 'API Museum22', 21, 18, '7969 SE. Sunbeam Lane,Dakshinkhan,Dhaka,Bangladesh', 1741443511, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png'),
(431, 'API Museum33', 21, 18, '7969 SE. Sunbeam Lane,Dakshinkhan,Dhaka,Bangladesh', 1741443511, 'XYZ@yahoo.com', 'XYZ.com', 0, './image_db/museum.png');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `req_id` int(10) NOT NULL,
  `req_name` varchar(100) NOT NULL,
  `req_city` varchar(100) NOT NULL,
  `req_area` varchar(100) NOT NULL,
  `req_address` varchar(200) NOT NULL,
  `v_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `t_id` int(10) NOT NULL,
  `t_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`t_id`, `t_name`) VALUES
(1, 'ATM Booth'),
(2, 'Bank'),
(3, 'Hospital'),
(4, 'Government'),
(5, 'Hotel'),
(6, 'University'),
(7, 'School'),
(8, 'Airport'),
(9, 'Shopping Mall'),
(10, 'Fire Station'),
(11, 'Police Station'),
(12, 'Train Station'),
(13, 'Bus Station'),
(14, 'Filling Station'),
(15, 'Library'),
(16, 'Restaurant'),
(17, 'Super Market'),
(18, 'Pharmacy'),
(19, 'Post Office'),
(20, 'Stadium'),
(21, 'Museum');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `v_id` int(10) NOT NULL,
  `v_username` varchar(100) NOT NULL,
  `v_pass` varchar(100) NOT NULL,
  `v_name` varchar(100) NOT NULL,
  `v_gender` varchar(100) NOT NULL,
  `v_mail` varchar(100) NOT NULL,
  `v_phone` int(100) NOT NULL,
  `DOB` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`v_id`, `v_username`, `v_pass`, `v_name`, `v_gender`, `v_mail`, `v_phone`, `DOB`) VALUES
(1, 'user1', '1111', 'User One', 'male', 'user1@gmail.com', 1711111111, '2-January-2018'),
(2, 'user2', '2222', 'User Two', 'female', 'user2@outlook.com', 1722222222, '3-January-2018'),
(3, 'aaa', 'aaaa', 'a', 'male', 'a@v.com', 1444444444, '1-January-2018'),
(4, 'aaa', 'aaaa', 'a', 'male', 'a@v.com', 1444444444, '1-January-2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `a_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `p_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `req_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `t_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `v_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
