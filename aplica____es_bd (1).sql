-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Tempo de geração: 14-Dez-2022 às 01:24
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
-- Banco de dados: `aplicações_bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `nome` varchar(23) DEFAULT NULL,
  `sigla` char(3) DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  `coordenador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`nome`, `sigla`, `codigo`, `coordenador`) VALUES
('Tec. Telemática', 'DTT', 121, 121031);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependente`
--

CREATE TABLE `dependente` (
  `RG` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sexo` char(1) NOT NULL,
  `MatricProf` int(11) DEFAULT NULL,
  `DataNasc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `email`
--

CREATE TABLE `email` (
  `MatricProf` int(11) NOT NULL,
  `Email` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `Nome` varchar(20) NOT NULL,
  `SNome` varchar(20) NOT NULL,
  `Matricula` int(11) NOT NULL,
  `DataNasc` date NOT NULL,
  `Salario` double NOT NULL,
  `Matric_Represent_Area` int(11) DEFAULT NULL,
  `depto` int(11) DEFAULT NULL,
  `sexo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`Nome`, `SNome`, `Matricula`, `DataNasc`, `Salario`, `Matric_Represent_Area`, `depto`, `sexo`) VALUES
('test', 'sobrenome test', 1, '0000-00-00', 777, NULL, NULL, 'm'),
(' Pedro', 'Pereira da Silva', 121003, '0000-00-00', 4000, NULL, NULL, 'm'),
(' José\r\nMaria', 'Campos', 121031, '0000-00-00', 7000, 121003, NULL, 'm');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto`
--

CREATE TABLE `projeto` (
  `nome` varchar(33) DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  `depto` int(11) DEFAULT NULL,
  `duraçao_ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `coordenador_FK` (`coordenador`);

--
-- Índices para tabela `dependente`
--
ALTER TABLE `dependente`
  ADD PRIMARY KEY (`RG`),
  ADD KEY `dependente_const` (`MatricProf`);

--
-- Índices para tabela `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`MatricProf`,`Email`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Matricula`),
  ADD KEY `Matric_Represent_Area` (`Matric_Represent_Area`),
  ADD KEY `depto` (`depto`);

--
-- Índices para tabela `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `depto` (`depto`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`coordenador`) REFERENCES `professor` (`Matricula`);

--
-- Limitadores para a tabela `dependente`
--
ALTER TABLE `dependente`
  ADD CONSTRAINT `dependente_const` FOREIGN KEY (`MatricProf`) REFERENCES `professor` (`Matricula`);

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`Matric_Represent_Area`) REFERENCES `professor` (`Matricula`),
  ADD CONSTRAINT `professor_ibfk_2` FOREIGN KEY (`depto`) REFERENCES `departamento` (`codigo`);

--
-- Limitadores para a tabela `projeto`
--
ALTER TABLE `projeto`
  ADD CONSTRAINT `projeto_ibfk_1` FOREIGN KEY (`depto`) REFERENCES `departamento` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
