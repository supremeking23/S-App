-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2017 at 04:06 AM
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
(1, 1, 'Funcion', 'Ivan Christian Jay', 'Echanes', '520-B 16th ISU Village ', 'avatar.png', '09479888749', '1995-11-23', 'adminivan@gmail.com', 'adminivan', 'Male', 1, '2015-11-23'),
(7, 1, 'Gustin', 'Jia Lenne', 'Alberts', 'New Manila', '20170207_103610.jpg', '09831238768', '1995-09-12', 'jialennealberts@gmail.com', 'jialennealberts', 'Female', 0, '2015-11-23'),
(8, 12, 'Allen', 'Bartholomew Henry', 'West', 'New Found Glory Taguig City', '20.jpeg', '09831238768', '1990-06-12', 'barryallen@gmail.com', 'barry', 'Male', 1, '0000-00-00'),
(9, 14, 'Reyes', 'Rowena', 'Alcantara', 'Makati City', 'finalstudents.jpg', '09831238768', '1982-02-09', 'rowenareyes@gmail.com', 'rowena', 'Female', 1, '0000-00-00'),
(10, 15, 'Rivera', 'Marian', 'Meniano', '520-B 16th ISU Village Barangay 31 South Side', 'students.jpg', '09831238761', '1995-09-12', 'marianmenrivera@gmail.com', 'marian', 'Male', 1, '0000-00-00'),
(11, 16, 'Ferrer', 'Milagros', 'Asuncion', 'Davao Street Paraniaque', 'user5-128x128.jpg', '09831238768', '1980-05-19', 'milaferrer@gmail.com', 'mila', 'Female', 1, '0000-00-00'),
(12, 16, 'Newsome', 'Cristopher', 'Alexis', 'New Manila', 'avatar04.png', '09831238768', '1990-06-19', 'chrisnewsome@gmail.com', 'chrisnewsome', 'Male', 1, '0000-00-00');

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
(5, 14, 9, 'happy teacher\'s day CBA faculty', '2017-10-06 00:53:27'),
(6, 1, 1, 'testing', '2017-10-10 23:45:02'),
(7, 16, 11, 'I am the new admin of this department', '2017-10-11 01:25:23'),
(8, 12, 8, 'ITC Congress this coming friday', '2017-10-11 12:57:13');

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
(11, 15, ' Bachelor of Science in Building Technology Management', 'BSBTM', '<blockquote><p>4 year\'s program offered by the college of CTM</p></blockquote>'),
(12, 16, 'Bachelor of Science in Nursing', 'BS Nursing', '<p>lorem ipsum delor</p>');

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
(11, 'Lordes', 'Howards', 'Starks', '520-B 16th ISU Village Barangay 31 South Side', '2017-09-21', '9.jpeg', 'lhs@gmail.com', '09831238768', 12, 'Male', '2017-10-10'),
(12, 'Lek Lek', 'Manzano', 'Alonso', 'Makati City', '1976-07-21', '10.jpeg', 'lekalonso21@gmail.com', '09831238768', 14, 'Male', '2017-10-11'),
(13, 'John David', 'Marqueen', 'De Leon', 'West Rembo Makati City', '1989-06-20', 'jp.png', 'jddl@gmail.com', '09831238761', 15, 'Male', '2017-10-06'),
(14, 'Liam', 'Howard', 'Hemsworth', 'Makati City', '1987-01-12', '10.jpeg', 'liamhemsworth@gmail.com', '09831238768', 16, 'Male', '2017-10-11');

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
(15, 'CTM', 'College of Engineering and Technology Management', 'architecture.png', 'architecturebanner.jpg', '#804040', '<blockquote><p>We Mold Graduates with Character and Competence Fit for Technology Management at National Certification Standard NC III or Higher</p></blockquote>', '<blockquote><p>We will strive to attain the Level IV Standard of Classification for the CETM Faculty and Facilities over a Three-Year Period</p></blockquote>'),
(16, 'COAHS', 'COLLEGE OF ALLIED HEALTH STUDIES', 'science.png', 'scienceBanner.jpg', '#408080', '', '');

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
(1, '2017-10-03', NULL, 'Regular School Event this day', '12:00:00', NULL, 1, 'Single day event', 1),
(3, '2017-10-09', '2017-10-14', 'week summit', '11:11:00', '12:00:00', 1, 'Multiple Day Event', 1),
(4, '2017-10-05', NULL, 'Suyom Alumni Award', '00:11:00', NULL, 1, 'Single day event', 1),
(6, '2017-10-14', NULL, 'Defense for CCS Software Engineering', '08:00:00', NULL, 12, 'Single day event', 1),
(8, '2017-10-16', '2017-10-21', 'CBA week', '07:00:00', '17:00:00', 14, 'Multiple Day Event', 1),
(9, '2017-10-26', NULL, 'Ever day', '12:05:00', NULL, 16, 'Single day event', 11),
(10, '2017-10-13', NULL, 'ITC congress', '10:00:00', NULL, 12, 'Single day event', 8);

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
(322, 1, 'admin', 'Success Login', 'Success Login at Thursday 5th of October 2017 ', '02:43:53', '2017-10-06', 0, ''),
(323, 36, 'student', 'Success Login', 'Success Login at Saturday 7th of October 2017 ', '12:03:26', '2017-10-07', 0, ''),
(324, 36, 'student', 'Success Logout', 'Success Logout at Saturday 7th of October 2017 ', '12:28:28', '2017-10-07', 0, ''),
(325, 34, 'student', 'Success Login', 'Success Login at Saturday 7th of October 2017 ', '12:29:01', '2017-10-07', 0, ''),
(326, 34, 'student', 'Success Login', 'Success Login at Sunday 8th of October 2017 ', '21:53:37', '2017-10-08', 0, ''),
(327, 1, 'admin', 'Success Login', 'Success Login at Sunday 8th of October 2017 ', '21:55:07', '2017-10-08', 0, ''),
(328, 34, 'student', 'Success Login', 'Success Login at Monday 9th of October 2017 ', '10:39:54', '2017-10-09', 0, ''),
(329, 1, 'admin', 'Success Login', 'Success Login at Monday 9th of October 2017 ', '11:39:11', '2017-10-09', 0, ''),
(330, 1, 'admin', 'Success Login', 'Success Login at Tuesday 10th of October 2017 ', '21:18:52', '2017-10-10', 0, ''),
(331, 1, 'admin', 'Add Event', 'Add Event at Tuesday 10th of October 2017 ', '23:38:15', '2017-10-10', 0, ''),
(332, 1, 'admin', 'Update Event', 'Update Event at Tuesday 10th of October 2017 ', '23:39:53', '2017-10-10', 0, ''),
(333, 1, 'admin', 'Update Event', 'Update Event at Tuesday 10th of October 2017 ', '23:40:06', '2017-10-10', 0, ''),
(334, 1, 'admin', 'Delete Event', 'Delete Event at Tuesday 10th of October 2017 ', '23:42:00', '2017-10-10', 0, ''),
(335, 1, 'admin', 'Delete Event', 'Delete Event at Tuesday 10th of October 2017 ', '23:43:28', '2017-10-10', 0, ''),
(336, 1, 'admin', 'Add Event', 'Add Event at Tuesday 10th of October 2017 ', '23:43:38', '2017-10-10', 0, ''),
(337, 1, 'admin', 'Update Event', 'Update Event at Tuesday 10th of October 2017 ', '23:43:54', '2017-10-10', 0, ''),
(338, 1, 'admin', 'Update Event', 'Update Event at Tuesday 10th of October 2017 ', '23:44:05', '2017-10-10', 0, ''),
(339, 1, 'admin', 'Add Announcement', 'Add Announcement at Tuesday 10th of October 2017 ', '23:45:02', '2017-10-10', 0, ''),
(340, 1, 'admin', 'Add Department', 'Add Department at Tuesday 10th of October 2017 ', '23:58:19', '2017-10-10', 0, ''),
(341, 1, 'admin', 'Add College Program', 'Add College Program at Tuesday 10th of October 2017 ', '00:12:54', '2017-10-11', 0, ''),
(342, 1, 'admin', 'Update Event', 'Update Event at Tuesday 10th of October 2017 ', '01:21:38', '2017-10-11', 0, ''),
(343, 1, 'admin', 'Success Logout', 'Success Logout at Tuesday 10th of October 2017 ', '01:24:45', '2017-10-11', 0, ''),
(344, 11, 'admin', 'Success Login', 'Success Login at Tuesday 10th of October 2017 ', '01:25:03', '2017-10-11', 0, ''),
(345, 11, 'admin', 'Add Announcement', 'Add Announcement at Wednesday 11th of October 2017 ', '01:25:23', '2017-10-11', 0, ''),
(346, 11, 'admin', 'Add Event', 'Add Event at Tuesday 10th of October 2017 ', '01:27:07', '2017-10-11', 0, ''),
(347, 11, 'admin', 'Success Logout', 'Success Logout at Tuesday 10th of October 2017 ', '01:29:11', '2017-10-11', 0, ''),
(348, 1, 'admin', 'Success Login', 'Success Login at Tuesday 10th of October 2017 ', '01:31:55', '2017-10-11', 0, ''),
(349, 1, 'admin', 'Success Logout', 'Success Logout at Tuesday 10th of October 2017 ', '01:31:58', '2017-10-11', 0, ''),
(350, 1, 'admin', 'Success Login', 'Success Login at Wednesday 11th of October 2017 ', '11:15:16', '2017-10-11', 0, ''),
(351, 1, 'admin', 'Success Login', 'Success Login at Wednesday 11th of October 2017 ', '11:29:08', '2017-10-11', 0, ''),
(352, 1, 'admin', 'Success Login', 'Success Login at Wednesday 11th of October 2017 ', '11:34:56', '2017-10-11', 0, ''),
(353, 1, 'admin', 'Success Logout', 'Success Logout at Wednesday 11th of October 2017 ', '12:56:13', '2017-10-11', 0, ''),
(354, 8, 'admin', 'Success Login', 'Success Login at Wednesday 11th of October 2017 ', '12:56:20', '2017-10-11', 0, ''),
(355, 8, 'admin', 'Add Event', 'Add Event at Wednesday 11th of October 2017 ', '12:56:48', '2017-10-11', 0, ''),
(356, 8, 'admin', 'Add Announcement', 'Add Announcement at Wednesday 11th of October 2017 ', '12:57:13', '2017-10-11', 0, ''),
(357, 8, 'admin', 'Success Logout', 'Success Logout at Wednesday 11th of October 2017 ', '14:12:56', '2017-10-11', 0, ''),
(358, 1, 'admin', 'Success Login', 'Success Login at Wednesday 11th of October 2017 ', '15:04:39', '2017-10-11', 0, ''),
(359, 8, 'admin', 'Success Login', 'Success Login at Wednesday 11th of October 2017 ', '18:40:32', '2017-10-11', 0, ''),
(360, 8, 'admin', 'Success Logout', 'Success Logout at Wednesday 11th of October 2017 ', '19:53:18', '2017-10-11', 0, ''),
(361, 1, 'admin', 'Success Login', 'Success Login at Wednesday 11th of October 2017 ', '19:53:25', '2017-10-11', 0, ''),
(362, 8, 'admin', 'Success Login', 'Success Login at Wednesday 11th of October 2017 ', '20:02:37', '2017-10-11', 0, ''),
(363, 1, 'admin', 'Success Logout', 'Success Logout at Wednesday 11th of October 2017 ', '00:31:26', '2017-10-12', 0, ''),
(364, 1, 'admin', 'Success Login', 'Success Login at Wednesday 11th of October 2017 ', '00:31:31', '2017-10-12', 0, '');

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
(2, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'Test 2', 'Requesting for back up', '2017-10-01 12:00:00', 'Seen'),
(4, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'request follow up part 2', 'hehehehehhehehehehehehehhehehe', '2017-10-02 02:00:00', ''),
(5, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'request follow up part 3', 'anjan na????', '2017-10-02 02:00:00', ''),
(6, 'A0861506', 'Irene Joy Funcion', 'email', 'New Problem', 'i have a new problem\r\n', '2017-10-09 11:38:56', 'Seen');

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
(2, 'P0854168', 'Hartel', 'Marry Ellain', 'Nans', 'marryhartel@gmail.com', 'ellain', 'received_1110831962382331.jpeg', 'Female', 12, '1982-06-15', '09831238768', 'New Found Glory Taguig City', 1, '2017-09-29'),
(3, 'P0671971', 'Aldrich', 'Ken', 'Cayetano', 'kenaldrich@gmail.com', 'kenaldrich', 'alex.png', 'Male', 14, '1975-10-09', '9665324843', '998 Juan Luna Street Binondo-Tondo Manila', 1, '2017-10-06'),
(4, 'P0016475', 'Bangbang', 'Kennen', 'Quintos', 'kenkenbang@gmail.com', 'kenbang', 'computer.jpeg', 'Male', 14, '1977-01-24', '09323258769', '130 Engracia C. Reyes Street Santa Cruz Tagui', 1, '2017-10-06'),
(5, 'P0005680', 'Orlleono', 'Lawrence', 'De Guzman', 'lawrencemonday@gmail.com', 'lawrence', 'finalbckreg.jpg', 'Male', 15, '1985-04-24', '9912635823', '1176 Cabrera Street Brgy Calzada Taguig', 1, '2017-10-06'),
(6, 'P0315528', 'Collens', 'Lily', 'Admeral ', 'lilycollens@gmail.com', 'lilycollens', '1.jpeg', 'Female', 14, '1984-06-27', '09831238761', 'Makati City', 1, '2017-10-10'),
(7, 'P0719381', 'Bucad', 'Abellardo', 'Abel', 'abelbucad@gmail.com', 'abelbucad', 'avatar04.png', 'Male', 12, '1982-05-10', '09831238768', 'Makati City', 1, '2017-10-11'),
(8, 'P0914569', 'De Leon', 'Mark Joshua', 'Sandigal', 'mjdeleon@gmail.com', 'mjdeleon', 'avatar04.png', 'Male', 12, '1980-05-08', '09856478756', '75 P. Domingo Street, Carmona, Makati City', 1, '2017-10-12'),
(9, 'P0350905', 'David', 'Joh', 'Ronquillo', 'johndavid@gmail.com', 'johndavid', 'avatar04.png', 'Male', 12, '1989-12-07', '9123651233', '7114 Kundiman Street, Sampaloc Manila', 1, '2017-10-12'),
(10, 'P0718601', 'Avila', 'Peter', 'Guernaldo', 'peteravila@gmail.com', 'peteravila', 'avatar04.png', 'Male', 12, '1987-01-27', '09831238768', '1121, Quezon City, Metro Manila', 1, '2017-10-12'),
(11, 'P0290372', 'Rasay', 'Cristel', 'Humampas', 'christelrasay@gmail.com', 'christelrasay', 'avatar3.png', 'Female', 12, '1979-07-03', '9619982693', '4905 Gasa Street, Paranaque', 1, '2017-10-12'),
(12, 'P0909516', 'Celeste', 'John Lester', 'Lara', 'johnlesterceleste@gmail.com', 'johnlesterceleste', 'avatar5.png', 'Male', 12, '1985-03-15', '09831238761', '95 Hermogenes Street Sofia Subd Taguig ', 1, '2017-10-12'),
(13, 'P0442004', 'Hernando', 'Ronald', 'Mansues', 'ronaldhernando@gmail.com', 'ronaldhernando', 'user2-160x160.jpg', 'Male', 12, '1985-07-04', '9573234235', '1134 M. de Santos Street San nicholas ', 1, '2017-10-12'),
(14, 'P0132523', 'Galgo', 'Cedric', 'Lactuan', 'cendricgalgo@gmai.com', 'cedricgalgo', 'avatar5.png', 'Male', 12, '1986-02-01', '9234886234', '564 A.Soriano Avenue Manila', 1, '2017-10-12'),
(15, 'P0020696', 'Tungol', 'Jairus', 'Vonn', 'jairustungol@gmail.com', 'jairustungol', 'avatar04.png', 'Male', 12, '1982-05-17', '9687234976', '338 Raja Matanda Street Tondo Metro Manila', 1, '2017-10-12'),
(16, 'P0277733', 'Sescon', 'Blaire', 'Cabilan', 'blairsescon@gmail.com', 'blairsescon', 'user3-128x128.jpg', 'Female', 12, '1981-01-11', '9993247293', '994 M.V de los Santos Street Sampaloc Manila', 1, '2017-10-12'),
(17, 'P0414093', 'Calinog', 'Krisch', 'Santuela', 'krischcalinog@gmail.com', 'krischcalinog', 'user7-128x128.jpg', 'Female', 12, '1988-06-06', '9776848234', '678 Legarda Street Makati City', 1, '2017-10-12'),
(18, 'P0636734', 'Sumalde', 'Clarence Davis', 'Beato', 'clarencedavissumalde@gmail.com', 'clarencedavissumalde', 'user1-128x128.jpg', 'Male', 14, '1984-04-19', '9192365235', '510 A.J Villegas Street Pasig', 1, '2017-10-12'),
(19, 'P0787038', 'Baccay', 'Leonell', 'King', 'leonellbaccay@gmail.com', 'leonellbaccay', 'user8-128x128.jpg', 'Male', 14, '1979-10-04', '9976349344', 'Unit 604 Cattleya bldg Makati City', 1, '2017-10-12'),
(20, 'P0489104', 'Earlux', 'Jane', 'Nadera', 'janeearlux@gmail.com', 'janeearlux', 'user5-128x128.jpg', 'Female', 14, '1978-02-05', '9343357934', '235 Salcedo Street Legaspi Village Pasay', 1, '2017-10-12'),
(21, 'P0946362', 'Olaza', 'Trisha', 'Isaac', 'trishaolaza@gmail.com', 'trishaolaza', 'user4-128x128.jpg', 'Female', 14, '1988-08-29', '9457934507', '231 Palanan Street Makati City', 1, '2017-10-12'),
(22, 'P0117601', 'Caimbon', 'Nerissa', 'Geene', 'nerissacaimbon@gmail.com', 'nerissacaimbon', 'avatar3.png', 'Female', 12, '1989-05-19', '9123951235', '333 Pio Del  Pilar Makati City', 1, '2017-10-12'),
(23, 'P0656857', 'Escobal', 'Alexander', 'Allan', 'alexescobal@gmail.com', 'alexescobal', 'user2-160x160.jpg', 'Male', 12, '1981-09-21', '9992139583', '431 Amihan Street Brgy Amparo Quezon City', 1, '2017-10-12'),
(24, 'P0182349', 'Reyes', 'Jessica', 'Abusmas', 'jessicareyes@gmail.com', 'jessicareyes', 'user3-128x128.jpg', 'Female', 12, '1983-03-22', '9755357973', '1715 Bagbag Street Brgy Bargong Barrio Pasig', 1, '2017-10-12');

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
(7, '5', 14, 30, 1, 15, 11),
(8, '6', 12, 29, 1, 14, 10),
(9, '7', 4, 5, 4, 12, 7),
(10, '7', 16, 4, 3, 12, 7),
(11, '7', 0, 4, 3, 12, 7);

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
(3, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'Ivan Christian Jay Funcion', 'wala ako dito\r\n', '2017-10-05 01:11:14', 'Seen'),
(4, 'A0861506', 'Irene Joy Funcion', 'irenejoyfuncion@gmail.com', 'Ivan Christian Jay Funcion', 'gg hahhahah', '2017-10-08 22:36:05', 'Seen');

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
(30, 'ABTM', 11, 15, 1),
(31, 'B-Supply Management', 10, 14, 2);

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
(34, 'A0861506', 'Funcion', 'Irene Joy', 'Echanes', 'Makati City', '0909343431', 'avatar2.png', '1995-10-22', 'irenejoyfuncion@gmail.com', 'irene', 'Female', 7, 12, 'Ireneo G. Funcion', 1, 1, 1),
(36, 'A0077973', 'Forteza', 'Barbara', 'Dionisio', 'Makati City', '0909343431', 'photo3.jpg', '1995-10-22', 'barbaraforteza@gmail.com', 'barbie', 'Female', 7, 12, 'Joshua Dionisio', 1, 1, 1),
(37, 'A0229608', 'Echanez', 'Jims Raymond', 'Lorenzo', 'Las Pinas City', '0909343432', '', '1995-10-23', 'jayjaymeep@gmai.com', '', 'Male', 7, 12, 'Henry Echanez', 1, 1, 1),
(60, 'A0711044', 'Gulo', 'Rhea Marie', 'Nobela', 'New Manila', '09876231432', '14.jpeg', '1995-10-25', 'rheamarieg@gmail.com', 'rhea', 'Female', 7, 12, 'Juan Gulo', 1, 5, 4),
(61, 'A0198515', 'Arduo', 'Jonathan', 'Roxas', 'Harvard', '09876567890', '', '1995-11-11', 'onat143@gmail.com', 'cha', 'Male', 7, 12, 'Onat Arduo', 1, 5, 4),
(62, 'A0162493', 'Cruz', 'John Paulo', 'Vergara', 'New West', '9878134561', 'avatar5.png', '1995-09-11', 'jpcruz@gmail.com', 'salatiks', 'Male', 7, 12, 'Jonathan Arduo', 1, 5, 4),
(63, 'A0381597', 'Suyom', 'Emanuel', 'Legarda', 'Makati City', '09479888749', 'tblprivileges.PNG', '1988-05-16', 'suyomlord666@gmail.com', 'suyom', 'Male', 8, 12, 'Larry Suyom', 1, 9, 1),
(214, 'K0302575', 'Leonado', 'Raymond ', 'Gener ', 'blk 83 lot 20 Mojaco St. Brgy Hidden Leaf', '9123412345', 'alex.png', '1997-12-24', 'RaymondLeonador@gmail.com', 'Leonardo1224', 'Male', 10, 14, 'Bagatsing Ocampo', 1, 29, 1),
(215, 'K0617677', 'Cervantez', 'Charisse', 'Pempemco', '1089 Iwatsuki Avenue', '9123787512', 'finalquestion.jpg', '1997-11-17', 'Cha.cervantez@gmail.com', 'Charissee0909', 'Female', 11, 15, 'Morged Cervantez', 1, 30, 1),
(216, 'K0411444', 'Labrador', 'Aldwin', 'Balagtas', 'cainta cavite', '09831238768', 'user1-128x128.jpg', '1995-09-09', 'aldwinlabrador@gmail.com', 'aldwinlabrador', 'Male', 7, 12, 'Rosel Ann Labrador', 1, 5, 4),
(217, 'K5150211', 'Mojares', 'Ely Nell Jireh', 'Longakit', '11th Avenue, East Rembo, Makati City', '09831238768', '4.jpeg', '1998-04-08', 'emojares.k5150211@umak.edu.ph', 'password123', 'Male', 7, 12, 'Ely Nell Jireh Mojares Sr.', 1, 4, 3),
(218, 'K0770673', 'Odviar', 'Jenina Bianca', 'Joy', '958 Basilan St, Pitogo', '9555373134', 'guest2.jpg', '1997-09-23', 'Odviar.bia@yahoo.com', 'jeninaodviar58', 'Female', 7, 12, 'Marcelito Bermoy', 1, 0, 0),
(219, 'K0881782', 'De leon', 'Leonev', 'Hofana', '1792-E, 24th Ave., East Rembo Makati City', '9876598746', 'guest2.jpg', '1993-01-08', 'l.Deleon11@gmail.com', 'Deleonnev09', 'Male', 7, 12, 'Princess Franciso', 1, 0, 0),
(220, 'K0056726', 'Malbog', 'John Carlo', 'Muefas', 'Blk 324 L-7 Oniole St, Brgy Rizal Makati City', '9995116255', 'guest2.jpg', '1993-09-12', 'J.Malbog08@gmail.com', 'Cleopatra88', 'Male', 7, 12, 'Hermo Malbog', 1, 4, 3),
(221, 'K0665154', 'Majait', 'Kimie Kate', 'Delatran', 'Bldg 3453 Guadalupe Bliss  Cembo Makati Ctiy', '9876987656', 'guest2.jpg', '1998-08-27', 'K.Majait2@gmail.com', 'Nag8ahit', 'Female', 7, 12, 'Lilibeth Dael', 1, 0, 0),
(222, 'K0619846', 'Ganaban', 'Geco Carl', 'Tres', '1228 Tiger Mouse St, Brgy. Rizal Makati City', '9123498765', 'guest2.jpg', '1996-05-08', 'G.Ganaban@gmail.com', 'GecoGeco98', 'Male', 7, 12, 'Geraldine Ganaban', 1, 0, 0),
(223, 'K0123970', 'Renon', 'Bianca Mae', 'Reblos', '16 Yobcaton St. Brgy. Lapaz Makati City', '9899769872', 'guest2.jpg', '1998-02-08', 'B.Renon@gmail.com', 'GeorgeLovek0', 'Female', 7, 12, 'Fernando Renon', 1, 4, 3),
(224, 'K0670115', 'Soriano', 'George', 'Swerte', 'Juan Luna St. Brgy. Rizal Makati City', '9999765432', 'guest2.jpg', '1997-09-22', 'G.Soriano@gmail.com', 'SorianoBians4', 'Male', 7, 12, 'Carmelita Soriano', 1, 0, 0),
(225, 'K0769943', 'Rom', 'Ariel', 'Bueno', 'blk 192 lot 07 Roma Amor St. Rizal', '9898762314', 'guest2.jpg', '1996-06-05', 'A.Rom@gmail.com', '42312Rom', 'Male', 7, 12, 'Jacqueline Rom', 1, 0, 0),
(226, 'K0741754', 'Roco', 'Cholo Miguel', 'Krepas', '7-I F.Balagtas West Rembo Makati City', '9123451789', 'guest2.jpg', '1993-10-02', 'C.Roco@gmail.com', 'RocoLoco101', 'Male', 7, 12, 'Rosalia Roco', 1, 0, 0),
(227, 'K0455850', 'Pablo', 'Jerald Jon', 'Delatran', '16 Lb Molave St. Cembo Makati City', '9897656432', 'guest2.jpg', '1993-02-15', 'J.Pablo@gmail.com', 'ChoPablo69', 'Male', 7, 12, 'Aileen Palbo', 1, 4, 3),
(228, 'K0128656', 'Gamboa', 'Nichol', 'Costales', '35-M.A Luna St. West Rembo Makati City', '9074934012', 'guest2.jpg', '1998-04-18', 'N.Gamboa@gmail.com', '56372Gamboa', 'Male', 7, 12, 'Romy Gamboa', 1, 4, 3),
(229, 'K0899126', 'Santiago', 'Angelo', 'Dihathat', '2547 Pasigline St, Sta.Ana, Manila', '9568093768', 'guest2.jpg', '1997-02-16', 'A.Santiago@gmail.com', 'SagaSensei0123', 'Male', 7, 12, 'Eddie Santiago', 1, 4, 3),
(230, 'K0062522', 'Espinosa', 'Mhervin', 'Porte', '39P Burgos St, Sta.Ana Taguig', '9079832496', 'guest2.jpg', '1997-04-01', 'E.Mhervin@gmail.com', 'Joycee8Mervs', 'Male', 7, 12, 'Merlino Espinosa', 1, 4, 3),
(231, 'K0258873', 'Baui', 'Mac Gabriel', 'Nueno', '143 16th Ave East Rembo Makati City', '9554622102', 'guest2.jpg', '1996-08-19', 'M.Baui@gmail.com', 'Bauian0982', 'Male', 7, 12, 'Analyn Baui', 1, 4, 3),
(232, 'K0136534', 'Geronimo', 'Sherlyn', 'Basbas', '113-0 8th Ave. East Rembo Makati City', '9273461761', 'guest2.jpg', '1996-01-08', 'S.Geronimo@gmail.com', 'Osus08Asus', 'Female', 7, 12, 'Judalyn Geronimo', 1, 4, 3),
(233, 'K0153132', 'Evangelista', 'Vincent', 'Apro', '278-A Kalayaan Ave. West Rembo Makati City', '9478344953', 'guest2.jpg', '1991-02-03', 'V.Evangelista@gmail.com', 'Evg089molabe', 'Male', 7, 12, 'minda Evangelista', 1, 4, 3),
(234, 'K0953726', 'Nonato', 'Jon Jessel', 'Bae', '8643 San jose St.Guadalupe Nuevo Makati City', '9767344756', 'guest2.jpg', '1992-04-01', 'J.Nonato@gmail.com', '0908Nonats', 'Male', 7, 12, 'Antonio Torero', 1, 0, 0),
(235, 'K0769120', 'Torero', 'Adrian', 'Musta', '71 Mariano St. Ususan, Taguig', '9269236562', 'guest2.jpg', '1995-08-11', 'A.Torero@gmail.com', 'Torskiepogi22', 'Male', 7, 12, 'Marcial Mangaran', 1, 0, 0),
(236, 'K0842614', 'Mangaran', 'Jerald Micko', 'Ruspos', '2056 Guiho St. Cembo Makati City', '9900406715', 'guest2.jpg', '1998-11-02', 'G.Dalit@gmail.com', 'DaliDalit09', 'Male', 7, 12, 'Zenaida Dalit', 1, 0, 0),
(237, 'K0082048', 'Dalit', 'Gibblyn', 'Mamshies', 'Roma amor St. Brgy Rizal Makati City', '9099366820', 'guest2.jpg', '1998-06-09', 'D.Gibblyn@gmail.com', 'GDalit98', 'Female', 7, 12, 'Carpio Dalit', 1, 4, 3),
(238, 'K0216271', 'Gordo', 'Alexander', 'Canlas', '2379 Gen.Alejandrino St, Bangkal. Makati ', '9509103472', 'guest2.jpg', '1992-10-02', 'ajgordo08@gmail.com', 'gordo481527', 'Male', 7, 12, 'Susan Gordo', 1, 4, 3),
(239, 'K0693072', 'Peregrino', 'Zanjoe', 'Canlas', '258 Luzon St.Pagsanghan Pitogo Makati', '9129876546', 'guest2.jpg', '1998-02-08', 'Z.Peregrino@gmail.com', 'SanMiguelbeer99', 'Male', 7, 12, 'Joseph Peregrino', 1, 0, 0),
(240, 'K0929571', 'Peregrino', 'Joseph', 'Cuela', '39 Alibaba St,Guadalupe Nuevo', '9898766675', 'guest2.jpg', '1998-02-08', 'J.Peregrino@gmail.com', 'Jaworski26', 'Male', 7, 12, 'Camid Amoto', 1, 0, 0),
(241, 'K0121459', 'Gomez', 'Joycee', 'Cuevas', '3452 Garcia St.Pinagkaisahan Makati City', '9114457898', 'guest2.jpg', '1990-08-15', 'JoyceeGomez@gmail.com', 'JoyceeMervs00', 'Female', 7, 12, 'Audie Corpuz', 1, 4, 3),
(242, 'K0504950', 'Dela torre', 'Joseph', 'Espinosa', '203 P.Victorino Mandaluyong', '9090876453', 'guest2.jpg', '1994-10-28', 'J.Delatorre@gmail.com', 'Delatorre88', 'Male', 7, 12, 'Judith Dela Torre', 1, 0, 0),
(243, 'K0027727', 'Arnejo', 'Arjay', 'arfarf', 'Waterlily SouthCembo Makati City', '9890980301', 'guest2.jpg', '1995-11-01', 'A.Arnejo@gmail.com', 'ArnejoPogi08', 'Male', 7, 12, 'Marcela Arnejo', 1, 4, 3),
(244, 'K0156784', 'Ford', 'Xander', 'Love', 'blk 95 lot 2 upper Bicutan Taguig City', '9011349876', 'guest2.jpg', '1996-09-21', 'X.Ford@gmail.com', 'Ford2007', 'Male', 7, 12, 'Daniel Padilla', 1, 4, 3),
(245, 'K0119119', 'Lipata', 'Jonathan', 'Elepant', 'blk 68 lot15 Bigonia St. Makati City', '9998780223', 'guest2.jpg', '1997-02-01', 'J.Lipata@gmail.com', 'Ginebra1998', 'Male', 7, 12, 'Mark Abenejo', 1, 4, 3),
(246, 'K0599943', 'Peregrino', 'Hanica', 'Joy', 'Centennial.Village,Taguig ', '9113568345', 'guest2.jpg', '1997-02-09', 'H.Peregrino@gmail.com', '91829favs', 'Female', 7, 12, 'Jumar Agbay', 1, 0, 0),
(247, 'K0472502', 'Samson', 'Jonas', 'Aglas', '1566 Inegl Manor', '9898397657', 'guest2.jpg', '1998-08-11', 'Samsonjonas@gmail.com', 'Samsonson112', 'Male', 7, 12, 'Lara Samson', 1, 0, 0),
(248, 'K0613657', 'Elicay', 'Jean ', 'Paul', '47 Mysakila Drive', '9998987675', 'guest2.jpg', '1997-08-19', 'E.Jean@gmail.com', 'JeanLabra09', 'Male', 7, 12, 'Pedro Elicay', 1, 0, 0),
(249, 'K0335157', 'Cortez', 'Elton', 'Nuqui', '23 Workhaven Lane', '9223345678', 'guest2.jpg', '1993-03-07', 'EltonCortez@gmail.com', 'Contezana2', 'Male', 7, 12, 'Bryan Dela Cruz', 1, 4, 3),
(250, 'K0693021', 'Quiobe', 'Vincent', 'Veles', '1913 Hanoy way', '9675463712', 'guest2.jpg', '1998-01-02', 'Q.Vincent@gmail.com', 'Quiebeck98', 'Male', 7, 12, 'Emmanuel Liadoc', 1, 0, 0),
(251, 'K0743978', 'Alfonso', 'Mary', 'Gretel', '1121 Loja Avenue', '9223489765', 'guest2.jpg', '1991-06-18', 'Maryalfonso@gmail.com', 'AlfonsoBrothers2', 'Female', 7, 12, 'Alyssa Agpalo', 1, 0, 0),
(252, 'K0496655', 'Abella', 'Lhyn', 'Lan', '1531 Sal drive', '9776548976', 'guest2.jpg', '1998-03-13', 'LhynAbella@gmail.com', '689Abella', 'Female', 7, 12, 'Don papaya', 1, 0, 0),
(253, 'K0233797', 'Arcangel', 'Adlyn', 'Lelebet', '692 Joliet Street', '9556749087', 'guest2.jpg', '1996-03-11', 'adlynarcangel@gmail.com', 'arcangelbla67', 'Female', 7, 12, 'Toper Dela Cruz', 1, 4, 3),
(254, 'K0529350', 'Veluz', 'Angge', 'Lipata', '1688 Okara Way', '9809876542', 'guest2.jpg', '1996-01-08', 'AnggeVeluz@gmail.com', 'Veluzta909', 'Female', 7, 12, 'Rodelo Mondeza', 1, 0, 0),
(255, 'K0335185', 'Toledo', 'Lace', 'Canlas', '261 A Coura La Cura', '9564231785', 'guest2.jpg', '1995-06-05', 'LaceToledo@gmail.com', 'Toledo0989281', 'Female', 7, 12, 'Mark Apostol', 1, 4, 3),
(256, 'K0617320', 'Lobo', 'Leonardo', 'Yolo', '1417 Lancaster Avenue', '9898908764', 'guest2.jpg', '1993-08-23', 'LeonardoLobo@gmail.com', 'LoboMoTo988', 'Male', 7, 12, 'Carl Artocilla', 1, 0, 0),
(257, 'K0433195', 'Dela Pena', 'Wilfredo', 'Hestahes', '270 Toulon Boulevard', '9098768098', 'guest2.jpg', '1998-03-03', 'WilfredoD@gmail.com', 'Wilfredo88', 'Male', 7, 12, 'Jonah Daquigan', 1, 4, 3),
(258, 'K0035808', 'Pachoco', 'Angelo', 'Bilabis', '419 iligan Lane', '9880987312', 'guest2.jpg', '1992-06-04', 'AngeloP@gmail.com', 'PachocoLoco98', 'Male', 7, 12, 'Arvie Escotido', 1, 4, 3),
(259, 'K0416267', 'Leones', 'Jaypee', 'Umbra', '770 Bydgoszcz  Avenue', '9012325612', 'guest2.jpg', '1997-12-25', 'JaypeeL@gmail.com', 'Jaypelaars22', 'Male', 7, 12, 'Shaz Ney', 1, 4, 3),
(260, 'K0485421', 'Solomon', 'Erika May', 'Ulep', '270 Armoha Parkway', '9726548987', 'guest2.jpg', '1997-11-01', 'ErikaSolomon@gmail.com', 'Solomon64', 'Female', 7, 12, 'Charlene Licty', 1, 0, 0),
(261, 'K0529743', 'Pimentel', 'Marinella', 'Macarubbo', '808 Bhopal Manor', '9090987662', 'guest2.jpg', '1998-08-27', 'MarinellaP@gmail.com', 'MarinellaG09', 'Female', 7, 12, 'Colene Bagaporo', 1, 0, 0),
(262, 'K0342033', 'Tante', 'John Carlo', 'Allen', '28 Charlotte  Amalie Street', '9878786545', 'guest2.jpg', '1992-10-28', 'JohncarloT@gmail.com', 'CarloMonster22', 'Male', 7, 12, 'Zaira Panganiban', 1, 4, 3),
(263, 'K0598808', 'Londonio', 'Emman', 'Hespahes', '1780 Hino Boulevard', '9443456321', 'guest2.jpg', '1992-01-07', 'EmmanL@gmail.com', 'Elovelove98', 'Male', 7, 12, 'Carmille lot', 1, 0, 0),
(264, 'K0392300', 'Labordo', 'Daniel', 'Hagkas', '18 Duisburg Boulevard', '9228375632', 'guest2.jpg', '1990-06-04', 'DanielLabordo@gmail.com', '41527Labordo', 'Male', 7, 12, 'Tintin Balatin', 1, 4, 3),
(265, 'K0884005', 'Rotoni', 'Vince', 'Garcia', '96 Tafuna Way', '9865912358', 'guest2.jpg', '1994-03-03', 'RotoniVince@gmail.com', 'Vince099', 'Male', 7, 12, 'Venus Raj', 1, 0, 0),
(266, 'K0613702', 'Tolentino', 'Denard', 'Veluz', '217 Butshavelo place', '9137512376', 'guest2.jpg', '1998-08-27', 'DenardT@gmail.com', '89Denard09', 'Male', 7, 12, 'Vanessa Galf', 1, 0, 0),
(267, 'K0988857', 'Cajocon', 'Eric', 'Suarez', '1837 Maya St. Brgy Rizal Makati', '9238574636', 'guest2.jpg', '1992-05-04', 'Suarez.Cajocon@gmail.com', 'Suarez0808', 'Male', 7, 12, 'Jonson Cajocon', 1, 0, 0);

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

--
-- Dumping data for table `tblstudentsubjects`
--

INSERT INTO `tblstudentsubjects` (`student_subject_id`, `student_id`, `prof_id`, `subject_id`, `midterm_grade`, `final_grade`, `midterm_evaluation`, `final_evaluation`) VALUES
(1, '34', '1', 3, '86.00', '86.00', 'Average. Be more deligent in coming to class. You are low in attendace record and you have missed 2 quizzes.', 'Average. Be more deligent in coming to class. You are low in attendace record and you have missed 2 quizzes.'),
(2, '34', '1', 1, '98.00', '99.00', 'Average. Be more deligent in coming to class. You are low in attendace record and you have missed 2 quizzes.', 'Average. Be more deligent in coming to class. You are low in attendace record and you have missed 2 quizzes.'),
(3, '34', '2', 2, '78.00', '87.00', 'Average. Be more deligent in coming to class. You are low in attendace record and you have missed 2 quizzes.', 'Average. Be more deligent in coming to class. You are low in attendace record and you have missed 2 quizzes.'),
(4, '36', '1', 3, '84.00', '82.00', 'more practice ', 'congratulations!! you pass'),
(5, '36', '1', 1, '85.00', '84.00', 'good keep it up', 'Average. Be more deligent in coming to class. You are low in attendace record and you have missed 2 quizzes.'),
(6, '36', '2', 2, '76.00', '89.00', 'Average. Be more deligent in coming to class. You are low in attendace record and you have missed 2 quizzes.', 'Average. Be more deligent in coming to class. You are low in attendace record and you have missed 2 quizzes.'),
(7, '60', '7', 4, '88.00', '89.00', 'Good Job', 'Good Job'),
(8, '61', '7', 4, '97.00', '79.00', 'Good Job Keep it up until the finals', 'Poor performance'),
(9, '62', '7', 4, '88.00', '88.00', 'Good job ', 'verry Consistent performance');

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
(14, 'A0746674', 'ENGINEERING BASIC 1', 'ENGBASE1', 15, 1),
(15, 'A0904564', 'Human Anatomy 1', 'Humatomy 1', 16, 1),
(16, 'A0777807', 'MOBILE COMPUTING', 'MOBICOM', 12, 1);

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
(5, 12, 'Business Math Introduction', 'https://www.youtube.com/results?search_query=business+math+introduction', 14, 'web link'),
(7, 1, 'Arduino Fundamentals', 'https://create.arduino.cc/projecthub/projects/tags/android', 12, 'web link');

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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblcollegeprograms`
--
ALTER TABLE `tblcollegeprograms`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblcounsellingsummary`
--
ALTER TABLE `tblcounsellingsummary`
  MODIFY `council_summary_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbldepartmentheads`
--
ALTER TABLE `tbldepartmentheads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;
--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblprevileges`
--
ALTER TABLE `tblprevileges`
  MODIFY `tbl_previleges_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblprofessor`
--
ALTER TABLE `tblprofessor`
  MODIFY `tbl_prof_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tblprofessorsubject`
--
ALTER TABLE `tblprofessorsubject`
  MODIFY `profsubject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tblprofrating`
--
ALTER TABLE `tblprofrating`
  MODIFY `profrating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblreplymessage`
--
ALTER TABLE `tblreplymessage`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblsection`
--
ALTER TABLE `tblsection`
  MODIFY `tbl_section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tblstudentinfo`
--
ALTER TABLE `tblstudentinfo`
  MODIFY `tbl_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;
--
-- AUTO_INCREMENT for table `tblstudentsubjects`
--
ALTER TABLE `tblstudentsubjects`
  MODIFY `student_subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tblstudentswhowantstobeinstructor`
--
ALTER TABLE `tblstudentswhowantstobeinstructor`
  MODIFY `student_id_instructor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbltutor`
--
ALTER TABLE `tbltutor`
  MODIFY `tutor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbltutorials`
--
ALTER TABLE `tbltutorials`
  MODIFY `tutorial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
