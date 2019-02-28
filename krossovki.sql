-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 28 2018 г., 17:42
-- Версия сервера: 10.1.36-MariaDB
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `krossovki`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Adidas'),
(2, 'Nike'),
(3, 'Reebok'),
(4, 'Umbro'),
(5, 'Kappa');

-- --------------------------------------------------------

--
-- Структура таблицы `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `img_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `models`
--

INSERT INTO `models` (`id`, `brand_name`, `model_name`, `number`, `id_brand`, `id_type`, `img_link`) VALUES
(2, 'Reebok', 'Poindexter', 57575, 3, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw73418948/zoom/B27909_01_standard.jpg?sw=500'),
(3, 'Adidas', 'Mable Shoes', 125758, 1, 1, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw2841fa20/zoom/BB7651_01_standard.jpg?sw=500'),
(4, 'Adidas', 'Stan Shoes', 125447, 1, 1, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwf4b16445/zoom/B28170_01_standard.jpg?sw=500'),
(5, 'Adidas', 'Memas Shoes', 128825, 1, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwde067a14/zoom/AC7429_01_standard.jpg?sw=500'),
(6, 'Adidas', 'Skypas Shoes', 133515, 1, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwe0ee9609/zoom/AH2673_01_standard.jpg?sw=500'),
(7, 'Adidas', 'Wias Shoes', 144515, 1, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwa990901a/zoom/AC7431_01_standard.jpg?sw=500'),
(8, 'Adidas', 'Pacas Shoes', 125615, 1, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw7e4a1ad7/zoom/BB9242_01_standard.jpg?sw=500'),
(9, 'Nike', 'Mike Shoes', 125544, 2, 1, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw4951ec6e/zoom/B42234_01_standard.jpg?sw=500'),
(10, 'Nike', 'Strike Shoes', 145455, 2, 1, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw189c5768/zoom/BB6585_01_standard.jpg?sw=500'),
(11, 'Nike', 'Spyke Shoes', 147565, 2, 1, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw6a6cfccc/zoom/AQ1024_01_standard.jpg?sw=500'),
(12, 'Nike', 'Bike Shoes', 125668, 2, 1, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw151e4033/zoom/B41739_01_standard.jpg?sw=500'),
(13, 'Nike', 'Fake Shoes', 125669, 2, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw9455a9b1/zoom/B27961_01_standard.jpg?sw=500'),
(14, 'Nike', 'Real Shoes', 128835, 2, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw7a8435c2/zoom/B37702_01_standard.jpg?sw=500'),
(15, 'Nike', 'Cake Shoes', 117515, 2, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw7f0d890f/zoom/B44613_01_standard.jpg?sw=500'),
(16, 'Nike', 'J Shoes', 125787, 2, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwbad42c09/zoom/CM8255_01_standard.jpg?sw=500'),
(17, 'Reebok', 'Nox Shoes', 127715, 3, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw2ae29c08/zoom/B37660_01_standard.jpg?sw=500'),
(18, 'Reebok', 'Kox Shoes', 175815, 3, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dweab8f04f/zoom/BB9173_01_standard.jpg?sw=500'),
(19, 'Reebok', 'Lox Shoes', 111415, 3, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwf44ef23d/zoom/BB7343_01_standard.jpg?sw=500'),
(20, 'Reebok', 'Spok Shoes', 107515, 3, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw58658c18/zoom/B37164_01_standard.jpg?sw=500'),
(21, 'Reebok', 'Koba Shoes', 235515, 3, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwe117b071/zoom/BB7695_01_standard.jpg?sw=500'),
(22, 'Reebok', 'Jul Shoes', 245515, 3, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw3617e526/zoom/B75899_01_standard.jpg?sw=500'),
(23, 'Umbro', 'Bro Shoes', 100415, 4, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw8dab62df/zoom/BB9176_01_standard.jpg?sw=500'),
(24, 'Umbro', 'Cro Shoes', 187415, 4, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw6719b9b3/zoom/B28080_01_standard.jpg?sw=500'),
(25, 'Umbro', 'Pro Shoes', 155635, 4, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwcbfaae10/zoom/B43788_01_standard.jpg?sw=500'),
(26, 'Umbro', 'Tro Shoes', 199615, 4, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw0aa9b805/zoom/B28123_01_standard.jpg?sw=500'),
(27, 'Umbro', 'Chek Shoes', 267515, 4, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw68321a41/zoom/B37659_01_standard.jpg?sw=500'),
(28, 'Umbro', 'Daisy Shoes', 288515, 4, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwd4b8f2b8/zoom/B37547_01_standard.jpg?sw=500'),
(29, 'Kappa', 'Kappa Shoes', 157815, 5, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwe1ad6d46/zoom/B37167_01_standard.jpg?sw=500'),
(30, 'Kappa', 'Lapa Shoes', 148515, 5, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw0e644072/zoom/B37657_01_standard.jpg?sw=500'),
(31, 'Kappa', 'Suppa Shoes', 111515, 5, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw5f782c6f/zoom/B96515_01_standard.jpg?sw=500'),
(32, 'Kappa', 'Qupa Shoes', 177515, 5, 3, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwcfb0dd56/zoom/BB7502_01_standard.jpg?sw=500'),
(33, 'Nike', 'Lesynya', 7031997, 2, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw73b6f4a3/zoom/AQ0233_01_standard.jpg?sw=500'),
(34, 'Nike', 'DareDevil Shoes', 261018, 2, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw24b74a1e/zoom/AC7567_01_standard.jpg?sw=500'),
(35, 'Reebok', 'Avatar Shoes', 7759361, 3, 1, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwcd5ac7d0/zoom/AC7918_01_standard.jpg?sw=500'),
(38, 'Nike', 'Redberry Shoes', 505404, 2, 1, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dw20504253/zoom/AC7566_01_standard.jpg?sw=500'),
(47, 'Nike', 'Blueberry', 7723485, 2, 2, 'https://www.adidas.ru/dis/dw/image/v2/aagl_prd/on/demandware.static/-/Sites-adidas-products/default/dwd016cabb/zoom/CM7611_01_standard.jpg?sw=500');

-- --------------------------------------------------------

--
-- Структура таблицы `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `type`
--

INSERT INTO `type` (`id`, `name`, `img_link`) VALUES
(1, 'Safety Shoes', 'https://images.asos-media.com/products/krossovki-nike-fast-exp-racer/9538282-1-black?$XXL$&wid=513&fit=constrain'),
(2, 'Sport Shoes', 'https://images.asos-media.com/products/serye-krossovki-adidas-originals-swift-run-cq2122/8840155-1-grey?$XXL$&wid=513&fit=constrain'),
(3, 'More Shoes', 'https://images.asos-media.com/products/belye-vysokie-krossovki-reebok-ex-o-fit-3477/6990804-1-white?$XXL$&wid=513&fit=constrain');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_brand` (`id_brand`),
  ADD KEY `id_type` (`id_type`);

--
-- Индексы таблицы `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
