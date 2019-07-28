DROP TABLE IF EXISTS `Order_Items`;
DROP TABLE IF EXISTS `Placed_Order`;

DROP TABLE IF EXISTS `Customer`;
CREATE TABLE Customer (
    customer_id INTEGER(15) NOT NULL AUTO_INCREMENT,
    password CHAR(64),
    f_name VARCHAR(40),
    l_name VARCHAR(40),
    phoneNb VARCHAR(30),
    email VARCHAR(320),
    PRIMARY KEY (customer_id)
    );

DROP TABLE IF EXISTS `Placed_Order`;
CREATE TABLE Placed_Order (
    order_id INTEGER(15) NOT NULL AUTO_INCREMENT,
    customer_id INTEGER(15),
    order_date DATE,
    ship_by_date DATE,
    shipped_date DATE,
    total_price DECIMAL(6,2) NOT NULL DEFAULT 0,
    order_status VARCHAR(41),
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
    );

DROP TABLE IF EXISTS `Product`;
CREATE TABLE Product (
    product_id INTEGER(20) NOT NULL AUTO_INCREMENT,
    product_sku VARCHAR(100),
    product_weight DECIMAL(6, 2),
    product_name VARCHAR(200),
    product_color VARCHAR(30),
    price DECIMAL(6, 2),
    quantity_avail INTEGER(20),
    description TEXT(),
    PRIMARY KEY (product_id)
    );

DROP TABLE IF EXISTS `Product_Images`;
CREATE TABLE Product_Images (
    product_id INTEGER(20) NOT NULL,
    image_default_sm VARCHAR(200),
    image_default_md VARCHAR(200),
    image_default_lg VARCHAR(200),
    PRIMARY KEY (product_id),
    FOREIGN KEY (product_id) REFERENCES Product (product_id)
    );

DROP TABLE IF EXISTS `Order_Items`;
CREATE TABLE Order_Items (
    order_id INTEGER(15),
    product_id INTEGER(15),
    quantity INTEGER(20),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Placed_Order (order_id),
    FOREIGN KEY (product_id) REFERENCES Product (product_id)
    );


INSERT INTO Product (product_sku, product_weight, product_name, product_color, price, quantity_avail, description)
VALUES ('sk10001', 1.2, 'T-Shirt', 'blue', 7.99, 80, 'Great for everyone in the family! 100% Cotton'),
       ('sk10002', 1.2, 'T-Shirt', 'orange', 7.99, 80, 'Great for everyone in the family! 100% Cotton'),
       ('sk20021', 1.0, 'Cap', 'blue', 14.99, 10, 'Show off your porcupine gear! Very Comfortable!'),
       ('sk20022', 1.0, 'Cap', 'orange', 14.99, 10, 'Show off your porcupine gear! Very Comfortable!'),
       ('sk30031', 1.7, 'Mug', 'blue', 12.99, 50, 'Perfect for your morning coffee!'),
       ('sk30032', 1.7, 'Mug', 'orange', 12.99, 50, 'Perfect for your morning coffee!');

INSERT INTO Product_Images (product_id, image_default_sm, image_default_md, image_default_lg)
VALUES (1, 'img/merch/tshirt_logo_blue_128.png', 'img/merch/tshirt_logo_blue_256.png', 'img/merch/tshirt_logo_blue_720.png'),
       (2, 'img/merch/tshirt_logo_orange_128.png', 'img/merch/tshirt_logo_orange_256.png', 'img/merch/tshirt_logo_orange_720.png'),
       (3, 'img/merch/cap_logo_blue_128.png', 'img/merch/cap_logo_blue_256.png', 'img/merch/cap_logo_blue_720.png'),
       (4, 'img/merch/cap_logo_orange_128.png', 'img/merch/cap_logo_orange_256.png', 'img/merch/cap_logo_orange_720.png'),
       (5, 'img/merch/mug_logo_blue_128.png', 'img/merch/mug_logo_blue_256.png', 'img/merch/mug_logo_blue_720.png'),
       (6, 'img/merch/mug_logo_orange_128.png', 'img/merch/mug_logo_orange_256.png', 'img/merch/mug_logo_orange_720.png');

DROP TABLE IF EXISTS `Workshop_Registration`;
CREATE TABLE `Workshop_Registration` (
  `registrationId` int(15) NOT NULL,
  `workshopId` char(64) DEFAULT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Workshop_Registration`
--

INSERT INTO `Workshop_Registration` (`registrationId`, `workshopId`, `first_name`, `last_name`, `email`) VALUES
(1, 'Business', 'Don', 'Martin', 'don@martin.com'),
(2, 'Business', 'NUTU', 'BLANUTU', 'nutu@blanutu.com'),
(3, 'Business', 'NUTU', 'BLANUTU', 'nutu@balanutu.com'),
(4, 'Business', 'NUTU', 'BLANUTU', 'nutu@balanutu.com'),
(5, 'Insomnia', 'Don', 'Martin', 'don@martin.com'),
(6, 'Ethics', 'Dan', 'Balan', 'dan@balan.com'),
(7, 'Pediatrics', 'Dan', 'Balan', 'dan@balan.com'),
(8, 'Insomnia', 'Dan', 'Balan', 'dan@balan.com'),
(9, 'Ethics', 'NUTU', 'BLANUTU', 'nutu@balanutu.com');

ALTER TABLE `Workshop_Registration`
  ADD PRIMARY KEY (`registrationId`);

ALTER TABLE `Workshop_Registration`
  MODIFY `registrationId` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `Workshop` (
  `workshopId` char(64) NOT NULL,
  `workshopName` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Workshop` (`workshopId`, `workshopName`) VALUES
('Business', 'Acupuncture Business Success (December 15, 2019)'),
('Ethics', 'Acupuncture Ethics (October 15, 2020)'),
('Insomnia', 'A Basic Acupuncture Guide to Insomnia (July 10, 2020)'),
('Pediatrics', 'Acupuncture for Pediatrics (August 18, 2020)');

ALTER TABLE `Workshop`
  ADD PRIMARY KEY (`workshopId`);
