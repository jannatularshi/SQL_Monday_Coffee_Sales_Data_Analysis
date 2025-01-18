CREATE TABLE city
(
city_id int PRIMARY KEY,
city_name varchar(50),
population bigint,
estimated_rent float,
city_rank int
);

CREATE TABLE customers(
customers_id int PRIMARY KEY,
customers_name varchar(50),
city_id int,
CONSTRAINT fk_city FOREIGN KEY (city_id)
REFERENCES city(city_id)
);

CREATE TABLE products(
product_id int PRIMARY KEY,
product_name varchar(50),
price float
);

CREATE TABLE sales(
sale_id int PRIMARY KEY,
sale_date date,
product_id int,
customer_id int,
total float,
rating int,
CONSTRAINT fk_products FOREIGN KEY (product_id)
REFERENCES products(product_id),
CONSTRAINT fk_customers FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
);