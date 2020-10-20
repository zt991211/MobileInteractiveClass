-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-10-20 09:24:39
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `mobile_interaction_class`
--

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE `class` (
  `creator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fid_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nid_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hid_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `join_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cid` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `file`
--

CREATE TABLE `file` (
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploader` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `upload_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `filesize` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fid` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `homework`
--

CREATE TABLE `homework` (
  `homework_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploader` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `upload_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `store_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `finish_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hid` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE `notice` (
  `uploader` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `upload_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nid` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mailbox` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `birth` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joined_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
