CREATE DATABASE sale;
use sale;
CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price INT DEFAULT 0,
    quantity INT,
    sale_date DATE
);


--------------------------------------------------
INSERT INTO sales (product_name,category,price,quantity,sale_date) VALUES ('Laptop', 'Electronics', 800, 2, '2025-01-01'),
                                                ('Phone', 'Electronics', 600, 3, '2025-01-01'),
                                                ('TV', 'Electronics', 900, 1, '2025-01-02'),
                                                ('Headphones', 'Electronics', 150, 5, '2025-01-03'),
                                                ('Table', 'Furniture', 300, 1, '2025-01-01'),
                                                ('Chair', 'Furniture', 100, 4, '2025-01-02'),
                                                ('Sofa', 'Furniture', 1200, 1, '2025-01-03'),
                                                ('Bed', 'Furniture', 900, 1, '2025-01-04'),
                                                ('T-shirt', 'Clothing', 40, 6, '2025-01-01'),
                                                ('Jeans', 'Clothing', 70, 3, '2025-01-02'),
                                                ('Jacket', 'Clothing', 120, 2, '2025-01-03'),
                                                ('Shoes', 'Clothing', 90, 4, '2025-01-04'),
                                                ('Apple', 'Food', 2, 20, '2025-01-01'),
                                                ('Bread', 'Food', 3, 15, '2025-01-02'),
                                                ('Milk', 'Food', 4, 10, '2025-01-03'),
                                                ('Cheese', 'Food', 8, 5, '2025-01-04'),
                                                ('Notebook', 'Stationery', 5, 10, '2025-01-01'),
                                                ('Pen', 'Stationery', 2, 25, '2025-01-02'),
                                                ('Marker', 'Stationery', 4, 12, '2025-01-03'),
                                                ('Folder', 'Stationery', 6, 8, '2025-01-04');

select category,count(*) from sales GROUP BY category;  

+-------------+----------+
| category    | count(*) |
+-------------+----------+
| Electronics |        4 |
| Furniture   |        4 |
| Clothing    |        4 |
| Food        |        4 |
| Stationery  |        4 |
+-------------+----------+

select category,sum(price*quantity) from sales GROUP BY category;

+-------------+---------------------+
| category    | sum(price*quantity) |
+-------------+---------------------+
| Electronics |                5050 |
| Furniture   |                2800 |
| Clothing    |                1050 |
| Food        |                 165 |
| Stationery  |                 196 |
+-------------+---------------------+

select category,AVG(price),sum(price)from sales GROUP BY category;

+-------------+------------+------------+
| category    | AVG(price) | sum(price) |
+-------------+------------+------------+
| Electronics |   612.5000 |       2450 |
| Furniture   |   625.0000 |       2500 |
| Clothing    |    80.0000 |        320 |
| Food        |     4.2500 |         17 |
| Stationery  |     4.2500 |         17 |
+-------------+------------+------------+




select DAY(sale_date), SUM(price) from sales group by DAY(sale_date);

+--------------+------------+
+----------------+------------+
| DAY(sale_date) | SUM(price) |
+----------------+------------+
|              1 |       1747 |
|              2 |       1075 |
|              3 |       1478 |
|              4 |       1004 |
+----------------+------------+


select product_name,SUM(price*quantity) from sales WHERE category = 'Electronics' GROUP BY product_name;

+--------------+---------------------+
| product_name | SUM(price*quantity) |
+--------------+---------------------+
| Laptop       |                1600 |
| Phone        |                1800 |
| TV           |                 900 |
| Headphones   |                 750 |
+--------------+---------------------+

select category,sum(price*quantity) as sum from sales GROUP BY category having sum >=2000;



+-------------+------+
| category    | sum  |
+-------------+------+
| Electronics | 5050 |
| Furniture   | 2800 |
+

select category,AVG(price) as avg, SUM(price)from sales GROUP BY category having avg > 100;

+-------------+----------+------------+
| category    | avg      | SUM(price) |
+-------------+----------+------------+
| Electronics | 612.5000 |       2450 |
| Furniture   | 625.0000 |       2500 |
+-------------+----------+------------+

select sum(quantity) from sales where YEAR(sale_date) = 2025 and MONTH(sale_date) = 1 and DAY(sale_date) = 1;

+---------------+
| sum(quantity) |
+---------------+
|            42 |
+---------------+

select * from sales ORDER BY quantity desc limit 1;

+----+--------------+------------+-------+----------+------------+
| id | product_name | category   | price | quantity | sale_date  |
+----+--------------+------------+-------+----------+------------+
| 18 | Pen          | Stationery |     2 |       25 | 2025-01-02 |
+----+--------------+------------+-------+----------+------------+


select category, JSON_ARRAYAGG(quantity),SUM(price*quantity) from sales WHERE quantity > 3 GROUP BY category;

+-------------+-------------------------+---------------------+
| category    | JSON_ARRAYAGG(quantity) | SUM(price*quantity) |
+-------------+-------------------------+---------------------+
| Clothing    | [6, 4]                  |                 600 |
| Electronics | [5]                     |                 750 |
| Food        | [20, 15, 10, 5]         |                 165 |
| Furniture   | [4]                     |                 400 |
| Stationery  | [10, 25, 12, 8]         |                 196 |
+-------------+-------------------------+---------------------+