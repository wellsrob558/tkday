-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 01/11/2024 às 11:36
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kanban_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tarefas`
--

DROP TABLE IF EXISTS `tb_tarefas`;
CREATE TABLE IF NOT EXISTS `tb_tarefas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descricao` text,
  `status` enum('A Fazer','Em Progresso','Concluído') DEFAULT 'A Fazer',
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tb_tarefas`
--

INSERT INTO `tb_tarefas` (`id`, `titulo`, `descricao`, `status`, `data_criacao`) VALUES
(22, 'OutDoor', 'Fazer no Tamanho', 'Em Progresso', '2024-10-16 14:20:23'),
(10, 'Bilbioteca', 'Colocar senha nos computadores', 'A Fazer', '2024-10-08 20:51:18'),
(12, 'RIC TV', 'Verificar o planejamento das inserções na rádio', 'Em Progresso', '2024-10-08 20:52:15'),
(15, 'Painel Solar', 'Verificar o preço da limpeza e se precisa colocar mais paineis', 'A Fazer', '2024-10-08 20:53:57'),
(21, 'Marketing', 'Banner Colônia de Ferias - Post dos Pais Colônia de Ferias', 'A Fazer', '2024-10-16 14:20:06'),
(20, 'Marketing', 'Fazer a publicação de espanhol e do F1', 'A Fazer', '2024-10-11 14:09:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
