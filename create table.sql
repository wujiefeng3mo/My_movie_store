
-------user form
create table users (
userid bigint not null primary key, --- id
username varchar(30) not null, --- username
truename varchar(30) not null, ----- true name
password varchar(30) not null, ------- password
email varchar(40) not null, -------- email address
phone varchar(20) not null, --------phone number
address varchar(30) not null,
postcode char(6) not null, ----- postcode
grade int   default 1 -----------user level
);


-------administration form



--------products form
create table products (
productsId bigint null primary key,
productName varchar(40),
productIntro varchar(500),
productPrice float,
productNum int,
publisher varchar(40),
photo varchar(40),
productType varchar(10)
);

--------------order form
create table orders(
ordersId bigint not null primary key,
userId bigint references users(userid),
orderDate date default current_date,
payMode varchar(20),
isPayed boolean,
totalPrice float not null
);

----------------order detail form
create table orderDetail(
	ordersIid bigint  references orders(ordersId),
	productsId bigint references products(productsId),
	quant integer not null
);
--------insert a  user
insert into users values (0,'admin','admin','admin','wujiefeng3mo@gmail.com','111-111-1111','NJ','07307');
------insert products
insert into products values (1,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (2,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (3,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (4,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (5,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (6,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (7,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (8,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (9,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (10,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (11,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');
insert into products values (12,'The Godfather','excellent movie','49.00','5','fox','godfather.jpg','crime');