-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2017 at 08:52 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sappdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `fc_events_table`
--

CREATE TABLE `fc_events_table` (
  `id` int(11) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `title` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmins`
--

CREATE TABLE `tbladmins` (
  `admin_id` int(11) NOT NULL,
  `admin_department_id` int(11) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `image` text NOT NULL,
  `contact` varchar(45) NOT NULL,
  `date_birth` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `isActive` int(11) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmins`
--

INSERT INTO `tbladmins` (`admin_id`, `admin_department_id`, `last_name`, `first_name`, `middle_name`, `address`, `image`, `contact`, `date_birth`, `email`, `password`, `gender`, `isActive`, `date_added`) VALUES
(1, 1, 'Funcion', 'Ivan Christian Jay', 'Echanes', '520-B 16th ISU Village ', '11200881_1216700208355786_8839516984461419799_n.jpg', '09479888749', '1995-11-23', 'adminivan@gmail.com', 'adminivan', 'Male', 1, '2015-11-23'),
(7, 1, 'Gustin', 'Jia Lenne', 'Alberts', 'New Manila', '20170207_103610.jpg', '09831238768', '1995-09-12', 'jialennealberts@gmail.com', 'jialennealberts', 'Female', 1, '2015-11-23'),
(8, 12, 'Allen', 'Bartholomew Henry', 'West', 'New Found Glory Taguig City', '20.jpeg', '09831238768', '1990-06-12', 'barryallen@gmail.com', 'barry', 'Male', 1, '0000-00-00'),
(9, 14, 'Reyes', 'Rowena', 'Alcantara', 'Makati City', 'finalstudents.jpg', '09831238768', '1982-02-09', 'rowenareyes@gmail.com', 'rowena', 'Female', 1, '0000-00-00'),
(10, 15, 'Rivera', 'Marian', 'Meniano', '520-B 16th ISU Village Barangay 31 South Side', 'students.jpg', '09831238761', '1995-09-12', 'marianmenrivera@gmail.com', 'marian', 'Male', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncements`
--

CREATE TABLE `tblannouncements` (
  `announcement_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblannouncements`
--

INSERT INTO `tblannouncements` (`announcement_id`, `department_id`, `user_id`, `content`, `post_date`) VALUES
(1, 1, 1, 'next week is octobervest', '2017-09-28 11:28:56'),
(2, 12, 8, 'next week monday will be the last checking of system', '2017-09-29 01:36:27'),
(3, 12, 8, 'sabado na sa 7', '2017-10-05 23:00:33'),
(4, 12, 8, 'happy teacher\'s day ccs faculty', '2017-10-05 23:02:24'),
(5, 14, 9, 'happy teacher\'s day CBA faculty', '2017-10-06 00:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcollegeprograms`
--

CREATE TABLE `tblcollegeprograms` (
  `program_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `program_name` text NOT NULL,
  `program_code` varchar(45) NOT NULL,
  `program_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcollegeprograms`
--

INSERT INTO `tblcollegeprograms` (`program_id`, `department_id`, `program_name`, `program_code`, `program_description`) VALUES
(7, 12, 'Bachelor of Science in Computer Science Major in Application Development', 'BSCS AppDev', '<p>Bachelor of Science in Computer Science Major in Application Development is a 4 years course offered by the College of Computer Science<br></p>'),
(8, 12, 'INFORMATION TECHNOLOGY SERVICE MANAGEMENT', 'ITSM', '<p>This program is a 4 years program offered by the college of computer science</p><p><br></p>'),
(9, 12, 'Bachelor of Science in Computer Network Administration', 'BSCS Net Admin', '<p>this program is a 4 year\'s program offered by the CCS</p><p><br></p>'),
(10, 14, 'Bachelor of Science in Business Administration Major in Supply Management', 'BSCS Supply Management', '<p>4 year course</p>'),
(11, 15, ' Bachelor of Science in Building Technology Management', 'BSBTM', '<blockquote><p>4 year\'s program offered by the college of CTM</p></blockquote>');

-- --------------------------------------------------------

--
-- Table structure for table `tblcounsellingsummary`
--

CREATE TABLE `tblcounsellingsummary` (
  `council_summary_id` int(11) NOT NULL,
  `mentor_id` varchar(45) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `ratings` int(11) NOT NULL,
  `rating_massage` text NOT NULL,
  `date_rate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartmentheads`
--

CREATE TABLE `tbldepartmentheads` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `date_birth` date NOT NULL,
  `image` text NOT NULL,
  `email` varchar(45) NOT NULL,
  `contact` text NOT NULL,
  `department_id` int(11) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dean_since` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartmentheads`
--

INSERT INTO `tbldepartmentheads` (`id`, `first_name`, `middle_name`, `last_name`, `address`, `date_birth`, `image`, `email`, `contact`, `department_id`, `gender`, `dean_since`) VALUES
(11, 'Lords', 'Howards', 'Starks', '520-B 16th ISU Village Barangay 31 South Side', '2017-09-21', '9.jpeg', 'lhs@gmail.com', '09831238768', 12, 'Male', '2017-10-05'),
(12, 'Lek Lek', 'Manzano', 'Alonso', 'Makati City', '1976-07-21', 'adrian.png', 'lekalonso21@gmail.com', '09831238768', 14, 'Male', '2017-10-06'),
(13, 'John David', 'Marqueen', 'De Leon', 'West Rembo Makati City', '1989-06-20', 'jp.png', 'jddl@gmail.com', '09831238761', 15, 'Male', '2017-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `department_id` int(11) NOT NULL,
  `department_code` varchar(45) NOT NULL,
  `department_name` text NOT NULL,
  `department_logo` text NOT NULL,
  `department_banner` text NOT NULL,
  `department_color` text NOT NULL,
  `mission` text NOT NULL,
  `vision` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`department_id`, `department_code`, `department_name`, `department_logo`, `department_banner`, `department_color`, `mission`, `vision`) VALUES
(1, 'SCHOOL-ADMIN', 'SCHOOL-ADMIN', '', '', '#0073b7', '', ''),
(12, 'CCS', 'College of Computer Sciences', 'Logo1.png', 'engineer banner.png', '#004080', '<p>Guided by its vision of commitment, the College shall provide a competitive, relevant, and functional information technology education curriculum responsive to the needs of the industrial and business organizations of the locality.s<br></p>', '<p>The College of Computer Science envisions an Information Technology Education Institution committed to the development and adequate utilization and applications of information technology.s<br></p>'),
(14, 'CBA', 'College of Business Administration', 'marketing.png', 'accounting.png', '#ff0000', '<blockquote><p>The CBA will develop and implement curricular programs that are market-driven, job-specific and practitioner-based, maintaining strategic alliance with business and industry for the professional development of competent, socially responsible students whose knowledge, attitude and skills are geared towards entrepreneurial and employment opportunities in the marketplace.</p></blockquote>', '<blockquote><p>The CBA will be at the mainstream of human resource development promoting strategic, innovative and competitive business programs relevant to the needs of the individual, the community and the Philippine society.</p></blockquote>'),
(15, 'CTM', 'College of Engineering and Technology Management', 'architecture.png', 'architecturebanner.jpg', '#804040', '<blockquote><p>We Mold Graduates with Character and Competence Fit for Technology Management at National Certification Standard NC III or Higher</p></blockquote>', '<blockquote><p>We will strive to attain the Level IV Standard of Classification for the CETM Faculty and Facilities over a Three-Year Period</p></blockquote>');

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `id` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `title` text,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblevents`
--

INSERT INTO `tblevents` (`id`, `start`, `end`, `title`, `start_time`, `end_time`, `department_id`, `type`, `admin_id`) VALUES
(1, '2017-10-03', NULL, 'School Event', '12:00:00', NULL, 1, 'Single day event', 1),
(2, '2017-10-02', NULL, 'Checking', '18:09:00', NULL, 12, 'Single day event', 1),
(3, '2017-10-09', '2017-10-14', 'week summit', '11:11:00', '12:00:00', 1, 'Multiple Day Event', 1),
(4, '2017-10-05', NULL, 'hahsads', '00:11:00', NULL, 12, 'Single day event', 1),
(5, '2017-10-06', NULL, 'friday the 6th', '12:02:00', NULL, 12, 'Single day event', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblguidance`
--

CREATE TABLE `tblguidance` (
  `tbl_id_guidance` int(11) NOT NULL,
  `guidance_id` varchar(45) NOT NULL,
  `mentor_id` varchar(45) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `request_message` text NOT NULL,
  `date_requested` datetime NOT NULL,
  `date_approved` datetime NOT NULL,
  `date_finished` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblguidancecouncilor`
--

CREATE TABLE `tblguidancecouncilor` (
  `tbl_gc_id` int(11) NOT NULL,
  `gc_id` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `image` text NOT NULL,
  `address` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `birth_date` date NOT NULL,
  `isActive` int(11) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblguidancecouncilor`
--

INSERT INTO `tblguidancecouncilor` (`tbl_gc_id`, `gc_id`, `last_name`, `first_name`, `middle_name`, `email`, `password`, `image`, `address`, `contact`, `gender`, `birth_date`, `isActive`, `date_added`) VALUES
(1, 'GC0500228', 'Adobas', 'Anna Mae ', 'Noew', 'annamaeadobas@gmail.com', 'annamaeadobas', 'Jennifer_Jerome_tn.jpg', 'South Side Makati City', '09831238768', 'Female', '1997-11-23', 1, '2017-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `tblguidancerating`
--

CREATE TABLE `tblguidancerating` (
  `gcr_id` int(11) NOT NULL,
  `mentor_id` varchar(45) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `ratings` int(11) NOT NULL,
  `rating_message` text NOT NULL,
  `date_rate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `log_id` int(11) NOT NULL,
  `log_user_id` int(11) NOT NULL,
  `log_user_level` varchar(45) NOT NULL,
  `log_header` text NOT NULL,
  `log_message` text NOT NULL,
  `log_time` time NOT NULL,
  `log_date` date NOT NULL,
  `foreign_id` int(11) NOT NULL,
  `table_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`log_id`, `log_user_id`, `log_user_level`, `log_header`, `log_message`, `log_time`, `log_date`, `foreign_id`, `table_name`) VALUES
(248, 1, 'admin', 'Success Login', 'Success Login at Thursday 28th of September 2017 ', '01:27:32', '2017-09-28', 0, ''),
(249, 1, '', 'Add Department', 'Add Department at Thursday 28th of September 2017 ', '01:39:53', '2017-09-28', 0, ''),
(250, 1, '', 'Add College Program', 'Add College Program at Thursday 28th of September 2017 ', '02:25:30', '2017-09-28', 0, ''),
(251, 1, 'admin', 'Success Login', 'Success Login at Thursday 28th of September 2017 ', '11:27:20', '2017-09-28', 0, ''),
(252, 1, '', 'Add Announcement', 'Add Announcement at Thursday 28th of September 2017 ', '11:28:56', '2017-09-28', 0, ''),
(253, 1, 'admin', 'Success Login', 'Success Login at Thursday 28th of September 2017 ', '22:54:02', '2017-09-28', 0, ''),
(254, 1, 'admin', 'Success Logout', 'Success Logout at Friday 29th of September 2017 ', '01:35:46', '2017-09-29', 0, ''),
(255, 8, 'admin', 'Success Login', 'Success Login at Friday 29th of September 2017 ', '01:35:53', '2017-09-29', 0, ''),
(256, 8, '', 'Add Announcement', 'Add Announcement at Friday 29th of September 2017 ', '01:36:27', '2017-09-29', 0, ''),
(257, 8, 'admin', 'Success Logout', 'Success Logout at Friday 29th of September 2017 ', '01:43:20', '2017-09-29', 0, ''),
(258, 1, 'admin', 'Success Login', 'Success Login at Friday 29th of September 2017 ', '11:01:49', '2017-09-29', 0, ''),
(259, 1, '', 'Add College Program', 'Add College Program at Friday 29th of September 2017 ', '11:16:23', '2017-09-29', 0, ''),
(260, 1, 'admin', 'Success Login', 'Success Login at Friday 29th of September 2017 ', '19:51:45', '2017-09-29', 0, ''),
(261, 1, '', 'Add Event', 'Add Event at Friday 29th of September 2017 ', '19:52:27', '2017-09-29', 0, ''),
(262, 1, '', 'Add College Program', 'Add College Program at Friday 29th of September 2017 ', '22:37:01', '2017-09-29', 0, ''),
(263, 1, '', 'Add Event', 'Add Event at Saturday 30th of September 2017 ', '00:41:23', '2017-09-30', 0, ''),
(264, 1, '', 'Add Event', 'Add Event at Saturday 30th of September 2017 ', '00:42:23', '2017-09-30', 0, ''),
(265, 1, 'admin', 'Success Logout', 'Success Logout at Saturday 30th of September 2017 ', '00:43:18', '2017-09-30', 0, ''),
(266, 8, 'admin', 'Success Login', 'Success Login at Saturday 30th of September 2017 ', '00:43:23', '2017-09-30', 0, ''),
(267, 8, 'admin', 'Success Logout', 'Success Logout at Saturday 30th of September 2017 ', '00:47:28', '2017-09-30', 0, ''),
(268, 1, 'admin', 'Success Login', 'Success Login at Saturday 30th of September 2017 ', '00:47:33', '2017-09-30', 0, ''),
(269, 1, 'admin', 'Success Logout', 'Success Logout at Saturday 30th of September 2017 ', '01:03:26', '2017-09-30', 0, ''),
(270, 1, 'admin', 'Success Login', 'Success Login at Saturday 30th of September 2017 ', '01:10:12', '2017-09-30', 0, ''),
(271, 1, 'admin', 'Success Login', 'Success Login at Saturday 30th of September 2017 ', '10:51:55', '2017-09-30', 0, ''),
(272, 1, 'admin', 'Success Login', 'Success Login at Saturday 30th of September 2017 ', '22:21:06', '2017-09-30', 0, ''),
(273, 1, 'admin', 'Success Login', 'Success Login at Saturday 30th of September 2017 ', '00:47:54', '2017-10-01', 0, ''),
(274, 1, 'admin', 'Success Login', 'Success Login at Saturday 30th of September 2017 ', '01:11:11', '2017-10-01', 0, ''),
(275, 1, 'admin', 'Success Login', 'Success Login at Sunday 1st of October 2017 ', '10:54:11', '2017-10-01', 0, ''),
(276, 1, 'admin', 'Success Logout', 'Success Logout at Sunday 1st of October 2017 ', '14:36:09', '2017-10-01', 0, ''),
(278, 36, 'student', 'Student Registration', 'registered Sunday 1st of October 2017 ', '18:58:34', '2017-10-01', 0, ''),
(279, 8, 'admin', 'Success Login', 'Success Login at Sunday 1st of October 2017 ', '19:14:47', '2017-10-01', 0, ''),
(280, 8, 'admin', 'Success Logout', 'Success Logout at Sunday 1st of October 2017 ', '19:15:13', '2017-10-01', 0, ''),
(281, 36, 'student', 'Success Login', 'Success Login at Sunday 1st of October 2017 ', '19:18:24', '2017-10-01', 0, ''),
(282, 36, 'student', 'Success Login', 'Success Login at Sunday 1st of October 2017 ', '19:19:13', '2017-10-01', 0, ''),
(283, 36, 'student', 'Success Login', 'Success Login at Sunday 1st of October 2017 ', '19:29:10', '2017-10-01', 0, ''),
(284, 36, 'student', 'Success Login', 'Success Login at Sunday 1st of October 2017 ', '20:04:02', '2017-10-01', 0, ''),
(285, 0, 'admin', 'Success Logout', 'Success Logout at Sunday 1st of October 2017 ', '20:48:09', '2017-10-01', 0, ''),
(286, 1, 'admin', 'Success Login', 'Success Login at Sunday 1st of October 2017 ', '22:00:41', '2017-10-01', 0, ''),
(287, 1, 'admin', 'Success Logout', 'Success Logout at Sunday 1st of October 2017 ', '23:19:04', '2017-10-01', 0, ''),
(288, 1, 'admin', 'Success Login', 'Success Login at Sunday 1st of October 2017 ', '00:27:07', '2017-10-02', 0, ''),
(289, 36, 'student', 'Success Logout', 'Success Logout at Sunday 1st of October 2017 ', '01:19:07', '2017-10-02', 0, ''),
(290, 36, 'student', 'Success Login', 'Success Login at Sunday 1st of October 2017 ', '01:19:17', '2017-10-02', 0, ''),
(291, 36, 'student', 'Success Login', 'Success Login at Monday 2nd of October 2017 ', '13:29:27', '2017-10-02', 0, ''),
(292, 36, 'student', 'Success Logout', 'Success Logout at Monday 2nd of October 2017 ', '13:29:58', '2017-10-02', 0, ''),
(293, 1, 'admin', 'Success Login', 'Success Login at Monday 2nd of October 2017 ', '01:21:18', '2017-10-03', 0, ''),
(294, 1, 'admin', 'Success Logout', 'Success Logout at Monday 2nd of October 2017 ', '01:32:13', '2017-10-03', 0, ''),
(295, 8, 'admin', 'Success Login', 'Success Login at Monday 2nd of October 2017 ', '01:32:17', '2017-10-03', 0, ''),
(296, 1, 'admin', 'Success Login', 'Success Login at Tuesday 3rd of October 2017 ', '11:26:21', '2017-10-03', 0, ''),
(297, 1, 'admin', 'Add Event', 'Add Event at Tuesday 3rd of October 2017 ', '11:30:25', '2017-10-03', 0, ''),
(298, 1, 'admin', 'Success Login', 'Success Login at Tuesday 3rd of October 2017 ', '01:23:07', '2017-10-04', 0, ''),
(299, 1, 'admin', 'Success Login', 'Success Login at Wednesday 4th of October 2017 ', '11:51:34', '2017-10-04', 0, ''),
(300, 1, 'admin', 'Success Login', 'Success Login at Wednesday 4th of October 2017 ', '16:18:14', '2017-10-04', 0, ''),
(301, 1, 'admin', 'Success Logout', 'Success Logout at Wednesday 4th of October 2017 ', '02:11:12', '2017-10-05', 0, ''),
(302, 8, 'admin', 'Success Login', 'Success Login at Wednesday 4th of October 2017 ', '02:11:16', '2017-10-05', 0, ''),
(303, 1, 'admin', 'Success Login', 'Success Login at Thursday 5th of October 2017 ', '12:56:25', '2017-10-05', 0, ''),
(304, 1, 'admin', 'Add Department', 'Add Department at Thursday 5th of October 2017 ', '13:36:42', '2017-10-05', 0, ''),
(305, 1, 'admin', 'Add College Program', 'Add College Program at Thursday 5th of October 2017 ', '14:02:23', '2017-10-05', 0, ''),
(306, 1, 'admin', 'Success Login', 'Success Login at Thursday 5th of October 2017 ', '21:53:12', '2017-10-05', 0, ''),
(307, 1, 'admin', 'Success Logout', 'Success Logout at Thursday 5th of October 2017 ', '23:00:11', '2017-10-05', 0, ''),
(308, 8, 'admin', 'Success Login', 'Success Login at Thursday 5th of October 2017 ', '23:00:18', '2017-10-05', 0, ''),
(309, 8, 'admin', 'Add Announcement', 'Add Announcement at Thursday 5th of October 2017 ', '23:02:24', '2017-10-05', 0, ''),
(310, 8, 'admin', 'Success Logout', 'Success Logout at Thursday 5th of October 2017 ', '00:51:28', '2017-10-06', 0, ''),
(311, 1, 'admin', 'Success Login', 'Success Login at Thursday 5th of October 2017 ', '00:51:32', '2017-10-06', 0, ''),
(312, 1, 'admin', 'Success Logout', 'Success Logout at Thursday 5th of October 2017 ', '00:53:05', '2017-10-06', 0, ''),
(313, 9, 'admin', 'Success Login', 'Success Login at Thursday 5th of October 2017 ', '00:53:10', '2017-10-06', 0, ''),
(314, 9, 'admin', 'Add Announcement', 'Add Announcement at Friday 6th of October 2017 ', '00:53:27', '2017-10-06', 0, ''),
(315, 9, 'admin', 'Success Logout', 'Success Logout at Thursday 5th of October 2017 ', '01:54:17', '2017-10-06', 0, ''),
(316, 1, 'admin', 'Success Login', 'Success Login at Thursday 5th of October 2017 ', '01:54:21', '2017-10-06', 0, ''),
(317, 1, 'admin', 'Add Department', 'Add Department at Thursday 5th of October 2017 ', '02:15:56', '2017-10-06', 0, ''),
(318, 1, 'admin', 'Add College Program', 'Add College Program at Thursday 5th of October 2017 ', '02:17:58', '2017-10-06', 0, ''),
(319, 1, 'admin', 'Success Logout', 'Success Logout at Thursday 5th of October 2017 ', '02:40:02', '2017-10-06', 0, ''),
(320, 10, 'admin', 'Success Login', 'Success Login at Thursday 5th of October 2017 ', '02:41:14', '2017-10-06', 0, ''),
(321, 10, 'admin', 'Success Logout', 'Success Logout at Thursday 5th of October 2017 ', '02:43:43', '2017-10-06', 0, ''),
(322, 1, 'admin', 'Success Login', 'Success Login at Thursday 5th of October 2017 ', '02:43:53', '2017-10-06', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `message_id` int(11) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `message` text NOT NULL,
  `date_created` datetime NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`message_id`, `student_id`, `name`, `email`, `subject`, `message`, `date_created`, `status`) VALUES
(1, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'Test 1', 'Testing', '2017-10-01 12:00:00', 'Seen'),
(2, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'Test 2', 'Requesting for back up', '2017-10-01 12:00:00', ''),
(4, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'request follow up part 2', 'hehehehehhehehehehehehehhehehe', '2017-10-02 02:00:00', ''),
(5, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'request follow up part 3', 'anjan na????', '2017-10-02 02:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblprevileges`
--

CREATE TABLE `tblprevileges` (
  `tbl_previleges_id` int(11) NOT NULL,
  `admin_master_id` int(11) NOT NULL,
  `previlege_title` text NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprevileges`
--

INSERT INTO `tblprevileges` (`tbl_previleges_id`, `admin_master_id`, `previlege_title`, `state`) VALUES
(1, 1, 'Open Online Encoding of Remarks', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblprofessor`
--

CREATE TABLE `tblprofessor` (
  `tbl_prof_id` int(11) NOT NULL,
  `prof_id` text NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `image` text NOT NULL,
  `gender` varchar(45) NOT NULL,
  `department` int(11) NOT NULL,
  `date_birth` date NOT NULL,
  `contact` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `isActive` int(11) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprofessor`
--

INSERT INTO `tblprofessor` (`tbl_prof_id`, `prof_id`, `last_name`, `first_name`, `middle_name`, `email`, `password`, `image`, `gender`, `department`, `date_birth`, `contact`, `address`, `isActive`, `date_added`) VALUES
(1, 'P0957966', 'Stark', 'Tony', 'Harris', 'tonystark@gmail.com', 'tony', '1391536_982696148422861_652186630375323824_n.jpg', 'Male', 12, '1981-06-23', '09479888749', 'New Found Glory Taguig City', 1, '2017-09-28'),
(2, 'P0854168', 'Hartel', 'Marry Ellain', 'Nans', 'marryhartel@gmail.com', 'ellain', 'received_1110831962382331.jpeg', 'Female', 12, '1982-06-15', '09831238768', 'New Found Glory Taguig City', 0, '2017-09-29'),
(3, 'P0671971', 'Aldrich', 'Ken', 'Cayetano', 'kenaldrich@gmail.com', 'kenaldrich', 'alex.png', 'Male', 14, '1975-10-09', '9665324843', '998 Juan Luna Street Binondo-Tondo Manila', 1, '2017-10-06'),
(4, 'P0016475', 'Bangbang', 'Kennen', 'Quintos', 'kenkenbang@gmail.com', 'kenbang', 'computer.jpeg', 'Male', 14, '1977-01-24', '09323258769', '130 Engracia C. Reyes Street Santa Cruz Tagui', 1, '2017-10-06'),
(5, 'P0005680', 'Orlleono', 'Lawrence', 'De Guzman', 'lawrencemonday@gmail.com', 'lawrence', 'finalbckreg.jpg', 'Male', 15, '1985-04-24', '9912635823', '1176 Cabrera Street Brgy Calzada Taguig', 1, '2017-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `tblprofessorsubject`
--

CREATE TABLE `tblprofessorsubject` (
  `profsubject_id` int(11) NOT NULL,
  `prof_id` varchar(45) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `yearlevel` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprofessorsubject`
--

INSERT INTO `tblprofessorsubject` (`profsubject_id`, `prof_id`, `subject_id`, `section_id`, `yearlevel`, `department_id`, `program_id`) VALUES
(2, '1', 1, 1, 1, 12, 7),
(3, '1', 3, 1, 1, 12, 7),
(4, '2', 2, 1, 1, 12, 7),
(5, '3', 12, 29, 1, 14, 10),
(6, '5', 13, 30, 1, 15, 11),
(7, '5', 14, 30, 1, 15, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tblprofrating`
--

CREATE TABLE `tblprofrating` (
  `profrating_id` int(11) NOT NULL,
  `prof_id` varchar(45) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `ratings` int(11) NOT NULL,
  `rating_message` text NOT NULL,
  `date_rate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblreplymessage`
--

CREATE TABLE `tblreplymessage` (
  `reply_id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `recipient` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `from_admin` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date_created` datetime NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreplymessage`
--

INSERT INTO `tblreplymessage` (`reply_id`, `student_id`, `recipient`, `email`, `from_admin`, `message`, `date_created`, `status`) VALUES
(2, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'Ivan Christian Jay Funcion', 'ano bayun??\r\n', '2017-10-05 01:10:48', ''),
(3, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'Ivan Christian Jay Funcion', 'wala ako dito\r\n', '2017-10-05 01:11:14', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblsection`
--

CREATE TABLE `tblsection` (
  `tbl_section_id` int(11) NOT NULL,
  `section_name` varchar(45) NOT NULL,
  `program_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `yearlevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsection`
--

INSERT INTO `tblsection` (`tbl_section_id`, `section_name`, `program_id`, `department_id`, `yearlevel`) VALUES
(1, 'ACSAD', 7, 12, 1),
(2, 'BCSAD', 7, 12, 1),
(3, 'ACSAD', 7, 12, 2),
(4, 'ACSAD', 7, 12, 3),
(5, 'ACSAD', 7, 12, 4),
(6, 'BCSAD', 7, 12, 2),
(7, 'BCSAD', 7, 12, 3),
(8, 'BCSAD', 7, 12, 4),
(9, 'AITSM', 8, 12, 1),
(10, 'BITSM', 8, 12, 2),
(11, 'AITSM', 8, 12, 2),
(12, 'BITSM', 8, 12, 1),
(13, 'AITSM', 8, 12, 3),
(14, 'AITSM', 8, 12, 4),
(15, 'BITSM', 8, 12, 3),
(16, 'BITSM', 8, 12, 4),
(17, 'CITSM', 8, 12, 1),
(18, 'CITSM', 8, 12, 2),
(19, 'CITSM', 8, 12, 3),
(20, 'CITSM', 8, 12, 4),
(21, 'ACNA', 9, 12, 1),
(22, 'ACNA', 9, 12, 2),
(23, 'ACNA', 9, 12, 3),
(24, 'ACNA', 9, 12, 4),
(25, 'BCNA', 9, 12, 1),
(26, 'BCNA', 9, 12, 2),
(27, 'BCNA', 9, 12, 3),
(28, 'BCNA', 9, 12, 4),
(29, 'A-Supply Management', 10, 14, 1),
(30, 'ABTM', 11, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentinfo`
--

CREATE TABLE `tblstudentinfo` (
  `tbl_student_id` int(11) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `image` text NOT NULL,
  `date_birth` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `program_major` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `guardian_name` varchar(45) NOT NULL,
  `isActive` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `yearlevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentinfo`
--

INSERT INTO `tblstudentinfo` (`tbl_student_id`, `student_id`, `last_name`, `first_name`, `middle_name`, `address`, `contact`, `image`, `date_birth`, `email`, `password`, `gender`, `program_major`, `department`, `guardian_name`, `isActive`, `section`, `yearlevel`) VALUES
(34, 'A0861506', 'Funcion', 'Irene Joy', 'Echanes', 'Makati City', '0909343431', 'bug.PNG', '1995-10-22', 'irenejoyfuncion@gmail.com', '', 'Female', 7, 12, 'Ireneo G. Funcion', 1, 1, 1),
(36, 'A0077973', 'Forteza', 'Barbara', 'Dionisio', 'Makati City', '0909343431', 'background1.jpg', '1995-10-22', 'barbaraforteza@gmail.com', 'barbie', 'Female', 7, 12, 'Joshua Dionisio', 1, 1, 1),
(37, 'A0229608', 'Echanez', 'Jims Raymond', 'Lorenzo', 'Las Pinas City', '0909343432', '', '1995-10-23', 'jayjaymeep@gmai.com', '', 'Male', 7, 12, 'Henry Echanez', 1, 1, 1),
(60, 'A0711044', 'Gulo', 'Rhea Marie', 'Nobela', 'New Manila', '09876231432', '', '1995-10-25', 'rheamarieg@gmail.com', 'rhea', 'Female', 7, 12, 'Juan Gulo', 1, 0, 0),
(61, 'A0198515', 'Arduo', 'Jonathan', 'Roxas', 'Harvard', '09876567890', '', '1995-11-11', 'onat143@gmail.com', 'cha', 'Male', 7, 12, 'Onat Arduo', 0, 0, 0),
(62, 'A0162493', 'Cruz', 'John Paulo', 'Vergara', 'New West', '9878134561', '', '1995-09-11', 'jpcruz@gmail.com', 'salatiks', 'Male', 7, 12, 'Jonathan Arduo', 1, 0, 0),
(63, 'A0381597', 'Suyom', 'Emanuel', 'Legarda', 'Makati City', '09479888749', 'tblprivileges.PNG', '1988-05-16', 'suyomlord666@gmail.com', 'suyom', 'Male', 8, 12, 'Larry Suyom', 1, 9, 1),
(214, 'K0302575', 'Leonado', 'Raymond ', 'Gener ', 'blk 83 lot 20 Mojaco St. Brgy Hidden Leaf', '9123412345', 'alex.png', '1997-12-24', 'RaymondLeonador@gmail.com', 'Leonardo1224', 'Male', 10, 14, 'Bagatsing Ocampo', 1, 29, 1),
(215, 'K0617677', 'Cervantez', 'Charisse', 'Pempemco', '1089 Iwatsuki Avenue', '9123787512', 'finalquestion.jpg', '1997-11-17', 'Cha.cervantez@gmail.com', 'Charissee0909', 'Female', 11, 15, 'Morged Cervantez', 1, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentsubjects`
--

CREATE TABLE `tblstudentsubjects` (
  `student_subject_id` int(11) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `prof_id` varchar(45) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `midterm_grade` decimal(10,2) NOT NULL,
  `final_grade` decimal(10,2) NOT NULL,
  `midterm_evaluation` text NOT NULL,
  `final_evaluation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentswhowantstobeinstructor`
--

CREATE TABLE `tblstudentswhowantstobeinstructor` (
  `student_id_instructor` int(11) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `student_bio` text NOT NULL,
  `prefered_subject` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `subject_id` int(11) NOT NULL,
  `cfn` varchar(45) NOT NULL,
  `subject_name` varchar(45) NOT NULL,
  `subject_code` varchar(45) NOT NULL,
  `department_id` int(11) NOT NULL,
  `isActive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`subject_id`, `cfn`, `subject_name`, `subject_code`, `department_id`, `isActive`) VALUES
(1, 'A0928496', 'PROGRAM LOGIC FORMULATION', 'PROLOG', 12, 1),
(2, 'A0903815', 'WEB DEVELOPMENT BASICS', 'WEBDEV', 12, 1),
(3, 'A0411590', 'DATABASE FUNDAMENTAL', 'DATAFUN', 12, 1),
(4, 'A0824412', 'DATABASE CERTIFICATION', 'DBCERT', 12, 1),
(5, 'A0301513', 'OPERATING SYSTEM', 'OPERSYS', 12, 1),
(6, 'A0053570', 'AUTOCAD TRAINING', 'AUTOCADs', 12, 1),
(7, 'A0831991', 'MODELING AND SIMULATION', 'MODSIMU', 12, 1),
(8, 'A0859377', 'SYSTEM ANALYSIS AND DESIGN', 'SYSSANDE', 12, 1),
(9, 'A0577748', 'automata basics', 'Automata1', 12, 1),
(10, 'A0886219', 'Accounting Basic 1', 'ACCOUNTING 1', 14, 1),
(11, 'A0796605', 'Accounting Basic 2', 'ACCOUNTING 2', 14, 1),
(12, 'A0832595', 'Business Mathematics1', 'BUSINESS MATH', 14, 1),
(13, 'A0639900', 'MATHEMATICS ENGINEERING 1', 'MATHENG 1', 15, 1),
(14, 'A0746674', 'ENGINEERING BASIC 1', 'ENGBASE1', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbltutor`
--

CREATE TABLE `tbltutor` (
  `tutor_id` int(11) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `instructor_id` varchar(45) NOT NULL,
  `date_requested` datetime NOT NULL,
  `date_approved` datetime NOT NULL,
  `date_finished` datetime NOT NULL,
  `request_message` text NOT NULL,
  `subject` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltutorials`
--

CREATE TABLE `tbltutorials` (
  `tutorial_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `tutorial_name` text NOT NULL,
  `tutorial_asset` text NOT NULL,
  `department_id` int(11) NOT NULL,
  `tutorial_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltutorials`
--

INSERT INTO `tbltutorials` (`tutorial_id`, `subject_id`, `tutorial_name`, `tutorial_asset`, `department_id`, `tutorial_type`) VALUES
(3, 3, 'Database Joins', 'http://php.net/', 12, 'web link'),
(4, 1, 'Database Joins', 'http://php.net/', 12, 'web link'),
(5, 12, 'Business Math Introduction', 'https://www.youtube.com/results?search_query=business+math+introduction', 14, 'web link');

-- --------------------------------------------------------

--
-- Table structure for table `tbltutorialsummary`
--

CREATE TABLE `tbltutorialsummary` (
  `tutor_summary_id` int(11) NOT NULL,
  `instructor_id` varchar(45) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `ratings` int(11) NOT NULL,
  `rating_message` text NOT NULL,
  `date_rate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblyearlevel`
--

CREATE TABLE `tblyearlevel` (
  `tbl_yearlevel_id` int(11) NOT NULL,
  `yearlevel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblyearlevel`
--

INSERT INTO `tblyearlevel` (`tbl_yearlevel_id`, `yearlevel`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fc_events_table`
--
ALTER TABLE `fc_events_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmins`
--
ALTER TABLE `tbladmins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `tblcollegeprograms`
--
ALTER TABLE `tblcollegeprograms`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `tblcounsellingsummary`
--
ALTER TABLE `tblcounsellingsummary`
  ADD PRIMARY KEY (`council_summary_id`);

--
-- Indexes for table `tbldepartmentheads`
--
ALTER TABLE `tbldepartmentheads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblguidance`
--
ALTER TABLE `tblguidance`
  ADD PRIMARY KEY (`tbl_id_guidance`);

--
-- Indexes for table `tblguidancecouncilor`
--
ALTER TABLE `tblguidancecouncilor`
  ADD PRIMARY KEY (`tbl_gc_id`);

--
-- Indexes for table `tblguidancerating`
--
ALTER TABLE `tblguidancerating`
  ADD PRIMARY KEY (`gcr_id`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `tblprevileges`
--
ALTER TABLE `tblprevileges`
  ADD PRIMARY KEY (`tbl_previleges_id`);

--
-- Indexes for table `tblprofessor`
--
ALTER TABLE `tblprofessor`
  ADD PRIMARY KEY (`tbl_prof_id`);

--
-- Indexes for table `tblprofessorsubject`
--
ALTER TABLE `tblprofessorsubject`
  ADD PRIMARY KEY (`profsubject_id`);

--
-- Indexes for table `tblprofrating`
--
ALTER TABLE `tblprofrating`
  ADD PRIMARY KEY (`profrating_id`);

--
-- Indexes for table `tblreplymessage`
--
ALTER TABLE `tblreplymessage`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `tblsection`
--
ALTER TABLE `tblsection`
  ADD PRIMARY KEY (`tbl_section_id`);

--
-- Indexes for table `tblstudentinfo`
--
ALTER TABLE `tblstudentinfo`
  ADD PRIMARY KEY (`tbl_student_id`);

--
-- Indexes for table `tblstudentsubjects`
--
ALTER TABLE `tblstudentsubjects`
  ADD PRIMARY KEY (`student_subject_id`);

--
-- Indexes for table `tblstudentswhowantstobeinstructor`
--
ALTER TABLE `tblstudentswhowantstobeinstructor`
  ADD PRIMARY KEY (`student_id_instructor`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tbltutor`
--
ALTER TABLE `tbltutor`
  ADD PRIMARY KEY (`tutor_id`);

--
-- Indexes for table `tbltutorials`
--
ALTER TABLE `tbltutorials`
  ADD PRIMARY KEY (`tutorial_id`);

--
-- Indexes for table `tbltutorialsummary`
--
ALTER TABLE `tbltutorialsummary`
  ADD PRIMARY KEY (`tutor_summary_id`);

--
-- Indexes for table `tblyearlevel`
--
ALTER TABLE `tblyearlevel`
  ADD PRIMARY KEY (`tbl_yearlevel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fc_events_table`
--
ALTER TABLE `fc_events_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbladmins`
--
ALTER TABLE `tbladmins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblcollegeprograms`
--
ALTER TABLE `tblcollegeprograms`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tblcounsellingsummary`
--
ALTER TABLE `tblcounsellingsummary`
  MODIFY `council_summary_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbldepartmentheads`
--
ALTER TABLE `tbldepartmentheads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblguidance`
--
ALTER TABLE `tblguidance`
  MODIFY `tbl_id_guidance` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblguidancecouncilor`
--
ALTER TABLE `tblguidancecouncilor`
  MODIFY `tbl_gc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblguidancerating`
--
ALTER TABLE `tblguidancerating`
  MODIFY `gcr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;
--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblprevileges`
--
ALTER TABLE `tblprevileges`
  MODIFY `tbl_previleges_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblprofessor`
--
ALTER TABLE `tblprofessor`
  MODIFY `tbl_prof_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblprofessorsubject`
--
ALTER TABLE `tblprofessorsubject`
  MODIFY `profsubject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblprofrating`
--
ALTER TABLE `tblprofrating`
  MODIFY `profrating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblreplymessage`
--
ALTER TABLE `tblreplymessage`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblsection`
--
ALTER TABLE `tblsection`
  MODIFY `tbl_section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tblstudentinfo`
--
ALTER TABLE `tblstudentinfo`
  MODIFY `tbl_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT for table `tblstudentsubjects`
--
ALTER TABLE `tblstudentsubjects`
  MODIFY `student_subject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblstudentswhowantstobeinstructor`
--
ALTER TABLE `tblstudentswhowantstobeinstructor`
  MODIFY `student_id_instructor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbltutor`
--
ALTER TABLE `tbltutor`
  MODIFY `tutor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbltutorials`
--
ALTER TABLE `tbltutorials`
  MODIFY `tutorial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbltutorialsummary`
--
ALTER TABLE `tbltutorialsummary`
  MODIFY `tutor_summary_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblyearlevel`
--
ALTER TABLE `tblyearlevel`
  MODIFY `tbl_yearlevel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
