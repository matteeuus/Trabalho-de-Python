-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Nov-2023 às 19:28
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `entrevistas`
--
CREATE DATABASE entrevista;
USE entrevista;
-- --------------------------------------------------------

--
-- Estrutura da tabela `entrevistados`
--

CREATE TABLE `entrevistados` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Minibio` varchar(255) NOT NULL,
  `Entrevista` int(11) NOT NULL,
  `Pratico` int(11) NOT NULL,
  `Teorico` int(11) NOT NULL,
  `Soft_Skills` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `entrevistados`
--
ALTER TABLE `entrevistados`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `entrevistados`
--
ALTER TABLE `entrevistados`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (1, 'Felicio D''Souza', '(243) 1538350', 'fdsouza0@sphinn.com', 'Decentralized 24 hour open architecture', 6, 9, 1, 9);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (2, 'Griff Whitcomb', '(495) 4806624', 'gwhitcomb1@flickr.com', 'Object-based 4th generation pricing structure', 8, 9, 10, 5);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (3, 'Kim O''Gormally', '(773) 6481463', 'kogormally2@upenn.edu', 'Multi-tiered bi-directional solution', 4, 6, 4, 7);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (4, 'Nananne Spaldin', '(953) 7285161', 'nspaldin3@arizona.edu', 'Horizontal well-modulated hierarchy', 5, 5, 7, 9);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (5, 'Esra Bambury', '(145) 9628510', 'ebambury4@noaa.gov', 'Profit-focused client-driven superstructure', 9, 9, 2, 8);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (6, 'Hermione Jamblin', '(316) 5025264', 'hjamblin5@cnn.com', 'Down-sized web-enabled framework', 6, 3, 6, 3);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (7, 'Carolynn Siviour', '(660) 3675814', 'csiviour6@github.io', 'Integrated client-driven conglomeration', 10, 8, 9, 2);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (8, 'Nicky Vonasek', '(645) 1242512', 'nvonasek7@pagesperso-orange.fr', 'Exclusive neutral capability', 7, 5, 7, 6);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (9, 'Olivette Hinz', '(869) 6563303', 'ohinz8@jimdo.com', 'User-centric zero defect neural-net', 9, 5, 5, 2);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (10, 'Vick Ayre', '(907) 6042058', 'vayre9@twitpic.com', 'Extended background algorithm', 8, 4, 5, 3);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (11, 'Erv Skrine', '(640) 8336242', 'eskrinea@washington.edu', 'User-centric background collaboration', 1, 1, 7, 1);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (12, 'Alair Firle', '(850) 5288490', 'afirleb@irs.gov', 'Multi-tiered actuating info-mediaries', 1, 9, 4, 9);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (13, 'Arabel Beedham', '(435) 2888383', 'abeedhamc@blogtalkradio.com', 'Function-based logistical alliance', 8, 9, 5, 10);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (14, 'Janet Fawley', '(467) 4044746', 'jfawleyd@house.gov', 'Polarised global budgetary management', 4, 8, 10, 9);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (15, 'Raff Hellings', '(938) 5212080', 'rhellingse@booking.com', 'Managed executive Graphical User Interface', 6, 9, 6, 3);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (16, 'Karlyn Skillicorn', '(599) 6635226', 'kskillicornf@t.co', 'Realigned web-enabled process improvement', 1, 2, 5, 6);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (17, 'Elsie Eubank', '(354) 6407608', 'eeubankg@behance.net', 'Diverse mobile intranet', 6, 9, 10, 2);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (18, 'Elfrida Sinncock', '(303) 9590745', 'esinncockh@fema.gov', 'Front-line mobile system engine', 3, 7, 9, 7);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (19, 'Wilden Stegell', '(184) 8152944', 'wstegelli@tmall.com', 'Multi-channelled optimal extranet', 2, 7, 7, 3);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (20, 'Gwynne MacIntosh', '(583) 6305764', 'gmacintoshj@networkadvertising.org', 'Cross-group multi-tasking secured line', 5, 5, 8, 2);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (21, 'Carole Bertolaccini', '(778) 8193053', 'cbertolaccinik@theatlantic.com', 'Managed homogeneous standardization', 2, 8, 2, 1);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (22, 'Nissie Swedeland', '(798) 2205711', 'nswedelandl@sitemeter.com', 'Optional discrete pricing structure', 9, 7, 10, 7);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (23, 'Ginnie Circuit', '(661) 3932095', 'gcircuitm@salon.com', 'Object-based context-sensitive methodology', 10, 6, 10, 3);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (24, 'Scott Siss', '(372) 4663101', 'ssissn@woothemes.com', 'Centralized content-based secured line', 4, 1, 3, 5);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (25, 'Cherrita Debow', '(855) 8363113', 'cdebowo@un.org', 'Reactive 6th generation knowledge user', 9, 9, 1, 8);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (26, 'Gerrie Edington', '(682) 8845812', 'gedingtonp@prnewswire.com', 'Phased multi-tasking projection', 3, 7, 2, 10);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (27, 'Ofella Starte', '(657) 3692242', 'ostarteq@netscape.com', 'Enterprise-wide zero tolerance task-force', 2, 2, 1, 2);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (28, 'Keane Groveham', '(857) 4092744', 'kgrovehamr@chicagotribune.com', 'Virtual system-worthy knowledge base', 6, 5, 6, 9);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (29, 'Charlotta Oakshott', '(799) 5211781', 'coakshotts@army.mil', 'Profound zero administration firmware', 1, 4, 10, 3);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (30, 'Cristal Vaud', '(840) 6539587', 'cvaudt@diigo.com', 'Decentralized actuating attitude', 6, 8, 2, 6);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (31, 'Ingelbert Scates', '(683) 2492837', 'iscatesu@upenn.edu', 'Synchronised zero tolerance open architecture', 4, 3, 10, 2);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (32, 'Reinaldo Tanzer', '(122) 1596228', 'rtanzerv@1688.com', 'Visionary holistic info-mediaries', 1, 8, 3, 1);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (33, 'Terrell Pepall', '(931) 4009051', 'tpepallw@linkedin.com', 'Triple-buffered incremental leverage', 6, 3, 2, 3);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (34, 'Zacherie Zimmer', '(535) 1914637', 'zzimmerx@discovery.com', 'Multi-channelled national success', 9, 8, 1, 1);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (35, 'Robinetta Ainsby', '(974) 5361294', 'rainsbyy@trellian.com', 'Vision-oriented real-time customer loyalty', 1, 6, 9, 1);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (36, 'Emerson Duffan', '(728) 2149617', 'eduffanz@hexun.com', 'Diverse bandwidth-monitored hierarchy', 7, 7, 2, 10);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (37, 'Thaddus Tabbernor', '(696) 7902789', 'ttabbernor10@ebay.co.uk', 'Reduced secondary firmware', 4, 1, 1, 1);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (38, 'Lucine Ortas', '(666) 3539335', 'lortas11@dailymail.co.uk', 'Profound background model', 9, 8, 9, 9);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (39, 'Jeri Brashaw', '(627) 7312410', 'jbrashaw12@bloglovin.com', 'Vision-oriented incremental paradigm', 9, 5, 7, 2);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (40, 'Clevie Ranaghan', '(489) 9678065', 'cranaghan13@apache.org', 'Pre-emptive local definition', 10, 7, 5, 9);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (41, 'Hurlee Ovitz', '(170) 9995431', 'hovitz14@gnu.org', 'Proactive stable frame', 6, 2, 5, 2);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (42, 'Hermie Dunseith', '(722) 2266021', 'hdunseith15@adobe.com', 'Organic even-keeled hierarchy', 5, 8, 8, 4);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (43, 'Joby Pontain', '(619) 6272898', 'jpontain16@ifeng.com', 'Extended asymmetric benchmark', 3, 8, 8, 5);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (44, 'Natty Cheak', '(914) 3674016', 'ncheak17@boston.com', 'Customer-focused 6th generation process improvement', 7, 10, 9, 3);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (45, 'Mario Bedminster', '(636) 5721432', 'mbedminster18@abc.net.au', 'Adaptive reciprocal concept', 4, 4, 7, 2);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (46, 'Oby Tenaunt', '(213) 9606655', 'otenaunt19@i2i.jp', 'Public-key secondary projection', 1, 7, 4, 7);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (47, 'Giselle Ousby', '(374) 9535996', 'gousby1a@bloglovin.com', 'Extended stable software', 7, 8, 1, 5);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (48, 'Marabel Swidenbank', '(181) 8394373', 'mswidenbank1b@wordpress.org', 'Fundamental disintermediate focus group', 7, 7, 9, 8);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (49, 'Natasha Christmas', '(178) 3352832', 'nchristmas1c@si.edu', 'Customizable client-driven functionalities', 7, 6, 7, 8);
insert into entrevistados (Id, Nome, Telefone, Email, Minibio, Entrevista, Pratico, Teorico, Soft_Skills) values (50, 'Drona Battelle', '(296) 9061144', 'dbattelle1d@msn.com', 'Streamlined motivating functionalities', 6, 2, 9, 6);
