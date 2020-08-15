INSERT INTO Category(Name)
VALUES
('Electronics'),
('Sport'),
('Toys');

INSERT INTO Product(Name,Description,Price,Available,IdCategory)
VALUES
('iPhone 11','Newest iPhone model. Mobile Phone 6,1" IPS 1792 × 828, processor Apple A13 Bionic 6-core, RAM 4 GB, internal memory 128 GB, GPS, Glonass, NFC, LTE, Lightning port, single SIM + eSIM, water resistant IP68, unlocked, quick charging 18W, wireless charging, battery 3110 mAh, iOS 13',
    20000,1,1), 
('Xiaomi Redmi Note 9','Mobile Phone 6,67" IPS 2340x1080, 8-core processor, RAM 6 GB, internal memory 128 GB',
	10000,1,1),
('PlayStation 4','Game Console by Sony, 500GB HDD, Blu-ray, 1 × game controller',6000,1,1),
('FISCHER Hockey stick','Black wooden ice hockey stick.',350,1,2),
('LEGO Star Wars Helicopter','LEGO Building Kit for boys, suitable for children from 18 years, contains 647 pieces, Star Wars LEGO range',1000,0,3),
('NERF Dart Megapack','Nerf Accessories - 100 darts',500,1,3);

INSERT INTO Customer(Name,Email,Address)
VALUES
('Jan Novák','jan.novak@gmail.com','Nová 15, Praha'),
('Tomáš Horák','t.h@gmail.com','Pod Mostem 43, Brno'),
('Jakub Novotný','jakub.novotny@seznam.cz','Plzeňská 151, Jihlava');

INSERT INTO [Order](Status,Date,IdCustomer)
VALUES
('Shipped','2020-08-15',1),
('Completed','2020-07-03',1),
('Completed','2020-08-10',1),
('Completed','2020-06-11',2),
('Shipped','2020-08-14',2),
('Completed','2020-07-24',3);

INSERT INTO ProductOrder(IdOrder,IdProduct)
VALUES
(1,1),
(2,1),
(2,3),
(3,4),
(4,4),
(4,1),
(5,3),
(6,6);