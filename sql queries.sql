-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2018 at 07:52 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `movieprediction`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE IF NOT EXISTS `actors` (
  `actor_name` varchar(30) DEFAULT NULL,
  `movie_name` varchar(30) DEFAULT NULL,
  `year` text,
  `lbl` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actor_name`, `movie_name`, `year`, `lbl`) VALUES
('Shahid Kapoor', 'Padmaavat', '2018', 7),
('Shahid Kapoor', 'Udta Punjab', '2016', 7.8),
('Shahid Kapoor', 'Rangoon', '2017', 5.8),
('Shahid Kapoor', 'Shaandaar', '2015', 3.7),
('Shahid Kapoor', 'Haider', '2014', 8.2),
('Rajnikanth', 'Kaala Karikalam', '2018', 7),
('Rajnikanth', 'Robot', '2010', 7.1),
('Rajnikanth', 'kabali', '2016', 6.4),
('Rajnikanth', 'Lingaa', '2014', 5.8),
('Rajnikanth', 'Kochadaiiyaan', '2014', 6.5),
('Akshay Kumar', 'Gold', '2018', 8),
('Akshay Kumar', 'Padman', '2018', 8.1),
('Akshay Kumar', 'Toilet:Ek Prem Katha', '2017', 7.1),
('Akshay Kumar', 'Jolly LLB 2', '2017', 7.3),
('Akshay Kumar', 'Rustom', '2016', 7.1),
('Ayushmann Khurrana', 'Meri Pyaari Bindu', '2017', 5.7),
('Ayushmann Khurrana', 'Shubh Mangal Saavdhan', '2017', 6.9),
('Ayushmann Khurrana', 'Bareilly ki Barfi', '2017', 7.5),
('Ayushmann Khurrana', 'Dum Laga ke Haisha', '2015', 7.5),
('Ayushmann Khurrana', 'Hawaizaada', '2015', 5.6),
('Ajay Devgn', 'Raid', '2018', 7.5),
('Ajay Devgn', 'Golmaal Again', '2017', 5),
('Ajay Devgn', 'Baadshaho', '2017', 5),
('Ajay Devgn', 'Shivaay', '2016', 6.3),
('Ajay Devgn', 'Drishyam', '2015', 8.3),
('Anil Kapoor', 'Fanney Khan', '2018', 4.4),
('Anil Kapoor', 'Race 3', '2018', 2.1),
('Anil Kapoor', 'Mubarakan', '2017', 5.6),
('Anil Kapoor', 'Welcome Back 2', '2015', 4.2),
('Anil Kapoor', 'Dil Dhadakne Do', '2015', 6.6),
('Riteish Deshmukh', 'Bank Chor', '2017', 5.9),
('Riteish Deshmukh', 'Banjo', '2016', 5),
('Riteish Deshmukh', 'Housefull 3', '2016', 5.2),
('Riteish Deshmukh', 'Great Grand Masti', '2016', 3.7),
('Riteish Deshmukh', 'Ek Villain', '2014', 6.5),
('Arshad Warsi', 'Golmaal Again', '2017', 5),
('Arshad Warsi', 'Irada', '2017', 6.3),
('Arshad Warsi', 'The Legend of Michael Mishra', '2016', 4.6),
('Arshad Warsi', 'Guddu Rangeela', '2015', 5.3),
('Arshad Warsi', 'Welcome 2 Karachi', '2015', 4.3),
('Ranveer Singh', 'Padmaavat', '2018', 7),
('Ranveer Singh', 'Befikre', '2016', 3.9),
('Ranveer Singh', 'Bajirao Mastani', '2015', 7.2),
('Ranveer Singh', 'Dil Dhadakne Do', '2015', 6.8),
('Ranveer Singh', 'Kill Dil', '2014', 4.4),
('Sonu Sood', 'Paltan', '2018', 6.1),
('Sonu Sood', 'Kung Fu Yoga', '2017', 5.2),
('Sonu Sood', 'Tutak Tutak Tutiya', '2016', 6.2),
('Sonu Sood', 'Happy New Year', '2014', 5.2),
('Sonu Sood', 'Entertainment', '2014', 4.7),
('Aamir Khan', 'Secret Superstar', '2017', 8),
('Aamir Khan', 'Dangal', '2016', 8.5),
('Aamir Khan', 'PK', '2014', 8.2),
('Aamir Khan', 'Dhoom 3', '2013', 5.4),
('Aamir Khan', 'Talaash', '2012', 7.3),
('Amitabh Bachchan', '102 Not Out', '2018', 7.5),
('Amitabh Bachchan', 'Pink', '2016', 8.2),
('Amitabh Bachchan', 'Wazir', '2016', 7.1),
('Amitabh Bachchan', 'Piku', '2015', 7.6),
('Amitabh Bachchan', 'Shamitabh', '2015', 6.8),
('Raj Kumar Rao', 'Stree', '2018', 8.3),
('Raj Kumar Rao', 'Fanney Khan', '2018', 4.4),
('Raj Kumar Rao', 'Shaadi Mein Zaroor Aana', '2017', 7.8),
('Raj Kumar Rao', 'Omerta', '2017', 7),
('Raj Kumar Rao', 'Bareilly ki Barfi', '2017', 7.5),
('Salman Khan', 'Race 3', '2018', 2.1),
('Salman Khan', 'Tiger Zinda Hai', '2017', 6.1),
('Salman Khan', 'Tubelight', '2017', 4.2),
('Salman Khan', 'Sultan', '2016', 7.1),
('Salman Khan', 'Bajrangi Bhaijaan', '2015', 8),
('Saif Ali Khan', 'Kaalakaandi', '2017', 6.1),
('Saif Ali Khan', 'Chef', '2017', 5.6),
('Saif Ali Khan', 'Rangoon', '2017', 5.8),
('Saif Ali Khan', 'Phantom', '2015', 5.8),
('Saif Ali Khan', 'Happy Endings', '2014', 5.5);

-- --------------------------------------------------------

--
-- Table structure for table `actors_lbl`
--

CREATE TABLE IF NOT EXISTS `actors_lbl` (
  `actor_name` varchar(40) DEFAULT NULL,
  `lbl` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors_lbl`
--

INSERT INTO `actors_lbl` (`actor_name`, `lbl`) VALUES
('Aamir Khan', 7.48),
('Ajay Devgn', 6.42),
('Akshay Kumar', 7.52),
('Amitabh Bachchan', 7.44),
('Anil Kapoor', 4.58),
('Arshad Warsi', 5.1),
('Ayushmann Khurrana', 6.64),
('Raj Kumar Rao', 7),
('Rajnikanth', 6.56),
('Ranveer Singh', 5.86),
('Riteish Deshmukh', 5.26),
('Saif Ali Khan', 5.76),
('Salman Khan', 5.5),
('Shahid Kapoor', 6.5),
('Sonu Sood', 5.48);

-- --------------------------------------------------------

--
-- Table structure for table `actress`
--

CREATE TABLE IF NOT EXISTS `actress` (
  `actress_name` varchar(40) DEFAULT NULL,
  `movie_name` varchar(40) DEFAULT NULL,
  `year` decimal(10,0) DEFAULT NULL,
  `status` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actress`
--

INSERT INTO `actress` (`actress_name`, `movie_name`, `year`, `status`) VALUES
('Shraddha Kapoor', 'Stree', '2018', 8.3),
('Shraddha Kapoor', 'Haseena Parkar', '2017', 4.1),
('Shraddha Kapoor', 'Half Girlfriend', '2017', 4.2),
('Shraddha Kapoor', 'Ok Jaanu', '2017', 5.1),
('Shraddha Kapoor', 'Rock On 2', '2016', 5),
('Yami Gautam', 'Sarkar 3', '2017', 4.8),
('Yami Gautam', 'Kaabil', '2017', 7.1),
('Yami Gautam', 'Junooniyat', '2016', 4.3),
('Yami Gautam', 'Sanam Re', '2016', 3.2),
('Yami Gautam', 'Badlapur', '2015', 7.5),
('Kangana Ranaut', 'Simran', '2017', 5.4),
('Kangana Ranaut', 'Rangoon', '2017', 5.8),
('Kangana Ranaut', 'Katti Batti', '2015', 4.9),
('Kangana Ranaut', 'I Love New Year', '2015', 3.9),
('Kangana Ranaut', 'Tanu Weds Manu Returns', '2015', 7.7),
('Anna Ador', 'Qaidi Bandh', '2017', 5.7),
('Anna Ador', 'Gurgaon', '2017', 6.6),
('Anna Ador', 'Passport', '2016', 7.2),
('Anna Ador', 'Udta Punjab', '2016', 7.8),
('Anna Ador', 'Fredrick', '2016', 5),
('Parineeti Chopra', 'Golmaal Again', '2017', 5),
('Parineeti Chopra', 'Meri Pyaari Bindu', '2017', 5.7),
('Parineeti Chopra', 'Dishoom', '2016', 5.1),
('Parineeti Chopra', 'Kill Dil', '2014', 4.4),
('Parineeti Chopra', 'Daawat-e-Ishq', '2014', 6.2),
('Amy Jackson', 'Freaky Ali', '2016', 5),
('Amy Jackson', 'Singh Is Bling', '2015', 5.4),
('Amy Jackson', 'i', '2015', 7.4),
('Amy Jackson', 'Ekk Deewana Tha', '2012', 5.9),
('Sanya Malhotra', 'Pataakha', '2018', 7.6),
('Sanya Malhotra', 'Dangal', '2016', 8.5),
('Neena Gupta', 'Mulk', '2018', 5.9),
('Neena Gupta', 'Veere Di Wedding', '2018', 3.1),
('Neena Gupta', 'The Threshold', '2015', 7.9),
('Neena Gupta', 'Alone', '2015', 3.8),
('Neena Gupta', 'Issaq', '2013', 4.6),
('Madhuri Dixit', 'Bucket List', '2018', 6.9),
('Madhuri Dixit', 'Gulaab Gang', '2014', 6.1),
('Madhuri Dixit', 'Dedh Ishqiya', '2014', 7.1),
('Madhuri Dixit', 'Aaja Nachle', '2007', 6.4),
('Madhuri Dixit', 'Hum Tumhare Hai Sanam', '2002', 5.4),
('Niharica Raizada', 'Warrior Savitri', '2016', 4.8),
('Niharica Raizada', 'Masaan', '2015', 8.1),
('Niharica Raizada', '6-5=2', '2014', 4.8),
('Esha Gupta', 'Paltan', '2018', 6.1),
('Esha Gupta', 'Baadshaho', '2017', 5),
('Esha Gupta', 'Commando 2', '2017', 5.2),
('Esha Gupta', 'Rustom', '2016', 7.1),
('Esha Gupta', 'Humshakals', '2014', 1.8),
('Fatima Sana Shaikh', 'Dangal', '2016', 8.5),
('Fatima Sana Shaikh', 'Akaash Vani', '2013', 6.3),
('Fatima Sana Shaikh', 'Table No. 21', '2013', 7.1),
('Fatima Sana Shaikh', 'Bittoo Boss', '2012', 4.2),
('Fatima Sana Shaikh', 'Tahaan', '2008', 7.2),
('Katrina Kaif', 'Welcome To New York', '2018', 2.5),
('Katrina Kaif', 'Tiger Zinda Hai', '2017', 6.1),
('Katrina Kaif', 'Jagga Jasoos', '2017', 6.4),
('Katrina Kaif', 'Baar Baar Dekho', '2016', 5.3),
('Katrina Kaif', 'Fitoor', '2016', 5.4),
('Huma Qureshi', 'Kaala', '2018', 7),
('Huma Qureshi', 'Dobaara: See Your Evil', '2017', 4.1),
('Huma Qureshi', 'Viceroys House', '2017', 6.7),
('Huma Qureshi', 'Jolly LLB 2', '2017', 7.3),
('Huma Qureshi', 'Badlapur', '2015', 7.5),
('Zaira Wasim', 'Dangal', '2016', 8.5),
('Meher Vij', 'Tum Bin 2', '2016', 4.8),
('Meher Vij', 'Bajrangi Bhaijaan', '2015', 8),
('Meher Vij', 'Dil Vil Pyaar Vyaar', '2014', 7),
('Meher Vij', 'Pied Piper', '2013', 7.2),
('Meher Vij', 'Lucky: No Time For Love', '2005', 4.8),
('Anjali Patil', 'Mirzya', '2016', 4.7),
('Anjali Patil', 'Mrs. Scooter', '2015', 6.7),
('Anjali Patil', 'Finding Fanny', '2014', 5.8),
('Anjali Patil', 'Satyagraha', '2013', 6),
('Anjali Patil', 'Shree', '2013', 6.3);

-- --------------------------------------------------------

--
-- Table structure for table `actress_label`
--

CREATE TABLE IF NOT EXISTS `actress_label` (
  `actress_name` varchar(40) DEFAULT NULL,
  `label` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actress_label`
--

INSERT INTO `actress_label` (`actress_name`, `label`) VALUES
('Shraddha Kapoor', 5.87),
('Yami Gautam', 5.4),
('Anna Ador', 6.8),
('Amy Jackson', 6.13),
('Sanya Malhotra', 8.1),
('Neena Gupta', 5.13),
('Madhuri Dixit', 6.7),
('Niharica Raizada', 6.43),
('Esha Gupta', 5.73),
('Fatima Sana Shaikh', 7.3),
('Katrina Kaif', 5),
('Huma Qureshi', 6.03),
('Zaira Wasim', 8.5),
('Meher Vij', 7.03),
('Anjali Patil', 5.93),
('Zhu Zhu', 5.17),
('Kangana Ranaut', 5.37),
('Amy Jackson', 5.925),
('Anjali Patil', 5.9),
('Anna Ador', 6.46),
('Esha Gupta', 5.04),
('Fatima Sana Shaikh', 6.66),
('Huma Qureshi', 6.52),
('Kangana Ranaut', 5.54),
('Katrina Kaif', 5.14),
('Madhuri Dixit', 6.38),
('Meher Vij', 6.36),
('Neena Gupta', 5.06),
('Niharica Raizada', 5.9),
('Parineeti Chopra', 5.28),
('Sanya Malhotra', 8.05),
('Shraddha Kapoor', 5.34),
('Yami Gautam', 5.38),
('Zaira Wasim', 8.5);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
  `director` varchar(30) DEFAULT NULL,
  `movie_list` varchar(30) DEFAULT NULL,
  `year` text,
  `lbl` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`director`, `movie_list`, `year`, `lbl`) VALUES
('Vipul Shah', 'Action Replay', '2010', 4.2),
('Vipul Shah', 'London Dreams', '2009', 5.4),
('Vipul Shah', 'Namaste London', '2007', 7.3),
('Vipul Shah', 'Waqt', '2005', 7),
('Vipul Shah', 'Aankhen', '2002', 7.6),
('Shree Narayan Singh', 'Toilet: Ek Prem Katha,', '2017', 7.3),
('Shree Narayan Singh', 'Yeh jo Mohabbat Hai', '2012', 5.3),
('S.Shankar', 'I', '2015', 7.4),
('S.Shankar', 'Nanban', '2012', 7.6),
('S.Shankar', 'Robot', '2010', 7.1),
('S.Shankar', 'Shivaji:The Boss', '2007', 7.5),
('S.Shankar', 'Nayak', '2001', 7.8),
('Amit Ravindernath Sharma', 'Tevar', '2015', 4.2),
('Indra Kumar', 'Great Grand Masti', '2016', 3.7),
('Indra Kumar', 'Grand Masti', '2013', 4.3),
('Indra Kumar', 'Double Dhamaal', '2011', 3.8),
('Indra Kumar', 'Dhamaal', '2007', 7.8),
('Indra Kumar', 'Masti', '2004', 6.2),
('Rohit Shetty', 'Golmaal Again', '2017', 5),
('Rohit Shetty', 'Dilwale', '2015', 5.3),
('Rohit Shetty', 'Singham Returns', '2014', 5.7),
('Rohit Shetty', 'Chennai Express', '2013', 6),
('Rohit Shetty', 'Bol Bachchan', '2012', 5.5),
('Vijay Krishna Acharya', 'Dhoom 3', '2013', 5.4),
('Vijay Krishna Acharya', 'Tashan', '2008', 3.9),
('Subhash Kapoor', 'Jolly LLB 2', '2017', 7.3),
('Subhash Kapoor', 'Guddu Rangeela', '2015', 5.3),
('Subhash Kapoor', 'Jolly LLB', '2013', 7.5),
('Subhash Kapoor', 'Phase Gaye Re Obama', '2010', 7.5),
('Subhash Kapoor', 'Say Salaam India', '2007', 6.5),
('Advait Chandan', 'Secret Superstar', '2017', 8),
('Amit Masurkar', 'Newton', '2017', 7.8),
('Amit Masurkar', 'Sulemani Keeda', '2014', 7.2),
('Kabir Khan', 'Tubelight', '2017', 4.2),
('Kabir Khan', 'Phantom', '2015', 5.8),
('Kabir Khan', 'Bajrangi Bhaijaan', '2015', 8),
('Kabir Khan', 'Ek Tha Tiger', '2012', 5.5),
('Kabir Khan', 'New York', '2009', 6.8),
('Vishal Bhardwaj', 'Rangoon', '2017', 5.8),
('Vishal Bhardwaj', 'Haider', '2014', 8.2),
('Vishal Bhardwaj', 'Matru ki bijli ka Mandola', '2013', 5.7),
('Vishal Bhardwaj', '7 Khoon Maaf', '2011', 6.2),
('Vishal Bhardwaj', 'Kaminey', '2009', 7.4);

-- --------------------------------------------------------

--
-- Table structure for table `directors_lbl`
--

CREATE TABLE IF NOT EXISTS `directors_lbl` (
  `director_name` varchar(40) DEFAULT NULL,
  `lbl` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directors_lbl`
--

INSERT INTO `directors_lbl` (`director_name`, `lbl`) VALUES
('Advait Chandan', 8),
('Amit Masurkar', 7.5),
('Amit Ravindernath Sharma', 4.2),
('Indra Kumar', 5.16),
('Kabir Khan', 6.06),
('Rohit Shetty', 5.5),
('S.Shankar', 7.48),
('Shree Narayan Singh', 6.3),
('Subhash Kapoor', 6.82),
('Vijay Krishna Acharya', 4.65),
('Vipul Shah', 6.3),
('Vishal Bhardwaj', 6.66);

-- --------------------------------------------------------

--
-- Table structure for table `new_movies`
--

CREATE TABLE IF NOT EXISTS `new_movies` (
  `movie_name` varchar(40) DEFAULT NULL,
  `actors` varchar(40) DEFAULT NULL,
  `actress` varchar(40) DEFAULT NULL,
  `writer` varchar(40) DEFAULT NULL,
  `directors` varchar(40) DEFAULT NULL,
  `producers` varchar(40) DEFAULT NULL,
  `music_directors` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_movies`
--

INSERT INTO `new_movies` (`movie_name`, `actors`, `actress`, `writer`, `directors`, `producers`, `music_directors`) VALUES
('Batti Gul Meter Chalu', 'Shahid Kapoor,Divyendu Sharma,Ashrut Jai', 'Shraddha Kapoor,Yami Gautam,Anna Ador', 'Sidhartha Singh,Garima Wahal', 'Shree Narayan Singh', 'Bhushan Kumar', 'Anu Malik, Rochak Kohli'),
('Namaste England', 'Arjun Kapoor, Manoj Anand', 'Parineeti Chopra', 'Suresh Nair, Ritesh Shah', 'Vipul Shah', 'Vipul Shah, Aashin Shah, Kushal Gada, Dh', 'Prasad Sashte'),
('2.0', 'Rajinikanth,Akshay Kumar,Sudhanshu Pande', 'Amy Jackson', 'S. Shankar', 'S. Shankar', 'Allirajah \r\n\r\nSubaskaran', 'A. R. Rahman'),
('Badhaai Ho', 'Ayushmann Khurrana', 'Sanya Malhotra, Neena Gupta', 'Shanatanu Srivastava,Akshat Ghildial,Jyo', 'Amit Ravindernath Sharma', 'Vineet Jain,Aleya \r\n\r\nSen,Hemant Bhandar', 'Tanishk Bagchi'),
('Loveyatri', 'Aayush Sharma,Ram Kapoor,Ronit Roy,Arbaa', 'Warina Hussain', 'Niren Bhatt', 'Abhiraj Minawal', 'Salman \r\n\r\nKhan', 'Tanishk Bagchi, Sanchit Balhara'),
('Total Dhamaal', 'Ajay Devgn,Anil Kapoor,Riteish Deshmukh,', 'Madhuri Dixit,Niharica Raizada,Esha Gupt', 'Tushar Hiranandani', 'Indra \r\n\r\nKumar', 'Indra Kumar, Ajay Devgan, Ashok Thakeria', ' Pritam Chakraborty, Himesh Reshammiya P'),
('Simmba', 'Ranveer Singh,Ashutosh Rana,Suresh Obero', 'Sara Ali Khan', 'Sajid-Farhad', 'Rohit Shetty', 'Rohit \r\n\r\nShetty, Karan Johar', ' S. Thaman, Tanishk Bagchi, Arjuna Harja'),
('Thugs of Hindostan', 'Aamir Khan,Amitabh Bachchan,Ronit Roy,Ll', 'Fatima Sana Shaikh,Katrina Kaif', 'Vijay Krishna \r\n\r\nAcharya', 'Vijay Krishna Acharya', 'Aditya Chopra', 'Ajay-Atul'),
('Jolly LLB 2', 'Akshay Kumar,Annu Kapoor,Saurabh Shukla', 'Huma Qureshi', 'Subhash Kapoor', 'Subhash Kapoor', 'Fox Star Studios', '{}'),
('Newton', 'Rajkummar Rao,Pankaj Tripathi,Raghubir Y', 'Anjali Patil', 'Amit Masurkar, Mayank Tewari', 'Amit V Masurkar', 'Manish Mundra', '{}'),
('Tubelight', 'Salman Khan,Sohail Khan', 'Zhu Zhu', 'Kabir Khan', 'Kabir Khan', 'Salman Khan,Kabir Khan', 'Pritam'),
('Rangoon', 'Saif Ali Khan,Shahid Kapoor', 'Kangana Ranaut', 'Matthew Robbins,Vishal Bhardwaj,Sabrina ', 'Vishal Bhardwaj', 'Sajid Nadiadwala', 'Vishal \r\n\r\nBhardwaj'),
('Secret Superstar', 'Raj Arjun,Aamir Khan', 'Zaira Wasim,Meher Vij', 'Advait Chandan', 'Advait Chandan', 'Aamir Khan,Kiran Rao', 'Amit Trivedi');

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE IF NOT EXISTS `producer` (
  `producer_name` varchar(30) DEFAULT NULL,
  `movie_name` varchar(30) DEFAULT NULL,
  `year` text,
  `lbl` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`producer_name`, `movie_name`, `year`, `lbl`) VALUES
('Bhushan Kumar', 'Batti Gul Meter Chalu', '2018', 6.2),
('Bhushan Kumar', 'Satyameva Jayate', '2018', 6),
('Bhushan Kumar', 'Fanney Khan', '2018', 4.4),
('Bhushan Kumar', '102 Not Out', '2018', 7.5),
('Bhushan Kumar', 'Blackmail', '2018', 7),
('Vipul Shah', 'Namaste England', '2018', 1.3),
('Vipul Shah', 'Commando 2', '2017', 5.2),
('Vipul Shah', 'Force 2', '2018', 6.3),
('Vipul Shah', 'Holiday : A Soldier Is Never o', '2014', 7.4),
('Vipul Shah', 'Force', '2011', 6.4),
('Allirajah Subaskaran', 'The Knife', '2014', 8),
('Allirajah Subaskaran', 'Chekka Chivantha Vaanam', '2018', 8),
('Allirajah Subaskaran', 'Kolavamu Kokila', '2018', 7.5),
('Allirajah Subaskaran', 'Diya', '2018', 5.7),
('Allirajah Subaskaran', 'Yaman', '2017', 6.4),
('Vineet Jain', 'Badhaai Ho', '2018', 8.3),
('Vineet Jain', 'Raazi', '2018', 7.8),
('Vineet Jain', 'Bareilly ki Barfi', '2018', 7.5),
('Salmaan Khan', 'Loveyatri', '2018', 2.6),
('Salmaan Khan', 'Race 3', '2018', 2.1),
('Salmaan Khan', 'Tubelight', '2017', 4.2),
('Salmaan Khan', 'Hero', '2015', 3.7),
('Salmaan Khan', 'Bajrangi Bhaijaan', '2015', 8),
('Indra Kumar', 'Great Grand Masti', '2016', 3.7),
('Indra Kumar', 'Super Nani', '2014', 4.7),
('Indra Kumar', 'Grand Masti', '2013', 4.3),
('Indra Kumar', 'Double Dhamaal', '2011', 3.8),
('Indra Kumar', 'Dhamaal', '2007', 7.2),
('Ajay Devgn', 'Helicopter Eela', '2018', 5.1),
('Ajay Devgn', 'Raid', '2018', 7.5),
('Ajay Devgn', 'Baadshaho', '2017', 5),
('Ajay Devgn', 'Shivaay', '2016', 6.3),
('Ajay Devgn', 'Drishyam', '2015', 8.3),
('Rohit Shetty', 'Golmaal Again', '2017', 5),
('Rohit Shetty', 'Dilwaale', '2015', 5.2),
('Rohit Shetty', 'Singham Returns', '2014', 5.7);

-- --------------------------------------------------------

--
-- Table structure for table `producer_lbl`
--

CREATE TABLE IF NOT EXISTS `producer_lbl` (
  `producer_name` varchar(40) DEFAULT NULL,
  `lbl` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producer_lbl`
--

INSERT INTO `producer_lbl` (`producer_name`, `lbl`) VALUES
('Ajay Devgn', 6.44),
('Allirajah Subaskaran', 7.12),
('Bhushan Kumar', 6.22),
('Indra Kumar', 4.74),
('Rohit Shetty', 5.3),
('Salmaan Khan', 4.12),
('Vineet Jain', 7.86667),
('Vipul Shah', 5.32);

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE IF NOT EXISTS `writers` (
  `writer` varchar(30) DEFAULT NULL,
  `movie_list` varchar(30) DEFAULT NULL,
  `year` text,
  `lbl` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`writer`, `movie_list`, `year`, `lbl`) VALUES
('Siddharth Singh', 'Toilet: Ek Prem Katha', '2017', 7.3),
('Siddharth Singh', 'Connection', '2017', 4),
('Siddharth Singh', 'Brothers', '2015', 6.7),
('Siddharth Singh', 'Goliyon ki Rasleela Ram Leela', '2013', 6.4),
('Garima Wahal', 'Toilet: Ek Prem Katha', '2017', 7.3),
('Garima Wahal', 'Connection', '2017', 4),
('Garima Wahal', 'Brothers', '2015', 6.7),
('Garima Wahal', 'Goliyon ki Rasleela Ram Leela', '2013', 6.4),
('Suresh Nair', 'Haseena Parkar', '2017', 4.1),
('Suresh Nair', 'Kahaani 2', '2016', 6.6),
('Suresh Nair', 'Te3N', '2016', 7.3),
('Suresh Nair', 'Traffic', '2016', 6.7),
('Suresh Nair', 'Airlift', '2016', 8.1),
('Ritesh Shah', 'Raid', '2018', 7.5),
('Ritesh Shah', 'Chef', '2017', 5.6),
('Ritesh Shah', 'Commando 2', '2017', 5.2),
('Ritesh Shah', 'Pink', '2016', 8.2),
('Ritesh Shah', 'Madaari', '2016', 7.6),
('S. Shankar', 'I', '2015', 7.4),
('S. Shankar', 'Robot', '2010', 7.1),
('S. Shankar', 'Nayak', '2001', 7.8),
('Shantanu Srivastava', 'Tevar', '2015', 4.2),
('Jyoti Kapoor', 'Daawat-E-Ishq', '2014', 6.2),
('Jyoti Kapoor', 'Kaccha Limboo', '2011', 6.4),
('Tushar Hiranandani', 'Half-Girlfriend', '2017', 4.2),
('Tushar Hiranandani', 'A Flying Jatt', '2016', 3.4),
('Tushar Hiranandani', 'Dishoom', '2016', 5.1),
('Tushar Hiranandani', 'Great Grand Masti', '2016', 3.7),
('Tushar Hiranandani', 'ABCD 2', '2015', 5.5),
('Sajid-Farad', 'Housefull 3', '2016', 5.2),
('Sajid-Farad', 'Housefull 3', '2016', 5.2),
('Sajid-Farad', 'Entertainment', '2014', 4.7),
('Sajid-Farad', 'Boss', '2013', 5.5),
('Sajid-Farad', 'Himmatwala', '2013', 1.7),
('Sajid-Farad', 'Housefull 2', '2012', 5.4),
('Vijay Krishna Acharya', 'Dhoom 3', '2013', 5.4),
('Vijay Krishna Acharya', 'Tashan', '2008', 3.9),
('Vijay Krishna Acharya', 'Dhoom 2', '2006', 6.5),
('Vijay Krishna Acharya', 'Dhoom', '2004', 6.7),
('Subhash Kapoor', 'Guddu Rangeela', '2015', 5.3),
('Subhash Kapoor', 'JOLLY LLB', '2013', 7.5),
('Subhash Kapoor', 'Phas Gaye Re Obama', '2010', 7.5),
('Subhash Kapoor', 'Say Salaam India', '2007', 6.5),
('Amit Masurkar', 'Sulemani Keeda', '2014', 7.2),
('Amit Masurkar', 'Murder 3', '2013', 4.9),
('Amit Masurka', 'Murder 3', '2013', 4.9),
('Kabir khan', 'Phantom', '2015', 5.8),
('Kabir khan', 'Bajrangi Bhaiijan', '2015', 8),
('Kabir khan', 'Ek Tha Tiger', '2012', 5.5),
('Kabir khan', 'Kabul Express', '2006', 6.9),
('Matthew Robbins', 'Ek thi Daayan', '2013', 5.77),
('Matthew Robbins', '7 Khoon Maaf', '2011', 6.2),
('Matthew Robbins', 'Blood Brothers', '2007', 8),
('Vishal Bhardwaj', 'Talvar', '2015', 8.2),
('Vishal Bhardwaj', 'Haider', '2014', 8.2),
('Vishal Bhardwaj', 'Dedh Ishqiya', '2014', 7.1),
('Vishal Bhardwaj', 'Ek thi Daayan', '2013', 5.7),
('Vishal Bhardwaj', 'Matru ki bijli ka Mandola', '2013', 5.7),
('Sabrina Dhawan', 'Ishqiya', '2010', 7.3),
('Sabrina Dhawan', 'Kaminey', '2009', 7.4),
('Sabrina Dhawan', 'Monsoon Wedding', '2001', 7.4);

-- --------------------------------------------------------

--
-- Table structure for table `writers_lbl`
--

CREATE TABLE IF NOT EXISTS `writers_lbl` (
  `writer_name` varchar(40) DEFAULT NULL,
  `lbl` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `writers_lbl`
--

INSERT INTO `writers_lbl` (`writer_name`, `lbl`) VALUES
('Amit Masurka', 4.9),
('Amit Masurkar', 6.05),
('Garima Wahal', 6.1),
('Jyoti Kapoor', 6.3),
('Kabir khan', 6.55),
('Matthew Robbins', 6.65667),
('Ritesh Shah', 6.82),
('S. Shankar', 7.43333),
('Sabrina Dhawan', 7.36667),
('Sajid-Farad', 4.61667),
('Shantanu Srivastava', 4.2),
('Siddharth Singh', 6.1),
('Subhash Kapoor', 6.7),
('Suresh Nair', 6.56),
('Tushar Hiranandani', 4.38),
('Vijay Krishna Acharya', 5.625),
('Vishal Bhardwaj', 6.98);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
