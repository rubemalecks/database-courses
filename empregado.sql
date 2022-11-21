-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Tempo de geração: 11-Nov-2022 às 00:20
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `empresa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `empregado`
--

CREATE TABLE `empregado` (
  `sexo` char(1) DEFAULT NULL,
  `depto` int(11) DEFAULT NULL,
  `nome` varchar(15) DEFAULT NULL,
  `matric` int(11) NOT NULL,
  `salario` double DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `matric_sup` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empregado`
--

INSERT INTO `empregado` (`sexo`, `depto`, `nome`, `matric`, `salario`, `data_nasc`, `matric_sup`) VALUES
('F', 10, 'Ana', 1010, 1000, '1975-03-02', NULL),
('F', 10, 'Rita', 1011, 1000, '1975-05-18', NULL),
('F', 10, 'Maria', 1012, 1500, '1966-06-30', NULL),
('F', 10, 'Alice', 1013, 1000, '1968-07-10', NULL),
('M', 11, 'Pedro', 1015, 1000, '1968-03-01', NULL),
('M', 11, 'Andre', 1016, 1000, '1968-03-01', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `empregado`
--
ALTER TABLE `empregado`
  ADD PRIMARY KEY (`matric`),
  ADD KEY `matric_sup` (`matric_sup`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `empregado`
--
ALTER TABLE `empregado`
  ADD CONSTRAINT `empregado_ibfk_1` FOREIGN KEY (`matric_sup`) REFERENCES `empregado` (`matric`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
