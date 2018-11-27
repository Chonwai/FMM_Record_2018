-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:8889
-- 產生時間： 2018 年 11 月 27 日 08:24
-- 伺服器版本: 5.6.38
-- PHP 版本： 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- 資料庫： `fmm_database`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Assets`
--

CREATE TABLE `Assets` (
  `ID` int(11) NOT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `State` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Acquired_Date` varchar(255) DEFAULT NULL,
  `Purchase_Price` decimal(5,4) DEFAULT NULL,
  `Current_Value` decimal(5,4) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Manufacturer` varchar(255) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Comments` varchar(255) DEFAULT NULL,
  `Owner` varchar(255) DEFAULT NULL,
  `ID_Number` varchar(255) DEFAULT NULL,
  `Attachments` varchar(255) DEFAULT NULL,
  `Retired_Date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `Assets`
--

INSERT INTO `Assets` (`ID`, `Item`, `Description`, `Category`, `State`, `Acquired_Date`, `Purchase_Price`, `Current_Value`, `Location`, `Manufacturer`, `Model`, `Comments`, `Owner`, `ID_Number`, `Attachments`, `Retired_Date`) VALUES
(5, 'LCD-10(投影機10)', '投影機', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'EPSON', 'EB-W18', '', '15', '017-7062-7', 'photo-camera.svg', '0000-00-00 00:00:00'),
(7, '80米雷射測距儀', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'BOSCH', 'GLM 80', '', '12', '80-00010', 'printer.svg', '0000-00-00 00:00:00'),
(9, '六角匙套裝', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Swell', 'N/A', '', '12', '80-00044', '六角匙套裝 (2).jpg', '0000-00-00 00:00:00'),
(11, '聲壓計(E 機)', '<div><font face=PMingLiU>聲壓計</font><font face=Arial> E </font><font face=新細明體>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Lutron', 'SL-4030', '', '31', '01485384', '聲壓計.jpg', '0000-00-00 00:00:00'),
(13, '標籤機', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Brother', 'P-touch 7600', '', '31', '80-00008', '標籤機.gif', '0000-00-00 00:00:00'),
(15, '拉尺(5米)', '', 'Tools', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'heller', '5.0M', '', '12', '80-00046', '拉尺(5米).jpg', '0000-00-00 00:00:00'),
(17, 'PC Touch Panel', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Vity', 'TACTUM 4NTR', '', '12', '01643691', '觸控屏.png', '0000-00-00 00:00:00'),
(19, '網線壓線器', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Tyco Electronics', 'Modular Plug Hand Tool', '', '31', '80-00011', '網線壓線器 (2).jpg', '0000-00-00 00:00:00'),
(21, '手提電鑽(A 機)', '<div><font face=Arial>A </font><font face=新細明體>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'BOSCH', 'N/A', '', '12', '01389960', '手提電鑽 (2).jpg', '0000-00-00 00:00:00'),
(23, '網線壓線器', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Tyco Electronics', 'AMP RJ45 CAT6-Crimper III', '', '31', '01757991', '網線壓線器 (3).jpg', '0000-00-00 00:00:00'),
(25, 'Video Test Generator  with Audio(J 機)', '<div><font face=Arial>J </font><font face=新細明體>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Extron', 'VTG300/300R', '', '31', '01772545', 'Video Test Generater with Audio.jpg', '0000-00-00 00:00:00'),
(27, 'HDMI Twisted Pair Extender - 201', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Extron', 'HDMI 201 Tx', '', '12', '80-00002', 'HDMI Twisted Pair Extender 201Tx.jpg', '0000-00-00 00:00:00'),
(29, 'Video Test Generater with  Audio(D 機)', 'D 機', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Extron', 'VTG300/300R', '', '12', '02419051', 'Video Test Generater with Audio.jpg', '0000-00-00 00:00:00'),
(31, '線材測試儀(B機)', '<div><font face=Arial>B </font><font face=新細明體>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'FLUKE networks', 'FLUKE CABLEIQ', '', '31', '01619061', '線材測試儀.jpg', '0000-00-00 00:00:00'),
(33, '訊號轉換器', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'KRAMER TOOLS', 'N/A', '', '12', '85-02027', 'KRAMER TOOLS 訊號轉換器.jpg', '0000-00-00 00:00:00'),
(35, 'Multi-Function PC Cable Tester', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Hobbes', 'TEST-I', '', '12', '01452005', 'Multi-Function PC Cable tester.jpg', '0000-00-00 00:00:00'),
(37, 'Light Meter', '待報銷機', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'ISO-TECH', 'ILM 1335', '', '12', '01358699', 'ISO-TECH ILM 1335.jpg', '0000-00-00 00:00:00'),
(39, '線材測試儀(C 機)', '<div><font face=Arial>C </font><font face=新細明體>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'FLUKE networks', 'FLUKE CABLEIQ qualifiaction tester', '', '31', '80-00021', '線材測試儀.jpg', '0000-00-00 00:00:00'),
(41, '02419051', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'SUPER', 'WA8433', '', '12', '01165514', '8吋.jpg', '0000-00-00 00:00:00'),
(43, '熱風槍', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'STEINEL', 'HL 2010 E', '', '31', '01527441', '熱風機.jpg', '0000-00-00 00:00:00'),
(45, '焊槍(C機)', '<div><font face=Arial>C</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'iroda', 'solderpro 120', '', '31', '80-00048', '焊槍.jpg', '0000-00-00 00:00:00'),
(47, '追線器(A機)', '<div><font face=Arial>A</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'GREENLEE', '200EP-G', '', '31', '01619030', '追線器.jpg', '0000-00-00 00:00:00'),
(49, 'PC audio interface', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'TASCAM', 'US-144MKII', '', '12', '01485398', '', '0000-00-00 00:00:00'),
(51, 'LCD-07(投影機07)', '<div><font face=新細明體>投影機</font><font face=Arial>07</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'EPSON', 'H550C', '', '12', '017-7064-4', 'LCD( EPSON).png', '0000-00-00 00:00:00'),
(53, 'LCD-05(投影機05)', '<div><font face=SimSun>投影機</font><font face=Arial>05</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'EPSON', 'H550C', '', '12', '017-7063-1', 'LCD( EPSON).png', '0000-00-00 00:00:00'),
(55, 'LCD-02(前腳損壞)', '<div><font face=PMingLiU>前腳損壞</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'EPSON', 'H550C', '', '5', '017-7067-5', 'LCD( EPSON).png', '0000-00-00 00:00:00'),
(57, 'LCD-08(投影機08)', '<div><font face=SimSun>投影機</font><font face=Arial>08</font></div>\r\n\r\n<div>&nbsp;</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'EPSON', 'H550C', '', '12', '017-7066-1', 'LCD( EPSON).png', '0000-00-00 00:00:00'),
(59, 'SPK-MIC-04(小露寶04)', '<div><font face=SimSun>小露寶</font><font face=Arial>04</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'SENRUN', 'EP-810', '', '12', '01766898', 'SPK-MIC.jpg', '0000-00-00 00:00:00'),
(61, 'SCN-10(投影幕-10)', '<div><font face=新細明體>投影</font><font face=SimSun>幕</font><font face=Arial>10</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'DA-LITE', 'N/A', '', '12', '017-7058-1', 'SCN (DA-LITE).png', '0000-00-00 00:00:00'),
(63, 'SPK-MIC-05(小露寶05)', '<div><font face=新細明體>小露寶</font><font face=Arial>05</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'SENRUN', 'EP-810', '', '12', '00976356', 'SPK-MIC.jpg', '0000-00-00 00:00:00'),
(65, 'LCD-03(投影機03)', '', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'EPSON', '4562', '', '12', '01770689', '', '0000-00-00 00:00:00'),
(67, 'HAND-MIC-02(有线话筒-02)', '<div><font face=SimSun>有线话筒</font><font face=Arial>-02</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'SENRUN', 'N/A', '', '12', '903-0041-8', 'HAND-MIC-02.jpg', '0000-00-00 00:00:00'),
(69, 'HAND-MIC-04(有线话筒-04)', '<div><font face=SimSun>有线话筒</font><font face=Arial>-04</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'SENRUN', 'N/A', '', '12', '015-2449-1', 'HAND-MIC-03.jpg', '0000-00-00 00:00:00'),
(71, 'Distribution Amplifier(分配放大器)', '<div><font face=SimSun>分配放大器</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Extron', 'P/2 DA2XI', '', '12', '01638708', 'Distributin Amplifier.jpg', '0000-00-00 00:00:00'),
(73, 'LMS-05(企地咪架05)', '<div><font face=SimSun>企地咪架</font><font face=Arial>05</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'K&M baseline', '27105', '', '12', '012-2610-3', '', '0000-00-00 00:00:00'),
(75, 'SCN-02(投影幕-02)', '<div><font face=SimSun>投影幕</font><font face=Arial>-02</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'DA-LITE', 'N/A', '', '12', '017-7057-8', 'SCN (DA-LITE).png', '0000-00-00 00:00:00'),
(77, 'SCN-06(投影幕-06)', '<div><font face=SimSun>投影幕</font><font face=Arial>-06</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'GRANDVIEW', 'N/A', '', '12', '009-2380-9', '', '0000-00-00 00:00:00'),
(79, 'SCN-08(投影幕-08)', '<div><font face=SimSun>投影幕</font><font face=Arial>08</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'DRAPER', 'N/A', '', '12', '01780714', 'Consul Projection Screen.jpg', '0000-00-00 00:00:00'),
(81, 'SPK-MIC-01(小露寶01)', '<div><font face=SimSun>小露寶</font><font face=Arial>01</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'MIPRO', 'MA-707', '', '12', '85-08961', 'mipro-ma707.jpg', '0000-00-00 00:00:00'),
(83, 'SPK-MIC-03(小露寶03)', '小露寶03', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'SENRUN', 'EP-810', '', '12', '01642520', 'SPK-MIC.jpg', '0000-00-00 00:00:00'),
(85, '01607534', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', '', '', '', '', 'Na-007', 'QVSVPG-H.jpg', '0000-00-00 00:00:00'),
(87, 'BNC 壓線鉗', '', 'testing equipment', '(2) Good', '2015-03-27 00:00:00', '0.0000', '0.0000', 'E3-G040', 'Extron', '100-181-01', '', '12', '01538044', '100-181-01.jpg', '0000-00-00 00:00:00'),
(89, '', '', '', '', '', '0.0000', '0.0000', 'E7-G002', '', '', '', '31', 'Na-005', 'ExtronVTG300-300R.JPG', '0000-00-00 00:00:00'),
(91, '7吋顯示屏(B)', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'N/A', 'N/A', '', '31', '01711957', '7吋.jpg', '0000-00-00 00:00:00'),
(93, '7吋顯示屏(A機)', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'N/A', 'N/A', '', '31', '01711943', '7吋.jpg', '0000-00-00 00:00:00'),
(95, 'Digital Multimeter(D機)', '<div><font face=Arial>D</font><font face=PMingLiU>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'sanwa', 'CD 800a', '', '31', '80-00025', 'Digital Multimeter (Ta 標).jpg', '0000-00-00 00:00:00'),
(97, 'Video Test Generator with Audio(F機)', '<div><font face=Arial>F</font><font face=PMingLiU>機</font></div>\r\n\r\n<div>&nbsp;</div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'Extron', 'VTG 300R', '', '31', '01607548', 'ExtronVTG300-300R.JPG', '0000-00-00 00:00:00'),
(99, 'Light Meter(B機)', '<div><font face=Arial>B</font><font face=PMingLiU>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E3-G040', 'ISO-TECH', 'ILM 1335', '', '31', '01772895', 'ISO-TECH ILM 1335.jpg', '0000-00-00 00:00:00'),
(100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'testing equipment', '(2) Good', '', '0.0000', '0.0000', '0.0000', '0.0000', 'SL-4030', '', '31', '', 'Lu', '\"\r\n\"101', '聲壓計(C 機)', '0000-00-00 00:00:00'),
(102, '聲壓計(A 機)', '<div><font face=PMingLiU>聲壓計</font><font face=Arial> A </font><font face=新細明體>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Lutron', 'SL-4030', '', '31', '80-00030', 'LutronSL-4030.jpg', '0000-00-00 00:00:00'),
(104, '插座檢查器(A機)', '<div><font face=Arial>A </font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'SOCKET & SEE', 'SOK 36', '', '31', '80-00026', 'SOCKET_SEE_SOK36.jpg', '0000-00-00 00:00:00'),
(106, '插座檢查器(C機)', '<div><font face=Arial>C</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'SOCKET & SEE', 'SOK 36', '', '31', '80-00028', 'SOCKET_SEE_SOK36.jpg', '0000-00-00 00:00:00'),
(108, '拉尺(5米)', '', 'Tools', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'KNIGHT', '5.0M', '', '31', '80-00083', '', '0000-00-00 00:00:00'),
(110, '焊槍(D機)', '<div>D<font face=PMingLiU>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'iroda', 'solderpro 120', '', '31', '85-08833', '焊槍.jpg', '0000-00-00 00:00:00'),
(112, '電容式測量音頻咪', '', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'DBX', 'RTA-M', '', '31', '01485402', 'dbxRTA-M.jpg', '0000-00-00 00:00:00'),
(114, 'AFL', '', '', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'AFL', 'FOCIS-00-04XU', '', '31', '03482163', 'AFL FOCIS-00-04XU.jpg', '0000-00-00 00:00:00'),
(116, 'HDMI Test Generater(D機)', '<div>D<font face=PMingLiU>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', '', 'VPG-H', '', '31', '02419101', 'QVSVPG-H.jpg', '0000-00-00 00:00:00'),
(118, 'HDMI Test Generater(A機)', '<div><font face=Arial>A</font><font face=PMingLiU>機</font></div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'QVS', 'VPG-H', '', '31', '02419082', 'QVSVPG-H.jpg', '0000-00-00 00:00:00'),
(120, 'Light Meter(A機)', '<div>(A<font face=PMingLiU>機</font>)</div>', 'testing equipment', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'ISO-TECH', 'ILM 1335', '', '31', '01772878', 'ISO-TECH ILM 1335.jpg', '0000-00-00 00:00:00'),
(122, 'Tools', '', 'Tools', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'TYCO ELECTRONICS', '1725150', '', '31', '80-00069', 'Tyco Electronics 1725150.jpg', '0000-00-00 00:00:00'),
(124, '水平尺', '', 'Tools', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'KAPRO', 'NA', '', '31', '80-00071', 'KAPRO 水平尺.jpg', '0000-00-00 00:00:00'),
(126, 'Talkbox', '', 'Tools', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Nti Audio', 'NA', '', '31', '03738557', 'Nti-Audio Talkbox.JPG', '0000-00-00 00:00:00'),
(128, 'Cable Test Plug for MR-PRO', '', 'Tools', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Nti Audio', 'MR-PRO', '', '31', '01773051', 'Cable Test Plug for MR-PRO.jpg', '0000-00-00 00:00:00'),
(130, '電動螺絲批 (A機)', '<div>(A<font face=PMingLiU>機</font>)</div>', 'Tools', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Makita', 'DC07SA', '', '31', '01219682', 'Makita DC07SA.jpg', '0000-00-00 00:00:00'),
(132, 'NTI case箱', '', '(1) Category', '(2) Good', '', '0.0000', '0.0000', '', '', '', '', '', 'Na-003', '', '0000-00-00 00:00:00'),
(134, 'NTI case箱', '', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'NTI', 'CASE', '', '31', '03738637', '', '0000-00-00 00:00:00'),
(136, 'Light Meter(E機)', '<div>Light Meter(E<font face=PMingLiU>機</font>)</div>', 'testing equipment', '(1) Great', '', '0.0000', '0.0000', 'E7-G002', 'ISO-TECH', 'ILM 1335', '', '31', '85-09159', 'R442035-24.jpg', '0000-00-00 00:00:00'),
(138, 'MDP-VGA-02 (Mini DisplayPort to VGA)', '<div>MDP-VGA-02 (Mini DisplayPort to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'DELL', '', '', '31', 'MDP-VGA-02', 'DELL Mini DisplayPort to VGA.jpg', '0000-00-00 00:00:00'),
(140, 'MDP-VGA-03 (Mini DisplayPort to VGA)', '<div>MDP-VGA-03 (Mini DisplayPort to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'BELKIN', '', '', '31', 'MDP-VGA-03', 'BELKIN Mini DisplayPort to VGA.jpg', '0000-00-00 00:00:00'),
(142, 'MDP-VGA-05 (Mini DisplayPort to VGA)', '<div>MDP-VGA-05 (Mini DisplayPort to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'BELKIN', '', '', '31', 'MDP-VGA-05', 'BELKIN Mini DisplayPort to VGA.jpg', '0000-00-00 00:00:00'),
(144, 'MDP-VGA-08 (Apple Mini DisplayPort to VGA)', '<div>MDP-VGA-08 (Apple Mini DisplayPort to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Apple', '', '', '31', 'MDP-VGA-08', 'Apple Mini DisplayPort to VGA.jpg', '0000-00-00 00:00:00'),
(146, 'DVIF-HDMIM-03 (DVIF to HDMIM)', '<div>DVIF-HDMIM-03 &nbsp;(DVIF to HDMIM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIM-03', 'Extron DVIF to HDMIM.jpg', '0000-00-00 00:00:00'),
(148, 'DVIF-HDMIM-05 (DVIF to HDMIM)', '<div>DVIF-HDMIM-05 (DVIF to HDMIM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIM-05', 'Extron DVIF to HDMIM.jpg', '0000-00-00 00:00:00'),
(150, 'DVIF-HDMIM-07 (DVIF to HDMIM)', '<div>DVIF-HDMIM-07 (DVIF to HDMIM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIM-07', 'Extron DVIF to HDMIM.jpg', '0000-00-00 00:00:00'),
(152, 'DVIF-HDMIM-09 (DVIF to HDMIM)', '<div>DVIF-HDMIM-09 &nbsp;(DVIF to HDMIM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIM-09', 'Extron DVIF to HDMIM.jpg', '0000-00-00 00:00:00'),
(154, 'DVIF-HDMIM-11 (DVIF to HDMIM)', '<div>DVIF-HDMIM-11 (DVIF to HDMIM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIM-11', 'Extron DVIF to HDMIM.jpg', '0000-00-00 00:00:00'),
(156, 'DVIF-HDMIM-13  (DVIF to HDMIM)', '<div>DVIF-HDMIM-13 &nbsp;(DVIF to HDMIM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIM-13', 'Extron DVIF to HDMIM.jpg', '0000-00-00 00:00:00'),
(158, 'DVIF-HDMIM-15 (DVIF to HDMIM)', '<div>DVIF-HDMIM-15 (DVIF to HDMIM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIM-15', 'Extron DVIF to HDMIM.jpg', '0000-00-00 00:00:00'),
(160, 'DVIF-HDMIM-17 (DVIF to HDMIM)', '<div>DVIF-HDMIM-17 &nbsp;(DVIF to HDMIM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIM-17', 'Extron DVIF to HDMIM.jpg', '0000-00-00 00:00:00'),
(162, 'DVIF-HDMIM-19  (DVIF to HDMIM)', '<div>DVIF-HDMIM-19 &nbsp;(DVIF to HDMIM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIM-19', 'Extron DVIF to HDMIM.jpg', '0000-00-00 00:00:00'),
(164, 'HDMIM-VGAF-01 (HDMI to VGA)', '<div>HDMIM-VGAF-01 (HDMI to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'UGREEN 綠聯', '', '', '31', 'HDMIM-VGAF-01', 'UGREEN HDMI to VGA.jpg', '0000-00-00 00:00:00'),
(166, 'HDMIM-VGAF-03 (HDMI to VGA)', '<div>HDMIM-VGAF-03 (HDMI to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'UGREEN 綠聯', '', '', '31', 'HDMIM-VGAF-03', 'UGREEN HDMI to VGA.jpg', '0000-00-00 00:00:00'),
(168, 'HDMIM-VGAF-05 (HDMI to VGA)', '<div>HDMIM-VGAF-05 (HDMI to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'DELL', '', '', '31', 'HDMIM-VGAF-05', 'DELL HDMI to VGA.jpg', '0000-00-00 00:00:00'),
(170, 'HDMIM-VGAF-07 (HDMI to VGA)', '<div>HDMIM-VGAF-07 (HDMI to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'SONY', '', '', '31', 'HDMIM-VGAF-07', 'SONY HDMI to VGA.jpg', '0000-00-00 00:00:00'),
(172, 'HDMIM-VGAF-09 (HDMI to VGA)', '<div>HDMIM-VGAF-09 (HDMI to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'SONY', '', '', '31', 'HDMIM-VGAF-09', 'SONY HDMI to VGA.jpg', '0000-00-00 00:00:00'),
(174, 'HDMIM-VGAF-11 (HDMI to VGA)', '<div>HDMIM-VGAF-11 (HDMI to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'SONY', '', '', '31', 'HDMIM-VGAF-11', 'SONY HDMI to VGA.jpg', '0000-00-00 00:00:00'),
(176, 'VISU-04 (實物投影機)', '<div>VISU-04 (<font face=PMingLiU>實物投影機</font>)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EPSON', '', '', '31', '01979481', 'EPSON visualizer.jpg', '0000-00-00 00:00:00'),
(178, 'VISU-01 (實物投影機01)', '<div>VISU-01 (<font face=PMingLiU>實物投影機</font><font face=Arial>01</font>)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EPSON', '', '', '31', '01979415', 'EPSON visualizer.jpg', '0000-00-00 00:00:00'),
(180, 'DMS-04 (座枱咪架)', '<div>DMS-04 (<font face=PMingLiU>座枱咪架</font>)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', '', '', '', '31', '85-09790', '座枱麥架.jpg', '0000-00-00 00:00:00'),
(182, 'TV-02', '<div><font face=Arial>TV-02</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'SONY', '', '', '31', '80-00051', 'SONY tv.jpg', '0000-00-00 00:00:00'),
(184, 'DMS-09 (座枱咪架)', '<div>DMS-09 (<font face=新細明體>座枱咪架</font>)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'K&M', '', '', '31', '01781012', '座枱麥架.jpg', '0000-00-00 00:00:00'),
(186, 'DMS-01 (座枱咪架)', '<div>DMS-01 (<font face=PMingLiU>座枱咪架</font>)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', '國產', '', '', '31', '85-09787', '座枱麥架.jpg', '0000-00-00 00:00:00'),
(188, 'DMS-07 (座枱咪架)', '<div>DMS-<font face=Arial>07</font> (<font face=PMingLiU>座枱咪架</font>)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', '國產', '', '', '31', '01226006', '座枱麥架.jpg', '0000-00-00 00:00:00'),
(190, 'DMS-10 (座枱咪架)', '<div>DMS-10 (<font face=PMingLiU>座枱咪架</font>)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'K&M', '', '', '31', '01780998', '座枱麥架.jpg', '0000-00-00 00:00:00'),
(192, 'DMS-03 (座枱咪架)', '<div>DMS-03 (<font face=PMingLiU>座枱咪架</font>)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', '', '', '', '31', '85-09789', '座枱麥架.jpg', '0000-00-00 00:00:00'),
(194, 'DVIAM-VGAF-09 (DVI to VGA)', '<div>DVIAM-VGAF-09 (DVI to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIAM-VGAF-09', 'Extron DVIAM-VGAF.jpg', '0000-00-00 00:00:00'),
(196, 'DVIAM-VGAF-04 (DVI to VGA)', '<div>DVIAM-VGAF-04 (DVI to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIAM-VGAF-04', 'Extron DVIAM-VGAF.jpg', '0000-00-00 00:00:00'),
(198, 'DVIAM-VGAF-02 (DVI to VGA)', '<div>DVIAM-VGAF-04 (DVI to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIAM-VGAF-02', 'Extron DVIAM-VGAF.jpg', '0000-00-00 00:00:00'),
(200, 'DVIAM-VGAF-01 (DVI to VGA)', '<div>DVIAM-VGAF-01 (DVI to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIAM-VGAF-01', 'Extron DVIAM-VGAF.jpg', '0000-00-00 00:00:00'),
(202, 'DPM-HDMIF-08 (DisplayPort to HDMI )', '<div>DPM-HDMIF-08 (DisplayPort to HDMI )</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DPM-HDMIF-08', 'Extron DPM-HDMIF.jpg', '0000-00-00 00:00:00'),
(204, 'VCR-01', '<div>VCR-01</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Panasonic', '', '', '31', '01186937', '', '0000-00-00 00:00:00'),
(206, 'DPM-HDMIF-03 (DisplayPort to HDMI )', '<div>DPM-HDMIF-03 (DisplayPort to HDMI )</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DPM-HDMIF-03', 'Extron DPM-HDMIF.jpg', '0000-00-00 00:00:00'),
(208, 'DPM-HDMIF-17 (DisplayPort to HDMI )', '<div>DPM-HDMIF-1<font face=Arial>7</font> (DisplayPort to HDMI )</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DPM-HDMIF-17', 'Extron DPM-HDMIF.jpg', '0000-00-00 00:00:00'),
(210, 'DVIF-HDMIF-07 (DVIF to HDMIF)', '<div>DVIF-HDMIF-07 (DVIF to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIF-HDMIF-07', 'Extron DVIF to HDMIF.jpg', '0000-00-00 00:00:00'),
(212, 'DPM-HDMIF-05 (DisplayPort to HDMI )', '<div>DPM-HDMIF-05 (DisplayPort to HDMI )</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DPM-HDMIF-05', 'Extron DPM-HDMIF.jpg', '0000-00-00 00:00:00'),
(213, 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '31', '', 'Ex', '\"\r\n\"214', 'DPM-HDMIF-11 (DisplayPort to HDMI )', '0000-00-00 00:00:00'),
(215, 'DPM-HDMIF-18 (DisplayPort to HDMI )', '<div>DPM-HDMIF-18 (DisplayPort to HDMI )</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DPM-HDMIF-18', 'Extron DPM-HDMIF.jpg', '0000-00-00 00:00:00'),
(217, 'MHLM-HDMIF-04 (Micro USB to HDMI MHL Adapter)', '<div>MHLM-HDMIF-04 (Micro USB to HDMI MHL Adapter)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Belkin', '', '', '31', 'MHLM-HDMIF-04', 'Belkin Micro USB to HDMI MHL Adapter.jpeg', '0000-00-00 00:00:00'),
(219, 'MHLM-HDMIF-02 (Micro USB to HDMI MHL Adapter)', '<div>MHLM-HDMIF-02 (Micro USB to HDMI MHL Adapter)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'CE-LINK', '', '', '31', 'MHLM-HDMIF-02', 'CE LINK MHLM to HDMI.jpg', '0000-00-00 00:00:00'),
(221, 'DVIF-DPM-03 (DVI to DPM)', '<div>DVIF-DPM-03 (DVI to DPM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'BizLink', '', '', '31', 'DVIF-DPM-03', 'Bizlink DVIF to DPM.jpg', '0000-00-00 00:00:00'),
(223, 'DVIF-DPM-01 (DVI to DPM)', '<div>DVIF-DPM-01 (DVI to DPM)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'BizLink', '', '', '31', 'DVIF-DPM-01', 'Bizlink DVIF to DPM.jpg', '0000-00-00 00:00:00'),
(225, 'DVIM-HDMIF-09 (DVIM to HDMIF)', '<div>DVIM-HDMIF-09 (DVIM to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIM-HDMIF-09', 'Extron DVIM to HDMIF.jpg', '0000-00-00 00:00:00'),
(227, 'DVIM-HDMIF-16 (DVIM to HDMIF)', '<div>DVIM-HDMIF-16 (DVIM to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIM-HDMIF-16', 'Extron DVIM to HDMIF.jpg', '0000-00-00 00:00:00'),
(229, 'DVIM-HDMIF-17 (DVIM to HDMIF)', '<div>DVIM-HDMIF-17 (DVIM to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIM-HDMIF-17', 'Extron DVIM to HDMIF.jpg', '0000-00-00 00:00:00'),
(231, 'DVIM-HDMIF-19(DVIM to HDMIF)', '<div>DVIM-HDMIF-<font face=Arial>19</font>(DVIM to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIM-HDMIF-19', 'Extron DVIM to HDMIF.jpg', '0000-00-00 00:00:00'),
(233, 'DVIM-HDMIF-18(DVIM to HDMIF)', '<div>DVIM-HDMIF-18(DVIM to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIM-HDMIF-18', 'Extron DVIM to HDMIF.jpg', '0000-00-00 00:00:00'),
(235, 'DVIM-HDMIF-08(DVIM to HDMIF)', '<div>DVIM-HDMIF-08 (DVIM to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIM-HDMIF-08', 'Extron DVIM to HDMIF.jpg', '0000-00-00 00:00:00'),
(237, 'DVIM-HDMIF-12(DVIM to HDMIF)', '<div>DVIM-HDMIF-1<font face=Arial>2</font>(DVIM to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIM-HDMIF-12', 'Extron DVIM to HDMIF.jpg', '0000-00-00 00:00:00'),
(239, 'DVIM-HDMIF-15(DVIM to HDMIF)', '<div>DVIM-HDMIF-<font face=Arial>15</font></div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'EXTRON', '', '', '31', 'DVIM-HDMIF-15', 'Extron DVIM to HDMIF.jpg', '0000-00-00 00:00:00'),
(241, 'DVIM-HDMIF-03(DVIM to HDMIF)', '<div>DVIM-HDMIF-0<font face=Arial>3</font>(DVIM to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', '', '', '', '31', 'DVIM-HDMIF-03', 'Extron DVIM to HDMIF.jpg', '0000-00-00 00:00:00'),
(243, 'DVIF-HDMIF-06 (DVIF to HDMIF)', '<div>DVIF-HDMIF-06 (DVIF to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIF-06', 'Extron DVIF to HDMIF.jpg', '0000-00-00 00:00:00'),
(245, 'DVIF-HDMIF-05 (DVIF to HDMIF)', '<div>DVIF-HDMIF-05 (DVIF to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIF-05', 'Extron DVIF to HDMIF.jpg', '0000-00-00 00:00:00'),
(247, 'DPM-DVIF-02 (DPM to DVIF)', '<div>DPM-DVIF-02</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Bizlink', '', '', '31', 'DPM-DVIF-02', 'Bizlink DPM to DVIF.jpg', '0000-00-00 00:00:00'),
(249, 'DVIF-HDMIF-02 (DVIF to HDMIF)', '<div>DVIF-HDMIF-02 (DVIF to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIF-02', 'Extron DVIF to HDMIF.jpg', '0000-00-00 00:00:00'),
(251, 'DVIF-HDMIF-08 (DVIF to HDMIF)', '<div>DVIF-HDMIF-08 (DVIF to HDMIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Extron', '', '', '31', 'DVIF-HDMIF-08', 'Extron DVIF to HDMIF.jpg', '0000-00-00 00:00:00'),
(253, 'DPM-DVIF-05 (DPM to DVIF)', '<div>DPM-DVIF-05 (DPM to DVIF)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Bizlink', '', '', '31', 'DPM-DVIF-05', 'Bizlink DPM to DVIF.jpg', '0000-00-00 00:00:00'),
(255, 'LN-VGA-03 (Apple Lightning to VGA Adapter)', '<div>LN-VGA-03 (Apple Lightning to VGA Adapter)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Apple', '', '', '31', 'LN-VGA-03', 'Apple Lightning to VGA Adapter.jpg', '0000-00-00 00:00:00'),
(257, 'LN-VGA-02 (Apple Lightning to VGA Adapter)', '<div>LN-VGA-02 (Apple Lightning to VGA Adapter)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Apple', '', '', '31', 'LN-VGA-02', 'Apple Lightning to VGA Adapter.jpg', '0000-00-00 00:00:00'),
(259, 'LN-VGA-08 (Apple Lightning to VGA Adapter)', '<div>LN-VGA-08 (Apple Lightning to VGA Adapter)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Apple', '', '', '31', 'LN-VGA-08', 'Apple Lightning to VGA Adapter.jpg', '0000-00-00 00:00:00'),
(261, 'VGA-Ipad-02 (Apple iPad to VGA)', '<div>VGA-Ipad-02 (Apple iPad to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Apple', '', '', '31', 'VGA-Ipad-02', 'Apple iPad to VGA.jpg', '0000-00-00 00:00:00'),
(263, 'LN-HDMI-06 (Apple Lightning to HDMI Adapter)', '<div>LN-HDMI-06 (Apple Lightning to HDMI Adapter)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Apple', '', '', '31', 'LN-HDMI-06', 'Apple Lightning to HDMI Adapter.jpg', '0000-00-00 00:00:00'),
(265, 'LN-HDMI-09 (Apple Lightning to HDMI Adapter)', '<div>LN-HDMI-09 (Apple Lightning to HDMI Adapter)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Apple', '', '', '31', 'LN-HDMI-09', 'Apple Lightning to HDMI Adapter.jpg', '0000-00-00 00:00:00'),
(267, 'SS-02 (喇叭三腳架)', '<div>SS-02 (<font face=PMingLiU>喇叭三腳架</font>)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', '', '', '', '31', '00976360', '喇叭三腳架.jpg', '0000-00-00 00:00:00'),
(269, 'MDP-VGA-10 (Apple Mini DisplayPort to VGA)', '<div>MDP-VGA-10 (Apple Mini DisplayPort to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Apple', '', '', '31', 'MDP-VGA-10', 'Apple Mini DisplayPort to VGA.jpg', '0000-00-00 00:00:00'),
(271, 'MDP-VGA-07 (Mini DisplayPort to VGA)', '<div>MDP-VGA-07 (Mini DisplayPort to VGA)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Belkin', '', '', '31', 'MDP-VGA-07', 'BELKIN Mini DisplayPort to VGA.jpg', '0000-00-00 00:00:00'),
(273, 'MDPM-HDMIF-06 (Mini Displayport to HDMI)', '<div>MDPM-HDMIF-06 (Mini Displayport to HDMI)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'BELKIN', '', '', '31', 'MDPM-HDMIF-06', 'BELKIN Mini DisplayPort to HDMI.jpg', '0000-00-00 00:00:00'),
(275, 'MDPM-HDMIF-09 (Mini Displayport to HDMI)', '<div>MDPM-HDMIF-09 (Mini Displayport to HDMI)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'BELKIN', '', '', '31', 'MDPM-HDMIF-09', 'BELKIN Mini DisplayPort to HDMI.jpg', '0000-00-00 00:00:00'),
(277, 'MDPM-HDMIF-11 (Mini Displayport to HDMI)', '<div>MDPM-HDMIF-11 (Mini Displayport to HDMI)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'BELKIN', '', '', '31', 'MDPM-HDMIF-11', 'BELKIN Mini DisplayPort to HDMI.jpg', '0000-00-00 00:00:00'),
(279, 'MDPM-HDMIF-13 (Mini Displayport to HDMI)', '<div>MDPM-HDMIF-13</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', '', '', '', '31', 'MDPM-HDMIF-13', 'BELKIN Mini DisplayPort to HDMI.jpg', '0000-00-00 00:00:00'),
(281, 'LMS-02(企地咪架02)', '<div>LMS-02(<font face=PMingLiU>企地咪架</font>02)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', '', '', '', '31', '01226179', '企地咪架.jpg', '0000-00-00 00:00:00'),
(283, 'IR-MIC-02 (無線咪02)', '<div>IR-MIC-02 (<font face=PMingLiU>無線咪</font>02)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Linkx', '', '', '31', 'IR-MIC-02', 'linkx microphone.jpg', '0000-00-00 00:00:00'),
(285, 'IR-MIC-04 (無線咪04)', '<div>IR-MIC-04 (<font face=PMingLiU>無線咪</font>04)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Linkx', '', '', '31', 'IR-MIC-04', 'linkx microphone.jpg', '0000-00-00 00:00:00'),
(287, 'IR-MIC-06 (無線咪06)', '<div>IR-MIC-06 (<font face=PMingLiU>無線咪</font>06)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Linkx', '', '', '31', 'IR-MIC-06', 'linkx microphone.jpg', '0000-00-00 00:00:00'),
(289, 'LAPEL-MIC-2(夾咪2)', '<div>LAPEL-MIC-<font face=Arial>2</font>(<font face=PMingLiU>夾咪</font>2)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Linkx', 'T6', '', '31', 'LAPEL-MIC-2', '夾咪.jpg', '0000-00-00 00:00:00'),
(291, 'LAPEL-MIC-4(夾咪4)', '<div>LAPEL-MIC-4(<font face=PMingLiU>夾咪</font>4)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Linkx', 'T6', '', '31', 'LAPEL-MIC-4', '夾咪.jpg', '0000-00-00 00:00:00'),
(293, 'LAPEL-MIC-6(夾咪6)', '<div>LAPEL-MIC-6(<font face=PMingLiU>夾咪</font>6)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Linkx', 'T6', '', '31', 'LAPEL-MIC-6', '夾咪.jpg', '0000-00-00 00:00:00'),
(295, 'LAPEL-MIC-8(夾咪8)', '<div>LAPEL-MIC-8(<font face=PMingLiU>夾咪</font>8)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Linkx', 'T6', '', '31', 'LAPEL-MIC-8', '夾咪.jpg', '0000-00-00 00:00:00'),
(297, 'LAPEL-MIC-10(夾咪10)', '<div>LAPEL-MIC-10(<font face=PMingLiU>夾咪</font>10)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Linkx', 'T6', '', '31', 'LAPEL-MIC-10', '夾咪.jpg', '0000-00-00 00:00:00'),
(299, 'LAPEL-MIC-12(夾咪12)', '<div>LAPEL-MIC-12(<font face=PMingLiU>夾咪</font>12)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Linkx', 'T6', '', '31', 'LAPEL-MIC-12', '夾咪.jpg', '0000-00-00 00:00:00'),
(301, 'DVD-01(DVD機1)', '<div>DVD-01(DVD<font face=PMingLiU>機</font>1)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Pioneer', '', '', '31', '903-0044-2', 'DVD機.jpg', '0000-00-00 00:00:00'),
(303, '', '', '(1) Category', '(2) Good', '', '0.0000', '0.0000', '', 'Nti Audio', '94/114', '', '', 'NA-001', '', '0000-00-00 00:00:00'),
(305, 'Recorder', '<div>Recorder</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Panasonic', 'NV-HV62', '', '', '01186941', 'Super drive.jpg', '0000-00-00 00:00:00'),
(307, 'VGA Splitter 4-ports', '', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Aten', '', '', '', '01622425', '', '0000-00-00 00:00:00'),
(309, 'Light Meter(F機)', '<div>Light Meter(F<font face=PMingLiU>機</font>)</div>', 'testing equipment', '(1) Great', '', '0.0000', '0.0000', 'E7-G002', 'ISO-TECH', 'ILM 1335', '', '31', '03476118', 'R442035-24.jpg', '0000-00-00 00:00:00'),
(311, 'Presenter(02)', '<div>Presenter(02)</div>', 'Equipment booking', '(1) Great', '', '0.0000', '0.0000', 'E7-G002', 'Logitech', 'R800', '', '31', '85-09337', 'presenter.jpg', '0000-00-00 00:00:00'),
(313, 'TV_Presenter(01)', '<div>TV_Presenter(01)</div>', 'Equipment booking', '(1) Great', '', '0.0000', '0.0000', 'E7-G002', 'Logitech', 'R-R0011', '', '31', '85-09334', 'TV_Presenter.png', '0000-00-00 00:00:00'),
(315, 'EK100 (RX-B)', '', 'Equipment booking', '(2) Good', '2017-07-17 00:00:00', '0.0000', '0.0000', 'E7-G002', 'SENNHEISER', 'EK100', '', '31', '85-08937', 'ew100ENGG3_hires.jpg', '0000-00-00 00:00:00'),
(317, 'SK100 (TX-C)', '', 'Equipment booking', '(2) Good', '2017-07-17 00:00:00', '0.0000', '0.0000', 'E7-G002', 'SENNHEISER', 'SK100', '', '31', '85-08955', 'ew100ENGG3_hires.jpg', '0000-00-00 00:00:00'),
(319, 'SKB case (B)', '', 'Equipment booking', '(2) Good', '2017-07-17 00:00:00', '0.0000', '0.0000', 'E7-G002', 'I series', 'SKB case', '', '31', '85-09146', 'SKB case.jpg', '0000-00-00 00:00:00'),
(321, 'e835 microphone (TX-A)', '', 'Equipment booking', '(2) Good', '2017-07-17 00:00:00', '0.0000', '0.0000', 'E7-G002', 'SENNHEISER', 'SKM100', '', '31', '85-08936', 'e835 mic.jpg', '0000-00-00 00:00:00'),
(323, 'EK100 (RX-E/F)', '', 'Equipment booking', '(2) Good', '2017-07-18 00:00:00', '0.0000', '0.0000', 'E7-G002', 'SENNHEISER', 'EK100', '', '31', '85-08958', 'ew100ENGG3_hires.jpg', '0000-00-00 00:00:00'),
(325, 'SKP100 (TX-E)', '', 'Equipment booking', '(2) Good', '2017-07-18 00:00:00', '0.0000', '0.0000', 'E7-G002', 'SENNHEISER', 'SKP100', '', '31', '85-08960', 'ew100ENGG3_hires.jpg', '0000-00-00 00:00:00'),
(327, 'HDMI Splitter 2-ports', '', '(1) Category', '(2) Good', '', '0.0000', '0.0000', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
(329, '白板', '', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', '', '', '', '', '31', '03218918', '', '0000-00-00 00:00:00'),
(331, 'MIR-HDMI-02', '', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
(333, 'MIN-HDMI-02', '', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
(335, 'LN-HDMI-05 (Apple Lightning to HDMI Adapter)', '<div>LN-HDMI-05 (Apple Lightning to HDMI Adapter)</div>', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', 'E7-G002', 'Apple', '', '', '31', 'LN-HDMI-05', '', '0000-00-00 00:00:00'),
(337, '2 port video splitter', '', 'Equipment booking', '(2) Good', '', '0.0000', '0.0000', '', 'Aten', '2 port video splitter', '', '', '903-0051-2', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `Check_In_Out_Record`
--

CREATE TABLE `Check_In_Out_Record` (
  `InOutRecordID` int(11) NOT NULL,
  `FormID` int(11) NOT NULL,
  `deliveryPerson` varchar(255) NOT NULL,
  `deliveryDate` date NOT NULL,
  `returnPerson` varchar(255) NOT NULL,
  `returnDate` date NOT NULL,
  `isReturn` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Check_In_Out_Record`
--

INSERT INTO `Check_In_Out_Record` (`InOutRecordID`, `FormID`, `deliveryPerson`, `deliveryDate`, `returnPerson`, `returnDate`, `isReturn`) VALUES
(1, 1, 'Sears', '2018-08-23', 'Away', '2018-08-24', 1),
(2, 2, 'Phoebe', '2018-02-27', 'Phoebe', '2018-03-01', 1),
(3, 3, 'Hidy', '2018-02-28', 'Phoebe', '2018-03-01', 1),
(4, 4, 'Isabella', '2018-03-01', 'Unkonw', '2018-03-07', 1),
(5, 5, 'Tim', '2018-03-01', '', '0000-00-00', 1),
(6, 6, 'Annette', '2018-03-02', 'Martin', '0000-00-00', 1),
(7, 7, 'Chloe', '0000-00-00', 'Morris', '2018-03-12', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `External_User`
--

CREATE TABLE `External_User` (
  `userContact` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `staffNumber` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `sum` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `External_User`
--

INSERT INTO `External_User` (`userContact`, `userName`, `staffNumber`, `department`, `sum`) VALUES
('Testing', 'Test User', 'Testing', 'Testing', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `Internal_User`
--

CREATE TABLE `Internal_User` (
  `staffNumber` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userContact` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `sum` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Internal_User`
--

INSERT INTO `Internal_User` (`staffNumber`, `userName`, `userContact`, `userEmail`, `department`, `sum`) VALUES
('3549-9', 'Timothyng', '8461', 'timothyng@umac.mo', 'FOM', 0),
('4265-5', 'Stone', '8498', 'stonechoi@umac.mo', 'FOM', 0),
('4267-2', 'Wig', '8482', 'cnwong@umac.mo', 'FOM', 0),
('4312-7', 'Steven', '8487', 'stevenkwok@umac.mo', 'FOM', 0),
('4313-1', 'Josephine', '8481', 'pousanwo@umac.mo', 'FOM', 0),
('4314-4', 'David', '8493', 'kfwong@umac.mo', 'FOM', 0),
('4479-5', 'Kyle', '8447', 'kylevong@umac.mo', 'FOM', 0),
('4481-3', 'Peter', '8433', 'peterchiang@umac.mo', 'FOM', 0),
('4622-1', 'Jacky', '8705', 'jackyieong@umac.mo', 'FOM', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `Item_Record`
--

CREATE TABLE `Item_Record` (
  `ItemRecordID` int(11) NOT NULL,
  `FormID` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `assetsModel` varchar(255) NOT NULL,
  `assetsNo` varchar(255) NOT NULL,
  `useLoctaion` varchar(255) NOT NULL,
  `returnName` varchar(255) NOT NULL,
  `returnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Item_Record`
--

INSERT INTO `Item_Record` (`ItemRecordID`, `FormID`, `item`, `assetsModel`, `assetsNo`, `useLoctaion`, `returnName`, `returnDate`) VALUES
(1, 1, 1, 'Adapter', 'DPM-HDMIF-01', '', 'Carol', '2018-08-24'),
(2, 2, 1, 'Adapter', '', '', '', '2018-03-01'),
(3, 3, 1, 'Adapter', 'HDMIM-VGAI-08 (HDMI)', 'E31', '', '2018-03-01'),
(4, 4, 1, 'Adapter', 'HDMIM-VGAF-01', 'E32', '', '2018-03-07'),
(5, 5, 1, 'SP-700x', '85-09930', '', '', '2018-06-14'),
(6, 6, 1, 'MIC-SPK-03', 'MIC-SPK-03', 'FBA', '', '2018-03-15'),
(7, 7, 1, 'DMS-04', '85-09797', 'E32', '', '2018-03-12'),
(8, 7, 2, 'DMS-07', '01226006', 'E32', '', '2018-03-12'),
(9, 7, 3, 'DMS-03', '85-09789', 'E32', '', '2018-03-12');

-- --------------------------------------------------------

--
-- 資料表結構 `Temp_User`
--

CREATE TABLE `Temp_User` (
  `tempUserID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userContact` varchar(255) NOT NULL,
  `staffNumber` varchar(255) NOT NULL,
  `rentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `Transaction_Information`
--

CREATE TABLE `Transaction_Information` (
  `FormID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `staffNumber` varchar(255) DEFAULT NULL,
  `tempUserID` int(11) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `userContact` varchar(255) DEFAULT NULL,
  `tempUserContent` varchar(255) NOT NULL,
  `dateOfReturn` date DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` enum('internal','external','','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Transaction_Information`
--

INSERT INTO `Transaction_Information` (`FormID`, `name`, `date`, `staffNumber`, `tempUserID`, `department`, `userContact`, `tempUserContent`, `dateOfReturn`, `remark`, `status`) VALUES
(1, 'Carol', '2018-08-23', 'AB616502', NULL, 'CCE', '4545', '', '2018-08-24', '', 'external'),
(2, 'Chris Fulton', '2018-02-27', '3979-7', NULL, '', '4574', '', '2018-03-01', '', 'external'),
(3, 'William', '2018-02-28', '4999-5', NULL, '', '', '', '2018-03-02', '', 'external'),
(4, 'Isis Vong', '2018-03-01', 'Unknow', NULL, 'FLL', '4098', '', '2018-03-07', '', 'external'),
(5, 'Eric', '2018-03-01', '2962-1', NULL, 'FAH', '8143', '', '2018-06-14', '外加兩條HDMI線及火牛一個', 'external'),
(6, 'REX GAOLU', '2018-03-02', 'MB75475', NULL, 'FBA', '', '', '2018-03-15', '打通線一條，電源線一條', ''),
(7, 'Hong', '0000-00-00', '2659-1', NULL, 'FLL', '', '', '2018-03-11', '', '');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `Assets`
--
ALTER TABLE `Assets`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `Check_In_Out_Record`
--
ALTER TABLE `Check_In_Out_Record`
  ADD PRIMARY KEY (`InOutRecordID`),
  ADD KEY `check_in_out_binding` (`FormID`);

--
-- 資料表索引 `External_User`
--
ALTER TABLE `External_User`
  ADD PRIMARY KEY (`userContact`);

--
-- 資料表索引 `Internal_User`
--
ALTER TABLE `Internal_User`
  ADD PRIMARY KEY (`staffNumber`);

--
-- 資料表索引 `Item_Record`
--
ALTER TABLE `Item_Record`
  ADD PRIMARY KEY (`ItemRecordID`),
  ADD KEY `item_record_binding` (`FormID`);

--
-- 資料表索引 `Temp_User`
--
ALTER TABLE `Temp_User`
  ADD PRIMARY KEY (`tempUserID`);

--
-- 資料表索引 `Transaction_Information`
--
ALTER TABLE `Transaction_Information`
  ADD PRIMARY KEY (`FormID`),
  ADD KEY `staffNumber` (`staffNumber`),
  ADD KEY `tempUserID` (`tempUserID`),
  ADD KEY `userContact` (`userContact`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `Assets`
--
ALTER TABLE `Assets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- 使用資料表 AUTO_INCREMENT `Check_In_Out_Record`
--
ALTER TABLE `Check_In_Out_Record`
  MODIFY `InOutRecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表 AUTO_INCREMENT `Item_Record`
--
ALTER TABLE `Item_Record`
  MODIFY `ItemRecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表 AUTO_INCREMENT `Temp_User`
--
ALTER TABLE `Temp_User`
  MODIFY `tempUserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `Transaction_Information`
--
ALTER TABLE `Transaction_Information`
  MODIFY `FormID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `Check_In_Out_Record`
--
ALTER TABLE `Check_In_Out_Record`
  ADD CONSTRAINT `check_in_out_binding` FOREIGN KEY (`FormID`) REFERENCES `Transaction_Information` (`FormID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `Item_Record`
--
ALTER TABLE `Item_Record`
  ADD CONSTRAINT `item_record_binding` FOREIGN KEY (`FormID`) REFERENCES `Transaction_Information` (`FormID`) ON DELETE CASCADE ON UPDATE CASCADE;
