#creating sales database 

CREATE DATABASE IF NOT EXISTS 	sales;
CREATE SCHEMA IF NOT EXISTS 	sales;

#creating table in sales as customers

USE sales;

CREATE TABLE customers
(customer_id 			INT,
number_of_complaint 	INT,
first_name 		VARCHAR(255),
last_name 		VARCHAR(255),
email_address 	VARCHAR(255));

#creating unique and primary key for the table

ALTER TABLE customers 
ADD PRIMARY KEY	(customer_id),
ADD UNIQUE KEY	(email_address);

ALTER TABLE 	customers
ADD INDEX 		idx_customer_id (customer_id);

SELECT * FROM 	customers;
SELECT * FROM 	sales;

#creating table sales 

USE SALES;

CREATE TABLE sales
(
purchase_number INT PRIMARY KEY AUTO_INCREMENT,
date_of_purchase DATE,
customer_id INT ,
item_code VARCHAR(10)
);

#giving a foregin key for the sales table and dropping it 

ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

ALTER TABLE sales 
DROP FOREIGN KEY sales_ibfk_1;

select * from sales;






