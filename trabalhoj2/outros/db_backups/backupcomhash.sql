-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Abr-2025 às 19:04
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tecnico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `senha`, `cpf`) VALUES
(1, 'Ana Silva', 'ana.silva@gmail.com', '$2y$10$xjqvqqzRnuIqT5gzs43rSuE84n6Pf1bnR90HyKFZzPMgB3f/rJ9ve', '12345678901'),
(2, 'Bruno Costa', 'bruno.costa@gmail.com', '$2y$10$HuC3DKOu3RRKXPkuA1pv6uL6RzKGf6xVpGdqnMYSZjbXBqhNzelNy', '12345678902'),
(3, 'Carlos Oliv', 'carlos.oliveira@gmail.com', '$2y$10$X2triPAT4mvqSJdIv35pbODBnR3dYBPIZSKvuTaPofVhlkWXI0Uyq', '12345678903'),
(4, 'Daniela Sou', 'daniela.souza@gmail.com', '$2y$10$M4NilmG3N7.lJSNGVKlhPOghK3t68d8BPK/J.aSAUGIK62gi/mSZO', '12345678904'),
(5, 'Eduardo Per', 'eduardo.pereira@gmail.com', '$2y$10$biXaN89E4l3HzBZnoOvcIO65/E0v5xiGLsP8WnZHHHCpGWmB4KrXO', '12345678905'),
(6, 'Fernanda Li', 'fernanda.lima@gmail.com', '$2y$10$X7ZDdO3ul2ckrTZ4ZajDUO0BX/DEEsRWFFdn45OuQlQsaAFfWZ7kG', '12345678906'),
(7, 'Gabriel Roc', 'gabriel.rocha@gmail.com', '$2y$10$WL4NS3RHFM//dYMyfgps6uwoTLpHBVprvZhExOZ7HtPPGhnpswZ/6', '12345678907'),
(8, 'Helena Mart', 'helena.martins@gmail.com', '$2y$10$akiGSC.tB/ENufXL428jPeNchvrCjBRVZEllSMCFaX3T9TDdbv4ea', '12345678908'),
(9, 'Igor Alves', 'igor.alves@gmail.com', '$2y$10$zziSMriILft0D.AihOzX8uvHOpfj6/YYTx4O2yTNn7skTvd3w6Nzu', '12345678909'),
(10, 'Juliana Sil', 'juliana.silva@gmail.com', '$2y$10$eAXYUdMD5QpMutashph5mOz.R.HvkvXqS/WsZmmTRXN9EnqclMILC', '12345678910'),
(11, 'Karina Sant', 'karina.santos@gmail.com', '$2y$10$PKe/u9v4on8ylXi4YiQ.VuHBgKoXjDdL7qC/1yXMGdak7xpRTmVhi', '12345678911'),
(12, 'Lucas Ferre', 'lucas.ferreira@gmail.com', '$2y$10$17EzY0tokKi.ZMwlCjRZGOozuIHKAGK3k0AicdqKkseQAxCxS2WTW', '12345678912'),
(13, 'Maria Perei', 'maria.pereira@gmail.com', '$2y$10$tGBSvUjTo5xeK96w4b.H2uhnFn9WTXSiXY2D5n2sEycLfbLjpIN5O', '12345678913'),
(14, 'Nicolas Rib', 'nicolas.ribeiro@gmail.com', '$2y$10$8sBVeR5ZtCTuFCms1vrSCO.Bpc8T6GVHS16l4Zb/iw/5fdSwqpGUO', '12345678914'),
(15, 'Olivia Gome', 'olivia.gomes@gmail.com', '$2y$10$C2tbQVw6tP8z2u40jSIwTeGnoxAW0.h3ofYHoxXKp2L/4BeQajDuy', '12345678915'),
(16, 'Paulo Marti', 'paulo.martins@gmail.com', '$2y$10$3h89qoDkorUdESRIpkfB..51b6CYI1Qo4/VomfJJ5tN5VyiXL1o8S', '12345678916'),
(17, 'Quiteria Di', 'quiteria.dias@gmail.com', '$2y$10$6zbsdfYwqWPEGQyRPs4JO.D8ioTkaM3zDmXYP531RKMOmMktHJ/X.', '12345678917'),
(18, 'Rafael Cost', 'rafael.costa@gmail.com', '$2y$10$A9WGtVTU2si7g9jaZvwdEefOtmy.PzcGxS21N09v5nDnbfxJ5uor6', '12345678918'),
(19, 'Sofia Perei', 'sofia.pereira@gmail.com', '$2y$10$/ui8JHop6x9stH2/zZ0rPexN8ld0jhCe7Vj9.W6doKiN1vETL/dTq', '12345678919'),
(20, 'Thiago Alme', 'thiago.almeida@gmail.com', '$2y$10$M3MMn5w1HL1vHXrpiugB/OzjDc.4KZrNxw3Jcu4WGVyfhMkE8MRXa', '12345678920'),
(21, 'Ursula Silv', 'ursula.silva@gmail.com', '$2y$10$TTLCkAK76SlHQIvdVsBzu.7eLJsln8zZSlGsHyGpnncVaAzV0hWMy', '12345678921'),
(22, 'Vinicius Ol', 'vinicius.oliveira@gmail.com', '$2y$10$ji7OzO7HeOF5iJ8c/VnT9ukQV6hKtrfg2BXLQsmvT.tqzCpLLYl/W', '12345678922'),
(23, 'Wanda Rocha', 'wanda.rocha@gmail.com', '$2y$10$9tfB6KJL6AQZAZ/GV6RzH.ZL16cBmjlfi2h/tnxtXN5FJUmJJzspO', '12345678923'),
(24, 'Ximena Lima', 'ximena.lima@gmail.com', '$2y$10$f9oQ45jXVGSiGtuvlkRGUuBNkfBHVxgiWOcEByM81d2ro6FwzbzbK', '12345678924'),
(25, 'Yuri Costa', 'yuri.costa@gmail.com', '$2y$10$BlXNa7LyBXC0lOJvx4/F1.F0nbOxiOyquReMp/TcCsmHqus5AgEuu', '12345678925'),
(26, 'Zilda Souza', 'zilda.souza@gmail.com', '$2y$10$XJXWmdfPyUez1A1bnwJhtu9DqGAD.DS8k.4O7K1UmlQHPfCwWMLf.', '12345678926'),
(27, 'Adriana Fer', 'adriana.ferreira@gmail.com', '$2y$10$n4q3bKYeBKW9KKBKzU2RseMuk1/SZV.yDG.pCEbaKmXevGxs8.Gn6', '12345678927'),
(28, 'Beatriz Gom', 'beatriz.gomes@gmail.com', '$2y$10$TtEcXrigv85JoIpEQwEGKO00y6.6z4P6VrGfGi38/a42J1gaswXI6', '12345678928'),
(29, 'Carlos Mart', 'carlos.martins@gmail.com', '$2y$10$a5UV5J9hHf6Oi9qP1sdyzO2kazKuFGcEboywjfk4mmEDTgvAUR.Bq', '12345678929'),
(30, 'Diana Rocha', 'diana.rocha@gmail.com', '$2y$10$DvH0PmJ4Rpzx286sa0GYp.yg0uEsfjwAXBABN4E58IHc6JlE1ruo.', '12345678930'),
(31, 'Eduarda San', 'eduarda.santos@gmail.com', '$2y$10$tFVmeQY4.VJeartHo//j/.zOVtx8oVKAgMaTpJlqYVLDaOP2MGDr2', '12345678931'),
(32, 'Fabiano Per', 'fabiano.pereira@gmail.com', '$2y$10$ajuURhYHIPEjfsUIyKjmLeb.22WppIwHlZDNQcKX3na7UmMR9MZ4e', '12345678932'),
(33, 'Gustavo Lim', 'gustavo.lima@gmail.com', '$2y$10$F12VG3HRAkI7hT8uYeNMtuMpl/qOk/eMtBfC0M4pHfSQZuMkvdvHa', '12345678933'),
(34, 'Helena Cost', 'helena.costa@gmail.com', '$2y$10$AusYDCznzELzfXXPMycr/.ifkfUV4AscVmYnow.POQQtpFL.1LWf.', '12345678934'),
(35, 'Igor Souza', 'igor.souza@gmail.com', '$2y$10$nEMy5p9Fl4YgieD6HQT5peYeMUmSZy103805Z1smbWjF0Pb2OVwRi', '12345678935'),
(36, 'Júlio Ferre', 'julio.ferreira@gmail.com', '$2y$10$N63J0ccCrf4xK3rh.LdgcuWYdTiHZOXxPx4j0dqhjpyHBgnWZH53W', '12345678936'),
(37, 'Karla Rocha', 'karla.rocha@gmail.com', '$2y$10$/oDhC9nzPmdOm177vfrGlexGMXNw9fcLEEmJB7muynXaU3g5FpTSe', '12345678937'),
(38, 'Lívia Olive', 'livia.oliveira@gmail.com', '$2y$10$3v0MhwnIHYVdutuPvtW0IuZuLtqGzCphl2KJK.R50i3/xao7I.yHW', '12345678938'),
(39, 'Mário Marti', 'mario.martins@gmail.com', '$2y$10$pGqj4wGBkJQ0R.LE5ye4NecStYXxNcH7.a8I4VofsdAeVdrqhZHQ2', '12345678939'),
(40, 'Nádia Ribei', 'nadia.ribeiro@gmail.com', '$2y$10$89boMF06Trva9DLm4OTOU.eDQfvATgA4176ObLErWZaoQUKClZxFO', '12345678940'),
(41, 'Olga Costa', 'olga.costa@gmail.com', '$2y$10$ZjPoQOyWMgtaeOnE0R90Lu0peTnLEnBOiFG/NSk4scQ62R7MgYCa2', '12345678941'),
(42, 'Pablo Souza', 'pablo.souza@gmail.com', '$2y$10$/aJEC893RYbX.lkB6JYb9.p87KRk2eFE5XLV4X9RWHu46YhJytTga', '12345678942'),
(43, 'Quirino Lim', 'quirino.lima@gmail.com', '$2y$10$60El2qMo7HF3HcjMCyFoxuxKTYOaFxI9G3lY77aTGJiH90E7hNxUS', '12345678943'),
(44, 'Roberta Gom', 'roberta.gomes@gmail.com', '$2y$10$l26nYEeWtVhqCj8IFztaDOWUItHkB9zByHI3BZ3H5zFeD4IWLNiSS', '12345678944'),
(45, 'Silvio Oliv', 'silvio.oliveira@gmail.com', '$2y$10$3P4MsbrqKSrALMdllEqnTunpz.N3/G7AwwR3zQF.yGXF4A3vqC3xG', '12345678945'),
(46, 'Tatiane Cos', 'tatiane.costa@gmail.com', '$2y$10$poO5/lj6gP6WtI.LJQxAUOLAU3vlI2vjEOlTOqXTF0Z8m1QOJHGhq', '12345678946'),
(47, 'Uilson Pere', 'uilson.pereira@gmail.com', '$2y$10$.qdNg2XlvUSGR5CqslZ3/eXvjKhOdhqKFLRy/an5wu7BuHGHxtRoK', '12345678947'),
(48, 'Vera Rocha', 'vera.rocha@gmail.com', '$2y$10$Sx1yC4b90tgp.jjAHDkQ6OnUkuM8JT3a7ZqBIZnMmTLwFNSCwjtOe', '12345678948'),
(49, 'William San', 'william.santos@gmail.com', '$2y$10$X478o5CSb3uk17PRPWiAFe/7v8.yTDKxk5B8KRW6aIZ9Vc2b7fiVy', '12345678949'),
(50, 'Xuxa Lima', 'xuxa.lima@gmail.com', '$2y$10$BYc/YyzOxIJaTfNWRmdime48BhrTY0YuMDahGHff13n2438t6G4NG', '12345678950');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tecnicos`
--

INSERT INTO `tecnicos` (`id`, `nome`, `email`, `senha`, `cpf`) VALUES
(1, 'Marie Curie', 'marie.curie@gmail.com', '$2y$10$XafxCuJUo2nsTOmjj1r/GuOJnWNcPfigrRr4jRhHaxz3Wap50IdCu', '23456789001'),
(2, 'Albert Eins', 'albert.einstein@gmail.com', '$2y$10$vEUx9gZ08OC9bvjjtdsEwulCY/XVN0Zs/02mKzH98tUjVDyRJOaLO', '23456789002'),
(3, 'Isaac Newto', 'isaac.newton@gmail.com', '$2y$10$sVAlm8SPNpmKh5GB4Ywsb.NZQN9Ka.UYiO0826dkzBPoOz9X5tSm.', '23456789003'),
(4, 'Charles Dar', 'charles.darwin@gmail.com', '$2y$10$U00.CNN9384H/9SBRNtgWOGXlK84C60.bII3AC52S2f/f3JIV.2bW', '23456789004'),
(5, 'Galileo Gal', 'galileo.galilei@gmail.com', '$2y$10$4tJDSe3LNU9PnkUufUWNgenZegryZ1qcg1ZEjnvWJqunRpG7.UcP.', '23456789005'),
(6, 'Nikola Tesl', 'nikola.tesla@gmail.com', '$2y$10$K72NhbfisRIF/HyFOdIbiuerxaGlwqgwleKqUgGh0Gwb6bSIWz/HG', '23456789006'),
(7, 'Rosalind Fr', 'rosalind.franklin@gmail.com', '$2y$10$D4LSUwJ.H.EDgU3Oly4kgOn9EWFBUGJbQnmtPyRSWzL6c8B8iGFfG', '23456789007'),
(8, 'Stephen Haw', 'stephen.hawking@gmail.com', '$2y$10$0Ves.guGF1tP1xNi/Be0S.ZrQWMoGWxeAxyRqBjw75V..JFh7Q9gG', '23456789008'),
(9, 'Ada Lovelac', 'ada.lovelace@gmail.com', '$2y$10$YI2HGAfaMGA0836RS2R70.RzK8GIed55wT3Q/KBcUD/3S2pv3gky2', '23456789009'),
(10, 'Leonardo da', 'leonardo.davinci@gmail.com', '$2y$10$S3GHT8HyKvJfATWq95dluenI88emQv/YAGxK9.4899o9Ojek5iTZC', '23456789010'),
(11, 'Richard Fey', 'richard.feynman@gmail.com', '$2y$10$zWVfPqSeURVP5AjwcC.awONwtmeFlGfVRGZgcetxPrz5JBRntXCYK', '23456789011'),
(12, 'Marie-Anne ', 'marie.anne.lavoisier@gmail.com', '$2y$10$g4JzjXna2j0mv5/Dku3MbuKaVcBjKND.KsY4VwQxf4HNACUbQ/Fsa', '23456789012'),
(13, 'James Clerk', 'james.maxwell@gmail.com', '$2y$10$Vjs8unqFFgD0KZ2o2/ljieze4/J1tGJ.w7CGP5SRtLCRS7SL4W27.', '23456789013'),
(14, 'Michael Far', 'michael.faraday@gmail.com', '$2y$10$UtwRP8EsaOpSeglnt/0zM.9FACxzZxRhnH8u8FEYuVUokayQlZsCi', '23456789014'),
(15, 'Niels Bohr', 'niels.bohr@gmail.com', '$2y$10$fUzzUVrDzDS6IwxDUD/33uxi1ojJAHcW2lhptEIvYyWfnbzjUXyai', '23456789015'),
(16, 'Johannes Ke', 'johannes.kepler@gmail.com', '$2y$10$qfumvb8iAML/n0fH3nX0re1/BBn6Ot9.IkFSnf0n4YzhrWmaby5ca', '23456789016'),
(17, 'Erwin Schrö', 'erwin.schrodinger@gmail.com', '$2y$10$nrKFWZmyaJ/vJHVMrWtSx.Wb5DoGUPFnOXnh9FF7HUXfuo0F4TrHa', '23456789017'),
(18, 'Katherine J', 'katherine.johnson@gmail.com', '$2y$10$AKUWH9ApLNIXOxqlepjSPOTLTdYVk8m8Rb4z5zjgTXVhsKTBpdQ/u', '23456789018'),
(19, 'Lise Meitne', 'lise.meitner@gmail.com', '$2y$10$C9rY/4MF5v0K7HuMHBrgzO2cM9TEoRXc12gTIUPgtVDv9KMs4llou', '23456789019'),
(20, 'Alan Turing', 'alan.turing@gmail.com', '$2y$10$YU1ZdUZ.Z2UegYBYloIIoehzq2ljo8raaXaP8y43JnzQHQJm9Ps6K', '23456789020');

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
