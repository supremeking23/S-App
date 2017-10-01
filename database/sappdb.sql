-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 09:32 PM
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
(8, 12, 'Allen', 'Bartholomew Henry', 'West', 'New Found Glory Taguig City', '20.jpeg', '09831238768', '1990-06-12', 'barryallen@gmail.com', 'barry', 'Male', 1, '0000-00-00');

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
(2, 12, 8, 'next week monday will be the last checking of system', '2017-09-29 01:36:27');

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
(9, 12, 'Bachelor of Science in Computer Network Administration', 'BSCS Net Admn', '<p>this program is a 4 years program offered by the CCS</p><p><br></p>');

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
(11, 'Lords', 'Howard', 'Stark', '520-B 16th ISU Village Barangay 31 South Side', '2017-09-21', '9.jpeg', 'lhs@gmail.com', '09831238768', 12, 'Male', '2017-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `department_id` int(11) NOT NULL,
  `department_code` varchar(45) NOT NULL,
  `department_name` varchar(45) NOT NULL,
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
(12, 'CCS', 'College of Computer Sciences', 'engineer.png', 'engineer banner.png', '#004080', '<p>Guided by its vision of commitment, the College shall provide a competitive, relevant, and functional information technology education curriculum responsive to the needs of the industrial and business organizations of the locality.<br></p>', '<p>The College of Computer Science envisions an Information Technology Education Institution committed to the development and adequate utilization and applications of information technology.<br></p>');

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
(3, '2017-10-09', '2017-10-14', 'week summit', '11:11:00', '12:00:00', 1, 'Multiple Day Event', 1);

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
(290, 36, 'student', 'Success Login', 'Success Login at Sunday 1st of October 2017 ', '01:19:17', '2017-10-02', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessages`
--

CREATE TABLE `tblmessages` (
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `sender_school_id` text,
  `sender_name` text,
  `sender_type` varchar(45) DEFAULT NULL,
  `sender_email` text,
  `subject` varchar(45) DEFAULT NULL,
  `sender_message` text,
  `date_send` datetime DEFAULT NULL,
  `reciever_id` int(11) DEFAULT NULL,
  `reciever_type` varchar(45) DEFAULT NULL,
  `reciever_name` text,
  `reply_message` text,
  `date_reply` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 1, 'Open Online Encoding of Remarks', 1);

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
(1, 'A0957966', 'Stark', 'Tony', 'Harris', 'tonystark@gmail.com', 'tony', '1391536_982696148422861_652186630375323824_n.jpg', 'Male', 12, '1981-06-23', '09479888749', 'New Found Glory Taguig City', 1, '2017-09-28'),
(2, 'A0854168', 'Hartel', 'Marry Ellain', 'Nans', 'marryhartel@gmail.com', 'ellain', 'received_1110831962382331.jpeg', 'Female', 12, '1982-06-15', '09831238768', 'New Found Glory Taguig City', 1, '2017-09-29');

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
(4, '2', 2, 1, 1, 12, 7);

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
(28, 'BCNA', 9, 12, 4);

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
(34, 'A0861506', 'Funcion', 'Irene Joy', 'Echanes', 'Makati City', '0909343431', '', '1995-10-22', 'irenejoyfuncion@gmail.com', '', 'Female', 7, 12, 'Ireneo G. Funcion', 1, 1, 1),
(36, 'A0077973', 'Forteza', 'Barbara', 'Dionisio', 'Makati City', '0909343431', 'background1.jpg', '1995-10-22', 'barbaraforteza@gmail.com', 'barbie', 'Female', 7, 12, 'Joshua Dionisio', 1, 1, 1),
(37, 'A0229608', 'Echanez', 'Jims Raymond', 'Lorenzo', 'Las Pinas City', '0909343432', '', '1995-10-23', 'jayjaymeep@gmai.com', '', 'Male', 7, 12, 'Henry Echanez', 1, 1, 1);

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
(6, 'A0053570', 'AUTOCAD TRAINING', 'AUTOCAD', 12, 1),
(7, 'A0831991', 'MODELING AND SIMULATION', 'MODSIMU', 12, 1),
(8, 'A0859377', 'SYSTEM ANALYSIS AND DESIGN', 'SYSSANDE', 12, 1);

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
(4, 1, 'Database Joins', 'http://php.net/', 12, 'web link');

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
-- Indexes for table `tblmessages`
--
ALTER TABLE `tblmessages`
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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblcollegeprograms`
--
ALTER TABLE `tblcollegeprograms`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tblcounsellingsummary`
--
ALTER TABLE `tblcounsellingsummary`
  MODIFY `council_summary_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbldepartmentheads`
--
ALTER TABLE `tbldepartmentheads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;
--
-- AUTO_INCREMENT for table `tblmessages`
--
ALTER TABLE `tblmessages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblprevileges`
--
ALTER TABLE `tblprevileges`
  MODIFY `tbl_previleges_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblprofessor`
--
ALTER TABLE `tblprofessor`
  MODIFY `tbl_prof_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblprofessorsubject`
--
ALTER TABLE `tblprofessorsubject`
  MODIFY `profsubject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblprofrating`
--
ALTER TABLE `tblprofrating`
  MODIFY `profrating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblsection`
--
ALTER TABLE `tblsection`
  MODIFY `tbl_section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tblstudentinfo`
--
ALTER TABLE `tblstudentinfo`
  MODIFY `tbl_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
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
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbltutor`
--
ALTER TABLE `tbltutor`
  MODIFY `tutor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbltutorials`
--
ALTER TABLE `tbltutorials`
  MODIFY `tutorial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
