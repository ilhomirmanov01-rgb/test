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

select product_name,count(*) from sales GROUP BY product_name;  

+--------------+----------+
| product_name | count(*) |
+--------------+----------+
| Laptop       |        1 |
| Phone        |        1 |
| TV           |        1 |
| Headphones   |        1 |
| Table        |        1 |
| Chair        |        1 |
| Sofa         |        1 |
| Bed          |        1 |
| T-shirt      |        1 |
| Jeans        |        1 |
| Jacket       |        1 |
| Shoes        |        1 |
| Apple        |        1 |
| Bread        |        1 |
| Milk         |        1 |
| Cheese       |        1 |
| Notebook     |        1 |
| Pen          |        1 |
| Marker       |        1 |
| Folder       |        1 |
+--------------+----------+

select product_name,sum(price*quantity) from sales GROUP BY product_name;

+--------------+---------------------+
| product_name | sum(price*quantity) |
+--------------+---------------------+
| Laptop       |                1600 |
| Phone        |                1800 |
| TV           |                 900 |
| Headphones   |                 750 |
| Table        |                 300 |
| Chair        |                 400 |
| Sofa         |                1200 |
| Bed          |                 900 |
| T-shirt      |                 240 |
| Jeans        |                 210 |
| Jacket       |                 240 |
| Shoes        |                 360 |
| Apple        |                  40 |
| Bread        |                  45 |
| Milk         |                  40 |
| Cheese       |                  40 |
| Notebook     |                  50 |
| Pen          |                  50 |
| Marker       |                  48 |
| Folder       |                  48 |
+--------------+---------------------+

select product_name,AVG(price),sum(price)from sales GROUP BY product_name;

+--------------+------------+------------+
| product_name | AVG(price) | sum(price) |
+--------------+------------+------------+
| Laptop       |   800.0000 |        800 |
| Phone        |   600.0000 |        600 |
| TV           |   900.0000 |        900 |
| Headphones   |   150.0000 |        150 |
| Table        |   300.0000 |        300 |
| Chair        |   100.0000 |        100 |
| Sofa         |  1200.0000 |       1200 |
| Bed          |   900.0000 |        900 |
| T-shirt      |    40.0000 |         40 |
| Jeans        |    70.0000 |         70 |
| Jacket       |   120.0000 |        120 |
| Shoes        |    90.0000 |         90 |
| Apple        |     2.0000 |          2 |
| Bread        |     3.0000 |          3 |
| Milk         |     4.0000 |          4 |
| Cheese       |     8.0000 |          8 |
| Notebook     |     5.0000 |          5 |
| Pen          |     2.0000 |          2 |
| Marker       |     4.0000 |          4 |
| Folder       |     6.0000 |          6 |
+--------------+------------+------------+




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

select product_name,sum(price*quantity) as sum from sales GROUP BY product_name having sum >=1000;

# 2000 dan kattasi Yuq ekan 1000  dan kattasini chiqardim.

+--------------+------+
| product_name | sum  |
+--------------+------+
| Laptop       | 1600 |
| Phone        | 1800 |
| Sofa         | 1200 |
+--------------+------+

select product_name,AVG(price) as avg, SUM(price)from sales GROUP BY product_name having avg >=100;

+--------------+-----------+------------+
| product_name | avg       | SUM(price) |
+--------------+-----------+------------+
| Laptop       |  800.0000 |        800 |
| Phone        |  600.0000 |        600 |
| TV           |  900.0000 |        900 |
| Headphones   |  150.0000 |        150 |
| Table        |  300.0000 |        300 |
| Chair        |  100.0000 |        100 |
| Sofa         | 1200.0000 |       1200 |
| Bed          |  900.0000 |        900 |
| Jacket       |  120.0000 |        120 |
+--------------+-----------+------------+

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


select quantity, SUM(price*quantity) from sales WHERE quantity > 3 GROUP BY quantity;

+----------+---------------------+
| quantity | SUM(price*quantity) |
+----------+---------------------+
|        5 |                 790 |
|        4 |                 760 |
|        6 |                 240 |
|       20 |                  40 |
|       15 |                  45 |
|       10 |                  90 |
|       25 |                  50 |
|       12 |                  48 |
|        8 |                  48 |
+----------+---------------------+