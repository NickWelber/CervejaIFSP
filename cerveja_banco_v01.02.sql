-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 28, 2021 at 02:47 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cerveja`
--

-- --------------------------------------------------------

--
-- Table structure for table `cerveja`
--

DROP TABLE IF EXISTS `cerveja`;
CREATE TABLE IF NOT EXISTS `cerveja` (
  `id_cerveja` int(11) NOT NULL AUTO_INCREMENT,
  `imagem` varchar(500) NOT NULL,
  `nome_cerveja` varchar(100) NOT NULL,
  `volume` int(11) NOT NULL,
  `teor_alcool` float(6,2) NOT NULL,
  `amargor` int(11) DEFAULT NULL,
  `temperatura` varchar(50) NOT NULL,
  `cod_estilo` int(11) NOT NULL,
  `preco` float(6,2) NOT NULL,
  PRIMARY KEY (`id_cerveja`),
  KEY `cod_estilo` (`cod_estilo`)
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cerveja`
--

INSERT INTO `cerveja` (`id_cerveja`, `imagem`, `nome_cerveja`, `volume`, `teor_alcool`, `amargor`, `temperatura`, `cod_estilo`, `preco`) VALUES
(400, 'img/india1.jpg', 'Cerveja Hocus Pocus Pineapple Express American IPA', 500, 6.00, 40, '5 - 7', 33, 26.90),
(401, 'img/india2.jpg', 'Cerveja Wals Session Citra', 600, 3.90, 30, '8 - 12', 33, 13.59),
(402, 'img/india3.jpg', 'Cerveja Wals Niobium', 600, 9.00, 93, '8 - 12', 33, 15.99),
(403, 'img/india4.jpg', 'Cerveja Colorado Vixnu', 600, 9.50, 75, '8 - 12', 33, 12.79),
(404, 'img/india5.jpg', 'Cerveja Maniacs IPA', 355, 4.70, 30, '4 - 6', 33, 5.94),
(405, 'img/india6.jpg', 'Cerveja Dádiva Venice Beach Session IPA', 473, 4.50, 40, '8 - 12', 33, 25.90),
(406, 'img/india7.jpg', 'Cerveja Pratinha Pratipa', 500, 6.00, 65, '8 - 12', 33, 19.90),
(407, 'img/india8.jpg', 'Cerveja Cathedral Serena Session IPA', 473, 4.80, 30, '7 - 9', 33, 28.90),
(408, 'img/lager1.jpg', 'Cerveja Wals Lager', 473, 4.50, 17, '0 - 4', 32, 5.24),
(409, 'img/lager2.jpg', 'Cerveja Imigração Pilsen Premium', 500, 4.80, 14, '0 - 4', 32, 10.90),
(410, 'img/lager3.jpg', 'Cerveja X Wals', 600, 5.00, 17, '0 - 4', 32, 11.99),
(411, 'img/lager4.jpg', 'Cerveja Albanos Pilsen', 473, 4.90, 12, '0 - 4', 32, 10.90),
(412, 'img/lager5.jpg', 'Cerveja Heilige Bohemian Pilsnen', 500, 5.10, 38, '0 - 4', 32, 16.90),
(413, 'img/lager6.jpg', 'Cerveja Three Monkeys Cool Lager', 500, 4.80, 30, '4 - 7', 32, 23.80),
(414, 'img/lager7.jpg', 'Cerveja Blondine Pivo Czech', 500, 5.00, 40, '4 - 8', 32, 19.42),
(415, 'img/lager8.jpg', 'Cerveja Blondine Bad Moose Lager', 500, 5.50, 26, '0 - 4', 32, 16.18),
(416, 'img/pale1.jpg', 'Cerveja Wals Verano', 600, 5.00, 25, '4 - 8', 31, 11.99),
(417, 'img/pale2.jpg', 'Cerveja Roleta Russa APA', 500, 5.20, 36, '4 - 8', 31, 28.90),
(418, 'img/pale3.jpg', 'Cerveja Krug APA Calúnia', 500, 5.40, 35, '6 - 8', 31, 25.90),
(419, 'img/pale4.jpg', 'Cerveja Blondine Felina', 500, 4.50, 27, '8 - 12', 31, 13.45),
(420, 'img/pale5.jpg', 'Cerveja Kud God Save The Queen', 600, 5.30, 20, '4 - 8', 31, 28.90),
(421, 'img/pale6.jpg', 'Cerveja Bohemia 838 Pale Ale', 300, 5.40, 40, '4 - 8', 31, 8.35),
(422, 'img/pale7.jpg', 'Cerveja Tupiniquim Premium Pale Ale', 350, 4.80, 32, '5 - 7', 31, 11.90),
(423, 'img/pale8.jpg', 'Cerveja Wals Verano', 600, 5.00, 25, '4 - 8', 31, 12.99),
(424, 'img/porter1.jpg', 'Cerveja Colorado Demoiselle', 600, 6.00, 22, '8 - 12', 36, 12.19),
(425, 'img/porter2.jpg', 'Cerveja Heilige Porter', 500, 6.50, 23, '8 - 12', 36, 20.50),
(426, 'img/porter3.jpg', 'Cerveja Paulistania Porter', 600, 6.00, 22, '8 - 12', 36, 11.50),
(427, 'img/porter4.jpg', 'Cerveja Capa Preta Porter Berry Raspberry', 473, 5.40, 22, '4 - 8', 36, 29.90),
(428, 'img/porter5.jpg', 'Cerveja Way Avelã Porter', 355, 5.60, 25, '6 - 10', 36, 27.80),
(429, 'img/porter6.jpg', 'Cerveja Tupiniquim Monjolo Imperial Porter', 310, 11.50, 35, '8 - 12', 36, 24.90),
(430, 'img/porter7.jpg', 'Cerveja Nortenha', 600, 6.00, 22, '8 - 12', 36, 18.30),
(431, 'img/porter8.jpg', 'Cerveja Way Avelã Porter', 355, 5.60, 25, '6 - 10', 36, 27.80),
(432, 'img/sour1.jpg', 'Cerveja Everbrew Guava Berry', 473, 4.00, NULL, '3 - 7', 35, 35.99),
(433, 'img/sour2.jpg', 'Cerveja Demonho Onde Está o Gole', 473, 7.00, NULL, '3 - 7', 35, 28.79),
(434, 'img/sour3.jpg', 'Cerveja Bodebrown FruttiSour', 473, 4.30, NULL, '3 - 7', 35, 25.19),
(435, 'img/sour4.jpg', 'Cerveja Blondine Tropical Caja Catharina Sour', 500, 3.80, NULL, '3 - 7', 35, 26.09),
(436, 'img/sour5.jpg', 'Cerveja Juan Caloto Los Embalos De Ragtime Mango Berliner Weisse', 473, 7.20, NULL, '3 - 5', 35, 31.49),
(437, 'img/sour6.jpg', 'Cerveja Blumenau Catharina Sour Pessego', 500, 4.10, NULL, '3 - 7', 35, 20.69),
(438, 'img/sour7.jpg', 'Cerveja Leuven Mystic Potion Sour Uva', 355, 5.00, NULL, '3 - 7', 35, 17.99),
(439, 'img/sour8.jpg', 'Cerveja Imigração Sour Belgian Lambic', 375, 5.50, NULL, '3 - 7', 35, 34.19),
(440, 'img/stout1.jpg', 'Cerveja Unicorn Stout', 473, 5.30, 8, '6 - 10', 37, 19.99),
(441, 'img/stout2.jpg', 'Cerveja Campinas Stout Andarilha', 500, 6.00, NULL, '6 - 10', 37, 21.59),
(442, 'img/stout3.jpg', 'Cerveja Antuérpia Nikita Cherry Hickey', 300, 11.30, 34, '8 - 12', 37, 32.99),
(443, 'img/stout4.jpg', 'Cerveja Tarantino Dry Stout', 473, 3.80, 15, '6 - 10', 37, 18.69),
(444, 'img/stout5.jpg', 'Cerveja Tupiniquim Chocolate Sweet Stout', 350, 5.60, 25, '8 - 12', 37, 19.99),
(445, 'img/stout6.jpg', 'Cerveja Blondine Volcano Coffe stout', 500, 7.50, 25, '6 - 10', 37, 28.58),
(446, 'img/stout7.jpg', 'Cerveja Blumenau Macuca Imperial Stout', 500, 10.50, 27, '6 - 10', 37, 26.99),
(447, 'img/stout8.jpg', 'Cerveja Saint Bier Stout', 600, 6.00, 40, '5 - 7', 37, 20.99),
(448, 'img/strong1.jpg', 'Cerveja Wals Quadruppel', 375, 11.00, 35, '8 - 12', 34, 19.99),
(449, 'img/strong2.jpg', 'Cerveja Blumenau 1850 Barley Wine', 500, 11.30, 53, '6 - 10', 34, 25.90),
(450, 'img/strong3.jpg', 'Cerveja Kwak', 330, 8.40, NULL, '8 - 12', 34, 31.92),
(451, 'img/strong4.jpg', 'Cerveja Kwak Belgian Golden Strong Ale', 750, 8.40, NULL, '8 - 12', 34, 84.92),
(452, 'img/strong5.jpg', 'Cerveja Leffe Royale', 330, 7.50, 10, '8 - 12', 34, 16.90),
(453, 'img/strong6.jpg', 'Cerveja Duvel', 330, 8.50, 33, '8 - 12', 34, 31.99),
(454, 'img/strong7.jpg', 'Cerveja Gouden Carolus Classic', 330, 8.50, 58, '8 - 12', 34, 28.75),
(455, 'img/strong8.jpg', 'Cerveja Wals Quadruppel', 375, 11.00, 35, '8 - 12', 34, 19.99),
(456, 'img/trigo1.jpg', 'Cerveja Colorado Appia', 600, 5.50, 10, '4 - 8', 30, 11.04),
(457, 'img/trigo2.jpg', 'Cerveja Colorado Amazônica', 410, 5.30, 10, '4 - 8', 30, 27.98),
(458, 'img/trigo3.jpg', 'Cerveja Praya Wit', 600, 5.30, 13, '5 - 7', 30, 9.90),
(459, 'img/trigo4.jpg', 'Cerveja Wals Belgian Witte', 600, 5.00, 20, '0 - 4', 30, 11.99),
(460, 'img/trigo5.jpg', 'Cerveja Dádiva Witbier', 310, 5.10, 13, '2 - 6', 30, 12.90),
(461, 'img/trigo6.jpg', 'Cerveja Flamingo Witbier', 600, 4.70, 11, '5 - 7', 30, 23.90),
(462, 'img/trigo7.jpg', 'Cerveja Krug Austria Hefe Weizen', 600, 4.80, 10, '5 - 7', 30, 20.90),
(463, 'img/trigo8.jpg', 'Cerveja Tupiniquim', 600, 5.50, 10, '4 - 8', 30, 26.90);

-- --------------------------------------------------------

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
CREATE TABLE IF NOT EXISTS `comentario` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) NOT NULL,
  `horario` time NOT NULL,
  `data` date NOT NULL,
  `cod_cerveja` int(11) NOT NULL,
  `cod_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `cod_cerveja` (`cod_cerveja`),
  KEY `cod_usuario` (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=605 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `descricao`, `horario`, `data`, `cod_cerveja`, `cod_usuario`) VALUES
(600, 'A Pineapple Express possui lúpulo Mosaic e abacaxi. Esses dois ingredientes conferem um aroma “tropical”.\n			Possui um amargor bem levinho, essa cerveja demonstra o potencial de uma IPA com adição de frutas.', '10:30:00', '2021-01-08', 400, 2344),
(601, 'A massiva quantidade de lúpulo americano Citra e base de malte fazem dessa Session IPA uma explosão de refrescância. \n           Possui amargor moderado e aroma cítrico.', '11:30:00', '2021-01-08', 401, 3455),
(602, 'É uma Double IPA de espuma cremosa, coloração avermelhada e acentuado aroma de maracujá. Seus 93 IBU’s representam a massa \n           atômica de 92,9u do Nióbio, elemento que dá nome para a cerveja. Possui lúpulos Polaris.', '18:20:00', '2021-01-12', 402, 4566),
(603, 'É uma cerveja do estilo inglês com adição de grãos de café 100% arábica. Coloração negra e espuma cremosa, tem aroma e sabor intenso \n           de café, com destaque para notas de tosta do malte, leve chocolate amargo e predomínio do café.', '09:20:00', '2021-01-15', 445, 4566),
(604, 'Demoiselle é o nome de um dos aviões inventados por Santos Dummont. O café é tipicamente brasileiro, combinado com maltes importados,\n           que dá o toque singular no sabor e no aroma desta preciosa cerveja.', '09:20:00', '2021-01-15', 424, 5677);

-- --------------------------------------------------------

--
-- Table structure for table `estilo`
--

DROP TABLE IF EXISTS `estilo`;
CREATE TABLE IF NOT EXISTS `estilo` (
  `id_estilo` int(11) NOT NULL AUTO_INCREMENT,
  `estilo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_estilo`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estilo`
--

INSERT INTO `estilo` (`id_estilo`, `estilo`) VALUES
(30, 'Trigo'),
(31, 'India Pale Ale'),
(32, 'Lager'),
(33, 'Pale Ale'),
(34, 'Strong Ale'),
(35, 'Sour'),
(36, 'Porter'),
(37, 'Stout');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
CREATE TABLE IF NOT EXISTS `nota` (
  `id_nota` int(11) NOT NULL AUTO_INCREMENT,
  `nota` int(11) NOT NULL,
  `cod_cerveja` int(11) NOT NULL,
  `cod_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_nota`),
  KEY `cod_cerveja` (`cod_cerveja`),
  KEY `cod_usuario` (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `nota`, `cod_cerveja`, `cod_usuario`) VALUES
(700, 3, 400, 2344),
(701, 2, 401, 3455),
(702, 5, 402, 4566),
(703, 2, 445, 4566),
(704, 3, 424, 5677),
(705, 3, 402, 2344),
(706, 5, 402, 5677);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sexo` char(2) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` char(2) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `permissao` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5678 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `senha`, `nome`, `sexo`, `data_nascimento`, `telefone`, `cidade`, `estado`, `pais`, `email`, `permissao`) VALUES
(1233, 'admin', '700c8b805a3e2a265b01c77614cd8b21', 'Administrador', 'M', '1955-12-08', '(11)33445566', 'São Paulo', 'SP', 'Brasil', 'admin@cerveja.com', 1),
(2344, 'Sueli', '700c8b805a3e2a265b01c77614cd8b21', 'Sueli Guandalini', 'F', '1974-02-06', '(16)33327040', 'Araraquara', 'SP', 'Brasil', 'ueli@cerveja.com', 2),
(3455, 'Nick', '700c8b805a3e2a265b01c77614cd8b21', 'Nick Welber', 'M', '1990-11-10', '(16)33326849', 'Araraquara', 'SP', 'Brasil', 'nick@cerveja.com', 2),
(4566, 'Ellen', '700c8b805a3e2a265b01c77614cd8b21', 'Ellen Caroline Afonso', 'F', '1990-12-25', '(16)33328044', 'Araraquara', 'SP', 'Brasil', 'ellen@cerveja.com', 2),
(5677, 'Guilherme', '700c8b805a3e2a265b01c77614cd8b21', 'Guilherme', 'M', '1986-12-08', '(16)33335678', 'Araraquara', 'SP', 'Brasil', 'guilherme@cerveja.com', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_cerveja`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `view_cerveja`;
CREATE TABLE IF NOT EXISTS `view_cerveja` (
`id_cerveja` int(11)
,`imagem` varchar(500)
,`nome_cerveja` varchar(100)
,`volume` int(11)
,`teor_alcool` float(6,2)
,`amargor` int(11)
,`temperatura` varchar(50)
,`estilo` varchar(50)
,`preco` float(6,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_nota`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `view_nota`;
CREATE TABLE IF NOT EXISTS `view_nota` (
`id_cerveja` int(11)
,`nome` varchar(100)
,`media` decimal(13,2)
,`qtd_notas` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `view_cerveja`
--
DROP TABLE IF EXISTS `view_cerveja`;

DROP VIEW IF EXISTS `view_cerveja`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_cerveja`  AS  select `id_cerveja` AS `id_cerveja`,`imagem` AS `imagem`,`nome_cerveja` AS `nome_cerveja`,`volume` AS `volume`,`teor_alcool` AS `teor_alcool`,`amargor` AS `amargor`,`temperatura` AS `temperatura`,`estilo`.`estilo` AS `estilo`,`preco` AS `preco` from (`cerveja` join `estilo` on((`cod_estilo` = `estilo`.`id_estilo`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_nota`
--
DROP TABLE IF EXISTS `view_nota`;

DROP VIEW IF EXISTS `view_nota`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_nota`  AS  select `id_cerveja` AS `id_cerveja`,`nome_cerveja` AS `nome`,round(avg(`nota`.`nota`),2) AS `media`,count(0) AS `qtd_notas` from (`nota` join `cerveja` on((`id_cerveja` = `nota`.`cod_cerveja`))) group by `nome_cerveja` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cerveja`
--
ALTER TABLE `cerveja`
  ADD CONSTRAINT `cerveja_ibfk_1` FOREIGN KEY (`cod_estilo`) REFERENCES `estilo` (`id_estilo`);

--
-- Constraints for table `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`cod_cerveja`) REFERENCES `cerveja` (`id_cerveja`),
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`cod_cerveja`) REFERENCES `cerveja` (`id_cerveja`),
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
