-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2023 at 08:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Category_id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Detail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Category_id`, `Name`, `Detail`) VALUES
(1, 'voluptatem', ' Magnam maiores labore est nemo magni qui et. Amet minima aut nihil.'),
(2, 'voluptatem', 'Rerum unde unde commodi temporibus.'),
(3, 'voluptatem', 'Quae non aut perspiciatis illum et.'),
(4, 'dolor', 'Rerum recusandae omnis minus incidunt aut quia iusto. Aut ad natus consequatur et fugiat modi.'),
(5, 'maxime', 'Quo nihil optio repellendus ducimus dolorem sunt.'),
(6, 'ipsa', 'Eum aut praesentium hic delectus quidem et. Non hic velit quae veniam placeat quod et sit.'),
(7, 'quibusdam', 'Sit vel rem pariatur. Suscipit possimus nesciunt aut doloremque.'),
(8, 'possimus', 'tionem perspiciatis dolorem necessitatibus.Non ducimus nobis ut nesciunt iusto.'),
(9, 'autem', 'Possimus soluta voluptatum placeat ex et. Et deserunt officia dolorum vel.'),
(10, 'adipisci', 'Eos quia necessitatibus aut ut labore nihil voluptatibus');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `last_login_time` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_id`, `full_name`, `last_login_time`, `password`, `email`, `phone`, `address`) VALUES
(1, 'Ali Asadi', '12:20', '23455', 'Alia23@yahoo.com', '+1-883-955-3047', '2059 Ullrich Mill\nSteuberland, NH 87906-3789'),
(2, 'Sin Saro', '13:00', '67r45', 'sin.saro3@yahoo.org', '(207) 456-6203', '456 Maynard Center\nMakenzieport, TN 64473'),
(3, 'Kara William', '15:40', 'w562c7', 'Kara.well@gmail.com', '+1-675-965-9047', '709 Hahn 407\nhside, 00968-3104'),
(4, 'Ronald Ri', '16:57', 'ty45ri8/', 'R.ri657@gmail.com', '(623) 901-5596', '768 Darian Light\nGreenberg, WY 57476'),
(5, 'Jefry T.', '20:45', 'ui8880', 'njefry@pfeffer.net', '1-267-953-8007', '19563 Angie Island\nJoyshire, DH 671'),
(6, 'Isabella fisher', '23:34', 'rt566f', 'Isabel.sefier@gmail.com', '+1-928-318-0065', '38183 Beier Turnpike Suite 153\nSawaynchester, NV 98684-5366'),
(7, 'Tomas Riamond', '15:32', 'i67yd56#', 'tomas.pearline@hotmail.com', '0934545027', '8401 Nick Trafficway\nLake Karelle,PI 9335'),
(8, 'Estephan Henry', '22:56', 'bvt66767', 'est.miphhell@rempel.net', '9767-909-1158', '987 Lonie Grove\nCasperborough, MO 70154'),
(9, 'LidaVagher', '20:31', 'ee34qa3', 'lidard01@stehr.com', '256-871-3694', '98420 Hauck Course Apt, WI 55000'),
(10, 'Esra R.', '17:42', 'esrwrrrw0', 'esrtttt90@gamil.com', '+1-701-485-2718', '562 Will Summit , VA7846-8270');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_id` bigint(20) UNSIGNED NOT NULL,
  `Customer_id` bigint(20) NOT NULL,
  `Items` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) NOT NULL,
  `Description` bigint(20) UNSIGNED NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_id`, `Customer_id`, `Items`, `price`, `Description`, `Date`) VALUES
(1, 1, 4, 682, 0, '1983-09-06'),
(2, 2, 6, 666, 0, '2010-10-29'),
(3, 3, 3, 455, 0, '2013-05-20'),
(4, 4, 3, 617, 0, '2002-05-09'),
(5, 5, 1, 319, 0, '2012-04-09'),
(6, 6, 3, 547, 0, '2018-03-09'),
(7, 7, 2, 607, 0, '2001-10-11'),
(8, 8, 5, 734, 0, '2017-02-13'),
(9, 9, 3, 215, 0, '2004-11-13'),
(10, 10, 4, 456, 0, '2006-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `product's category`
--

CREATE TABLE `product's category` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `Category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_id` bigint(20) UNSIGNED NOT NULL,
  `Supplier_id` bigint(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_id`, `Supplier_id`, `Name`, `price`) VALUES
(1, 1, 'voluptatem', 454.00),
(2, 2, 'voluptatem', 494.00),
(3, 3, 'voluptatem', 257.00),
(4, 4, 'dolor', 390.00),
(5, 5, 'maxime', 276.00),
(6, 6, 'laborum', 114.00),
(7, 7, 'assumenda', 334.00),
(8, 8, 'necessitatibus', 281.00),
(9, 9, 'voluptatem', 481.00),
(10, 10, 'voluptas', 395.00);

-- --------------------------------------------------------

--
-- Table structure for table `products_detail`
--

CREATE TABLE `products_detail` (
  `Pdetail_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `Images` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `Tags` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_detail`
--

INSERT INTO `products_detail` (`Pdetail_id`, `product_id`, `Images`, `description`, `Tags`) VALUES
(1, 1, 4, 'Magnam quasi eveniet iure sapiente quia non qui sunt. Porro recusandae quae quia dolorum et. Qui voluptatem ea aut veniam eaque dicta.', 0),
(2, 2, 3, 'Dolore officiis eos dolores aliquam quia et. Cumque nesciunt eaque aut et. Ut velit reprehenderit numquam rerum.', 0),
(3, 3, 1, 'Dolores qui voluptatem in et officiis ut. Beatae necessitatibus facilis autem quia molestiae nostrum odit rerum. Ratione qui esse illo.', 0),
(4, 4, 8, 'Nesciunt excepturi quo ut at non deserunt odit. Quaerat maxime sed commodi. Natus rerum eveniet dolorum excepturi.', 0),
(5, 5, 2, 'Magni dolores ducimus non et.  Consequuntur voluptates beatae quas architecto eum. Accusantium dolor assumenda repudiandae.', 0),
(6, 6, 3, 'Ut dolorem sit quis error id provident id. Rem sit aspernatur est nam temporibus.', 0),
(7, 7, 4, 'Perferendis fuga cum quae harum qui hic sed. Similique commodi ab occaecati dolore accusamus distinctio inventore.', 0),
(8, 8, 5, 'Voluptate voluptatem est vel quasi et quae velit sapiente. Reiciendis quidem soluta nam nulla a excepturi placeat.', 0),
(9, 9, 3, 'Et quidem in molestiae illum assumenda. Architecto minus velit at facere illo.', 0),
(10, 10, 6, 'Voluptatem voluptatem fuga autem dolores vitae natus. Illo pariatur necessitatibus officia vero. Maiores non aut quos aliquam est quo perspiciatis ut. Et porro omnis ratione ad sunt ut.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `returned items`
--

CREATE TABLE `returned items` (
  `Returnitem_id` bigint(20) UNSIGNED NOT NULL,
  `Order_id` bigint(20) UNSIGNED NOT NULL,
  `Return date` int(10) UNSIGNED NOT NULL,
  `Notes` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returned items`
--

INSERT INTO `returned items` (`Returnitem_id`, `Order_id`, `Return date`, `Notes`) VALUES
(3, 34, 2020, 0),
(4, 56, 2012, 0),
(5, 24, 2013, 0),
(6, 14, 2021, 0),
(7, 65, 2020, 0),
(8, 46, 2022, 0),
(9, 30, 2021, 0),
(10, 15, 2022, 0),
(11, 47, 2020, 0),
(12, 78, 2019, 0);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `Supplier_id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Phone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`Supplier_id`, `Name`, `Email`, `Address`, `Phone`) VALUES
(1, 'Kale-Mraz', 'tkl.royal@brakus.net', '36704 Ayana Road Apt', '+1-918-208-890'),
(2, 'Jo-Ledner', 'donya98@gmail.com', '58914 Joel Heights, ', '1-89-481-8734'),
(3, 'Hettinger', 'hebert@walter.com', '3319 Nikolaus Parks ', '930-4890-890'),
(4, 'Casper', 'garth05@gmail.com', '5500 Berge Green, IN', '+195546532'),
(5, 'Betty', 'boyer@paucek.info', '516 Josue Mission Su', '+1.947.254.8789'),
(6, 'Lucy', 'Lucy.schneider@daugherty.biz', '34858 Schamberger Pl', '520.642.699'),
(7, 'Abernathy', 'rdavis@bernier.com', '7901 Yundt Parkways ', '1-678-2366'),
(8, 'Linda', 'hholl@yahoo.com', '6945 Wyman Route Apt', '(929) 919-7289'),
(9, 'Tom', 't.wehner@gmail.com', '85062 Estevan , AR 5', '+1 (320) 667-0054'),
(10, 'Heller', 'ehatt28@hyatt.com', '821 Ellsworth Rapid ', '(351) 704-9999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `products_detail`
--
ALTER TABLE `products_detail`
  ADD PRIMARY KEY (`Pdetail_id`);

--
-- Indexes for table `returned items`
--
ALTER TABLE `returned items`
  ADD PRIMARY KEY (`Returnitem_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`Supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
