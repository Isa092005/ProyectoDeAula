-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2025 at 03:53 PM
-- Server version: 8.0.41
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transcaribe`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrador`
--

CREATE TABLE `administrador` (
  `id` bigint NOT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `administrador`
--

INSERT INTO `administrador` (`id`, `correo`, `password`, `nombre`, `tipo`) VALUES
(1, 'AdminTranscaApp@gmail.com', '1234', 'AdminTranscaApp', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_trayecto`
--

CREATE TABLE `admin_trayecto` (
  `admin_id` bigint NOT NULL,
  `trayecto_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conductores`
--

CREATE TABLE `conductores` (
  `id` bigint NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo_electronico` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `licencia` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conductores`
--

INSERT INTO `conductores` (`id`, `nombre`, `apellido`, `correo_electronico`, `password`, `licencia`, `tipo`) VALUES
(1, 'Juan', 'Pérez', 'juanperez@gmail.com', 'contraseña_encriptada', 'ABC123456', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `estacion`
--

CREATE TABLE `estacion` (
  `id` bigint NOT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `estacion`
--

INSERT INTO `estacion` (`id`, `latitud`, `longitud`, `nombre`) VALUES
(1, 10.39561937968914, -75.47278370110925, 'Portal'),
(2, 10.394998122577846, -75.47888350497468, 'Madre Bernarda'),
(3, 10.394410511770545, -75.48650810293832, 'La Castellana'),
(4, 10.395172572736675, -75.49040937162854, 'Los Angeles'),
(5, 10.39946011835941, -75.49372703482302, 'Los Ejecutivos'),
(6, 10.403967150680332, -75.49774002102573, 'Villa Olimpica'),
(7, 10.406593353158566, -75.50320081609586, 'Cuatro Vientos'),
(8, 10.40737213840791, -75.50739797892605, 'Republica del Libano'),
(9, 10.408301997279384, -75.5129966302172, 'Barrio España'),
(10, 10.408952846683203, -75.51581047388373, 'Maria Auxiliadora'),
(11, 10.41112288229224, -75.51958379886013, 'El Prado'),
(12, 10.414073954051917, -75.52456179927233, 'Bazurto'),
(13, 10.41669650067727, -75.52797193315821, 'Las Delicias'),
(14, 10.420592142121942, -75.5311389086515, 'La Popa'),
(15, 10.422360851426607, -75.53461627969092, 'Lo Amador'),
(16, 10.425957545066838, -75.54029571883821, 'Chambacu'),
(17, 10.425025403864757, -75.5466026013863, 'Centro'),
(18, 10.419858993765645, -75.55162028190159, 'Bodeguita');

-- --------------------------------------------------------

--
-- Table structure for table `horario`
--

CREATE TABLE `horario` (
  `id` bigint NOT NULL,
  `dia` varchar(255) DEFAULT NULL,
  `hora_fin` varchar(255) DEFAULT NULL,
  `hora_inicio` varchar(255) DEFAULT NULL,
  `conductor_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recarga`
--

CREATE TABLE `recarga` (
  `id` bigint NOT NULL,
  `fecha` date DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `tarjeta_id` bigint NOT NULL,
  `usuario_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tarjeta`
--

CREATE TABLE `tarjeta` (
  `id` bigint NOT NULL,
  `fecha` date DEFAULT NULL,
  `saldo` double NOT NULL,
  `numero_de_barras` varchar(255) DEFAULT NULL,
  `usuario_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tarjeta`
--

INSERT INTO `tarjeta` (`id`, `fecha`, `saldo`, `numero_de_barras`, `usuario_id`) VALUES
(1, NULL, 59000, '3243243', 10),
(2, NULL, 0, '12434324234', 3),
(3, NULL, 0, '1323214', 9),
(4, NULL, 0, '887644', 4),
(5, NULL, 0, '45565765', 7),
(6, NULL, 22400, '13342342', 11),
(7, NULL, 0, '34354543', 8),
(8, NULL, 3000, '123435', 2),
(9, NULL, 0, '300326', 12),
(10, NULL, 0, '103017', 13),
(11, NULL, 0, '312394', 14),
(12, NULL, 0, '1343424', 15),
(13, NULL, 0, '11001', 16),
(14, NULL, 0, '22001', 18),
(15, NULL, 5000, '101220', 19),
(16, NULL, 0, '32001', 20),
(17, NULL, 0, '33001', 21),
(18, NULL, 0, '11024', 22),
(19, NULL, 0, '11039', 23),
(20, NULL, 3000, '11048', 24),
(21, NULL, 0, '32008', 25),
(22, NULL, 0, '11021', 26),
(23, NULL, 0, '23001', 27),
(24, NULL, 0, '32092', 28),
(25, NULL, 0, '32090', 29),
(26, NULL, 0, '32026', 30),
(27, NULL, 0, '32043', 31),
(28, NULL, 0, '32033', 32),
(29, NULL, 0, '9799769', 33),
(30, NULL, 0, '23015', 34),
(31, NULL, 6000, '1111111111', 35),
(32, NULL, 5000, '15216156', 36),
(33, NULL, 5000, '98623235', 37),
(34, NULL, 23777, '4561375', 38),
(35, NULL, 0, '6432145', 39),
(36, NULL, 6000, '2546541232', 41),
(37, NULL, 547, '5474', 41),
(38, NULL, 5000, '51548', 41),
(39, NULL, 0, '12121212', 41),
(40, NULL, 123, '123123', 42),
(41, NULL, 0, '917be92d-6743-4588-b124-bf6ca1aedcc7', 43),
(42, NULL, 0, '491923f2-acbe-446e-9e5e-573a3c389af1', 44),
(44, NULL, 0, '79c4084c-19a4-4216-ac1d-a0545964ddc5', 45),
(45, NULL, 0, '988eace9-909f-4e4a-ae99-647307bff739', 46),
(46, NULL, 0, '64b1d480-7867-47b9-92d0-f16a496f7c36', 47),
(47, NULL, 5000, '4c9a6d33-4766-4786-a2d1-7efd1f1242cb', 40),
(48, NULL, 0, 'd5cce1a0-0b5a-4ab6-a020-40fcf06b2c50', 48),
(50, NULL, 0, 'bb76bb6a-3481-4dce-ac72-91664fd9b2a1', 49),
(51, NULL, 5000, 'bd4925ea-faf0-4453-9690-04ee435ebecc', 50),
(52, NULL, 0, '6ffbdb93-2b4d-4cd4-9119-f8ce70228597', 51),
(53, NULL, 17000, '4bc09337-f257-4d4f-868d-4f13f45cef9b', 52);

-- --------------------------------------------------------

--
-- Table structure for table `trayecto`
--

CREATE TABLE `trayecto` (
  `id` bigint NOT NULL,
  `cantidad_estaciones` int DEFAULT NULL,
  `duracion_estimada` double DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tipo_vehiculo` varchar(255) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trayecto`
--

INSERT INTO `trayecto` (`id`, `cantidad_estaciones`, `duracion_estimada`, `nombre`, `tipo_vehiculo`, `estado`) VALUES
(1, 7, 0, 'T100E Portal-Centro', 'Articulado', b'0'),
(2, 13, 0, 'T101 Portal-Centro', 'Articulado', b'0'),
(3, 10, 0, 'T102 Portal-Crespo', 'Padron', b'1'),
(4, 12, 0, 'T103 Portal-Bocagrande', 'Articulado', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `trayecto_estacion`
--

CREATE TABLE `trayecto_estacion` (
  `trayecto_id` bigint NOT NULL,
  `estacion_id` bigint NOT NULL,
  `orden` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trayecto_estacion`
--

INSERT INTO `trayecto_estacion` (`trayecto_id`, `estacion_id`, `orden`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 7, 0),
(1, 10, 0),
(1, 17, 0),
(1, 18, 0),
(2, 1, 0),
(2, 2, 0),
(2, 3, 0),
(2, 5, 0),
(2, 6, 0),
(2, 7, 0),
(2, 9, 0),
(2, 11, 0),
(2, 12, 0),
(2, 14, 0),
(2, 16, 0),
(2, 17, 0),
(2, 18, 0),
(3, 1, 0),
(3, 2, 0),
(3, 4, 0),
(3, 6, 0),
(3, 8, 0),
(3, 10, 0),
(3, 11, 0),
(3, 12, 0),
(3, 16, 0),
(3, 17, 0),
(3, 18, 0),
(4, 1, 0),
(4, 2, 0),
(4, 3, 0),
(4, 4, 0),
(4, 5, 0),
(4, 7, 0),
(4, 9, 0),
(4, 12, 0),
(4, 14, 0),
(4, 16, 0),
(4, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint NOT NULL,
  `contraseña` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `contraseña`, `email`, `fecha_nacimiento`, `nombres`, `sexo`, `apellido`, `tipo`) VALUES
(1, '1234', 'Damir@gmail.com', '2024-10-24', 'Damir', 'Masculino', NULL, NULL),
(2, '123456', 'cjmm@gmail.com', '2004-10-10', 'Carol', 'Femenino', NULL, NULL),
(3, '14242323', 'juanocon274@gmail.com', '2006-03-30', 'Juan', 'Masculino', NULL, NULL),
(4, 'daniloandres', 'danilocamachoa@gmail.com', '2006-06-07', 'Danilo', 'Masculino', NULL, NULL),
(5, 'juanes12w', 'camilo@gmail.com', '2003-02-12', 'Camila', 'masculino', NULL, NULL),
(6, 'wrwesdfsdfs', 'daniela@hotmail.com', '2342-04-02', 'Damir', 'masculino', NULL, NULL),
(7, 'luis123', 'luishs@hotmail.com', '2005-08-25', 'Luis', 'masculino', NULL, NULL),
(8, 'gustav123', 'gustav@gmal.com', '2024-11-21', 'Gustavo', 'masculino', NULL, NULL),
(9, 'jesus123', 'jesusdov@gmail.com', '2000-10-10', 'Jesus David', 'masculino', 'Ocon', NULL),
(10, 'irma21', 'irma@gmail.com', '2006-02-21', 'Irma', 'Femenino', 'Noguera Ocon', NULL),
(11, 'emerson123', 'emerson@gmail.com', '2009-10-27', 'Emerson', 'Masculino', 'Noguera Ocon', NULL),
(12, '3344532', 'santi@gmail.com', '2008-10-02', 'Santiago', 'Masculino', 'Noguera Hernandez', NULL),
(13, '3124353', 'andresfr@gmail.com', '2005-10-02', 'Andres Felipe', 'Masculino', 'Rojas', NULL),
(14, 'juanorcz123', 'juanorocz@hotmail.com', '1980-03-12', 'Juan Jose', 'Masculino', 'Orozco', NULL),
(15, '123456789', 'trianah@gmail.com', '2005-03-01', 'Triana Maria', 'Masculino', 'Hernandez', NULL),
(16, '56789', 'humberlg@hotmail.com', '1978-10-12', 'Humberto Lopez', 'Masculino', 'Gomez Hernandez', NULL),
(17, 'julia1234', 'juliab@gmail.com', '2005-05-20', 'Julia ', 'Masculino', 'Beltran', NULL),
(18, 'shirley123', 'shirleyev@gmail.com', '2005-03-04', 'Shirley Maria', 'Masculino', 'Elguedo Varon', NULL),
(19, '1234567', 'aleja@gmail.com', '2006-01-01', 'Alejandra', 'Femenino', 'Castillo', NULL),
(20, 'anarco2323', 'anarcopr@gmail.com', '1984-12-21', 'Ana de Arco', 'Femenino', 'Pérez Rodriguez', NULL),
(21, '12345678', 'danielgomez_r@gmail.com', '2001-02-09', 'Daniel', 'Masculino', 'Gomez Rojas', NULL),
(22, 'Danielito123', 'Daniel_M@gmail.com', '1995-02-09', 'Daniel', 'Masculino', 'Muñoz', NULL),
(23, 'James10', 'James_D_R@hotmail.com', '1988-04-02', 'James David', 'Masculino', 'Rodriguez', NULL),
(24, 'messitupapa', 'Leo10@gmail.com', '1885-05-05', 'Leonel Andres', 'Masculino', 'Messi', NULL),
(25, 'supermax', 'Max1_33@gmail.com', '1997-09-30', 'Max Emilian', 'Masculino', 'Verstappen', NULL),
(26, 'angelito11', 'Angelito_Maria@gmail.com', '1988-04-02', 'Angel', 'Masculino', 'Di Maria', NULL),
(27, 'robert09', 'robert_09_lewy@gmail.com', '1989-09-09', 'Robert', 'Masculino', 'Lewandowski', NULL),
(28, 'zulaytecno', 'zulay_c@gmail.com', '1985-02-03', 'Zulay', 'Masculino', 'Contreras', NULL),
(29, 'montoya7', 'Juan_Montoya@gmail.com', '1980-03-12', 'Juan Pablo', 'Masculino', 'Montoya', NULL),
(30, 'rafa2011', 'rafita-11-N@gmail.com', '2000-11-20', 'Rafael Andres', 'Masculino', 'Noguera', NULL),
(31, 'felo16', 'felipe-almeida@hotmail.com', '2006-04-20', 'Felipe', 'Masculino', 'Almeida', NULL),
(32, 'maria12', 'maria@hotmail.com', '2001-02-23', 'Mariana', 'Femenino', 'Lopez', NULL),
(33, 'camilogd', 'camilo.duarte@gmail.com', '2005-12-12', 'Camilo', 'Masculino', 'Girado', NULL),
(34, 'luist13', 'luistorresl@hotmail.com', '2001-03-10', 'Luis Fernando', 'Masculino', 'Torres Lopez', NULL),
(35, 'juanmelapela', 'danilocamacho@gmail.com', '2006-06-07', 'Danilo', 'Masculino', 'Camacho', NULL),
(36, '123456789', 'miklance123@gmail.com', '2005-12-15', 'damir', 'Masculino', 'cortina', NULL),
(37, '1234', 'fagarra@gmail.com', '2002-10-08', 'Fabio', 'Masculino', 'Garcia', NULL),
(38, 'Guerrero0920', 'isagonzalezg2005@gmail.com', '2005-09-20', 'Isabella', 'Femenino', 'Gonzalez', NULL),
(39, '12345', 'danilo@gmail.com', '2006-07-07', 'Danilo', 'Masculino', 'Camacho', NULL),
(40, '123456789', '12345@gmail.com', '2004-12-15', 'damir', 'Masculino', 'cortina', NULL),
(41, '123456789', '123456@gmail.com', '2004-12-15', 'Isabella', 'Masculino', 'Diaz', NULL),
(42, '123123123', 'ponton@gmail.com', '1222-12-12', 'Manuel', 'Masculino', 'ponron', NULL),
(43, '123123123', 'isa@gmail.com', '1233-03-12', 'Isabella', 'Masculino', 'Diaz', NULL),
(44, '123123', 'Roswar@gmail.com', '1222-12-12', 'Roswar', 'Masculino', 'cortina', NULL),
(45, '1234', '1234@gmail.com', '2202-12-15', 'damir', 'Masculino', 'Diaz', NULL),
(46, '1234', '123@gmail.com', '1213-02-12', 'Roswar', 'Masculino', 'cortina', NULL),
(47, '1234', '12@gmail.com', '1222-12-12', 'damir', 'Masculino', 'cortina', NULL),
(48, '1234', 'manue@gmail.com', '1222-12-12', 'damir', 'Masculino', 'cortina', 'USUARIO'),
(49, '1234', 'gdamir@gmail.com', '2005-12-12', 'damir', 'Masculino', 'Gonzalez', 'USUARIO'),
(50, '1234', 'mdamir@gmail.com', '1222-12-12', 'damir', 'Masculino', 'Diaz', 'USUARIO'),
(51, '123456', '132@gmail.com', '2001-12-15', 'Roswar', 'Masculino', 'cortina', 'USUARIO'),
(52, '1234', 'dam@gmail.com', '2004-12-15', 'damir', 'Masculino', 'Diaz', 'USUARIO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_trayecto`
--
ALTER TABLE `admin_trayecto`
  ADD KEY `FKdxe3tp49ywe2fqnagvn4ocgqy` (`trayecto_id`),
  ADD KEY `FK7q0n40fdqcmlxvvd5944x0xr4` (`admin_id`);

--
-- Indexes for table `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`);

--
-- Indexes for table `estacion`
--
ALTER TABLE `estacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgbi0hq5pmaddki9012evhine4` (`conductor_id`);

--
-- Indexes for table `recarga`
--
ALTER TABLE `recarga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2gxg3p1yrrpst8k8wf0i7bdx9` (`tarjeta_id`),
  ADD KEY `FK8g7xaop95lwqdjpqpg1hlxwo8` (`usuario_id`);

--
-- Indexes for table `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKi48o0uifd70uq2jfsnc7e394u` (`numero_de_barras`),
  ADD KEY `FKgb2oyupb6o2oppce0ow66ykg5` (`usuario_id`);

--
-- Indexes for table `trayecto`
--
ALTER TABLE `trayecto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trayecto_estacion`
--
ALTER TABLE `trayecto_estacion`
  ADD KEY `FKpggq5i7q3wawsljwd3gttwl0d` (`estacion_id`),
  ADD KEY `FKn29942ptcweip0gp48ti1c5xx` (`trayecto_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conductores`
--
ALTER TABLE `conductores`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `estacion`
--
ALTER TABLE `estacion`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `horario`
--
ALTER TABLE `horario`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recarga`
--
ALTER TABLE `recarga`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tarjeta`
--
ALTER TABLE `tarjeta`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `trayecto`
--
ALTER TABLE `trayecto`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_trayecto`
--
ALTER TABLE `admin_trayecto`
  ADD CONSTRAINT `FK7q0n40fdqcmlxvvd5944x0xr4` FOREIGN KEY (`admin_id`) REFERENCES `administrador` (`id`),
  ADD CONSTRAINT `FKdxe3tp49ywe2fqnagvn4ocgqy` FOREIGN KEY (`trayecto_id`) REFERENCES `trayecto` (`id`);

--
-- Constraints for table `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `FKgbi0hq5pmaddki9012evhine4` FOREIGN KEY (`conductor_id`) REFERENCES `conductores` (`id`);

--
-- Constraints for table `recarga`
--
ALTER TABLE `recarga`
  ADD CONSTRAINT `FK2gxg3p1yrrpst8k8wf0i7bdx9` FOREIGN KEY (`tarjeta_id`) REFERENCES `tarjeta` (`id`),
  ADD CONSTRAINT `FK8g7xaop95lwqdjpqpg1hlxwo8` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Constraints for table `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD CONSTRAINT `FKgb2oyupb6o2oppce0ow66ykg5` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Constraints for table `trayecto_estacion`
--
ALTER TABLE `trayecto_estacion`
  ADD CONSTRAINT `FKn29942ptcweip0gp48ti1c5xx` FOREIGN KEY (`trayecto_id`) REFERENCES `trayecto` (`id`),
  ADD CONSTRAINT `FKpggq5i7q3wawsljwd3gttwl0d` FOREIGN KEY (`estacion_id`) REFERENCES `estacion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
