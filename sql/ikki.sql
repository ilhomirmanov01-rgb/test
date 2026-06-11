CREATE DATABASE curse;

 create table course(CourseId int AUTO_INCREMENT PRIMARY KEY,
 Title VARCHAR(200) NOT NULL,
 Instructor VARCHAR(100) NOT NULL,
 DurationHr DECIMAL(4,1) NOT NULL,
 Price DECIMAL(8,2) DEFAULT 0,
 Rating DECIMAL(2,1) DEFAULT 0,
 Enrolleed INT DEFAULT 0);

 INSERT INTO course(Title,Instructor,DurationHr,Price,Rating,Enrolleed) VALUES("Found198","Yusuf",3,200000,9,15);
 INSERT INTO course(Title,Instructor,DurationHr,Price,Rating,Enrolleed) VALUES("Found192","Yusuf",3,250000,8,16),
                                                                               ("Found191","Aziz",3,200000,9,12),
                                                                               ("Found189","Ali",3,250000,9,14),
                                                                               ("Founf194","Yusuf",3,200000,9,10);
select * from course ORDER BY Enrolleed desc limit 3;    

+----------+----------+------------+------------+-----------+--------+-----------+
| CourseId | Title    | Instructor | DurationHr | Price     | Rating | Enrolleed |
+----------+----------+------------+------------+-----------+--------+-----------+
|        2 | Found192 | Yusuf      |        3.0 | 250000.00 |    8.0 |        16 |
|        1 | Found198 | Yusuf      |        3.0 | 200000.00 |    9.0 |        15 |
|        4 | Found189 | Ali        |        3.0 | 250000.00 |    9.0 |        14 |
+----------+----------+------------+------------+-----------+--------+-----------+

select * from course WHERE Instructor = "Yusuf";

+----------+----------+------------+------------+-----------+--------+-----------+
| CourseId | Title    | Instructor | DurationHr | Price     | Rating | Enrolleed |
+----------+----------+------------+------------+-----------+--------+-----------+
|        1 | Found198 | Yusuf      |        3.0 | 200000.00 |    9.0 |        15 |
|        2 | Found192 | Yusuf      |        3.0 | 250000.00 |    8.0 |        16 |
|        5 | Founf194 | Yusuf      |        3.0 | 200000.00 |    9.0 |        10 |
+----------+----------+------------+------------+-----------+--------+-----------+


select Instructor count(*) from course GROUP BY Instructor;
+------------+----------+
| Instructor | count(*) |
+------------+----------+
| Yusuf      |        3 |
| Aziz       |        1 |
| Ali        |        1 |
+------------+----------+

CREATE DATABASE library_db;

CREATE TABLE books(id INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(200) NOT NULL,
Author VARCHAR(100) NOT NULL,
Genre VARCHAR(50) NOT NULL,
YearPublished YEAR not NULL,
PegeCount INT NOT NULL,
price DECIMAL(6,2) DEFAULT 0,
Available BOOLEAN DEFAULT TRUE);

INSERT INTO books(Title,Author,Genre,YearPublished,PegeCount,price,Available) VALUES("O'tkan kunlar","Abdulla Qodiriy","Roman",1925,400,150,TRUE),
                                                                                    ("Yulduzli tunlar","Primqul Qodirov","Roman", 2018,550,250,TRUE),
                                                                                    ("Dunyoning ishlari","Ot'kir Hoshimov","Qissa",1982,320,120,TRUE),
                                                                                    ("Hamsa","Alisher Navoiy","Doston",2016,800,500,TRUE),
                                                                                    ("Ma'naviyat asoslari","Alisher Sadullayev","Darslik",2021,210,95,TRUE),
                                                                                    ("Python dasturlash","Ali Valiyev","Darslik",2023,620,350,TRUE),
                                                                                    ("Kichik shahzoda","Atuan de Sent-Ekzyuperi","Ertak",2017,110,80,TRUE);

select * from books WHERE YearPublished > 2015; 

+----+---------------------+-------------------------+---------+---------------+-----------+--------+-----------+
| id | Title               | Author                  | Genre   | YearPublished | PegeCount | price  | Available |
+----+---------------------+-------------------------+---------+---------------+-----------+--------+-----------+
|  2 | Yulduzli tunlar     | Primqul Qodirov         | Roman   |          2018 |       550 | 250.00 |         1 |
|  4 | Hamsa               | Alisher Navoiy          | Doston  |          2016 |       800 | 500.00 |         1 |
|  5 | Ma'naviyat asoslari | Alisher Sadullayev      | Darslik |          2021 |       210 |  95.00 |         1 |
|  6 | Python dasturlash   | Ali Valiyev             | Darslik |          2023 |       620 | 350.00 |         1 |
|  7 | Kichik shahzoda     | Atuan de Sent-Ekzyuperi | Ertak   |          2017 |       110 |  80.00 |         1 |
+----+---------------------+-------------------------+---------+---------------+-----------+--------+-----------+

select * from books ORDER BY PegeCount desc limit 3;

+----+-------------------+-----------------+---------+---------------+-----------+--------+-----------+
| id | Title             | Author          | Genre   | YearPublished | PegeCount | price  | Available |
+----+-------------------+-----------------+---------+---------------+-----------+--------+-----------+
|  4 | Hamsa             | Alisher Navoiy  | Doston  |          2016 |       800 | 500.00 |         1 |
|  6 | Python dasturlash | Ali Valiyev     | Darslik |          2023 |       620 | 350.00 |         1 |
|  2 | Yulduzli tunlar   | Primqul Qodirov | Roman   |          2018 |       550 | 250.00 |         1 |
+----+-------------------+-----------------+---------+---------------+-----------+--------+-----------+


select * from books WHERE Author LIKE "%Ali%";

+----+---------------------+--------------------+---------+---------------+-----------+--------+-----------+
| id | Title               | Author             | Genre   | YearPublished | PegeCount | price  | Available |
+----+---------------------+--------------------+---------+---------------+-----------+--------+-----------+
|  4 | Hamsa               | Alisher Navoiy     | Doston  |          2016 |       800 | 500.00 |         1 |
|  5 | Ma'naviyat asoslari | Alisher Sadullayev | Darslik |          2021 |       210 |  95.00 |         1 |
|  6 | Python dasturlash   | Ali Valiyev        | Darslik |          2023 |       620 | 350.00 |         1 |
+----+---------------------+--------------------+---------+---------------+-----------+--------+-----------+

select Genre, count(*) from books GROUP BY Genre;
+---------+----------+
| Genre   | count(*) |
+---------+----------+
| Roman   |        2 |
| Qissa   |        1 |
| Doston  |        1 |
| Darslik |        2 |
| Ertak   |        1 |
+---------+----------+