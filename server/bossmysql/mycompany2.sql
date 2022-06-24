-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2022-06-18 07:02:23
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bosscompany`
--

-- --------------------------------------------------------

--
-- 表的结构 `mycompany2`
--

CREATE TABLE `mycompany2` (
  `nid` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `introduct` varchar(10240) NOT NULL,
  `position` varchar(64) NOT NULL,
  `currentDate` date NOT NULL,
  `money` int(11) NOT NULL,
  `nid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mycompany2`
--

INSERT INTO `mycompany2` (`nid`, `name`, `introduct`, `position`, `currentDate`, `money`, `nid_id`) VALUES
(1, '阿里巴巴(中国)网络技术有限公司', '阿里巴巴(中国)网络技术有限公司成立于1999年09月09日，注册地位于浙江省杭州市滨江区网商路699号，法定代表人为戴珊。经营范围包括一般项目：软件开发；软件销售；技术服务、技术开发、技术咨询、技术交流、技术转让、技术推广；网络设备销售；计算机软硬件及辅助设备零售；计算机软硬件及辅助设备批发；非居住房地产租赁；停车场服务；翻译服务；业务培训（不含教育培训、职业技能培训等需取得许可的培训）(除依法须经批准的项目外，凭营业执照依法自主开展经营活动)。阿里巴巴(中国)网络技术有限公司对外投资115家公司，具有39处分支机构', '\r\n浙江省杭州市滨江区', '1999-09-09', 1, 10),
(2, '阿里巴巴(中国)网络技术有限公司', '阿里巴巴(中国)网络技术有限公司成立于1999年09月09日，注册地位于浙江省杭州市滨江区网商路699号，法定代表人为戴珊。经营范围包括一般项目：软件开发；软件销售；技术服务、技术开发、技术咨询、技术交流、技术转让、技术推广；网络设备销售；计算机软硬件及辅助设备零售；计算机软硬件及辅助设备批发；非居住房地产租赁；停车场服务；翻译服务；业务培训（不含教育培训、职业技能培训等需取得许可的培训）(除依法须经批准的项目外，凭营业执照依法自主开展经营活动)。阿里巴巴(中国)网络技术有限公司对外投资115家公司，具有39处分支机构', '\r\n浙江省杭州市滨江区', '1999-09-09', 1, 10),
(3, '阿里巴巴(中国)网络技术有限公司', '阿里巴巴(中国)网络技术有限公司成立于1999年09月09日，注册地位于浙江省杭州市滨江区网商路699号，法定代表人为戴珊。经营范围包括一般项目：软件开发；软件销售；技术服务、技术开发、技术咨询、技术交流、技术转让、技术推广；网络设备销售；计算机软硬件及辅助设备零售；计算机软硬件及辅助设备批发；非居住房地产租赁；停车场服务；翻译服务；业务培训（不含教育培训、职业技能培训等需取得许可的培训）(除依法须经批准的项目外，凭营业执照依法自主开展经营活动)。阿里巴巴(中国)网络技术有限公司对外投资115家公司，具有39处分支机构', '\r\n浙江省杭州市滨江区', '1999-09-09', 1, 10),
(4, '阿里巴巴(中国)网络技术有限公司', '阿里巴巴(中国)网络技术有限公司成立于1999年09月09日，注册地位于浙江省杭州市滨江区网商路699号，法定代表人为戴珊。经营范围包括一般项目：软件开发；软件销售；技术服务、技术开发、技术咨询、技术交流、技术转让、技术推广；网络设备销售；计算机软硬件及辅助设备零售；计算机软硬件及辅助设备批发；非居住房地产租赁；停车场服务；翻译服务；业务培训（不含教育培训、职业技能培训等需取得许可的培训）(除依法须经批准的项目外，凭营业执照依法自主开展经营活动)。阿里巴巴(中国)网络技术有限公司对外投资115家公司，具有39处分支机构', '\r\n浙江省杭州市滨江区', '1999-09-09', 1, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mycompany2`
--
ALTER TABLE `mycompany2`
  ADD PRIMARY KEY (`nid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `mycompany2`
--
ALTER TABLE `mycompany2`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
