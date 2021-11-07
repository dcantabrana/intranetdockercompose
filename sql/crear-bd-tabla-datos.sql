


-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2021 at 03:02 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `intranet`
--
CREATE DATABASE intranet;
USE intranet;
-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `id_departamento` bigint(20) DEFAULT NULL,
  `id_departamento2` bigint(20) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL,
  `puesto` varchar(255) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `apellido`, `calle`, `cp`, `email`, `genero`, `id_departamento`, `id_departamento2`, `login`, `nacimiento`, `nombre`, `pais`, `porcentaje`, `puesto`, `telefono`) VALUES
(1, 'Diaz', 'General Alava', 1010, 'jdiaz@casino-neuchatel.ch', 'H', 1, NULL, 'jdiaz', '1980-01-12', 'Juan', 'Spain', 100, 'Informatico', 999887766),
(2, 'Guerrero', 'Avenida Gasteiz N2', 1013, 'aguerrero@gmail.com', 'M', 3, 2, 'aguerrero', '1990-04-04', 'Amparo', 'Spain', 80, 'Secretaria', 888776655),
(3, 'Gomez', 'Lo que sea', 9999, 'jgomez@ldlld.com', 'M', NULL, NULL, 'jgomez', NULL, 'Juanita', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
