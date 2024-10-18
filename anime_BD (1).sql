-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 18 2024 г., 21:55
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `anime_BD`
--

-- --------------------------------------------------------

--
-- Структура таблицы `anime`
--

CREATE TABLE `anime` (
  `id` int NOT NULL,
  `img` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` date NOT NULL,
  `movie_trailer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `anime`
--

INSERT INTO `anime` (`id`, `img`, `name`, `date`, `movie_trailer`) VALUES
(1, 'https://cs13.pikabu.ru/post_img/2024/03/22/1/1711060255143261563.jpg', 'Моя геройская академия', '2024-04-06', 'https://youtu.be/fqMHdYPxl3Y'),
(2, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/667e9fcf46fb9694086397.jpg', 'Звёздное дитя 2', '2024-05-12', 'https://youtu.be/OJGbUZw-p_0'),
(18, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/67005e78b6386027637585.jpg', 'Синяя тюрьма', '2024-10-05', 'https://youtu.be/1zm5jMcTlVA'),
(19, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/6641d2d298ed5652081729.jpg', 'Клинок, рассекающий демонов', '2024-04-04', 'https://youtu.be/ZV4RdhVcEds'),
(20, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/660134130c3d8448155426.jpg', 'Ветролом', '2024-04-05', 'https://youtu.be/l-1N4PEL4uQ'),
(21, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/66df9de57702c856425275.jpg', 'Re: Жизнь в альтернативном мире с нуля 3', '2024-10-02', 'https://youtu.be/LZ2jafyHTfM'),
(22, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/66fb9d2c2f012001950241.jpg', 'Синий экзорцист: За снегом', '2024-10-06', 'https://youtu.be/Rb96sg7J1gY'),
(23, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/66f938518eef8038008145.jpg', 'Ханако, призрак с внеклассными историями', '2024-10-08', 'https://youtu.be/GHDdZoTxHd4'),
(24, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/6701a255a4ec9967906903.jpg', 'О движении Земли', '2024-10-05', 'https://youtu.be/FCQgpxZ1MJk'),
(25, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/6595101eaeb87573671727.jpg', 'Семь смертных грехов: Недовольство Эдинбурга.', '2024-08-08', 'https://youtu.be/SjCa-8aEs1k'),
(26, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/659f8da8890dc378561060.jpg', 'Магия и мускулы 2', '2024-01-06', 'https://youtu.be/dbUjIfCmAGU'),
(27, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/5a709a018f697.jpg', 'Охотник х Охотник 2', '2014-10-02', 'https://youtu.be/2M29n0JpQNk'),
(28, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/633886a44d317901831310.jpg', 'Берсерк', '2024-10-08', 'https://youtu.be/MmEJ0mjCfv0'),
(29, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/5a98753a658ae002113715.jpg', 'Первый шаг', '2024-10-04', 'https://youtu.be/FNpjwxk8-a8'),
(30, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/64f0dbe500423242175587.jpg', 'Магическая битва 2', '2024-07-06', 'https://youtu.be/ufuO5TD8NEA'),
(31, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/5a2a9a4315d2b.jpg', 'Атака титанов 2', '2017-04-01', 'https://youtu.be/nGIrBRQD_tE'),
(32, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/659f8dd485857721242765.jpg', 'Поднятие уровня в одиночку', '2024-01-07', 'https://youtu.be/ErgOZ5mZYho'),
(33, 'https://animego.org/media/cache/thumbs_250x350/upload/anime/images/649d6823b618d097585759.jpg', 'Хоримия', '2021-01-10', 'https://youtu.be/diCRudoHw_g');

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--

CREATE TABLE `genre` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'senen'),
(2, 'fantasi'),
(3, 'everyday'),
(4, 'romance');

-- --------------------------------------------------------

--
-- Структура таблицы `id_AG`
--

CREATE TABLE `id_AG` (
  `id` int NOT NULL,
  `id_anime` int NOT NULL,
  `id_genre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `id_AG`
--

INSERT INTO `id_AG` (`id`, `id_anime`, `id_genre`) VALUES
(2, 2, 2),
(3, 1, 2),
(4, 21, 4),
(5, 29, 2),
(6, 20, 3),
(7, 27, 1),
(8, 26, 4),
(10, 26, 1),
(11, 31, 2),
(12, 18, 2),
(13, 30, 3),
(14, 26, 3),
(15, 22, 4),
(16, 25, 4),
(17, 32, 1),
(18, 29, 1),
(19, 21, 3),
(20, 19, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `manga`
--

CREATE TABLE `manga` (
  `id` int NOT NULL,
  `img` varchar(150) NOT NULL,
  `title` varchar(100) NOT NULL,
  `Publisher` varchar(70) NOT NULL,
  `manga` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `manga`
--

INSERT INTO `manga` (`id`, `img`, `title`, `Publisher`, `manga`) VALUES
(4, 'https://com-x.life/uploads/posts/2024-02/3bca3b6b-4eb9-49c2-97db-805ee103aeac.jpg', 'Распятие Шести', 'Kodansha', 'https://mangalib.org/juujika-no-rokunin'),
(5, 'https://cover.imglib.info/uploads/cover/jujutsu-kaisen/cover/8F5nOVFu2Lnh_250x350.jpg', 'Магическая битва', 'Akutami Gege', 'https://mangalib.me/jujutsu-kaisen/v1/c1'),
(6, 'https://cover.imglib.info/uploads/cover/sono-bisque-doll-wa-koi-wo-suru/cover/exF2rT2OPyTK_250x350.jpg', 'Эта фарфоровая кукла влюбилась', 'Fukuda Shinichi', 'https://mangalib.me/sono-bisque-doll-wa-koi-wo-suru/v1/c1'),
(7, 'https://cover.imglib.info/uploads/cover/oshi-no-ko/cover/5WHXVDkw8P3C_250x350.jpg', 'Звёздное Дитя', 'Aka Akasaka', 'https://mangalib.me/oshi-no-ko/v1/c1'),
(8, 'https://cover.imglib.info/uploads/cover/naruto/cover/zYymN7Pz3Gxz_250x350.jpg', 'Наруто', 'Masashi Kishimoto', 'https://mangalib.me/naruto/v1/c0'),
(9, 'https://cover.imglib.info/uploads/cover/mashle-mashle/cover/8epVqI4kKgll_250x350.jpg', 'Магия и Мускулы', 'Hajime Koumoto', 'https://mangalib.me/mashle-mashle/v1/c1'),
(10, 'https://cover.imglib.info/uploads/cover/kanojo-okarishimasu/cover/9AkODBVFXG6o_250x350.jpg', 'Девушка на час', 'MIYAJIMA Reiji', 'https://mangalib.me/kanojo-okarishimasu/v1/c1'),
(11, 'https://cover.imglib.info/uploads/cover/bungou-stray-dogs/cover/xMyKPXHTraYO_250x350.jpg', 'Великий из Бродячих Псов', 'Kafka Asagiri', 'https://mangalib.me/bungou-stray-dogs/v1/c1'),
(12, 'https://cover.imglib.info/uploads/cover/chainsaw-man-2/cover/wpojqdY8jR8L_250x350.jpg', 'Человек-бензопила 2', 'Tatsuki Fujimoto', 'https://mangalib.me/chainsaw-man-2/v12/c98'),
(13, 'https://cover.imglib.info/uploads/cover/onepunchman/cover/NEoRv1ecMXqi_250x350.jpg', 'Ванпанчмен', 'Murata Yuusuke', 'https://mangalib.me/onepunchman/v1/c1'),
(14, 'https://cover.imglib.info/uploads/cover/kage-no-jitsuryokusha-ni-naritakute/cover/2lHch3TQyH8u_250x350.jpg', 'Восхождение в тени', 'Daisuke Aizawa', 'https://mangalib.me/kage-no-jitsuryokusha-ni-naritakute/v1/c1'),
(15, 'https://cover.imglib.info/uploads/cover/forward/cover/3H0mYwF5OQng_250x350.jpg', 'Нападающий', 'Yoshida Yuta', 'https://mangalib.me/forward/v1/c1');

-- --------------------------------------------------------

--
-- Структура таблицы `new`
--

CREATE TABLE `new` (
  `id` int NOT NULL,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `explanation` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `new`
--

INSERT INTO `new` (`id`, `title`, `explanation`, `img`) VALUES
(1, 'У аниме «Звёздное дитя» будет третий сезон', 'Мангу «Звёздное дитя» (Oshi no Ko) продолжат экранизировать. Принято решение о производстве третьего сезона её аниме-адаптации. Новость об этом появилась на сайте сериала. Там же был представлен специальный ролик с анонсом сезона. Подробности продолжения опубликуют позднее.', 'https://kg-portal.ru/img/122314/main.webp'),
(2, 'Появилось несколько страниц кроссовера «Черепашек-ниндзя» и «Наруто»', 'Долгожданный кроссовер между «Черепашками-ниндзя» и «Наруто» с очевидным названием Teenage Mutant Ninja Turtles x Naruto вытащил из своего арсенала несколько страниц первого выпуска. Напоминаем, что встреча зелёных мутантов-рептилий, владеющих искусством ниндзюцу, с никогда не сдающимся ниндзя-блондином произойдёт этой осенью.', 'https://kg-portal.ru/img/125637/main.webp'),
(3, 'Аниме «Моя геройская академия: Ты следующий» стало самым кассовым в серии', 'Сборы четвёртого аниме-фильма серии «Моя геройская академия» в японском прокате достигли 3,46 млрд иен (около $ 23,62 млн). Картина, получившая подзаголовок «Ты следующий», стала самой кассовой в серии, обойдя по сборам третье полнометражное аниме по манге Koxэя Xopикocи.', 'https://kg-portal.ru/img/121269/main.webp');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `token` varchar(150) DEFAULT NULL,
  `date_last_auth` timestamp(6) NULL DEFAULT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `token`, `date_last_auth`, `email`) VALUES
(58, 'oleg', '827ccb0eea8a706c4c34a16891f84e7b', '66f041e16a60928b05a7e228a89c3799', '2024-10-10 09:57:49.000000', 'oleg@gmail.com'),
(59, '12345', '827ccb0eea8a706c4c34a16891f84e7b', '093f65e080a295f8076b1c5722a46aa2', '2024-10-11 13:40:41.000000', 'oleg@gmail.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `id_AG`
--
ALTER TABLE `id_AG`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_anime` (`id_anime`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Индексы таблицы `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `id_AG`
--
ALTER TABLE `id_AG`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `manga`
--
ALTER TABLE `manga`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `new`
--
ALTER TABLE `new`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `id_AG`
--
ALTER TABLE `id_AG`
  ADD CONSTRAINT `id_ag_ibfk_1` FOREIGN KEY (`id_anime`) REFERENCES `anime` (`id`),
  ADD CONSTRAINT `id_ag_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
