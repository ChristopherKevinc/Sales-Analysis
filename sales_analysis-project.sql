CREATE DATABASE Sales_analysis;
USE Sales_analysis;
SHOW DATABASES;

-- Create Customers Table
CREATE TABLE CUSTOMERS(
  Customer_id INT PRIMARY KEY,
  Customer_name Varchar(100),
  Email Varchar(100),
  City Varchar(100),
  State Varchar(100),
  Gender Varchar(100),
  age INT 
);

-- Products Table
CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  product_name Varchar(100),
  category Varchar(100),
  price INT
);

-- Orders Table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date Date,
  status Varchar(20),
  FOREIGN KEY (Customer_id)  REFERENCES CUSTOMERS(Customer_id)
);

-- Orders Items Table
CREATE TABLE Orders_items (
  item_id INT,
  order_id INT,
  product_id INT,
  quantity INT,
  unit_price Decimal(10,2),
  FOREIGN KEY (order_id)    REFERENCES Orders(order_id),
  FOREIGN KEY (product_id)  REFERENCES Products(product_id)
);
SHOW TABLES;

-- Insert Customers
INSERT INTO CUSTOMERS VALUES 
(1, 'Michael', 'michael@gmail.com', 'Mysore', 'Karnataka', 'Male', 38),
(2, 'David', 'david@gmail.com', 'Mumbai', 'Maharashtra', 'Male', 32),
(3, 'Tony', 'tony@gmail.com', 'Hyderabad', 'Telangana', 'Male', 33),
(4, 'Kevin', 'kevin@gmail.com', 'Bangalore', 'Karnataka', 'Male', 26),
(5, 'Veena', 'veena@gmail.com', 'Bangalore', 'Karnataka', 'Female', 26),
(6, 'Peter', 'peter@gmail.com', 'Mysore', 'Karnataka', 'Male', 36),
(7, 'Prabha', 'prabha@gmail.com', 'Bangalore', 'Karnataka', 'Female', 38),
(8, 'Jesu', 'jesu@gmail.com', 'Bangalore', 'Karnataka', 'Male',19),
(9, 'Arvind', 'arvind@gmail.com', 'Chennai', 'Tamil Nadu', 'Male',25),
(10, 'Adam', 'adam@gmail.com', 'Kochi', 'Kerala', 'Male',17),
(11, 'Trineta', 'trini@gmail.com', 'Chennai', 'Tamil Nadu', 'Female', 29),
(12, 'Raghu', 'raghu@gmail.com', 'Pune', 'Maharashtra', 'Male',37),
(13, 'Anto', 'anto@gmail.com', 'Bangalore', 'Karnataka', 'Male',20),
(14, 'Ryan', 'ryan@gmail.com', 'Trichy', 'Tamil Nadu', 'Male',32),
(15, 'Karan', 'karan@gmail.com', 'Hyderabad', 'Telangana', 'Male',27),
(16, 'Karthik', 'karthik@gmail.com', 'Coimbatore', 'Tamil Nadu', 'Male',30),
(17, 'Suriya', 'suriya@gmail.com', 'Coimbatore', 'Tamil Nadu', 'Male',50),
(18, 'Vijay', 'vijay@gmail.com', 'Bangalore', 'Karnataka', 'Male',51),
(19, 'Harris', 'Jharris@gmail.com', 'Chennai', 'Tamil Nadu', 'Male',51),
(20, 'Sandhya', 'sandhya@gmail.com', 'Bangalore', 'Karnataka', 'Female',26),
(21, 'John', 'john@gmail.com', 'Kochi', 'Kerala', 'Male',31),
(22, 'Madhusudhan', 'madhu@gmail.com', 'Mysore', 'Karnataka', 'Male',41);

-- Insert Products
INSERT INTO Products VALUES 
(1, 'Wireless Earbuds', 'Electronics', 1200.00),
(2, 'Shoes', 'Footwear', 870.00),
(3, 'Cotton Pant', 'Clothing', 570.00),
(4, 'Linen Shirt', 'Clothing', 1110.00),
(5, 'Minimilist Face Wash', 'Skin Care', 566.00),
(6, 'Stainless Steel Water Bottle', 'Home & Kitchen', 250.00),
(7, 'Handbag', 'Beauty', 630.00),
(8, 'Protein Powder', 'Health', 1450.00),
(9, 'Mens Slim Fit Denim Jacket', 'Clothing', 3199.00),
(10, 'Saree', 'Clothing', 1510.00),
(11, 'Levis Baggy Jeans', 'Clothing', 1300.00),
(12, 'Desk Lamp', 'Electronics', 300.00),
(13, 'Sony Wireless Headphones', 'Electronics', 3200.00),
(14, 'Power Bank', 'Electronics', 1200.00),
(15, 'Whiskas', 'Pet Supplies', 250.00),
(16, 'Linea Rossa Coolers', 'Sunglasses', 15550.00),
(17, 'Electric ToothBrush', 'Health', 1500.00),
(18, 'Park Avenue', 'Perfume', 680.00),
(19, 'Airfryer', 'Home & Kitchen', 11550.00),
(20, 'Nike Air Jordan Mens', 'Footwear', 12500.00),
(21, 'Oversized Hoodie', 'Clothing', 850.00),
(22, 'Airpods Pro 2nd Gen', 'Electronics', 20400.00);

-- Insert Orders
INSERT INTO Orders VALUES 
(101, 1, '2026-06-25', 'Delivered'),
(102, 2, '2026-06-26', 'Cancelled'),
(103, 3, '2026-06-28', 'Delivered'),
(104, 4, '2026-06-29', 'Delivered'),
(105, 5, '2026-06-29', 'Delivered'),
(106, 5, '2026-06-30', 'Pending'),
(107, 6, '2026-07-01', 'Delivered'),
(108, 4, '2026-07-02', 'Delivered'),
(109, 7, '2026-07-03', 'Delivered'),
(110, 8, '2026-07-04', 'Delivered'),
(111, 9, '2026-07-06', 'Pending'),
(112, 10, '2026-07-10', 'Delivered'),
(113, 11, '2026-07-11', 'Delivered'),
(114, 13, '2026-07-22', 'Delivered'),
(115, 14, '2026-07-25', 'Delivered'),
(116, 13, '2026-08-04', 'Delivered'),
(117, 8, '2026-08-05', 'Delivered'),
(118, 17, '2026-08-06', 'Delivered'),
(119, 16, '2026-08-07', 'Delivered'),
(120, 18, '2026-08-07', 'Delivered'),
(121, 17, '2026-08-08', 'Delivered'),
(122, 15, '2026-08-08', 'Delivered'),
(123, 5, '2026-08-10', 'Delivered'),
(124, 11, '2026-08-11', 'Delivered'),
(125, 2, '2026-08-15', 'Delivered'),
(126, 15, '2026-08-17', 'Delivered'),
(127, 7, '2026-08-22', 'Delivered'),
(128, 12, '2026-08-25', 'Delivered'),
(129, 19, '2026-08-28', 'Delivered'),
(130, 20, '2026-08-28', 'Delivered'),
(131, 21, '2026-08-29', 'Delivered'),
(132, 22, '2026-08-29', 'Delivered'),
(133, 22, '2026-08-30', 'Delivered');

-- Insert Order Items
INSERT INTO Orders_items VALUES 
(1, 101, 1, 1, 1200.00),
(2, 101, 4, 2, 1100.00),
(3, 102, 2, 1, 870.00),
(4, 103, 1, 1, 1200.00),
(5, 103, 6, 2, 250.00),
(6, 104, 1, 1, 1200.00),
(7, 104, 9, 1, 3199.00),
(8, 105, 7, 1, 630.00),
(9, 106, 6, 2, 250.00),
(10, 107, 12, 2, 300.00),
(11, 108, 5, 1, 566.00),
(12, 108, 6, 2, 250.00),
(13, 109, 10, 2, 1510.00),
(14, 110, 9, 1, 3199.00),
(15, 111, 6, 1, 250.00),
(16, 112, 11, 1, 1300.00),
(17, 112, 15, 2, 250.00),
(18, 113, 7, 2, 630.00),
(19, 114, 8, 1, 1450.00),
(20, 115, 13, 2, 3200.00),
(21, 116, 4, 3, 1110.00),
(22, 117, 15, 2, 250.00),
(23, 118, 16, 1, 15550.00),
(24, 119, 5, 2, 566.00),
(25, 120, 2, 1, 870.00),
(26, 120, 9, 1, 3199.00),
(27, 120, 16, 1, 15550.00),
(28, 121, 9, 2, 3199.00),
(29, 122, 12, 1, 300.00),
(30, 123, 13, 1, 3200.00),
(31, 124, 7, 1, 630.00),
(32, 125, 13, 1, 3200.00),
(33, 126, 3, 1, 570.00),
(34, 127, 7, 3, 630.00),
(35, 128, 14, 1, 1200.00),
(36, 129, 16, 1, 15500.00),
(37, 130, 18, 1, 680.00),
(38, 131, 20, 1, 12500.00),
(39, 132, 21, 1, 850.00),
(40, 133, 14, 1, 1200.00),
(41, 130, 11, 1, 1300.00);

-- QUERY 1 : Total Revenue Generated 
SELECT 
    SUM(quantity*unit_price) AS total_revenue
FROM Orders_items;
-- JOIN Orders ON Orders.order_id = Orders_items.order_id
-- WHERE Orders.status = 'Delivered';

-- SELECT DISTINCT status FROM Orders;
-- SELECT * FROM Orders;

-- QUERY 2 : Day Wise Sales Report  
SELECT
    Orders.order_date, Orders.order_id,
    COUNT(DISTINCT Orders.order_id)                       AS total_orders,
    SUM(Orders_items.quantity * Orders_items.unit_price)  AS daily_revenue
FROM Orders
JOIN Orders_items ON Orders.order_id = Orders_items.order_id
WHERE Orders.status = 'Delivered'
GROUP BY Orders.order_date, Orders.order_id    
ORDER BY Orders.order_date;

-- QUERY 3 : Monthly Sales Report  
SELECT
    MONTHNAME(Orders.order_date)        AS month_name,
    MONTH(Orders.order_date)            AS month_number,
    COUNT(DISTINCT Orders.order_id)     AS total_orders,
    SUM(Orders_items.quantity*Orders_items.unit_price)  AS monthly_revenue
FROM Orders
JOIN Orders_items ON Orders.order_id = Orders_items.order_id
WHERE Orders.status = 'Delivered'
GROUP BY MONTH(Orders.order_date), MONTHNAME(Orders.order_date)    
ORDER BY month_number; 

-- QUERY 4 : Top 5 Best Selling Products 
SELECT
    Products.product_name,
    Products.category,
    SUM(Orders_items.quantity)                            AS total_units_sold,
    SUM(Orders_items.quantity * Orders_items.unit_price)  AS total_revenue
FROM Orders_items
JOIN Products ON Orders_items.product_id = Products.product_id
GROUP By Products.product_name, Products.category
ORDER By total_revenue DESC
LIMIT 5; 

-- QUERY 5 : Category Wise Revenue Report  
SELECT
    Products.category,
    COUNT(DISTINCT Orders_items.order_id)                AS total_orders,
    SUM(Orders_items.quantity)                           AS units_sold,
    SUM(Orders_items.quantity * Orders_items.unit_price)  AS category_revenue
FROM Orders_items
JOIN Products ON Orders_items.product_id = Products.product_id 
GROUP By Products.category
ORDER By category_revenue DESC;

Select CUSTOMERS.Customer_name, Products.product_name, 
Products.category, Orders_items.quantity, Orders_items.unit_price,
(Orders_items.quantity * Orders_items.unit_price) as total_amount
FROM Customers
JOIN Orders ON Customers.Customer_id = Orders.Customer_id
JOIN Orders_items ON Orders.order_id = Orders_items.order_id
JOIN Products ON Orders_items.product_id = Products.product_id
WHERE Customers.Customer_name = 'Kevin';

-- QUERY 6 : Customer Wise Purchase Summary 
SELECT
    Customers.Customer_name,
    CUSTOMERS.City,
    COUNT(DISTINCT Orders_items.order_id)                AS total_orders,
    SUM(Orders_items.quantity)                           AS units_sold,
    SUM(Orders_items.quantity * Orders_items.unit_price)  AS total_spent
FROM CUSTOMERS
JOIN Orders ON CUSTOMERS.Customer_id = Orders.Customer_id
JOIN Orders_items ON Orders.order_id = Orders_items.order_id
WHERE Orders.status = 'Delivered'
GROUP By CUSTOMERS.Customer_name, CUSTOMERS.City
Order By total_spent DESC;

-- QUERY 7 : Top 3 Customers By Revenue 
SELECT
    Customers.Customer_name,
    CUSTOMERS.City,
    SUM(Orders_items.quantity * Orders_items.unit_price)  AS total_spent
FROM CUSTOMERS
JOIN Orders ON CUSTOMERS.Customer_id = Orders.Customer_id
JOIN Orders_items ON Orders.order_id = Orders_items.order_id
WHERE Orders.status = 'Delivered'
GROUP By CUSTOMERS.Customer_name, CUSTOMERS.City
Order By total_spent DESC
LIMIT 3;

-- QUERY 8 : City Wise Sales Performance 
SELECT
    CUSTOMERS.City,
    COUNT(DISTINCT Orders_items.order_id)                AS total_orders,
    SUM(Orders_items.quantity)                           AS units_sold,
    SUM(Orders_items.quantity * Orders_items.unit_price)  AS city_revenue
FROM CUSTOMERS
JOIN Orders ON CUSTOMERS.Customer_id = Orders.Customer_id
JOIN Orders_items ON Orders.order_id = Orders_items.order_id
WHERE Orders.status = 'Delivered'
GROUP By CUSTOMERS.City
Order By city_revenue DESC;

-- QUERY 9 : Order Status Summary (Delivered vs Cancelled)
SELECT
    status,
    COUNT(order_id) AS total_orders
FROM Orders
GROUP By status;

-- QUERY 10 : Average Order Value (AOV)
SELECT
    ROUND(
         SUM(Orders_items.quantity * Orders_items.unit_price) / COUNT(DISTINCT Orders.order_id),
2) AS average_order_value
FROM Orders
JOIN Orders_items ON Orders.order_id = Orders_items.order_id
WHERE Orders.status = 'Delivered';

-- QUERY 11 : Gender Wise Buying Behaviour
SELECT
    CUSTOMERS.Gender,
    COUNT(DISTINCT Orders.order_id)               AS total_orders,
    SUM(Orders_items.quantity * Orders_items.unit_price)   AS total_revenue
FROM CUSTOMERS
JOIN Orders ON CUSTOMERS.Customer_id = Orders.Customer_id
JOIN Orders_items ON Orders.order_id = Orders_items.order_id 
WHERE Orders.status = 'Delivered'
GROUP By CUSTOMERS.Gender
ORDER By total_revenue DESC;  

-- QUERY 12 : Monthly Revenue Growth
SELECT
    MONTHNAME(Orders.order_date)                           AS month,
    SUM(Orders_items.quantity * Orders_items.unit_price)   AS revenue,
    LAG(SUM(Orders_items.quantity * Orders_items.unit_price))
        OVER (ORDER BY MONTH(Orders.order_date))     AS previous_month_revenue,
    ROUND(
          (SUM(Orders_items.quantity * Orders_items.unit_price) - 
          LAG(SUM(Orders_items.quantity * Orders_items.unit_price))
              OVER (ORDER BY MONTH(Orders.order_date)))  /
          LAG(SUM(Orders_items.quantity * Orders_items.unit_price))
              OVER (ORDER BY MONTH(Orders.order_date)) * 100
  , 2) AS growth_percentage
FROM Orders
JOIN Orders_items ON Orders.order_id = Orders_items.order_id
WHERE Orders.status = 'Delivered'
GROUP BY MONTH(Orders.order_date), MONTHNAME(Orders.order_date)
ORDER BY MONTH(Orders.order_date);


-- QUERY 13 : Repeat Customers (Ordered More than Once)
SELECT
    CUSTOMERS.Customer_name,
    CUSTOMERS.City,
    COUNT(DISTINCT Orders.order_id)  AS number_of_orders
FROM CUSTOMERS
JOIN Orders ON CUSTOMERS.Customer_id = Orders.Customer_id
WHERE Orders.status = 'Delivered'
GROUP By CUSTOMERS.Customer_name, CUSTOMERS.City
HAVING COUNT(DISTINCT Orders.order_id) > 1
ORDER By number_of_orders DESC;

-- QUERY 14 : Products Never Ordered (Dead Stock Check)
SELECT
    Products.product_name,
    Products.category
FROM Products
LEFT JOIN Orders_items ON Products.product_id = Orders_items.product_id
WHERE Orders_items.product_id IS NULL;

-- QUERY 15 : Yearly Sales Summary 
SELECT
    YEAR(Orders.order_date)             AS year,
    COUNT(DISTINCT Orders.order_id)     AS total_orders,
    SUM(Orders_items.quantity*Orders_items.unit_price)  AS yearly_revenue
FROM Orders
JOIN Orders_items ON Orders.order_id = Orders_items.order_id
WHERE Orders.status = 'Delivered'
GROUP BY year  
ORDER BY year;

ALTER USER 'root'@'localhost'
IDENTIFIED WITH mysql_native_password
BY 'root';

FLUSH PRIVILEGES;

SELECT user, host, plugin
FROM mysql.user
WHERE user = 'root';







