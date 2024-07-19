-- Create database `shopee` if it doesn't exist
CREATE DATABASE IF NOT EXISTS `onlineshop`;

-- Use database `shopee`
USE `onlineshop`;

-- Create the table `cart` if it doesn't exist
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `item_id` int NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Insert data into the `cart` table
INSERT INTO `cart` (`cart_id`, `user_id`, `item_id`) VALUES
(33, 1, 2),
(34, 1, 11);

-- Create the table `product` if it doesn't exist
CREATE TABLE IF NOT EXISTS `product` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Insert data into the `product` table
INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Lavandería La Rapidita', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 152.00, './assets/imagenes/Producto.png', '2021-11-29 11:08:57'),
(2, 'Lavandería 24/7', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 122.00, './assets/imagenes/Producto1.png', '2021-11-29 11:08:57'),
(3, 'Lavarropa', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 122.00, './assets/imagenes/Producto2.png', '2021-11-29 11:08:57'),
(4, 'Lavandería Dos Pasos', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 122.00, './assets/imagenes/Producto3.png', '2021-11-29 11:08:57'),
(5, 'Limpio y Suave', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 122.00, './assets/imagenes/Producto3.png', '2021-11-29 11:08:57'),
(6, 'Blanco y limpio; Lavalisto.', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 122.00, './assets/imagenes/Producto4.png', '2021-11-29 11:08:57'),
(7, 'Ready Laundry', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 122.00, './assets/imagenes/Producto5.png', '2021-11-29 11:08:57'),
(8, 'Lava Speed', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 122.00, './assets/imagenes/Producto6.png', '2021-11-29 11:08:57'),
(9, 'Wash and Go', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 152.00, './assets/imagenes/Producto7.png', '2021-11-29 11:08:57'),
(10, 'Clear and Clean', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 152.00, './assets/imagenes/Producto8.png', '2021-11-29 11:08:57'),
(11, 'La Laverie', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 152.00, './assets/imagenes/Producto9.png', '2021-11-29 11:08:57'),
(12, 'Lava a diario', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 152.00, './assets/imagenes/Producto2.png', '2021-11-29 11:08:57'),
(13, 'Washing Machine Plus', 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales', 152.00, './assets/imagenes/Producto3.png', '2021-11-29 11:08:57');

-- Create the table `user` if it doesn't exist
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Insert data into the `user` table
INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Terri', 'gualberto ku chay', '0000-00-00 00:00:00');

CREATE TABLE IF NOT EXISTS `wishlist` (
  `cart_id` int NOT NULL,
  `user_id` int NOT NULL,
  `item_id` int NOT NULL
) 