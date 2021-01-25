-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-01-2020 a las 17:09:43
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apsystem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$UrGSvHTWm8.ZK4BzPmo8iuqsK6XF5RfHay6ooC5D50y/nShon5wqe', 'Diego', 'Figueroa', 'logo.png', '2019-12-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `date`, `time_in`, `status`, `time_out`, `num_hr`) VALUES
(1, 1, '2020-12-23', '07:00:30', 0, '16:00:30', 8),
(2, 2, '2020-12-23', '08:00:30', 0, '17:00:30', 8),
(3, 3, '2020-12-23', '09:00:30', 0, '18:00:30', 8),
(4, 4, '2020-12-23', '10:00:30', 0, '19:00:30', 8),

(5, 1, '2020-12-24', '07:00:00', 0, '16:00:00', 8),
(6, 2, '2020-12-24', '08:00:00', 0, '17:00:00', 8),
(7, 3, '2020-12-24', '09:00:00', 0, '18:00:00', 8),
(8, 4, '2020-12-24', '10:00:00', 0, '19:00:00', 8),

(9, 1, '2020-12-25', '07:00:00', 0, '16:00:00', 8),
(10, 2, '2020-12-25', '08:00:00', 0, '17:00:00', 8),
(11, 3, '2020-12-25', '09:00:00', 0, '18:00:00', 8),
(12, 4, '2020-12-25', '10:00:00', 0, '19:00:00', 8),

(13, 1, '2020-12-26', '07:00:30', 0, '16:00:30', 8),
(14, 2, '2020-12-26', '08:00:30', 0, '17:00:30', 8),
(15, 3, '2020-12-26', '09:00:30', 0, '18:00:30', 8),
(16, 4, '2020-12-26', '10:00:30', 0, '19:00:30', 8),

(17, 1, '2020-12-27', '07:00:30', 0, '16:00:30', 8),
(18, 2, '2020-12-27', '08:00:30', 0, '17:00:30', 8),
(19, 3, '2020-12-27', '09:00:30', 0, '18:00:30', 8),
(20, 4, '2020-12-27', '10:00:30', 0, '19:00:30', 8),

(21, 1, '2020-12-28', '07:00:30', 0, '16:00:30', 8),
(22, 2, '2020-12-28', '08:00:30', 0, '17:00:30', 8),
(23, 3, '2020-12-28', '09:00:30', 0, '18:00:30', 8),
(24, 4, '2020-12-28', '10:00:30', 0, '19:00:30', 8),

(25, 1, '2020-12-29', '07:00:00', 1, '16:00:00', 8),
(26, 2, '2020-12-29', '08:00:00', 1, '17:00:00', 8),
(27, 3, '2020-12-29', '09:00:00', 1, '18:00:00', 8),
(28, 4, '2020-12-29', '10:00:00', 1, '19:00:00', 8),

(29, 1, '2020-12-30', '07:00:00', 1, '16:00:00', 8),
(30, 2, '2020-12-30', '08:00:00', 1, '17:00:00', 8),
(31, 3, '2020-12-30', '09:00:00', 1, '18:00:00', 8),
(32, 4, '2020-12-30', '10:00:00', 1, '19:00:00', 8),

(33, 1, '2020-12-31', '07:00:00', 1, '16:00:00', 8),
(34, 2, '2020-12-31', '08:00:00', 1, '17:00:00', 8),
(35, 3, '2020-12-31', '09:00:00', 1, '18:00:00', 8),
(36, 4, '2020-12-31', '10:00:00', 1, '19:00:00', 8),

(37, 1, '2021-01-01', '07:00:00', 1, '16:00:00', 8),
(38, 2, '2021-01-01', '08:00:00', 1, '17:00:00', 8),
(39, 3, '2021-01-01', '09:00:00', 1, '18:00:00', 8),
(40, 4, '2021-01-01', '10:00:00', 1, '19:00:00', 8),

(41, 1, '2021-01-02', '07:00:00', 1, '16:00:00', 8),
(42, 2, '2021-01-02', '08:00:00', 1, '17:00:00', 8),
(43, 3, '2021-01-02', '09:00:00', 1, '18:00:00', 8),
(44, 4, '2021-01-02', '10:00:00', 1, '19:00:00', 8),

(45, 1, '2021-01-03', '07:00:00', 1, '16:00:00', 8),
(46, 2, '2021-01-03', '08:00:00', 1, '17:00:00', 8),
(47, 3, '2021-01-03', '09:00:00', 1, '18:00:00', 8),
(48, 4, '2021-01-03', '10:00:00', 1, '19:00:00', 8),

(49, 1, '2021-01-04', '07:00:00', 1, '16:00:00', 8),
(50, 2, '2021-01-04', '08:00:00', 1, '17:00:00', 8),
(51, 3, '2021-01-04', '09:00:00', 1, '18:00:00', 8),
(52, 4, '2021-01-04', '10:00:00', 1, '19:00:00', 8),

(53, 1, '2021-01-05', '07:00:00', 1, '16:00:00', 8),
(54, 2, '2021-01-05', '08:00:00', 1, '17:00:00', 8),
(55, 3, '2021-01-05', '09:00:00', 1, '18:00:00', 8),
(56, 4, '2021-01-05', '10:00:00', 1, '19:00:00', 8),

(57, 1, '2021-01-06', '07:00:00', 1, '16:00:00', 8),
(58, 2, '2021-01-06', '08:00:00', 1, '17:00:00', 8),
(59, 3, '2021-01-06', '09:00:00', 1, '18:00:00', 8),
(60, 4, '2021-01-06', '10:00:00', 1, '19:00:00', 8),

(61, 1, '2021-01-07', '07:00:00', 1, '16:00:00', 8),
(62, 2, '2021-01-07', '08:00:00', 1, '17:00:00', 8),
(63, 3, '2021-01-07', '09:00:00', 1, '18:00:00', 8),
(64, 4, '2021-01-07', '10:00:00', 1, '19:00:00', 8),

(65, 1, '2021-01-08', '07:00:00', 1, '16:00:00', 8),
(66, 2, '2021-01-08', '08:00:00', 1, '17:00:00', 8),
(67, 3, '2021-01-08', '09:00:00', 1, '18:00:00', 8),
(68, 4, '2021-01-08', '10:00:00', 1, '19:00:00', 8),

(69, 1, '2021-01-09', '07:00:00', 1, '16:00:00', 8),
(70, 2, '2021-01-09', '08:00:00', 1, '17:00:00', 8),
(71, 3, '2021-01-09', '09:00:00', 1, '18:00:00', 8),
(72, 4, '2021-01-09', '10:00:00', 1, '19:00:00', 8),

(73, 1, '2021-01-10', '07:00:00', 1, '16:00:00', 8),
(74, 2, '2021-01-10', '08:00:00', 1, '17:00:00', 8),
(75, 3, '2021-01-10', '09:00:00', 1, '18:00:00', 8),
(76, 4, '2021-01-10', '10:00:00', 1, '19:00:00', 8),

(77, 1, '2021-01-11', '07:00:00', 1, '16:00:00', 8),
(78, 2, '2021-01-11', '08:00:00', 1, '17:00:00', 8),
(79, 3, '2021-01-11', '09:00:00', 1, '18:00:00', 8),
(80, 4, '2021-01-11', '10:00:00', 1, '19:00:00', 8),

(81, 1, '2021-01-12', '07:00:00', 1, '16:00:00', 8),
(82, 2, '2021-01-12', '08:00:00', 1, '17:00:00', 8),
(83, 3, '2021-01-12', '09:00:00', 1, '18:00:00', 8),
(84, 4, '2021-01-12', '10:00:00', 1, '19:00:00', 8),

(85, 1, '2021-01-13', '07:00:00', 1, '16:00:00', 8),
(86, 2, '2021-01-13', '08:00:00', 1, '17:00:00', 8),
(87, 3, '2021-01-13', '09:00:00', 1, '18:00:00', 8),
(88, 4, '2021-01-13', '10:00:00', 1, '19:00:00', 8),

(89, 1, '2021-01-14', '07:00:00', 1, '16:00:00', 8),
(90, 2, '2021-01-14', '08:00:00', 1, '17:00:00', 8),
(91, 3, '2021-01-14', '09:00:00', 1, '18:00:00', 8),
(92, 4, '2021-01-14', '10:00:00', 1, '19:00:00', 8),

(93, 1, '2021-01-15', '07:00:00', 1, '16:00:00', 8),
(94, 2, '2021-01-15', '08:00:00', 1, '17:00:00', 8),
(95, 3, '2021-01-15', '09:00:00', 1, '18:00:00', 8),
(96, 4, '2021-01-15', '10:00:00', 1, '19:00:00', 8),

(97, 1, '2021-01-16', '07:00:00', 1, '16:00:00', 8),
(98, 2, '2021-01-16', '08:00:00', 1, '17:00:00', 8),
(99, 3, '2021-01-16', '09:00:00', 1, '18:00:00', 8),
(100, 4, '2021-01-16', '10:00:00', 1, '19:00:00', 8),

(101, 1, '2021-01-17', '07:00:00', 1, '16:00:00', 8),
(102, 2, '2021-01-17', '08:00:00', 1, '17:00:00', 8),
(103, 3, '2021-01-17', '09:00:00', 1, '18:00:00', 8),
(104, 4, '2021-01-17', '10:00:00', 1, '19:00:00', 8),

(105, 1, '2021-01-18', '07:00:00', 1, '16:00:00', 8),
(106, 2, '2021-01-18', '08:00:00', 1, '17:00:00', 8),
(107, 3, '2021-01-18', '09:00:00', 1, '18:00:00', 8),
(108, 4, '2021-01-18', '10:00:00', 1, '19:00:00', 8),

(109, 1, '2021-01-19', '07:00:00', 1, '16:00:00', 8),
(110, 2, '2021-01-19', '08:00:00', 1, '17:00:00', 8),
(111, 3, '2021-01-19', '09:00:00', 1, '18:00:00', 8),
(112, 4, '2021-01-19', '10:00:00', 1, '19:00:00', 8),

(113, 1, '2021-01-20', '07:00:00', 1, '16:00:00', 8),
(114, 2, '2021-01-20', '08:00:00', 1, '17:00:00', 8),
(115, 3, '2021-01-20', '09:00:00', 1, '18:00:00', 8),
(116, 4, '2021-01-20', '10:00:00', 1, '19:00:00', 8),

(117, 1, '2021-01-21', '07:00:00', 1, '16:00:00', 8),
(118, 2, '2021-01-21', '08:00:00', 1, '17:00:00', 8),
(119, 3, '2021-01-21', '09:00:00', 1, '18:00:00', 8),
(120, 4, '2021-01-21', '10:00:00', 1, '19:00:00', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cashadvance`
--

CREATE TABLE `cashadvance` (
  `id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cashadvance`
--

INSERT INTO `cashadvance` (`id`, `date_advance`, `employee_id`, `amount`) VALUES
(1, '2021-01-15', 1, 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deductions`
--

CREATE TABLE `deductions` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `deductions`
--

INSERT INTO `deductions` (`id`, `description`, `amount`) VALUES
(5, 'IMSS (Seguro Social)', 231),
(6, 'ISR', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `position_id`, `schedule_id`, `photo`, `created_on`) VALUES
(1, 'MAW817094635', 'Diego', 'Figueroa', 'Calle 54 N 12-23', '1989-07-12', '', 'Female', 1, 1, '', '2020-01-07'),
(2, 'PJO724930615', 'Rafel', 'Ochoa', 'Av 15 12-72', '1989-06-13', '', 'Male', 2, 2, '', '2020-01-07'),
(3, 'FIC312145972', 'Brayan', 'Arroyo', 'Av 15 12-72', '1989-06-13', '', 'Male', 3, 3, '', '2020-01-07'),
(4, 'BRA928123331', 'Alma', 'Chavez', 'Av 15 12-72', '1989-06-13', '', 'Male', 4, 4, '', '2020-01-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `overtime`
--

CREATE TABLE `overtime` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `position`
--

INSERT INTO `position` (`id`, `description`, `rate`) VALUES
(1, 'Programador', 125),
(2, 'Escritor', 100),
(3, 'Marketing ', 90),
(4, 'Diseñador Gráfico', 95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `schedules`
--

INSERT INTO `schedules` (`id`, `time_in`, `time_out`) VALUES
(1, '07:00:00', '16:00:00'),
(2, '08:00:00', '17:00:00'),
(3, '09:00:00', '18:00:00'),
(4, '10:00:00', '19:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cashadvance`
--
ALTER TABLE `cashadvance`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `cashadvance`
--
ALTER TABLE `cashadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `overtime`
--
ALTER TABLE `overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
