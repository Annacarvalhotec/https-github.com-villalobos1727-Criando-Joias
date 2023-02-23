-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Fev-2023 às 23:37
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
-- Banco de dados: `joias`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
CREATE TABLE `carrinho` (
  `codigoproduto` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `valor` double NOT NULL,
  `quantcompra` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`codigoproduto`, `nome`, `valor`, `quantcompra`, `foto`) VALUES
(13, 'conjunto completo', 120, 1, 'img/63f7d73a97a27.jpg'),
(13, 'conjunto completo', 120, 1, 'img/63f7d73a97a27.jpg'),
(13, 'conjunto completo', 120, 1, 'img/63f7d73a97a27.jpg'),
(13, 'conjunto completo', 120, 1, 'img/63f7d73a97a27.jpg'),
(13, 'conjunto completo', 120, 1, 'img/63f7d73a97a27.jpg'),
(13, 'conjunto completo', 120, 1, 'img/63f7d73a97a27.jpg'),
(13, 'conjunto completo', 120, 1, 'img/63f7d73a97a27.jpg'),
(13, 'conjunto completo', 120, 3, 'img/63f7d73a97a27.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nomecategoria` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nomecategoria`) VALUES
(1, 'Coleção feminina'),
(2, 'Coleção masculina'),
(3, 'Coleção infantil'),
(4, 'acessórios');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `registro` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `sexo` char(1) NOT NULL,
  `cpf` char(14) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `datanascimento` date NOT NULL,
  `cep` char(9) NOT NULL,
  `numerocasa` smallint(6) NOT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`registro`, `nome`, `telefone`, `sexo`, `cpf`, `rg`, `datanascimento`, `cep`, `numerocasa`, `complemento`, `foto`, `email`, `senha`, `status`) VALUES
(1, 'Maria das Graças da Silva', '(21)99886-1055', 'F', '123456893-10', '12555', '2001-08-01', '23085-610', 31, 'ap 102', 'vazio', 'maria@gmail.com', '$2y$10$im0jB8.c.gP0PaUEdCH3B.4IwD8OqIjfT7Bdocr5AmxfYEYbvIecu', 'A'),
(2, 'Pedro', '(21)99999-1055', 'M', '123456789-10', '00012', '1997-10-20', '26551-090', 100, 'fundos', 'vazio', 'pdro@gmail.com', '123', 'A'),
(3, 'Priscila', '(21)99999-9999', 'F', '111.111.111-11', '6565656', '2000-01-01', '23085-610', 100, 'casa', 'fotos/63d93f20ac9ea.png', 'priscila@gmail.com', '$2y$10$d7UaAkDuNw6klWSujVCABOQdwUe4OKhOCDgh7uUf7T5DZCCnc//Be', 'A'),
(4, 'yennifer Guzman', '(21)97864-3324', 'F', '128.238.358-24', '', '1990-10-25', '23078002', 32767, 'apt 34', 'fotos/63f7de809f0fa.jpg', 'yennife23@gmail.com', '$2y$10$ZsNlgLxwou1UPvXgOQd4gOXNT7KPoHZi6ToJK.xN3JFkjaLYa9ORG', ''),
(5, 'pedro rodriguez', '21995478189', 'M', '71245874564', '', '9980-11-28', '22641195', 485, 'apt 210', 'fotos/63f7df36d7a34.jpg', 'rodriguez242@gmail.com', '$2y$10$Hr9zDPSPeJbdX1JaJMeNOuc4JWtzN7zxDnhh4/Ux8Ej2DcHX/ej8S', ''),
(6, 'jessica alvarado', '21984251468', 'F', '71524835928', '', '1989-08-17', '22641196', 254, 'frente da clinica', 'fotos/63f7dff99f632.jpg', 'alvaradojessica@gmail.com', '$2y$10$3DTtxPo9sKNCdM1Pj/pdG.LguxOS0GHkoPWeBL/4ZKOaRhdN1u0R2', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE `funcionario` (
  `cpffuncionario` char(14) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `sexo` char(1) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `cep` char(9) NOT NULL,
  `numerocasa` smallint(6) NOT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`cpffuncionario`, `nome`, `telefone`, `sexo`, `rg`, `cep`, `numerocasa`, `complemento`, `foto`, `email`, `senha`) VALUES
('123', 'Mário Silva', '(21)9999-8888', 'M', '0001', '23085-610', 40, 'ap 202', 'vazio', '', ''),
('456', 'Gabriel Silva', '(21)9999-7777', 'M', '0002', '26551-090', 100, 'casa', 'vazio', '', ''),
('789', 'Mariana Souza', '(21)9999-5555', 'F', '1234', '23085-610', 1820, 'casa', 'vazio', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `iditem` int(11) NOT NULL,
  `idvenda` int(11) NOT NULL,
  `codigoproduto` int(11) NOT NULL,
  `quantcompra` int(11) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE `produto` (
  `codigoproduto` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cor` varchar(30) NOT NULL,
  `valor` double NOT NULL,
  `tamanho` char(2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codigoproduto`, `nome`, `cor`, `valor`, `tamanho`, `quantidade`, `idcategoria`, `foto`) VALUES
(8, 'anel cobra', '', 50, '', 50, 2, 'img/63f7c3e6a85c6.png'),
(9, 'anel dourado', '', 40, '', 50, 2, 'img/63f7d6742511f.png'),
(10, 'anel sao bento', '', 40, '', 50, 2, 'img/63f7d690055e3.png'),
(11, 'colar bala', '', 80, '', 50, 2, 'img/63f7d6aa49a06.png'),
(12, 'colar  gilete', '', 80, '', 50, 2, 'img/63f7d6ccb8636.png'),
(13, 'conjunto completo', '', 120, '', 50, 1, 'img/63f7d73a97a27.jpg'),
(14, 'conjunto esmeralda', '', 80, '', 50, 1, 'img/63f7d75b6a5c8.jpg'),
(15, 'brincos de luxo', '', 50, '', 50, 1, 'img/63f7d7b378f68.jpg'),
(16, 'conjunto sencillo', '', 80, '', 50, 1, 'img/63f7d80d909fc.jpg'),
(17, 'conjuto cadena', '', 80, '', 50, 1, 'img/63f7d82dc2fdf.jpg'),
(18, 'tripulsera', '', 80, '', 50, 1, 'img/63f7d8594e4d7.jpg'),
(19, 'colar perla', '', 120, '', 50, 1, 'img/63f7d8708ccce.jpg'),
(20, 'conjunto azul', '', 80, '', 50, 1, 'img/63f7d8b5b44eb.jpg'),
(21, 'colar bacma', '', 50, '', 50, 3, 'img/63f7d8e1aa328.jpg'),
(23, 'colar borboleta', '', 50, '', 50, 3, 'img/63f7d927e5527.jpg'),
(25, 'colar do carro', '', 50, '', 50, 3, 'img/63f7d95facb73.jpg'),
(26, 'colar do futebol', '', 80, '', 50, 3, 'img/63f7d978761c0.jpg'),
(27, 'conjunto serea', '', 80, '', 50, 3, 'img/63f7d9ab6a44f.jpg'),
(29, 'colar da cruz', '', 80, '', 50, 3, 'img/63f7da929f07a.jpg'),
(30, 'conjunto c p', '', 120, '', 50, 3, 'img/63f7daed346b4.jpg'),
(31, 'brinco especial', '', 80, '', 50, 4, 'img/63f7db3914ebd.jpg'),
(32, 'espelho facila', '', 50, '', 50, 4, 'img/63f7db5014f58.png'),
(33, 'cintillo lazo', '', 80, '', 50, 1, 'img/63f7db627bea4.jpg'),
(34, 'oculos polarizados', '', 80, '', 50, 4, 'img/63f7db7b7f529.png'),
(35, 'oculos retro', '', 50, '', 50, 4, 'img/63f7db90afb06.png'),
(36, 'oculos unissex', '', 70, '', 50, 4, 'img/63f7dbab8501b.png'),
(37, 'pinza', '', 25, '', 50, 4, 'img/63f7dbc47fd9d.png'),
(38, 'palos chines', '', 40, '', 50, 4, 'img/63f7dbd947e26.jpg'),
(39, 'oculos uni p', '', 40, '', 50, 4, 'img/63f7dc4318c8e.png'),
(40, 'kit pulsera', '', 80, '', 50, 2, 'img/63f7dc6fc1b53.png'),
(41, 'pulsera agata', '', 50, '', 50, 2, 'img/63f7dc9254f26.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

DROP TABLE IF EXISTS `venda`;
CREATE TABLE `venda` (
  `idvenda` int(11) NOT NULL,
  `data` date NOT NULL,
  `valor` double NOT NULL,
  `registro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `cep` (`cep`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`cpffuncionario`),
  ADD KEY `cep` (`cep`);

--
-- Índices para tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`iditem`),
  ADD KEY `fc_produto` (`codigoproduto`),
  ADD KEY `fc_venda` (`idvenda`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codigoproduto`),
  ADD KEY `fk_categoria` (`idcategoria`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idvenda`),
  ADD KEY `fc_aluno` (`registro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `iditem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codigoproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `idvenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fc_produto` FOREIGN KEY (`codigoproduto`) REFERENCES `produto` (`codigoproduto`),
  ADD CONSTRAINT `fc_venda` FOREIGN KEY (`idvenda`) REFERENCES `venda` (`idvenda`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `fc_aluno` FOREIGN KEY (`registro`) REFERENCES `cliente` (`registro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
