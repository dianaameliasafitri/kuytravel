-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2018 at 09:13 PM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kuytravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--


-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(10) NOT NULL,
  `reservation_code` varchar(10) NOT NULL,
  `reservation_at` varchar(10) NOT NULL,
  `reservation_date` date NOT NULL,
  `customerid` int(10) NOT NULL,
  `seat_code` varchar(10) NOT NULL,
  `ruteid` int(10) NOT NULL,
  `depart_at` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--


-- --------------------------------------------------------

--
-- Table structure for table `rute`
--

CREATE TABLE IF NOT EXISTS `rute` (
  `id` int(10) NOT NULL,
  `depart_at` varchar(15) NOT NULL,
  `rute_form` varchar(10) NOT NULL,
  `rute_to` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `transportationid` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rute`
--


-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE IF NOT EXISTS `transportation` (
  `id` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `description` varchar(20) NOT NULL,
  `seat_qty` varchar(10) NOT NULL,
  `transportation_typeid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation`
--


-- --------------------------------------------------------

--
-- Table structure for table `transportation_type`
--

CREATE TABLE IF NOT EXISTS `transportation_type` (
  `id` int(10) NOT NULL,
  `description` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `level` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

