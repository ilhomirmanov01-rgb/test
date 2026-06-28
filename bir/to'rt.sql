CREATE DATABASE university_db;

USE university_db;

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Phone VARCHAR(15),
    Major VARCHAR(100),
    GPA DECIMAL(3, 2) NOT NULL,
    EnrollmentYear YEAR NOT NULL
);

INSERT INTO Students (FirstName, LastName, Age, Phone, Major, GPA, EnrollmentYear) VALUES
                                            ('Ali', 'Valiyev', 20, '+998901234567', 'Kompüter muhandisligi', 3.75, 2024),
                                            ('Olim', 'Karimov', 21, '+998931112233', 'Iqtisodiyot', 3.20, 2023),
                                            ('Zilola', 'Ahmedova', 19, '+998944445566', 'Axborot xavfsizligi', 3.95, 2025),
                                            ('Madina', 'Turobova', 22, NULL, 'Xalqaro munosabatlar', 2.85, 2022),
                                            ('Sardor', 'Eshonov', 20, '+998977778899', 'Matematika', 3.40, 2024);
                                            


select * from students where age >= 20;
+-----------+-----------+----------+-----+---------------+-----------------------+------+----------------+
| StudentID | FirstName | LastName | Age | Phone         | Major                 | GPA  | EnrollmentYear |
+-----------+-----------+----------+-----+---------------+-----------------------+------+----------------+
|         1 | Ali       | Valiyev  |  20 | +998901234567 | Komp?ter muhandisligi | 3.75 |           2024 |
|         2 | Olim      | Karimov  |  21 | +998931112233 | Iqtisodiyot           | 3.20 |           2023 |
|         4 | Madina    | Turobova |  22 | NULL          | Xalqaro munosabatlar  | 2.85 |           2022 |
|         5 | Sardor    | Eshonov  |  20 | +998977778899 | Matematika            | 3.40 |           2024 |
+-----------+-----------+----------+-----+---------------+-----------------------+------+----------------+


select * from students order by GPA desc limit 2;
+-----------+-----------+----------+-----+---------------+-----------------------+------+----------------+
| StudentID | FirstName | LastName | Age | Phone         | Major                 | GPA  | EnrollmentYear |
+-----------+-----------+----------+-----+---------------+-----------------------+------+----------------+
|         3 | Zilola    | Ahmedova |  19 | +998944445566 | Axborot xavfsizligi   | 3.95 |           2025 |
|         1 | Ali       | Valiyev  |  20 | +998901234567 | Komp?ter muhandisligi | 3.75 |           2024 |
+-----------+-----------+----------+-----+---------------+-----------------------+------+----------------+

select * from students where Phone like "+99894%" or Phone like "+99893%";
+-----------+-----------+----------+-----+---------------+---------------------+------+----------------+
| StudentID | FirstName | LastName | Age | Phone         | Major               | GPA  | EnrollmentYear |
+-----------+-----------+----------+-----+---------------+---------------------+------+----------------+
|         2 | Olim      | Karimov  |  21 | +998931112233 | Iqtisodiyot         | 3.20 |           2023 |
|         3 | Zilola    | Ahmedova |  19 | +998944445566 | Axborot xavfsizligi | 3.95 |           2025 |
+-----------+-----------+----------+-----+---------------+---------------------+------+----------------+

select Major, count(StudentID) as total_students from students group by Major;
+-----------------------+----------------+
| Major                 | total_students |
+-----------------------+----------------+
| Komp?ter muhandisligi |              1 |
| Iqtisodiyot           |              1 |
| Axborot xavfsizligi   |              1 |
| Xalqaro munosabatlar  |              1 |
| Matematika            |              1 |
+-----------------------+----------------+