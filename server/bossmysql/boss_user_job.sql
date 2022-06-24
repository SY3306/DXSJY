-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2022-06-21 14:39:39
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
-- Database: `myemp`
--

-- --------------------------------------------------------

--
-- 表的结构 `boss_user_job`
--

CREATE TABLE `boss_user_job` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '用户序号ID,主键且自增',
  `jobname` varchar(30) NOT NULL COMMENT '岗位名称',
  `salary` varchar(32) NOT NULL COMMENT '工资',
  `age` varchar(30) DEFAULT NULL COMMENT '年龄',
  `jobcontent` varchar(255) NOT NULL COMMENT '工作内容',
  `welfare` varchar(255) NOT NULL COMMENT '薪资福利',
  `myaddress` varchar(32) NOT NULL COMMENT '公司地址',
  `work` varchar(32) NOT NULL COMMENT '工作内容',
  `workyear` varchar(32) NOT NULL COMMENT '工作年限',
  `education` varchar(32) NOT NULL COMMENT '学历',
  `num` int(32) NOT NULL COMMENT '招聘人数',
  `bossname` varchar(16) NOT NULL COMMENT '用户名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `boss_user_job`
--

INSERT INTO `boss_user_job` (`id`, `jobname`, `salary`, `age`, `jobcontent`, `welfare`, `myaddress`, `work`, `workyear`, `education`, `num`, `bossname`) VALUES
(1, '前端工程师', '8-12k', '22-35岁', '1.负责网站前端开发,实现产品的页面交互及功能实现;\r\n2.与程序开发人员紧密合作,制作前端及后端程序接口标准;\r\n3.持续的优化前端体验和页面响应速度,优化代码并保持良好兼容性,提升web界面的友好和易用;\r\n4.完成产品的设计、开发、测试、修改bug等工作,包括业务需求的沟通,功能模块详细设计,业务功能实现和功能变更维护;', '五险一金/补充医疗保险/定期体检/加班补助/全勤奖/年终奖/股票期权/带薪年假/员工旅游免费班车/餐补通讯补贴/交通补助/节日福利/住房补/贴零食下午茶/离职体检', '杭州-西湖区', '工作相关', '1-3年', '大专', 1, '123321'),
(2, '后端工程师', '10-18k', '22-35岁', '1.负责网站前端开发,实现产品的页面交互及功能实现;\r\n2.与程序开发人员紧密合作,制作前端及后端程序接口标准;\r\n3.持续的优化前端体验和页面响应速度,优化代码并保持良好兼容性,提升web界面的友好和易用;\r\n4.完成产品的设计、开发、测试、修改bug等工作,包括业务需求的沟通,功能模块详细设计,业务功能实现和功能变更维护;', '五险一金/补充医疗保险/定期体检/加班补助/全勤奖/年终奖/股票期权/带薪年假/员工旅游免费班车/餐补通讯补贴/交通补助/节日福利/住房补/贴零食下午茶/离职体检', '杭州-西湖区', '工作相关', '1-3年', '大专', 2, '123321'),
(3, '云计算工程师', '20-25k', '22-35岁', '1.负责网站前端开发,实现产品的页面交互及功能实现;\r\n2.与程序开发人员紧密合作,制作前端及后端程序接口标准;\r\n3.持续的优化前端体验和页面响应速度,优化代码并保持良好兼容性,提升web界面的友好和易用;\r\n4.完成产品的设计、开发、测试、修改bug等工作,包括业务需求的沟通,功能模块详细设计,业务功能实现和功能变更维护;', '五险一金/补充医疗保险/定期体检/加班补助/全勤奖/年终奖/股票期权/带薪年假/员工旅游免费班车/餐补通讯补贴/交通补助/节日福利/住房补/贴零食下午茶/离职体检', '杭州-西湖区', '工作相关', '1-3年', '大专', 3, '123321'),
(4, '运营维护工程师', '8-12k', '22-35岁', '1.负责网站前端开发,实现产品的页面交互及功能实现;\r\n2.与程序开发人员紧密合作,制作前端及后端程序接口标准;\r\n3.持续的优化前端体验和页面响应速度,优化代码并保持良好兼容性,提升web界面的友好和易用;\r\n4.完成产品的设计、开发、测试、修改bug等工作,包括业务需求的沟通,功能模块详细设计,业务功能实现和功能变更维护;', '五险一金/补充医疗保险/定期体检/加班补助/全勤奖/年终奖/股票期权/带薪年假/员工旅游免费班车/餐补通讯补贴/交通补助/节日福利/住房补/贴零食下午茶/离职体检', '杭州-西湖区', '工作相关', '1-3年', '大专', 5, '123321'),
(5, 'UI设计工程师', '工资面议', '22-35岁', '1.负责网站前端开发,实现产品的页面交互及功能实现;\r\n2.与程序开发人员紧密合作,制作前端及后端程序接口标准;\r\n3.持续的优化前端体验和页面响应速度,优化代码并保持良好兼容性,提升web界面的友好和易用;\r\n4.完成产品的设计、开发、测试、修改bug等工作,包括业务需求的沟通,功能模块详细设计,业务功能实现和功能变更维护;', '五险一金/补充医疗保险/定期体检/加班补助/全勤奖/年终奖/股票期权/带薪年假/员工旅游免费班车/餐补通讯补贴/交通补助/节日福利/住房补/贴零食下午茶/离职体检', '杭州-西湖区', '工作相关', '1-3年', '大专', 2, '123321'),
(7, '1', '1', '1', '1', '1', '1', '1', '工龄不限', '学历不限', 1, '123321'),
(9, '1', '1', '1', '1', '1', '1', '1', '工龄不限', '学历不限', 1, '123321  '),
(10, '3', '3', '3', '3', '3', '3', '3', '工龄不限', '学历不限', 3, '123321\n      '),
(14, '6', '6', '6', '6', '6', '6', '6', '工龄不限', '学历不限', 6, '123321\n      ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boss_user_job`
--
ALTER TABLE `boss_user_job`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `boss_user_job`
--
ALTER TABLE `boss_user_job`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户序号ID,主键且自增', AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
