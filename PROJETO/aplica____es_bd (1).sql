-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Tempo de geração: 16-Dez-2022 às 00:51
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
('Tec. Telemática', 'DTT', 121, 121031),
('Tec. Construção de Edif', 'DCE', 122, 122047),
('Eng. Computação', 'DEC', 125, 125331);

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

--
-- Extraindo dados da tabela `dependente`
--

INSERT INTO `dependente` (`RG`, `nome`, `sexo`, `MatricProf`, `DataNasc`) VALUES
(2146878, 'Carlos', 'M', 121003, '2001-08-14'),
(2226878, 'João', 'M', 121031, '1985-09-15'),
(3146878, 'Fernanda', 'F', 121003, '1999-08-27'),
(5502337, 'Maicon', 'M', 122047, '1997-12-15'),
(5579168, 'Rubem', 'M', 125331, '1999-07-20'),
(6746878, 'Marcos', 'M', 121031, '2001-09-01'),
(7712659, 'Maysa', 'F', 122045, '2001-12-26'),
(8817376, 'Leandro', 'M', 122047, '1998-10-04'),
(9996558, 'Marline', 'F', 121031, '1996-04-19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `email`
--

CREATE TABLE `email` (
  `MatricProf` int(11) NOT NULL,
  `Email` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `email`
--

INSERT INTO `email` (`MatricProf`, `Email`) VALUES
(121003, 'pedro22222@gmail.com'),
(121003, 'pedro@academico.ifpb.edu.br'),
(121031, 'josemaria@academico.ifpb.edu.br'),
(121031, 'joses2maria@gmail.com'),
(121031, 'mariajose@gmail.com'),
(122045, 'bento2dcosta@gmail.com'),
(122045, 'bentodiniz@academico.ifpb.edu.br'),
(122047, 'anaclara@academico.ifpb.edu.br'),
(122047, 'ana_clara@gmail.com'),
(122047, 'clara_ana@gmail.com'),
(125331, 'maria@academico.ifpb.edu.br'),
(125335, 'carlos42_joao@hotmail.com'),
(125335, 'carlos_042joao@hotmail.com'),
(125335, 'carlos_joao@academico.ifpb.edu.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `Nome` varchar(20) NOT NULL,
  `SNome` varchar(20) NOT NULL,
  `Matricula` int(11) NOT NULL,
  `DataNasc` date NOT NULL,
  `salario` decimal(6,2) DEFAULT NULL,
  `Matric_Represent_Area` int(11) DEFAULT NULL,
  `depto` int(11) DEFAULT NULL,
  `sexo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`Nome`, `SNome`, `Matricula`, `DataNasc`, `salario`, `Matric_Represent_Area`, `depto`, `sexo`) VALUES
(' Pedro', 'Pereira da Silva', 121003, '1982-03-25', '4000.00', NULL, NULL, 'M'),
(' José\r\nMaria', 'Campos', 121031, '1978-04-10', '7000.00', 121003, NULL, 'M'),
('Bento', 'Diniz Costa', 122045, '1980-11-27', '4000.00', NULL, NULL, 'M'),
('Ana Clara', 'Araújo Santos', 122047, '1994-12-30', '7200.00', 122045, NULL, 'F'),
('Maria Luiza', 'Machado', 125331, '1974-08-16', '6800.00', 125332, NULL, 'F'),
('Joana Maria', 'Campos Pereira', 125332, '1990-06-12', '4500.00', NULL, NULL, 'F'),
('João Carlos', 'Matos Cavalcanti', 125335, '1976-07-22', '3700.00', 125332, NULL, 'M');

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
-- Extraindo dados da tabela `projeto`
--

INSERT INTO `projeto` (`nome`, `codigo`, `depto`, `duraçao_ano`) VALUES
('Engenharia', 111, 122, 2),
('Fundação', 112, 122, 1),
('Java - Fundamentos', 123, 125, 1),
('Python - Fundamentos', 133, 125, 1),
('Sistemas', 155, 121, 1),
('Servidores Linux', 156, 121, 2),
('Aplicações BD', 222, 125, 3);

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
