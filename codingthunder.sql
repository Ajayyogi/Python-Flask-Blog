-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 11:32 AM
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
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '123456789', 'first post', '2023-06-24 10:52:17', 'firstpost@gmail.com'),
(2, 'mera naam', '4343434343', 'Bhai please send ho ja database mei', NULL, 'meranaam@gmail.com'),
(3, 'mera naam', '4343434343', 'Bhai please send ho ja database mei', '2023-06-24 11:30:51', 'meranaam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets learn about stock market', 'Coolest post ever', 'first-post', 'Stock (also capital stock, or harry stock sometimes interchangeably, shares) consist of all the shares[a] by which ownership of a corporation or company is divided.[1] A single share of the stock means fractional ownership of the corporation in proportion to the total number of shares. This typically entitles the shareholder (stockholder) to that fraction of the company\'s earnings, proceeds from liquidation of assets (after discharge of all senior claims such as secured and unsecured debt),[3] or voting power, often dividing these up in proportion to the amount of money each stockholder has invested. Not all stock is necessarily equal, as certain classes of stock may be issued for example without voting rights, with enhanced voting rights, or with a certain priority to receive profits or liquidation proceeds before or after other classes of shareholders.', 'post-bg.jpg', '2023-06-25 19:24:31'),
(2, 'This is second post', 'Coolest post ever', 'second-post', 'Flask-SQLAlchemy simplifies using SQLAlchemy by automatically handling creating, using, and cleaning up the SQLAlchemy objects you’d normally work with. While it adds a few useful features, it still works like SQLAlchemy.\r\n\r\nThis page will walk you through the basic use of Flask-SQLAlchemy. For full capabilities and customization, see the rest of these docs, including the API docs for the SQLAlchemy object.', 'post-bg.jpg', '2023-06-24 18:12:01'),
(3, 'Variables', 'mast wali tagline', 'third-post', 'Flask-SQLAlchemy is a wrapper around SQLAlchemy. You should follow the SQLAlchemy Tutorial to learn about how to use it, and consult its documentation for detailed information about its features. These docs show how to set up Flask-SQLAlchemy itself, not how to use SQLAlchemy. Flask-SQLAlchemy sets up the engine, declarative model class, and scoped session automatically, so you can skip those parts of the SQLAlchemy tutorial.', '', '2023-06-24 18:15:22'),
(4, 'Variables4', 'fourth-tagline', 'fourth-post', 'Flask-SQLAlchemy is a wrapper around SQLAlchemy. You should follow the SQLAlchemy Tutorial to learn about how to use it, and consult its documentation for detailed information about its features. These docs show how to set up Flask-SQLAlchemy itself, not how to use SQLAlchemy. Flask-SQLAlchemy sets up the engine, declarative model class, and scoped session automatically, so you can skip those parts of the SQLAlchemy tutorial.', '', '2023-06-24 18:17:09'),
(5, 'Whitespace Control', 'tagline', 'slug-next', 'The only required Flask app config is the SQLALCHEMY_DATABASE_URI key. That is a connection string that tells SQLAlchemy what database to connect to.\r\n\r\nCreate your Flask application object, load any config, and then initialize the SQLAlchemy extension class with the application by calling db.init_app. This example connects to a SQLite database, which is stored in the app’s instance folder.\r\n\r\nfrom flask import Flask\r\nfrom flask_sqlalchemy import SQLAlchemy\r\n\r\n# create the extension\r\ndb = SQLAlchemy()\r\n# create the app\r\napp = Flask(__name__)\r\n# configure the SQLite database, relative to the app instance folder\r\napp.config[\"SQLALCHEMY_DATABASE_URI\"] = \"sqlite:///project.db\"\r\n# initialize the app with the extension\r\ndb.init_app(app)', '', '2023-06-24 18:21:26'),
(7, 'List comprehension, Dictionary comprehension And Generator comprehension', 'This is new post tagline', 'new-post', 'sfsf', 'sdf', '2023-06-25 18:48:50'),
(8, 'List comprehension, Dictionary comprehension And Generator comprehension', 'dsfdfs', 'ddddddddd', 'sdsdfsdf', 'fd', '2023-06-25 18:58:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
