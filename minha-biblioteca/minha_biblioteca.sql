-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Nov-2021 às 03:36
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `minha_biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

CREATE TABLE `autores` (
  `cod_autor` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` VALUES(1, 'Rodrigo Silva', NULL);
INSERT INTO `autores` VALUES(2, 'Steven Levitsky', NULL);
INSERT INTO `autores` VALUES(3, 'John Bessant', NULL);
INSERT INTO `autores` VALUES(4, 'Yuval Noah Harari', NULL);
INSERT INTO `autores` VALUES(5, 'Stephan Hawking', NULL);
INSERT INTO `autores` VALUES(6, 'Antonio Tostes', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores_livros`
--

CREATE TABLE `autores_livros` (
  `cod_autor` int(11) NOT NULL,
  `cod_livro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autores_livros`
--

INSERT INTO `autores_livros` VALUES(1, 5);
INSERT INTO `autores_livros` VALUES(2, 4);
INSERT INTO `autores_livros` VALUES(3, 6);
INSERT INTO `autores_livros` VALUES(4, 3);
INSERT INTO `autores_livros` VALUES(5, 2);
INSERT INTO `autores_livros` VALUES(6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `cod_endereco` int(11) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `cep` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` VALUES(1, 'Av. Brasil', 7095, 'Ap. 5045', '32493117');
INSERT INTO `enderecos` VALUES(2, 'Av. Manoel Dos Reis Araujo', 3597, 'Ap. 301', '92997649');
INSERT INTO `enderecos` VALUES(3, 'Av. Margarida Maria Alves', 678, 'Ap. 605', '18933869');
INSERT INTO `enderecos` VALUES(4, 'Av. Mauricio Cardoso', 3323, 'Ap. 701', '18552211');
INSERT INTO `enderecos` VALUES(5, 'Av. Pereira Rego', 4444, 'Ap. 820', '50291340');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `cod_livro` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `ano_publicacao` decimal(4,0) NOT NULL,
  `local_publicacao` varchar(20) NOT NULL,
  `editora` varchar(40) NOT NULL,
  `reservado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` VALUES(1, 'Saldo Extra', '2018', 'Tatuí - SP', 'CPB', 'N');
INSERT INTO `livros` VALUES(2, 'Uma Breve História do Tempo', '2015', 'Rio de Janeiro', 'Inrínseca', 'N');
INSERT INTO `livros` VALUES(3, 'Sapiens - Uma Breve História da Humanidade', '2019', 'Porto Alegre', 'L&PM', 'S');
INSERT INTO `livros` VALUES(4, 'Como as Democracias Morrem', '2018', 'Rio de Janeiro', 'Zahar', 'N');
INSERT INTO `livros` VALUES(5, 'O Ceticismo da Fé', '2018', 'São Paulo', 'Ágape', 'N');
INSERT INTO `livros` VALUES(6, 'Inovação e Empreendedorismo', '2009', 'Porto Alegre', 'Bookman', 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE `reservas` (
  `cod_reserva` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `data_devolucao` date NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `cod_livro` int(11) NOT NULL,
  `cod_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reservas`
--

INSERT INTO `reservas` VALUES(1, 1, '2021-12-13', NULL, 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `cod_usuario` int(11) NOT NULL,
  `primeiro_nome` varchar(20) NOT NULL,
  `segundo_nome` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cod_Endereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` VALUES(1, 'Fernando', 'Vidal', 'fidal@teste.com.br', 'fidal', '123', 1);
INSERT INTO `usuarios` VALUES(2, 'Flávia', 'Cortopassi', 'fassi@teste.com.br', 'fassi', '111', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`cod_autor`);

--
-- Índices para tabela `autores_livros`
--
ALTER TABLE `autores_livros`
  ADD PRIMARY KEY (`cod_autor`,`cod_livro`),
  ADD KEY `FK_Autores_Livros__cod_livro` (`cod_livro`);

--
-- Índices para tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`cod_endereco`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`cod_livro`);

--
-- Índices para tabela `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`cod_reserva`),
  ADD KEY `FK_Reservas__cod_livro` (`cod_livro`),
  ADD KEY `FK_Reservas__cod_usuario` (`cod_usuario`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cod_usuario`),
  ADD UNIQUE KEY `AK_Usuarios_username` (`username`),
  ADD UNIQUE KEY `AK_Usuarios_password` (`password`),
  ADD KEY `FK_Usuarios_cod_endereco` (`cod_Endereco`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `autores_livros`
--
ALTER TABLE `autores_livros`
  ADD CONSTRAINT `FK_Autores_Livros__cod_autor` FOREIGN KEY (`cod_autor`) REFERENCES `autores` (`cod_autor`),
  ADD CONSTRAINT `FK_Autores_Livros__cod_livro` FOREIGN KEY (`cod_livro`) REFERENCES `livros` (`cod_livro`);

--
-- Limitadores para a tabela `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `FK_Reservas__cod_livro` FOREIGN KEY (`cod_livro`) REFERENCES `livros` (`cod_livro`),
  ADD CONSTRAINT `FK_Reservas__cod_usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`);

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_Usuarios_cod_endereco` FOREIGN KEY (`cod_Endereco`) REFERENCES `enderecos` (`cod_endereco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
