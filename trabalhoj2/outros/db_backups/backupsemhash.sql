-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Abr-2025 às 16:46
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tecnicos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `user`, `senha`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  `senha` varchar(11) NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `senha`, `cpf`) VALUES
(1, 'Ana Silva', 'ana.silva@e', 'senhaA123!', '12345678901'),
(2, 'Bruno Costa', 'bruno.costa', 'bruno@2025', '12345678902'),
(3, 'Carlos Oliv', 'carlos.oliv', 'carlos!2025', '12345678903'),
(4, 'Daniela Sou', 'daniela.sou', 'Dan!2025#', '12345678904'),
(5, 'Eduardo Per', 'eduardo.per', 'Ed!12345', '12345678905'),
(6, 'Fernanda Li', 'fernanda.li', 'F@12345', '12345678906'),
(7, 'Gabriel Roc', 'gabriel.roc', 'Gabri@l2025', '12345678907'),
(8, 'Helena Mart', 'helena.mart', 'H!123456', '12345678908'),
(9, 'Igor Alves', 'igor.alves@', 'Igor_2025!', '12345678909'),
(10, 'Juliana Sil', 'juliana.sil', 'Juliana@202', '12345678910'),
(11, 'Karina Sant', 'karina.sant', 'Karina@!202', '12345678911'),
(12, 'Lucas Ferre', 'lucas.ferre', 'Luc@2025!', '12345678912'),
(13, 'Maria Perei', 'maria.perei', 'M@ria2025', '12345678913'),
(14, 'Nicolas Rib', 'nicolas.rib', 'Nico!2025', '12345678914'),
(15, 'Olivia Gome', 'olivia.gome', 'Oliv@2025', '12345678915'),
(16, 'Paulo Marti', 'paulo.marti', 'Paulo@12345', '12345678916'),
(17, 'Quiteria Di', 'quiteria.di', 'Quit@2025', '12345678917'),
(18, 'Rafael Cost', 'rafael.cost', 'Raf@12345', '12345678918'),
(19, 'Sofia Perei', 'sofia.perei', 'Sofi@2025!', '12345678919'),
(20, 'Thiago Alme', 'thiago.alme', 'Thi@2025!', '12345678920'),
(21, 'Ursula Silv', 'ursula.silv', 'Urs@la2025', '12345678921'),
(22, 'Vinicius Ol', 'vinicius.ol', 'Vini@2025!', '12345678922'),
(23, 'Wanda Rocha', 'wanda.rocha', 'Wanda1234!', '12345678923'),
(24, 'Ximena Lima', 'ximena.lima', 'Xim@na2025', '12345678924'),
(25, 'Yuri Costa', 'yuri.costa@', 'Yuri!2025', '12345678925'),
(26, 'Zilda Souza', 'zilda.souza', 'Zilda2025@', '12345678926'),
(27, 'Adriana Fer', 'adriana.fer', 'Adri!ana202', '12345678927'),
(28, 'Beatriz Gom', 'beatriz.gom', 'B@eatriz202', '12345678928'),
(29, 'Carlos Mart', 'carlos.mart', 'Car@los2025', '12345678929'),
(30, 'Diana Rocha', 'diana.rocha', 'Diana_2025', '12345678930'),
(31, 'Eduarda San', 'eduarda.san', 'Eduarda2025', '12345678931'),
(32, 'Fabiano Per', 'fabiano.per', 'Fabiano@202', '12345678932'),
(33, 'Gustavo Lim', 'gustavo.lim', 'Gustavo@202', '12345678933'),
(34, 'Helena Cost', 'helena.cost', 'Helena@1234', '12345678934'),
(35, 'Igor Souza', 'igor.souza@', 'Igor!2025', '12345678935'),
(36, 'Júlio Ferre', 'julio.ferre', 'Juli@2025', '12345678936'),
(37, 'Karla Rocha', 'karla.rocha', 'Kar@la12345', '12345678937'),
(38, 'Lívia Olive', 'livia.olive', 'Livia!2025', '12345678938'),
(39, 'Mário Marti', 'mario.marti', 'Mari@o2025', '12345678939'),
(40, 'Nádia Ribei', 'nadia.ribei', 'N@dia2025', '12345678940'),
(41, 'Olga Costa', 'olga.costa@', 'Olga@12345', '12345678941'),
(42, 'Pablo Souza', 'pablo.souza', 'Pabl@2025!', '12345678942'),
(43, 'Quirino Lim', 'quirino.lim', 'Quir@no2025', '12345678943'),
(44, 'Roberta Gom', 'roberta.gom', 'Roberta@202', '12345678944'),
(45, 'Silvio Oliv', 'silvio.oliv', 'Silvio!2025', '12345678945'),
(46, 'Tatiane Cos', 'tatiane.cos', 'Tatiana@202', '12345678946'),
(47, 'Uilson Pere', 'uilson.pere', 'Uilson2025!', '12345678947'),
(48, 'Vera Rocha', 'vera.rocha@', 'Ver@2025', '12345678948'),
(49, 'William San', 'william.san', 'Will@2025', '12345678949'),
(50, 'Xuxa Lima', 'xuxa.lima@e', 'Xux@a2025', '12345678950');

-- --------------------------------------------------------

--
-- Estrutura da tabela `serviços`
--

CREATE TABLE `serviços` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `orcamento` decimal(10,2) DEFAULT NULL,
  `tecnico_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `serviços`
--

INSERT INTO `serviços` (`id`, `tipo`, `status`, `endereco`, `descricao`, `orcamento`, `tecnico_id`, `cliente_id`) VALUES
(1, 'Reparo de Computador', 'Em andamento', 'Rua A, 123', 'Reparo de computador com defeito no processador.', '450.00', 1, 1),
(2, 'Reparo de Teclado de Laptop', 'Concluído', 'Rua B, 456', 'Troca de teclas e reparo de teclado de laptop.', '150.00', 2, 2),
(3, 'Manutenção de Monitor LCD', 'Em andamento', 'Rua C, 789', 'Reparo de monitor LCD que não liga.', '200.00', 3, 3),
(4, 'Reparo de Televisão LED', 'Concluído', 'Rua D, 101', 'Reparo em televisão LED com defeito no painel.', '300.00', 4, 4),
(5, 'Troca de Bateria de Smartphone', 'Em andamento', 'Rua E, 202', 'Troca de bateria de smartphone que está descarregando rápido.', '180.00', 5, 5),
(6, 'Reparo de Impressora a Laser', 'Concluído', 'Rua F, 303', 'Reparo de impressora a laser com erro de alimentação de papel.', '150.00', 6, 6),
(7, 'Instalação de Sistema de Som Home Theater', 'Em andamento', 'Rua G, 404', 'Instalação de sistema de som surround para home theater.', '900.00', 7, 7),
(8, 'Reparo de Micro-ondas', 'Concluído', 'Rua H, 505', 'Reparo de micro-ondas que não aquece corretamente.', '200.00', 8, 8),
(9, 'Reparo de Console de Videogame', 'Em andamento', 'Rua I, 606', 'Reparo de console de videogame com defeito na placa-mãe.', '350.00', 9, 9),
(10, 'Reparo de Celular', 'Concluído', 'Rua J, 707', 'Reparo de celular com tela trincada e problemas de software.', '250.00', 10, 10),
(11, 'Reparo de Notebook', 'Em andamento', 'Rua K, 808', 'Reparo de notebook com defeito no sistema de resfriamento.', '350.00', 11, 11),
(12, 'Instalação de TV a Cabo', 'Concluído', 'Rua L, 909', 'Instalação de serviço de TV a cabo com configuração de canais.', '100.00', 12, 12),
(13, 'Reparo de GPS Automotivo', 'Em andamento', 'Rua M, 1001', 'Reparo de GPS automotivo com defeito no GPS.', '200.00', 13, 13),
(14, 'Instalação de Placa de Vídeo em PC', 'Concluído', 'Rua N, 1102', 'Instalação de placa de vídeo em computador para aumento de desempenho gráfico.', '400.00', 14, 14),
(15, 'Reparo de Lâmpada de Projetor', 'Em andamento', 'Rua O, 1203', 'Reparo de lâmpada queimada em projetor de cinema.', '250.00', 15, 15),
(16, 'Instalação de Antena Parabólica', 'Concluído', 'Rua P, 1304', 'Instalação de antena parabólica para TV.', '350.00', 16, 16),
(17, 'Reparo de Áudio de Celular', 'Em andamento', 'Rua Q, 1405', 'Reparo do áudio de celular com falhas no som.', '150.00', 17, 17),
(18, 'Instalação de Roteador Wi-Fi', 'Concluído', 'Rua R, 1506', 'Instalação de roteador Wi-Fi e configuração de rede de internet.', '120.00', 18, 18),
(19, 'Reparo de Leitor de Blu-Ray', 'Em andamento', 'Rua S, 1607', 'Reparo de leitor de Blu-Ray que não lê discos.', '180.00', 19, 19),
(20, 'Troca de Tela de Smartphone', 'Concluído', 'Rua T, 1708', 'Troca de tela quebrada de smartphone.', '250.00', 20, 20),
(21, 'Instalação de Sistema de Som Automotivo', 'Em andamento', 'Rua U, 1809', 'Instalação de sistema de som em carro.', '800.00', 1, 20),
(22, 'Reparo de Computador de Mesa', 'Concluído', 'Rua V, 1901', 'Reparo de computador de mesa que não está ligando.', '300.00', 2, 19),
(23, 'Troca de Bateria de Laptop', 'Em andamento', 'Rua W, 2002', 'Troca de bateria de laptop que não carrega.', '180.00', 3, 18),
(24, 'Reparo de Computador de Gabinete', 'Concluído', 'Rua X, 2103', 'Reparo de gabinete de computador com problemas no fan.', '350.00', 4, 17),
(25, 'Reparo de Sistema de Áudio Automotivo', 'Em andamento', 'Rua Y, 2204', 'Reparo em sistema de áudio automotivo com falhas.', '500.00', 5, 16),
(26, 'Instalação de Antena Digital', 'Concluído', 'Rua Z, 2305', 'Instalação de antena digital para TV aberta.', '250.00', 6, 15),
(27, 'Reparo de Equipamento de Fotografia', 'Em andamento', 'Rua AA, 2406', 'Reparo de câmera fotográfica com defeito no sensor.', '350.00', 7, 14),
(28, 'Reparo de Televisão Plasma', 'Concluído', 'Rua AB, 2507', 'Reparo em televisão plasma com problemas de imagem.', '400.00', 8, 13),
(29, 'Troca de Tela de Tablet', 'Em andamento', 'Rua AC, 2608', 'Troca de tela quebrada de tablet.', '220.00', 9, 12),
(30, 'Reparo de Celular Android', 'Concluído', 'Rua AD, 2709', 'Reparo de celular Android com tela quebrada e falhas no sistema.', '270.00', 10, 11),
(31, 'Reparo de Impressora Multifuncional', 'Em andamento', 'Rua AE, 2801', 'Reparo de impressora multifuncional com problemas de impressão.', '180.00', 11, 10),
(32, 'Instalação de Sistema de Monitoramento', 'Concluído', 'Rua AF, 2902', 'Instalação de sistema de monitoramento com câmeras de segurança.', '1200.00', 12, 9),
(33, 'Reparo de Celular iPhone', 'Em andamento', 'Rua AG, 3003', 'Reparo de iPhone com defeito na tela e falhas no touch.', '350.00', 13, 8),
(34, 'Reparo de Rádio Automotivo', 'Concluído', 'Rua AH, 3104', 'Reparo de rádio automotivo que não pega sinal.', '150.00', 14, 7),
(35, 'Instalação de Sistema de Áudio para Escritório', 'Em andamento', 'Rua AI, 3205', 'Instalação de sistema de áudio para escritório e ambientes corporativos.', '700.00', 15, 6),
(36, 'Troca de Placa Mãe de PC', 'Concluído', 'Rua AJ, 3306', 'Troca de placa mãe de computador com defeito.', '600.00', 16, 5),
(37, 'Reparo de Smartwatch', 'Em andamento', 'Rua AK, 3407', 'Reparo de smartwatch que não conecta ao smartphone.', '180.00', 17, 4),
(38, 'Instalação de Placa de Som', 'Concluído', 'Rua AL, 3508', 'Instalação de placa de som para computador.', '250.00', 18, 3),
(39, 'Reparo de Leitor de Cartão de Memória', 'Em andamento', 'Rua AM, 3609', 'Reparo de leitor de cartão de memória que não lê.', '150.00', 19, 2),
(40, 'Instalação de Sistema de Home Theater', 'Concluído', 'Rua AN, 3701', 'Instalação de sistema de home theater com projetor e tela.', '1200.00', 20, 1),
(41, 'Troca de Antena de TV', 'Em andamento', 'Rua AO, 3802', 'Troca de antena de TV que não capta sinal corretamente.', '100.00', 1, 3),
(42, 'Reparo de Equipamento de Som', 'Concluído', 'Rua AP, 3903', 'Reparo em equipamento de som que não está funcionando.', '250.00', 2, 2),
(43, 'Reparo de Tablet com Problema de Touch', 'Em andamento', 'Rua AQ, 4004', 'Reparo de tablet com falhas no touch screen.', '200.00', 3, 1),
(44, 'Instalação de Sistema de Alarme Inteligente', 'Concluído', 'Rua AR, 4105', 'Instalação de sistema de alarme inteligente para casa.', '900.00', 4, 20),
(45, 'Reparo de Smart TV', 'Em andamento', 'Rua AS, 4206', 'Reparo de Smart TV que não conecta à internet.', '350.00', 5, 19),
(46, 'Instalação de Box de Segurança para Equipamento Eletrônico', 'Concluído', 'Rua AT, 4307', 'Instalação de caixa de segurança para proteger equipamentos eletrônicos.', '500.00', 6, 18),
(47, 'Reparo de Cartão Gráfico', 'Em andamento', 'Rua AU, 4408', 'Reparo de cartão gráfico de computador.', '400.00', 7, 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tecnicos`
--

CREATE TABLE `tecnicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  `senha` varchar(11) NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tecnicos`
--

INSERT INTO `tecnicos` (`id`, `nome`, `email`, `senha`, `cpf`) VALUES
(1, 'Marie Curie', 'marie.curie', 'Curie!1234', '23456789001'),
(2, 'Albert Eins', 'albert.eins', 'Einstein@20', '23456789002'),
(3, 'Isaac Newto', 'isaac.newto', 'Newton!2025', '23456789003'),
(4, 'Charles Dar', 'charles.dar', 'Darwin!2025', '23456789004'),
(5, 'Galileo Gal', 'galileo.gal', 'Galileo@202', '23456789005'),
(6, 'Nikola Tesl', 'nikola.tesl', 'Tesla@2025!', '23456789006'),
(7, 'Rosalind Fr', 'rosalind.fr', 'Franklin@20', '23456789007'),
(8, 'Stephen Haw', 'stephen.haw', 'Hawk!2025', '23456789008'),
(9, 'Ada Lovelac', 'ada.lovelac', 'Lovelace202', '23456789009'),
(10, 'Leonardo da', 'leonardo.da', 'DaVinci@202', '23456789010'),
(11, 'Richard Fey', 'richard.fey', 'Feynman@202', '23456789011'),
(12, 'Marie-Anne ', 'marie-anne.', 'Lavoisier20', '23456789012'),
(13, 'James Clerk', 'james.maxwe', 'Maxwell!123', '23456789013'),
(14, 'Michael Far', 'michael.far', 'Faraday@202', '23456789014'),
(15, 'Niels Bohr', 'niels.bohr@', 'Bohr@12345', '23456789015'),
(16, 'Johannes Ke', 'johannes.ke', 'Kepler2025@', '23456789016'),
(17, 'Erwin Schrö', 'erwin.schro', 'Schr@2025!', '23456789017'),
(18, 'Katherine J', 'katherine.j', 'Johnson2025', '23456789018'),
(19, 'Lise Meitne', 'lise.meitne', 'Meitner2025', '23456789019'),
(20, 'Alan Turing', 'alan.turing', 'Turing@2025', '23456789020');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `serviços`
--
ALTER TABLE `serviços`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tecnico_id` (`tecnico_id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices para tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `serviços`
--
ALTER TABLE `serviços`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `serviços`
--
ALTER TABLE `serviços`
  ADD CONSTRAINT `serviços_ibfk_1` FOREIGN KEY (`tecnico_id`) REFERENCES `tecnicos` (`id`),
  ADD CONSTRAINT `serviços_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
