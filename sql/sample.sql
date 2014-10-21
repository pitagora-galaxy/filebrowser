-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- ホスト: localhost
-- 生成時間: 2014 年 10 月 21 日 21:13
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

--
-- テーブルのデータをダンプしています `align`
--

INSERT INTO `align` (`align_id`, `align_dir`, `align_date`, `img_analysis_ver`, `basecall_ver`, `alignment_ver`, `comment`) VALUES
(1, '20080404_run/align_20080412', '2008-04-12', '', '', '', ''),
(2, '20080404_run/align_20080611', '2008-06-11', '', '', '', ''),
(3, '20080418_run/align_20080422', '2008-04-22', '', '', '', ''),
(4, '20080418_run/align_20080611', '2008-06-11', '', '', '', '');

--
-- テーブルのデータをダンプしています `file`
--

INSERT INTO `file` (`file_id`, `run_id`, `lane_no`, `align_id`, `file_name`, `read_length`, `is_pair`, `seed_length`, `gerald_param`, `ref_genome`, `path`, `eland`, `data_type`, `comment`) VALUES
(1, 1, 4, 1, 's_4_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_4_export.txt.gz', '', 'export', ''),
(2, 1, 4, 1, 's_4_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_4_eland_extended.txt.gz', '', 'eland_extended', ''),
(3, 1, 3, 1, 's_3_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_3_sorted.txt.gz', '', 'sorted', ''),
(4, 1, 2, 1, 's_2_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_2_export.txt.gz', '', 'export', ''),
(5, 1, 8, 1, 's_8_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_8_sorted.txt.gz', '', 'sorted', ''),
(6, 1, 3, 1, 's_3_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_3_export.txt.gz', '', 'export', ''),
(7, 1, 1, 1, 's_1_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_1_export.txt.gz', '', 'export', ''),
(8, 1, 6, 1, 's_6_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_6_eland_extended.txt.gz', '', 'eland_extended', ''),
(9, 1, 4, 1, 's_4_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_4_sorted.txt.gz', '', 'sorted', ''),
(10, 1, 6, 1, 's_6_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_6_sorted.txt.gz', '', 'sorted', ''),
(11, 1, 2, 1, 's_2_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_2_eland_extended.txt.gz', '', 'eland_extended', ''),
(12, 1, 5, 1, 's_5_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_5_export.txt.gz', '', 'export', ''),
(13, 1, 6, 1, 's_6_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_6_export.txt.gz', '', 'export', ''),
(14, 1, 8, 1, 's_8_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_8_eland_extended.txt.gz', '', 'eland_extended', ''),
(15, 1, 1, 1, 's_1_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_1_eland_extended.txt.gz', '', 'eland_extended', ''),
(16, 1, 8, 1, 's_8_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_8_export.txt.gz', '', 'export', ''),
(17, 1, 5, 1, 's_5_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_5_eland_extended.txt.gz', '', 'eland_extended', ''),
(18, 1, 5, 1, 's_5_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_5_sorted.txt.gz', '', 'sorted', ''),
(19, 1, 3, 1, 's_3_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_3_eland_extended.txt.gz', '', 'eland_extended', ''),
(20, 1, 2, 1, 's_2_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_2_sorted.txt.gz', '', 'sorted', ''),
(21, 1, 1, 1, 's_1_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080412/s_1_sorted.txt.gz', '', 'sorted', ''),
(22, 1, 7, 2, 's_7_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080518/s_7_sorted.txt.gz', '', 'sorted', ''),
(23, 1, 7, 2, 's_7_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080518/s_7_eland_extended.txt.gz', '', 'eland_extended', ''),
(24, 1, 7, 2, 's_7_eland_multi.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080518/s_7_eland_multi.txt.gz', '', 'eland_multi', ''),
(25, 1, 7, 2, 's_7_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080518/s_7_export.txt.gz', '', 'export', ''),
(26, 1, 2, 3, 's_2_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_2_eland_extended.txt.gz', '', 'eland_extended', ''),
(27, 1, 6, 3, 's_6_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_6_sorted.txt.gz', '', 'sorted', ''),
(28, 1, 4, 3, 's_4_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_4_sorted.txt.gz', '', 'sorted', ''),
(29, 1, 5, 3, 's_5_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_5_export.txt.gz', '', 'export', ''),
(30, 1, 6, 3, 's_6_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_6_export.txt.gz', '', 'export', ''),
(31, 1, 5, 3, 's_5_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_5_eland_extended.txt.gz', '', 'eland_extended', ''),
(32, 1, 1, 3, 's_1_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_1_eland_extended.txt.gz', '', 'eland_extended', ''),
(33, 1, 5, 3, 's_5_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_5_sorted.txt.gz', '', 'sorted', ''),
(34, 1, 2, 3, 's_2_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_2_sorted.txt.gz', '', 'sorted', ''),
(35, 1, 3, 3, 's_3_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_3_eland_extended.txt.gz', '', 'eland_extended', ''),
(36, 1, 1, 3, 's_1_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_1_sorted.txt.gz', '', 'sorted', ''),
(37, 1, 4, 3, 's_4_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_4_eland_extended.txt.gz', '', 'eland_extended', ''),
(38, 1, 4, 3, 's_4_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_4_export.txt.gz', '', 'export', ''),
(39, 1, 2, 3, 's_2_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_2_export.txt.gz', '', 'export', ''),
(40, 1, 3, 3, 's_3_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_3_sorted.txt.gz', '', 'sorted', ''),
(41, 1, 3, 3, 's_3_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_3_export.txt.gz', '', 'export', ''),
(42, 1, 1, 3, 's_1_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_1_export.txt.gz', '', 'export', ''),
(43, 1, 6, 3, 's_6_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080611/s_6_eland_extended.txt.gz', '', 'eland_extended', ''),
(44, 1, 8, 3, 's_8_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080627/s_8_sorted.txt.gz', '', 'sorted', ''),
(45, 1, 7, 3, 's_7_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080627/s_7_eland_extended.txt.gz', '', 'eland_extended', ''),
(46, 1, 8, 3, 's_8_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080627/s_8_export.txt.gz', '', 'export', ''),
(47, 1, 7, 3, 's_7_export.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080627/s_7_export.txt.gz', '', 'export', ''),
(48, 1, 8, 3, 's_8_eland_extended.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080627/s_8_eland_extended.txt.gz', '', 'eland_extended', ''),
(49, 1, 7, 3, 's_7_sorted.txt.gz', 0, '', 0, '', '', '/20080404_run/align_20080627/s_7_sorted.txt.gz', '', 'sorted', ''),
(50, 2, 5, 4, 's_5_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_5_export.txt.gz', '', 'export', ''),
(51, 2, 1, 4, 's_1_eland_multi.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_1_eland_multi.txt.gz', '', 'eland_multi', ''),
(52, 2, 6, 4, 's_6_eland_multi.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_6_eland_multi.txt.gz', '', 'eland_multi', ''),
(53, 2, 3, 4, 's_3_eland_multi.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_3_eland_multi.txt.gz', '', 'eland_multi', ''),
(54, 2, 5, 4, 's_5_eland_multi.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_5_eland_multi.txt.gz', '', 'eland_multi', ''),
(55, 2, 6, 4, 's_6_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_6_export.txt.gz', '', 'export', ''),
(56, 2, 7, 4, 's_7_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_7_export.txt.gz', '', 'export', ''),
(57, 2, 8, 4, 's_8_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_8_export.txt.gz', '', 'export', ''),
(58, 2, 8, 4, 's_8_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_8_eland_extended.txt.gz', '', 'eland_extended', ''),
(59, 2, 5, 4, 's_5_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_5_eland_extended.txt.gz', '', 'eland_extended', ''),
(60, 2, 1, 4, 's_1_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_1_eland_extended.txt.gz', '', 'eland_extended', ''),
(61, 2, 5, 4, 's_5_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_5_sorted.txt.gz', '', 'sorted', ''),
(62, 2, 2, 4, 's_2_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_2_sorted.txt.gz', '', 'sorted', ''),
(63, 2, 2, 4, 's_2_eland_multi.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_2_eland_multi.txt.gz', '', 'eland_multi', ''),
(64, 2, 3, 4, 's_3_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_3_eland_extended.txt.gz', '', 'eland_extended', ''),
(65, 2, 1, 4, 's_1_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_1_sorted.txt.gz', '', 'sorted', ''),
(66, 2, 2, 4, 's_2_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_2_export.txt.gz', '', 'export', ''),
(67, 2, 4, 4, 's_4_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_4_eland_extended.txt.gz', '', 'eland_extended', ''),
(68, 2, 7, 4, 's_7_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_7_sorted.txt.gz', '', 'sorted', ''),
(69, 2, 3, 4, 's_3_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_3_sorted.txt.gz', '', 'sorted', ''),
(70, 2, 4, 4, 's_4_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_4_export.txt.gz', '', 'export', ''),
(71, 2, 8, 4, 's_8_eland_multi.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_8_eland_multi.txt.gz', '', 'eland_multi', ''),
(72, 2, 3, 4, 's_3_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_3_export.txt.gz', '', 'export', ''),
(73, 2, 8, 4, 's_8_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_8_sorted.txt.gz', '', 'sorted', ''),
(74, 2, 1, 4, 's_1_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_1_export.txt.gz', '', 'export', ''),
(75, 2, 7, 4, 's_7_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_7_eland_extended.txt.gz', '', 'eland_extended', ''),
(76, 2, 6, 4, 's_6_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_6_eland_extended.txt.gz', '', 'eland_extended', ''),
(77, 2, 6, 4, 's_6_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_6_sorted.txt.gz', '', 'sorted', ''),
(78, 2, 4, 4, 's_4_eland_multi.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_4_eland_multi.txt.gz', '', 'eland_multi', ''),
(79, 2, 4, 4, 's_4_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_4_sorted.txt.gz', '', 'sorted', ''),
(80, 2, 2, 4, 's_2_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_2_eland_extended.txt.gz', '', 'eland_extended', ''),
(81, 2, 7, 4, 's_7_eland_multi.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080422/s_7_eland_multi.txt.gz', '', 'eland_multi', ''),
(82, 2, 3, 5, 's_3_eland_result.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080424/s_3_eland_result.txt.gz', '', 'eland_result', ''),
(83, 2, 4, 5, 's_4_eland_result.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080424/s_4_eland_result.txt.gz', '', 'eland_result', ''),
(84, 2, 8, 5, 's_8_eland_result.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080424/s_8_eland_result.txt.gz', '', 'eland_result', ''),
(85, 2, 6, 5, 's_6_eland_result.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080424/s_6_eland_result.txt.gz', '', 'eland_result', ''),
(86, 2, 2, 5, 's_2_eland_result.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080424/s_2_eland_result.txt.gz', '', 'eland_result', ''),
(87, 2, 1, 5, 's_1_eland_result.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080424/s_1_eland_result.txt.gz', '', 'eland_result', ''),
(88, 2, 7, 5, 's_7_eland_result.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080424/s_7_eland_result.txt.gz', '', 'eland_result', ''),
(89, 2, 5, 5, 's_5_eland_result.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080424/s_5_eland_result.txt.gz', '', 'eland_result', ''),
(90, 2, 5, 5, 's_5_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_5_export.txt.gz', '', 'export', ''),
(91, 2, 6, 5, 's_6_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_6_export.txt.gz', '', 'export', ''),
(92, 2, 7, 5, 's_7_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_7_export.txt.gz', '', 'export', ''),
(93, 2, 8, 5, 's_8_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_8_export.txt.gz', '', 'export', ''),
(94, 2, 8, 5, 's_8_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_8_eland_extended.txt.gz', '', 'eland_extended', ''),
(95, 2, 5, 5, 's_5_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_5_eland_extended.txt.gz', '', 'eland_extended', ''),
(96, 2, 1, 5, 's_1_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_1_eland_extended.txt.gz', '', 'eland_extended', ''),
(97, 2, 5, 5, 's_5_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_5_sorted.txt.gz', '', 'sorted', ''),
(98, 2, 2, 5, 's_2_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_2_sorted.txt.gz', '', 'sorted', ''),
(99, 2, 3, 5, 's_3_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_3_eland_extended.txt.gz', '', 'eland_extended', ''),
(100, 2, 1, 5, 's_1_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_1_sorted.txt.gz', '', 'sorted', ''),
(101, 2, 2, 5, 's_2_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_2_export.txt.gz', '', 'export', ''),
(102, 2, 4, 5, 's_4_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_4_eland_extended.txt.gz', '', 'eland_extended', ''),
(103, 2, 7, 5, 's_7_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_7_sorted.txt.gz', '', 'sorted', ''),
(104, 2, 3, 5, 's_3_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_3_sorted.txt.gz', '', 'sorted', ''),
(105, 2, 4, 5, 's_4_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_4_export.txt.gz', '', 'export', ''),
(106, 2, 3, 5, 's_3_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_3_export.txt.gz', '', 'export', ''),
(107, 2, 8, 5, 's_8_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_8_sorted.txt.gz', '', 'sorted', ''),
(108, 2, 1, 5, 's_1_export.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_1_export.txt.gz', '', 'export', ''),
(109, 2, 7, 5, 's_7_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_7_eland_extended.txt.gz', '', 'eland_extended', ''),
(110, 2, 6, 5, 's_6_eland_extended.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_6_eland_extended.txt.gz', '', 'eland_extended', ''),
(111, 2, 6, 5, 's_6_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_6_sorted.txt.gz', '', 'sorted', ''),
(112, 2, 4, 5, 's_4_sorted.txt.gz', 0, '', 0, '', '', '/20080418_run/align_20080611/s_4_sorted.txt.gz', '', 'sorted', '');

--
-- テーブルのデータをダンプしています `lane`
--

INSERT INTO `lane` (`lane_id`, `run_id`, `lane_no`, `sample_name`, `organism`, `ref_genome`, `type`, `frag_size`, `is_pair`, `researcher`, `institute`, `comment`) VALUES
(1, 1, 1, 'brain01', 'Human', 'hg18', '', 0, '', 'Smith', '', ''),
(2, 1, 2, 'brain01', 'Human', 'hg18', '', 0, '', 'Smith', '', ''),
(3, 1, 3, 'brain01', 'Human', 'hg18', '', 0, '', 'Smith', '', ''),
(4, 1, 4, 'brain02', 'Human', 'hg18', '', 0, '', 'Smith', '', ''),
(5, 1, 5, 'brain02', 'Human', 'hg19', '', 0, '', 'Smith', '', ''),
(6, 1, 6, 'brain02', 'Human', 'hg19', '', 0, '', 'Smith', '', ''),
(7, 1, 7, 'ChIP-001', 'Human', 'hg19', '', 0, '', 'Training', '', ''),
(8, 1, 8, 'ChIP-002', 'Human', 'hg19', '', 0, '', 'Training', '', ''),
(9, 2, 1, 'ChIP-003', 'Human', 'hg19', '', 0, '', 'Training', '', ''),
(10, 2, 2, 'ChIP-004', 'Human', 'hg19', '', 0, '', 'Training', '', ''),
(11, 2, 3, 'ChIP-005', 'Human', 'hg19', '', 0, '', 'Training', '', ''),
(12, 2, 4, 'BS-mouse1', 'Mouse', 'mm9', '', 0, '', 'Watson', '', ''),
(13, 2, 5, 'BS-mouse2', 'Mouse', 'mm9', '', 0, '', 'Watson', '', ''),
(14, 2, 6, 'BS-mouse3', 'Mouse', 'mm9', '', 0, '', 'Watson', '', ''),
(15, 2, 7, 'BS-mouse4', 'Mouse', 'mm9', '', 0, '', 'Watson', '', '');

--
-- テーブルのデータをダンプしています `run`
--

INSERT INTO `run` (`run_id`, `run_dir`, `run_date`, `machine`, `ga`, `flowcell`, `sample_kit`, `cluster_kit`, `seq_kit`, `comment`) VALUES
(1, '20080122_run', '2008-01-22', 'EAS250', '', 'FC200v4', '', '', '', 'Day1'),
(2, '20080124_run', '2008-01-24', 'EAS250', '', 'FC20620A', '', '', '', 'Day2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
