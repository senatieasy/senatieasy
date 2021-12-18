-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-12-2021 a las 18:59:58
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `senatieasy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campus`
--

CREATE TABLE `campus` (
  `ID` int(8) NOT NULL,
  `CAMPUS` varchar(50) NOT NULL,
  `LOCATION` varchar(250) NOT NULL,
  `STATUS` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `campus`
--

INSERT INTO `campus` (`ID`, `CAMPUS`, `LOCATION`, `STATUS`) VALUES
(1, 'Abancay', 'Av. Circunvalacion #1515, Patibamba', b'1'),
(2, 'Andahuaylas', 'Av. Ejercito #785 - Andahuaylas', b'1'),
(3, 'Arequipa', 'Ca. Miguel Forga #246, Z.I. Parque Industrial', b'1'),
(4, 'Ayacucho', 'Jr. Wari #245, Urb. 16 de Abril, Huamanga', b'1'),
(5, 'Cañete', 'Av. Santa Rosa Mza. X, Lote.27, Urb. Santa Rosa de Hualcara', b'1'),
(6, 'Cajamarca - Baños del inca', 'Av. Manco Capac #292', b'1'),
(7, 'Cajamarca - Luis Reyna Farge', 'Jr. Luis Reyna Farge #100', b'1'),
(8, 'Callao', 'Av.Pedro Beltran #672, Urb. Ciudad Satelite', b'1'),
(9, 'Casma', 'Av. Reyna Mz. T Lote 6', b'1'),
(10, 'Cercado de Lima', 'Av. 28 de Julio #715', b'1'),
(11, 'Cercado de Lima - ESCUELA DE POSTGRADO TECH SENATI', 'Av. 28 de Julio #715', b'1'),
(12, 'Cerro de Pasco - Crespo y Castilla', 'Jr. Crespo y Castillo #300, San Juan Pampa', b'1'),
(13, 'Cerro de Pasco - Industrial', 'Av. Industrial #501, Urb. Villa de Pasco, Tinyahuarco', b'1'),
(14, 'Chachapoyas', 'Jr. Ayacucho #253', b'1'),
(15, 'Chepen', 'Calle Arequipa 319', b'1'),
(16, 'Chiclayo', 'Av. Juan Tomis Stack #990', b'1'),
(17, 'Chiclayo - 7 de Enero', 'Ca. 7 de Enero # 676', b'1'),
(18, 'Chimbote - Universitaria', 'Av Universitaria s/n - Urb Bella Mar', b'1'),
(19, 'Chincha', 'Ca. Las Gardenias #120, Panamericana Sur Km 200', b'1'),
(20, 'Cusco', 'Av. Pedro Vilcapaza #305, Wanchaq', b'1'),
(21, 'Huacho', 'Ca. San Roman #340', b'1'),
(22, 'Huancavelica', 'Carretera Via Los Libertadores - Pisco Km. 6, Callqui Chico', b'1'),
(23, 'Huancayo - Las Violetas', 'Jr. Las Violetas #401, La Estancia', b'1'),
(24, 'Huancayo - Mariscal Castilla', 'Av. Mariscal Castilla #1730', b'1'),
(25, 'Huaraz - Los Girasoles', 'Jr. Los Girasoles Mz. 176-A, Lote 01 , Vill', b'1'),
(26, 'Huaraz - Toribio Luzuriaga', 'Av. Toribio Luzuriaga #878-882, 2do Nivel', b'1'),
(27, 'Huarmey', 'Av. Puerto Grande Mz. ', b'1'),
(28, 'Huaura', 'Av. San Martin #510 y Av. Coronel Portillo #517', b'1'),
(29, 'HuÃ¡nuco', 'Ca. 5, Mz D, Lote 5, Urb. Primavera', b'1'),
(30, 'Ica', 'Av. 28 de Julio 590, Entrada Principal a Subtanjalla', b'1'),
(31, 'Ilo - Pampa Inal', 'Pampa Inalambrica, Sector 2, Mz A, Lote 10', b'1'),
(32, 'Independencia', 'Av. Alfredo Mendiola #3540', b'1'),
(33, 'Iquitos - 20 de Junio', 'Psje. 20 de Junio #157', b'1'),
(34, 'Iquitos - Pampa Chica', 'Av. De la Benemerita Guardia Civil #1752 - 1762', b'1'),
(35, 'Jaen', 'Av. Pakamuros #782', b'1'),
(36, 'Juliaca - CircunvalaciÃ³n Sur', 'CircunvalaciÃ³n Sur, Urb. Taparachi (APIRAJ)', b'1'),
(37, 'Juliaca - Mariano NuÃ±ez', 'Jr. Mariano NuÃ±ez #243, Cercado', b'1'),
(38, 'Juliaca - Universal', 'Av. Universal #208, Lote. B1B, Urb. Taparachi', b'1'),
(39, 'La Merced', 'Jr. Arequipa #422', b'1'),
(40, 'La Oroya', 'Av. Almirante Grau S/N, Carretera Central Km #174', b'1'),
(41, 'Laredo', 'Av. Trujillo s/n', b'1'),
(42, 'Mollendo', 'Ca. 1 S/N, Urb. Las Ambarinas', b'1'),
(43, 'Moyobamba', 'Av. Grau Cdra. 5 S/N', b'1'),
(44, 'Paita', 'Calle los Cocos  Mz. U Lote 1A - El Tablazo San Francisco', b'1'),
(45, 'Pichanaqui', 'Av. Marginal #568 - Pichanaqui', b'1'),
(46, 'Pisco', 'Urb. Residencial Paracas, Calle #4 S/N', b'1'),
(47, 'Piura - La Libertad', 'Ca. Libertad Norte #250 - Interior. 3 - Barrio Norte', b'1'),
(48, 'Piura - Zona Industrial', 'Av. Los Diamantes s/n - Zonal Industrial', b'1'),
(49, 'Pucallpa', 'Av. Centenario Km. 4.50', b'1'),
(50, 'Puerto Maldonado', 'Jr. Marco Ruiz C-4, AAHH, La selva', b'1'),
(51, 'Puno', 'Av. El Estudiante #700', b'1'),
(52, 'RÃ­o Negro', 'Av. Alameda Marginal Sur #743', b'1'),
(53, 'San Juan de Lurigancho', 'Av. Canto Grande #114', b'1'),
(54, 'San MartÃ­n', 'Esq. Isidro Alcibar y Mauro Valderrama S/N, Urb, Ingenieria', b'1'),
(55, 'San RamÃ³n', 'Jr. Los Oropeles #906, Urb. Virgen de Lourdes', b'1'),
(56, 'Satipo', 'Jr. Julio C. Tello #689', b'1'),
(57, 'Sechura', 'Calle 7 Mz \"A\", Lote 12 Zona 5, Zona Industrial', b'1'),
(58, 'Sullana', 'Av. Champagna #1510 - Urb. Santa Rosa', b'1'),
(59, 'Surquillo', 'Av. Barbara D\'Achille 230 Urb. La Calera de la Merced', b'1'),
(60, 'Surquillo - CTA', 'Av. Barbara D\'Achille 230 Urb. La Calera de la Merced', b'1'),
(61, 'Tacna - Baquijano y Carrillo', 'Ca. Baquijano y Carrillo #130', b'1'),
(62, 'Tacna - BolÃ­var', 'Ca. Bolivar #294', b'1'),
(63, 'Talara - Aproviser', 'Av. 2 s/n - Urbanizacion', b'1'),
(64, 'Tarapoto', 'Jr. Martinez de Companion #1095', b'1'),
(65, 'Trujillo - Mansiche', 'Avenida Mansiche #1733, Trujillo (Centro Comercial EXPOMALL)', b'1'),
(66, 'Trujillo - Parque Industrial', 'Parque Industrial Lt. 28A, La Esperanza', b'1'),
(67, 'Tumbes', 'Av. Tumbes Norte #2838 - Carretera Pan. Norte Km. 253', b'1'),
(68, 'Utcubamba', 'Av. 27 de Octubre #316, Cajarudo', b'1'),
(69, 'Villa el Salvador', 'Av. Pachacutec Mza. A, Lote. 1 Z.I., Parque Industrial', b'1'),
(70, 'VirÃº', 'Av. Viru #419', b'1'),
(71, 'Yurimaguas', 'Ca. Angamos #214', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `careers`
--

CREATE TABLE `careers` (
  `ID` int(11) NOT NULL,
  `CAREER` varchar(50) NOT NULL,
  `STATUS` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `careers`
--

INSERT INTO `careers` (`ID`, `CAREER`, `STATUS`) VALUES
(1, 'Administración de Base de Datos', b'1'),
(2, 'Administración de Empresas', b'1'),
(3, 'Administración de la Producción', b'1'),
(4, 'Administración Industrial', b'1'),
(5, 'Administración Logística', b'1'),
(6, 'Agroindustria', b'1'),
(7, 'Cocinero de Comida Peruana e Internacional', b'1'),
(8, 'Confeccionista de Prendas de Vestir', b'1'),
(9, 'Control de Calidad y Procesos en la Industria Alim', b'1'),
(10, 'Controlista de Calidad Textil', b'1'),
(11, 'Desarrollo de Software', b'1'),
(12, 'Dibujante Técnico Mecánico', b'1'),
(13, 'Diseño de Estructuras Metálicas y de Construcción', b'1'),
(14, 'Diseño Gráfico', b'1'),
(15, 'Diseño Gráfico Digital', b'1'),
(16, 'Diseño Industrial', b'1'),
(17, 'Diseño y Desarrollo de Máquinas', b'1'),
(18, 'Diseño y Desarrollo de Videojuegos en Realidad Aum', b'1'),
(19, 'Diseño y Desarrollo Web', b'1'),
(20, 'Diseño y Gestión de Moda', b'1'),
(21, 'Diseño y Gestión en Joyería', b'1'),
(22, 'Diseño y Producción de Animación Digital', b'1'),
(23, 'Electricista Automotriz', b'1'),
(24, 'Electricista Industrial', b'1'),
(25, 'Electrónica Industrial', b'1'),
(26, 'Electrónico Industrial', b'1'),
(27, 'Electrotecnia Industrial', b'1'),
(28, 'Guía Oficial de Turismo', b'1'),
(29, 'Ingeniería de Ciberseguridad', b'1'),
(30, 'Ingeniería de Ciencia de Datos e Inteligencia Arti', b'1'),
(31, 'Ingeniería de Cloud Computing y Data Center', b'1'),
(32, 'Ingeniería de Software con Inteligencia Artificial', b'1'),
(33, 'Ingeniería de Soporte de TI', b'1'),
(34, 'Ingeniería de Tecnologías de la Información y Comu', b'1'),
(35, 'Instrumentación y Control de Procesos Industriales', b'1'),
(36, 'Internet de las Cosas y Big Data', b'1'),
(37, 'Internet de las Cosas y Machine Learning', b'1'),
(38, 'Mantenimiento de Maquinaria Pesada Minera', b'1'),
(39, 'Mantenimiento de Maquinaria Pesada para Construcci', b'1'),
(40, 'Mantenimiento de Plantas Industriales', b'1'),
(41, 'Matricería', b'1'),
(42, 'Mecánica de Producción', b'1'),
(43, 'Mecánico Automotriz', b'1'),
(44, 'Mecánico de Automotores Diesel', b'1'),
(45, 'Mecánico de Construcciones Metálicas', b'1'),
(46, 'Mecánico de Mantenimiento', b'1'),
(47, 'Mecánico de Mantenimiento de Maquinaria Pesada', b'1'),
(48, 'Mecánico de Maquinaria Agrícola', b'1'),
(49, 'Mecánico de Maquinaria Pesada', b'1'),
(50, 'Mecánico de Máquinas Herramientas', b'1'),
(51, 'Mecánico de Motores Menores', b'1'),
(52, 'Mecánico Electricista de Mantenimiento', b'1'),
(53, 'Mecatrónica Automotriz', b'1'),
(54, 'Mecatrónica de Buses y Camiones', b'1'),
(55, 'Mecatrónica de Fabricación Metalmecánica', b'1'),
(56, 'Mecatrónica de Máquinas de Confección Textil', b'1'),
(57, 'Mecatrónica Industrial', b'1'),
(58, 'Mecatrónica Textil', b'1'),
(59, 'Operador de Procesos en la Industria Alimentaria', b'1'),
(60, 'Panificador Industrial', b'1'),
(61, 'Procesador Industrial de Alimentos', b'1'),
(62, 'Procesos de Producción Industrial', b'1'),
(63, 'Procesos de Producción Textil', b'1'),
(64, 'Procesos Tecnológicos de Soldadura', b'1'),
(65, 'Producción Gráfica', b'1'),
(66, 'Química Industrial', b'1'),
(67, 'Química Textil', b'1'),
(68, 'Redes y Seguridad Informática', b'1'),
(69, 'Refrigeración y Climatización Industrial', b'1'),
(70, 'Seguridad de la Información', b'1'),
(71, 'Seguridad Industrial y Prevención de Riesgos', b'1'),
(72, 'Soldador Estructural', b'1'),
(73, 'Soldador Universal', b'1'),
(74, 'Soporte y Mantenimiento de Equipos de Computación', b'1'),
(75, 'Técnicas de Ingeniería en Industrias Alimentarias', b'1'),
(76, 'Técnicas en Ingeniería Electrónica', b'1'),
(77, 'Técnicas en Ingeniería Mecánica de Mantenimiento', b'1'),
(78, 'Tecnología de Procesos de Producción de Prendas de', b'1'),
(79, 'Tecnologías Ambientales', b'1'),
(80, 'Tratamiento del Agua', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coments`
--

CREATE TABLE `coments` (
  `ID` int(8) NOT NULL,
  `COMENT` varchar(50) NOT NULL,
  `ID_REVIEW` int(8) NOT NULL,
  `ID_USER` int(8) NOT NULL,
  `FECH_PUB` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `ID` int(8) NOT NULL,
  `COURSE` varchar(50) NOT NULL,
  `ID_SEMESTER` int(8) NOT NULL,
  `ID_CAREER` int(8) NOT NULL,
  `STATUS` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`ID`, `COURSE`, `ID_SEMESTER`, `ID_CAREER`, `STATUS`) VALUES
(21, 'Programación Orientada a Objetos', 3, 32, b'1'),
(22, 'Lenguaje de Programación II', 3, 32, b'1'),
(23, 'Desarrollo de Aplicaciones Web', 3, 32, b'1'),
(24, 'Base y Estructura de Datos II', 3, 32, b'1'),
(25, 'Modelado y Diseño de Software', 3, 32, b'1'),
(26, 'Inglés III', 3, 32, b'1'),
(27, 'Algoritmia de la Programación del Software', 2, 32, b'1'),
(28, 'Calidad Total', 2, 32, b'1'),
(29, 'Inglés II', 2, 32, b'1'),
(30, 'Lenguaje de Programación II', 2, 32, b'1'),
(31, 'Desarrollo de Aplicaciones Web', 2, 32, b'1'),
(32, 'Base y Estructura de Datos I', 2, 32, b'1'),
(33, 'Sistemas Operativos', 2, 32, b'1'),
(34, 'Técnicas de la Comunicación', 2, 32, b'1'),
(35, 'Seguridad e Higiene Industrial', 2, 32, b'1'),
(36, 'Desarrollo Humano', 2, 32, b'1'),
(37, 'Matemática', 1, 32, b'1'),
(38, 'Física y Química', 1, 32, b'1'),
(39, 'Lenguaje y Comunicación', 1, 32, b'1'),
(40, 'Inglés I', 1, 32, b'1'),
(41, 'Introducción a las Tecnologías de la Información', 1, 32, b'1'),
(42, 'Competencias Digitales Para la Industria', 1, 32, b'1'),
(43, 'Desarrollo Personal y Taller de Liderazgo', 1, 32, b'1'),
(44, 'Algoritmia para la Inteligencia Artificial', 4, 32, b'1'),
(45, 'Base y Estructura de Datos III', 4, 32, b'1'),
(46, 'Desarrollo de Aplicaciones Web III', 4, 32, b'1'),
(47, 'Formación Práctica Remota S4', 4, 32, b'1'),
(48, 'Lenguaje de Programación III', 4, 32, b'1'),
(49, 'Modelado y Diseño del Software III', 4, 32, b'1'),
(50, 'Desarrollo de Aplicaciones WEB III', 4, 32, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history`
--

CREATE TABLE `history` (
  `ID` int(8) NOT NULL,
  `REVIEW` varchar(50) NOT NULL,
  `CONTAIN` text NOT NULL,
  `ID_COURSE` int(11) NOT NULL,
  `ID_USER` int(8) NOT NULL,
  `FECH_PUB` timestamp NOT NULL DEFAULT current_timestamp(),
  `ESTADO` varchar(11) NOT NULL DEFAULT 'Agregado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interactions`
--

CREATE TABLE `interactions` (
  `ID` int(8) NOT NULL,
  `INTERACTION` varchar(50) NOT NULL,
  `ID_REVIEW` int(8) NOT NULL,
  `ID_USER` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `ID` int(8) NOT NULL,
  `PERMISSION` varchar(200) NOT NULL,
  `ACTIONS` varchar(200) NOT NULL,
  `TABLE` varchar(50) NOT NULL,
  `ID_ROL` int(8) NOT NULL,
  `STATUS` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `ID` int(8) NOT NULL,
  `ID_SHARE` char(9) NOT NULL,
  `REVIEW` varchar(50) NOT NULL,
  `CONTAIN` text NOT NULL,
  `VIEWS` int(11) NOT NULL DEFAULT 0,
  `SHARES` int(11) NOT NULL DEFAULT 0,
  `OUTSTANDING` tinyint(1) NOT NULL,
  `ID_COURSE` int(11) NOT NULL,
  `ID_USER` int(8) DEFAULT NULL,
  `FECH_PUB` timestamp NOT NULL DEFAULT current_timestamp(),
  `STATUS` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reviews`
--

INSERT INTO `reviews` (`ID`, `ID_SHARE`, `REVIEW`, `CONTAIN`, `VIEWS`, `SHARES`, `OUTSTANDING`, `ID_COURSE`, `ID_USER`, `FECH_PUB`, `STATUS`) VALUES
(1, '2e26-5aaa', 'Autoevaluación T01', '[{\"question\":\"\\u00bfC\\u00f3mo se abre y cierra un bloque de c\\u00f3digo PHP?:\",\"answer\":\"<code><?php ?><\\/code>\"},{\"question\":\"\\u00bfCon qu\\u00e9 s\\u00edmbolo debe empezar el nombre de una variable en PHP?\",\"answer\":\"<code>$<\\/code>\"},{\"question\":\"\\u00bfCu\\u00e1les son los operadores relacionales?\",\"answer\":\"<code><, >, <=, >=, ==, !=<\\/code>\"},{\"question\":\"\\u00bfCu\\u00e1l es la siguiente estructura de control?\\n<pre><code>if (($promedio >=10) && ($promedio <= 20))<\\/code><\\/pre>\",\"answer\":\"Estructura condicional\"},{\"question\":\"\\u00bfQu\\u00e9 es la variable predefinida <code>$GLOBALS<\\/code>?\",\"answer\":\"Es una variable que contiene una referencia a cada variable disponible en el espectro de las variables del script.\"}]', 21, 0, 0, 23, NULL, '2021-05-04 05:00:00', b'1'),
(2, '7ea9-0c3c', 'Autoevaluación T02', '[{\"question\":\"\\u00bfC\\u00f3mo se llama la aplicaci\\u00f3n visual que nos permite crear y manipular bases de datos sin necesidad de tener un conocimiento profundo de MySQL?:\",\"answer\":\"Tablas, Campos y Registros\"},{\"question\":\"\\u00bfQu\\u00e9 es una base de datos?\",\"answer\":\"Es un conjunto de datos pertenecientes a un mismo contexto y almacenados sistem\\u00e1ticamente para su posterior uso.\"},{\"question\":\"\\u00bfQu\\u00e9 es MySQL?\",\"answer\":\"Es un sistema de gesti\\u00f3n de bases de datos\"},{\"question\":\"\\u00bfQu\\u00e9 procedimiento puedo hacer con el siguiente comando?\\n<pre><code>$STH = $DBH -> prepare(\\\"INSERT INTO folks ( first_name ) VALUES ( \'Cathy\' )\\\");<\\/code><\\/pre>\",\"answer\":\"Insertar Registro\"}]', 13, 0, 0, 23, NULL, '2021-05-04 05:00:00', b'1'),
(3, '9784-3032', 'Autoevaluación T03', '[{\"question\":\"\\u00bfCu\\u00e1l es el objeto necesario para crear una conexi\\u00f3n mediante AJAX?:\",\"answer\":\"XMLHttpRequest\"},{\"question\":\"\\u00bfQu\\u00e9 se requiere indicar para que una conexi\\u00f3n AJAX sea s\\u00edncrona o as\\u00edncrona?\",\"answer\":\"Incluimos un tercer par\\u00e1metro en la llamada al m\\u00e9todo <code>open()<\\/code> de la conexi\\u00f3n\"},{\"question\":\"La propiedad type del objeto con el que se realiza una llamada AJAX mediante jQuery\",\"answer\":\"Permite indicar si se va a realizar una conexi\\u00f3n mediante el m\\u00e9todo GET o el m\\u00e9todo POST.\"},{\"question\":\"\\u00bfCu\\u00e1l es la forma correcta de almacenar en una variable de Javascript la informaci\\u00f3n en formato JSON?\",\"answer\":\"<pre><code>var variable=eval( \\\" ( \\\"+ this.responseText+ \\\" ) \\\" );<\\/code><\\/pre>\"},{\"question\":\"\\u00bfQu\\u00e9 significa AJAX?\",\"answer\":\"Asynchronous Javascript and XML\"}]', 10, 0, 0, 23, NULL, '2021-05-04 05:00:00', b'1'),
(4, '901f-1653', 'Autoevaluación T04', '[{\"question\":\"\\u00bfC\\u00f3mo sirvo y\\/o ejecuto una aplicaci\\u00f3n en Angular gracias a su servidor web integrado?:\",\"answer\":\"ng serve\"},{\"question\":\"Se podr\\u00eda decir que un componente es:\",\"answer\":\"Una directiva con un template.\"},{\"question\":\"\\u00bfEn qu\\u00e9 carpeta de un proyecto en Angular va nuestro c\\u00f3digo fuente?\",\"answer\":\"src\"},{\"question\":\"\\u00bfC\\u00f3mo se utiliza una Directiva?\",\"answer\":\"Un atributo\"},{\"question\":\"\\u00bfQu\\u00e9 directiva permite enlazar cualquier comportamiento personalizado al evento click del elemento?\",\"answer\":\"ngClick\"}]', 20, 0, 0, 23, NULL, '2021-05-04 05:00:00', b'1'),
(5, 'f27f-d64c', 'Evaluación final del curso - EV1', '[{\"question\":\"Par\\u00e1metros enviados tanto v\\u00eda GET como v\\u00eda POST\\u2026\",\"answer\":\"<code>$_REQUEST<\\/code>\"},{\"question\":\"\\u00bfD\\u00f3nde se almacenan los datos una sesi\\u00f3n?\",\"answer\":\"En el servidor.\"},{\"question\":\"\\u00bfPara qu\\u00e9 se utiliza Ajax?\",\"answer\":\"Actualizar una p\\u00e1gina sin recargar toda la p\\u00e1gina, petici\\u00f3n de datos al servidor despu\\u00e9s que la pagina ha sido recargada, recibir datos del servidor despu\\u00e9s de que la pagina cargada, enviar datos al servidor.\"},{\"question\":\"\\u00bfQu\\u00e9 instrucci\\u00f3n permite mostrar dos registros a partir del registro n\\u00famero 3 pero en sentido de id descendente?\",\"answer\":\"<pre><code>$query = \\\"select * from $tabla_db1 ORDER BY id DESC LIMIT 3,2\\\";<\\/code><\\/pre>\"},{\"question\":\"Cuando tenemos que enviar los datos de un formulario a una p\\u00e1gina php para que los procese. \\u00bfEn qu\\u00e9 propiedad del formulario indicaremos el nombre de la p\\u00e1gina?\",\"answer\":\"action\"},{\"question\":\"Indicar cu\\u00e1l de los siguientes nombres de variables en PHP son correctos:\",\"answer\":\"<code>$nombre_archivo<\\/code>\"},{\"question\":\"Cuando la propiedad action de un formulario se establece a \\\"\\\" o no se indica, significa que:\",\"answer\":\"Los datos se tienen que procesar en la misma p\\u00e1gina donde se define el formulario\"},{\"question\":\"\\u00bfQu\\u00e9 tipo de aplicaci\\u00f3n es Apache?\",\"answer\":\"Un servidor web\"},{\"question\":\"\\u00bfCu\\u00e1l de las siguientes variables est\\u00e1 declarada de forma correcta?\",\"answer\":\"<code>$edad = 25;<\\/code>\"},{\"question\":\"\\u00bfQu\\u00e9 significa la siguiente expresi\\u00f3n? <code>$promedio==17;<\\/code>\",\"answer\":\"El valor de la variable <code>$promedio<\\/code> es igual a 17\"},{\"question\":\"\\u00bfCu\\u00e1l de los siguientes s\\u00edmbolos se utiliza para concatenar en PHP?\",\"answer\":\"<code>.<\\/code>\"},{\"question\":\"\\u00bfCu\\u00e1l control debe crearse en un formulario para obtener una respuesta \\u00fanica entre varias opciones?\",\"answer\":\"Control Select\"},{\"question\":\"\\u00bfQu\\u00e9 operador de comparaci\\u00f3n utilizaremos para comprobar que dos valores son iguales y del mismo tipo?\",\"answer\":\"<code>===<\\/code>\"},{\"question\":\"\\u00bfQu\\u00e9 valor tomar\\u00e1 la variable <code>$a<\\/code> al finalizar la ejecuci\\u00f3n del siguiente c\\u00f3digo?:\\n<pre><code>$a=10; \\n$b=5; \\n$a+=$b++; <\\/code><\\/pre>\",\"answer\":\"15\"},{\"question\":\"\\u00bfCu\\u00e1l ser\\u00e1 el resultado tras finalizar la ejecuci\\u00f3n del siguiente c\\u00f3digo?\\n<pre><code>$resultado=1;\\n$contador=0;\\n\\ndo {\\n   if($resultado%2==0) break;\\n   $resultado+=$contador;\\n} while ($contador++<=10);<\\/code><\\/pre>\",\"answer\":\"<code>$resultado=2<\\/code> y <code>$contador=2<\\/code>\"},{\"question\":\"\\u00bfCu\\u00e1l ser\\u00e1 el valor de $a tras evaluarse la condici\\u00f3n m\\u00faltiple del siguiente c\\u00f3digo?\\n<pre><code>$a=10.5;\\n$b=\\u201910.5\\u2019;\\n$c=2;\\n\\nif($a===$b):\\n   $a*=$c;\\nelseif($a!=$b):\\n   $a\\/=$c;\\nelse:\\n   $a+=$c;\\nendif;<\\/code><\\/pre>\",\"answer\":\"12.5\"},{\"question\":\"\\u00bfQu\\u00e9 operador incrementa $a en uno, y luego devuelve el valor de $a?\",\"answer\":\"<code>++$a<\\/code>\"},{\"question\":\"Para consultar las variables de sesi\\u00f3n se utiliza el array global:\",\"answer\":\"<code>$_SESSION<\\/code>\"},{\"question\":\"Para poder iniciar una sesi\\u00f3n de trabajo tendremos que ejecutar la funci\\u00f3n:\",\"answer\":\"<code>session_start<\\/code>\"},{\"question\":\"Una sesi\\u00f3n permanece abierta hasta:\",\"answer\":\"Se cierra con la funci\\u00f3n <code>session_destroy<\\/code>\"}]', 36, 30, 1, 23, NULL, '2021-05-04 05:00:00', b'1'),
(6, 'b3d7-e2c0', 'Autoevaluación T01', '[{\"question\":\"\\u00bfCu\\u00e1l de los siguientes es parte de una clase, tiene su propio estado, comportamiento y definici\\u00f3n?\",\"answer\":\"Objeto\"},{\"question\":\"\\u00bfCu\\u00e1l de los siguientes No es un operador?\",\"answer\":\"<code>\\/\\/<\\/code>\"},{\"question\":\"\\u00bfCu\\u00e1nto mide el valor l\\u00f3gico de tipo boolean?\",\"answer\":\"1 bit\"},{\"question\":\"\\u00bfQu\\u00e9 s\\u00edmbolos se utilizan para comentarios de una sola l\\u00ednea?\",\"answer\":\"<code>\\/\\/<\\/code>\"},{\"question\":\"Es la representaci\\u00f3n de un cierto tipo de objeto. Es el plan que define las caracter\\u00edsticas de un objeto\",\"answer\":\"Clase\"}]', 10, 0, 0, 21, NULL, '2021-05-05 05:00:00', b'1'),
(7, '0b1c-e562', 'Autoevaluación T02', '[{\"question\":\"\\u00bfCu\\u00e1l es la forma de proteger u ocultar las propiedades de un objeto, estableciendo los permisos y niveles de visibilidad?\",\"answer\":\"Encapsulaci\\u00f3n\"},{\"question\":\"________definen lo que una clase que la implemente debe hacer, mas no la forma como lo har\\u00e1, podemos decir que _______________ son completamente abstractas y que todos sus m\\u00e9todos lo son y no poseen implementaci\\u00f3n.\",\"answer\":\"Las Interfaces\"},{\"question\":\"Dado el siguiente c\\u00f3digo: \\n<pre><code>Public class alumno implements Persona<\\/code><\\/pre>\\n \\u00bfQu\\u00e9 es persona?\",\"answer\":\"Una interface\"},{\"question\":\"\\u00bfQu\\u00e9 c\\u00f3digo de las siguientes l\\u00edneas se debe usar para que Alumno sea una clase heredada de Persona?\",\"answer\":\"<pre><code>Public class Alumno extends Persona<\\/code><\\/pre>\"},{\"question\":\"\\u00bfQu\\u00e9 caracter\\u00edstica de Java hace referencia a que a partir de una clase podemos crear una nueva, indicando solo las diferencias?\",\"answer\":\"Herencia\"}]', 5, 0, 0, 21, NULL, '2021-05-05 05:00:00', b'1'),
(8, 'e6bc-6d54', 'Autoevaluación T03', '[{\"question\":\"\\u00bfCu\\u00e1l es el concepto con el cual se aclara que una clase divide la estructura y comportamiento definidos en otra clase?\",\"answer\":\"Herencia\"},{\"question\":\"\\u00bfC\\u00f3mo se llama el proceso donde la herencia es aplicada a una clase?\",\"answer\":\"Herencia \\u00fanica\"},{\"question\":\"\\u00bfQu\\u00e9 concepto de programaci\\u00f3n orientada a objetos se utiliza como mecanismo de reutilizaci\\u00f3n?\",\"answer\":\"La herencia\"},{\"question\":\"\\u00bfC\\u00f3mo se define al m\\u00e9todo que se utiliza para iniciar el estado de un objeto, y est\\u00e1 incluido desde el momento que se crea el objeto?\",\"answer\":\"Constructor\"},{\"question\":\"El ___________ es el m\\u00e9todo que se nombra de forma autom\\u00e1tica cuando el objeto est\\u00e1 realizado de alcance. El __________ debe llevar el mismo nombre de la clase, pero lleva el s\\u00edmbolo de tilde est\\u00e1 colocado antes del nombre.\",\"answer\":\"Destructor\"}]', 5, 0, 0, 21, NULL, '2021-05-05 05:00:00', b'1'),
(9, 'f5c5-a7b8', 'Autoevaluación T04', '[{\"question\":\"\\u00bfCu\\u00e1l es la asignaci\\u00f3n de un valor que se da a una subclase, o que se hab\\u00eda declarado ya en la clase principal?\\u00bfCu\\u00e1l es la asignaci\\u00f3n de un valor que se da a una subclase, o que se hab\\u00eda declarado ya en la clase principal?\",\"answer\":\"Polimorfismo\"},{\"question\":\"\\u00bfQu\\u00e9 ocurre cuando las funciones del mismo nombre existen, con funcionalidad similar, en clases que son completamente independientes una de otra?\",\"answer\":\"Polimorfismo de sobrecarga\"},{\"question\":\"\\u00bfCu\\u00e1l es el m\\u00e9todo de cancelaci\\u00f3n en el cual la llamada a una funci\\u00f3n anulada se resolver\\u00e1 durante el tiempo de ejecuci\\u00f3n?\",\"answer\":\"El polimorfismo din\\u00e1mico\"},{\"question\":\"\\u00bfQu\\u00e9 representa diferentes maneras de realizar una misma acci\\u00f3n?\",\"answer\":\"Sobrecarga\"},{\"question\":\"\\u00bfQu\\u00e9 sucede cuando una clase \\u201cB\\u201d hereda caracter\\u00edsticas de una clase \\u201cA\\u201d, pero la clase \\u201cB\\u201d re-define las caracter\\u00edsticas heredadas de \\u201cA\\u201d?\",\"answer\":\"Sobreescritura\"}]', 5, 0, 0, 21, NULL, '2021-05-05 05:00:00', b'1'),
(10, '10db-e0cd', 'Evaluación final del curso - EV1', '[{\"question\":\"Significa que los datos pertenecen a un objeto (espacio de nombres del objeto)\",\"answer\":\"Encapsulamiento\"},{\"question\":\"Son funciones de Python disponibles para su sobrecarga dentro de clases.\",\"answer\":\"M\\u00e9todos\"},{\"question\":\"\\u00bfCu\\u00e1l es el valor de <code>x<\\/code> despu\\u00e9s de ejecutar el siguiente c\\u00f3digo?\\n<pre><code>X=2\\nY=1\\nX += Y + 1<\\/code><\\/pre>\",\"answer\":\"4\"},{\"question\":\"Desarrolla una aplicaci\\u00f3n Python para su empresa. Desea Agregar notas a su c\\u00f3digo para que otros miembros del equipo lo entiendan. Que deber\\u00edas hacer\\u2026\",\"answer\":\"Coloque las notas despu\\u00e9s del signo <code>#<\\/code> en cualquier l\\u00ednea.\"},{\"question\":\"No es un elemento de un programa\",\"answer\":\"Compilador\"},{\"question\":\"Son colecciones ordenadas. No obstante, a diferencia de las listas \\u00e9stas, son inmutables\\u2026\",\"answer\":\"Tuplas\"},{\"question\":\"El \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026no es m\\u00e1s que una directiva que se coloca al inicio de un archivo Python, a fin de indicar al sistema, la codificaci\\u00f3n de caracteres utilizada en el archivo\",\"answer\":\"Encoding\"},{\"question\":\"Los \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026. son como funciones. Se definen con la palabra clave \\u2026\\u2026\\u2026\\u2026 y cuentan con el mismo formato que las funciones\\u2026.\",\"answer\":\"M\\u00e9todos, <code>def<\\/code>\"},{\"question\":\"Una \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026es un \\u201calmac\\u00e9n\\u201d que nos permite guardar grandes cantidades de \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026.de forma organizada para que luego podamos encontrar y utilizar f\\u00e1cilmente\\u2026\",\"answer\":\"Base de datos, informaci\\u00f3n\"},{\"question\":\"No es una las principales caracter\\u00edsticas de los sistemas de base de datos podemos mencionar f\\u00e1cilmente\",\"answer\":\"Excepci\\u00f3n\"},{\"question\":\"Herramienta para el modelado de datos de un sistema de informaci\\u00f3n f\\u00e1cilmente\\u2026\",\"answer\":\"MER\"},{\"question\":\"El lenguaje \\u2026\\u2026\\u2026\\u2026. es el m\\u00e1s universal en los sistemas de base de datos. Este lenguaje nos permite realizar consultas a nuestras bases de datos para mostrar, insertar, actualizar y borrar datos\",\"answer\":\"SQL\"},{\"question\":\"Con Python hay muchas posibilidades para programar una interfaz gr\\u00e1fica de usuario (GUI) pero \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026. es f\\u00e1cil de usar.\",\"answer\":\"Tkinter\"},{\"question\":\"Para a\\u00f1adir una condici\\u00f3n alternativa a una declaraci\\u00f3n condicional <code>if<\\/code> se utiliza...\",\"answer\":\"<code>elif<\\/code>\"},{\"question\":\"Una declaraci\\u00f3n condicional se escribe\\u2026\",\"answer\":\"<code>if v == true:<\\/code>\"},{\"question\":\"La forma correcta de escribir una funci\\u00f3n es:\",\"answer\":\"<code>def nombrefuncion():<\\/code>\"},{\"question\":\"\\u00bfCu\\u00e1l es la forma correcta de escribir un bucle <code>for<\\/code>?\",\"answer\":\"<code>for a in range(0, 3):<\\/code>\"},{\"question\":\"\\u00bfCu\\u00e1l de los siguientes es un objeto de tipo diccionario?\",\"answer\":\"<pre><code>diccionario ={\'Numero\': 1, \'Nombre\': \'Miguel\'}<\\/code><\\/pre>\"},{\"question\":\"Para mostrar el valor de la posici\\u00f3n 2 de un array llamada <code>micoleccion<\\/code> utilizamos...\",\"answer\":\"<code>print(micoleccion[1])<\\/code>\"},{\"question\":\"<code>__init__:<\\/code>\",\"answer\":\"Utilizada como constructor en las clases\"}]', 132, 130, 1, 21, NULL, '2021-05-05 05:00:00', b'1'),
(11, '75fe-57c8', 'Autoevaluación T01', '[{\"question\":\"No es un pilar de la Programaci\\u00f3n Orientada a Objetos:\",\"answer\":\"Secuencialidad\"},{\"question\":\"\\u00bfQu\\u00e9 elemento se emplea para ingresar un campo de texto en la interfaz?\",\"answer\":\"Text Field\"},{\"question\":\"En la plataforma NetBeans, la interfaz de usuario en lenguaje FXML se crea a partir de:\",\"answer\":\"CustomerSearch.fxml\"},{\"question\":\"En una tabla, para dar el tama\\u00f1o adecuado a las columnas se usa:\",\"answer\":\"Pref Width\"},{\"question\":\"En la plataforma NetBeans, para crear un nuevo Servicio Web RESTful se accede a:\",\"answer\":\"File > New Project > Java Web > Web Application > Next\"}]', 6, 0, 0, 22, NULL, '2021-05-05 05:00:00', b'1'),
(12, '8ddf-f1eb', 'Autoevaluación T02', '[{\"question\":\"Qu\\u00e9 significa JDBC:\",\"answer\":\"Java Data Base Connectivity\"},{\"question\":\"Juan desea implementar en un proyecto piloto una base de datos independientemente del motor. \\u00bfCu\\u00e1l es el API que debe integrar?\",\"answer\":\"JDBC\"},{\"question\":\"\\u00bfQu\\u00e9 Clase deber\\u00eda usar para monitorear mis sesiones de conexi\\u00f3n cuando me conecto con JDBC a una base de datos?\",\"answer\":\"Connection\"},{\"question\":\"Tengo un sistema de mascotas en el que acabo de generar una consulta para traer todos los perritos que actualmente est\\u00e1n en la tienda. \\u00bfQu\\u00e9 elemento de JDBC deber\\u00eda utilizar para manejar los resultados obtenidos?\",\"answer\":\"Result Set\"},{\"question\":\"Est\\u00e1s desarrollando un proyecto de Java que se conecta con una Base de Datos MySQL. \\u00bfCu\\u00e1l ser\\u00eda el primer paso para poder establecer la conexi\\u00f3n?\",\"answer\":\"Descargar el conector JAR del sitio de MySQL\"}]', 5, 0, 0, 22, NULL, '2021-05-05 05:00:00', b'1'),
(13, '9202-588d', 'Autoevaluación T03', '[{\"question\":\"En el control de conexiones, no es una caracter\\u00edstica a configurar:\",\"answer\":\"Control del tama\\u00f1o del pool de conexiones\"},{\"question\":\"Cuando finaliza el trabajo de una transacci\\u00f3n, esta puede finalizarse llamando al m\\u00e9todo:\",\"answer\":\"Commit\"},{\"question\":\"No es una propiedad v\\u00e1lida de conexi\\u00f3n para el controlador JDBC:\",\"answer\":\"Data Source\"},{\"question\":\"Si una aplicaci\\u00f3n termina anormalmente la transacci\\u00f3n, se puede llamar al m\\u00e9todo:\",\"answer\":\"RollBack\"},{\"question\":\"Permiten establecer \\\"puntos intermedios\\\" en una transacci\\u00f3n, para luego retrotraerse sin eliminar toda la transacci\\u00f3n:\",\"answer\":\"Puntos de salvar\"}]', 6, 0, 0, 22, NULL, '2021-05-05 05:00:00', b'1'),
(14, '8b98-5173', 'Autoevaluación T04', '[{\"question\":\"\\u00bfQu\\u00e9 alternativa agrupa las operaciones del modelo CRUD?\",\"answer\":\"Create, Read, Update, Delete\"},{\"question\":\"En el modelo MVC, el usuario hace una solicitud a:\",\"answer\":\"El Controlador\"},{\"question\":\"MVC es un(a):\",\"answer\":\"Patr\\u00f3n de arquitectura de software\"},{\"question\":\"Con respecto al patr\\u00f3n MVC, marque la alternativa incorrecta:\",\"answer\":\"El controlador almacena la data del negocio.\"},{\"question\":\"En el modelo CRUD, la operaci\\u00f3n \\u201ccreate\\u201d permite:\",\"answer\":\"Crear registros\"}]', 5, 0, 0, 22, NULL, '2021-05-05 05:00:00', b'1'),
(15, '2608-7654', 'Evaluación final del curso - EV1', '[{\"question\":\"\\u00bfCu\\u00e1l de los siguientes no es un pilar de la Programaci\\u00f3n Orientada a Objetos?\",\"answer\":\"Secuencialidad\"},{\"question\":\"\\u00bfQu\\u00e9 elemento se emplea para ingresar un campo de texto en la interfaz?\",\"answer\":\"Text Field\"},{\"question\":\"En la plataforma NetBeans, la interfaz de usuario en lenguaje FXML se crea a partir de:\",\"answer\":\"CustomerSearch.fxml\"},{\"question\":\"\\u00bfQu\\u00e9 se usa en una tabla para dar el tama\\u00f1o adecuado a las columnas?\",\"answer\":\"Pref Width\"},{\"question\":\"En la plataforma NetBeans, para crear un nuevo Servicio Web RESTful se accede a:\",\"answer\":\"File > New Project > Java Web > Web Application > Next\"},{\"question\":\"Qu\\u00e9 significa JDBC:\",\"answer\":\"Java Data Base Connectivity\"},{\"question\":\"Juan desea implementar en un proyecto piloto una base de datos independientemente del motor. \\u00bfCu\\u00e1l es el API que debe integrar?\",\"answer\":\"JDBC\"},{\"question\":\"\\u00bfQu\\u00e9 Clase deber\\u00eda usar para monitorear mis sesiones de conexi\\u00f3n cuando me conecto con JDBC a una base de datos?\",\"answer\":\"Connection\"},{\"question\":\"Tengo un sistema de mascotas en el que acabo de generar una consulta para traer todos los perritos que actualmente est\\u00e1n en la tienda. \\u00bfQu\\u00e9 elemento de JDBC deber\\u00eda utilizar para manejar los resultados obtenidos?\",\"answer\":\"Result Set\"},{\"question\":\"Est\\u00e1s desarrollando un proyecto de Java que se conecta con una Base de Datos MySQL. \\u00bfCu\\u00e1l ser\\u00eda el primer paso para poder establecer la conexi\\u00f3n?\",\"answer\":\"Descargar el conector JAR del sitio de MySQL\"},{\"question\":\"En el control de conexiones, no es una caracter\\u00edstica a configurar:\",\"answer\":\"Control del tama\\u00f1o del pool de conexiones\"},{\"question\":\"Cuando finaliza el trabajo de una transacci\\u00f3n, esta puede finalizarse llamando al m\\u00e9todo:\",\"answer\":\"Commit\"},{\"question\":\"No es una propiedad v\\u00e1lida de conexi\\u00f3n para el controlador JDBC:\",\"answer\":\"Data Source\"},{\"question\":\"Si una aplicaci\\u00f3n termina anormalmente la transacci\\u00f3n, se puede llamar al m\\u00e9todo:\",\"answer\":\"RollBack\"},{\"question\":\"Permiten establecer \\\"puntos intermedios\\\" en una transacci\\u00f3n, para luego retrotraerse sin eliminar toda la transacci\\u00f3n:\",\"answer\":\"Puntos de salvar\"},{\"question\":\"\\u00bfQu\\u00e9 alternativa agrupa las operaciones del modelo CRUD?\",\"answer\":\"Create, Read, Update, Delete\"},{\"question\":\"En el modelo MVC, el usuario hace una solicitud a:\",\"answer\":\"El Controlador\"},{\"question\":\"MVC es un(a):\",\"answer\":\"Patr\\u00f3n de arquitectura de software\"},{\"question\":\"Con respecto al patr\\u00f3n MVC, marque la alternativa incorrecta:\",\"answer\":\"El controlador almacena la data del negocio.\"},{\"question\":\"En el modelo CRUD, la operaci\\u00f3n \\u201ccreate\\u201d permite:\",\"answer\":\"Crear registros\"}]', 22, 20, 1, 22, NULL, '2021-05-05 05:00:00', b'1'),
(16, 'fa27-87bf', 'Autoevaluación T01', '[{\"question\":\"Where ______ you last week?\",\"answer\":\"were\"},{\"question\":\"Kris ______ me four times last night.\",\"answer\":\"phoned\"},{\"question\":\"It is the ____ of January.(30 Jan)\",\"answer\":\"thirtieth\"},{\"question\":\"Our new computer ________ expensive. It was only $300!\",\"answer\":\"wasn\\u2019t\"},{\"question\":\"A: Have we got a _______?<br>\\nB: Yes, We have\",\"answer\":\"first aid kit\"}]', 14, 0, 0, 26, NULL, '2021-05-06 05:00:00', b'1'),
(17, 'ceed-a346', 'Autoevaluación T02', '[{\"question\":\"After school, I ____ a job with a local newspaper\",\"answer\":\"got\"},{\"question\":\"______ the weather good last week?\",\"answer\":\"Was\"},{\"question\":\"A: ______ you eat ceviche last Sunday?\",\"answer\":\"Did\"},{\"question\":\"A:What did you ____ at the cinema?<br>\\nB: I saw a comedy film\",\"answer\":\"see\"},{\"question\":\"We cleaned upstairs, but we ______ downstairs yesterday.\",\"answer\":\"didn\\u2019t clean\"}]', 6, 0, 0, 26, NULL, '2021-05-06 05:00:00', b'1'),
(18, 'b1f6-1b4c', 'Autoevaluación T03', '[{\"question\":\"Be careful.\",\"answer\":\"Take care\"},{\"question\":\"A secret word or combination of letters and numbers\",\"answer\":\"password\"},{\"question\":\"On the internet.\",\"answer\":\"online\"},{\"question\":\"To believe that someone is good and honest.\",\"answer\":\"to trust\"},{\"question\":\"For just one person or limited group\",\"answer\":\"private\"}]', 10, 0, 0, 26, NULL, '2021-05-06 05:00:00', b'1'),
(19, '3dc2-2f46', 'Autoevaluación T04', '[{\"question\":\"Skimming in reading is:\",\"answer\":\"To get the main idea of a text\"},{\"question\":\"Scanning in reading is:\",\"answer\":\"To get a detail of a text\"},{\"question\":\"To summarise the following text, identify <code>Who - What - Where - When<\\/code>:<br>\\nJoe\'s smartphone is really convenient. He never leaves home without it. He uses it every day to make phone calls and send text messages. It\'s also really helpful when I\'m travelling. I can use it to take pictures and even book hotels. And I have a weather app. So if I want to go to the beach, I can check the weather before.\",\"answer\":\"Joe - smartphone - the beach - travel\"},{\"question\":\"Choose the appropriate linking word to join the twoparagraphs.<br>\\nHe never leaveshome without it. He uses it everyday to make phone calls and send textmessages. It\'s also really helpful when I\'m travelling. I can use it to takepictures and even book hotels. And I have a weather app. So if I want to go tothe beach, I can check the weather before.<br>\\n________, I use my smartphone for entertainment. For example, I can read ebooks and watch videos on it. If I\'m on the train or just lying in bed, I often search for interesting videos with my YouTube app.\",\"answer\":\"Also\"}]', 6, 0, 0, 26, NULL, '2021-05-07 05:00:00', b'1'),
(20, '33a4-0b61', 'Autoevaluación T05', '[{\"question\":\"What\\u2019s your surname?\",\"answer\":\"Rodriguez.\"},{\"question\":\"I\\u2019m applying for accommodation with a _____.\",\"answer\":\"host family.\"},{\"question\":\"It\\u2019s also called study reading.\",\"answer\":\"Intensive reading.\"},{\"question\":\"It\\u2019s reading for pleasure.\",\"answer\":\"Extensive reading.\"},{\"question\":\"It\\u2019s when you read quickly to find particular pieces of information.\",\"answer\":\"Scanning.\"}]', 5, 0, 0, 26, NULL, '2021-05-13 05:00:00', b'1'),
(21, '0bf4-2a38', 'Autoevaluación T06', '[{\"question\":\"Choose the correct word.\",\"answer\":\"Unexpected.\"},{\"question\":\"What\\u2019s the opposite of \\\"Private\\\"?\",\"answer\":\"Public.\"},{\"question\":\"What part of speech is the word \\\"unhurt\\\"?\",\"answer\":\"Adjective.\"},{\"question\":\"He _____ to his boss for sleeping at work.\",\"answer\":\"apologized.\"},{\"question\":\"Choose the correct word.\",\"answer\":\"Immature.\"}]', 7, 0, 0, 26, NULL, '2021-05-13 05:00:00', b'1'),
(22, 'd824-3e97', 'Autoevaluación T07', '[{\"question\":\"Choose the correct synonym for wonderful:\",\"answer\":\"Amazing.\"},{\"question\":\"Choose the correct synonym for very small:\",\"answer\":\"Miniature.\"},{\"question\":\"Choose the correct word we use in writing for expressing the final comment:\",\"answer\":\"In conclusion.\"},{\"question\":\"Choose the correct word to complete the text:<br>\\nTo save time and to select the best text(s) for your needs, it is important to identify the\\u2026\\u2026\\u2026as quickly as possible.\",\"answer\":\"Main message.\"},{\"question\":\"Choose the correct sequence word:\",\"answer\":\"Secondly.\"}]', 5, 0, 0, 26, NULL, '2021-05-14 05:00:00', b'1'),
(23, '829e-ce70', 'Autoevaluación T08', '[{\"question\":\"Identify what part of speech are these words:<br>\\nThink - Hopefully\",\"answer\":\"Verb - adverb.\"},{\"question\":\"Someone who is\\u2026\\u2026\\u2026\\u2026can speak two languages equally well.\",\"answer\":\"Bilingual.\"},{\"question\":\"An\\u2026\\u2026\\u2026\\u2026..is the story of a person\\u00b4s life written by that person.\",\"answer\":\"Autobiography.\"},{\"question\":\"In many countries it is\\u2026\\u2026\\u2026legal to keep a gun in your house.\",\"answer\":\"Il.\"},{\"question\":\"hinking of going back to university and taking a\\u2026\\u2026\\u2026.graduate course.\",\"answer\":\"Post.\"}]', 7, 0, 0, 26, NULL, '2021-05-14 05:00:00', b'1'),
(24, 'f108-3612', 'Autoevaluación T01', '[{\"question\":\"Selecciona la respuesta correcta: Se tienen dos Tablas A y B. El Join que muestra todos los registros de la tabla A sin importar los de la B es:\",\"answer\":\"Left\"},{\"question\":\"Selecciona la respuesta correcta: Se tienen dos Tablas A y B. El Join que muestra todos los registros de la tabla B sin importar los de la A es:\",\"answer\":\"Right\"},{\"question\":\"Selecciona la respuesta correcta: Cambia el encabezado de columna al realizar una consulta, nos estamos refiriendo al\",\"answer\":\"Alias\"},{\"question\":\"Selecciona la respuesta correcta: Es la funci\\u00f3n que permite contar la cantidad de registros de una tabla, pueden ser todos o por alg\\u00fan criterio.\",\"answer\":\"<code>Count()<\\/code>\"},{\"question\":\"Selecciona la respuesta correcta: Es la funci\\u00f3n que retorna la fecha y hora en MS SQL SERVER:\",\"answer\":\"<code>DateTime()<\\/code>\"}]', 18, 0, 0, 24, NULL, '2021-05-18 05:00:00', b'1'),
(25, '31ca-52e9', 'Autoevaluación T02', '[{\"question\":\"Seleccione la respuesta correcta: Es una estructura de datos definida sobre una columna de tabla (o varias) y que permite localizar de forma r\\u00e1pida las filas de la tabla en base a su contenido:\",\"answer\":\"Indice\"},{\"question\":\"Seleccione la respuesta correcta: Conocido como tabla virtual o l\\u00f3gica, permite resumir datos de una, dos o m\\u00e1s tablas d\\u00e1ndole un nombre y almacenando la estructura de forma f\\u00edsica para luego ser utilizada.\",\"answer\":\"Vista\"},{\"question\":\"Seleccione la respuesta correcta: Es aquel \\u00edndice que no permite repetir los datos en un atributo (Columna) su caracter\\u00edstica es que permite el valor nulo:\",\"answer\":\"Unique\"},{\"question\":\"Seleccione la respuesta correcta: Para crear las vistas en Ms SQL Server se usa la instrucci\\u00f3n:\",\"answer\":\"Create\"},{\"question\":\"Selecciones la respuesta correcta: En SQL Server es un grupo de una o m\\u00e1s instrucciones Transact-SQL. Se asemejan a las construcciones de otros lenguajes de programaci\\u00f3n, nos referimos a:\",\"answer\":\"Procedimiento Almacenado\"}]', 13, 0, 0, 24, NULL, '2021-05-18 05:00:00', b'1'),
(26, 'c254-606c', 'Autoevaluación T03', '[{\"question\":\"Es un objeto que se asocia con tablas y se almacena en la base de datos. Su nombre se deriva por el comportamiento que presentan en su funcionamiento, ya que se ejecutan cuando sucede alg\\u00fan evento sobre las tablas a las que se encuentra asociado.\",\"answer\":\"Desencadenador\"},{\"question\":\"Los eventos que hacen que se ejecute un trigger son las operaciones de: ______ ___________ ya que modifican los datos de una tabla.\",\"answer\":\"Insertar, modificar y borrar.\"},{\"question\":\"Puede usar TRANSACCI\\u00d3N ROLLBACK para ______________________ de datos realizadas desde el inicio de la transacci\\u00f3n o en un punto de guardado. Tambi\\u00e9n libera recursos en poder de la transacci\\u00f3n.:\",\"answer\":\"Borrar todas las modificaciones\"},{\"question\":\"Marca el final de una transacci\\u00f3n impl\\u00edcita o expl\\u00edcita exitosa:\",\"answer\":\"<code>COMMIT TRANSACTION<\\/code>\"},{\"question\":\"____________ es un subconjunto de SGML (Est\\u00e1ndar Generalised Mark-up Language), simplificado y adaptado a Internet\",\"answer\":\"XML\"}]', 14, 0, 0, 24, NULL, '2021-05-18 05:00:00', b'1'),
(27, 'a76b-e966', 'Autoevaluación T04', '[{\"question\":\"Seleccione la respuesta correcta: Es una unidad de la ejecuci\\u00f3n de un programa.\",\"answer\":\"Transacci\\u00f3n\"},{\"question\":\"Seleccione la respuesta correcta: Es la propiedad de las transacciones que permite observarlas como operaciones, curren totalmente o no ocurren.\",\"answer\":\"Atomicidad.\"},{\"question\":\"Seleccione la respuesta correcta: Son las unidades de datos para los que se controla el acceso:\",\"answer\":\"Elementos\"},{\"question\":\"Seleccione la respuesta correcta: Es una copia del ejecutable de sqlservr.exe que se ejecuta como un servicio de sistema operativo.:\",\"answer\":\"Instancia de Base de Datos\"},{\"question\":\"Seleccione la respuesta correcta: Rastrea solo las m\\u00e9tricas de SQL Server m\\u00e1s importantes. Para obtenerlas, ejecuta consultas contra su instancia SQL Server anfitri\\u00f3n cada 10 segundos, nos referimos a:\",\"answer\":\"Activity Monitor\"}]', 10, 0, 0, 24, NULL, '2021-05-18 05:00:00', b'1'),
(28, '1cf3-335c', 'Autoevaluación T09', '[{\"question\":\"Read the text and answer.\\n<blockquote>\\nAs science becomes increasingly important in our daily lives, so the shortage of scientist gets greater. The number of students going to university to study pure and applied sciences is decreasing by about <code>five per cent<\\/code> each year. This, in turn, leads to a drop in the number of people able to be science teachers in schools. This shortage of science teachers, unsurprisingly, leads to fewer school children studying science, and even fewer going on to university. Prominent scientist believe that one of the reasons is that science is undervalued in society; <code>people do not discuss the latest scientist breakthrough in the same way they would discuss the latest bestseller<\\/code>. It could also be because scientist starteing their professional lives are often poorly paid. However, some scientist think that the reason is a distrust of scientist because of the calims for \\\"breakthroughs\\\" and \\\"cures\\\" for diseases which do not actually happen. Whatever the reason, young people must be encouraged to study science. The world needs scientists.\\n<\\/blockquote>\\nThe number of students going to university to study pure and applied sciences is decreasing by about.\",\"answer\":\"5%\"},{\"question\":\"Prominent scientists believe that one of the reasons is that science is undervalued in society because:\",\"answer\":\"People don\\u00b4t discuss the latest scientific breakthrough in the same way they discuss the bestseller\"},{\"question\":\"The ancient origins of tuberculosis\\n<blockquote>\\nScientists used to believe tuberculosis (TB) was just <code>tens of thousands of years old<\\/code>, but studies of ancient skeletons suggest the disease existed in <code>East Africa three million years ago<\\/code>. Scientists hope to use this new information in their fight against TB, as this disease kills <code>three million people a year<\\/code>\\n<\\/blockquote>\\nScientist used to believe tuberculosis was just ______\",\"answer\":\"Tens of thousands of years old\"},{\"question\":\"Studies of ancient skeletons suggest the disease existed in\",\"answer\":\"East Africa four million years ago.\"},{\"question\":\"TB disease kills_________\",\"answer\":\"Three million people a year.\"}]', 33, 0, 0, 26, NULL, '2021-05-18 05:00:00', b'1'),
(29, '7353-8e6f', 'Autoevaluación T12', '[{\"question\":\"Read and complete the following sentence.<br>\\nX \\u2013 rays_________ by William Roentgen.\",\"answer\":\"were discovered.\"},{\"question\":\"Read and complete the following sentence.<br>\\nPaper ________ from trees.\",\"answer\":\"is made.\"},{\"question\":\"To write the description of a process we use linking words in the following order:\",\"answer\":\"First-Then \\u2013 After that- Finally.\"},{\"question\":\"Electronic signals are also called\\u2026..\",\"answer\":\"voice waves\"},{\"question\":\"When we use a mobile or a wireless network, we are using:\",\"answer\":\"Radio waves.\"}]', 11, 0, 0, 26, NULL, '2021-05-21 05:00:00', b'1'),
(30, 'a54a-0071', 'Autoevaluación T10', '[{\"question\":\"Read and answer \\nAgtha Chiriste (1890-1976), English novelis, who was a prolific write of mystery stories...in 1930 , while travelling in the middle East, ...In 1971 she was made a Dame Commander of the Order of the British Empire.\\n\\nWho was a prolific writer of mystery sotire?.\",\"answer\":\"Agatha Chisie\"},{\"question\":\"Who was Sir Max Mallowan?\",\"answer\":\"Her husband\"},{\"question\":\"What happened in 1971\",\"answer\":\"She was made a Dame Commander of the Order of the British Empire\"},{\"question\":\"In 1930, Agatha Christie_________\",\"answer\":\"She met the noted English archaeologist.\"}]', 9, 0, 0, 26, NULL, '2021-05-21 05:00:00', b'1'),
(31, 'c7bc-0ceb', 'Autoevaluación T09', '[{\"question\":\"The number of students going to university to study pure and applied sciences is decreasing by about.\",\"answer\":\"C) 5%\"},{\"question\":\"Prominent scientists believe that one of the reasons is that science is undervalued in society because:\",\"answer\":\"D) People don\\u00b4t discuss the latest scientific breakthrough in the same way they discuss the bestseller.\"},{\"question\":\"Scientist used to believe tuberculosis was just ______\",\"answer\":\"D) Tens of thousands of years old\"},{\"question\":\"Studies of ancient skeletons suggest the disease existed in\",\"answer\":\"B) East Africa four million years ago.\"},{\"question\":\"TB disease kills_________\",\"answer\":\"B) Three million people a year.\"}]', 17, 0, 0, 26, NULL, '2021-05-21 05:00:00', b'1'),
(32, '4a57-943d', 'Autoevaluación T11', '[{\"question\":\"What\\u00b4s the most important part of a computer?\",\"answer\":\"The CPU .\"},{\"question\":\"Choose the correct meaning for CPU:\",\"answer\":\"Central prosessing unit.\"},{\"question\":\"Choose the correct abbreviation for \\u201c e.g\\u201d :\",\"answer\":\"For example.\"},{\"question\":\"Choose the correct word for the following definition.  \\n\\n\\u201cA program that is hidden and can be used to get information about users\\u2018 online buying habits.\\u201d\",\"answer\":\"Trojan horse.\"},{\"question\":\"Choose the correct sequence word for the following definition.  \\n\\n\\u201ca hidden program that can destroy data\\u201d\",\"answer\":\"A virus\"}]', 4, 0, 0, 26, NULL, '2021-05-21 05:00:00', b'1'),
(33, 'bbd0-98ac', 'Evaluación final del curso - EV1', '[{\"question\":\"Una sub consulta en SQL consiste:\",\"answer\":\"Utilizar los resultados de una consulta dentro de otra\"},{\"question\":\"La cl\\u00e1usula INNER JOIN en una consulta devuelve:\",\"answer\":\"Registros que tienen valores coincidentes en ambas tablas\"},{\"question\":\"La cl\\u00e1usula SELF JOIN:\",\"answer\":\"Es una combinaci\\u00f3n normal, donde la tabla se une a si misma\"},{\"question\":\"La funci\\u00f3n AVG () en una consulta:\",\"answer\":\"Devuelve el valor promedio de una columna o campo num\\u00e9rico en una tabla\"},{\"question\":\"Un procedimiento almacenado:\",\"answer\":\"Es un c\\u00f3digo SQL preparado que puede guardar, por lo que el c\\u00f3digo puede reutilizarse una y otra vez\"},{\"question\":\"Es una tabla virtual basada en el conjunto de resultados de una instrucci\\u00f3n SQL:\",\"answer\":\"Vistas\"},{\"question\":\"La instrucci\\u00f3n CREATE INDEX se usa:\",\"answer\":\"Para crear \\u00edndices de tablas\"},{\"question\":\"\\u00bfCu\\u00e1l es la sentencia para crear una vista en SQL?:\",\"answer\":\"CREATE VIEW\"},{\"question\":\"Un trigger o disparador es:\",\"answer\":\"Un objeto que se asocia con tablas y se almacena en la base de datos\"},{\"question\":\"XML es el acr\\u00f3nimo de:\",\"answer\":\"Extensible Markup Language\"},{\"question\":\"La sintaxis DROP TRIGGER:\",\"answer\":\"Eliminar un trigger o disparador\"},{\"question\":\"De la lista de caracter\\u00edsticas de monitoreo de base de datos, mencione la alternativa incorrecta:\",\"answer\":\"Ejecutar sentencias SQL\"},{\"question\":\"Son algunas de las herramientas de control y monitoreo para MySQL:\",\"answer\":\"ajaxMyTop, SQL Diagnostic Manager for MySQL, OpManager\"},{\"question\":\"El comando en MONGODB para visualizar colecciones de la base de datos actual es:\",\"answer\":\"Show collections\"},{\"question\":\"\\u00bfCu\\u00e1l es la instrucci\\u00f3n que nos permite obtener la cantidad de registros de un campo o consulta en particular?\",\"answer\":\"COUNT\"},{\"question\":\"Instrucci\\u00f3n que permite agregar registros a una tabla\",\"answer\":\"INSERT\"},{\"question\":\"\\u00bfCu\\u00e1l de las siguientes no es una funci\\u00f3n de agregaci\\u00f3n?\",\"answer\":\"FLOOR\"},{\"question\":\"En SQL, para eliminar las filas duplicadas del resultado de una sentencia SELECT se emplea:\",\"answer\":\"DISTINCT\"},{\"question\":\"\\u00bfEn cu\\u00e1l de las siguientes sentencias del lenguaje SQL se emplea la cl\\u00e1usula SET?\",\"answer\":\"UPDATE\"},{\"question\":\"En la cl\\u00e1usula LIKE, \\u00bfC\\u00f3mo se obtiene todos los nombres de las personas que comience con \\u201cJuan\\u201d?\",\"answer\":\"LIKE \\u201cJuan%\\u201d\"}]', 81, 50, 1, 24, NULL, '2021-05-22 05:00:00', b'1'),
(34, '653e-8a45', 'Autoevaluación T01', '[{\"question\":\"Marque la alternativa correcta: El significado de las siglas UML es:\",\"answer\":\"Lenguaje unificado de modelado\"},{\"question\":\"Marque la alternativa correcta: Las dos clasificaciones de diagramas UML son:\",\"answer\":\"Diagramas estructurales y diagramas de comportamiento\"},{\"question\":\"Marque la alternativa correcta: cu\\u00e1l de los siguientes diagramas NO pertenece al grupo de diagramas estructurados.\",\"answer\":\"Diagrama de casos de uso\"},{\"question\":\"Marque la alternativa correcta: cu\\u00e1l de los siguientes diagramas pertenece al grupo de diagramas de comportamiento.\",\"answer\":\"Diagrama de actividades\"},{\"question\":\"Marque la alternativa correcta: \\u201cEs utilizado para representar los actores externos que interact\\u00faan con el sistema de informaci\\u00f3n y a trav\\u00e9s de que funcionalidades o requisitos funcionales se relacionan\\u201d.: Esta definici\\u00f3n pertenece a:\",\"answer\":\"Diagrama de casos de uso\"}]', 17, 0, 0, 25, NULL, '2021-06-01 05:00:00', b'1'),
(35, 'fd96-d532', 'Autoevaluación T02', '[{\"question\":\"Marque la alternativa correcta: Las clases est\\u00e1 compuesta por tres elementos.\",\"answer\":\"Nombre de la clase, atributos, funciones.\"},{\"question\":\"Marque la alternativa correcta: La visibilidad de los atributos y funciones de las clases pueden ser:\",\"answer\":\"P\\u00fablica, privada, protegida\"},{\"question\":\"Marque la alternativa correcta: \\u00bfcu\\u00e1l de los siguientes NO es un tipo de relaci\\u00f3n de los diagramas de clases?\",\"answer\":\"Polimorfismo.\"},{\"question\":\"Marque la alternativa correcta: \\u201cEste tipo de relaci\\u00f3n es el m\\u00e1s com\\u00fan y se utiliza para representar dependencia sem\\u00e1ntica. Se representa con una simple l\\u00ednea continua que une las clases\\u201d. Esta definici\\u00f3n pertenece a:\",\"answer\":\"Asociaci\\u00f3n.\"},{\"question\":\"Marque la alternativa correcta: El diagrama de objetos se compone, principalmente, de los siguientes elementos:\",\"answer\":\"Objetos, atributos, v\\u00ednculos\"}]', 10, 0, 0, 25, NULL, '2021-06-01 05:00:00', b'1'),
(36, 'bc2a-8600', 'Autoevaluación T03', '[{\"question\":\"Marque la alternativa correcta: Los elementos del diagrama de componentes son:\",\"answer\":\"Componente, Interfaz, Relaci\\u00f3n de dependencia\"},{\"question\":\"Marque la alternativa correcta: \\u201cse utiliza para representar la zona del m\\u00f3dulo que es utilizada para la comunicaci\\u00f3n con otro de los componentes\\u201d. Esta definici\\u00f3n pertenece a:\",\"answer\":\"Interfaz.\"},{\"question\":\"Marque la alternativa correcta: Los elementos del diagrama de paquetes son:\",\"answer\":\"Paquetes, dependencias\"},{\"question\":\"Marque la alternativa correcta: \\u201cSe representa con una flecha discontinua que va desde el paquete que requiere la funci\\u00f3n hasta el paquete que ofrece esa funci\\u00f3n\\u201d.: Esta definici\\u00f3n pertenece a:\",\"answer\":\"Dependencias\"},{\"question\":\"Rellene con la alternativa correcta: \\u201cEl diagrama de componentes es uno de los principales diagramas UML. Est\\u00e1 clasificado como diagrama de estructura y, como tal, representa de forma ____________ el sistema de informaci\\u00f3n\",\"answer\":\"Est\\u00e1tica\"}]', 11, 0, 0, 25, NULL, '2021-06-01 05:00:00', b'1'),
(37, '5cd3-3a09', 'Autoevaluación T04', '[{\"question\":\"Marque la alternativa correcta: Permite representar de forma clara la arquitectura f\\u00edsica de la red, as\\u00ed como la distribuci\\u00f3n del componente de software:\",\"answer\":\"Diagrama de Despliegue\"},{\"question\":\"Marque la alternativa correcta: Los elementos del diagrama de componentes son:\",\"answer\":\"Nodos, conexiones\"},{\"question\":\"Marque la alternativa correcta: \\u201cutilizados para representar un elemento f\\u00edsico que interact\\u00faa de alguna manera con el sistema o parte del mismo, normalmente se representa utilizando un cubo tridimensional\\u201d. Esta definici\\u00f3n pertenece a:\",\"answer\":\"Nodos.\"},{\"question\":\"Marque la alternativa correcta: Los principales objetivos del diagrama de estructura compuesta consisten en mostrar:\",\"answer\":\"La estructura interna de un clasificador\"},{\"question\":\"Marque la alternativa correcta: \\u00bfCu\\u00e1l de los siguientes NO es un elemento del diagrama de estructura compuesta?\",\"answer\":\"Nodo\"}]', 14, 0, 0, 25, NULL, '2021-06-01 05:00:00', b'1'),
(38, '6a36-bc33', 'Evaluación final del curso - EV1', '[{\"question\":\"My brother wants to be a fire________\",\"answer\":\"fighter\"},{\"question\":\"\\u201c30 Jan = _____     January.\\u201d\",\"answer\":\"the thirtieth of\"},{\"question\":\"A: \\u2018When\\u2019s the meeting?\\u2019<br>\\nB: \\u2018It\\u2019s  third of June.\\u2019\",\"answer\":\"on the\"},{\"question\":\"We moved away from the building when the alarm___.\",\"answer\":\"sounded\"},{\"question\":\"My wife _____a party for me last year\",\"answer\":\"organized\"},{\"question\":\"We always spend a lot of money ____ supermarket\",\"answer\":\"at the\"},{\"question\":\"Tessa\\u2019s staying_______today\",\"answer\":\"at home\"},{\"question\":\"Our new car ______expensive. It was only $1000!\",\"answer\":\"wasn\\u2019t\"},{\"question\":\"A : \\u2018Were you here last night?\\u2019<br>\\nB: \\u2018No, I ______.\\u2019\",\"answer\":\"wasn\\u2019t\"},{\"question\":\"Mike and Laurie are sitting __________the garden\",\"answer\":\"in\"},{\"question\":\"He isn\\u2019t going______car. He\\u2019s taking the bus\",\"answer\":\"by\"},{\"question\":\"This _________has got great shops\",\"answer\":\"airport\"},{\"question\":\"Elena\\u2019s meeting her new boss _____Monday\",\"answer\":\"on\"},{\"question\":\"____________________ a tram?\",\"answer\":\"Are you waiting for\"},{\"question\":\"You see a lot of buses at the bus _____.\",\"answer\":\"station\"},{\"question\":\"Tina\\u2019s got a blue ______and blue shoes.\",\"answer\":\"dress\"},{\"question\":\"A: \\u2018There\\u2019s a party this evening\\u00b4<br>\\nB: \\u00a8Oh!, ____fun.\",\"answer\":\"have\"},{\"question\":\"They\\u2019re ______lunch at the moment.\",\"answer\":\"are making\"},{\"question\":\"Where are my_______?\",\"answer\":\"jeans\"},{\"question\":\"I\\u2019m not _______ an email. I\\u2019m writing a letter\",\"answer\":\"writing\"}]', 28, 20, 1, 26, NULL, '2021-06-11 05:00:00', b'1');
INSERT INTO `reviews` (`ID`, `ID_SHARE`, `REVIEW`, `CONTAIN`, `VIEWS`, `SHARES`, `OUTSTANDING`, `ID_COURSE`, `ID_USER`, `FECH_PUB`, `STATUS`) VALUES
(39, 'cf40-b36d', 'Evaluación final del curso - EV1', '[{\"question\":\"El enfoque de sistemas, es:\",\"answer\":\"Tener la habilidad de Planear, Organizar y Administrar la tecnolog\\u00eda eficazmente.\"},{\"question\":\"La entrop\\u00eda es:\",\"answer\":\"La medici\\u00f3n del desorden dentro de los sistemas.\"},{\"question\":\"\\u00bfQu\\u00e9 es una entidad?\",\"answer\":\"Todo aquello que puede ser descrito por sus atributos.\"},{\"question\":\"Dentro de un Use Case Diagram, la siguiente imagen representa:\",\"answer\":\"Business Worker.\"},{\"question\":\"\\u00bfQu\\u00e9 es un proceso del Software?\",\"answer\":\"Una estructura para las actividades, acciones y tareas que se requieren a fin de construir un Software de alta calidad.\"},{\"question\":\"Se\\u00f1ale la afirmaci\\u00f3n incorrecta con relaci\\u00f3n a la tarea Especificaci\\u00f3n de Excepciones:\",\"answer\":\"Especifica los requisitos que est\\u00e1n directamente relacionados con la adopci\\u00f3n o dise\\u00f1o de una arquitectura.\"},{\"question\":\"Se\\u00f1ale la afirmaci\\u00f3n incorrecta con relaci\\u00f3n al prop\\u00f3sito del Dise\\u00f1o de casos de uso:\",\"answer\":\"Se lleva a cabo siempre y cuando no se disponga en la instalaci\\u00f3n de servicios comunes.\"},{\"question\":\"No es un elemento de un Sistema de Informaci\\u00f3n:\",\"answer\":\"Recursos contables.\"},{\"question\":\"El siguiente concepto: \\u201cBrindan apoyo a profesionales como cient\\u00edficos, ingenieros y m\\u00e9dicos, ayud\\u00e1ndoles a crear conocimiento\\u201d, corresponde a:\",\"answer\":\"Knowledge Work System (KWS).\"},{\"question\":\"El encapsulamiento es:\",\"answer\":\"El proceso de ocultar todos los detalles de un objeto.\"},{\"question\":\"La abstracci\\u00f3n, se define como:\",\"answer\":\"Una descripci\\u00f3n simplificada de un sistema que enfatiza en sus detalles.\"},{\"question\":\"El dise\\u00f1o l\\u00f3gico es ________, de las que componen el proceso de desarrollo de una base de datos.\",\"answer\":\"Una etapa intermedia entre el dise\\u00f1o conceptual y el dise\\u00f1o f\\u00edsico.\"},{\"question\":\"______, es un diagrama de flujo del proceso multiprop\\u00f3sito que se usa para modelar el comportamiento del sistema.\",\"answer\":\"Diagrama de Actividad.\"},{\"question\":\"______, representa c\\u00f3mo un sistema de software es dividido y muestra sus dependencias. Sus elementos f\\u00edsicos incluyen archivos, cabeceras, bibliotecas compartidas, m\\u00f3dulos, ejecutables, o paquetes.\",\"answer\":\"Diagrama de Componentes.\"},{\"question\":\"En los casos de uso, una relaci\\u00f3n de tipo <<extends>> indica:\",\"answer\":\"Opciones alternativas para un cierto caso de uso.\"},{\"question\":\"Las _______ son componentes de software que permiten encapsular las funcionalidades de un sistema permitiendo la reutilizaci\\u00f3n de componentes a trav\\u00e9s de una interfaz de programaci\\u00f3n estandarizada.\",\"answer\":\"Capas de abstracci\\u00f3n.\"},{\"question\":\"Los ______ se utilizan para modelar los componentes que ayudan a hacer esas funcionalidades, representando la forma en la que estos se organizan y sus dependencias.\",\"answer\":\"Diagramas de componente.\"},{\"question\":\"Los modificadores de acceso a miembros en los diagramas de clase son:\",\"answer\":\"Privado \\u2013 P\\u00fablico \\u2013 Protegido.\"},{\"question\":\"El dise\\u00f1o f\\u00edsico de la base de datos ______ a la vez que asegura la integridad de los datos al evitar repeticiones innecesarias de datos.\",\"answer\":\"Optimiza el rendimiento.\"},{\"question\":\"El tipo de relaci\\u00f3n que mejor representa a las clases Alumnos y Carreras, es:\",\"answer\":\"Varios a varios.\"}]', 54, 45, 1, 25, NULL, '2021-06-15 05:00:00', b'1'),
(40, '3782-8c1d', 'Autoevaluación T01', '[{\"question\":\"Marque la alternativa correcta:\\u201d Programa que sirve para dise\\u00f1ar algoritmos orientados al an\\u00e1lisis IA\\u201d\",\"answer\":\"PYTHON\"},{\"question\":\"Marque la alternativa correcta:\\u201d Una de las caracter\\u00edsticas de todo algoritmo es:\\u201d\",\"answer\":\"Preciso y ordenado\"},{\"question\":\"Marque la alternativa correcta:\\u201d permiten la divisi\\u00f3n de un problema en subproblemas de forma que se puedan ejecutar de forma simult\\u00e1nea en varios procesadores; es una de las t\\u00e9cnicas del dise\\u00f1o de:\",\"answer\":\"Algoritmos paralelos\"},{\"question\":\"Marque la alternativa correcta:\\u201d Todo el cuerpo del algoritmo deber\\u00e1 ir \\u201cencerrado\\u201d entre las palabras Inicio y Fin indicando donde comienza y donde termina el seudo c\\u00f3digo\\u201d; es una de las normas para escribir un algoritmo mediante Seudoc\\u00f3digo\",\"answer\":\"Tercera Norma\"},{\"question\":\"Marque la alternativa correcta:\\u201d es una de las herramientas m\\u00e1s usadas para crear modelos de regresi\\u00f3n enfocado a al an\\u00e1lisis de datos estad\\u00edsticos para machine Learning:\",\"answer\":\"R Studio\"}]', 16, 0, 0, 44, NULL, '2021-08-26 05:00:00', b'1'),
(41, 'eb90-1ed0', 'Autoevaluación T02', '[{\"question\":\"Marque la alternativa correcta:\\u201d Como medida de la eficiencia de un algoritmo, se suelen estudiar los recursos que consume el algoritmo y son:\\u201d\",\"answer\":\"Memoria y tiempo\"},{\"question\":\"Marque la alternativa correcta:\\u201d El an\\u00e1lisis y estudio de los algoritmos es una disciplina de las ciencias de la computaci\\u00f3n y en la mayor\\u00eda de los casos, su estudio es completamente abstracto sin usar ning\\u00fan tipo de:\\u201d\",\"answer\":\"Lenguaje de programaci\\u00f3n\"},{\"question\":\"Marque la alternativa correcta:\\u201d Una forma de plasmar (o algunas veces \\\"codificar\\\") un algoritmo es escribirlo en:\",\"answer\":\"Seudoc\\u00f3digos\"},{\"question\":\"Marque la alternativa correcta:\\u201d la funci\\u00f3n de complejidad de un algoritmo es que permite realizar una estimaci\\u00f3n de un programa de cuantos espacios de:\",\"answer\":\"Memoria RAM\"},{\"question\":\"Marque la alternativa correcta:\\u201d cuando se analiza un algoritmo se tiene en cuenta la memoria del computador, las variables est\\u00e1ticas y constantes del algoritmo son almacenadas en:\\u201d\",\"answer\":\"Celdas est\\u00e1ticas\"}]', 4, 0, 0, 44, NULL, '2021-08-26 05:00:00', b'1'),
(42, 'eab3-1816', 'Autoevaluación T03', '[{\"question\":\"Marque la alternativa correcta:\\u201d Uno de los algoritmos de b\\u00fasqueda utilizados en la Inteligencia artificial que solo aporta la definici\\u00f3n del problema generando nodos y comprobando si alguno de ellos es la soluci\\u00f3n del problema:\\u201d\",\"answer\":\"Primero en anchura\"},{\"question\":\"Marque la alternativa correcta:\\u201d Uno de los algoritmos de b\\u00fasqueda utilizados en la Inteligencia artificial que expande el nodo ra\\u00edz, luego uno de sus hijos, luego uno de los hijos del hijo cuando se llega a la hoja si no es la soluci\\u00f3n se retrocede y se prueba con el siguiente hijo:\\u201d:\\u201d\",\"answer\":\"Primero en profundidad\"},{\"question\":\"Marque la alternativa correcta:\\u201d Uno de los algoritmos de b\\u00fasqueda utilizados en la Inteligencia artificial que solo expande el nodo con el menor costo asociado:\\u201d\",\"answer\":\"Costo uniforme\"},{\"question\":\"Marque la alternativa correcta \\u201cUno de los algoritmos de b\\u00fasqueda utilizados en la Inteligencia artificial que est\\u00e1 basado en b\\u00fasqueda de costo uniforme, selecciona el siguiente nodo a expandir mediante una funci\\u00f3n de evaluaci\\u00f3n que se implementa en la lista de prioridad:\\u201d\",\"answer\":\"Funci\\u00f3n Heur\\u00edstica\"},{\"question\":\"Marque la alternativa correcta:\\u201d Uno de los algoritmos de b\\u00fasqueda utilizados en la Inteligencia artificial es que tiene el costo del camino recorrido y del costo de la heur\\u00edstica; el siguiente nodo a expandir es el que tenga el menor costo estimado por la funci\\u00f3n de evaluaci\\u00f3n\\u201d\",\"answer\":\"B\\u00fasqueda A*\"}]', 4, 0, 0, 44, NULL, '2021-08-26 05:00:00', b'1'),
(43, '3560-6778', 'Autoevaluación T04', '[{\"question\":\"Marque la alternativa correcta:\\u201d El diagrama muestra las distintas fases del proceso de machine Learning y c\\u00f3mo interaccionan entre ellas. Est\\u00e1n basadas en el est\\u00e1ndar\\u201d\",\"answer\":\"CRISP-DM\"},{\"question\":\"Marque la alternativa correcta:\\u201d Probablemente el problema que queremos resolver con Machine Learning, ya se est\\u00e9 resolviendo de otra forma. Seguramente, la motivaci\\u00f3n de usar aprendizaje autom\\u00e1tico para resolver este problema sea la de obtener mejores resultados, es lo que describe la etapa de:\\u201d\",\"answer\":\"Evaluaci\\u00f3n de la soluci\\u00f3n actual\"},{\"question\":\"Marque la alternativa correcta:\\u201d requiere un esfuerzo relativo medio. Analizar errores es importante para entender qu\\u00e9 es lo que tenemos que hacer para mejorar los resultados de machine Learning, es parte de la etapa de.\\u201d\",\"answer\":\"An\\u00e1lisis de errores\"},{\"question\":\"Marque la alternativa correcta \\u201cTenemos que elegir qu\\u00e9 tipo de t\\u00e9cnica de machine Learning queremos usar. El algoritmo de machine Learning aprender\\u00e1 autom\\u00e1ticamente a obtener los resultados adecuados con los datos hist\\u00f3ricos que hemos preparado:\\u201d\",\"answer\":\"Construir el modelo\"},{\"question\":\"Marque la alternativa correcta:\\u201d lo que requiere que el modelo de machine Learning es que se comunique con otras partes del sistema y que los resultados del modelo se usen en el sistema, es parte de la etapa de:\\u201d\",\"answer\":\"Modelo integrado en un sistema\"}]', 3, 0, 0, 44, NULL, '2021-08-26 05:00:00', b'1'),
(44, 'ab65-25e8', 'Autoevaluación T05', '[{\"question\":\"Marque la alternativa correcta:\\u201d Es un sistema o servicio de almacenamiento que utiliza inteligencia artificial para aprender continuamente y se adapta a su entorno h\\u00edbrido para gestionar y proporcionar datos de forma mejorada\\u201d\",\"answer\":\"Almacenamiento inteligente\"},{\"question\":\"Marque la alternativa correcta:\\u201d Los sistemas de almacenamiento inteligente eliminan los obst\\u00e1culos que impiden que los clientes aprovechen sus datos, entendiendo las necesidades de las cargas de trabajo, adapt\\u00e1ndose a los cambios en tiempo real y simplificando la:\\u201d\",\"answer\":\"Gesti\\u00f3n y el soporte\"},{\"question\":\"Marque la alternativa correcta:\\u201d El Almacenamiento inteligente Ofrece protecci\\u00f3n de datos y cifrado para eliminar las posibles amenazas de seguridad, y se vende en un modelo de:\\u201d.\",\"answer\":\"Pago por consumo\"},{\"question\":\"Marque la alternativa correcta \\u201cSeg\\u00fan HPE las soluciones inteligentes, tienen la finalidad de ayudar a los clientes a sacar mayor beneficio de sus datos, y las nuevas soluciones de computaci\\u00f3n en el extremo, para acelerar:\\u201d\",\"answer\":\"La innovaci\\u00f3n y eficiencia empresarial\"},{\"question\":\"Marque la alternativa correcta:\\u201d En el caso de las soluciones inteligentes de HPE que ofrece Tech Data Advanced Solutions se puede generar una mejora porcentual en el rendimiento de la infraestructura lo que permite acelerar procesos, analizar mayor n\\u00famero de datos y en definitivo, avanzar hacia el futuro, ese porcentaje est\\u00e1 en el:\\u201d\",\"answer\":\"75%\"}]', 2, 0, 0, 44, NULL, '2021-08-26 05:00:00', b'1'),
(45, '5280-e8b3', 'Autoevaluación T06', '[{\"question\":\"Marque la alternativa correcta:\\u201d El aprendizaje por refuerzo es un \\u00e1rea de la inteligencia artificial que est\\u00e1 centrada en descubrir que acciones se debe tomar para maximizar la se\\u00f1al de recompensa, en otras palabras, se centra en como mapear situaciones a acciones que se centren en encontrar dicha:\\u201d\",\"answer\":\"Recompensa\"},{\"question\":\"arque la alternativa correcta:\\u201d en el aprendizaje por refuerzo existe un elemento que no se le dice que acciones tomar, sino al contrario \\u00e9l debe experimentar para encontrar que acciones lo llevan a una mayor recompensa; y es:\\u201d\",\"answer\":\"Agente\"},{\"question\":\"Marque la alternativa correcta: \\u201cel aprendizaje por refuerzo se basa en el principio:\\u201d.\",\"answer\":\"Conductista\"},{\"question\":\"Marque la alternativa correcta \\u201cque no necesitamos para formular un problema b\\u00e1sico de aprendizaje por refuerzo:\\u201d\",\"answer\":\"Dato\"},{\"question\":\"Marque la alternativa correcta:\\u201d El aprendizaje por refuerzo se base, de este modo, en un bucle de:\\u201d\",\"answer\":\"estado \\/ acci\\u00f3n \\/ recompensa.\"}]', 2, 0, 0, 44, NULL, '2021-08-26 05:00:00', b'1'),
(46, '4447-a259', 'Autoevaluación T07', '[{\"question\":\"Marque la alternativa correcta:\\u201d El aprendizaje supervisado \\u200b\\u200bson un conjunto de t\\u00e9cnicas que permite realizar predicciones futuras basadas en comportamientos o caracter\\u00edsticas analizadas en datos:\\u201d\",\"answer\":\"Hist\\u00f3ricos etiquetados\"},{\"question\":\"Marque la alternativa correcta:\\u201d: Los tipos de aprendizaje supervisado son\\u201d\",\"answer\":\"Clasificaci\\u00f3n y regresi\\u00f3n\"},{\"question\":\"Marque la alternativa correcta: \\u201cm\\u00e9todo de aprendizaje supervisado que tiene como objetivo predecir valores continuos a partir de datos hist\\u00f3ricos etiquetados\\u201d.\",\"answer\":\"Regresi\\u00f3n\"},{\"question\":\"Marque la alternativa correcta \\u201cm\\u00e9todo de aprendizaje supervisado tiene como objetivo clasificar en grupos atendiendo a datos hist\\u00f3ricos etiquetados.\\u201d\",\"answer\":\"Clasificaci\\u00f3n\"},{\"question\":\"Marque la alternativa correcta:\\u201d: Es un tipo de clasificaci\\u00f3n en el que tan solo se pueden asignar dos clases diferentes (0 o 1)\\u201d\",\"answer\":\"Binaria\"}]', 3, 0, 0, 44, NULL, '2021-08-26 05:00:00', b'1'),
(47, '8a93-3497', 'Autoevaluación T08', '[{\"question\":\"Marque la alternativa correcta:\\u201d El aprendizaje no supervisado es un conjunto de t\\u00e9cnicas que permiten inferir modelos para extraer conocimiento de conjuntos de datos:\\u201d\",\"answer\":\"Desconocidos\"},{\"question\":\"Marque la alternativa correcta:\\u201d: Los tipos de aprendizaje no supervisado son\\u201d\",\"answer\":\"An\\u00e1lisis Cluster y reducci\\u00f3n de funcionalidad\"},{\"question\":\"Marque la alternativa correcta: \\u201cm\\u00e9todo de aprendizaje no supervisado tiene como objetivo clasificar en grupos atendiendo a las variables de los datos\\u201d.\",\"answer\":\"Clustering\"},{\"question\":\"Marque la alternativa correcta \\u201cm\\u00e9todo de aprendizaje no supervisado tiene como objetivo reducir el n\\u00famero de variables a tener en cuenta en el an\\u00e1lisis.\\u201d\",\"answer\":\"Reducci\\u00f3n de dimensionalidad\"},{\"question\":\"Marque la alternativa correcta El algoritmo de Clustering que es uno de los m\\u00e1s usados para encontrar grupos ocultos, o sospechados en teor\\u00eda sobre un conjunto de datos no etiquetados, se llama\\u201d\",\"answer\":\"K-means\"}]', 4, 0, 0, 44, NULL, '2021-08-26 05:00:00', b'1'),
(48, 'b0a5-d1a6', 'Autoevaluación T09', '[{\"question\":\"Marque la alternativa correcta:\\u201d Los algoritmos evolutivos son inspirados en la Teor\\u00eda de evoluci\\u00f3n de:\\u201d\",\"answer\":\"Charles Darwin\"},{\"question\":\"Marque la alternativa correcta: \\u201cLos algoritmos evolutivos se modelan computacionalmente simulando la selecci\\u00f3n natural y el entrecruzamiento de las especies por medio de la:\\u201d\",\"answer\":\"Recombinaci\\u00f3n gen\\u00e9tica y la mutaci\\u00f3n\"},{\"question\":\"Marque la alternativa correcta: \\u201cLos Algoritmos Gen\\u00e9ticos usados fundamentalmente en la optimizaci\\u00f3n de problemas combinatorios, en ellos cada cromosoma\\u201d.\",\"answer\":\"Es una estructura de datos\"},{\"question\":\"Marque la alternativa correcta \\u201cen los algoritmos evolutivos la poblaci\\u00f3n de individuos act\\u00faa como semillas para las sucesivas generaciones por medio\\u201d\",\"answer\":\"del cruzamiento y las mutaciones\"},{\"question\":\"Marque la alternativa correcta: \\u201cLos algoritmos evolutivos son algoritmos de inteligencia computacional que permiten resolver problemas de:\\u201d\",\"answer\":\"Optimizaci\\u00f3n\"}]', 3, 0, 0, 44, NULL, '2021-08-26 05:00:00', b'1'),
(49, 'bc2e-9b7a', 'Autoevaluación T10', '[{\"question\":\"Marque la alternativa correcta:\\u201d Tensor Flow es una herramienta de computaci\\u00f3n num\\u00e9rica creada por:\\u201d\",\"answer\":\"Gloogle\"},{\"question\":\"Marque la alternativa correcta: \\u201cUn componente esencial para entender Tensor Flow es el\\u201d\",\"answer\":\"Grafo\"},{\"question\":\"Marque la alternativa correcta: \\u201cUn tensor es un arreglo de n dimensiones. Al n\\u00famero de dimensiones se le conoce como:\\u201d.\",\"answer\":\"Rank\"},{\"question\":\"Marque la alternativa correcta: \\u201cEn OpenAI, fundada en 2015, ha desarrollado ya varios proyectos en los que la inteligencia artificial es la clave. Entre ellas podemos hablar de:\\u201d\",\"answer\":\"Open AI Gym\"},{\"question\":\"Marque la alternativa correcta: \\u201cSistema de entrenamiento f\\u00edsico o de robots que se utiliza para lograr un mayor rendimiento entre robots humanizados lo que le brinda la oportunidad de desarrollar su capacidad de funcionamiento, inteligencia y capacidades de aprendizaje:\\u201d\",\"answer\":\"RoboSumo\"}]', 5, 0, 0, 44, NULL, '2021-08-26 05:00:00', b'1'),
(50, '7cae-c778', 'Autoevaluación T01', '[{\"question\":\"\\u00bfC\\u00f3mo se puede definir un patr\\u00f3n de dise\\u00f1o?\",\"answer\":\"Un patr\\u00f3n de dise\\u00f1o describe un problema que ocurre una y otra vez en un ambiente de desarrollo de software, y luego describe el n\\u00facleo de su soluci\\u00f3n en forma tal que es posible usarla un mill\\u00f3n de veces sin elaborarla dos veces de la misma forma.\"},{\"question\":\"\\u00bfQu\\u00e9 se debe hacer en primera instancia para buscar un patr\\u00f3n de dise\\u00f1o que genere una soluci\\u00f3n?\",\"answer\":\"Se debe comenzar con el estudio del modelo de requerimientos a fin de detectar los problemas, definir el contexto, y describir el sistema de fuerzas.\"},{\"question\":\"Qu\\u00e9 es la programaci\\u00f3n por capas\",\"answer\":\"Es un modelo de desarrollo software en el que el objetivo primordial es la separaci\\u00f3n (desacoplamiento) de las partes que componen un sistema\"},{\"question\":\"Qu\\u00e9 es singleton o instancia \\u00fanica\",\"answer\":\"Es un patr\\u00f3n de dise\\u00f1o que permite restringir la creaci\\u00f3n de objetos pertenecientes a una clase o el valor de un tipo a un \\u00fanico objeto.\"},{\"question\":\"La arquitectura en capas tradicional est\\u00e1 estructurada:\",\"answer\":\"Presentaci\\u00f3n \\/ Aplicaci\\u00f3n \\/ Dominio-Negocio \\/ Acceso a Datos \\u2013 Persistencia.\"}]', 10, 0, 0, 48, NULL, '2021-09-03 05:00:00', b'1'),
(51, '48f9-790d', 'Autoevaluación T02', '[{\"question\":\"\\u00bfCu\\u00e1l de las siguientes son comandos DML?\",\"answer\":\"INSERT y UPDATE\"},{\"question\":\"De acuerdo a la sintaxis de un gestor de BD indicar. \\u00bfQu\\u00e9 libros se prest\\u00f3 al Lector Ra\\u00fal Castro?\",\"answer\":\"Select titulo From estudiantes e, prestamos p, libros 1 Where nombreE=\'Ra\\u00fal Castro\' and p.idLibro=1.idLibro And p.idLector = e.idLector;\"},{\"question\":\"\\u00bfCu\\u00e1l de las alternativas es una transacci\\u00f3n?\",\"answer\":\"UPDATE Products SET UnitPrice=20 WHERE ProductName =\\u2019Chai\\u2019\"},{\"question\":\"\\u00bfCu\\u00e1l es la sentencia que se utiliza para indicar el comienzo de una transacci\\u00f3n?\",\"answer\":\"BEGIN TRAN\"},{\"question\":\"Qu\\u00e9 es un rollback\",\"answer\":\"Es una operaci\\u00f3n que devuelve a la base de datos a alg\\u00fan estado previo\"}]', 7, 0, 0, 48, NULL, '2021-09-03 05:00:00', b'1'),
(52, '3f6b-6195', 'Autoevaluación T03', '[{\"question\":\"La contrase\\u00f1a de nuestro usuario:\",\"answer\":\"Debe ser f\\u00e1cil de recordar para nosotros, pero dif\\u00edcil de adivinar para cualquier otra persona\"},{\"question\":\"\\u00bfQu\\u00e9 es OWASP?\",\"answer\":\"Organizaci\\u00f3n sin \\u00e1nimo de lucro dedicada a determinar las causas que hacen que el software sea inseguro, y proporcionar contramedidas.\"},{\"question\":\"\\u00bfEn qu\\u00e9 consiste el ataque XSS?\",\"answer\":\"En insertar datos no validados (p.ej. scripts) en p\\u00e1ginas web din\\u00e1micas de forma (in)directa\"},{\"question\":\"Cual no se considera una validaci\\u00f3n en formulario login\",\"answer\":\"Validaci\\u00f3n de base de datos\"},{\"question\":\"Una denegaci\\u00f3n de servicio tambi\\u00e9n llamado ataque DoS es un ataque que pertenece a la clase\",\"answer\":\"Interrupci\\u00f3n\"}]', 10, 0, 0, 48, NULL, '2021-09-07 05:00:00', b'1'),
(53, 'c6d6-ea57', 'Autoevaluación T04', '[{\"question\":\"Devuelve un valor Single que representa el n\\u00famero de segundos transcurridos desde la medianoche. Este concepto hace referencia al control\",\"answer\":\"Timer\"},{\"question\":\"Es una clase base de JAVA para definir hilos de ejecuci\\u00f3n concurrentes dentro de un mismo programa. Este concepto hace referencia a la clase\",\"answer\":\"Threads\"},{\"question\":\"Las clases derivadas de Thread deben de incluir un m\\u00e9todo _______________. Este m\\u00e9todo especifica realmente la tarea a realizar\",\"answer\":\"Public void run()\"},{\"question\":\"El c\\u00f3digo que ejecuta un thread est\\u00e1 definido por el m\\u00e9todo ____ que tiene todo objeto que sea instancia de la clases Thread\",\"answer\":\"run()\"},{\"question\":\"La ejecuci\\u00f3n del thread se inicia cuando sobre el objeto Thread se ejecuta el m\\u00e9todo ________.\",\"answer\":\"start()\"}]', 7, 0, 0, 48, NULL, '2021-09-07 05:00:00', b'1'),
(54, '7e71-2075', 'Autoevaluación T05', '[{\"question\":\"Qu\\u00e9 es LINQ o Language Integrated Query\",\"answer\":\"Son un conjunto herramientas de Microsoft para realizar todo tipo de consultas a distintas fuentes de datos: objetos, xmls, bases de datos, etc.\"},{\"question\":\"El acr\\u00f3nimo LINQ significa\",\"answer\":\"Language Integrated Query\"},{\"question\":\"Porque fue creado LINQ\",\"answer\":\"Creado para facilitar la explotaci\\u00f3n de los datos sin importar el tipo de fuente de datos utilizada\"},{\"question\":\"\\u00bfCu\\u00e1l respuesta no es la correcta?\",\"answer\":\"LINQ Es una m\\u00e1quina virtual que ejecuta c\\u00f3digo manejado\"},{\"question\":\"Indique que permite el siguiente c\\u00f3digo LINQ\\n<precode>var querypersona = from p in personas\\nwhere p.Edad>5 orderby p.Nombre, p.Apellido1, p.Apellido2 select p;<\\/precode>\",\"answer\":\"Las personas cuya edad sea mayor a cinco a\\u00f1os, y que adem\\u00e1s queremos el resultado ordenado por el nombre y apellidos de la persona\"}]', 7, 0, 0, 48, NULL, '2021-09-07 05:00:00', b'1'),
(55, 'e947-85f1', 'Autoevaluación T06', '[{\"question\":\"\\u00bfQu\\u00e9 funci\\u00f3n cumple un reporte?\",\"answer\":\"Permite la visualizaci\\u00f3n de la informaci\\u00f3n existente en la base de datos del sistema.\"},{\"question\":\"Cu\\u00e1l es el comando para crear un procedimiento almacenado\",\"answer\":\"CREATE PROCEDURE\"},{\"question\":\"Indique la caracter\\u00edstica incorrecta de procedimientos almacenados\",\"answer\":\"Despu\\u00e9s de creado un Procedimiento Almacenado no es posible editarlo ya que este despu\\u00e9s de implementarlo, altera los datos\"},{\"question\":\"Inicia el proceso de impresi\\u00f3n del documento\",\"answer\":\"public void Print ();\"},{\"question\":\"\\u00bfPor qu\\u00e9 deber\\u00edamos considerar el uso de gr\\u00e1ficos como un procedimiento recomendado indique la respuesta no correcta?\",\"answer\":\"Una imagen consume muchos recursos del hardware de la maquina\"}]', 7, 0, 0, 48, NULL, '2021-09-07 05:00:00', b'1'),
(56, '4d96-c479', 'Autoevaluación T07', '[{\"question\":\"En la ubicaci\\u00f3n de un archivo de instalaci\\u00f3n. El archivo ____________ puede estar alojado en una ubicaci\\u00f3n compartida como un extremo HTTP o una carpeta UNC compartida e incluye la ruta de acceso para buscar los paquetes de aplicaciones que se van a instalar\",\"answer\":\".appinstaller\"},{\"question\":\"Por lo general, se usa el protocolo de transferencia de archivos ______ o el protocolo de transferencia de archivos SSH _______para cargar los archivos a la web\",\"answer\":\"FTP y SFTP\"},{\"question\":\"\\u00bfCu\\u00e1l de las siguientes son comandos DML?\",\"answer\":\"INSERT y UPDATE\"},{\"question\":\"\\u00bfEn qu\\u00e9 consiste el ataque XSS?\",\"answer\":\"En insertar datos no validados (p.ej. scripts) en p\\u00e1ginas web din\\u00e1micas de forma (in)directa\"},{\"question\":\"El acr\\u00f3nimo LINQ significa\",\"answer\":\"Language Integrated Query\"}]', 5, 0, 0, 48, NULL, '2021-09-07 05:00:00', b'1'),
(57, '8d45-617c', 'Autoevaluación T08', '[{\"question\":\"\\u00bfQu\\u00e9 es WPF?\",\"answer\":\"Es una reinvenci\\u00f3n de una interfaz de usuario para aplicaciones de escritorio\"},{\"question\":\"\\u00bfQu\\u00e9 actividad no se puede realizar en WPF?\",\"answer\":\"Crear secuencias de Bases de Datos\"},{\"question\":\"\\u00bfCu\\u00e1l es la clase principal de todos los controles en WPF?\",\"answer\":\"System.Windows.Controls.Control\"},{\"question\":\"Qu\\u00e9 afirmaci\\u00f3n no es valida\",\"answer\":\"XAML es igual al XAMP\"},{\"question\":\"\\u00bfCu\\u00e1les son los diversos paneles de dise\\u00f1o en WPF\",\"answer\":\"Lona \\u2013 DockPanel \\u2013 Cuadr\\u00edcula - StackPanel - WrapPanel\"}]', 8, 0, 0, 48, NULL, '2021-09-07 05:00:00', b'1'),
(58, '2296-a79a', 'Evaluación final del curso - EV1', '[{\"question\":\"Acerca del almacenamiento inteligente, no es correcto decir:\",\"answer\":\"Necesita de personal m\\u00e1s inteligente.\"},{\"question\":\"Se refiere al almacenamiento y procesamiento de cantidades masivas de datos estructurados, semiestructurados y no estructurados con gran potencial para ser extra\\u00eddos y organizados de forma que proporcionen informaci\\u00f3n valiosa para las organizaciones y empresas:\",\"answer\":\"Big Data.\"},{\"question\":\"En el aprendizaje conocido como Reinforcement Learning, no es correcto decir:\",\"answer\":\"No interact\\u00faa con el entorno.\"},{\"question\":\"Es un caso de Reinforcement Learning:\",\"answer\":\"En un juego por cada buena jugada se asigna un sistema de recompensas.\"},{\"question\":\"La regresi\\u00f3n Lineal es una t\\u00e9cnica de dise\\u00f1o de algoritmos de machine learning que es:\",\"answer\":\"Aprendizaje supervisado.\"},{\"question\":\"Es una t\\u00e9cnica de dise\\u00f1o de algoritmos en machine learning que se entrena con datos donde para cada entrada se conoce su resultado:\",\"answer\":\"Aprendizaje supervisado.\"},{\"question\":\"En el siguiente algoritmo:\\n<precode>Algoritmo algo01\\n    Para i<-0 Hasta 5 Con Paso 1 Hacer\\n        Escribir i\\n    Fin Para\\n    x<-i\\n    Escribir \\\"El valor de x es: \\\", x\\nFinAlgoritmo<\\/precode>\\n\\u00bfCu\\u00e1l es el valor que imprime x?\",\"answer\":\"6\"},{\"question\":\"En el siguiente fragmento de c\\u00f3digo:\\n<precode>Algoritmo algo02\\n    x<-1\\n    a<-20\\n    Mientras x<a Hacer\\n        a<-a - 2*x\\n        x<-x+2\\n    Fin Mientras\\n    Escribir x\\nFinAlgoritmo<\\/precode>\\nEl valor que imprime x es:\",\"answer\":\"7\"},{\"question\":\"No es un pilar de un Algoritmo evolutivo:\",\"answer\":\"Optimizaci\\u00f3n determin\\u00edstica.\"},{\"question\":\"No es un Algoritmo evolutivo:\",\"answer\":\"Regresi\\u00f3n lineal.\"},{\"question\":\"Es un framework de computaci\\u00f3n num\\u00e9rica creada por GOOGLE para Machine Learning:\",\"answer\":\"Tensor Flow.\"},{\"question\":\"Se refiere a un programa inform\\u00e1tico que usa un conjunto de reglas para establecer conversaciones con persona, habladas o escritas, a trav\\u00e9s de una interfaz de chat online:\",\"answer\":\"Chatbot.\"},{\"question\":\"La detecci\\u00f3n de email spam, en la que cada email es: spam \\u2192 en cuyo caso ser\\u00e1 etiquetado con un 1; o no lo es \\u2192 etiquetado con un 0:\",\"answer\":\"Clasificaci\\u00f3n.\"},{\"question\":\"La estimaci\\u00f3n de gasto de un cliente en funci\\u00f3n de su renta y n\\u00famero de hijos:\",\"answer\":\"Regresi\\u00f3n.\"},{\"question\":\"El mayor orden de crecimiento de un algoritmo:\",\"answer\":\"O(n!)\"},{\"question\":\"En el siguiente algoritmo:\\n<precode>public static int binarySearch(int[] a, int key) {\\n    int lo = 0, hi = a.length - 1;\\n    while(lo <= hi) {\\n        int mid = lo + (hi - lo) \\/ 2;\\n        if (key < a[mid]) hi = mid - 1;\\n        else if (key > a[mid]) lo = mid + 1;\\n        else return mid;\\n    }\\n    return -1;\\n}<\\/precode>\\n\\u00bfCu\\u00e1l es el orden de crecimiento?\",\"answer\":\"O(logn)\"},{\"question\":\"\\u00bfUsando la b\\u00fasqueda por alcance (BFS) en el siguiente \\u00e1rbol:\\n<precode>       A\\n      \\/ \\\\\\n     B   C\\n    \\/   \\/ \\\\\\n   D   E   F<\\/precode>\\nLa salida ser\\u00eda:\",\"answer\":\"ABCDEF\"},{\"question\":\"\\u00bfCu\\u00e1l de las siguientes afirmaciones no corresponde a la b\\u00fasqueda en profundidad (DFS)?\",\"answer\":\"Usa una cola.\"},{\"question\":\"Es un ejemplo de aprendizaje no supervisado:\",\"answer\":\"Escalamiento Multidimensional.\"},{\"question\":\"Conocemos datos de entrada, pero no existen datos de salida que correspondan con las entradas:\",\"answer\":\"Aprendizaje no supervisado.\"}]', 31, 25, 1, 44, NULL, '2021-09-08 05:00:00', b'1'),
(59, '35e3-f9f3', 'Evaluación final del curso - EV1', '[{\"question\":\"Programaci\\u00f3n por capas es:\",\"answer\":\"Un modelo de desarrollo software en el que el objetivo primordial es la separaci\\u00f3n (desacoplamiento) de las partes que componen un sistema\"},{\"question\":\"\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026.es un patr\\u00f3n de dise\\u00f1o del tipo creacional cuyo prop\\u00f3sito es garantizar la existencia de una sola instancia de una clase.\",\"answer\":\"Singleton\"},{\"question\":\"\\u00bfCu\\u00e1ndo usar el patr\\u00f3n Singleton?\",\"answer\":\"Una clase de tu programa tan solo deba tener una instancia disponible para todos los clientes\"},{\"question\":\"Un thread ejecuta c\\u00f3digo que est\\u00e1 definido por el m\\u00e9todo\\u2026\\u2026\\u2026\\u2026\\u2026.. que tiene todo objeto que sea instancia de las clases Thread\",\"answer\":\"Run()\"},{\"question\":\"\\u00bfQu\\u00e9 es un control Timer?\",\"answer\":\"Es un temporizador, un control que ejecuta su contenido, cada un determinado tiempo\"},{\"question\":\"Donde se crear\\u00e1n los archivos necesarios de nuestro programa:\",\"answer\":\"Application Folder\"},{\"question\":\"En visual estudio entramos a la carpeta de nuestro proyecto en el Proyecto del Setup y buscamos la carpeta \\u2026\\u2026\\u2026\\u2026..ah\\u00ed encontraremos los ejecutables de la aplicaci\\u00f3n.\",\"answer\":\"Debug\"},{\"question\":\"Se refiere al proceso de desarrollar, a\\u00f1adir y probar caracter\\u00edsticas de seguridad dentro de las aplicaciones para evitar vulnerabilidades de seguridad contra amenazas, tales como la modificaci\\u00f3n y el acceso no autorizados.\",\"answer\":\"La seguridad de las aplicaciones\"},{\"question\":\"La seguridad de las aplicaciones puede incluir hardware, software y procedimientos que identifican o minimizan \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026..de seguridad.\",\"answer\":\"Vulnerabilidades\"},{\"question\":\"Proceso que inicia la impresi\\u00f3n del documento.\",\"answer\":\"public void Print ();\"},{\"question\":\"Control que permite mostrar infomes:\",\"answer\":\"Report Viewer\"},{\"question\":\"WPF existe como un subconjunto de tipos de .NET que, en su mayor\\u00eda, est\\u00e1n ubicados en el espacio de nombres \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026.\",\"answer\":\"System.Windows\"},{\"question\":\"WPF ofrece un conjunto completo de caracter\\u00edsticas de desarrollo de aplicaciones que incluyen\",\"answer\":\"Extensible Application Markup Language (XAML)\"},{\"question\":\"Seg\\u00fan los modelos de WPF para crear un nuevo control bajo el modelo de control de usuario, el control personalizado se deriva de:\",\"answer\":\"UserControl\"},{\"question\":\"No es un operador de consulta est\\u00e1ndar dentro de la arquitectura de LINQ:\",\"answer\":\"Type\"},{\"question\":\"LINQ o Language Integrated Query es:\",\"answer\":\"Conjunto herramientas de Microsoft para realizar todo tipo de consultas a distintas fuentes de datos\"},{\"question\":\"La Consulta Integrada en el Lenguaje es un componente de la plataforma Microsoft .NET que agrega capacidades de consulta a datos de manera nativa a los lenguajes \\u2026\\u2026\\u2026\\u2026\\u2026..\",\"answer\":\".NET\"},{\"question\":\"\\u00bfCu\\u00e1l NO es una caracter\\u00edstica de las transacciones?\",\"answer\":\"Concurrencia\"},{\"question\":\"En SQL Server COMMIT TRANSACTION O COMMIT TRAN:\",\"answer\":\"Confirma el conjunto de operaciones convirtiendo los datos en definitivos. Marca el \\u00e9xito de la operaci\\u00f3n de bloque y cierra la transacci\\u00f3n.\"},{\"question\":\"El Lenguaje de Definici\\u00f3n de Datos (LDD) describe:\",\"answer\":\"Las propiedades est\\u00e1ticas de las entidades\"}]', 17, 15, 1, 48, NULL, '2021-10-05 05:00:00', b'1'),
(60, 'e286-1ad3', 'Autoevaluación T01', '[{\"question\":\"\\u00bfQu\\u00e9 es un Framework?\",\"answer\":\"Un Marco de trabajo de programaci\\u00f3n\"},{\"question\":\"\\u00bfVentajas de Framework?\",\"answer\":\"Ahorro de trabajo y tiempo\"},{\"question\":\"No es un objetivo de Framework\",\"answer\":\"Complicar la programaci\\u00f3n\"},{\"question\":\"\\u00bfQu\\u00e9 es MVC?\",\"answer\":\"Patr\\u00f3n de arquitectura de Software\"},{\"question\":\"\\u00bfQu\\u00e9 es Symfony?\",\"answer\":\"Framework de PHP\"}]', 6, 0, 0, 50, NULL, '2021-10-26 05:00:00', b'1'),
(61, 'aac4-c87a', 'Autoevaluación T02', '[{\"question\":\"\\u00bfQu\\u00e9 es VB?\",\"answer\":\"Lenguaje de programaci\\u00f3n\"},{\"question\":\"\\u00bfQu\\u00e9 es MySQL?\",\"answer\":\"Modelador de base de datos\"},{\"question\":\"\\u00bfQu\\u00e9 es Windows?\",\"answer\":\"Interfaz de programaci\\u00f3n de aplicaci\\u00f3n gr\\u00e1fica\"},{\"question\":\"\\u00bfQU\\u00c9 ES XAML EN .NET\",\"answer\":\"Lenguaje demarcado desarrollado por Microsoft\"},{\"question\":\"\\u00bfQu\\u00e9 es un App?\",\"answer\":\"Una aplicaci\\u00f3n de software\"}]', 3, 0, 0, 50, NULL, '2021-10-26 05:00:00', b'1'),
(62, '7a28-e6e8', 'Autoevaluación T03', '[{\"question\":\"\\u00bfQu\\u00e9 es C#?\",\"answer\":\"Un Lenguaje de programaci\\u00f3n\"},{\"question\":\"Es una ventaja de C#.\",\"answer\":\"Multiplataforma\"},{\"question\":\"\\u00bfQu\\u00e9 es Django?\",\"answer\":\"Un Framework\"},{\"question\":\"\\u00bfQu\\u00e9 es Python?\",\"answer\":\"Un lenguaje de programaci\\u00f3n\"},{\"question\":\"Ventaja de Python\",\"answer\":\"Lenguaje flexible\"}]', 3, 0, 0, 50, NULL, '2021-10-26 05:00:00', b'1'),
(63, 'c9a6-dfe7', 'Autoevaluación T04', '[{\"question\":\"No es caracter\\u00edstica de Python\",\"answer\":\"Lenguaje un solo paradigma\"},{\"question\":\"\\u00bfQu\\u00e9 es un ERP?\",\"answer\":\"Un Marco de trabajo de programaci\\u00f3n\"},{\"question\":\"\\u00bfQu\\u00e9 es un CMS?\",\"answer\":\"Gestor y administrador de contenidos web\"},{\"question\":\"\\u00bfPara qu\\u00e9 sirve CRM?\",\"answer\":\"Sirve para la gesti\\u00f3n de la relaci\\u00f3n con el cliente\"},{\"question\":\"\\u00bfEn que se parecen ERP y CMS?\",\"answer\":\"Son programas de Software empresarial\"}]', 3, 0, 0, 50, NULL, '2021-10-26 05:00:00', b'1'),
(64, 'fce2-7d43', 'Autoevaluación T05', '[{\"question\":\"\\u00bfCu\\u00e1l es la diferencia entre CMS y ERP?\",\"answer\":\"CMS herramienta de Marketing y ventas, ERP Planifica recursos empresariales.\"},{\"question\":\"\\u00bfA qu\\u00e9 se le llama virus inform\\u00e1tico?\",\"answer\":\"Software creado para da\\u00f1ar programas\"},{\"question\":\"Es un virus creado para controlar en forma remota un ordenador\",\"answer\":\"El troyano\"},{\"question\":\"Es un programa de software malicioso que puede replicarse a s\\u00ed mismo en ordenadores\",\"answer\":\"El gusano\"},{\"question\":\"No es un medio de transmisi\\u00f3n de un virus inform\\u00e1tico\",\"answer\":\"Aud\\u00edfonos\"}]', 3, 0, 0, 50, NULL, '2021-10-26 05:00:00', b'1'),
(65, '1977-98fe', 'Autoevaluación T06', '[{\"question\":\"\\u00bfQu\\u00e9 es un Hacker?\",\"answer\":\"Persona Experta en tecnolog\\u00eda que realiza alteraciones en Sistema Inform\\u00e1tico\"},{\"question\":\"\\u00bfQu\\u00e9 buscan los Hacker \\u00e9ticos?\",\"answer\":\"Buscan vulnerabilidad en un sistema para estudiar y corregir las fallas\"},{\"question\":\"\\u00bfQu\\u00e9 buscan los Black Hacker?\",\"answer\":\"Buscan realizar actividades il\\u00edcitas para fines comerciales\"},{\"question\":\"\\u00bfQu\\u00e9 es SQL Injection?\",\"answer\":\"Es una vulnerabilidad que permite al atacante enviar o \\u201cinyectar\\u201d instrucciones SQL de forma maliciosa\"},{\"question\":\"herramienta orientada a la detecci\\u00f3n y explotaci\\u00f3n de fallas de SQL Injection\",\"answer\":\"SQLMap\"}]', 3, 0, 0, 50, NULL, '2021-10-26 05:00:00', b'1'),
(66, 'c1e8-17fb', 'Autoevaluación T07', '[{\"question\":\"\\u00bfQu\\u00e9 es Exploits?\",\"answer\":\"C\\u00f3digos que aprovechan agujeros de seguridad en los Sistemas Inform\\u00e1ticos\"},{\"question\":\"\\u00bfQu\\u00e9 es Ransomware?\",\"answer\":\"Virus que encripta la informaci\\u00f3n para liberarla previo pago\"},{\"question\":\"\\u00bfEn qu\\u00e9 a\\u00f1o se gener\\u00f3 la infecci\\u00f3n masiva de Ransomware?\",\"answer\":\"2012\"},{\"question\":\"\\u00bfCuantos tipos de exploits Hay?\",\"answer\":\"2\"},{\"question\":\"\\u00bfQu\\u00e9 es Linux?\",\"answer\":\"Sistema Operativo\"}]', 3, 0, 0, 50, NULL, '2021-10-26 05:00:00', b'1'),
(67, '6d6b-26a0', 'Autoevaluación T08', '[{\"question\":\"\\u00bfQu\\u00e9 es SEO?\",\"answer\":\"Optimizador de buscadores en la web\"},{\"question\":\"\\u00bfPara qu\\u00e9 sirve el SEO?\",\"answer\":\"Para ayudar al usuario a mejorar la visibilidad del producto web\"},{\"question\":\"No es su funci\\u00f3n del SEO\",\"answer\":\"Elimina los Hacker de la web\"},{\"question\":\"No es un buscador de la web\",\"answer\":\"SEO.\"},{\"question\":\"El buscador m\\u00e1s usado en el pa\\u00eds es\",\"answer\":\"Google\"}]', 4, 0, 0, 50, NULL, '2021-10-26 05:00:00', b'1'),
(68, '642c-e343', 'Evaluación final del curso - EV1', '[{\"question\":\"Es una de las ventajas del mapeo relacional de objetos, donde todo el c\\u00f3digo generado a partir de ORM est\\u00e1 bien probado. Solo se requiere que el desarrollador cree la funcionalidad correcta\",\"answer\":\"independiencia de proveedor\"},{\"question\":\"El componente del lado del servidor que proporciona un mecanismo poderoso para crear programas del lado del servidor se llama:\",\"answer\":\"Servlet\"},{\"question\":\"Archivo de propiedades que contiene bibliotecas, recursos y accesorios se incluye con la extensi\\u00f3n de archivo.\",\"answer\":\".jar\"},{\"question\":\"En esta fase de los servlets, solo los servlets pasan la mayor parte del tiempo. Servlet proporciona los servicios a varias solicitudes llamando a Service ()\",\"answer\":\"fase de manejo de solicitudes\"},{\"question\":\"Es un identificador \\u00fanico que identifica a una entidad. Pero la informaci\\u00f3n sobre d\\u00f3nde se encuentra la entidad no est\\u00e1 disponible.\",\"answer\":\"URL\"},{\"question\":\"El atributo que indica el n\\u00famero m\\u00e1ximo de conexiones que puede haber esperando a que llegue un usuario para usarlas.\",\"answer\":\"maxIdle = \\\"30\\\";\"},{\"question\":\"El atributo que indica el n\\u00famero m\\u00e1ximo de conexiones que pueden usarse\",\"answer\":\"pds.setMaxPoolSize(100);\"},{\"question\":\"Establece todas las propiedades del pool con el fin de anular el comportamiento predeterminado del grupo de conexi\\u00f3n, mediante el siguiente c\\u00f3digo:\",\"answer\":\"pds.setInitialPoolSize(5);\"},{\"question\":\"El atributo que indica el tiempo en ms que esperar\\u00e1 Tomcat a que haya una conexi\\u00f3n libre en caso de que no hubiera ninguna libre en ese instante.\",\"answer\":\"maxWait=\\\"10000\\\";\"},{\"question\":\"oracle.ucp.jdbc.PoolDataSourceFactory, se usa para:\",\"answer\":\"obtener una instancia del pool habilitada para el origen de datos\"},{\"question\":\"En el modelo CRUD, la operaci\\u00f3n \\u201cRead bzw. Retrieve\\u201d permite:\",\"answer\":\"leer registros\"},{\"question\":\"Nos permite cambiar la interfaz de usuario (VISTA), sin tocar en lo absoluto el MODELO de la aplicaci\\u00f3n, y realizar peque\\u00f1os cambios en el controlador.\",\"answer\":\"MVC\"},{\"question\":\"En el modelo CRUD, la operaci\\u00f3n \\u201cupdate\\u201d permite:\",\"answer\":\"actualizar registros\"},{\"question\":\"Con respecto al patr\\u00f3n MVC, marque la alternativa incorrecta:\",\"answer\":\"el controlador almacena la data del negocio\"},{\"question\":\"Para revertir cambios de una transacci\\u00f3n utilizaremos.\",\"answer\":\"ROLLBACK\"},{\"question\":\"El paquete Java tiene interfaces Statement y PreparedStatement para:\",\"answer\":\"realizar el procesamiento por lotes en JDBC\"},{\"question\":\"Cu\\u00e1l de la siguiente sintaxis me permite llamar a los procedimientos, sin par\\u00e1metros de entrada y un par\\u00e1metro de salida (valor RETURN)\",\"answer\":\"{?=llamar a PROCEDURE_NAME()}\"},{\"question\":\"Este par\\u00e1metro, Se utiliza para devolver u obtener el valor del procedimiento almacenado despu\\u00e9s de la ejecuci\\u00f3n. Es una variable de lectura y escritura dentro de los subprogramas. El valor se puede cambiar dentro de los subprogramas\",\"answer\":\"OUT\"},{\"question\":\"Utilice este m\\u00e9todo si el procedimiento devuelve muchos conjuntos de resultados o un n\\u00famero desconocido de conjuntos de resultados.\",\"answer\":\"CallableStatement.execute\"},{\"question\":\"En esta parte de procedimiento, contiene la l\\u00f3gica comercial principal del procedimiento. Normalmente tendr\\u00e1 un bloque de sentencias SQL\",\"answer\":\"parte de ejecucion\"}]', 4, 2, 1, 22, NULL, '2021-11-03 06:00:00', b'1'),
(69, '7f26-06ba', 'Evaluación final del curso - EV1', '[{\"question\":\"Integra todos estos procesos en un solo sistema: Finanzas, RR. HH., manufactura, cadena de suministro, servicios, compras y otros:\",\"answer\":\"ERP\"},{\"question\":\"Permite gestionar el contenido de un sitio web de una forma sencilla por parte de todos los niveles de usuarios (administradores, editores, participantes, etc.):\",\"answer\":\"CMS\"},{\"question\":\"Es un CMS:\",\"answer\":\"Joomla\"},{\"question\":\"No es un framework MVC\",\"answer\":\"php\"},{\"question\":\"composer global require laravel\\/installer\",\"answer\":\"Instala laravel.\"},{\"question\":\"Forma correcta de verificar la versi\\u00f3n del PHP en la shellde XAMPP:\",\"answer\":\"php -v\"},{\"question\":\"Son tipos de exploits desconocidos, no han sido reportados antes y aprovechan vulnerabilidades nuevas:\",\"answer\":\"0-days\"},{\"question\":\"Es una carga \\u00fatil liberada por el malware despu\\u00e9s de haber penetrado un sistema aprovechando una vulnerabilidad de este:\",\"answer\":\"Payload\"},{\"question\":\".\\\\Scripts\\\\activate:\",\"answer\":\"Activa un entorno en Python\"},{\"question\":\"Crea la estructura de usuarios para Django:\",\"answer\":\"python manage.py migrate\"},{\"question\":\"Implementar soluciones con Python y Framework Django:\",\"answer\":\"Tkinter\"},{\"question\":\"Framework escrito en Ruby que explota vulnerabilidades en sistemas operativos\",\"answer\":\"Metasploit\"},{\"question\":\"Se recomienda para evitar ataques de SQL injection:\",\"answer\":\"Par\\u00e1metros\"},{\"question\":\"El atacante coordina m\\u00faltiples ataques mediante Handlers (controladores) de zombies que a la orden de su creador se activan para realizar los ataques de forma simult\\u00e1nea con tantas peticiones que el servidor v\\u00edctima se queda sin capacidad de respuesta\",\"answer\":\"DDOS\"},{\"question\":\"Los delincuentes inform\\u00e1ticos recopilan informaci\\u00f3n personal de las v\\u00edctimas como su n\\u00famero telef\\u00f3nico y se apoderan de la l\\u00ednea m\\u00f3vil notificando a la empresa operadora una supuesta p\\u00e9rdida o robo del equipo, para luego solicitar la reposici\\u00f3n del servicio en otro chip m\\u00f3vil:\",\"answer\":\"SIM Swapping\"},{\"question\":\"Pay per clic (Pagar por clic):\",\"answer\":\"Adwords\"},{\"question\":\"T\\u00e9cnica de marketing digital que se basa en publicidad en las p\\u00e1ginas de resultados\",\"answer\":\"SEM\"},{\"question\":\"Es un framework de Microsoft para desarrollo de aplicaciones en Windows basado en la norma ECMA-335, ISO\\/IEC 23271:\",\"answer\":\".Net Framework\"},{\"question\":\"Es una abstracci\\u00f3n de la realidad conocida como instancia\",\"answer\":\"Objeto\"},{\"question\":\"Es el entorno de ejecuci\\u00f3n de la plataforma .NET donde sus diferentes lenguajes se compilan en uno conocido como CIL (Common Intermediate Language):\",\"answer\":\"CLR\"}]', 19, 15, 1, 50, NULL, '2021-11-05 06:00:00', b'1'),
(70, '92bc-92c9', 'Autoevaluación T01', '[{\"question\":\"Comando SQL para controlar el acceso a los datos\",\"answer\":\"DCL\"},{\"question\":\"El usuario quien crea el objeto es el \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026 y por defecto tiene todos los permisos, incluido el de dar permisos a otro usuario denominado \\u2026\\u2026\\u2026\\u2026\\u2026. de concesi\\u00f3n\",\"answer\":\"Propietario - permiso\"},{\"question\":\"El comando GRANT permite asignar permisos sobre el objeto de la base de datos. Identificar cual es la estructura correcta del comando GRANT:\",\"answer\":\"GRANT lista_privilegios ON objeto TO lista_usuarios [ WITH GRANT OPTION ]\"},{\"question\":\"En la siguiente sintaxis: GRANT SELECT ON consola TO usuario1\",\"answer\":\"En este caso el usuario propietario le asignar\\u00e1 el permiso SELECT mediante la sentencia GRANT.\"},{\"question\":\"Rechaza la transacci\\u00f3n y no aplica cambios, volviendo al estado antes de iniciarse la transacci\\u00f3n:\",\"answer\":\"ROLLBACK\"}]', 17, 0, 0, 45, NULL, '2021-11-23 06:00:00', b'1'),
(71, '45d4-a3d6', 'Autoevaluación T02', '[{\"question\":\"La restricci\\u00f3n \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026.. se utiliza para establecer un valor por defecto a una columna\",\"answer\":\"DEFAULT\"},{\"question\":\"La restricci\\u00f3n \\u2026\\u2026\\u2026\\u2026\\u2026..se utiliza para limitar el rango de valores que puede tener una columna\",\"answer\":\"CHECK\"},{\"question\":\"La restricci\\u00f3n \\u2026\\u2026\\u2026\\u2026\\u2026. identifica de manera \\u00fanica a cada fila de una tabla\",\"answer\":\"UNIQUE\"},{\"question\":\"Un campo num\\u00e9rico puede tener un atributo extra \\\"identity\\\". El valor de un campo con este atributo genera valores secuenciales que se inician en 1 y se incrementan en 1 autom\\u00e1ticamente\",\"answer\":\"IDENTITY\"},{\"question\":\"Para borrar DEFAULT en SQLSERVER\",\"answer\":\"ALTER TABLE pedidos ALTER COLUMN fecha DROP DEFAULT\"}]', 5, 0, 0, 45, NULL, '2021-11-23 06:00:00', b'1'),
(72, '9c74-f731', 'Autoevaluación T03', '[{\"question\":\"Algunas de las sentencias SQL que pertenecen al Lenguaje de Control de Datos (DCL) son:\",\"answer\":\"Select, Insert, Update, Delete\"},{\"question\":\"\\u00bfC\\u00f3mo se ejecuta un Procedimiento Almacenado?\",\"answer\":\"<precode>Exc <nombre_procedimiento>,\\\\\\\\\\\\\'@parametro1\\\\\\\\\\\\\',\\\\\\\\\\\\\'@parametro2\\\\\\\\\\\\\'<\\/precode>\"},{\"question\":\"Para ejecutar un procedimiento almacenado debe disponer del comando.\",\"answer\":\"<code>EXECUTE<\\/code>\"},{\"question\":\"Complete la sentencia\\n<precode>CREATE PROC insertar_estudiante\\n    @nombre nvarchar(20),\\n    @apellido nvarchar(20)\\nAS\\n    .......................... Estudiante (nombre, apellido) VALUES (@nombre, @apellido)<\\/precode>\",\"answer\":\"<code>INSERT INTO<\\/code>\"},{\"question\":\"Seg\\u00fan la siguiente sintaxis en un procedimiento almacenado, \\u00bfcu\\u00e1ndo finaliza el while?\\n<precode>CREATE PROCEDURE generar_aleaotorio (\\n    out valor1 int;\\n    out valor2 int\\n) BEGIN\\n    set valor1 = 0;\\n    set valor2 = 0;\\n    while valor1 = valor2 do\\n        set valor1 = rand() * 10\\n        set valor2 = rand() * 10\\n    END WHILE;\\nEND\\n\\ncall generar_aleatorio(@v1, @v2)\\nselect @v1, @v2;<\\/precode>\",\"answer\":\"Cuando los dos valores aleatorios son distintos\"}]', 10, 0, 0, 45, NULL, '2021-11-23 06:00:00', b'1');
INSERT INTO `reviews` (`ID`, `ID_SHARE`, `REVIEW`, `CONTAIN`, `VIEWS`, `SHARES`, `OUTSTANDING`, `ID_COURSE`, `ID_USER`, `FECH_PUB`, `STATUS`) VALUES
(73, '2669-62bd', 'Autoevaluación T04', '[{\"question\":\"Usted tiene una tabla que guarda el saldo de la factura y otra tabla de facturas, cuyo detalle se muestra abajo, se requiere realizar un UPDATE de la tabla de saldo de facturas, del campo saldo igual al campo valor_factura, tomando en cuenta las facturas cuya fecha de vencimiento no sea mayor que la fecha actual. \\u00bfEscriba la sentencia que utilizar\\u00eda?\",\"answer\":\"UPDATE RE_SALDO_FACTURA SET saldo = ( SELECT valor_factura FROM RE_FACTURA WHERE RE_SALDO_FACTURA.cod_empresa = RE_FACTURA.cod_empresa AND RE_SALDO_FACTURA.num_factura = RE_FACTURA.num_factura AND RE_SALDO_FACTURA.cod_cliente = RE_FACTURA.cod_cliente AND fecha_vencimiento < GETDATE())\"},{\"question\":\"La cl\\u00e1usula \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026 es un comando SQL que se usa para agrupar filas que tienen los mismos \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026...\",\"answer\":\"Group By - valores\"},{\"question\":\"La funci\\u00f3n HAVING se utiliza para incluir \\u2026\\u2026\\u2026\\u2026\\u2026..con alguna funci\\u00f3n SQL del tipo SUM, MAX,AVG entre otros.\",\"answer\":\"Condiciones\"},{\"question\":\"Aplicando la siguiente sintaxis en nuestro ejemplo tabla Store_Information, obtendremos como resultado\",\"answer\":\"Los Angeles 1500\"},{\"question\":\"Es un objeto en la base de datos creado como resultado de una consulta\",\"answer\":\"Vistas\"}]', 4, 0, 0, 45, NULL, '2021-11-23 06:00:00', b'1'),
(74, 'e819-3f8a', 'Autoevaluación T05', '[{\"question\":\"Las bases de datos NoSQL est\\u00e1n dise\\u00f1adas espec\\u00edficamente para modelos de datos \\u2026\\u2026\\u2026\\u2026\\u2026\\u2026\\u2026 y tienen esquemas \\u2026\\u2026\\u2026\\u2026\\u2026.. para crear aplicaciones modernas\",\"answer\":\"Espec\\u00edficos - flexibles\"},{\"question\":\"Las bases de datos NoSQL generalmente ofrecen esquemas flexibles que permiten un desarrollo m\\u00e1s r\\u00e1pido y m\\u00e1s iterativo. El modelo de datos flexible hace que las bases de datos NoSQL sean ideales para datos semiestructurados y no estructurados. Esto es una caracter\\u00edstica de:\",\"answer\":\"Flexibilidad\"},{\"question\":\"\\u00bfNo pertenece a ventajas de porqu\\u00e9 deber\\u00eda usar una base de datos NoSQL?\",\"answer\":\"Datos relacionales\"},{\"question\":\"No es flexible (antes de ingresar los objetos, deben estar correctamente validados), mientras m\\u00e1s compleja sea la base de datos, requiere mayor procesamiento y eso se puede ver reflejado en el rendimiento y consumo de recursos.\",\"answer\":\"SQL\"},{\"question\":\"Se usa cuando el volumen de mis datos crece muy r\\u00e1pidamente en momentos puntuales:\",\"answer\":\"NoSQl\"}]', 5, 0, 0, 45, NULL, '2021-11-23 06:00:00', b'1'),
(75, '59bc-f108', 'Autoevaluación T01', '[{\"question\":\"En ____________ las pruebas de aceptaci\\u00f3n se realizan para establecer el grado de ______________ en un _____________, sus partes y\\/o ___________no funcionales.\",\"answer\":\"La ingenier\\u00eda de software, confianza, sistema, caracter\\u00edsticas\"},{\"question\":\"La falta de calidad del producto o servicio hace directamente responsable por ello a su fabricante o prestador, por lo cual algunos deciden voluntariamente incorporar\\u2026\\u2026\",\"answer\":\"Las normas ISO de control de calidad\"},{\"question\":\"Permite verificar que los productos o servicios ofrecidos por las empresas re\\u00fanan las condiciones necesarias para su provechosa, sana y confiable utilizaci\\u00f3n, de acuerdo a lo ofrecido, este control es.\",\"answer\":\"Control de Calidad\"},{\"question\":\"En que consiste la fiabilidad del software\",\"answer\":\"Consiste en medidas estad\\u00edsticas, en las cuales se mide el tiempo de funcionamiento del software. Esto permite satisfacer las necesidades del cliente\"},{\"question\":\"\\u00bfQu\\u00e9 te permite las \\u201cpruebas de integraci\\u00f3n\\u201d?\",\"answer\":\"Garantizar que diferentes m\\u00f3dulos se integren con la aplicaci\\u00f3n, verifica que las interfaces tengan un buen funcionamiento, permite el enfoque para avanzar de un sistema de integraci\\u00f3n a otra, decide que acciones tomar ante un problema en el sistema\"}]', 10, 0, 0, 49, NULL, '2021-11-29 06:00:00', b'1'),
(76, '4016-e017', 'Autoevaluación T02', '[{\"question\":\"Indique cu\\u00e1l de los siguientes, es un lenguaje de programaci\\u00f3n orientado a objetos puro\",\"answer\":\"Eiffel\"},{\"question\":\"En orientaci\\u00f3n a objetos, el t\\u00e9rmino utilizado para expresar que los datos de un objeto solamente pueden ser manipulados por medio de mensajes y m\\u00e9todos predefinidos es:\",\"answer\":\"Encapsulaci\\u00f3n\"},{\"question\":\"\\u00bfCu\\u00e1l de los siguientes no es una propiedad del modelo orientado a objetos?\",\"answer\":\"Independencia\"},{\"question\":\"Se\\u00f1ale de entre las siguientes, la opci\\u00f3n incorrecta en cuanto a las caracter\\u00edsticas del principio del modelado orientado a objetos\",\"answer\":\"Reusabilidad, modulaci\\u00f3n y herencia\"},{\"question\":\"En programaci\\u00f3n orientada a objetos:\",\"answer\":\"Los objetos son m\\u00f3dulos que contienen los datos y las instrucciones u operaciones que manipulan esos datos\"}]', 7, 0, 0, 49, NULL, '2021-11-30 06:00:00', b'1'),
(77, '675b-7560', 'Autoevaluación T03', '[{\"question\":\"Determine la afirmaci\\u00f3n FALSA en relaci\\u00f3n con los diagramas UML\",\"answer\":\"Los actores que incluye los diagramas de uso pueden ser solo personas\"},{\"question\":\"Los casos de uso son una t\\u00e9cnica eficaz para la determinaci\\u00f3n de necesidades. \\u00c9stos fueron creados por\",\"answer\":\"Jacobson\"},{\"question\":\"En UML, los diagramas que describen bajo la forma de acciones y reacciones el comportamiento de un sistema desde el punto de vista de un usuario, se denominan:\",\"answer\":\"Casos de uso\"},{\"question\":\"El elemento b\\u00e1sico de UML que se define como conjunto nominado de operaciones que caracteriza el comportamiento de un elemento es\",\"answer\":\"Una Interfaz\"},{\"question\":\"El Diccionario de Datos es utilizado por:\",\"answer\":\"El administrador de la base de datos y los programadores\"}]', 9, 0, 0, 49, NULL, '2021-11-30 06:00:00', b'1'),
(78, 'b2db-0246', 'Autoevaluación T04', '[{\"question\":\"\\u00bfCu\\u00e1l de los siguientes tipos de diagramas NO est\\u00e1 incluido en la categor\\u00eda de diagramas estructurales que define UML?\",\"answer\":\"Diagrama de actividades\"},{\"question\":\"\\u00bfCu\\u00e1l de los siguientes NO es un diagrama UML (Unified Modeling Language)?\",\"answer\":\"Diagrama de frecuencia\"},{\"question\":\"\\u00bfQu\\u00e9 diagrama UML muestra el flujo de acciones en curso, no necesariamente at\\u00f3micas, en relaci\\u00f3n a la estructura de estados del sistema?\",\"answer\":\"Diagrama de actividad\"},{\"question\":\"\\u00bfCu\\u00e1les son las cuatro fases del proceso unificado de desarrollo de software?\",\"answer\":\"Inicio, elaboraci\\u00f3n, construcci\\u00f3n y transici\\u00f3n\"},{\"question\":\"En programaci\\u00f3n orientada a objetos \\u00bfqu\\u00e9 son las clases abstractas?\",\"answer\":\"Las que no tienen instancias\"}]', 7, 0, 0, 49, NULL, '2021-11-30 06:00:00', b'1'),
(79, '60e3-7447', 'Autoevaluación T05', '[{\"question\":\"Es una relaci\\u00f3n entre dos estados que indican que un objeto que se encuentra en el primer estado\",\"answer\":\"Transici\\u00f3n\"},{\"question\":\"Es una condici\\u00f3n de un objeto en que se lleva a cabo alguna tarea o donde se espera un suceso\",\"answer\":\"Estado\"},{\"question\":\"Es un c\\u00e1lculo global ejecutable, lo que significa que no la puede interrumpir un suceso\",\"answer\":\"Acci\\u00f3n\"},{\"question\":\"Se pueden anidar en cualquier nivel\",\"answer\":\"Subestado\"},{\"question\":\"\\u00bfCu\\u00e1l de los siguientes no es una caracter\\u00edstica del Proceso unificado de desarrollo de software?\",\"answer\":\"El dise\\u00f1o comienza siempre al terminar el an\\u00e1lisis\"}]', 7, 0, 0, 49, NULL, '2021-11-30 06:00:00', b'1'),
(80, 'ac33-b02e', 'Autoevaluación T06', '[{\"question\":\"Es un bloque de unidades l\\u00f3gicas del sistema, una abstracci\\u00f3n ligeramente m\\u00e1s alta que las clases\",\"answer\":\"Componente\"},{\"question\":\"Est\\u00e1 siempre asociada a un componente y se utiliza para representar la zona del m\\u00f3dulo que es utilizada para la comunicaci\\u00f3n con otro de los componentes\",\"answer\":\"Interfaz\"},{\"question\":\"Representa que un componente requiere de otro para ejecutar su trabajo\",\"answer\":\"Relaci\\u00f3n de dependencia\"},{\"question\":\"En el \\u00e1mbito del modelo de clases, se define el protocolo de un objeto como.\",\"answer\":\"El conjunto de mensajes al que puede responder.\"},{\"question\":\"Dada una empresa en la que se quiere almacenar informaci\\u00f3n de sus empleados, departamentos y proyectos en los que colaboran sus empleados, las entidades que resultan son:\",\"answer\":\"Empleados, proyectos y departamentos\"}]', 8, 0, 0, 49, NULL, '2021-11-30 06:00:00', b'1'),
(81, 'e4fb-1433', 'Autoevaluación T07', '[{\"question\":\"En UML, un modo se representa como:\",\"answer\":\"Cubo\"},{\"question\":\"Se definen como elementos utilizados para representar un elemento f\\u00edsico que interact\\u00faa de alguna manera con el sistema o bien forma parte del mismo\",\"answer\":\"Nodos\"},{\"question\":\"\\u00bfCu\\u00e1ndo se pasa a tablas una relaci\\u00f3n?\",\"answer\":\"Se generan restricciones de integridad referencial.\"},{\"question\":\"Representa una asociaci\\u00f3n entre dos nodos, a trav\\u00e9s de la cual estos nodos son capaces de transmitir informaci\\u00f3n en forma de mensajes o se\\u00f1ales\",\"answer\":\"Conexiones\"},{\"question\":\"\\u00bfQu\\u00e9 es cierto, en los diagramas de clases?\",\"answer\":\"Los atributos se representan debajo en la caja de representaci\\u00f3n de la clase\"}]', 7, 0, 0, 49, NULL, '2021-11-30 06:00:00', b'1'),
(82, 'e009-e479', 'Evaluación final del curso - EV1', '[{\"question\":\"Nos permite realizar m\\u00faltiples acciones sobre una tabla tomando uno o varios criterios de comparaci\\u00f3n; es decir, realiza operaciones de inserci\\u00f3n, actualizaci\\u00f3n o eliminaci\\u00f3n en una tabla de destino seg\\u00fan los resultados de una combinaci\\u00f3n con una tabla de origen\",\"answer\":\"Merge\"},{\"question\":\"Permite combinar registros de dos o m\\u00e1s tablas en una base de datos relacional:\",\"answer\":\"Join\"},{\"question\":\"Es el car\\u00e1cter para definir una variable SQL\",\"answer\":\"@\"},{\"question\":\"Ejecuta un bloque de instrucciones mientras la condici\\u00f3n es verdadera:\",\"answer\":\"WHILE\"},{\"question\":\"No es caracter\\u00edstica ni funci\\u00f3n de una base de datos no relacional.\",\"answer\":\"Utiliza de manera obligatoria el lenguaje SQL para consultas\"},{\"question\":\"Son una colecci\\u00f3n de elementos de datos organizados en un conjunto de tablas formalmente descritas:\",\"answer\":\"Base de datos relacional\"},{\"question\":\"Son base de datos altamente divisibles y permiten el escalado horizontal a escalas que otros tipos de bases de datos no pueden alcanzar:\",\"answer\":\"Base de datos clave-valor\"},{\"question\":\"Est\\u00e1n dise\\u00f1adas espec\\u00edficamente para modelos de datos espec\\u00edficos y tienen esquemas flexibles para crear aplicaciones modernas:\",\"answer\":\"Base de datos no relacional\"},{\"question\":\"Es una restricci\\u00f3n para evitar insertar valores vac\\u00edos en la columna especificada:\",\"answer\":\"NULL\"},{\"question\":\"Son reglas que el Motor de base de datos de SQL Server aplica de forma autom\\u00e1tica y que limita el ingreso de datos\",\"answer\":\"restricciones\"},{\"question\":\"Es el comod\\u00edn que representa cualquier cadena de cero a m\\u00e1s caracteres:\",\"answer\":\"%\"},{\"question\":\"Se denomina tambi\\u00e9n aridad de una relaci\\u00f3n al n\\u00famero de tuplas que hay en un esquema de base de datos:\",\"answer\":\"cardinalidad\"},{\"question\":\"La palabra clave DISTINCT no se puede usar con subconsultas que incluyan:\",\"answer\":\"GROUP BY\"},{\"question\":\"No es uno de los operadores de comparaci\\u00f3n de las subconsultas:\",\"answer\":\">!\"},{\"question\":\"Una subconsulta anidada en la instrucci\\u00f3n externa SELECT,         NO tiene los componentes siguientes:\",\"answer\":\"TOP HAVING\"},{\"question\":\"No es una de las instrucciones DML que se manejen con subconsultas:\",\"answer\":\"REVOKE\"},{\"question\":\"Es el archivo de datos principal donde se encuentra la informaci\\u00f3n inicial de la base de datos:\",\"answer\":\"mdf\"},{\"question\":\"No es un operador de comparaci\\u00f3n en el lenguaje de manipulaci\\u00f3n de datos\",\"answer\":\"!\"},{\"question\":\"Es un operador que especifica un intervalo que se va a evaluar, retorna un valor boolean :\",\"answer\":\"between\"},{\"question\":\"Es el acr\\u00f3nimo del lenguaje de definici\\u00f3n de datos.\",\"answer\":\"DDL\"}]', 22, 20, 1, 45, NULL, '2021-12-01 06:00:00', b'1'),
(83, '4b06-99aa', 'Evaluación final del curso - EV1', '[{\"question\":\"Se utilizan para visualizar los procesadores\\/ nodos\\/dispositivos de hardware de un sistema, los enlaces de comunicaci\\u00f3n entre ellos y la colocaci\\u00f3n de los archivos de software en ese hardware.\",\"answer\":\"Diagrama de despliegue\"},{\"question\":\"En un diagrama de despliegue la imagen se denomina:\",\"answer\":\"Asociaci\\u00f3n de Comunicaci\\u00f3n\"},{\"question\":\"En un diagrama la imagen representa\",\"answer\":\"Estado\"},{\"question\":\"Son una t\\u00e9cnica conocida para describir el comportamiento de un sistema.\",\"answer\":\"Diagrama de estado\"},{\"question\":\"En el diagrama de componentes la imagen representa\",\"answer\":\"Paquete\"},{\"question\":\"Representan las relaciones entre los __________________ individuales del sistema mediante una vista de dise\\u00f1o est\\u00e1tica\",\"answer\":\"Diagrama de componentes\"},{\"question\":\"Es una descripci\\u00f3n de las actividades que deber\\u00e1 realizar alguien o algo para llevar a cabo alg\\u00fan proceso\",\"answer\":\"Diagrama de caso de uso\"},{\"question\":\"Es una persona o un sistema. Se representa con el dibujo de una figura humana esquem\\u00e1tica\",\"answer\":\"Actor\"},{\"question\":\"En la lista, que \\u00edtem no pertenece a una notaci\\u00f3n\",\"answer\":\"Clase\"},{\"question\":\"Se usan para dividir el modelo de clases del sistema de informaci\\u00f3n\",\"answer\":\"Paquetes\"},{\"question\":\"Dentro del diagrama de clases, la imagen representa\",\"answer\":\"Agregaci\\u00f3n\"},{\"question\":\"Es un conjunto de actividades planificadas que implican la participaci\\u00f3n de un n\\u00famero de personas y de recursos materiales coordinados para conseguir un objetivo previamente identificado\",\"answer\":\"Proceso\"},{\"question\":\"Es una representaci\\u00f3n gr\\u00e1fica que sirve para representar la estructura de un sistema que ser\\u00e1 implementado utilizando un lenguaje orientado a objetos\",\"answer\":\"Diagrama de clases\"},{\"question\":\"Es un modelo que no es espec\\u00edfico de una base de datos. Describe aspectos relacionados con las necesidades de una organizaci\\u00f3n para recopilar datos y las relaciones entre estos aspectos\",\"answer\":\"Dise\\u00f1o l\\u00f3gico de una base de datos\"},{\"question\":\"Se utiliza para representar el punto de partida o el estado inicial de una actividad\",\"answer\":\".\"},{\"question\":\"Es un diagrama de flujo del proceso multi-prop\\u00f3sito que se usa para modelar el comportamiento del sistema.\",\"answer\":\"Diagrama de Actividad\"},{\"question\":\"Atributo necesario dentro de un sistema que puede representar una capacidad, caracter\\u00edsticas o un factor de calidad del sistema de tal manera que le sea \\u00fatil a los clientes o a los usuarios finales.\",\"answer\":\"Requerimiento a nivel de procesos\"},{\"question\":\"Es un proceso l\\u00f3gico utilizado en el mundo del Desarrollo de Software sistemas para desarrollar un sistema de informaci\\u00f3n, incluidos los requisitos, la validaci\\u00f3n, formaci\\u00f3n, como los usuarios (interesados) en la propiedad.\",\"answer\":\"Ciclo de vida de desarrollo de un sistema\"},{\"question\":\"Es un lenguaje gr\\u00e1fico para visualizar, especificar, construir y documentar un sistema\",\"answer\":\"UML\"},{\"question\":\"En la lista, que \\u00edtem no corresponde a un concepto fundamental en el mundo orientado a objetos\",\"answer\":\"Arreglo\"}]', 12, 10, 1, 49, NULL, '2021-12-03 06:00:00', b'1'),
(84, 'c076-069d', 'Evaluación prueba', '[{\r\n\"question\": \"hola\",\r\n\"answer\": \"mundo\"\r\n}]', 0, 0, 0, 49, 1, '2021-12-17 06:38:58', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `ID` int(8) NOT NULL,
  `ROL` varchar(50) NOT NULL,
  `STATUS` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`ID`, `ROL`, `STATUS`) VALUES
(1, 'Administrador General', b'1'),
(2, 'Administrador de Carrera', b'1'),
(3, 'Usuario Colaborador', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semesters`
--

CREATE TABLE `semesters` (
  `ID` int(8) NOT NULL,
  `SEMESTER` varchar(50) NOT NULL,
  `STATUS` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `semesters`
--

INSERT INTO `semesters` (`ID`, `SEMESTER`, `STATUS`) VALUES
(1, 'Primer Semestre', b'1'),
(2, 'Segundo Semestre', b'1'),
(3, 'Tercer Semestre', b'1'),
(4, 'Cuarto Semestre', b'1'),
(5, 'Quinto Semestre', b'1'),
(6, 'Sexto Semestre', b'1'),
(7, 'Séptimo Semestre', b'1'),
(8, 'Octavo Semestre', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(60) NOT NULL,
  `LASTNAME` varchar(60) NOT NULL,
  `USERNAME` varchar(16) NOT NULL,
  `PASWORD` varchar(64) NOT NULL,
  `EMAIL` varchar(320) NOT NULL,
  `PHONE` varchar(15) NOT NULL,
  `SEXO` char(1) NOT NULL,
  `ID_CAREER` int(8) NOT NULL,
  `ID_SEMESTER` int(8) NOT NULL,
  `ID_CAMPUS` int(8) NOT NULL,
  `ID_ROL` int(8) NOT NULL,
  `BORN` date NOT NULL,
  `STATUS` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`ID`, `NAME`, `LASTNAME`, `USERNAME`, `PASWORD`, `EMAIL`, `PHONE`, `SEXO`, `ID_CAREER`, `ID_SEMESTER`, `ID_CAMPUS`, `ID_ROL`, `BORN`, `STATUS`) VALUES
(1, 'Yon Gerli', 'Infante Arce', 'yopirata', 'asucar123YON', 'yoninfantearce@gmail.com', '912943322', 'M', 32, 5, 45, 1, '2003-01-01', b'1'),
(2, 'Carlos Manuel', 'Gamboa Palomino', 'gysmoy', 'gysmoy', 'gamboapalominocarlosmanuel@gmail.com', '999413711', 'M', 32, 5, 45, 1, '2001-06-15', b'1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `coments`
--
ALTER TABLE `coments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_REVIEW` (`ID_REVIEW`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_SEMESTER` (`ID_SEMESTER`),
  ADD KEY `ID_CAREER` (`ID_CAREER`);

--
-- Indices de la tabla `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_COURSE` (`ID_COURSE`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `interactions`
--
ALTER TABLE `interactions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_REVIEW` (`ID_REVIEW`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_ROL` (`ID_ROL`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_COURSE` (`ID_COURSE`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_CAREER` (`ID_CAREER`),
  ADD KEY `ID_SEMESTER` (`ID_SEMESTER`),
  ADD KEY `ID_CAMPUS` (`ID_CAMPUS`),
  ADD KEY `ID_ROL` (`ID_ROL`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campus`
--
ALTER TABLE `campus`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `careers`
--
ALTER TABLE `careers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `coments`
--
ALTER TABLE `coments`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `history`
--
ALTER TABLE `history`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `interactions`
--
ALTER TABLE `interactions`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `semesters`
--
ALTER TABLE `semesters`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coments`
--
ALTER TABLE `coments`
  ADD CONSTRAINT `coments_ibfk_1` FOREIGN KEY (`ID_REVIEW`) REFERENCES `reviews` (`ID`),
  ADD CONSTRAINT `coments_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `users` (`ID`);

--
-- Filtros para la tabla `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`ID_SEMESTER`) REFERENCES `semesters` (`ID`),
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`ID_CAREER`) REFERENCES `careers` (`ID`);

--
-- Filtros para la tabla `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`ID_COURSE`) REFERENCES `courses` (`ID`),
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `users` (`ID`);

--
-- Filtros para la tabla `interactions`
--
ALTER TABLE `interactions`
  ADD CONSTRAINT `interactions_ibfk_1` FOREIGN KEY (`ID_REVIEW`) REFERENCES `reviews` (`ID`),
  ADD CONSTRAINT `interactions_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `users` (`ID`);

--
-- Filtros para la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`ID_ROL`) REFERENCES `roles` (`ID`);

--
-- Filtros para la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`ID_COURSE`) REFERENCES `courses` (`ID`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `users` (`ID`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`ID_CAREER`) REFERENCES `careers` (`ID`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`ID_SEMESTER`) REFERENCES `semesters` (`ID`),
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`ID_CAMPUS`) REFERENCES `campus` (`ID`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`ID_ROL`) REFERENCES `roles` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
