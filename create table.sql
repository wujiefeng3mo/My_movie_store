
-------user form
CREATE TABLE users
(
  userid bigint NOT NULL,
  username character varying(30) NOT NULL,
  truename character varying(30) NOT NULL,
  password character varying(30) NOT NULL,
  email character varying(40) NOT NULL,
  phone character varying(20) NOT NULL,
  address character varying(30) NOT NULL,
  postcode character(6) NOT NULL,
  grade integer DEFAULT 1,
  CONSTRAINT users_pkey PRIMARY KEY (userid)
)
WITH (
  OIDS=FALSE
);

-------administration form



--------products form
CREATE TABLE products
(
  productsid bigint NOT NULL,
  productname character varying(40),
  productintro character varying(500),
  productprice double precision,
  productnum integer,
  publisher character varying(40),
  photo character varying(40),
  producttype character varying(10),
  CONSTRAINT products_pkey PRIMARY KEY (productsid)
)
WITH (
  OIDS=FALSE
);

--------------order form
CREATE TABLE orders
(
  ordersid serial NOT NULL,
  userid bigint,
  orderdate date DEFAULT ('now'::text)::date,
  paymode character varying(20),
  ispayed boolean,
  totalprice double precision NOT NULL,
  CONSTRAINT orders_pkey PRIMARY KEY (ordersid),
  CONSTRAINT orders_userid_fkey FOREIGN KEY (userid)
      REFERENCES users (userid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
----------------order detail form
CREATE TABLE orderdetail
(
  ordersiid bigint,
  productsid bigint,
  quant integer NOT NULL,
  CONSTRAINT orderdetail_ordersiid_fkey FOREIGN KEY (ordersiid)
      REFERENCES orders (ordersid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT orderdetail_productsid_fkey FOREIGN KEY (productsid)
      REFERENCES products (productsid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
--------insert a  user
insert into users values (0,'admin','admin','admin','wujiefeng3mo@gmail.com','111-111-1111','NJ','07307');
------insert products
insert into products values (1,'The Godfather','excellent movie','40.00','5','fox','godfather.jpg','crime');
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