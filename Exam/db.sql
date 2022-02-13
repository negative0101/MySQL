DROP SCHEMA online_stores;
CREATE SCHEMA online_stores;
USE online_stores;

CREATE TABLE brands(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(40) NOT NULL UNIQUE);

CREATE TABLE categories(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(40) NOT NULL UNIQUE);

CREATE TABLE reviews(
id INT PRIMARY KEY AUTO_INCREMENT,
content TEXT,
rating DECIMAL(10,2) NOT NULL,
picture_url VARCHAR(80) NOT NULL,
published_at DATETIME NOT NULL
);

CREATE TABLE products(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(40) NOT NULL,
price DECIMAL(19,2) NOT NULL,
quantity_in_stock INT,
`description` TEXT,
brand_id INT NOT NULL,
category_id INT NOT NULL,
review_id INT,

CONSTRAINT fk_brand_in_products
FOREIGN KEY (brand_id)
REFERENCES brands(id),

CONSTRAINT fk_category_id_categories
FOREIGN KEY (category_id)
REFERENCES categories(id),

CONSTRAINT fk_review_id_reviews
FOREIGN KEY (review_id)
REFERENCES reviews(id)
);

CREATE TABLE customers(
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
phone VARCHAR(30) NOT NULL UNIQUE,
address VARCHAR(60) NOT NULL,
discount_card BIT(1) DEFAULT FALSE NOT NULL 
);

CREATE TABLE orders(
id INT PRIMARY KEY AUTO_INCREMENT,
order_datetime DATETIME NOT NULL,
customer_id INT NOT NULL,

CONSTRAINT fk_customer_id_customers
FOREIGN KEY (customer_id)
REFERENCES customers(id)
);

CREATE TABLE orders_products(
order_id INT,
product_id INT,

CONSTRAINT fk_order_id_orders
FOREIGN KEY (order_id)
REFERENCES orders(id),

CONSTRAINT fk_product_id_productsss
FOREIGN KEY (product_id)
REFERENCES products(id)
);


INSERT INTO `brands` VALUES (1,'Samsung'),(2,'Dell'),(3,'Sony'),(4,'Rowenta'),(5,'Tefal'),(6,'Fujitsu'),(7,'Beko'),(8,'AEG'),(9,'Candy'),(10,'Acer'),(11,'Nikon'),(12,'Garmin');
INSERT INTO `reviews`(id, content, picture_url, published_at,rating) VALUES (1,'I saw one of these in Comoros and I bought one.','AOaemvK4iSsMpWjw9ydcukQQ_TEY','2021-10-12 12:30:00.000000',3.2),(2,'My neighbor Karly has one of these. She works as a gambler and she says it looks tall.','ukQQ_TEYAfBGkw%3A1635','2019-10-02 14:32:00.000000',4.6),(3,'Perfect product!','1635325813460&ei=dRd5','2020-12-12 18:34:00.000000',4.5),(4,'I am satisfied with the purchase','60&ei=dRd5YcDKG5GXxc8P9_ObgAI&ve','2019-03-12 14:12:00.000000',2.7),(5,'The box this comes in is 5 foot by 6 inch and weights 17 pound!!','pqaVTTobr7A0pzXoLCrLFrR','2019-01-26 21:13:00.000000',3),(6,'My co-worker Mitchell has one of these. He says it looks dry.','LiG_pqaVTTobr7A0pzXoLCrLFrRQ:1635325858489','2018-11-02 12:43:00.000000',4.8),(7,'this device is top-notch.','489&ei=ohd5YfumHeiOxc8Pn96','2017-10-11 02:14:00.000000',4.4),(8,'I was very much satisfied with my product','6447114.p?skuId=6447114','2018-11-12 22:24:00.000000',4.9),(9,'Don\'t ever buy this, very bad quality.','RGXDra1X-A_9iA:1635499477695&tb','2019-02-11 21:33:00.000000',2.2),(10,'No, I would not recommend this to a friend','iA:1635499477695','2021-03-17 19:12:00.000000',1.6),(11,'i am very impressed with this','5asdfa84e88','2017-11-10 12:11:00.000000',4.6),(12,'My experience with those type of products is really bad, but i am very impressed with this','ds245asdfa84e88','2019-12-11 13:14:00.000000',4.7),(13,'My kids love this product! I am amazed how well it works actually.','kjF54Foiu982','2020-10-12 23:12:00.000000',4.8),(14,'i use it on Mondays when i\'m in my fort.','AOaemvJ7oRuFxVyq9kFrZYUVnvCavLanBA:1641894755114&','2018-12-13 10:21:00.000000',3.2),(15,'My neighbor Victoria has one of these. She works as a professor and she says it looks menthol.','mvJ7oRuFxVyq9kFrZYUVnvCavLa','2021-12-23 07:41:00.000000',2.4),(16,'I saw one of these in New Zealand and I bought one.','XDra1X-A_9iA:163549947','2018-03-30 00:12:00.000000',4.4),(17,'My neighbor Julisa has one of these. She works as a bartender and she says it looks crooked.','7114.p?skuId=6447114','2021-03-05 19:28:00.000000',3.2),(18,'It only works when I\'m New Caledonia.','J7oRuFxVyq9kFrZYUVnvCavLan','2019-06-05 13:51:00.000000',2.4),(19,'It only works when I\'m Kuwait.','XDra1X-A_9iA:1635499477695&','2019-05-25 16:56:00.000000',4.8),(20,'i use it never again when i\'m in my station.','A:1635499477695','2019-09-27 20:19:00.000000',3.3),(21,'The box this comes in is 3 yard by 6 light-year and weights 11 megaton!!','GXDra1X-A_9iA:1635499477695&tb','2019-08-29 16:21:00.000000',4.2),(22,'I tried to nab it but got biscuit all over it.','447114.p?skuId=644711','2019-06-22 16:15:00.000000',2.1),(23,'Your product descriptions are amazing and your service is wonderful.','aemvJ7oRuFxVyq9kFrZYUVnvCavLan','2018-12-29 20:37:00.000000',4.8),(24,'will definitely be ordering again','114.p?skuId=64471','2019-01-23 22:34:00.000000',4.9),(25,'It is soooo beautiful. Thank you for sending it so quickly.','635325813460&ei=dRd5','2018-10-12 11:37:00.000000',4.8),(26,'Looking forward now to the other stuff I ordered!','5325813460&ei=dRd5','2018-07-27 23:49:00.000000',4.7),(27,'get great service, great clothes, and check out feeling brilliant','OaemvK4iSsMpWjw9ydcukQQ_TE','2021-04-29 04:01:00.000000',4.4),(28,'My sister gave me this gadget for Christmas and I almost cried. It is so beautiful!','aemvK4iSsMpWjw9ydcukQQ_T','2019-07-23 21:25:00.000000',4.3),(29,'I can always find something at Online store that I fall in love with instantly','iG_pqaVTTobr7A0pzXoLCrLFrRQ:1635325858','2021-03-28 06:18:00.000000',4.7),(30,'This is such adorable gadget! I\'ll be ordering again','qaVTTobr7A0pzXoLCrLFrRQ:163532585','2019-10-01 15:07:00.000000',4.6);
INSERT INTO `categories` VALUES (1,'Phones and tablets'),(2,'Photo and Video'),(3,'Auto and GPS'),(4,'Laptops'),(5,'Small domestic appliances'),(6,'Air conditioners and heaters'),(7,'Home appliances');
INSERT INTO `customers`(id,address,discount_card, first_name, last_name, phone) VALUES (1,'032 Davies Springs Port Samuel PL1 4EH',_binary '','Joshua','Martin','0259 287 9243'),(2,'441 Louis Cove West Sebastian TW4 7JP',_binary '\0','Scott','Anderson','6011 7354 9447 4013'),(3,'442 Louis Cove West Sebastian TW4 7JP',_binary '\0','Jose','Morris','0292751712'),(4,'5 Harris Neck New Amelia NE29 7BG',_binary '\0','Ronald','Lewis','0365 325 6567'),(5,'814 Butler Plains North Joanneton RG19 8JZ',_binary '','Brian','Williams','(03873) 38496'),(6,'236 Turner Underpass New Craigport CH64 3TH',_binary '','Lauren','Johnson','0309 011 2771'),(7,'360 Joe Stream Graychester BS6 9HE',_binary '','Thomas','Parker','(04964) 036853'),(8,'Studio 69 Roberts Ville North Isabella LE11 9DA',_binary '\0','Karen','Harris','+44(0)593336470'),(9,'Flat 19 Brown Mountain Freddieshire BA15 2QE',_binary '','Jonathan','Allen','07086 423340'),(10,'Studio 45m Johnson Underpass Stevenston MK43 7LX',_binary '','Jack','Wilson','09589084304'),(11,'18468 Jay Avenue',_binary '','Viviyan','Pomroy','116-688-1727'),(12,'0 Weeping Birch Pass',_binary '','Eziechiele','Redford','869-478-4066'),(13,'10 Brickson Park Junction',_binary '\0','Allina','Flowers','517-113-2594'),(14,'5431 4th Parkway',_binary '','Lucille','Portis','421-650-5470'),(15,'46653 Talisman Terrace',_binary '\0','Kliment','Hedman','378-713-7386'),(16,'7066 Mendota Hill',_binary '','Nils','Gething','434-368-3492'),(17,'8763 Drewry Alley',_binary '','Janeva','Howard','860-941-0086'),(18,'9 Manitowish Crossing',_binary '\0','Judie','O\'Donnell','797-153-6678'),(19,'8596 Moland Way',_binary '\0','Nevin','Troth','909-782-0534'),(20,'2 Grim Park',_binary '\0','Isak','Hylden','547-968-5512'),(21,'4018 Ohio Trail',_binary '\0','Kirk','Costan','855-773-7132'),(22,'9700 Spaight Alley',_binary '','Regan','Berryman','933-222-8422'),(23,'7593 Armistice Terrace',_binary '','Roscoe','Neave','555-999-2736'),(24,'82 Kingsford Trail',_binary '\0','Joseito','Dran','810-868-4337'),(25,'6025 Tennessee Court',_binary '','Madeleine','Vasilevich','177-305-0041'),(26,'323 Steensland Parkway',_binary '','Cherilyn','Bradane','193-802-5075'),(27,'69 Golf Course Trail',_binary '','Guntar','Younglove','948-752-8137'),(28,'9 Elka Point',_binary '\0','Selene','Mateo','989-312-2204'),(29,'51 East Drive',_binary '','Shirley','Clayfield','381-516-6503'),(30,'65 Kingsford Junction',_binary '\0','Maridel','Toller','288-801-8712'),(31,'0154 Meadow Vale Crossing',_binary '','Risa','Goldsbrough','407-858-9308'),(32,'68 West Park',_binary '','Katlin','Everitt','172-658-6143'),(33,'804 Ryan Terrace',_binary '','Lira','Stickler','288-952-1206'),(34,'886 Clemons Point',_binary '\0','Barbie','Gandey','973-458-6217'),(35,'370 Welch Crossing',_binary '\0','Osborne','Sunderland','420-863-5412'),(36,'1 Hallows Crossing',_binary '','Ginevra','Darlow','999-163-2747');
INSERT INTO `products`(id,description, name, price, quantity_in_stock, brand_id, category_id, review_id) VALUES (1,'Mediatek MT8183 Octa-core, RAM 4 GB, eMMC 32 GB, UMA, Chrome OS','ACER Cromebook CB311',512.00,12,10,4,3),(2,'Supports a 24MP CMOS sensor with no optical low-pass filter (OLPF) and the company\'s latest EXPEED 4 processor.','DSLR camera NIKON D5600',1249.00,21,11,2,2),(3,'Rowenta Focus iron provides perfect ironing even in the hardest-to-reach areas.','ROWENTA RR7267WH',624.00,65,4,5,1),(4,'The Fujitsu 12RLFW1 is a powerful, versatile addition to any home or business.','Fujitsu 12RLFW1',1025.00,35,6,6,4),(5,'Fingerprint (side-mounted), accelerometer, gyro, proximity, compass','Galaxy M52 5G',789.00,65,1,1,5),(6,'Fast wireless charging 11W Reverse wireless charging 4.5W','Galaxy Z Fold3 5G',599.00,68,1,1,9),(7,'LED flash, panorama, HDR Video	1080p@30fps','Galaxy F22',1254.00,78,1,1,7),(8,'Single SIM (Nano-SIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)','Galaxy A32 5G',489.00,112,1,1,12),(9,'Handle your daily computing tasks with this 13.3-inch Dell Inspiron 2-in-1 notebook.','Inspiron 7000',489.00,22,2,4,2),(10,'The Dell XPS 17 laptop delivers powerful performance in an incredibly thin form factor.','XPS 17\"',1456.00,70,2,4,3),(11,'AMD Radeon RX 5600M graphics allow you to game at higher settings with crystal-clear detail and smooth gameplay','G5 15.6\"',969.00,5,2,4,11),(12,'Alpha 7R IV combines world’s first high-resolution 61MP back-illuminated Exmor R CMOS','Alpha 7R IV',499.00,11,3,2,4),(13,'Remove wrinkles on your garments easily with this Rowenta Steam Care iron.','Smart Steam Iron',59.00,7,4,5,8),(14,'Give your garments a fresh-pressed look with this Rowenta X\'cel Steam+ handheld steamer.','X\'cel Steam+',59.00,8,4,5,6),(15,'The granules change color, so you know when to change the filter.','Intense Pure Air',27.00,2,4,5,7),(16,'A wide opening lets you insert large chunks or entire pieces of fruit with total ease.','Juice maker ZE370138',19.00,65,5,5,13),(17,'The integrated drip tray and dishwasher-safe removable grill plates offer simple cleanup, while the brushed stainless steel housing provides long-lasting use.','GC722834 OPTIGRILL+',54.00,16,5,5,1),(18,'This GE window air conditioner runs quietly so you can stay cool with minimal disruption.','InverterXPR 33',46.00,2,6,6,2),(19,'The energy-saver mode turns off the fan once the room has reached the desired temperature, saving electricity.','GeneralElectric superCool',1225.00,4,6,6,3),(20,' Self Clean+ to eliminate 99% of bacteria that can form in the drum','CLD washer',599.00,14,7,7,4),(21,'Vibration Reduction Technology+ to reduce noise for quiet washing','Inspire 3000',699.00,24,7,7,5),(22,'Eliminates 99% of bacteria* in the drum.','Washer dryer combo',1099.00,45,8,7,6),(23,'Provides up to 1 hour of battery life.','Path finder S420',399.00,15,12,3,7),(24,'Updates are available for your pre-loaded maps of North America.','DriveSmart XS',598.00,19,12,3,1),(25,'Connects quickly to send data straight to your device.','Traffic smart s240',490.00,23,12,3,2),(26,'Super high quality. Can shoot 4k','UltraHD Cam',698.00,10,3,2,8),(27,'Sharp pictures from distance','Eagle Vision GS340',1254.00,24,3,2,11),(28,'Best seller for 2020','HD Cam S4000',154.00,41,11,2,10),(29,'Gorilla glass display','XS 420',754.00,40,1,1,9),(30,'Prism Crush Black with no contracts and no activation fees from Straight Talk','Wrapsafe',478.45,47,1,1,16),(31,'available on a variety of talk, text & data plans.','Konklux',881.09,100,1,1,4),(32,'The impressive quad camera has a lens for any occasion','Zontrax',993.27,87,1,1,20),(33,'fast charging battery will keep you snapping all day','Domainer',621.97,61,1,1,16),(34,'Get nationwide coverage™ on America’s largest and most dependable networks with Straight Talk.','Opela',287.70,117,1,1,5),(35,'Vloggers and influencers rejoice','Flowdesk',588.51,20,3,2,25),(36,'a purpose-built compact camera blending the proven imaging capabilities of the RX100-series platform','Overhold',1022.46,13,3,2,24),(37,'With an updated physical design for more efficient content creation.','Toughjoyfax',869.42,21,3,2,27),(38,'Compact, intuitive and oh-so-easy to use','Asoka',878.44,98,3,2,25),(39,'For drivers who love new adventures while traveling','DriveSmart 71',259.68,47,12,3,24),(40,'Featuring simple menus and easy-to-read map','Y-find',212.55,120,12,3,20),(41,'Traffic and map updates are included along with helpful driver alerts to encourage safer driving.','Tresom',45.91,52,12,3,22),(42,'This Refurbished Dell Latitude E7270 Laptop is a prime example of big things come in small packages!','Latitude E7270',447.17,59,2,4,29),(43,'You will be able to stay up to date with your work, or just surf the web on the go!','Alphazap',737.30,64,2,4,24),(44,'With its small size, it can fit virtually anywhere that it is needed.','Solarbreeze',882.19,55,2,4,20),(45,'This Laptop will be perfect for any home or office.','Sub-Ex',439.26,38,2,4,22),(46,'This PC is powered by an Intel Core i5-6300U 6th Gen Processor.','Tres-Zap',420.73,112,2,4,30),(47,'Ultimate Steam Iron (Dark Blue) steam iron delivers a powerful ironing experience','Namfix',683.14,47,4,5,28),(48,'This high-performance iron puts professional wrinkle and crease removal at your fingertips.','Bitwolf',1038.59,102,4,5,27),(49,'An extra-powerful 150-gram steam boost ensures high performance.','IronMax3',242.62,81,4,5,25),(50,'Patented Microsteam400 stainless steel soleplate technology creates perfect steam coverage through its 400 active micro-steam holes.','IronSDLight',438.93,88,4,5,22),(51,'An XL 12.7 oz water tank, a precision tip for hard to reach areas','Iron XL 12 7',333.97,104,4,5,20),(52,'Professional quality ironing results and the ultimate ironing tool.','MaxSteam',744.70,54,4,5,28),(53,'GE Appliances provide up-to-date technology and exceptional quality to simplify the way you live.','RonstringGE',871.94,61,6,6,30),(54,'Cool your home from anywhere with ThinQ app.','Keylex',449.52,48,6,6,22),(55,'Voice control with Alexa and Google Assistant make changing settings a breeze.','Matsoft',637.19,93,6,6,22),(56,'With 10,000 BTUs this unit will save you energy and money while cooling a room.','Daltfresh',139.19,106,6,6,15),(57,' We\'ve got you covered with Auto Restart','ToughJoyAir',999.83,20,6,6,3),(58,'Top Load Washer, Washer Capacity 4.0 cu ft, Power Source Electric','WasherCleanMS',224.45,32,7,7,12),(59,'Our full automatic laundry washing machine only needs a small space for store','Prodder',972.54,89,7,7,10),(60,'This machine features a built in drain Aluminum pump','CycleLife',107.82,60,7,7,28),(61,'You can stop wasting hours keeping an eye on washing machine for its full automatic cleaning mode.','VoltSteam',398.62,109,7,7,19),(62,' It has three water levels: L/16L M/23L H/30L, and you can choose a suitable level according to the amount of clothes you need to wash','Zathin++',1131.95,87,7,7,13),(63,'Do not hesitate to buy one','Cardguard SuperClean',1063.16,82,7,7,8);
INSERT INTO `orders` VALUES (1,'2018-11-14 15:57:42.000000',31),(2,'2020-04-01 13:41:55.000000',2),(3,'2019-08-25 19:46:17.000000',24),(4,'2021-01-06 08:01:51.000000',31),(5,'2018-03-19 01:18:58.000000',25),(6,'2018-04-13 07:44:15.000000',28),(7,'2020-03-11 18:44:54.000000',11),(8,'2020-07-24 21:43:12.000000',9),(9,'2021-11-20 20:39:32.000000',30),(10,'2020-04-05 02:29:03.000000',1),(11,'2020-11-02 05:25:10.000000',28),(12,'2020-03-31 00:14:14.000000',4),(13,'2019-03-19 04:25:14.000000',6),(14,'2019-08-11 16:53:54.000000',29),(15,'2019-06-10 12:14:49.000000',2),(16,'2020-06-26 07:55:46.000000',35),(17,'2021-07-28 21:49:31.000000',10),(18,'2018-07-29 05:05:43.000000',21),(19,'2021-01-31 07:57:53.000000',15),(20,'2020-12-24 10:32:02.000000',14),(21,'2018-02-16 06:11:45.000000',10),(22,'2020-11-27 02:22:22.000000',26),(23,'2018-04-08 07:04:21.000000',9),(24,'2021-10-24 06:24:57.000000',31),(25,'2018-02-04 20:34:33.000000',29),(26,'2019-06-28 14:16:55.000000',32),(27,'2020-11-03 11:52:53.000000',10),(28,'2019-07-29 18:17:27.000000',17),(29,'2018-11-25 11:03:30.000000',14),(30,'2021-01-23 19:13:47.000000',5),(31,'2020-04-17 05:05:44.000000',8),(32,'2018-12-03 05:19:24.000000',26),(33,'2020-07-13 18:13:45.000000',18),(34,'2021-06-30 18:40:57.000000',28),(35,'2018-08-10 05:51:38.000000',2),(36,'2019-01-10 12:58:41.000000',35),(37,'2021-06-30 15:13:26.000000',22),(38,'2018-04-03 04:34:50.000000',31),(39,'2020-03-14 03:51:51.000000',24),(40,'2019-10-05 13:44:40.000000',27),(41,'2020-10-25 15:48:46.000000',33),(42,'2020-07-09 05:22:41.000000',18),(43,'2018-08-29 17:16:52.000000',27),(44,'2020-08-06 01:44:47.000000',16),(45,'2020-03-23 22:19:58.000000',17),(46,'2019-01-29 17:58:56.000000',12),(47,'2020-05-28 18:29:36.000000',15),(48,'2022-01-04 07:22:49.000000',18),(49,'2019-09-30 02:05:50.000000',13),(50,'2020-07-11 14:34:20.000000',5);
INSERT INTO `orders_products` VALUES (1,3),(1,23),(1,35),(1,45),(1,52),(2,3),(2,12),(2,26),(2,51),(2,60),(3,1),(3,16),(3,36),(3,42),(3,45),(4,18),(4,20),(4,26),(4,41),(4,55),(5,14),(5,21),(5,22),(5,27),(5,45),(6,21),(6,27),(6,33),(6,36),(6,41),(7,5),(7,11),(7,17),(7,28),(7,33),(8,13),(8,18),(8,59),(8,61),(8,63),(9,17),(9,22),(9,30),(9,33),(9,43),(10,1),(10,5),(10,47),(10,59),(10,62),(11,17),(11,49),(12,9),(12,28),(13,11),(13,41),(14,40),(14,53),(15,34),(15,47),(16,14),(16,17),(17,21),(17,59),(18,12),(18,63),(19,41),(19,43),(20,30),(20,54),(21,39),(21,53),(21,58),(22,1),(22,32),(22,34),(23,13),(23,28),(23,31),(24,2),(24,29),(24,59),(25,5),(25,10),(25,17),(26,2),(26,4),(26,27),(27,34),(27,39),(27,46),(28,10),(28,24),(28,53),(29,1),(29,17),(29,33),(30,23),(30,37),(30,38),(31,9),(31,24),(31,46),(31,54),(31,58),(32,12),(32,25),(32,29),(32,46),(32,52),(33,18),(33,24),(33,26),(33,29),(33,36),(34,21),(34,26),(34,27),(34,39),(34,57),(35,8),(35,34),(35,35),(35,58),(35,61),(36,7),(36,9),(36,28),(36,43),(36,48),(37,8),(37,22),(37,40),(37,45),(37,48),(38,21),(38,33),(38,35),(38,42),(38,53),(39,5),(39,26),(39,31),(39,35),(39,43),(40,4),(40,8),(40,34),(40,46),(40,55),(41,4),(42,5),(43,41),(44,21),(45,60),(46,32),(47,23),(48,42),(49,24),(50,11);

