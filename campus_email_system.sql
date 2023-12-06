-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2016 at 02:14 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `campus_email_system`
--
CREATE DATABASE IF NOT EXISTS `campus_email_system` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `campus_email_system`;

-- --------------------------------------------------------

--
-- Table structure for table `attachements_collection`
--

CREATE TABLE IF NOT EXISTS `attachements_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_unique_id` text NOT NULL,
  `attachement_title` text NOT NULL,
  `date` date NOT NULL,
  `deleted_sent_to` text NOT NULL,
  `deleted_sent_from` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `attachements_collection`
--

INSERT INTO `attachements_collection` (`id`, `email_unique_id`, `attachement_title`, `date`, `deleted_sent_to`, `deleted_sent_from`) VALUES
(1, '1', 'dproe2kkpcbf63vgckg63g0ft3owwvC.jpg', '2016-02-13', '', ''),
(2, '1', 'dproe2kkpcbf63vgckg63g0ft3Kpw2v.jpg', '2016-02-13', '', ''),
(3, '0', 'dproe2kkpcbf63vgckg63g0ft3xrFnv.png', '2016-02-13', '', ''),
(4, '0', 'dproe2kkpcbf63vgckg63g0ft3LGMnu.png', '2016-02-13', '', ''),
(5, '0', 'dproe2kkpcbf63vgckg63g0ft38K9EC.jpg', '2016-02-13', '', ''),
(6, '0', 'dproe2kkpcbf63vgckg63g0ft3InqKE.jpg', '2016-02-13', '', ''),
(7, '0', 'dproe2kkpcbf63vgckg63g0ft3FIzsE.jpg', '2016-02-13', '', ''),
(8, '0', 'dproe2kkpcbf63vgckg63g0ft3znwE9.jpg', '2016-02-13', '', ''),
(9, '0', 'dproe2kkpcbf63vgckg63g0ft3qGGDI.jpg', '2016-02-13', '', ''),
(10, '0', 'dproe2kkpcbf63vgckg63g0ft3suptn.jpg', '2016-02-13', '', ''),
(11, '0', 'dproe2kkpcbf63vgckg63g0ft3uJzH8.jpg', '2016-02-13', '', ''),
(12, '1', 'dproe2kkpcbf63vgckg63g0ft3vzwLK.jpg', '2016-02-13', '', ''),
(13, '1', 'dproe2kkpcbf63vgckg63g0ft3w6q7v.jpg', '2016-02-13', '', ''),
(14, '1', 'dproe2kkpcbf63vgckg63g0ft3JFnrJ.jpg', '2016-02-13', '', ''),
(15, '1', 'dproe2kkpcbf63vgckg63g0ft3MnotD.jpg', '2016-02-13', '', ''),
(17, '3', 'dproe2kkpcbf63vgckg63g0ft3MDuCF.jpg', '2016-02-13', '', ''),
(18, 'draft_1', 'dproe2kkpcbf63vgckg63g0ft3xFxKo.jpg', '2016-02-13', '', ''),
(20, 'draft_2', 'dproe2kkpcbf63vgckg63g0ft3H6JGs.jpg', '2016-02-13', '', ''),
(21, '7', 'dproe2kkpcbf63vgckg63g0ft3JFKMq.jpg', '2016-02-13', '', ''),
(22, '10', 'kloft2pnpmto0es2ehvkd17rc5ppErn.jpg', '2016-02-14', '', ''),
(24, 'draft_4', '5h3msjj2qd81e296142i5tckl3GHrGL.jpg', '2016-03-13', '', ''),
(25, '15', '5h3msjj2qd81e296142i5tckl3qMsDq.jpg', '2016-03-13', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE IF NOT EXISTS `drafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saved_by` text NOT NULL,
  `send_to` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `attachment_name` text NOT NULL,
  `date` text NOT NULL,
  `time` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `saved_by`, `send_to`, `subject`, `message`, `attachment_name`, `date`, `time`) VALUES
(1, 'admin@ces.com', 'admin@ces.com', 'paaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'vpaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', '2016-02-13', '16:48:10'),
(2, 'admin@ces.com', 'admin@ces.com', 'set_new_email_counterset_new_email_counter', 'paaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', '2016-02-13', '16:49:22'),
(3, 'admin@ces.com', 'admin@ces.com', 'sjhkshfkjsdhfkjsdhfkljsdfhlksdf', 'sjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdfsjhkshfkjsdhfkjsdhfkljsdfhlksdf', '', '2016-02-14', '16:40:34'),
(4, 'viraj@ces.com', 'dream@ces.com', 'aaaaaaaaaaaaaaaaaaaaaa', 'sssssssssssssssssssssssssssssssssssssssssssssssssssss', '', '2016-03-13', '18:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `email_counter`
--

CREATE TABLE IF NOT EXISTS `email_counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `email_counter`
--

INSERT INTO `email_counter` (`id`, `email_count`) VALUES
(1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `email_inbox`
--

CREATE TABLE IF NOT EXISTS `email_inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent_from` text NOT NULL,
  `sent_to` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `attachment_name` text NOT NULL,
  `status` text NOT NULL,
  `date` text NOT NULL,
  `time` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `email_inbox`
--

INSERT INTO `email_inbox` (`id`, `sent_from`, `sent_to`, `subject`, `message`, `attachment_name`, `status`, `date`, `time`) VALUES
(3, 'admin@ces.com', 'admin@ces.com', 'paaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'paaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', 'read', '2016-02-13', '16:47:21'),
(5, 'admin@ces.com', 'admin@ces.com', 'paaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'paaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', 'read', '2016-02-13', '16:48:55'),
(7, 'admin@ces.com', 'admin@ces.com', 'passwordpasswordpasswordpasswordpasswordpassword', 'passwordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpassword', '', 'read', '2016-02-13', '20:12:22'),
(8, 'admin@ces.com', 'admin@ces.com', 'shdshd', 'jhsflksdlkfjlsdjf', '', 'read', '2016-02-13', '21:25:06'),
(9, 'admin@ces.com', 'admin@ces.com', 'dlk;jdg', 'ldfkgl;df''g', '', 'read', '2016-02-14', '16:38:15'),
(10, 'admin@ces.com', 'admin@ces.com', 'sample email', 'sdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdf', '', 'read', '2016-02-14', '16:39:30'),
(12, 'viraj@ces.com', 'dream@ces.com', 'sample subject', 'something message', '', 'read', '2016-03-13', '18:35:24'),
(13, 'viraj@ces.com', 'admin@ces.com', 'text message', 'something message', '', 'unread', '2016-03-13', '18:36:11'),
(15, 'dream@ces.com', 'viraj@ces.com', 'messagemessagemessagemessagemessagemessagemessagemessage', 'messagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessage', '', 'read', '2016-03-13', '18:42:31'),
(16, 'admin@xy.com', 'admin@xy.com', 'this is sample message ', 'hello this is a sample email ', '', 'read', '2016-03-26', '06:21:20'),
(17, 'admin@xy.com', 'admin@xy.com', 'this is sample emails ', 'this is test email ', '', 'unread', '2016-03-27', '01:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `email_system_users`
--

CREATE TABLE IF NOT EXISTS `email_system_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` text NOT NULL,
  `email_id` text NOT NULL,
  `password` text NOT NULL,
  `dob` date NOT NULL,
  `gender` text NOT NULL,
  `country_code` text NOT NULL,
  `contact_no` text NOT NULL,
  `profile_image` text NOT NULL,
  `reg_date` date NOT NULL,
  `reg_time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `email_system_users`
--

INSERT INTO `email_system_users` (`id`, `full_name`, `email_id`, `password`, `dob`, `gender`, `country_code`, `contact_no`, `profile_image`, `reg_date`, `reg_time`) VALUES
(1, 'Shrikant Ashok Kadam', 'admin@xy.com', 'AFkkWEaJeYf/qnDGRkmN66meYvxlEvNNWq44cbOcqwU=', '1993-09-03', 'Male', '+91', '9595775120', '2016-02-099GwYpvXcwN.jpg', '2016-01-25', '16:58:26'),
(2, 'dream technology', 'dream@ces.com', 'AFkkWEaJeYf/qnDGRkmN66meYvxlEvNNWq44cbOcqwU=', '1988-01-01', 'Male', '+92', '4512457845', '2016-02-10WMqEUZlR5q.jpg', '2016-02-10', '08:00:21'),
(3, 'hfhdfjshdsadf', 'xyz@ces.com', 'AFkkWEaJeYf/qnDGRkmN66meYvxlEvNNWq44cbOcqwU=', '1988-01-01', 'Male', '+91', '4578451245', '2016-02-135OrP5fre5L.jpg', '2016-02-13', '19:38:21'),
(4, 'viraj patil', 'viraj@ces.com', 'XnCOFXzvzFGHXS/GZ5kVEZ9PAE2N+oCeqydK87yGuwo=', '2002-09-15', 'Male', '+91', '9595775120', '2016-03-13ILaPZHEIBS.jpg', '2016-03-13', '18:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `sent_emails`
--

CREATE TABLE IF NOT EXISTS `sent_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent_from` text NOT NULL,
  `sent_to` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `attachment_name` text NOT NULL,
  `date` text NOT NULL,
  `time` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `sent_emails`
--

INSERT INTO `sent_emails` (`id`, `sent_from`, `sent_to`, `subject`, `message`, `attachment_name`, `date`, `time`) VALUES
(1, 'admin@ces.com', 'admin@ces.com', 'update_new_email_idupdate_new_email_id', 'update_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_id', '', '2016-02-13', '16:46:08'),
(3, 'admin@ces.com', 'admin@ces.com', 'paaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'paaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', '2016-02-13', '16:47:21'),
(5, 'admin@ces.com', 'admin@ces.com', 'paaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'paaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaapaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', '2016-02-13', '16:48:55'),
(7, 'admin@ces.com', 'admin@ces.com', 'passwordpasswordpasswordpasswordpasswordpassword', 'passwordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpasswordpassword', '', '2016-02-13', '20:12:22'),
(8, 'admin@ces.com', 'admin@ces.com', 'shdshd', 'jhsflksdlkfjlsdjf', '', '2016-02-13', '21:25:06'),
(9, 'admin@ces.com', 'admin@ces.com', 'dlk;jdg', 'ldfkgl;df''g', '', '2016-02-14', '16:38:15'),
(10, 'admin@ces.com', 'admin@ces.com', 'sample email', 'sdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdfsdjfhsdfjlksdjflksdfsdfsdfsdfsdf', '', '2016-02-14', '16:39:30'),
(12, 'viraj@ces.com', 'dream@ces.com', 'sample subject', 'something message', '', '2016-03-13', '18:35:24'),
(15, 'dream@ces.com', 'viraj@ces.com', 'messagemessagemessagemessagemessagemessagemessagemessage', 'messagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessage', '', '2016-03-13', '18:42:31'),
(16, 'admin@xy.com', 'admin@xy.com', 'this is sample message ', 'hello this is a sample email ', '', '2016-03-26', '06:21:20'),
(17, 'admin@xy.com', 'admin@xy.com', 'this is sample emails ', 'this is test email ', '', '2016-03-27', '01:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `temporary_attachements`
--

CREATE TABLE IF NOT EXISTS `temporary_attachements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(70) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `category` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trash_box`
--

CREATE TABLE IF NOT EXISTS `trash_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deleted_from_section` text NOT NULL,
  `deleted_by_user` text NOT NULL,
  `deleted_email_unique_id` text NOT NULL,
  `sent_from` text NOT NULL,
  `sent_to` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `attachment_name` text NOT NULL,
  `date` date NOT NULL,
  `time` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `trash_box`
--

INSERT INTO `trash_box` (`id`, `deleted_from_section`, `deleted_by_user`, `deleted_email_unique_id`, `sent_from`, `sent_to`, `subject`, `message`, `attachment_name`, `date`, `time`) VALUES
(6, 'inbox', '1', '1', 'admin@ces.com', 'admin@ces.com', 'update_new_email_idupdate_new_email_id', 'update_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_idupdate_new_email_id', '', '2016-02-13', '16:46:08');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
