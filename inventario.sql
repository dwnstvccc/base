-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2024 a las 02:12:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `genero` enum('M','F') DEFAULT NULL,
  `nombre_cliente` varchar(45) DEFAULT NULL,
  `direccion_cliente` varchar(45) DEFAULT NULL,
  `localidad_y_codigo_postal` varchar(45) DEFAULT NULL,
  `telefono_cliente` varchar(20) NOT NULL,
  `correo_cliente` varchar(45) DEFAULT NULL,
  `fecha_de_compra` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcliente`, `genero`, `nombre_cliente`, `direccion_cliente`, `localidad_y_codigo_postal`, `telefono_cliente`, `correo_cliente`, `fecha_de_compra`) VALUES
(1, 'M', 'Juan Pérez', 'Calle Principal 123', 'Ciudad de México, 12345', '+52 55 1234 5678', 'juan@example.com', '2024-05-15'),
(2, 'F', 'María García', 'Avenida Libertad 456', 'Buenos Aires, 1000', '+54 9 11 2345 6789', 'maria@gmail.com', '2024-04-20'),
(3, 'M', 'Luis Martínez', 'Calle Sol 789', 'Madrid, 28001', '+34 91 987 6543', 'luis@hotmail.com', '2024-03-10'),
(4, 'F', 'Ana López', 'Calle Central 246', 'Santiago, 7500000', '+56 2 1234 5678', 'ana@yahoo.com', '2024-02-05'),
(5, 'M', 'Carlos González', 'Avenida del Bosque 357', 'Lima, 15046', '+51 1 234 5678', 'carlos@example.com', '2024-01-08'),
(6, 'M', 'Modesto de Casares', 'Lyme Street 77', 'Bergenfield, NJ 07621', '(598) 451-5865', 'uraeus@mac.com', '2012-01-09'),
(7, 'F', 'Patricio Manzano Pomares', 'S. Fifth Street 7943', 'Hermitage, TN 37076', '(869) 771-1487', 'bhima@me.com', '2005-03-22'),
(8, 'M', 'Berto del Morales', '9448 Fairfield St', '9448 Fairfield St', 'Aberdeen, SD 57401', '(246) 245-7306', '0000-00-00'),
(9, 'F', 'Nuria Daniela Jáuregui Tejero', '8143 College St', 'Trussville, AL 35173', '(57) 933-2513', 'tbeck@optonline.net', '2021-03-16'),
(10, 'F', 'Anastasia Pedrero Solera', '9893 W. Vale Ave', 'Billings, MT 59101', '(507) 325-0216', 'eegsa@yahoo.ca', '2014-05-17'),
(11, 'F', 'Purificación Salomé Ferrán Valero', '8094 Albany Drive', 'Poughkeepsie, NY 12601', '(47) 564-5230', 'barlow@verizon.net', '2018-07-13'),
(12, 'F', 'Melania Cobos Lozano', '9001 Creek Street', 'Lawrence, MA 01841', '(109) 544-1246', 'wkrebs@me.com', '2017-07-20'),
(13, 'F', 'Otilia Mercader Jimenez', '86 Surrey St', 'Kennewick, WA 99337', '(265) 609-6654', 'flakeg@verizon.net', '2024-01-23'),
(14, 'F', 'Trini Sanabria Frías', '611 Academy Street', 'Dalton, GA 30721', '(241) 282-2848', 'chinthaka@yahoo.ca', '2014-11-27'),
(15, 'F', 'Melisa Rueda Rosado', '9334 Hillside Street', 'Grand Blanc MI 48439', '(66) 735-9451', 'vsprintf@hotmail.com', '2023-10-14'),
(16, 'F', 'Mireia Córdoba Pi', '45 Heritage Ave', 'Fall River, MA 02720', '(561) 649-7485', 'uncle@hotmail.com', '2012-04-13'),
(17, 'F', 'Nadia Reyes Bosch', '9028 Boston Street', 'Rego Park, NY 11374', '(30) 491-4988', 'slaff@icloud.com', '2015-08-19'),
(18, 'F', 'Evangelina Font Lago', '57 Green Drive', 'Fair Lawn, NJ 07410', '(409) 782-6044', 'dleconte@outlook.com', '2013-06-17'),
(19, 'M', 'Juan Pérez', 'Calle 123', 'Ciudad ABC, 12345', '123-456-7890', 'juan@yahoo.ca', '2024-05-01'),
(20, 'F', 'María García', 'Avenida XYZ', 'Ciudad XYZ, 54321', '234-567-8901', 'maria@me.com', '2024-05-02'),
(21, 'M', 'Pedro Martínez', 'Carrera 456', 'Pueblo DEF, 67890', '345-678-9012', 'pedro@yahoo.ca', '2024-05-03'),
(22, 'F', 'Ana López', 'Calle Principal', 'Villa GHI, 09876', '456-789-0123', 'ana@me.com', '2024-05-04'),
(23, 'M', 'Carlos Rodríguez', 'Avenida Central', 'Ciudad JKL, 54321', '567-890-1234', 'carlos@yahoo.ca', '2024-05-05'),
(24, 'F', 'Laura Hernández', 'Calle Secundaria', 'Pueblo MNO, 98765', '678-901-2345', 'laura@me.com', '2024-05-06'),
(25, 'M', 'Miguel Sánchez', 'Carrera 789', 'Ciudad PQR, 12345', '789-012-3456', 'miguel@yahoo.ca', '2024-05-07'),
(26, 'F', 'Sofía González', 'Avenida Norte', 'Pueblo STU, 54321', '890-123-4567', 'sofia@me.com', '2024-05-08'),
(27, 'M', 'Javier Díaz', 'Calle Sur', 'Villa VWX, 09876', '901-234-5678', 'javier@yahoo.ca', '2024-05-09'),
(28, 'F', 'Elena Vázquez', 'Avenida Este', 'Ciudad YZA, 98765', '012-345-6789', 'elena@me.com', '2024-05-10'),
(29, 'M', 'Ricardo Gómez', 'Carrera 012', 'Pueblo BCD, 12345', '123-456-7890', 'ricardo@yahoo.ca', '2024-05-11'),
(30, 'F', 'Isabel Torres', 'Calle Oeste', 'Villa EFG, 54321', '234-567-8901', 'isabel@me.com', '2024-05-12'),
(31, 'M', 'Francisco Ramírez', 'Avenida Principal', 'Ciudad HIJ, 09876', '345-678-9012', 'francisc@yahoo.ca.', '2024-05-13'),
(32, 'F', 'Carmen Jiménez', 'Calle Secundaria', 'Pueblo KLM, 98765', '456-789-0123', 'carmen@verizon.net', '2024-05-14'),
(33, 'M', 'Diego Alonso', 'Carrera Principal', 'Villa NOP, 12345', '567-890-1234', 'diego@verizon.net', '2024-05-15'),
(34, 'F', 'Patricia Gutiérrez', 'Avenida Secundaria', 'Ciudad QRS, 54321', '678-901-2345', 'patricia@verizon.net', '2024-05-16'),
(35, 'M', 'Luis Herrera', 'Calle Norte', 'Pueblo TUV, 09876', '789-012-3456', 'luis@yahoo.ca', '2024-05-17'),
(36, 'F', 'Raquel Castro', 'Avenida Sur', 'Villa WXY, 98765', '890-123-4567', 'raquel@verizon.net', '2024-05-18'),
(37, 'M', 'Roberto Blanco', 'Carrera Este', 'Ciudad ZAB, 12345', '901-234-5678', 'roberto@verizon.net', '2024-05-19'),
(38, 'F', 'Natalia Méndez', 'Calle Oeste', 'Pueblo CDE, 54321', '012-345-6789', 'natalia@yahoo.ca', '2024-05-20'),
(39, 'M', 'Jorge Torres', 'Avenida Norte', 'Villa FGH, 09876', '123-456-7890', 'jorge@verizon.net', '2024-05-21'),
(40, 'F', 'Andrea Ruiz', 'Calle Sur', 'Ciudad IJK, 98765', '234-567-8901', 'andrea@yahoo.ca', '2024-05-22'),
(41, 'M', 'Fernando Pérez', 'Carrera Este', 'Pueblo LMN, 12345', '345-678-9012', 'fernando@example.com', '2024-05-23'),
(42, 'F', 'Paula Martínez', 'Avenida Principal', 'Villa OPQ, 54321', '456-789-0123', 'paula@yahoo.ca', '2024-05-24'),
(43, 'M', 'Gonzalo Sánchez', 'Calle Secundaria', 'Ciudad RST, 09876', '567-890-1234', 'gonzalo@example.com', '2024-05-25'),
(44, 'F', 'Marta Gómez', 'Avenida Norte', 'Pueblo UVW, 98765', '678-901-2345', 'marta@yahoo.ca', '2024-05-26'),
(45, 'M', 'Gabriel Díaz', 'Calle Sur', 'Villa XYZ, 12345', '789-012-3456', 'gabrielf@icloud.com', '2024-05-27'),
(46, 'F', 'Silvia Vázquez', 'Carrera Oeste', 'Ciudad ABC, 54321', '890-123-4567', 'silviaf@icloud.com', '2024-05-28'),
(47, 'M', 'Hugo Ramírez', 'Avenida Este', 'Pueblo DEF, 09876', '901-234-5678', 'hugo@yahoo.ca', '2024-05-29'),
(48, 'F', 'Sara Jiménez', 'Calle Principal', 'Villa GHI, 98765', '012-345-6789', 'saraf@icloud.com', '2024-05-30'),
(49, 'M', 'José Alonso', 'Carrera Secundaria', 'Ciudad JKL, 12345', '123-456-7890', 'josef@icloud.com', '2024-05-31'),
(50, 'F', 'Eva Gutiérrez', 'Avenida Norte', 'Pueblo MNO, 54321', '234-567-8901', 'eva@yahoo.ca', '2024-06-01'),
(51, 'M', 'Mario Herrera', 'Calle Sur', 'Villa PQR, 09876', '345-678-9012', 'marif@icloud.com', '2024-06-02'),
(52, 'F', 'Lucía Castro', 'Carrera Principal', 'Ciudad STU, 98765', '456-789-0123', 'luciaf@icloud.com', '2024-06-03'),
(53, 'M', 'Rafael Blanco', 'Avenida Este', 'Pueblo VWX, 12345', '567-890-1234', 'rafael@yahoo.ca', '2024-06-04'),
(54, 'F', 'Beatriz Méndez', 'Calle Oeste', 'Villa YZA, 54321', '678-901-2345', 'beatrizf@icloud.com', '2024-06-05'),
(55, 'M', 'Alberto Torres', 'Avenida Norte', 'Ciudad BCD, 09876', '789-012-3456', 'alberto@yahoo.ca', '2024-06-06'),
(56, 'F', 'Victoria Ruiz', 'Calle Sur', 'Pueblo EFG, 98765', '890-123-4567', 'victoriaf@icloud.com', '2024-06-07'),
(57, 'M', 'Ángel Martínez', 'Carrera Principal', 'Villa HIJ, 12345', '901-234-5678', 'angelf@icloud.com', '2024-06-08'),
(58, 'F', 'Marina Sánchez', 'Avenida Secundaria', 'Ciudad KLM, 54321', '012-345-6789', 'marinaa@yahoo.ca', '2024-06-09'),
(59, 'M', 'Pablo Gómez', 'Calle Norte', 'Pueblo NOP, 09876', '123-456-7890', 'pablof@icloud.com', '2024-06-10'),
(60, 'F', 'Lorena Gutiérrez', 'Avenida Sur', 'Villa QRS, 98765', '234-567-8901', 'lorena@yahoo.ca', '2024-06-11'),
(61, 'M', 'Sergio Ramírez', 'Carrera Este', 'Ciudad TUV, 12345', '345-678-9012', 'sergiof@icloud.com', '2024-06-12'),
(62, 'F', 'Nuria Jiménez', 'Calle Oeste', 'Pueblo WXY, 54321', '456-789-0123', 'nuria@yahoo.ca', '2024-06-13'),
(63, 'M', 'Félix Alonso', 'Avenida Norte', 'Villa ZAB, 09876', '567-890-1234', 'felixf@icloud.com', '2024-06-14'),
(64, 'F', 'Elena Díaz', 'Calle Sur', 'Ciudad CDE, 98765', '678-901-2345', 'elena@yahoo.ca', '2024-06-15'),
(65, 'M', 'Juan Pérez', 'Calle 123', 'Ciudad ABC, 12345', '123-456-7890', 'juan@yahoo.ca', '2024-05-01'),
(66, 'F', 'María García', 'Avenida XYZ', 'Ciudad XYZ, 54321', '234-567-8901', 'maria@yahoo.ca', '2024-05-02'),
(67, 'M', 'Pedro Martínez', 'Carrera 456', 'Pueblo DEF, 67890', '345-678-9012', 'pedro@yahoo.ca', '2024-05-03'),
(68, 'F', 'Ana López', 'Calle Principal', 'Villa GHI, 09876', '456-789-0123', 'ana@yahoo.ca', '2024-05-04'),
(69, 'M', 'Carlos Rodríguez', 'Avenida Central', 'Ciudad JKL, 54321', '567-890-1234', 'carlo@yahoo.ca', '2024-05-05'),
(70, 'F', 'Laura Hernández', 'Calle Secundaria', 'Pueblo MNO, 98765', '678-901-2345', 'laura@yahoo.ca', '2024-05-06'),
(71, 'M', 'Miguel Sánchez', 'Carrera 789', 'Ciudad PQR, 12345', '789-012-3456', 'miguel@yahoo.ca', '2024-05-07'),
(72, 'F', 'Sofía González', 'Avenida Norte', 'Pueblo STU, 54321', '890-123-4567', 'sofia@yahoo.ca', '2024-05-08'),
(73, 'M', 'Javier Díaz', 'Calle Sur', 'Villa VWX, 09876', '901-234-5678', 'javier@yahoo.ca', '2024-05-09'),
(74, 'F', 'Elena Vázquez', 'Avenida Este', 'Ciudad YZA, 98765', '012-345-6789', 'elena@yahoo.ca', '2024-05-10'),
(75, 'M', 'Ricardo Gómez', 'Carrera 012', 'Pueblo BCD, 12345', '123-456-7890', 'ricardo@yahoo.ca', '2024-05-11'),
(76, 'F', 'Isabel Torres', 'Calle Oeste', 'Villa EFG, 54321', '234-567-8901', 'isabel@yahoo.ca', '2024-05-12'),
(77, 'M', 'Francisco Ramírez', 'Avenida Principal', 'Ciudad HIJ, 09876', '345-678-9012', 'francisco@yahoo.ca', '2024-05-13'),
(78, 'F', 'Carmen Jiménez', 'Calle Secundaria', 'Pueblo KLM, 98765', '456-789-0123', 'carmen@@yahoo.ca', '2024-05-14'),
(79, 'M', 'Diego Alonso', 'Carrera Principal', 'Villa NOP, 12345', '567-890-1234', 'diego@yahoo.ca', '2024-05-15'),
(80, 'F', 'Patricia Gutiérrez', 'Avenida Secundaria', 'Ciudad QRS, 54321', '678-901-2345', 'patricia@yahoo.ca', '2024-05-16'),
(81, 'M', 'Luis Herrera', 'Calle Norte', 'Pueblo TUV, 09876', '789-012-3456', 'luis@icloud.com', '2024-05-17'),
(82, 'F', 'Raquel Castro', 'Avenida Sur', 'Villa WXY, 98765', '890-123-4567', 'raquel@icloud.com', '2024-05-18'),
(83, 'M', 'Roberto Blanco', 'Carrera Este', 'Ciudad ZAB, 12345', '901-234-5678', 'roberto@icloud.com', '2024-05-19'),
(84, 'F', 'Natalia Méndez', 'Calle Oeste', 'Pueblo CDE, 54321', '012-345-6789', 'natalia@icloud.com', '2024-05-20'),
(85, 'M', 'Jorge Torres', 'Avenida Norte', 'Villa FGH, 09876', '123-456-7890', 'jorge@icloud.com', '2024-05-21'),
(86, 'F', 'Andrea Ruiz', 'Calle Sur', 'Ciudad IJK, 98765', '234-567-8901', 'andrea@icloud.com', '2024-05-22'),
(87, 'M', 'Fernando Pérez', 'Carrera Este', 'Pueblo LMN, 12345', '345-678-9012', 'fernando@icloud.com', '2024-05-23'),
(88, 'F', 'Paula Martínez', 'Avenida Principal', 'Villa OPQ, 54321', '456-789-0123', 'paula@icloud.com', '2024-05-24'),
(89, 'M', 'Gonzalo Sánchez', 'Calle Secundaria', 'Ciudad RST, 09876', '567-890-1234', 'gonzalo@icloud.com', '2024-05-25'),
(90, 'F', 'Marta Gómez', 'Avenida Norte', 'Pueblo UVW, 98765', '678-901-2345', 'marta@icloud.com', '2024-05-26'),
(91, 'M', 'Gabriel Díaz', 'Calle Sur', 'Villa XYZ, 12345', '789-012-3456', 'gabriel@@icloud.com', '2024-05-27'),
(92, 'F', 'Silvia Vázquez', 'Carrera Oeste', 'Ciudad ABC, 54321', '890-123-4567', 'silvia@icloud.com', '2024-05-28'),
(93, 'M', 'Hugo Ramírez', 'Avenida Este', 'Pueblo DEF, 09876', '901-234-5678', 'hugo@icloud.com', '2024-05-29'),
(94, 'F', 'Sara Jiménez', 'Calle Principal', 'Villa GHI, 98765', '012-345-6789', 'sara@icloud.com', '2024-05-30'),
(95, 'M', 'José Alonso', 'Carrera Secundaria', 'Ciudad JKL, 12345', '123-456-7890', 'jose@icloud.com', '2024-05-31'),
(96, 'F', 'Eva Gutiérrez', 'Avenida Norte', 'Pueblo MNO, 54321', '234-567-8901', 'eva@icloud.com', '2024-06-01'),
(97, 'M', 'Mario Herrera', 'Calle Sur', 'Villa PQR, 09876', '345-678-9012', 'mario@icloud.com', '2024-06-02'),
(98, 'F', 'Lucía Castro', 'Carrera Principal', 'Ciudad STU, 98765', '456-789-0123', 'lucia@@icloud.com', '2024-06-03'),
(99, 'M', 'Rafael Blanco', 'Avenida Este', 'Pueblo VWX, 12345', '567-890-1234', 'rafael@icloud.com', '2024-06-04'),
(100, 'F', 'Beatriz Méndez', 'Calle Oeste', 'Villa YZA, 54321', '678-901-2345', 'beatriz@icloud.com', '2024-06-05'),
(101, 'M', 'Alberto Torres', 'Avenida Norte', 'Ciudad BCD, 09876', '789-012-3456', 'alberto@icloud.com', '2024-06-06'),
(102, 'F', 'Victoria Ruiz', 'Calle Sur', 'Pueblo EFG, 98765', '890-123-4567', 'victoria@icloud.com', '2024-06-07'),
(103, 'M', 'Ángel Martínez', 'Carrera Principal', 'Villa HIJ, 12345', '901-234-5678', 'angel@icloud.com', '2024-06-08'),
(104, 'F', 'Marina Sánchez', 'Avenida Secundaria', 'Ciudad KLM, 54321', '012-345-6789', 'marina@icloud.com', '2024-06-09'),
(105, 'M', 'Pablo Gómez', 'Calle Norte', 'Pueblo NOP, 09876', '123-456-7890', 'pablo@icloud.com', '2024-06-10'),
(106, 'F', 'Lorena Gutiérrez', 'Avenida Sur', 'Villa QRS, 98765', '234-567-8901', 'lorena@icloud.com', '2024-06-11'),
(107, 'M', 'Sergio Ramírez', 'Carrera Este', 'Ciudad TUV, 12345', '345-678-9012', 'sergio@icloud.com', '2024-06-12'),
(108, 'F', 'Nuria Jiménez', 'Calle Oeste', 'Pueblo WXY, 54321', '456-789-0123', 'nuria@icloud.com', '2024-06-13'),
(109, 'M', 'Félix Alonso', 'Avenida Norte', 'Villa ZAB, 09876', '567-890-1234', 'felix@icloud.com', '2024-06-14'),
(110, 'F', 'Elena Díaz', 'Calle Sur', 'Ciudad CDE, 98765', '678-901-2345', 'elena@me.com', '2024-06-15'),
(111, 'M', 'Rodrigo Pérez', 'Carrera 123', 'Pueblo ABC, 12345', '123-456-7890', 'rodrigo@me.com', '2024-06-16'),
(112, 'F', 'Mónica García', 'Avenida XYZ', 'Ciudad XYZ, 54321', '234-567-8901', 'monica@me.com', '2024-06-17'),
(113, 'M', 'Andrés Martínez', 'Carrera 456', 'Pueblo DEF, 67890', '345-678-9012', 'andres@me.com', '2024-06-18'),
(114, 'F', 'Patricia López', 'Calle Principal', 'Villa GHI, 09876', '456-789-0123', 'patricia@me.com', '2024-06-19'),
(115, 'M', 'Gabriel Rodríguez', 'Avenida Central', 'Ciudad JKL, 54321', '567-890-1234', 'gabrielr@me.com', '2024-06-20'),
(116, 'F', 'María Hernández', 'Calle Secundaria', 'Pueblo MNO, 98765', '678-901-2345', 'mariah@me.com', '2024-06-21'),
(117, 'M', 'Fernando Sánchez', 'Carrera 789', 'Ciudad PQR, 12345', '789-012-3456', 'fernandos@me.com', '2024-06-22'),
(118, 'F', 'Sara González', 'Avenida Norte', 'Pueblo STU, 54321', '890-123-4567', 'sarag@me.com', '2024-06-23'),
(119, 'M', 'Javier Díaz', 'Calle Sur', 'Villa VWX, 09876', '901-234-5678', 'javierd@me.com', '2024-06-24'),
(120, 'F', 'Elena Vázquez', 'Avenida Este', 'Ciudad YZA, 98765', '012-345-6789', 'elenav@me.com', '2024-06-25'),
(121, 'M', 'Roberto Gómez', 'Carrera 012', 'Pueblo BCD, 12345', '123-456-7890', 'robertog@me.com', '2024-06-26'),
(122, 'F', 'Isabel Torres', 'Calle Oeste', 'Villa EFG, 54321', '234-567-8901', 'isabelt@me.com', '2024-06-27'),
(123, 'M', 'Francisco Ramírez', 'Avenida Principal', 'Ciudad HIJ, 09876', '345-678-9012', 'franciscor@me.com', '2024-06-28'),
(124, 'F', 'Carmen Jiménez', 'Calle Secundaria', 'Pueblo KLM, 98765', '456-789-0123', 'carmenj@me.com', '2024-06-29'),
(125, 'M', 'Diego Alonso', 'Carrera Principal', 'Villa NOP, 12345', '567-890-1234', 'diegoa@me.com', '2024-06-30'),
(126, 'F', 'Patricia Gutiérrez', 'Avenida Secundaria', 'Ciudad QRS, 54321', '678-901-2345', 'patriciag@me.com', '2024-07-01'),
(127, 'M', 'Luis Herrera', 'Calle Norte', 'Pueblo TUV, 09876', '789-012-3456', 'luish@me.com', '2024-07-02'),
(128, 'F', 'Raquel Castro', 'Avenida Sur', 'Villa WXY, 98765', '890-123-4567', 'raquelc@me.com', '2024-07-03'),
(129, 'M', 'Roberto Blanco', 'Carrera Este', 'Ciudad ZAB, 12345', '901-234-5678', 'robertob@me.com', '2024-07-04'),
(130, 'F', 'Natalia Méndez', 'Calle Oeste', 'Pueblo CDE, 54321', '012-345-6789', 'nataliam@me.com', '2024-07-05'),
(131, 'M', 'Jorge Torres', 'Avenida Norte', 'Villa FGH, 09876', '123-456-7890', 'jorget@me.com', '2024-07-06'),
(132, 'F', 'Andrea Ruiz', 'Calle Sur', 'Ciudad IJK, 98765', '234-567-8901', 'andrear@me.com', '2024-07-07'),
(133, 'M', 'Fernando Pérez', 'Carrera Este', 'Pueblo LMN, 12345', '345-678-9012', 'fernandop@me.com', '2024-07-08'),
(134, 'F', 'Paula Martínez', 'Avenida Principal', 'Villa OPQ, 54321', '456-789-0123', 'paulam@me.com', '2024-07-09'),
(135, 'M', 'Gonzalo Sánchez', 'Calle Secundaria', 'Ciudad RST, 09876', '567-890-1234', 'gonzalos@me.com', '2024-07-10'),
(136, 'F', 'Marta Gómez', 'Avenida Norte', 'Pueblo UVW, 98765', '678-901-2345', 'martag@me.com', '2024-07-11'),
(137, 'M', 'Gabriel Díaz', 'Calle Sur', 'Villa XYZ, 12345', '789-012-3456', 'gabrield@me.com', '2024-07-12'),
(138, 'F', 'Silvia Vázquez', 'Carrera Oeste', 'Ciudad ABC, 54321', '890-123-4567', 'silviav@me.com', '2024-07-13'),
(139, 'M', 'Hugo Ramírez', 'Avenida Este', 'Pueblo DEF, 09876', '901-234-5678', 'hugor@me.com', '2024-07-14'),
(140, 'F', 'Sara Jiménez', 'Calle Principal', 'Villa GHI, 98765', '012-345-6789', 'saraj@me.com', '2024-07-15'),
(141, 'M', 'José Alonso', 'Carrera Secundaria', 'Ciudad JKL, 12345', '123-456-7890', 'josea@me.com', '2024-07-16'),
(142, 'F', 'Eva Gutiérrez', 'Avenida Norte', 'Pueblo MNO, 54321', '234-567-8901', 'evag@me.com', '2024-07-17'),
(143, 'M', 'Mario Herrera', 'Calle Sur', 'Villa PQR, 09876', '345-678-9012', 'marioh@me.com', '2024-07-18'),
(144, 'F', 'Lucía Castro', 'Carrera Principal', 'Ciudad STU, 98765', '456-789-0123', 'luciac@me.com', '2024-07-19'),
(145, 'M', 'Rafael Blanco', 'Avenida Este', 'Pueblo VWX, 12345', '567-890-1234', 'rafaelb@me.com', '2024-07-20'),
(146, 'F', 'Beatriz Méndez', 'Calle Oeste', 'Villa YZA, 54321', '678-901-2345', 'beatrizm@me.com', '2024-07-21'),
(147, 'M', 'Alberto Torres', 'Avenida Norte', 'Ciudad BCD, 09876', '789-012-3456', 'albertot@me.com', '2024-07-22'),
(148, 'F', 'Victoria Ruiz', 'Calle Sur', 'Pueblo EFG, 98765', '890-123-4567', 'victoriar@me.com', '2024-07-23'),
(149, 'M', 'Ángel Martínez', 'Carrera Principal', 'Villa HIJ, 12345', '901-234-5678', 'angelm@me.com', '2024-07-24'),
(150, 'F', 'Marina Sánchez', 'Avenida Secundaria', 'Ciudad KLM, 54321', '012-345-6789', 'marinas@me.com', '2024-07-25'),
(151, 'M', 'Pablo Gómez', 'Calle Norte', 'Pueblo NOP, 09876', '123-456-7890', 'pablog@me.com', '2024-07-26'),
(152, 'F', 'Lorena Gutiérrez', 'Avenida Sur', 'Villa QRS, 98765', '234-567-8901', 'lorenag@me.com', '2024-07-27'),
(153, 'M', 'Sergio Ramírez', 'Carrera Este', 'Ciudad TUV, 12345', '345-678-9012', 'sergior@me.com', '2024-07-28'),
(154, 'F', 'Nuria Jiménez', 'Calle Oeste', 'Pueblo WXY, 54321', '456-789-0123', 'nuria@me.com', '2024-07-29'),
(155, 'M', 'Félix Alonso', 'Avenida Norte', 'Villa ZAB, 09876', '567-890-1234', 'felixa@me.com', '2024-07-30'),
(156, 'F', 'Elena Díaz', 'Calle Sur', 'Ciudad CDE, 98765', '678-901-2345', 'elenad@me.com', '2024-07-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproducto` int(11) NOT NULL,
  `nombre_producto` varchar(45) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `descripcion_producto` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproducto`, `nombre_producto`, `precio`, `stock`, `descripcion_producto`) VALUES
(1, 'Arroz', 2.99, 500, 'Arroz blanco de grano largo, ideal para acompañar platos principales.'),
(2, 'Fideos', 1.49, 800, 'Paquete de fideos de trigo durum, perfectos para sopas y guisos.'),
(3, 'Aceite de oliva', 5.99, 300, 'Aceite de oliva virgen extra, prensado en frío y de sabor intenso.'),
(4, 'Vinagre de vino', 1.99, 200, 'Vinagre de vino tinto, ideal para aderezar ensaladas y vinagretas.'),
(5, 'Sal', 0.99, 1000, 'Sal marina fina, enriquecida con minerales y sin aditivos.'),
(6, 'Azúcar', 1.49, 700, 'Azúcar blanca refinada, perfecta para endulzar bebidas y postres.'),
(7, 'Café molido', 3.99, 400, 'Café molido de tueste natural, aroma intenso y sabor equilibrado.'),
(8, 'Té negro', 2.49, 300, 'Té negro en hojas, fuerte y aromático, ideal para el desayuno.'),
(9, 'Leche', 1.99, 600, 'Leche entera pasteurizada, rica en calcio y vitaminas.'),
(10, 'Yogur natural', 0.79, 400, 'Yogur natural sin azúcar añadido, cremoso y nutritivo.'),
(11, 'Queso cheddar', 4.99, 200, 'Queso cheddar madurado, ideal para sándwiches y gratinados.'),
(12, 'Huevos', 2.49, 300, 'Docena de huevos frescos, de granja y de tamaño grande.'),
(13, 'Pollo entero', 8.99, 150, 'Pollo entero fresco, criado en libertad y sin hormonas añadidas.'),
(14, 'Carne molida de res', 6.99, 200, 'Carne molida de res magra, perfecta para preparar hamburguesas y albóndigas.'),
(15, 'Pescado fresco', 9.99, 100, 'Filete de pescado fresco del día, rico en omega-3 y bajo en grasas.'),
(16, 'Atún en lata', 1.99, 400, 'Lata de atún en aceite de oliva, rico en proteínas y ácidos grasos.'),
(17, 'Salmón ahumado', 7.99, 150, 'Salmón ahumado de alta calidad, perfecto para aperitivos y ensaladas.'),
(18, 'Pan de molde', 2.49, 300, 'Pan de molde integral, rico en fibra y bajo en grasas.'),
(19, 'Frutas variadas', 0.99, 500, 'Paquete de frutas variadas (manzanas, peras, naranjas), frescas y de temporada.'),
(20, 'Verduras surtidas', 1.49, 400, 'Bolsa de verduras surtidas (zanahorias, brócoli, calabacín), frescas y listas para cocinar.'),
(21, 'Papas', 2.99, 300, 'Bolsa de papas frescas, perfectas para freír, hornear o cocer.'),
(22, 'Cerveza', 0.99, 600, 'Lata de cerveza rubia, refrescante y con un ligero amargor.'),
(23, 'Vino tinto', 7.99, 200, 'Botella de vino tinto reserva, intenso y con cuerpo.'),
(24, 'Refresco de cola', 1.49, 400, 'Botella de refresco de cola, carbonatado y con sabor a cola.'),
(25, 'Agua mineral', 0.79, 800, 'Botella de agua mineral natural, sin gas y con bajo contenido en sodio.'),
(26, 'Galletas', 1.99, 500, 'Paquete de galletas de chocolate, crujientes y deliciosas.'),
(27, 'Chocolate', 2.49, 300, 'Tableta de chocolate negro 70% cacao, intenso y aromático.'),
(28, 'Caramelos', 0.99, 700, 'Bolsa de caramelos surtidos, ideales para disfrutar en cualquier momento del día.'),
(29, 'Helado', 3.99, 200, 'Tarrina de helado de vainilla con trozos de chocolate, cremoso y delicioso.'),
(30, 'Pasta de dientes', 2.99, 200, 'Tubo de pasta de dientes con flúor, protege contra la caries y fortalece el esmalte.'),
(31, 'Cepillo de dientes', 1.99, 300, 'Cepillo de dientes con cerdas suaves, limpia eficazmente y protege las encías.'),
(32, 'Jabón de manos', 1.49, 400, 'Botella de jabón líquido para manos, con fragancia fresca y suave.'),
(33, 'Champú', 3.49, 200, 'Botella de champú nutritivo, para todo tipo de cabello.'),
(34, 'Acondicionador', 3.49, 200, 'Botella de acondicionador reparador, deja el cabello suave y sedoso.'),
(35, 'Papel higiénico', 4.99, 300, 'Paquete de rollos de papel higiénico suave y absorbente.'),
(36, 'Detergente para ropa', 5.99, 250, 'Botella de detergente líquido para ropa, elimina las manchas y deja un aroma fresco.'),
(37, 'Suavizante de telas', 3.99, 200, 'Botella de suavizante de telas, deja la ropa suave y con un agradable aroma.'),
(38, 'Desinfectante multiusos', 2.99, 300, 'Botella de desinfectante multiusos, elimina gérmenes y bacterias.'),
(39, 'Limpiavidrios', 1.99, 400, 'Botella de limpiavidrios con pulverizador, deja las superficies brillantes y sin marcas.'),
(40, 'Pañales para bebé', 7.99, 150, 'Paquete de pañales para bebé, suaves y absorbentes, con indicador de humedad.'),
(41, 'Toallitas húmedas', 3.99, 250, 'Paquete de toallitas húmedas para bebé, suaves y delicadas para la piel.'),
(42, 'Alimento para perros', 9.99, 100, 'Saco de alimento seco para perros, completo y equilibrado.'),
(43, 'Alimento para gatos', 8.99, 120, 'Saco de alimento seco para gatos, con proteínas de alta calidad.'),
(44, 'Arena para gatos', 5.99, 150, 'Bolsa de arena aglomerante para gatos, absorbe olores y facilita la limpieza.'),
(45, 'Juguete para perros', 3.99, 200, 'Juguete mordedor para perros, resistente y seguro para jugar.'),
(46, 'Rascador para gatos', 14.99, 80, 'Rascador para gatos, con poste de sisal y plataforma para descansar.'),
(47, 'Detergente para platos', 2.99, 300, 'Botella de detergente líquido para platos, elimina la grasa y deja la vajilla brillante.'),
(48, 'Esponja para lavar platos', 0.99, 400, 'Esponja para lavar platos, resistente y de larga duración.'),
(49, 'Bolsas de basura', 3.49, 200, 'Rollo de bolsas de basura resistentes, para contener residuos domésticos.'),
(50, 'Pilas alcalinas', 4.99, 150, 'Paquete de pilas alcalinas AA, duraderas y de larga duración.'),
(51, 'Lámpara LED', 8.99, 100, 'Bombilla LED de bajo consumo, ilumina con luz blanca cálida.'),
(52, 'Fertilizante para plantas', 6.99, 80, 'Botella de fertilizante líquido para plantas de interior, promueve un crecimiento saludable.'),
(53, 'Semillas de césped', 9.99, 70, 'Paquete de semillas de césped, para obtener un césped verde y denso.'),
(54, 'Macetas de terracota', 3.99, 100, 'Macetas de terracota para plantas de interior y exterior.'),
(55, 'Candado de seguridad', 12.99, 50, 'Candado de seguridad con llave, resistente y duradero.'),
(56, 'Bombilla de repuesto', 1.99, 200, 'Bombilla de repuesto para lámparas y apliques, luz blanca cálida.'),
(57, 'Tijeras de podar', 7.99, 60, 'Tijeras de podar con hojas de acero inoxidable, para cortar ramas gruesas.'),
(58, 'Herramienta multiusos', 14.99, 40, 'Herramienta multiusos con alicates, destornilladores y sierra.'),
(59, 'Cinta adhesiva', 1.49, 100, 'Rollo de cinta adhesiva transparente, resistente y duradera.'),
(60, 'Destornillador', 2.99, 80, 'Juego de destornilladores con puntas intercambiables, para todo tipo de trabajos.'),
(61, 'Caja de herramientas', 29.99, 30, 'Caja de herramientas con compartimentos, resistente y fácil de transportar.'),
(62, 'Cable de extensión', 5.99, 50, 'Cable de extensión eléctrica de 5 metros, con enchufes protegidos.'),
(63, 'Linterna', 6.99, 70, 'Linterna LED resistente al agua, con luz ajustable y correa para transportar.'),
(64, 'Pilas recargables', 9.99, 60, 'Paquete de pilas recargables AAA, duraderas y respetuosas con el medio ambiente.'),
(65, 'Taladro eléctrico', 49.99, 20, 'Taladro eléctrico con velocidad variable y función de percusión.'),
(66, 'Sierra eléctrica', 89.99, 15, 'Sierra eléctrica circular, potente y precisa para cortes en madera.'),
(67, 'Martillo', 7.99, 40, 'Martillo de carpintero con mango de fibra de vidrio y cabeza de acero forjado.'),
(68, 'Cinta métrica', 4.99, 50, 'Cinta métrica de 5 metros, flexible y con bloqueo para mediciones precisas.'),
(69, 'Escalera plegable', 39.99, 25, 'Escalera plegable de aluminio, ligera y resistente, con peldaños antideslizantes.'),
(70, 'Caja de almacenaje', 19.99, 35, 'Caja de almacenaje de plástico resistente, con tapa y asas para transportar.'),
(71, 'Bolsa de herramientas', 24.99, 30, 'Bolsa de herramientas con múltiples compartimentos y correa ajustable.'),
(72, 'Cepillo para barbacoa', 9.99, 50, 'Cepillo de acero inoxidable para limpiar la parrilla de la barbacoa.'),
(73, 'Pinzas para barbacoa', 7.99, 60, 'Pinzas de acero inoxidable para voltear y servir alimentos en la barbacoa.'),
(74, 'Termómetro para alimentos', 12.99, 40, 'Termómetro digital para alimentos, mide la temperatura de forma precisa.'),
(75, 'Cubiertos desechables', 3.99, 100, 'Paquete de cubiertos desechables (tenedores, cuchillos y cucharas), ideales para fiestas.'),
(76, 'Platos de papel', 2.99, 150, 'Paquete de platos de papel biodegradables, resistentes y aptos para alimentos calientes.'),
(77, 'Vasos desechables', 2.99, 200, 'Paquete de vasos desechables de plástico, ideales para bebidas frías y calientes.'),
(78, 'Servilletas de papel', 1.49, 300, 'Paquete de servilletas de papel suaves y absorbentes.'),
(79, 'Papel de aluminio', 3.49, 100, 'Rollo de papel de aluminio resistente, ideal para cocinar y conservar alimentos.'),
(80, 'Papel film', 2.99, 150, 'Rollo de papel film transparente, para envolver alimentos y conservar su frescura.'),
(81, 'Bolsas de congelación', 2.49, 200, 'Paquete de bolsas de congelación resistentes, aptas para alimentos y líquidos.'),
(82, 'Papel de cocina', 1.99, 250, 'Rollo de papel de cocina absorbente, perfecto para limpiar y secar.'),
(83, 'Esponja de limpieza', 0.99, 400, 'Esponja de limpieza multiusos, con fibras resistentes y suaves.'),
(84, 'Bayeta de microfibra', 1.99, 300, 'Bayeta de microfibra absorbente y suave, ideal para limpiar superficies.'),
(85, 'Limpiador multiusos', 2.99, 200, 'Botella de limpiador multiusos, elimina la grasa y la suciedad de todo tipo de superficies.'),
(86, 'Desinfectante de manos', 3.49, 150, 'Gel desinfectante de manos, con alcohol y agentes hidratantes.'),
(87, 'Ambientador', 2.49, 250, 'Ambientador en spray con fragancia fresca y duradera.'),
(88, 'Toallitas desinfectantes', 3.99, 200, 'Paquete de toallitas desinfectantes, elimina gérmenes y bacterias en superficies.'),
(89, 'Quitamanchas', 4.99, 150, 'Botella de quitamanchas en spray, elimina las manchas difíciles de todo tipo de tejidos.'),
(90, 'Pañuelos de papel', 1.49, 300, 'Paquete de pañuelos de papel suaves y resistentes.'),
(91, 'Tiritas adhesivas', 1.99, 200, 'Caja de tiritas adhesivas surtidas, para curar pequeñas heridas y cortes.'),
(92, 'Algodón', 2.49, 150, 'Bolsa de algodón hidrófilo, suave y absorbente, para uso médico y cosmético.'),
(93, 'Vendaje elástico', 3.99, 100, 'Rollo de vendaje elástico adhesivo, para fijar apósitos y proteger lesiones.'),
(94, 'Termómetro digital', 9.99, 80, 'Termómetro digital de lectura rápida y precisa, ideal para medir la temperatura corporal.'),
(95, 'Pastillas para el dolor', 4.99, 120, 'Caja de pastillas para el dolor y la fiebre, alivio rápido y duradero.'),
(96, 'Antiséptico', 3.49, 150, 'Botella de antiséptico para desinfectar heridas y quemaduras menores.'),
(97, 'Crema hidratante', 6.99, 100, 'Botella de crema hidratante corporal, suave y de rápida absorción.'),
(98, 'Protector solar', 9.99, 80, 'Botella de protector solar SPF 50, protege contra los rayos UVA y UVB.'),
(99, 'Champú anticaspa', 4.99, 120, 'Botella de champú anticaspa, alivia el picor y previene la caspa.'),
(100, 'Acondicionador reparador', 6.99, 100, 'Botella de acondicionador reparador, nutre y fortalece el cabello.'),
(101, 'Gel de ducha', 3.99, 150, 'Botella de gel de ducha refrescante, limpia la piel y la deja suave y perfumada.'),
(102, 'Desodorante', 2.99, 200, 'Desodorante en spray con fragancia duradera y protección contra el mal olor.'),
(103, 'Pañales para adultos', 12.99, 50, 'Paquete de pañales para adultos, cómodos y absorbentes, con sistema antifugas.'),
(104, 'Toallitas húmedas para adultos', 6.99, 100, 'Paquete de toallitas húmedas para adultos, suaves y refrescantes.'),
(105, 'Colirio', 5.99, 80, 'Botella de colirio lubricante, alivia la sequedad ocular y refresca los ojos.'),
(106, 'Pastillas para la garganta', 3.99, 120, 'Paquete de pastillas para la garganta con efecto calmante y refrescante.'),
(107, 'Termómetro infrarrojo', 19.99, 40, 'Termómetro infrarrojo sin contacto, mide la temperatura corporal de forma rápida y precisa.'),
(108, 'Vino blanco', 6.99, 150, 'Botella de vino blanco seco, fresco y afrutado.'),
(109, 'Cerveza artesanal', 3.49, 100, 'Botella de cerveza artesanal, elaborada con ingredientes naturales.'),
(110, 'Whisky', 19.99, 80, 'Botella de whisky escocés de malta, envejecido en barricas de roble.'),
(111, 'Ron', 14.99, 120, 'Botella de ron añejo, suave y aromático, perfecto para cócteles.'),
(112, 'Ginebra', 12.99, 100, 'Botella de ginebra premium, destilada con botánicos seleccionados.'),
(113, 'Vodka', 9.99, 150, 'Botella de vodka de alta calidad, destilado y filtrado varias veces.'),
(114, 'Licor de café', 8.99, 80, 'Botella de licor de café, intenso y con un toque dulce.'),
(115, 'Refresco de naranja', 1.49, 300, 'Botella de refresco de naranja, refrescante y con un sabor cítrico.'),
(116, 'Refresco de limón', 1.49, 300, 'Botella de refresco de limón, burbujeante y con un toque ácido.'),
(117, 'Refresco de cola zero', 1.49, 200, 'Botella de refresco de cola zero, sin calorías y con todo el sabor.'),
(118, 'Agua con gas', 0.99, 400, 'Botella de agua con gas, burbujeante y refrescante.'),
(119, 'Jugo de manzana', 2.49, 200, 'Botella de jugo de manzana natural, sin azúcares añadidos.'),
(120, 'Jugo de naranja', 2.49, 200, 'Botella de jugo de naranja recién exprimido, rico en vitamina C.'),
(121, 'Leche de almendras', 3.99, 150, 'Botella de leche de almendras, alternativa vegetal a la leche de vaca.'),
(122, 'Leche de coco', 3.99, 150, 'Botella de leche de coco, ideal para platos exóticos y batidos.'),
(123, 'Leche de avena', 3.99, 150, 'Botella de leche de avena, sin lactosa y con un sabor suave.'),
(124, 'Queso fresco', 2.99, 200, 'Queso fresco de vaca, suave y cremoso, perfecto para ensaladas.'),
(125, 'Yogur griego', 1.49, 250, 'Yogur griego natural, rico en proteínas y con una textura cremosa.'),
(126, 'Lechuga', 1.99, 150, 'Lechuga iceberg fresca y crujiente, ideal para ensaladas.'),
(127, 'Tomate', 0.99, 300, 'Tomates maduros y jugosos, ideales para salsas y guarniciones.'),
(128, 'Cebolla', 0.79, 400, 'Cebollas frescas y aromáticas, imprescindibles en la cocina.'),
(129, 'Ajo', 0.49, 500, 'Cabezas de ajo frescas, aromáticas y llenas de sabor.'),
(130, 'Pimientos', 1.49, 200, 'Pimientos rojos, verdes y amarillos, frescos y llenos de color.'),
(131, 'Zanahorias', 1.29, 250, 'Bolsa de zanahorias frescas, crujientes y dulces.'),
(132, 'Brócoli', 1.99, 200, 'Brócoli fresco y saludable, rico en nutrientes y fibra.'),
(133, 'Papas fritas', 1.99, 300, 'Bolsa de papas fritas crujientes y saladas, perfectas como aperitivo.'),
(134, 'Tortillas de maíz', 1.49, 250, 'Paquete de tortillas de maíz, ideales para tacos y quesadillas.'),
(135, 'Salsa de tomate', 2.49, 200, 'Bote de salsa de tomate casera, perfecta para pasta y pizza.'),
(136, 'Salsa de soja', 1.99, 150, 'Botella de salsa de soja, condimento imprescindible en la cocina asiática.'),
(137, 'Aceitunas', 2.99, 250, 'Bote de aceitunas verdes y negras, aliñadas y listas para disfrutar.'),
(138, 'Pimientos en conserva', 1.99, 200, 'Bote de pimientos del piquillo en conserva, asados y pelados.'),
(139, 'Pasta de curry', 3.49, 150, 'Bote de pasta de curry rojo, auténtica y llena de sabor.'),
(140, 'Miel', 4.99, 200, 'Tarro de miel pura de abeja, dulce y aromática.'),
(141, 'Mermelada', 2.99, 250, 'Bote de mermelada casera de fresa, dulce y llena de trozos de fruta.'),
(142, 'Salsa picante', 1.99, 300, 'Botella de salsa picante, añade un toque de picante a tus platos favoritos.'),
(143, 'Crema de cacahuate', 3.99, 200, 'Tarro de crema de cacahuate, suave y cremosa, perfecta para untar.'),
(144, 'Aceitunas rellenas', 2.99, 200, 'Bote de aceitunas rellenas de anchoa, un aperitivo clásico y sabroso.'),
(145, 'Pimientos jalapeños', 1.99, 250, 'Bote de pimientos jalapeños en rodajas, picantes y sabrosos.'),
(146, 'Almendras', 5.99, 150, 'Bolsa de almendras crudas, perfectas como snack o para cocinar.'),
(147, 'Nueces', 4.99, 200, 'Bolsa de nueces enteras, ricas en ácidos grasos omega-3.'),
(148, 'Pistachos', 6.99, 180, 'Bolsa de pistachos salados y tostados, ideales como tentempié.'),
(149, 'Cacahuetes', 3.99, 250, 'Bolsa de cacahuetes tostados y salados, perfectos para compartir.'),
(150, 'Aceite de coco', 7.99, 150, 'Bote de aceite de coco virgen extra, ideal para cocinar y hornear.'),
(151, 'Vinagre balsámico', 3.99, 200, 'Botella de vinagre balsámico de Módena, suave y aromático.'),
(152, 'Salsa de barbacoa', 2.99, 250, 'Bote de salsa de barbacoa ahumada, perfecta para carnes y costillas.'),
(153, 'Salsa de albahaca', 2.49, 200, 'Bote de salsa de albahaca fresca, ideal para pasta y ensaladas.'),
(154, 'Salsa de pescado', 3.49, 150, 'Botella de salsa de pescado tailandesa, esencial en la cocina asiática.'),
(155, 'Café instantáneo', 4.99, 180, 'Tarro de café instantáneo soluble, para preparar rápidamente una taza de café.'),
(156, 'Canela en polvo', 1.99, 250, 'Bote de canela en polvo, especia aromática ideal para postres y bebidas calientes.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `codigo_sede` int(11) NOT NULL,
  `nombre_sede` varchar(45) DEFAULT NULL,
  `direccion_sede` varchar(45) DEFAULT NULL,
  `ciudad_sede` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`codigo_sede`, `nombre_sede`, `direccion_sede`, `ciudad_sede`) VALUES
(1, 'Main Street Branch', '123 Main Street', 'New York City'),
(2, 'Downtown Branch', '456 Downtown Avenue', 'Los Angeles'),
(3, 'Central Branch', '789 Central Street', 'Chicago'),
(4, 'Bay Area Branch', '321 Bay Street', 'San Francisco'),
(5, 'Riverfront Branch', '654 Riverfront Drive', 'Seattle'),
(6, 'Capital Branch', '987 Capital Avenue', 'Washington, D.C.'),
(7, 'Sunshine Branch', '234 Sunshine Boulevard', 'Miami'),
(8, 'Tech Hub Branch', '567 Tech Hub Road', 'San Jose'),
(9, 'Mile High Branch', '890 Mile High Avenue', 'Denver'),
(10, 'Alamo Branch', '432 Alamo Street', 'San Antonio'),
(11, 'Liberty Branch', '765 Liberty Avenue', 'Philadelphia'),
(12, 'Golden Gate Branch', '098 Golden Gate Street', 'Oakland'),
(13, 'Windy City Branch', '321 Windy City Road', 'Boston'),
(14, 'Lone Star Branch', '654 Lone Star Boulevard', 'Houston'),
(15, 'Empire Branch', '987 Empire Street', 'Atlanta'),
(16, 'Grand Canyon Branch', '234 Grand Canyon Drive', 'Phoenix'),
(17, 'Space City Branch', '567 Space City Road', 'Orlando'),
(18, 'Emerald City Branch', '890 Emerald City Avenue', 'Portland'),
(19, 'City of Angels Branch', '432 City of Angels Street', 'San Diego'),
(20, 'Steel City Branch', '765 Steel City Boulevard', 'Pittsburgh'),
(21, 'Motor City Branch', '098 Motor City Avenue', 'Detroit'),
(22, 'Music City Branch', '321 Music City Road', 'Nashville'),
(23, 'Big Apple Branch', '654 Big Apple Street', 'Brooklyn'),
(24, 'Sin City Branch', '987 Sin City Boulevard', 'Las Vegas'),
(25, 'Highland Branch', '234 Highland Drive', 'Boulder'),
(26, 'Sunflower State Branch', '567 Sunflower State Road', 'Kansas City'),
(27, 'Gateway to the West Branch', '890 Gateway to the West Street', 'St. Louis'),
(28, 'City by the Bay Branch', '432 City by the Bay Boulevard', 'Tampa'),
(29, 'Magic City Branch', '765 Magic City Drive', 'Birmingham'),
(30, 'Space Needle Branch', '098 Space Needle Street', 'Tacoma'),
(31, 'Queen City Branch', '321 Queen City Road', 'Charlotte'),
(32, 'Mitten State Branch', '654 Mitten State Avenue', 'Detroit'),
(33, 'River City Branch', '987 River City Street', 'Louisville'),
(34, 'Pine Tree State Branch', '234 Pine Tree State Boulevard', 'Portland'),
(35, 'Rocky Mountain Branch', '567 Rocky Mountain Road', 'Boulder'),
(36, 'Gateway City Branch', '890 Gateway City Avenue', 'Kansas City'),
(37, 'Bayou City Branch', '432 Bayou City Boulevard', 'New Orleans'),
(38, 'Alamo City Branch', '765 Alamo City Drive', 'San Antonio'),
(39, 'Peach State Branch', '098 Peach State Street', 'Atlanta'),
(40, 'Emerald City Branch', '321 Emerald City Road', 'Seattle'),
(41, 'Sunshine State Branch', '654 Sunshine State Boulevard', 'Miami'),
(42, 'Twin Cities Branch', '987 Twin Cities Avenue', 'Minneapolis'),
(43, 'City of Fountains Branch', '234 City of Fountains Street', 'Kansas City'),
(44, 'Mile High West Branch', '567 Mile High West Road', 'Denver'),
(45, 'Sunshine State East Branch', '890 Sunshine State East Avenue', 'Tampa'),
(46, 'City of Palms Branch', '432 City of Palms Boulevard', 'Fort Myers'),
(47, 'Motor City South Branch', '765 Motor City South Drive', 'Detroit'),
(48, 'City of Lakes Branch', '098 City of Lakes Street', 'Minneapolis'),
(49, 'Music City North Branch', '321 Music City North Avenue', 'Nashville'),
(50, 'Heartland West Branch', '654 Heartland West Boulevard', 'Omaha'),
(51, 'Palm Beach Branch', '987 Palm Beach Street', 'West Palm Beach'),
(52, 'City of Roses West Branch', '234 City of Roses West Road', 'Portland'),
(53, 'Golden Triangle Branch', '567 Golden Triangle Boulevard', 'Pittsburgh'),
(54, 'Gateway City South Branch', '890 Gateway City South Avenue', 'St. Louis'),
(55, 'River City East Branch', '432 River City East Drive', 'Richmond'),
(56, 'Sunshine State North Branch', '765 Sunshine State North Street', 'Jacksonville'),
(57, 'Mile High East Branch', '098 Mile High East Road', 'Colorado Springs'),
(58, 'City of Oaks West Branch', '321 City of Oaks West Avenue', 'Raleigh'),
(59, 'Bay City Branch', '654 Bay City Road', 'Bay City'),
(60, 'City of Roses East Branch', '987 City of Roses East Street', 'Salem'),
(61, 'City of Bridges North Branch', '234 City of Bridges North Boulevard', 'Pittsburgh'),
(62, 'Windy City Branch', '567 Windy City Road', 'Chicago'),
(63, 'Magic City Branch', '890 Magic City Avenue', 'Miami'),
(64, 'Space City West Branch', '432 Space City West Drive', 'Houston'),
(65, 'River City South Branch', '765 River City South Street', 'Cincinnati'),
(66, 'Motor City North Branch', '098 Motor City North Road', 'Dearborn'),
(67, 'Sunshine State South Branch', '321 Sunshine State South Avenue', 'Ft. Lauderdale'),
(68, 'City of Champions Branch', '654 City of Champions Boulevard', 'Boston'),
(69, 'Mile High North Branch', '987 Mile High North Road', 'Aurora'),
(70, 'Big Easy Branch', '234 Big Easy Street', 'New Orleans'),
(71, 'City of Oaks East Branch', '567 City of Oaks East Road', 'Durham'),
(72, 'City of Lights Branch', '890 City of Lights Avenue', 'Las Vegas'),
(73, 'City of Fountains East Branch', '432 City of Fountains East Drive', 'Kansas City'),
(74, 'Heartland South Branch', '765 Heartland South Street', 'Des Moines'),
(75, 'City of Roses South Branch', '098 City of Roses South Road', 'Eugene'),
(76, 'Emerald City East Branch', '321 Emerald City East Avenue', 'Bellevue'),
(77, 'Gateway City West Branch', '654 Gateway City West Street', 'Springfield'),
(78, 'City of Oaks North Branch', '987 City of Oaks North Drive', 'Cary'),
(79, 'Sunshine State West Branch', '234 Sunshine State West Road', 'Weston'),
(80, 'Gateway to the West East Branch', '567 Gateway to the West East Avenue', 'Omaha'),
(81, 'Space City South Branch', '890 Space City South Boulevard', 'Galveston'),
(82, 'Mile High South Branch', '432 Mile High South Street', 'Fort Collins'),
(83, 'River City West Branch', '765 River City West Road', 'Lexington'),
(84, 'City of Palms East Branch', '098 City of Palms East Avenue', 'Naples'),
(85, 'Motor City East Branch', '321 Motor City East Street', 'Ann Arbor'),
(86, 'Sunshine State East Branch', '654 Sunshine State East Road', 'Orlando'),
(87, 'Mile High West Branch', '987 Mile High West Street', 'Boulder'),
(88, 'Heartland North Branch', '234 Heartland North Avenue', 'Lincoln'),
(89, 'Sunshine State North Branch', '567 Sunshine State North Avenue', 'Hollywood'),
(90, 'Gateway City South Branch', '890 Gateway City South Road', 'St. Louis'),
(91, 'City of Oaks North Branch', '123 City of Oaks North Street', 'Wilmington'),
(92, 'Sunshine State West Branch', '432 Sunshine State West Boulevard', 'Naples'),
(93, 'City of Bridges West Branch', '765 City of Bridges West Drive', 'Cambridge'),
(94, 'Emerald City East Branch', '098 Emerald City East Street', 'Kent'),
(95, 'Magic City West Branch', '321 Magic City West Avenue', 'Ocala'),
(96, 'Mile High South Branch', '654 Mile High South Road', 'Pueblo'),
(97, 'River City West Branch', '987 River City West Street', 'Lexington'),
(98, 'Motor City East Branch', '234 Motor City East Avenue', 'Troy'),
(99, 'Sunshine State East Branch', '567 Sunshine State East Drive', 'West Palm Beach'),
(100, 'Space City North Branch', '890 Space City North Avenue', 'League City'),
(101, 'City of Roses South Branch', '432 City of Roses South Road', 'Medford'),
(102, 'Heartland West Branch', '765 Heartland West Street', 'Overland Park'),
(103, 'Sunshine State South Branch', '098 Sunshine State South Drive', 'Palm Beach'),
(104, 'Gateway City West Branch', '321 Gateway City West Avenue', 'Columbia'),
(105, 'City of Oaks North Branch', '654 City of Oaks North Street', 'Jacksonville'),
(106, 'Sunshine State North Branch', '987 Sunshine State North Road', 'Tallahassee'),
(107, 'City of Bridges East Branch', '234 City of Bridges East Boulevard', 'Erie'),
(108, 'Emerald City South Branch', '567 Emerald City South Drive', 'Renton'),
(109, 'Magic City West Branch', '890 Magic City West Street', 'Sarasota'),
(110, 'Mile High North Branch', '432 Mile High North Avenue', 'Castle Rock'),
(111, 'River City South Branch', '765 River City South Road', 'Paducah'),
(112, 'Motor City East Branch', '098 Motor City East Street', 'Sterling Heights'),
(113, 'Sunshine State South Branch', '321 Sunshine State South Boulevard', 'Lakeland'),
(114, 'Space City North Branch', '654 Space City North Avenue', 'The Woodlands'),
(115, 'City of Roses West Branch', '987 City of Roses West Road', 'Salem'),
(116, 'Heartland East Branch', '234 Heartland East Street', 'Topeka'),
(117, 'Sunshine State North Branch', '567 Sunshine State North Road', 'St. Petersburg'),
(118, 'Gateway City East Branch', '890 Gateway City East Avenue', 'Jefferson City'),
(119, 'City of Oaks South Branch', '432 City of Oaks South Avenue', 'Greensboro'),
(120, 'Sunshine State West Branch', '765 Sunshine State West Drive', 'Plantation'),
(121, 'City of Bridges South Branch', '098 City of Bridges South Road', 'Pittsburgh'),
(122, 'Emerald City West Branch', '321 Emerald City West Street', 'Spokane'),
(123, 'Magic City East Branch', '654 Magic City East Boulevard', 'Melbourne'),
(124, 'Mile High West Branch', '987 Mile High West Avenue', 'Littleton'),
(125, 'River City East Branch', '234 River City East Street', 'Frankfort'),
(126, 'Motor City North Branch', '567 Motor City North Road', 'Clinton Township'),
(127, 'Sunshine State South Branch', '890 Sunshine State South Boulevard', 'Davie'),
(128, 'Space City West Branch', '432 Space City West Boulevard', 'Pearland'),
(129, 'City of Roses West Branch', '765 City of Roses West Road', 'Salem'),
(130, 'Heartland South Branch', '098 Heartland South Avenue', 'Wichita'),
(131, 'North Star Branch', '123 North Star Street', 'Anchorage'),
(132, 'Mile High East Branch', '456 Mile High East Avenue', 'Aurora'),
(133, 'River City North Branch', '789 River City North Road', 'Baton Rouge'),
(134, 'Sunshine State West Branch', '321 Sunshine State West Street', 'Bradenton'),
(135, 'Bayou City North Branch', '654 Bayou City North Boulevard', 'Baton Rouge'),
(136, 'City of Palms South Branch', '987 City of Palms South Avenue', 'Cape Coral'),
(137, 'Space City East Branch', '234 Space City East Road', 'Conroe'),
(138, 'Emerald City North Branch', '567 Emerald City North Street', 'Everett'),
(139, 'Magic City North Branch', '890 Magic City North Avenue', 'Fort Myers'),
(140, 'Mile High Central Branch', '432 Mile High Central Drive', 'Fort Collins'),
(141, 'River City West Branch', '765 River City West Street', 'Gretna'),
(142, 'Motor City West Branch', '098 Motor City West Avenue', 'Grand Rapids'),
(143, 'Sunshine State Central Branch', '321 Sunshine State Central Boulevard', 'Gainesville'),
(144, 'Gateway City North Branch', '654 Gateway City North Road', 'Hannibal'),
(145, 'City of Oaks West Branch', '987 City of Oaks West Street', 'Hickory'),
(146, 'Sunshine State South Branch', '234 Sunshine State South Street', 'Hollywood'),
(147, 'Space City South Branch', '567 Space City South Drive', 'Katy'),
(148, 'City of Roses East Branch', '890 City of Roses East Avenue', 'Lake Oswego'),
(149, 'Heartland East Branch', '432 Heartland East Boulevard', 'Lawrence'),
(150, 'Sunshine State East Branch', '765 Sunshine State East Road', 'Largo'),
(151, 'Mile High South Branch', '098 Mile High South Street', 'Longmont'),
(152, 'River City East Branch', '321 River City East Avenue', 'Milton'),
(153, 'Motor City South Branch', '654 Motor City South Road', 'Novi'),
(154, 'Sunshine State West Branch', '987 Sunshine State West Drive', 'Palm Bay'),
(155, 'City of Bridges East Branch', '234 City of Bridges East Street', 'Pittsburgh'),
(156, 'Gateway City North Branch', '654 Gateway City North Road', 'HSalem');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `idtransaccion` int(11) NOT NULL,
  `fecha_transaccion` datetime DEFAULT current_timestamp(),
  `metodo_de_pago` varchar(45) DEFAULT NULL,
  `fk_cliente` int(11) DEFAULT NULL,
  `fk_producto` int(11) DEFAULT NULL,
  `fk_sede` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`idtransaccion`, `fecha_transaccion`, `metodo_de_pago`, `fk_cliente`, `fk_producto`, `fk_sede`) VALUES
(1, '2024-05-26 10:15:00', 'Tarjeta de crédito', 1, 1, 1),
(2, '2024-05-26 11:20:00', 'Efectivo', 2, 2, 2),
(3, '2024-05-26 12:30:00', 'Transferencia bancaria', 3, 3, 3),
(4, '2024-05-26 13:45:00', 'Tarjeta de débito', 4, 4, 4),
(5, '2024-05-26 14:50:00', 'Efectivo', 5, 5, 5),
(6, '2024-05-26 15:55:00', 'Tarjeta de crédito', 6, 6, 6),
(7, '2024-05-26 16:00:00', 'Tarjeta de débito', 7, 7, 7),
(8, '2024-05-26 17:15:00', 'Efectivo', 8, 8, 8),
(9, '2024-05-26 18:20:00', 'Tarjeta de crédito', 9, 9, 9),
(10, '2024-05-26 19:30:00', 'Efectivo', 10, 10, 10),
(11, '2024-05-26 20:45:00', 'Transferencia bancaria', 11, 11, 11),
(12, '2024-05-26 21:50:00', 'Tarjeta de débito', 12, 12, 12),
(13, '2024-05-26 22:55:00', 'Efectivo', 13, 13, 13),
(14, '2024-05-27 10:00:00', 'Tarjeta de crédito', 14, 14, 14),
(15, '2024-05-27 11:15:00', 'Transferencia bancaria', 15, 15, 15),
(16, '2024-05-27 12:20:00', 'Tarjeta de débito', 16, 16, 16),
(17, '2024-05-27 13:30:00', 'Efectivo', 17, 17, 17),
(18, '2024-05-27 14:45:00', 'Tarjeta de crédito', 18, 18, 18),
(19, '2024-05-27 15:50:00', 'Efectivo', 19, 19, 19),
(20, '2024-05-27 16:55:00', 'Tarjeta de débito', 20, 20, 20),
(21, '2024-05-27 18:00:00', 'Efectivo', 21, 21, 21),
(22, '2024-05-27 19:15:00', 'Tarjeta de crédito', 22, 22, 22),
(23, '2024-05-27 20:20:00', 'Efectivo', 23, 23, 23),
(24, '2024-05-27 21:30:00', 'Tarjeta de débito', 24, 24, 24),
(25, '2024-05-27 22:35:00', 'Transferencia bancaria', 25, 25, 25),
(26, '2024-05-27 23:40:00', 'Tarjeta de crédito', 26, 26, 26),
(27, '2024-05-28 10:00:00', 'Efectivo', 27, 27, 27),
(28, '2024-05-28 11:15:00', 'Tarjeta de débito', 28, 28, 28),
(29, '2024-05-28 12:20:00', 'Efectivo', 29, 29, 29),
(30, '2024-05-28 13:30:00', 'Transferencia bancaria', 30, 30, 30),
(31, '2024-05-28 14:45:00', 'Tarjeta de crédito', 31, 31, 31),
(32, '2024-05-28 15:50:00', 'Efectivo', 32, 32, 32),
(33, '2024-05-28 16:55:00', 'Tarjeta de débito', 33, 33, 33),
(34, '2024-05-28 18:00:00', 'Efectivo', 34, 34, 34),
(35, '2024-05-28 19:15:00', 'Tarjeta de crédito', 35, 35, 35),
(36, '2024-05-28 20:20:00', 'Efectivo', 36, 36, 36),
(37, '2024-05-28 21:30:00', 'Tarjeta de débito', 37, 37, 37),
(38, '2024-05-28 22:35:00', 'Transferencia bancaria', 38, 38, 38),
(39, '2024-05-28 23:40:00', 'Tarjeta de crédito', 39, 39, 39),
(40, '2024-05-29 10:00:00', 'Efectivo', 40, 40, 40),
(41, '2024-05-29 11:15:00', 'Tarjeta de débito', 41, 41, 41),
(42, '2024-05-29 12:20:00', 'Efectivo', 42, 42, 42),
(43, '2024-05-29 13:30:00', 'Transferencia bancaria', 43, 43, 43),
(44, '2024-05-29 14:45:00', 'Tarjeta de crédito', 44, 44, 44),
(45, '2024-05-29 15:50:00', 'Efectivo', 45, 45, 45),
(46, '2024-05-29 16:55:00', 'Tarjeta de débito', 46, 46, 46),
(47, '2024-05-29 18:00:00', 'Efectivo', 47, 47, 47),
(48, '2024-05-29 19:15:00', 'Tarjeta de crédito', 48, 48, 48),
(49, '2024-05-29 20:20:00', 'Efectivo', 49, 49, 49),
(50, '2024-05-29 21:30:00', 'Tarjeta de débito', 50, 50, 50),
(51, '2024-05-29 22:35:00', 'Transferencia bancaria', 51, 51, 51),
(52, '2024-05-29 23:40:00', 'Tarjeta de crédito', 52, 52, 52),
(53, '2024-05-30 10:00:00', 'Efectivo', 53, 53, 53),
(54, '2024-05-30 11:15:00', 'Tarjeta de débito', 54, 54, 54),
(55, '2024-05-30 12:20:00', 'Efectivo', 55, 55, 55),
(56, '2024-05-30 13:30:00', 'Transferencia bancaria', 56, 56, 56),
(57, '2024-05-30 14:45:00', 'Tarjeta de crédito', 57, 57, 57),
(58, '2024-05-30 15:50:00', 'Efectivo', 58, 58, 58),
(59, '2024-05-30 16:55:00', 'Tarjeta de débito', 59, 59, 59),
(60, '2024-05-30 18:00:00', 'Efectivo', 60, 60, 60),
(61, '2024-05-30 19:15:00', 'Tarjeta de crédito', 61, 61, 61),
(62, '2024-05-30 20:20:00', 'Efectivo', 62, 62, 62),
(63, '2024-05-30 21:30:00', 'Tarjeta de débito', 63, 63, 63),
(64, '2024-05-30 22:35:00', 'Transferencia bancaria', 64, 64, 64),
(65, '2024-05-30 23:40:00', 'Tarjeta de crédito', 65, 65, 65),
(66, '2024-05-31 10:00:00', 'Efectivo', 66, 66, 66),
(67, '2024-05-31 11:15:00', 'Tarjeta de débito', 67, 67, 67),
(68, '2024-05-31 12:20:00', 'Efectivo', 68, 68, 68),
(69, '2024-05-31 13:30:00', 'Transferencia bancaria', 69, 69, 69),
(70, '2024-05-31 14:45:00', 'Tarjeta de crédito', 70, 70, 70),
(71, '2024-05-31 15:50:00', 'Efectivo', 71, 71, 71),
(72, '2024-05-31 16:55:00', 'Tarjeta de débito', 72, 72, 72),
(73, '2024-05-31 18:00:00', 'Efectivo', 73, 73, 73),
(74, '2024-05-31 19:15:00', 'Tarjeta de crédito', 74, 74, 74),
(75, '2024-05-31 20:20:00', 'Efectivo', 75, 75, 75),
(76, '2024-05-31 21:30:00', 'Tarjeta de débito', 76, 76, 76),
(77, '2024-05-31 22:35:00', 'Transferencia bancaria', 77, 77, 77),
(78, '2024-05-31 23:40:00', 'Tarjeta de crédito', 78, 78, 78),
(79, '2024-06-01 10:00:00', 'Efectivo', 79, 79, 79),
(80, '2024-06-01 11:15:00', 'Tarjeta de débito', 80, 80, 80),
(81, '2024-06-01 12:20:00', 'Efectivo', 81, 81, 81),
(82, '2024-06-01 13:30:00', 'Transferencia bancaria', 82, 82, 82),
(83, '2024-06-01 14:45:00', 'Tarjeta de crédito', 83, 83, 83),
(84, '2024-06-01 15:50:00', 'Efectivo', 84, 84, 84),
(85, '2024-06-01 16:55:00', 'Tarjeta de débito', 85, 85, 85),
(86, '2024-06-01 18:00:00', 'Efectivo', 86, 86, 86),
(87, '2024-06-01 19:15:00', 'Tarjeta de crédito', 87, 87, 87),
(88, '2024-06-01 20:20:00', 'Efectivo', 88, 88, 88),
(89, '2024-06-01 21:30:00', 'Tarjeta de débito', 89, 89, 89),
(90, '2024-06-01 22:35:00', 'Transferencia bancaria', 90, 90, 90),
(91, '2024-06-01 23:40:00', 'Tarjeta de crédito', 91, 91, 91),
(92, '2024-06-02 10:00:00', 'Efectivo', 92, 92, 92),
(93, '2024-06-02 11:15:00', 'Tarjeta de débito', 93, 93, 93),
(94, '2024-06-02 12:20:00', 'Efectivo', 94, 94, 94),
(95, '2024-06-02 13:30:00', 'Transferencia bancaria', 95, 95, 95),
(96, '2024-06-02 14:45:00', 'Tarjeta de crédito', 96, 96, 96),
(97, '2024-06-02 15:50:00', 'Efectivo', 97, 97, 97),
(98, '2024-06-02 16:55:00', 'Tarjeta de débito', 98, 98, 98),
(99, '2024-06-02 18:00:00', 'Efectivo', 99, 99, 99),
(100, '2024-06-02 19:15:00', 'Tarjeta de crédito', 100, 100, 100),
(101, '2024-06-02 20:20:00', 'Efectivo', 101, 101, 101),
(102, '2024-06-02 21:30:00', 'Tarjeta de débito', 102, 102, 102),
(103, '2024-06-02 22:35:00', 'Transferencia bancaria', 103, 103, 103),
(104, '2024-06-02 23:40:00', 'Tarjeta de crédito', 104, 104, 104),
(105, '2024-06-03 10:00:00', 'Efectivo', 105, 105, 105),
(106, '2024-06-03 11:15:00', 'Tarjeta de débito', 106, 106, 106),
(107, '2024-06-03 12:20:00', 'Efectivo', 107, 107, 107),
(108, '2024-06-03 13:30:00', 'Transferencia bancaria', 108, 108, 108),
(109, '2024-06-03 14:45:00', 'Tarjeta de crédito', 109, 109, 109),
(110, '2024-06-03 15:50:00', 'Efectivo', 110, 110, 110),
(111, '2024-06-03 16:55:00', 'Tarjeta de débito', 111, 111, 111),
(112, '2024-06-03 18:00:00', 'Efectivo', 112, 112, 112),
(158, '2024-05-31 10:00:00', 'Efectivo', 113, 113, 113),
(159, '2024-05-31 11:15:00', 'Tarjeta de débito', 114, 114, 114),
(160, '2024-05-31 12:20:00', 'Efectivo', 115, 115, 115),
(161, '2024-05-31 13:30:00', 'Transferencia bancaria', 116, 116, 116),
(162, '2024-05-31 14:45:00', 'Tarjeta de crédito', 117, 117, 117),
(163, '2024-05-31 15:50:00', 'Efectivo', 118, 118, 118),
(164, '2024-05-31 16:55:00', 'Tarjeta de débito', 119, 119, 119),
(165, '2024-05-31 18:00:00', 'Efectivo', 120, 120, 120),
(166, '2024-05-31 19:15:00', 'Tarjeta de crédito', 121, 121, 121),
(167, '2024-05-31 20:20:00', 'Efectivo', 122, 122, 122),
(168, '2024-05-31 21:30:00', 'Tarjeta de débito', 123, 123, 123),
(169, '2024-05-31 22:35:00', 'Transferencia bancaria', 124, 124, 124),
(170, '2024-05-31 23:40:00', 'Tarjeta de crédito', 125, 125, 125),
(171, '2024-06-01 10:00:00', 'Efectivo', 126, 126, 126),
(172, '2024-06-01 11:15:00', 'Tarjeta de débito', 127, 127, 127),
(173, '2024-06-01 12:20:00', 'Efectivo', 128, 128, 128),
(174, '2024-06-01 13:30:00', 'Transferencia bancaria', 129, 129, 129),
(175, '2024-06-01 14:45:00', 'Tarjeta de crédito', 130, 130, 130),
(176, '2024-06-01 15:50:00', 'Efectivo', 131, 131, 131),
(177, '2024-06-01 16:55:00', 'Tarjeta de débito', 132, 132, 132),
(178, '2024-06-01 18:00:00', 'Efectivo', 133, 133, 133),
(179, '2024-06-01 19:15:00', 'Tarjeta de crédito', 133, 133, 133),
(180, '2024-06-01 20:20:00', 'Efectivo', 134, 134, 134),
(181, '2024-06-01 21:30:00', 'Tarjeta de débito', 135, 135, 135),
(182, '2024-06-01 22:35:00', 'Transferencia bancaria', 136, 136, 136),
(183, '2024-06-01 23:40:00', 'Tarjeta de crédito', 137, 137, 137),
(184, '2024-06-02 10:00:00', 'Efectivo', 138, 138, 138),
(185, '2024-06-02 11:15:00', 'Tarjeta de débito', 139, 139, 139),
(186, '2024-06-02 12:20:00', 'Efectivo', 140, 140, 140),
(187, '2024-06-02 13:30:00', 'Transferencia bancaria', 141, 141, 141),
(188, '2024-06-02 14:45:00', 'Tarjeta de crédito', 142, 142, 142),
(189, '2024-06-02 15:50:00', 'Efectivo', 143, 143, 143),
(190, '2024-06-02 16:55:00', 'Tarjeta de débito', 144, 144, 144),
(191, '2024-06-02 18:00:00', 'Efectivo', 145, 145, 145),
(192, '2024-06-02 19:15:00', 'Tarjeta de crédito', 146, 146, 146),
(193, '2024-06-02 20:20:00', 'Efectivo', 147, 147, 147),
(194, '2024-06-02 21:30:00', 'Tarjeta de débito', 148, 148, 148),
(195, '2024-06-02 22:35:00', 'Transferencia bancaria', 149, 149, 149),
(196, '2024-06-02 23:40:00', 'Tarjeta de crédito', 150, 150, 150),
(197, '2024-06-03 10:00:00', 'Efectivo', 151, 151, 151),
(198, '2024-06-03 11:15:00', 'Tarjeta de débito', 152, 152, 152),
(199, '2024-06-03 12:20:00', 'Efectivo', 153, 153, 153),
(200, '2024-06-03 13:30:00', 'Transferencia bancaria', 154, 154, 154),
(201, '2024-06-03 14:45:00', 'Tarjeta de crédito', 155, 155, 155),
(202, '2024-06-03 15:50:00', 'Efectivo', 156, 156, 156);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`codigo_sede`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`idtransaccion`),
  ADD KEY `fk_cliente_1` (`fk_cliente`),
  ADD KEY `fk_producto_1` (`fk_producto`),
  ADD KEY `fk_sede_1` (`fk_sede`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `codigo_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `idtransaccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD CONSTRAINT `fk_cliente_1` FOREIGN KEY (`fk_cliente`) REFERENCES `clientes` (`idcliente`),
  ADD CONSTRAINT `fk_producto_1` FOREIGN KEY (`fk_producto`) REFERENCES `productos` (`idproducto`),
  ADD CONSTRAINT `fk_sede_1` FOREIGN KEY (`fk_sede`) REFERENCES `sede` (`codigo_sede`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
