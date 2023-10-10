-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2023 a las 17:37:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_vinoteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `id_bodega` int(11) NOT NULL,
  `Nombre_bodega` varchar(45) NOT NULL,
  `Ubicación` varchar(45) NOT NULL,
  `Año` int(11) NOT NULL,
  `Características` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bodega`
--

INSERT INTO `bodega` (`id_bodega`, `Nombre_bodega`, `Ubicación`, `Año`, `Características`) VALUES
(1, 'Bodega Norton S.A.', 'Ruta 15 – km 23,5 Perdriel – Luján de Cuyo Me', 1895, 'Bodega Norton posee 5 viñedos distribuidos en las principales zonas (terroirs) de la Provincia de Mendoza, a los pies de la Cordillera de Los Andes. Todos están ubicados dentro de lo que es considerado la zona privilegiada conocida como “Primera Zona”, por la calidad de sus uvas.'),
(2, 'Bodegas Chandon S.A.', 'Dirección: Ruta 15 Km 29, Agrelo, Lújan de Cu', 1923, 'Las burbujas son el corazón de nuestra compañía y son aquello a lo que nos dedicamos desde nuestros orígenes. Son años de aprendizajes y saberes, de esfuerzos y celebraciones, desplegados con sabiduría y pasión para elaborar Chandon.'),
(3, 'Bodegas Valentín Bianchi S.A.', 'Ruta 143 y calle Valentín Bianchi Alto Las Pa', 1945, 'El terroir de Valle de Uco es un hito para Bodegas Bianchi por que marca el inicio, el primer movimiento de nuestra estrategia de marca global.\r\nEs el crecimiento natural de nuestra historia de 90 años en la búsqueda de nuevos sabores para el mercado local e internacional.'),
(4, 'Bodegas y Viñedos López S.A.', 'Ozamis Norte 375, Gral. Gutiérrez, Maipú, Men', 1898, 'Desde su fundación en 1898 Bodegas López representa un caso excepcional dentro de la industria vitivinícola argentina. Hoy continúa en manos de la familia fundadora, ofreciendo desde siempre la mejor calidad. Labrando una historia desde el trabajo, amor al detalle y pasión por los grandes vinos, res'),
(5, 'Bodegas y Viñedos López S.A.', 'Ruta Panamericana y, C. Miguez, M5570 San Mar', 1934, 'El continuo esfuerzo por progresar, el equipo de trabajo, la innovación, la inversión en tecnología y la constante búsqueda por alcanzar la máxima expresión de los vinos que identifican las virtudes de nuestro terroir, han logrado que Los Haroldos sea reconocida por brindar al mercado vinos de excel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cepa`
--

CREATE TABLE `cepa` (
  `id_cepa` int(11) NOT NULL,
  `Nombre_cepa` varchar(45) NOT NULL,
  `Aroma` varchar(200) NOT NULL,
  `Maridaje` varchar(200) NOT NULL,
  `Textura` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cepa`
--

INSERT INTO `cepa` (`id_cepa`, `Nombre_cepa`, `Aroma`, `Maridaje`, `Textura`) VALUES
(1, 'Cabernet Sauvignon', 'Aromas a pimienta, ajíes, pimentón, cerezas y grafito.', 'Son ideales para carnes con gran contenido graso (vacuno o cerdo), ya que los taninos ayudar a limpiar del paladar la sensación de grasa que dejan los bocados. ', 'es un vino pesado, tanto en sabor como en textura.'),
(2, 'Chardonnay', 'Perfil cremoso con aroma a avellanas, miel y caramelo cuando ha tenido guarda en barrica, lo que le proporciona un distintivo aroma a mantequilla.', 'Acompañar con mariscos, pescado, carnes blancas, pastas, complementa muy bien aquellos sabores tostados de masas al horno y verduras caramelizadas o recetas a base de crema o mantequilla.', 'Es fresco, con una leve sensación de dulzura, una acidez vibrante, volumen y estructura media'),
(3, 'Chenin', 'chenin', 'prueba', 'prueba'),
(4, 'Malbec', 'Presencia de frutos rojos como moras, frambuesas o arándanos, y también notas de ciruela.', 'pastas con salsas a base de tomate, carnes asadas, quesos sólidos. El Malbec también puede acompañar postres de chocolate o Cheesecake de frutos rojos.\r\n\r\n', 'cuerpo importante y sabor persistente en boca  en el que se siente la presencia de los frutos rojos'),
(5, 'Merlot', 'Aromas a Frambuesas, guindas y especias como el clavo de olor, además de aquellos dados por la madera como la vainilla, el coco y el chocolate.', 'Ideal para acompañar pastas y pizzas', 'Se caracteriza por su textura suave en el paladar dado por sus bajos niveles de taninos.'),
(6, 'Sauvignon blanc', 'Toques de grosellas, melón verde, pomelo o fruta de la pasión', 'Ideal para acompañar mariscos, carnes blancas, especias, quesos y vegetales', 'Son vinos secos, con poco cuerpo y con aroma refrescante muy intenso.'),
(7, 'Syrah', 'Se caracteriza por un aroma afrutado que recuerda a una mezcla entre frambuesas, violetas, grosellas, canela, pimienta y clavo', 'Carnes rojas y de caza', 'En boca es fresco, de estructura media y textura fina, con taninos elegantes y jugosos, y un final prolongado. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vino`
--

CREATE TABLE `vino` (
  `ID_vino` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Azucar` varchar(45) NOT NULL,
  `id_cepa` int(11) NOT NULL,
  `id_bodega` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vino`
--

INSERT INTO `vino` (`ID_vino`, `Nombre`, `Tipo`, `Azucar`, `id_cepa`, `id_bodega`) VALUES
(1, 'FEDERICO LÓPEZ GRAN RESERVA', 'Vino Tinto', '1,75 gr/l.', 1, 4),
(2, 'CHATEAU VIEUX MALBEC', 'Vino tinto', '1,65 gr/l.', 4, 4),
(3, 'ALTURA', 'Vino tinto', '1,80 gr/l.', 4, 1),
(4, 'DON VALENTIN LACRADO', 'Vino tinto', '1,75 gr/l.', 4, 3),
(5, 'DON VALENTIN LACRADO', 'Vino blanco', '1,66 gr/l.', 6, 3),
(6, 'vino1', 'tinto', 'dulce', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`id_bodega`);

--
-- Indices de la tabla `cepa`
--
ALTER TABLE `cepa`
  ADD PRIMARY KEY (`id_cepa`);

--
-- Indices de la tabla `vino`
--
ALTER TABLE `vino`
  ADD PRIMARY KEY (`ID_vino`),
  ADD KEY `Bodega` (`id_bodega`),
  ADD KEY `Cepa` (`id_cepa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bodega`
--
ALTER TABLE `bodega`
  MODIFY `id_bodega` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cepa`
--
ALTER TABLE `cepa`
  MODIFY `id_cepa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `vino`
--
ALTER TABLE `vino`
  MODIFY `ID_vino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vino`
--
ALTER TABLE `vino`
  ADD CONSTRAINT `vino_ibfk_1` FOREIGN KEY (`id_cepa`) REFERENCES `cepa` (`id_cepa`),
  ADD CONSTRAINT `vino_ibfk_2` FOREIGN KEY (`id_bodega`) REFERENCES `bodega` (`id_bodega`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;