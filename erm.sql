-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 08:24 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erm`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account_name`) VALUES
(8001, 'Disney'),
(8002, 'Chubb'),
(8003, 'SID'),
(8004, 'Hallmark'),
(8005, 'Uber');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `reporting_manager` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `assignment_start_date` date NOT NULL,
  `assignment_end_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `emp_id`, `reporting_manager`, `team_id`, `assignment_start_date`, `assignment_end_Date`) VALUES
(1001, 400001236, 400001234, 102, '2021-03-03', '2022-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_personal_details`
--

CREATE TABLE `candidate_personal_details` (
  `can_id` int(11) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `contactNumber` bigint(20) DEFAULT NULL,
  `permenent_address` varchar(200) NOT NULL,
  `temp_address` varchar(200) DEFAULT NULL,
  `is_address_same` enum('Y','N') DEFAULT NULL,
  `experience` float DEFAULT NULL,
  `resume` varchar(2000) DEFAULT NULL,
  `internalStatus` int(11) NOT NULL DEFAULT 1,
  `highest_education` enum('Diploma','Bachelors','Masters') DEFAULT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `key_skills` varchar(100) DEFAULT NULL,
  `country` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate_personal_details`
--

INSERT INTO `candidate_personal_details` (`can_id`, `firstName`, `lastName`, `email`, `country_code`, `contactNumber`, `permenent_address`, `temp_address`, `is_address_same`, `experience`, `resume`, `internalStatus`, `highest_education`, `gender`, `last_updated_on`, `key_skills`, `country`) VALUES
(5001, 'Tejashree', 'K', 'tejashree.t@gmail.com', '+91', 9408652319, 'Sector36, Gurgaon', NULL, 'Y', 3.5, 'D:\\\\ERM\\\\Resume\\\\Tejashree.docx', 5, 'Diploma', 'Female', '2021-03-09 07:37:22', 'STLC,BDD,Agile', 'IN'),
(5002, 'Anand', 'Kumar', 'anand.kumar@gmail.com', '+91', 7608652319, 'Hinjewadi, Pune', NULL, 'Y', 4.1, 'D:\\\\ERM\\\\Resume\\\\Anand Kumar.docx', 4, 'Bachelors', 'Male', '2021-03-09 07:37:22', NULL, 'IN'),
(5003, 'Mark', 'Gorge', 'mark.g@yahoo.com', '+1', 6751123098, 'Montreal', NULL, 'Y', 2.5, 'D:\\\\ERM\\\\Resume\\\\Mark Gorge.docx', 6, 'Bachelors', 'Male', '2021-03-09 07:37:22', NULL, 'CA'),
(5005, 'Anagha', 'P', 'anagha.p@gmail.com', '+91', 7845321234, 'Hinjewadi Pune', NULL, 'Y', 6.4, 'D:\\ERM\\Resume\\Anagha P.docx', 6, 'Masters', 'Female', '2021-03-09 07:37:22', NULL, 'IN'),
(5006, 'Harry', 'C', 'harry.c@gmail.com', '+91', 9812985643, 'Sector 49,Gurugram', NULL, 'Y', 5, 'D:\\ERM\\Resume\\harry C.docx', 6, 'Bachelors', 'Female', '2021-03-09 07:37:22', NULL, 'IN'),
(5009, 'Taj', 'M', 'Taj@gmail.com', '+91', 8403344512, 'Wakad ,Pune', 'Vimar Nagar,Pune', 'N', 3.9, 'D:\\ERM\\Resume\\Taj.docx', 2, 'Masters', 'Male', '2021-03-09 07:37:22', NULL, 'IN'),
(5010, 'Amruta', 'K', 'Amruta.K@yahoo.com', '+1', 6754213498, 'Vasant Vihar,Delhi', 'Downtown,Montreal', 'N', 5.4, 'D:\\ERM\\Resume\\Amruta.docx', 2, 'Masters', 'Female', '2021-03-09 07:37:22', NULL, 'IN'),
(5011, 'Swati', 'Mehara', 'Swatimehara@yahoo.com', '+64', 6892176439, '101 Gibbs Lane,Brooklands', NULL, 'Y', 4.7, 'D:\\ERM\\Resume\\SwatiMehara.docx', 2, 'Masters', 'Female', '2021-03-09 07:37:22', NULL, 'NZ'),
(5012, 'Sonali', 'Patel', 'sonali.patel@gmail.com', '+1', 6992173216, '66 Grand Dr.\r\nAstoria, NY', '39 Hickory Drive Brooklyn, NY 11236', 'N', 3.7, 'D:\\ERM\\Resume\\SonaliPatel.docx', 2, 'Masters', 'Female', '2021-03-09 07:37:22', NULL, 'US'),
(5013, 'Satender', 'Singh', 'Satendersingh@yahoo.com', '+1', 6098213074, '500 Kingston Rd Toronto ON M4L 1V3,Toronto', NULL, 'Y', 4.9, 'D:\\ERM\\Resume\\Satender.docx', 6, 'Bachelors', 'Male', '2021-03-09 07:37:22', NULL, 'CA'),
(5016, 'Pritee', 'Gupta', 'Pritee.Gupta@yahoo.com', '+91', 8754902314, 'Viman Nagar,Pune', NULL, 'Y', 2.6, 'D:\\ERM\\Resume\\Pritee.docx', 6, 'Bachelors', 'Female', '2021-03-09 07:37:22', NULL, 'IN'),
(5017, 'Pooja', 'Patel', 'Pooja.Patel@yahoo.com', '+91', 9759902344, 'Viman Nagar,Pune', 'Koregaon Park,Pune', 'N', 5.9, 'D:\\ERM\\Resume\\Pooja.docx', 3, 'Masters', 'Female', '2021-03-09 07:37:22', NULL, 'IN'),
(5018, 'Vaishali', 'M', 'mvaishali@yahoo.com', '+1', 6783124598, '13th Ave SW,Seattle', 'D Geology For The 21st,Seattle', 'N', 4.1, 'D:\\ERM\\Resume\\Vaishali.docx', 6, 'Bachelors', 'Female', '2021-03-09 07:37:22', NULL, 'US'),
(5019, 'Gagan', 'S', 'gaganS@yahoo.com', '+91', 7831245998, '521 , Prasad Chambers, Girgaum,Mumbai', 'Aroli,Mumbai', 'N', 4.6, 'D:\\ERM\\Resume\\Gagan.docx', 5, 'Bachelors', 'Male', '2021-03-09 07:37:22', NULL, 'IN'),
(5020, 'Megha', 'Kumar', 'megha.kumar@gmail.com', '+64', 6723154633, '55  Wildish Street,Elgin', NULL, 'Y', 0, 'D:\\ERM\\Resume\\megha.docx', 1, 'Masters', 'Female', '2021-03-09 07:56:23', NULL, 'NZ'),
(5021, 'Harshit', 'Mittal', 'Harshit.mittal@gmail.com', '+91', 9834576321, 'Blueridge,Pune', NULL, 'Y', 1, 'D:\\ERM\\Resume\\harshit.docx', 2, 'Masters', 'Male', '2021-03-09 07:57:19', NULL, 'IN'),
(5026, 'Arpit', 'Chauhan', 'arpit.chauhan@gmail.com', '+91', 9888576321, 'Blueridge,Pune', NULL, 'Y', 0, 'D:\\ERM\\Resume\\arpit.docx', 2, 'Masters', 'Male', '2021-03-09 07:59:23', NULL, 'IN'),
(5027, 'Hazel', 'Fernandes', 'Hazel.ferenandes@fedility.com', '+1', 6723980443, 'Queen\'s street, toronto', NULL, 'Y', 4.7, 'D:\\ERM\\Resume\\Hazel.docx', 6, 'Bachelors', 'Female', '2021-03-09 10:40:36', NULL, 'CA'),
(5028, 'Mira', 'Rana', 'mira.rana@fedility.com', '+91', 8423985683, 'Aroli,Mumbai', NULL, 'Y', 4.2, 'D:\\ERM\\Resume\\Mira.docx', 6, 'Bachelors', 'Female', '2021-03-09 10:41:44', NULL, 'IN'),
(5030, 'Ankita', 'Singh', 'Ankita.singh@fedility.com', '+91', 8823995683, 'Hinjewadi,Pune', NULL, 'Y', 5.2, 'D:\\ERM\\Resume\\Ankita.docx', 6, 'Bachelors', 'Female', '2021-03-09 10:42:45', NULL, 'IN'),
(5031, 'Akshay', 'Shrivastva', 'Akshay.shrivastava@fedility.com', '+91', 8822995683, 'Hinjewadi,Pune', NULL, 'Y', 5.3, 'D:\\ERM\\Resume\\Akshay.docx', 1, 'Bachelors', 'Male', '2021-03-09 10:43:31', NULL, 'IN');

-- --------------------------------------------------------

--
-- Table structure for table `can_academic_details`
--

CREATE TABLE `can_academic_details` (
  `academic_record_id` int(11) NOT NULL,
  `can_id` int(11) NOT NULL,
  `academics` varchar(30) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `board_university` varchar(100) NOT NULL,
  `passing_year` int(11) DEFAULT NULL,
  `gap` enum('Y','N') NOT NULL,
  `gap_reason` varchar(2000) DEFAULT NULL,
  `grades` varchar(50) DEFAULT NULL,
  `academic_doc_name` varchar(100) DEFAULT NULL,
  `academic_doc_path` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `can_academic_details`
--

INSERT INTO `can_academic_details` (`academic_record_id`, `can_id`, `academics`, `specification`, `board_university`, `passing_year`, `gap`, `gap_reason`, `grades`, `academic_doc_name`, `academic_doc_path`) VALUES
(11, 5001, 'B.Tech', 'Compoter Science And Techonolo', 'Shivaji University', 2015, 'N', NULL, '7.2 GPA', 'Degree', 'D:\\ERM\\Acadamic Document\\Tejashree.docx'),
(12, 5003, 'M.Tech', 'Computer Science And Techonolo', 'Canada College', 2016, 'N', NULL, '8.5 GPA', 'Degree', 'D:\\ERM\\Acadamic Document\\Mark.docx'),
(13, 5006, 'M.Tech', 'Information Techonology', 'Symboisis College Pune', 2013, 'N', NULL, '72.34 % GPA', 'Degree', 'D:\\ERM\\Acadamic Document\\Harry.docx'),
(14, 5005, 'B.Tech', 'Information Techonology', 'Pune University Pune', 2014, 'N', NULL, '72.64 % GPA', 'Degree', 'D:\\ERM\\Acadamic Document\\Anagha.docx'),
(15, 5002, 'BSC', 'Computer Science', 'Pune University', 2015, 'Y', 'Medical Condition', '62%', 'Degree', 'D:\\ERM\\Acadamic Document\\Anand.docx'),
(16, 5009, 'BE', 'Information Techonology', 'Pune University', 2016, 'N', NULL, '65.3%', 'Degree', 'D:\\ERM\\Acadamic Document\\Taj.docx'),
(17, 5010, 'ME', 'Information Techonology', 'Pune University', 2015, 'N', NULL, '75.2%%', 'Degree', 'D:\\ERM\\Acadamic Document\\Amruta.docx'),
(18, 5011, 'MSC', 'Compute Science', 'Brooklands College', 2015, 'N', NULL, 'A', 'Degree', 'D:\\ERM\\Acadamic Document\\Swati.docx'),
(19, 5012, 'MSC', 'Compute Science', 'NYC College', 2016, 'N', NULL, 'A', 'Degree', 'D:\\ERM\\Acadamic Document\\Sonali.docx'),
(20, 5013, 'BE', 'Computer Science', 'University of canada', 2015, 'N', NULL, 'A', 'Degree', 'D:\\ERM\\Acadamic Document\\Satender.docx'),
(21, 5016, 'BE', 'Computer Science', 'Pune University', 2016, 'Y', 'Medical Reason', '6.7 GPA', 'Degree', 'D:\\ERM\\Acadamic Document\\Pritee.docx'),
(22, 5017, 'ME', 'Computer Science', 'Pune University', 2014, 'N', NULL, '6.2 GPA', 'Degree', 'D:\\ERM\\Acadamic Document\\Pooja.docx'),
(23, 5018, 'ME', 'Computer Science', 'Seattle University', 2016, 'N', NULL, 'A-', 'Degree', 'D:\\ERM\\Acadamic Document\\Vaishali.docx'),
(24, 5019, 'BE', 'Computer Science', 'Mumbai University', 2015, 'N', NULL, '76%', 'Degree', 'D:\\ERM\\Acadamic Document\\Gagan.docx'),
(25, 5020, 'ME', 'Computer Science', 'Elgin Community College', 2020, 'N', NULL, 'B', 'Degree', 'D:\\ERM\\Acadamic Document\\Megha.docx'),
(26, 5021, 'ME', 'Computer Science', 'Fergusson College,Pune', 2019, 'N', NULL, 'Provisional Degree', 'Degree', 'D:\\ERM\\Acadamic Document\\Harshit.docx'),
(27, 5026, 'ME', 'Computer Science', 'Fergusson College,Pune', 2019, 'N', NULL, 'Provisional Degree', 'Degree', 'D:\\ERM\\Acadamic Document\\Arpit.docx'),
(28, 5027, 'B.Tech', 'Computer Science', 'University of toronto', 2015, 'N', NULL, 'B', 'Degree', 'D:\\ERM\\Acadamic Document\\Hazel.docx'),
(29, 5028, 'BSC', 'Computer Science', 'Birla College,Mumbai', 2015, 'N', NULL, '67.4%', 'Degree', 'D:\\ERM\\Acadamic Document\\Mira.docx'),
(30, 5030, 'BSC', 'Computer Science', 'Pune University', 2013, 'N', NULL, '67.32%', 'Degree', 'D:\\ERM\\Acadamic Document\\Ankita.docx'),
(31, 5031, 'B.Tech', 'Information Tech', 'Pune University', 2013, 'N', NULL, '77.32%', 'Degree', 'D:\\ERM\\Acadamic Document\\Akshay.docx');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(20) DEFAULT NULL,
  `country_abbrivation` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_name`, `country_abbrivation`) VALUES
(1, 'Pune', 'IN'),
(2, 'Mumbai', 'IN'),
(3, 'Delhi', 'IN'),
(4, 'Toronto', 'CA'),
(5, 'Montreal', 'CA'),
(6, 'Calgary', 'CA'),
(7, 'New York', 'US'),
(8, 'Chicago', 'US'),
(9, 'Seattle', 'US'),
(10, 'Paris', 'FR'),
(11, 'Brooklands', 'NZ');

-- --------------------------------------------------------

--
-- Table structure for table `company_references`
--

CREATE TABLE `company_references` (
  `reference_id` int(11) NOT NULL,
  `exp_id` int(11) NOT NULL,
  `referenceOne_Fname` varchar(50) NOT NULL,
  `referenceOne_Lname` varchar(50) NOT NULL,
  `referenceOne_email` varchar(100) NOT NULL,
  `referenceOne_contact` bigint(20) DEFAULT NULL,
  `referenceOne_relation` varchar(50) NOT NULL,
  `referenceTwo_Fname` varchar(50) NOT NULL,
  `referenceTwo_Lname` varchar(50) NOT NULL,
  `referenceTwo_email` varchar(100) NOT NULL,
  `referenceTwo_contact` bigint(20) DEFAULT NULL,
  `referenceTwo_relation` varchar(50) DEFAULT NULL,
  `referenceOne_countryCode` varchar(5) DEFAULT NULL,
  `referenceTwo_countryCode` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_references`
--

INSERT INTO `company_references` (`reference_id`, `exp_id`, `referenceOne_Fname`, `referenceOne_Lname`, `referenceOne_email`, `referenceOne_contact`, `referenceOne_relation`, `referenceTwo_Fname`, `referenceTwo_Lname`, `referenceTwo_email`, `referenceTwo_contact`, `referenceTwo_relation`, `referenceOne_countryCode`, `referenceTwo_countryCode`) VALUES
(1, 2, 'Mukesh', 'Agrawal', 'mukesh.agrawal@infosys.com', 9834762378, 'Project_Manager', 'Atul', 'Rane', 'atul.rane@infosys.com', 7834567294, 'Team Lead', '+91', '+91'),
(2, 1, 'Rajesh', 'P', 'rajesh.p@cognizant.com', 7834567121, 'Team Mate', 'Ayan', 'Malik', 'ayan.malik@conginzant.com', 8234567132, 'Team Lead', '+91', '+91'),
(3, 3, 'Vipin', 'Sharma', 'vipin.sharma@globant.com', 9832128754, 'Project Manager', 'Vinod', 'Singh', 'Vinod.singh@globant.com', 8943128567, 'Team Lead', '+91', '+91'),
(4, 4, 'Richard', 'Gordon', 'Richard.gordon@nsk.com', 6834220955, 'Project Manager', 'Sam', 'Grundy', 'Grundy@nsk.com', 6510923847, 'Team Lead', '+1', '+1'),
(5, 5, 'Shardul', 'rana', 'shardul.rana@interstellar.in', 9823094532, 'Tech Manager', 'Monika', 'Bhatt', 'monika.bhatt@interstellar.in', 7834095643, 'Team Mate', '+91', '+91'),
(6, 6, 'Pritee', 'rana', 'pritee.rana@mot.in', 9823904532, 'Tech Manager', 'Tripti', 'Sharma', 'tripti.sharma@mot.in', 8834995643, 'Montor', '+91', '+91'),
(7, 7, 'Kavin', 'Pollard', 'kavin.pollard@Encoders.in', 9823904512, 'Scrum Master', 'Mahendra', 'Kumar', 'mahendra.kumar@Encoders.in', 8834909643, 'Montor', '+91', '+91'),
(8, 8, 'Kavin', 'Pollard', 'kavin.pollard@Encoders.in', 9823904512, 'Project Manager', 'Mukesh', 'Kumar', 'Mukesh.kumar@Encoders.in', 8834909643, 'Team mate', '+91', '+91'),
(9, 9, 'Kavin', 'Johnson', 'kavin.johnson@highvolttech.com', 6723986298, 'deam Leab', 'Hrper', 'james', 'harper.james@highvolttech.com', 6298347855, 'Team mate', '+1', '+1'),
(10, 10, 'Jackson', 'William', 'jackson.william@cognizant.com', 6733986298, 'Team Lead', 'Ella', 'William', 'ella.william@cognizant.com', 6298348855, 'Project Manager', '+1', '+1'),
(11, 11, 'David', 'Smith', 'david.smith@expressway.com', 6730286298, 'Team Mate', 'Mary', 'William', 'mary.william@expressway.com', 6292948855, 'Project Manager', '+64', '+64'),
(12, 12, 'Robert', 'Smith', 'robert.smith@expressway.com', 6730286288, 'Team Mate', 'Maria', 'Martina', 'maria.martina@expressway.com', 6292948851, 'Project Manager', '+64', '+64'),
(13, 13, 'Robert', 'John', 'robert.john@globant.com', 670, 'Team Mate', 'Tom', 'Martina', 'tom.martina@globant.com', 6292948800, 'Project Manager', '+1', '+1'),
(14, 14, 'Ritesh', 'Jha', 'ritesh.jha@macro.com', 9700286288, 'Team Mate', 'Sanket', 'Patel', 'Sanket.patel@macro.com', 8292948800, 'Project Manager', '+91', '+91'),
(15, 15, 'Rajesh', 'Jha', 'Rajesh.jha@corecut.com', 9700286288, 'Scrum Master Mate', 'Bhakti', 'Patel', 'bhakti.patel@corecut.com', 8292948800, 'Tech Manager', '+91', '+91'),
(16, 16, 'Allen', 'Adams', 'Allen.adams@speedlightsol.com', 6500286288, 'Scrum Master Mate', 'Vishala', 'Patel', 'Vishala.patel@speedlightsol.com', 6192948800, 'Tech Manager', '+1', '+1'),
(17, 17, 'Allen', 'brown', 'Allen.brown@mindtreesol.com', 6500282288, 'Scrum Master Mate', 'Clair', 'Davidson', 'Clair.davidson@mindtreesol.com', 6192148800, 'Tech Manager', '+1', '+1'),
(18, 18, 'Umesh', 'Shah', 'Umesh.shah@brilasoft.com', 9500282288, 'Scrum Master Mate', 'Akash', 'Purohit', 'Akash.purohit@brilasoft.com', 8192148800, 'Tech Manager', '+91', '+91');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_name` varchar(20) DEFAULT NULL,
  `country_abbrivation` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_name`, `country_abbrivation`) VALUES
('Argentina', 'AR'),
('Australia', 'AU'),
('Belgium', 'BE'),
('Canada', 'CA'),
('Switzerland', 'CH'),
('France', 'FR'),
('United Kingdom', 'GB'),
('India', 'IN'),
('Mexico', 'MX'),
('New Zealand', 'NZ'),
('United States', 'US');

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `work_email` varchar(50) NOT NULL,
  `can_id` int(11) NOT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `salary PA` varchar(30) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`work_email`, `can_id`, `designation`, `salary PA`, `department`, `emp_id`) VALUES
('anagha.p@fedility.com', 5005, 'Techinical Manager', '10 LPA', 'Quality Assurance', 400001234),
('Harry.c@fedility.com', 5006, 'Devops Engineer', '8 LPA', 'Devops', 400001235),
('mark.gorge@fedility.com', 5003, 'Quality Analyst', '8.5 LPA', 'Quality Assurance', 400001236),
('Satender.singh@fedility.com', 5013, 'Project Manager', '10 LPA', 'Development', 400001237),
('Pritee.Gupta@fedility.com', 5016, 'Junior Engineer', '5.3 LPA', 'Development', 400001238),
('vaishali.m@fedility.com', 5018, 'Senior Engineer', '6.25 LPA', 'Quality Assurance', 400001241),
('Hazel.ferenandes@gmail.com', 5027, 'Recruiter', '6.7 LPA', 'HR Department', 400001242),
('mira.rana@gmail.com', 5028, 'Recruiter', '5.7 LPA', 'HR Department', 400001243),
('Ankita.singh@fedility.com', 5030, 'Recruiter', '5.3 LPA', 'HR Department', 400001244),
('Ankita.singh@gmail.com', 5031, 'Recruiter', '6.3 LPA', 'HR Department', 400001245);

-- --------------------------------------------------------

--
-- Table structure for table `experience_details`
--

CREATE TABLE `experience_details` (
  `exp_id` int(11) NOT NULL,
  `can_id` int(11) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ;

--
-- Dumping data for table `experience_details`
--

INSERT INTO `experience_details` (`exp_id`, `can_id`, `company_name`, `start_date`, `end_date`) VALUES
(1, 5001, 'Cognizant India', '2019-05-03', '2021-02-28'),
(2, 5003, 'Infosys Ltd', '2018-02-07', '2021-03-02'),
(3, 5002, 'Globant India', '2018-11-20', NULL),
(4, 5001, 'NSK Tech', '2016-02-13', NULL),
(5, 5005, 'Interstellar Software, Mumbai', '2014-03-24', '2016-09-25'),
(6, 5005, 'Maxed Out Tech., Mumbai', '2016-10-02', NULL),
(7, 5006, 'Encoders & Apps.', '2015-04-02', NULL),
(8, 5009, 'Encoders & Apps.', '2017-08-09', NULL),
(9, 5010, 'High Voltage Technology', '2015-05-01', '2018-04-24'),
(10, 5010, 'Cognizant Technology', '2018-04-30', NULL),
(11, 5011, 'Expressway Ecommerce Ltd.', '2015-09-08', NULL),
(12, 5012, 'Expressway Ecommerce Ltd.', '2016-10-08', NULL),
(13, 5013, 'Globant India', '2015-06-19', NULL),
(14, 5016, 'Macro IT Solutions.', '2018-11-02', NULL),
(15, 5017, 'Core Cut', '2014-05-19', NULL),
(16, 5018, 'Speedlight Solutions', '2016-07-02', '2019-11-27'),
(17, 5018, 'Mind Tree Solutions', '2019-12-01', NULL),
(18, 5021, 'Birla Soft', '2019-06-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `internal_status`
--

CREATE TABLE `internal_status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `internal_status`
--

INSERT INTO `internal_status` (`status_id`, `status`, `description`) VALUES
(1, 'Fresh Candidate', 'Recently registered or the candidate who has never been interviewed will be given the status of Fresh Candidate'),
(2, 'In-Pipe', 'This status indicates that the interview has been scheduled with the candidate'),
(3, 'Selected', 'This status indicates that the candidate has passed all the interview rounds and has been seleted'),
(4, 'Rejected', 'This status indicates that the candidate has been rejected in one of the interview rounds'),
(5, 'Soon to be employee', 'This status indicates that the on boarding process of the candidate has been started'),
(6, 'Employee', 'This status indicates that the the candidate isn now the employee of the organisation');

-- --------------------------------------------------------

--
-- Table structure for table `interview_journey`
--

CREATE TABLE `interview_journey` (
  `journey_id` int(11) NOT NULL,
  `interview_id` int(11) NOT NULL,
  `round_id` int(11) NOT NULL,
  `interview_status` enum('Selected','Rejected','Scheduled','Awaiting') NOT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  `result_date` date DEFAULT curdate(),
  `is_valid` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interview_journey`
--

INSERT INTO `interview_journey` (`journey_id`, `interview_id`, `round_id`, `interview_status`, `feedback`, `result_date`, `is_valid`) VALUES
(1, 11, 2, 'Selected', 'Good problem solving skills', '2021-03-07', 0),
(2, 12, 1, 'Rejected', 'Basic concepts not clear', '2021-03-07', 1),
(3, 13, 4, 'Selected', 'Good logical knowladge and time management', '2021-02-24', 1),
(4, 14, 2, 'Awaiting', NULL, '2021-03-09', 1),
(5, 15, 4, 'Selected', NULL, '2021-02-25', 0),
(6, 16, 1, 'Selected', 'Good Communcation and hands on techonology experience', '2021-03-09', 1),
(7, 17, 4, 'Selected', 'excellent hands on techonology experience', '2021-03-09', 1),
(8, 18, 3, 'Awaiting', NULL, '2021-03-09', 1),
(9, 19, 1, 'Awaiting', NULL, '2021-03-09', 1),
(10, 20, 1, 'Awaiting', NULL, '2021-03-09', 1),
(11, 16, 2, 'Scheduled', NULL, '2021-03-09', 1),
(12, 18, 1, 'Selected', 'Good Conceptual Knowladge', '2021-03-09', 1),
(13, 18, 2, 'Selected', 'Hands on experience on latest techonology', '2021-03-09', 1),
(14, 14, 1, 'Selected', 'Good Conceptual Knowladge', '2021-03-09', 1),
(15, 11, 1, 'Selected', 'Excellent problem solving skill', '2021-03-07', 0),
(16, 13, 1, 'Selected', 'Good LOgic building skill', '2021-02-24', 1),
(17, 13, 2, 'Selected', 'Good basic and advance tachonology knowladge', '2021-02-24', 1),
(18, 13, 3, 'Selected', 'Hands on techinical skills , excellent problem solving skill', '2021-02-24', 1),
(19, 15, 1, 'Selected', 'Clear basic concepts', '2021-02-25', 0),
(20, 15, 2, 'Selected', 'Excellent SDLC,STLC and agile knowladge', '2021-02-25', 0),
(21, 15, 3, 'Selected', 'Excellent management skill, can work under pressure', '2021-02-25', 0),
(22, 17, 1, 'Selected', 'Excellent time management', '2021-03-09', 1),
(23, 17, 2, 'Selected', 'Well experience in agile methodology', '2021-03-09', 1),
(24, 17, 3, 'Selected', 'Clear with logic building , good time management', '2021-03-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `interview_panel_details`
--

CREATE TABLE `interview_panel_details` (
  `interviewer_id` int(11) NOT NULL,
  `expertise` varchar(100) DEFAULT NULL,
  `level` enum('L1','L2','L3','L4') DEFAULT NULL,
  `emp_id` int(11) NOT NULL,
  `journey_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interview_panel_details`
--

INSERT INTO `interview_panel_details` (`interviewer_id`, `expertise`, `level`, `emp_id`, `journey_id`) VALUES
(11, 'Testing, SDLC,Agile,Regression Testing,UI Testing', 'L1', 400001234, 1),
(12, 'Testing, SDLC,Agile,Regression Testing,UI Testing, Automation Testing', 'L2', 400001235, 2),
(13, 'STLC,Agile,Automation Testing,Manual Testing', 'L2', 400001236, 2),
(14, 'Java,Logical Approach', 'L1', 400001238, 9),
(15, 'Java,Logical Approach', 'L1', 400001238, 10),
(16, 'Human Resourcing', 'L4', 400001245, 3),
(19, 'SDLC,STLC,Automation, manual Testing', 'L4', 400001234, 4),
(20, 'SDLC,Agile', 'L4', 400001237, 4),
(21, 'SDLC,STLC,Automation, manual Testing', 'L4', 400001234, 5),
(22, 'SDLC,Agile', 'L4', 400001237, 5),
(23, 'Java,Team management,Agile', 'L1', 400001238, 6),
(24, 'talent acquisition', 'L4', 400001242, 7),
(25, 'Java Team Management', 'L1', 400001238, 8);

-- --------------------------------------------------------

--
-- Table structure for table `interview_round_details`
--

CREATE TABLE `interview_round_details` (
  `round_id` int(11) NOT NULL,
  `round_name` varchar(30) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `priority` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interview_round_details`
--

INSERT INTO `interview_round_details` (`round_id`, `round_name`, `description`, `priority`) VALUES
(1, 'Written Test', 'Round includes a written test with logical questions', 'Round 1'),
(2, 'Techinical Round 1', 'Round includes in person interview with the techinical panel', 'Round 2'),
(3, 'Techinical Round 2', 'Round includes in person interview with the techinical panel', 'Round 3'),
(4, 'HR Round ', 'Round includes a final descission with HR team', 'Round 4');

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedule`
--

CREATE TABLE `interview_schedule` (
  `interview_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `interview_date` date NOT NULL,
  `time_slot` varchar(30) DEFAULT NULL,
  `time_zone` varchar(20) DEFAULT NULL,
  `poc_id` int(11) NOT NULL,
  `interview_type` enum('Online_Test','Test_Project','In Person Interview','video conferencing') NOT NULL,
  `interview_link` varchar(1000) DEFAULT NULL,
  `curr_date` date DEFAULT curdate(),
  `last_updated_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_valid` tinyint(1) DEFAULT 1,
  `invalid_schedule_reason` varchar(300) DEFAULT NULL,
  `schedule_status` enum('confirmed','Rescheduled','Cancelled') DEFAULT 'confirmed',
  `reason` varchar(500) DEFAULT NULL
) ;

--
-- Dumping data for table `interview_schedule`
--

INSERT INTO `interview_schedule` (`interview_id`, `application_id`, `interview_date`, `time_slot`, `time_zone`, `poc_id`, `interview_type`, `interview_link`, `curr_date`, `last_updated_on`, `is_valid`, `invalid_schedule_reason`, `schedule_status`, `reason`) VALUES
(11, 101, '2021-03-07', '10.00 AM - 3.00 PM', 'IST', 400001235, 'In Person Interview', NULL, '2021-03-06', '2021-03-09 12:11:03', 0, 'Selected for another job', 'confirmed', NULL),
(12, 102, '2021-03-16', '10.00 AM- 3.00 PM', 'IST', 400001235, 'Online_Test', 'https://www.fedility.com/onlineTest', '2021-03-07', '2021-03-09 12:11:03', 1, NULL, 'Rescheduled', 'Internet issue'),
(13, 103, '2021-02-24', '10.00 AM - 3.00 PM', 'IST', 400001235, 'Test_Project', 'https://www.fedility.com/onlineProject', '2021-02-19', '2021-03-09 12:11:03', 1, NULL, 'confirmed', NULL),
(14, 104, '2021-03-09', '10.00 AM - 3.00 PM', 'IST', 400001244, 'In Person Interview', NULL, '2021-03-08', '2021-03-09 12:11:03', 1, NULL, 'confirmed', NULL),
(15, 109, '2021-02-24', '10.00 AM - 3.00 PM', 'IST', 400001244, 'In Person Interview', NULL, '2021-02-19', '2021-03-09 12:11:03', 0, 'Selected for another job', 'confirmed', NULL),
(16, 105, '2021-03-11', '12.00 AM - 5.00 PM', 'IST', 400001244, 'video conferencing', 'www.skype.com34561234', '2021-03-09', '2021-03-09 12:11:03', 1, NULL, 'confirmed', NULL),
(17, 110, '2021-03-11', '12.00 AM - 5.00 PM', 'IST', 400001244, 'video conferencing', 'www.skype.com34561235', '2021-03-09', '2021-03-09 12:11:03', 1, NULL, 'confirmed', NULL),
(18, 106, '2021-03-11', '12.00 AM - 5.00 PM', 'IST', 400001244, 'In Person Interview', NULL, '2021-03-09', '2021-03-09 12:11:03', 1, NULL, 'confirmed', NULL),
(19, 111, '2021-03-11', '12.00 AM - 5.00 PM', 'IST', 400001244, 'Online_Test', 'www.googledriver.comonlienTest', '2021-03-09', '2021-03-09 12:11:03', 1, NULL, 'confirmed', NULL),
(20, 112, '2021-03-11', '12.00 AM - 5.00 PM', 'IST', 400001244, 'Online_Test', 'www.googledriver.comonlienTest', '2021-03-09', '2021-03-09 12:11:03', 1, NULL, 'Cancelled', 'Document not accessible');

-- --------------------------------------------------------

--
-- Table structure for table `job_application`
--

CREATE TABLE `job_application` (
  `application_id` int(11) NOT NULL,
  `can_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT 1,
  `last_updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_application`
--

INSERT INTO `job_application` (`application_id`, `can_id`, `job_id`, `is_valid`, `last_updated_on`) VALUES
(101, 5001, 1001, 0, '2021-03-09 12:02:41'),
(102, 5002, 1000, 1, '2021-03-09 12:02:41'),
(103, 5003, 1002, 1, '2021-03-09 12:02:41'),
(104, 5016, 1007, 1, '2021-03-09 12:02:41'),
(105, 5016, 1008, 1, '2021-03-09 12:02:41'),
(106, 5012, 1006, 1, '2021-03-09 12:02:41'),
(109, 5001, 1007, 0, '2021-03-09 12:02:41'),
(110, 5001, 1008, 1, '2021-03-09 12:02:41'),
(111, 5021, 1002, 1, '2021-03-09 12:02:41'),
(112, 5026, 1002, 1, '2021-03-09 12:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `job_openings`
--

CREATE TABLE `job_openings` (
  `job_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `skills` varchar(100) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `openings` int(11) DEFAULT NULL,
  `rounds` int(11) DEFAULT NULL,
  `requiredExperience` varchar(5) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `inactive_reason` varchar(400) DEFAULT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_openings`
--

INSERT INTO `job_openings` (`job_id`, `title`, `description`, `skills`, `location`, `openings`, `rounds`, `requiredExperience`, `is_active`, `inactive_reason`, `last_updated_on`) VALUES
(1000, 'Test Automation Engineer', 'Test Automation engineer with manual testing experience is required', 'STLC, Agile,Java, SQL,API,Maven,BDD', 1, 3, 3, '5+', 1, 'The position is closed by the client', '2021-03-09 07:36:29'),
(1001, 'Backend Developer', 'Software engineer with hands on experience with Java application and microservices is eligible', 'Agile,Java 8 ,microservices,API,Maven', 4, 1, 4, '3+', 1, 'The position is closed by the client', '2021-03-09 07:36:29'),
(1002, 'Traniee Engineer', 'Candidate with bacholor in the relevent specification is important', 'OOPs concepts, Java', 2, 5, 3, '0-1', 1, 'The position is closed by the client', '2021-03-09 07:36:29'),
(1004, 'Quality Analyst', 'Manual Quality analyst with regression,adhoc, UI testing experience', 'SDLC,STLC,Regressing Testing,UI Testing,Agile', 5, 2, 4, '3+', 1, 'The position is closed by the client', '2021-03-09 08:09:36'),
(1005, 'Project Manager', 'Must have client facing experience', 'SDLC,Scrum,Agile', 6, 1, 4, '8+', 1, 'The position is closed by the client', '2021-03-09 08:11:01'),
(1006, 'Team Mentor', 'Team management with great java framework experience', 'SDLC,Agile,Java, Microservices, APIs', 6, 1, 4, '3+', 1, 'The position is closed by the client', '2021-03-09 08:12:16'),
(1007, 'Senior Qualyst Analyst', 'Extensive UI testing experience', 'STLC,Regression Testing, UI Testing,Agile', 3, 1, 3, '3+', 1, 'The position is closed by the client', '2021-03-09 10:56:17'),
(1008, 'Qualyst Analyst', 'Extensive UI testing experience', 'STLC,Regression Testing, UI Testing,Agile', 3, 1, 3, '2+', 1, 'The position is closed by the client', '2021-03-09 10:56:27'),
(1010, 'System Engineer', 'Knowladge with different OS, infrastrcuture, networking', 'Networking, security', 2, 1, 4, '2+', 0, 'The position is closed by the client', '2021-03-09 23:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `address`, `zip_code`, `city_id`) VALUES
(1, 'Phase 1 ,Hinjewadi', '411057', 1),
(2, 'Sector 4, Delhi', '122022', 3),
(3, 'Aroli,Mumbai', '400708', 2),
(4, 'Saint-Catherine Street, Montreal', 'J5C', 5),
(5, '146 Fifeshire Crescent,Brooklands', '7010', 11),
(6, '1860  Hoffman Avenue, NY city', '10016', 7),
(7, '42 Balsam Ave Toronto ON M4E ', '3B4', 4);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(100) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `userType` enum('Candidate','Employee') DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `last_updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `userType`, `is_active`, `last_updated_on`) VALUES
('Akshay.shrivastava@fedility.com', 'akshay@123', 'Employee', 1, '2021-03-09 10:34:56'),
('Akshay.shrivastava@gmail.com', 'Akshay@123', 'Candidate', 0, '2021-03-09 10:27:19'),
('Amruta.K@yahoo.com', 'amruta.K@2', 'Candidate', 1, '2021-03-09 07:36:52'),
('anagha.p@fedility.com', 'anagha@p', 'Employee', 1, '2021-03-09 07:36:52'),
('anagha.p@gmail.com', 'anagha.p', 'Candidate', 0, '2021-03-09 07:36:52'),
('anand.kumar@gmail.com', 'java@123', 'Candidate', 1, '2021-03-09 07:36:52'),
('Ankita.singh@fedility.com', 'ankitasing', 'Employee', 1, '2021-03-09 10:34:33'),
('Ankita.singh@gmail.com', 'AniktaSing', 'Candidate', 0, '2021-03-09 10:25:55'),
('arpit.chauhan@gmail.com', 'arpitchauh', 'Candidate', 1, '2021-03-09 07:51:08'),
('gaganS@yahoo.com', 'OnlineTest', 'Candidate', 1, '2021-03-09 07:36:52'),
('harry.c@fedility.com', 'harryc@123', 'Employee', 1, '2021-03-09 07:36:52'),
('harry.c@gmail.com', 'harry.c@', 'Candidate', 0, '2021-03-09 07:36:52'),
('harshit.mittal@gmail.com', 'MittalJii', 'Candidate', 1, '2021-03-09 07:50:26'),
('Hazel.ferenandes@fedility.com', 'Hazel@1234', 'Employee', 1, '2021-03-09 10:36:15'),
('Hazel.ferenandes@gmail.com', 'Hazel@1234', 'Candidate', 0, '2021-03-09 10:27:41'),
('mark.g@yahoo.com', 'markgorge', 'Candidate', 0, '2021-03-09 07:36:52'),
('mark.gorge@fedility.com', 'markgorge', 'Employee', 1, '2021-03-09 07:36:52'),
('megha.kumar@gmail.com', 'meghakumar', 'Candidate', 1, '2021-03-09 07:50:43'),
('mira.rana@fedility.com', 'mira@1234', 'Employee', 1, '2021-03-09 10:35:58'),
('mira.rana@gmail.com', 'rana@mira', 'Candidate', 0, '2021-03-09 10:26:32'),
('mvaishali@yahoo.com', 'vaishalim@', 'Candidate', 0, '2021-03-09 07:36:52'),
('Pooja.Patel@yahoo.com', 'Pooja.Pate', 'Candidate', 1, '2021-03-09 07:36:52'),
('Pritee.Gupta@fedility.com', 'PriteeGupt', 'Employee', 1, '2021-03-09 07:36:52'),
('Pritee.Gupta@yahoo.com', 'PriteeG@12', 'Candidate', 0, '2021-03-09 07:36:52'),
('Satender.singh@fedility.com', 'Satender@1', 'Employee', 1, '2021-03-09 07:36:52'),
('Satendersingh@yahoo.com', 'singh@123', 'Candidate', 2, '2021-03-09 07:36:52'),
('Sonali.Patel@gmail.com', 'Patel@123', 'Employee', 1, '2021-03-09 07:36:52'),
('Swatimehara@yahoo.com', 'meharaswat', 'Candidate', 1, '2021-03-09 07:36:52'),
('taj@gmail.com', 'Online@123', 'Candidate', 1, '2021-03-09 07:36:52'),
('tejashree.t@gmail.com', 'Online@123', 'Candidate', 1, '2021-03-09 07:36:52'),
('Vaishali.m@fedility.com', 'Vaishali@1', 'Employee', 1, '2021-03-09 07:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `duration_in_months` float DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `start_date`, `end_date`, `duration_in_months`, `account_id`) VALUES
(2001, 'SID Dev', '2019-02-12', '2021-12-31', 34, 8001),
(2002, 'Disney Development', '2020-01-01', '2022-12-31', 35, 8001),
(2003, 'Hallmark Development', '2020-01-01', '2022-12-31', 31, 8002),
(2004, 'Uber Testing', '2020-11-01', '2022-12-31', 35, 8005);

-- --------------------------------------------------------

--
-- Table structure for table `rejected_can_details`
--

CREATE TABLE `rejected_can_details` (
  `rejected_id` int(11) NOT NULL,
  `journey_id` int(11) NOT NULL,
  `blocked_till_date` date NOT NULL,
  `is_still_rejected` tinyint(1) DEFAULT 1,
  `last_updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rejected_can_details`
--

INSERT INTO `rejected_can_details` (`rejected_id`, `journey_id`, `blocked_till_date`, `is_still_rejected`, `last_updated_on`) VALUES
(1, 2, '2021-03-31', 1, '2021-03-09 10:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `selected_can_details`
--

CREATE TABLE `selected_can_details` (
  `selected_id` int(11) NOT NULL,
  `journey_id` int(11) NOT NULL,
  `hire_date` date DEFAULT NULL,
  `is_offer_accepted` enum('Y','N') DEFAULT NULL,
  `CURR_DATE` date DEFAULT curdate()
) ;

--
-- Dumping data for table `selected_can_details`
--

INSERT INTO `selected_can_details` (`selected_id`, `journey_id`, `hire_date`, `is_offer_accepted`, `CURR_DATE`) VALUES
(10, 3, '2021-03-01', 'Y', '2021-02-25'),
(11, 7, '2021-04-19', 'N', '2021-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(30) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`team_id`, `team_name`, `project_id`) VALUES
(101, 'SID Dev Team', 2001),
(102, 'SID QA Team', 2001);

-- --------------------------------------------------------

--
-- Table structure for table `test_details`
--

CREATE TABLE `test_details` (
  `test_project_id` int(11) NOT NULL,
  `project_description` varchar(1000) DEFAULT NULL,
  `test_detail_doc` varchar(200) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `submiited_date` date DEFAULT NULL,
  `interview_id` int(11) NOT NULL,
  `is_test_valid` tinyint(1) DEFAULT 1
) ;

--
-- Dumping data for table `test_details`
--

INSERT INTO `test_details` (`test_project_id`, `project_description`, `test_detail_doc`, `deadline`, `submiited_date`, `interview_id`, `is_test_valid`) VALUES
(101, 'Online test with logical MCQs related to java and coding', 'D:\\ERM\\Test Document\\Java MCQ.docx', '2021-03-16', '2021-03-16', 12, NULL),
(102, 'Automation Scription for e-commerce website', 'D:\\ERM\\Test Document\\Automation Test Project.docx ', '2021-03-22', NULL, 13, NULL),
(103, 'Online test with logical MCQs related to java and coding', 'D:ERMTest DocumentJava MCQ.docx', '2021-03-16', NULL, 19, NULL),
(104, 'Online test with logical MCQs related to java and coding', 'D:ERMTest DocumentJava MCQ.docx', '2021-03-16', NULL, 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_experience_documents`
--

CREATE TABLE `work_experience_documents` (
  `doc_id` int(11) NOT NULL,
  `exp_id` int(11) NOT NULL,
  `document_path` varchar(300) DEFAULT NULL,
  `document_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_experience_documents`
--

INSERT INTO `work_experience_documents` (`doc_id`, `exp_id`, `document_path`, `document_name`) VALUES
(1, 1, 'D:\\\\ERM\\\\Work Experience Document\\\\Tej_experience_ltr.docx', 'Experience Letter'),
(2, 4, 'D:\\\\ERM\\\\Work Experience Document\\\\Tej_releaving_ltr.docx', 'Relieving Letter'),
(3, 2, 'D:\\ERM\\Work Experience Document\\Mark.docx', 'Experience Letter'),
(4, 3, 'D:\\ERM\\Work Experience Document\\Ananad.docx', 'Resignation Acceptance Letter'),
(5, 5, 'D:\\ERM\\Work Experience Document\\Anagha.docx', 'Experience Letter'),
(6, 6, 'D:\\ERM\\Work Experience Document\\Anagha_Exp.docx', 'Resignation Acceptance Letter'),
(9, 7, 'D:\\ERM\\Work Experience Document\\Harry.docx', 'Relieving Letter'),
(10, 8, 'D:ERMWork Experience Document\\Taj', 'Relieving Letter'),
(11, 9, 'D:ERMWork Experience Document\\Amruta.docx', 'Experience letter'),
(12, 10, 'D:ERMWork Experience Document\\Amruta_cognizant.docx', 'Relieving Letter'),
(13, 11, 'D:ERMWork Experience Document\\Swati.docx', 'Resignation Acceptance letter'),
(14, 12, 'D:ERMWork Experience Document\\Sonali.docx', 'Resignation Acceptance letter'),
(15, 13, 'D:ERMWork Experience Document\\Satender.docx', 'Resignation Acceptance letter'),
(16, 14, 'D:ERMWork Experience Document\\Pritee.docx', 'Resignation Acceptance letter'),
(17, 15, 'D:ERMWork Experience Document\\Pooja.docx', 'Resignation Acceptance letter'),
(18, 16, 'D:ERMWork Experience Document\\Vaishali_Speedlight.docx', 'Experience letter'),
(19, 17, 'D:ERMWork Experience Document\\Vaishali.docx', 'Resignation Acceptance letter'),
(20, 18, 'D:ERMWork Experience Document\\Harshit.docx', 'Resignation Acceptance letter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `reporting_manager` (`reporting_manager`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `candidate_personal_details`
--
ALTER TABLE `candidate_personal_details`
  ADD PRIMARY KEY (`can_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `internalStatus` (`internalStatus`);

--
-- Indexes for table `can_academic_details`
--
ALTER TABLE `can_academic_details`
  ADD PRIMARY KEY (`academic_record_id`),
  ADD KEY `can_id` (`can_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_abbrivation` (`country_abbrivation`);

--
-- Indexes for table `company_references`
--
ALTER TABLE `company_references`
  ADD PRIMARY KEY (`reference_id`),
  ADD KEY `exp_id` (`exp_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_abbrivation`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `work_email` (`work_email`),
  ADD KEY `can_id` (`can_id`);

--
-- Indexes for table `experience_details`
--
ALTER TABLE `experience_details`
  ADD PRIMARY KEY (`exp_id`),
  ADD KEY `can_id` (`can_id`);

--
-- Indexes for table `internal_status`
--
ALTER TABLE `internal_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `interview_journey`
--
ALTER TABLE `interview_journey`
  ADD PRIMARY KEY (`journey_id`),
  ADD KEY `interview_id` (`interview_id`),
  ADD KEY `round_id` (`round_id`);

--
-- Indexes for table `interview_panel_details`
--
ALTER TABLE `interview_panel_details`
  ADD PRIMARY KEY (`interviewer_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `journey_id` (`journey_id`);

--
-- Indexes for table `interview_round_details`
--
ALTER TABLE `interview_round_details`
  ADD PRIMARY KEY (`round_id`);

--
-- Indexes for table `interview_schedule`
--
ALTER TABLE `interview_schedule`
  ADD PRIMARY KEY (`interview_id`),
  ADD KEY `poc_id` (`poc_id`),
  ADD KEY `fk_application_id` (`application_id`);

--
-- Indexes for table `job_application`
--
ALTER TABLE `job_application`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `can_id` (`can_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `job_openings`
--
ALTER TABLE `job_openings`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `rejected_can_details`
--
ALTER TABLE `rejected_can_details`
  ADD PRIMARY KEY (`rejected_id`),
  ADD KEY `journey_id` (`journey_id`);

--
-- Indexes for table `selected_can_details`
--
ALTER TABLE `selected_can_details`
  ADD PRIMARY KEY (`selected_id`),
  ADD KEY `journey_id` (`journey_id`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `test_details`
--
ALTER TABLE `test_details`
  ADD PRIMARY KEY (`test_project_id`),
  ADD KEY `interview_id` (`interview_id`);

--
-- Indexes for table `work_experience_documents`
--
ALTER TABLE `work_experience_documents`
  ADD PRIMARY KEY (`doc_id`),
  ADD UNIQUE KEY `document_path` (`document_path`),
  ADD KEY `exp_id` (`exp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8006;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `candidate_personal_details`
--
ALTER TABLE `candidate_personal_details`
  MODIFY `can_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5032;

--
-- AUTO_INCREMENT for table `can_academic_details`
--
ALTER TABLE `can_academic_details`
  MODIFY `academic_record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `company_references`
--
ALTER TABLE `company_references`
  MODIFY `reference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400001247;

--
-- AUTO_INCREMENT for table `experience_details`
--
ALTER TABLE `experience_details`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `internal_status`
--
ALTER TABLE `internal_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `interview_journey`
--
ALTER TABLE `interview_journey`
  MODIFY `journey_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `interview_panel_details`
--
ALTER TABLE `interview_panel_details`
  MODIFY `interviewer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `interview_round_details`
--
ALTER TABLE `interview_round_details`
  MODIFY `round_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `interview_schedule`
--
ALTER TABLE `interview_schedule`
  MODIFY `interview_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_application`
--
ALTER TABLE `job_application`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `job_openings`
--
ALTER TABLE `job_openings`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2005;

--
-- AUTO_INCREMENT for table `rejected_can_details`
--
ALTER TABLE `rejected_can_details`
  MODIFY `rejected_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `selected_can_details`
--
ALTER TABLE `selected_can_details`
  MODIFY `selected_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `test_details`
--
ALTER TABLE `test_details`
  MODIFY `test_project_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_experience_documents`
--
ALTER TABLE `work_experience_documents`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee_details` (`emp_id`),
  ADD CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`reporting_manager`) REFERENCES `employee_details` (`emp_id`),
  ADD CONSTRAINT `assignment_ibfk_3` FOREIGN KEY (`team_id`) REFERENCES `team_details` (`team_id`);

--
-- Constraints for table `candidate_personal_details`
--
ALTER TABLE `candidate_personal_details`
  ADD CONSTRAINT `candidate_personal_details_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`),
  ADD CONSTRAINT `candidate_personal_details_ibfk_2` FOREIGN KEY (`internalStatus`) REFERENCES `internal_status` (`status_id`);

--
-- Constraints for table `can_academic_details`
--
ALTER TABLE `can_academic_details`
  ADD CONSTRAINT `can_academic_details_ibfk_1` FOREIGN KEY (`can_id`) REFERENCES `candidate_personal_details` (`can_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`country_abbrivation`) REFERENCES `country` (`country_abbrivation`);

--
-- Constraints for table `company_references`
--
ALTER TABLE `company_references`
  ADD CONSTRAINT `company_references_ibfk_1` FOREIGN KEY (`exp_id`) REFERENCES `experience_details` (`exp_id`);

--
-- Constraints for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD CONSTRAINT `employee_details_ibfk_1` FOREIGN KEY (`can_id`) REFERENCES `candidate_personal_details` (`can_id`),
  ADD CONSTRAINT `employee_details_ibfk_2` FOREIGN KEY (`work_email`) REFERENCES `login` (`email`);

--
-- Constraints for table `experience_details`
--
ALTER TABLE `experience_details`
  ADD CONSTRAINT `experience_details_ibfk_1` FOREIGN KEY (`can_id`) REFERENCES `candidate_personal_details` (`can_id`);

--
-- Constraints for table `interview_journey`
--
ALTER TABLE `interview_journey`
  ADD CONSTRAINT `interview_journey_ibfk_1` FOREIGN KEY (`interview_id`) REFERENCES `interview_schedule` (`interview_id`),
  ADD CONSTRAINT `interview_journey_ibfk_2` FOREIGN KEY (`round_id`) REFERENCES `interview_round_details` (`round_id`);

--
-- Constraints for table `interview_panel_details`
--
ALTER TABLE `interview_panel_details`
  ADD CONSTRAINT `interview_panel_details_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee_details` (`emp_id`),
  ADD CONSTRAINT `interview_panel_details_ibfk_2` FOREIGN KEY (`journey_id`) REFERENCES `interview_journey` (`journey_id`);

--
-- Constraints for table `interview_schedule`
--
ALTER TABLE `interview_schedule`
  ADD CONSTRAINT `fk_application_id` FOREIGN KEY (`application_id`) REFERENCES `job_application` (`application_id`),
  ADD CONSTRAINT `interview_schedule_ibfk_1` FOREIGN KEY (`poc_id`) REFERENCES `employee_details` (`emp_id`);

--
-- Constraints for table `job_application`
--
ALTER TABLE `job_application`
  ADD CONSTRAINT `job_application_ibfk_1` FOREIGN KEY (`can_id`) REFERENCES `candidate_personal_details` (`can_id`),
  ADD CONSTRAINT `job_application_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job_openings` (`job_id`);

--
-- Constraints for table `job_openings`
--
ALTER TABLE `job_openings`
  ADD CONSTRAINT `job_openings_ibfk_1` FOREIGN KEY (`location`) REFERENCES `location` (`id`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `rejected_can_details`
--
ALTER TABLE `rejected_can_details`
  ADD CONSTRAINT `rejected_can_details_ibfk_1` FOREIGN KEY (`journey_id`) REFERENCES `interview_journey` (`journey_id`);

--
-- Constraints for table `selected_can_details`
--
ALTER TABLE `selected_can_details`
  ADD CONSTRAINT `selected_can_details_ibfk_1` FOREIGN KEY (`journey_id`) REFERENCES `interview_journey` (`journey_id`);

--
-- Constraints for table `team_details`
--
ALTER TABLE `team_details`
  ADD CONSTRAINT `team_details_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);

--
-- Constraints for table `test_details`
--
ALTER TABLE `test_details`
  ADD CONSTRAINT `test_details_ibfk_1` FOREIGN KEY (`interview_id`) REFERENCES `interview_schedule` (`interview_id`);

--
-- Constraints for table `work_experience_documents`
--
ALTER TABLE `work_experience_documents`
  ADD CONSTRAINT `work_experience_documents_ibfk_1` FOREIGN KEY (`exp_id`) REFERENCES `experience_details` (`exp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
