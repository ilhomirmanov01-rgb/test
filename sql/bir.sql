CREATE DATABASE talaba;
use talaba;
CREATE TABLE students(id int,name TEXT,second TEXT,birth DATE,score int);

INSERT INTO students VALUES(1,"ALI","valiyev","2002.05.23",90),
                        (2,"Bekzod","aliyev","2005.02.03",80),
                        (3,"VALI","Ergashev","2004.08.29",70),
                        (4,"Aziz","Azizov","2000.12.03",60),
                        (5,"Karim","valiyev","1999.09.10",100);
            


select * from students where score>=90 ORDER BY name;

+------+-------+---------+------------+-------+
| id   | name  | second  | birth      | score |
+------+-------+---------+------------+-------+
|    1 | ALI   | valiyev | 2002-05-23 |    90 |
|    5 | Karim | valiyev | 1999-09-10 |   100 |
+------+-------+---------+------------+-------+
2 rows in set (0.01 sec)

mysql> select * from students where score>=70 AND score<90 ORDER BY YEAR(birth) DESC;
+------+--------+----------+------------+-------+
| id   | name   | second   | birth      | score |
+------+--------+----------+------------+-------+
|    2 | Bekzod | aliyev   | 2005-02-03 |    80 |
|    3 | VALI   | Ergashev | 2004-08-29 |    70 |
+------+--------+----------+------------+-------+


select * from students where score<=70 ORDER BY score DESC;
+------+------+----------+------------+-------+
| id   | name | second   | birth      | score |
+------+------+----------+------------+-------+
|    3 | VALI | Ergashev | 2004-08-29 |    70 |
|    4 | Aziz | Azizov   | 2000-12-03 |    60 |
+------+------+----------+------------+-------+

______________________________________________________________________________________________________

CREATE table taomlar(id int,taom_nomi TEXT, taom_masalliqlari TEXT);

INSERT INTO taomlar VALUES (1,"palov","guruch"),
                   (2,"mastava","guruch"),
                   (3,"shashlik","go'sht"),
                   (4,"somsa","kartoshka"),
                   (5,"lavash","tovuq go'sht"),
                   (6,"manti","go'sht"),
                   (7,"sho'rva","go'sht"),
                   (8,"lag'mon","lag'mon hamiri"),
                   (9,"baliq","baliq goshti"),
                   (10,"pitsa","xamir");

 select * from taomlar;
+------+-----------+-------------------+
| id   | taom_nomi | taom_masalliqlari |
+------+-----------+-------------------+
|    1 | palov     | guruch            |
|    2 | mastava   | guruch            |
|    3 | shashlik  | go'sht            |
|    4 | somsa     | kartoshka         |
|    5 | lavash    | tovuq go'sht      |
|    6 | manti     | go'sht            |
|    7 | sho'rva   | go'sht            |
|    8 | lag'mon   | lag'mon hamiri    |
|    9 | baliq     | baliq goshti      |
|   10 | pitsa     | xamir             |
+------+-----------+-------------------+
10 rows in set (0.00 sec)

mysql> select * from taomlar WHERE taom_nomi LIKE "%a";
+------+-----------+-------------------+
| id   | taom_nomi | taom_masalliqlari |
+------+-----------+-------------------+
|    2 | mastava   | guruch            |
|    4 | somsa     | kartoshka         |
|    7 | sho'rva   | go'sht            |
|   10 | pitsa     | xamir             |
+------+-----------+-------------------+   

______________________________________________________________________________________________________

select * from students WHERE MONTH(birth) IN (1,2,12);
+------+--------+--------+------------+-------+
| id   | name   | second | birth      | score |
+------+--------+--------+------------+-------+
|    2 | Bekzod | aliyev | 2005-02-03 |    80 |
|    4 | Aziz   | Azizov | 2000-12-03 |    60 |
+------+--------+--------+------------+-------+

______________________________________________________________________________________________________


CREATE DATABASE computer;
use computer;
CREATE TABLE computers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(50) ,
    model VARCHAR(50),
    cpu VARCHAR(50),
    frequency DECIMAL(2,1),
    ram INT,
    os VARCHAR(50) ,
    price DECIMAL(10,2)
);

INSERT INTO computers (brand, model, cpu, frequency, ram, os, price) VALUES
('Apple', 'MacBook Pro', 'Apple M1', 3.2, 8, 'macOS', 1200.00),
('Apple', 'MacBook Air', 'Apple M2', 3.5, 16, 'macOS', 1450.00),
('ASUS', 'ZenBook', 'Intel Core i7', 2.8, 16, 'Windows 11', 1100.00),
('ASUS', 'ROG Strix', 'AMD Ryzen 7', 4.2, 16, 'Windows 11', 1850.00),
('ASUS', 'VivoBook', 'AMD Ryzen 5', 2.1, 8, 'Ubuntu 20.04', 520.00),
('Lenovo', 'ThinkPad X1', 'Intel Core i7', 3.9, 16, 'Windows 10', 2100.00),
('Lenovo', 'IdeaPad 3', 'AMD Ryzen 5', 2.1, 8, 'Windows 11', 550.00),
('Lenovo', 'Legion 5', 'AMD Ryzen 7', 3.8, 16, 'Windows 11', 1350.00),
('HP', 'Pavilion', 'Intel Core i5', 2.5, 8, 'Windows 10', 650.00),
('HP', 'Spectre x360', 'Intel Core i7', 4.7, 16, 'Windows 11', 1600.00),
('HP', 'Envy', 'Intel Core i5', 2.7, 8, 'Windows 11', 850.00),
('Dell', 'XPS 13', 'Intel Core i7', 3.8, 16, 'Ubuntu 20.04', 1699.00),
('Dell', 'Inspiron', 'AMD Ryzen 5', 2.3, 8, 'Windows 11', 600.00),
('Dell', 'Latitude', 'Intel Core i7', 3.0, 16, 'Windows 10', 1150.00),
('Acer', 'Aspire 5', 'Intel Core i5', 2.4, 8, 'Windows 10', 480.00),
('Acer', 'Predator', 'Intel Core i7', 4.5, 16, 'Windows 11', 1750.00),
('MSI', 'Katana', 'Intel Core i7', 4.6, 16, 'Windows 11', 1250.00),
('Apple', 'MacBook Pro', 'Intel Core i9', 2.9, 16, 'macOS', 2400.00),
('Microsoft', 'Surface Laptop', 'Intel Core i5', 2.6, 8, 'Windows 11', 999.00),
('Xiaomi', 'Mi Notebook', 'Intel Core i7', 3.4, 16, 'Windows 10', 890.00);



select * from computers order by price limit 1;
+----+-------+----------+---------------+-----------+------+------------+--------+
| id | brand | model    | cpu           | frequency | ram  | os         | price  |
+----+-------+----------+---------------+-----------+------+------------+--------+
| 15 | Acer  | Aspire 5 | Intel Core i5 |       2.4 |    8 | Windows 10 | 480.00 |
+----+-------+----------+---------------+-----------+------+------------+--------+



select * from computers order by price desc limit 1;
+----+-------+-------------+---------------+-----------+------+-------+---------+
| id | brand | model       | cpu           | frequency | ram  | os    | price   |
+----+-------+-------------+---------------+-----------+------+-------+---------+
| 18 | Apple | MacBook Pro | Intel Core i9 |       2.9 |   16 | macOS | 2400.00 |
+----+-------+-------------+---------------+-----------+------+-------+---------+


select frequency from computers where price BETWEEN 400 and 1000 and cpu LIKE "%intel%";

+-----------+
| frequency |
+-----------+
|       2.5 |
|       2.7 |
|       2.4 |
|       2.6 |
|       3.4 |
+-----------+

select count(*) from computers where brand = "Apple";

+----------+
| count(*) |
+----------+
|        3 |
+----------+


select * from computers where os LIKE "%Windows%" and ram > 8 and brand = "ASUS" order by price;

+----+-------+-----------+---------------+-----------+------+------------+---------+
| id | brand | model     | cpu           | frequency | ram  | os         | price   |
+----+-------+-----------+---------------+-----------+------+------------+---------+
|  4 | ASUS  | ROG Strix | AMD Ryzen 7   |       4.2 |   16 | Windows 11 | 1850.00 |
|  3 | ASUS  | ZenBook   | Intel Core i7 |       2.8 |   16 | Windows 11 | 1100.00 |
+----+-------+-----------+---------------+-----------+------+------------+---------+