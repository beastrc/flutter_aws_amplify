-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2022 at 12:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clud_car`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `emailaddress` varchar(255) NOT NULL,
  `cardnumber` varchar(255) NOT NULL,
  `carmodel` varchar(255) NOT NULL,
  `carimage` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `creditcards`
--

CREATE TABLE `creditcards` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `exp_month` int(11) NOT NULL,
  `exp_year` int(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `last4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `dateTime` varchar(255) NOT NULL,
  `journeyId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `journeys`
--

CREATE TABLE `journeys` (
  `id` int(11) NOT NULL,
  `dateTime` int(11) NOT NULL,
  `carId` int(11) NOT NULL,
  `driverResponse` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `driverid` int(11) NOT NULL,
  `journeyStatus` varchar(255) NOT NULL,
  `startPointLat` varchar(255) NOT NULL,
  `startPointLong` varchar(255) NOT NULL,
  `endPointLat` varchar(255) NOT NULL,
  `endPointLong` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paths`
--

CREATE TABLE `paths` (
  `id` int(11) NOT NULL,
  `dataTime` varchar(255) NOT NULL,
  `driverId` varchar(255) NOT NULL,
  `pathName` varchar(255) NOT NULL,
  `carId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `journeyId` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `emailverification` tinyint(1) NOT NULL,
  `phoneverification` tinyint(1) NOT NULL,
  `lcverification` tinyint(1) NOT NULL,
  `licensevenfication` tinyint(1) NOT NULL,
  `approle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `waypoints`
--

CREATE TABLE `waypoints` (
  `id` int(11) NOT NULL,
  `pathId` int(11) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longtitude` varchar(255) NOT NULL,
  `isStart` tinyint(1) NOT NULL,
  `isEnd` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
