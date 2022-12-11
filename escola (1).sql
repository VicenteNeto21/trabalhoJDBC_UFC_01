-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Dez-2022 às 21:51
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
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `matricula` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(13) NOT NULL,
  `dataNasc` varchar(255) NOT NULL,
  `sexo` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`matricula`, `nome`, `email`, `telefone`, `dataNasc`, `sexo`) VALUES
(1, 'RODOLFO RODRIGUES DE ARAUJO', 'RRODRIGUES88@ALU.UFC.BR', '85999887766', '1988-12-27', 'M'),
(2, 'MARIA NATALIA ARAUJO FELIX', 'NATHY@ALU.UFC.BR', '85999776633', '1991-07-24', 'F');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_disciplina`
--

CREATE TABLE `aluno_disciplina` (
  `aluno_matr` int(11) NOT NULL,
  `disciplina_cod` int(11) NOT NULL,
  `periodo` float NOT NULL,
  `frequencia` int(11) NOT NULL,
  `nota` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno_disciplina`
--

INSERT INTO `aluno_disciplina` (`aluno_matr`, `disciplina_cod`, `periodo`, `frequencia`, `nota`) VALUES
(1, 1, 2022.1, 80, 9),
(1, 2, 2022.1, 100, 10),
(2, 1, 2022.2, 92, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_disciplina2`
--

CREATE TABLE `aluno_disciplina2` (
  `aluno_matr` int(11) NOT NULL,
  `disciplina_cod` int(11) NOT NULL,
  `periodo` char(6) NOT NULL,
  `frequencia` int(11) DEFAULT NULL,
  `nota` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `creditos` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`codigo`, `nome`, `creditos`) VALUES
(1, 'INTELIGENCIA ARTIFICIAL', 8),
(2, 'Fundamento de Banco de Dados', 12),
(3, 'Redes', 8);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices para tabela `aluno_disciplina`
--
ALTER TABLE `aluno_disciplina`
  ADD PRIMARY KEY (`aluno_matr`,`disciplina_cod`,`periodo`),
  ADD KEY `disciplina_cod` (`disciplina_cod`);

--
-- Índices para tabela `aluno_disciplina2`
--
ALTER TABLE `aluno_disciplina2`
  ADD PRIMARY KEY (`aluno_matr`,`disciplina_cod`,`periodo`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
