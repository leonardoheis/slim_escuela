-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2017 at 05:36 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escuela`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`id`, `curso_id`, `nombre`, `apellido`, `direccion`) VALUES
(1, 1, 'Cristian', 'Mendez', 'Suipacha 954'),
(2, 1, 'Carlos', 'Lobos', 'Italia 339'),
(3, 1, 'Marcelo', 'Rogani', 'Santa Fe 1173 1º B'),
(4, 2, 'Federico', 'Castillo', 'Ayacucho 5152'),
(5, 2, 'Ivan', 'Cantero', 'Juan B. Justo 2542'),
(6, 3, 'Ezequiel', 'Sanz', 'Laprida 808 5º A');

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(6) NOT NULL,
  `posicion` int(3) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `descripcion`, `posicion`, `visibilidad`) VALUES
(1, '2do1ra', 1, 1),
(2, '2do2da', 2, 0),
(3, '2do3ra', 3, 1),
(4, '2do4ta', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(13, 'Pla', '$2y$10$TmKiMJfBy/QPUDr3TggY4OGlHdTpb5prnctPSahsE/hruLsHFc0/a', '2017-10-23 08:36:34', '2017-10-23 08:36:34'),
(14, 'marcelo', '$2y$10$y5WhJr3sLqw2iKmTz.Y3N.cGo1mEzwTTtgHcaaQa2l9u/0mCFgJ1C', '2017-10-23 08:36:41', '2017-10-23 08:36:41'),
(15, 'marce', '$2y$10$a2eJIksK83CJ5qtHQromxeXMhKzXUkr6ZmOeDTA0RX/v3ZXqGbmae', '2017-10-23 08:36:46', '2017-10-23 08:36:46'),
(16, 'leonardo', '$2y$10$Xt1XuM19k4VZF01Oikt5m.NaYi3xHUArK1XAoT5RI8mSt7FNND93O', '2017-10-25 07:54:19', '2017-10-25 07:54:19'),
(17, 'leop', '$2y$10$vg4fj/dIwe1nl3kQLbC3U.soyxqD8CKFgLtZg2Cff.zEygC6hIoAK', '2017-10-25 08:20:23', '2017-10-25 08:20:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
