-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2023 at 07:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zephyr`
--

-- --------------------------------------------------------

--
-- Table structure for table `cguest`
--

CREATE TABLE `cguest` (
  `c_id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `p_number` varchar(10) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cguest`
--

INSERT INTO `cguest` (`c_id`, `name`, `gender`, `p_number`, `mail`, `link`) VALUES
(1, 'Dr. Mohit Aggarwal', 'M', '9368900671', 'Mohitsir@gmail.com', 'https://www.linkedin.com/in/mohit-agarwal-90500b4/'),
(2, 'Shweta Dishwar', 'F', '9368900671', 'shweta@gmail.com', 'https://www.linkedin.com/in/shweta-dishwar-9b55891ab/');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(6) NOT NULL,
  `event_name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `category` varchar(30) NOT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL,
  `begin_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `first_prize` int(11) NOT NULL,
  `second_prize` int(11) NOT NULL,
  `third_prize` int(11) NOT NULL,
  `venue_id` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `type`, `category`, `begin_date`, `end_date`, `begin_time`, `end_time`, `first_prize`, `second_prize`, `third_prize`, `venue_id`) VALUES
(1, 'Dance', 'COMPETITION-SOLO', 'DANCE', '2023-05-10', '2023-05-25', '09:30', '10:30', 100, 50, 25, 12),
(2, 'Folk dance', 'COMPETITION-GROUP', 'DANCE', '2023-05-17', '2023-05-18', '10:30', '11:30', 100, 50, 25, 7),
(3, 'Singing', 'COMPETITION-SOLO', 'MUSIC', '2023-05-24', '2023-05-24', '11:30', '12:30', 100, 50, 25, 12),
(4, 'Solo Singing', 'COMPETITION-GROUP', 'MUSIC', '2023-05-30', '2023-05-31', '12:30', '13:30', 100, 50, 25, 7),
(5, 'Quiz', 'COMPETITION-SOLO', 'LITERARY', '2023-06-07', '2023-06-30', '13:30', '14:30', 100, 50, 25, 12),
(6, 'Vartalap (Debate)', 'COMPETITION-GROUP', 'LITERARY', '2023-05-31', '2023-05-31', '14:30', '15:30', 100, 50, 25, 7),
(8, 'Group Dance', 'COMPETITION-SOLO', 'DRAMA', '2023-05-24', '2023-05-31', '15:30', '16:30', 100, 50, 25, 12),
(9, 'Dramebazi', 'COMPETITION-GROUP', 'DRAMA', '2023-06-22', '2023-06-30', '16:30', '17:30', 100, 50, 25, 7),
(10, 'eventName', 'workshop', 'Dance', '2023-04-28', '2023-04-29', '10:15', '15:20', 100, 50, 20, 7);

-- --------------------------------------------------------

--
-- Table structure for table `guestedby`
--

CREATE TABLE `guestedby` (
  `event_id` int(6) NOT NULL,
  `c_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guestedby`
--

INSERT INTO `guestedby` (`event_id`, `c_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `m_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `e_id` int(3) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `year` int(1) NOT NULL,
  `p_number` varchar(12) NOT NULL,
  `email_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`m_id`, `name`, `gender`, `e_id`, `branch`, `year`, `p_number`, `email_id`) VALUES
(1, 'PRINCE SHARMA', 'M', 5, 'CSE', 2, '9368900671', 'prince@gmail.com'),
(2, 'Anuj Kumar Gupta', 'M', 2, 'CSE', 2, '9368900671', 'anuj@gmail.com'),
(3, 'GIRENDRA ', 'M', 8, 'CSE', 2, '9368900671', 'girendra@gmail.com'),
(4, 'KHUSHI SHARMA', 'F', 1, 'CSE', 2, '9368900671', 'Khushi@gmail.com'),
(10, 'PRINCE SHARMA', 'M', 5, 'CSE', 2, '9368900671', 'prince@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `p_id` int(6) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `ccity` varchar(255) NOT NULL,
  `cstate` varchar(255) NOT NULL,
  `course` varchar(50) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `pnumber` varchar(12) NOT NULL,
  `password` varchar(20) NOT NULL,
  `vkey` varchar(45) NOT NULL,
  `verified` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`p_id`, `fname`, `mname`, `lname`, `gender`, `cname`, `ccity`, `cstate`, `course`, `emailid`, `pnumber`, `password`, `vkey`, `verified`) VALUES
(47, 'Girendra', '', 'Sinsinwar', 'Male', 'Bennett University', 'Sadabad', 'Uttar Pradesh', 'B.Tech', 'ssssinsinwargirendra@gmail.com', '07017319719', '1', '', 0),
(49, 'Sahil', '', 'Jain', 'Male', 'Bennett University', 'Noida', 'Uttar Pradesh', 'B.Tech', 'sahil@gmail.com', '07017319719', '1', '', 0),
(50, 'Prince', 'Kumar', 'kalu', 'Male', 'Bennett University', 'KANPUR', 'Uttar Pradesh', 'B.Tech', 'p@gmail.com', '06389291188', '1', '', 0),
(51, 'Prince', 'ww', 'Sharma', 'Male', 'Bennett University', 'BULANDSHAHR', 'Uttar Pradesh', 'B.Tech', 'Admin@gmail.com', '09368900671', '#f^%GzDSWV*i15kP*Q', '', 0),
(52, 'Admin', '', 'Sharma', 'Male', 'Bennett University', 'BULANDSHAHR', 'Uttar Pradesh', 'B.Tech', 'Admin1@gmail.com', '09368900671', '#f^%GzDSWV*i15kP*Q', '', 0),
(53, 'g', 'g', 'g', 'Male', 'Bennett University', 'Greater Noida', 'Uttar Pradesh', 'B.Tech', 'g@gmail.com', '09258166456', 'g', '', 0),
(54, 'Yash', '', 'Sharma', 'Male', 'Bennett University', 'BULANDSHAHR', 'Uttar Pradesh', 'B.Tech', 'yash@gmail.com', '09368900671', 'yash', '', 0),
(55, 'khushi', '', 'sharma', 'Female', 'Bennett University', 'BULANDSHAHR', 'Uttar Pradesh', 'B.Tech', 'khushi@gmail.com', '09368900671', 'khus', '', 0),
(56, 'h', 'h', 'h', 'Male', 'Bennett', 'gn', 'Andhra Pradesh', 'B.Tech', 'h@gmail.com', '928228239393', 'h', '', 0),
(57, 'princ', 'k', 'k', 'Male', 'Bennett University', 'KANPUR', 'Uttar Pradesh', 'B.Tech', 'princ@gmail.com', '06389291188', 'princ', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `participation`
--

CREATE TABLE `participation` (
  `S.NO` int(11) NOT NULL,
  `p_id` int(20) NOT NULL,
  `event_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participation`
--

INSERT INTO `participation` (`S.NO`, `p_id`, `event_id`) VALUES
(21, 47, 8),
(22, 53, 1),
(23, 53, 5),
(24, 55, 1),
(25, 57, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sponseredby`
--

CREATE TABLE `sponseredby` (
  `event_id` int(6) NOT NULL,
  `s_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponseredby`
--

INSERT INTO `sponseredby` (`event_id`, `s_id`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `s_id` int(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `Amount` int(10) NOT NULL,
  `grade` varchar(1) NOT NULL,
  `mail` varchar(25) NOT NULL,
  `acc_n` varchar(20) NOT NULL,
  `r_name` varchar(20) NOT NULL,
  `p_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`s_id`, `name`, `Amount`, `grade`, `mail`, `acc_n`, `r_name`, `p_number`) VALUES
(3, 'google', 10000, 'D', 'google@gmail.com', 'R324234', 'Jhon', '1234567890'),
(4, 'facebook', 500, 'D', 'fb@gmail.com', 'SBI6550IJ', 'simon', '1234567890'),
(5, 'JIO', 10000, 'P', 'ambani@modi.com', '12345RG', 'Neeta Ambani ', '1234567841'),
(6, 'TATA', 4000, 'P', 'tata@gmail.com', '12we3456', 'ANITA', '1234567889');

-- --------------------------------------------------------

--
-- Table structure for table `t_participation`
--

CREATE TABLE `t_participation` (
  `id` int(6) NOT NULL,
  `p_id` int(6) NOT NULL,
  `t_id` varchar(20) NOT NULL,
  `e_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `v_id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `capacity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`v_id`, `name`, `capacity`) VALUES
(7, 'Bennett University', 300),
(12, 'Ground ,Bennett University', 600);

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `id` int(11) NOT NULL,
  `v` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`id`, `v`) VALUES
(1, 535);

-- --------------------------------------------------------

--
-- Table structure for table `volunteeredby`
--

CREATE TABLE `volunteeredby` (
  `event_id` int(6) NOT NULL,
  `v_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteeredby`
--

INSERT INTO `volunteeredby` (`event_id`, `v_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `v_id` int(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `branch` varchar(8) NOT NULL,
  `year` int(1) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone_no` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`v_id`, `name`, `branch`, `year`, `gender`, `email`, `phone_no`) VALUES
(1, 'PRINCE SHARMA', 'CSE', 2, 'M', 'prince@gmai.com', '9368900671'),
(2, 'ANUJ ', 'CSE', 2, 'M', 'prince@gmai.com', '9368900671'),
(3, 'Girendra', 'CSE', 2, 'M', 'prince@gmai.com', '9368900671'),
(4, 'Khushi ', 'CSE', 2, 'M', 'prince@gmai.com', '9368900671');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cguest`
--
ALTER TABLE `cguest`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `venueevent` (`venue_id`);

--
-- Indexes for table `guestedby`
--
ALTER TABLE `guestedby`
  ADD KEY `cevent` (`event_id`),
  ADD KEY `cguest` (`c_id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `mevent` (`e_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `participation`
--
ALTER TABLE `participation`
  ADD PRIMARY KEY (`S.NO`),
  ADD KEY `fk1_p_id` (`p_id`),
  ADD KEY `fk2_event_id` (`event_id`);

--
-- Indexes for table `sponseredby`
--
ALTER TABLE `sponseredby`
  ADD KEY `sponseredevent` (`event_id`),
  ADD KEY `sponseredby` (`s_id`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `t_participation`
--
ALTER TABLE `t_participation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_tp` (`p_id`),
  ADD KEY `fk2_tp` (`e_id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteeredby`
--
ALTER TABLE `volunteeredby`
  ADD KEY `volevent` (`event_id`),
  ADD KEY `volvol` (`v_id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cguest`
--
ALTER TABLE `cguest`
  MODIFY `c_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `p_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `participation`
--
ALTER TABLE `participation`
  MODIFY `S.NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `s_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_participation`
--
ALTER TABLE `t_participation`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `v_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `view`
--
ALTER TABLE `view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `v_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `venueevent` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`v_id`) ON DELETE SET NULL;

--
-- Constraints for table `guestedby`
--
ALTER TABLE `guestedby`
  ADD CONSTRAINT `cevent` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cguest` FOREIGN KEY (`c_id`) REFERENCES `cguest` (`c_id`) ON DELETE CASCADE;

--
-- Constraints for table `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `mevent` FOREIGN KEY (`e_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE;

--
-- Constraints for table `participation`
--
ALTER TABLE `participation`
  ADD CONSTRAINT `fk1_p_id` FOREIGN KEY (`p_id`) REFERENCES `participants` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2_event_id` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sponseredby`
--
ALTER TABLE `sponseredby`
  ADD CONSTRAINT `sponseredby` FOREIGN KEY (`s_id`) REFERENCES `sponsor` (`s_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sponseredevent` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE;

--
-- Constraints for table `t_participation`
--
ALTER TABLE `t_participation`
  ADD CONSTRAINT `fk1_tp` FOREIGN KEY (`p_id`) REFERENCES `participants` (`p_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk2_tp` FOREIGN KEY (`e_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `volunteeredby`
--
ALTER TABLE `volunteeredby`
  ADD CONSTRAINT `volevent` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `volvol` FOREIGN KEY (`v_id`) REFERENCES `volunteers` (`v_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
