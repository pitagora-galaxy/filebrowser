-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- ホスト: localhost
-- 生成時間: 2014 年 10 月 21 日 21:12
-- サーバのバージョン: 5.1.73
-- PHP のバージョン: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- データベース: `filebrowser_03`
--
CREATE DATABASE `filebrowser_03` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `filebrowser_03`;

-- --------------------------------------------------------

--
-- テーブルの構造 `align`
--

CREATE TABLE IF NOT EXISTS `align` (
  `align_id` int(16) NOT NULL DEFAULT '0',
  `align_dir` varchar(64) DEFAULT NULL,
  `align_date` date DEFAULT NULL,
  `img_analysis_ver` varchar(64) DEFAULT NULL,
  `basecall_ver` varchar(64) DEFAULT NULL,
  `alignment_ver` varchar(64) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`align_id`),
  KEY `align_01` (`align_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- ビュー用の代替構造 `browser`
--
CREATE TABLE IF NOT EXISTS `browser` (
`run_id` int(16)
,`lane_id` int(16)
,`align_id` int(16)
,`file_id` int(16)
,`run_date` date
,`align_date` date
,`lane_no` int(16)
,`sample_name` varchar(256)
,`organism` varchar(64)
,`researcher` varchar(64)
,`file_name` varchar(64)
,`data_type` varchar(64)
,`ref_genome` varchar(64)
,`path` varchar(64)
);
-- --------------------------------------------------------

--
-- テーブルの構造 `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `file_id` int(16) NOT NULL DEFAULT '0',
  `run_id` int(16) NOT NULL DEFAULT '0',
  `lane_no` int(16) NOT NULL DEFAULT '0',
  `align_id` int(16) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `read_length` int(16) DEFAULT NULL,
  `is_pair` varchar(8) DEFAULT NULL,
  `seed_length` int(16) DEFAULT NULL,
  `gerald_param` varchar(256) DEFAULT NULL,
  `ref_genome` varchar(64) DEFAULT NULL,
  `path` varchar(64) DEFAULT NULL,
  `eland` varchar(64) DEFAULT NULL,
  `data_type` varchar(64) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`file_id`),
  KEY `file_01` (`run_id`),
  KEY `file_02` (`lane_no`),
  KEY `file_03` (`align_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `lane`
--

CREATE TABLE IF NOT EXISTS `lane` (
  `lane_id` int(16) NOT NULL DEFAULT '0',
  `run_id` int(16) NOT NULL DEFAULT '0',
  `lane_no` int(16) NOT NULL DEFAULT '0',
  `sample_name` varchar(256) DEFAULT NULL,
  `organism` varchar(64) DEFAULT NULL,
  `ref_genome` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `frag_size` int(16) DEFAULT NULL,
  `is_pair` varchar(8) DEFAULT NULL,
  `researcher` varchar(64) DEFAULT NULL,
  `institute` varchar(64) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`lane_id`),
  KEY `lane_01` (`lane_no`),
  KEY `lane_02` (`run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `run`
--

CREATE TABLE IF NOT EXISTS `run` (
  `run_id` int(16) NOT NULL DEFAULT '0',
  `run_dir` varchar(64) DEFAULT NULL,
  `run_date` date DEFAULT NULL,
  `machine` varchar(64) DEFAULT NULL,
  `ga` varchar(64) DEFAULT NULL,
  `flowcell` varchar(64) DEFAULT NULL,
  `sample_kit` varchar(64) DEFAULT NULL,
  `cluster_kit` varchar(64) DEFAULT NULL,
  `seq_kit` varchar(64) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`run_id`),
  KEY `run_02` (`run_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- ビュー用の構造 `browser`
--
DROP TABLE IF EXISTS `browser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `browser` AS select distinct `r`.`run_id` AS `run_id`,`l`.`lane_id` AS `lane_id`,`a`.`align_id` AS `align_id`,`f`.`file_id` AS `file_id`,`r`.`run_date` AS `run_date`,`a`.`align_date` AS `align_date`,`l`.`lane_no` AS `lane_no`,`l`.`sample_name` AS `sample_name`,`l`.`organism` AS `organism`,`l`.`researcher` AS `researcher`,`f`.`file_name` AS `file_name`,`f`.`data_type` AS `data_type`,`l`.`ref_genome` AS `ref_genome`,`f`.`path` AS `path` from (((`run` `r` join `lane` `l`) join `align` `a`) join `file` `f`) where ((`f`.`run_id` = `r`.`run_id`) and (`f`.`run_id` = `l`.`run_id`) and (`f`.`lane_no` = `l`.`lane_no`) and (`f`.`align_id` = `a`.`align_id`));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
