CREATE DATABASE transport_routes_db;

use transport_routes_db;

CREATE TABLE routes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    route_number VARCHAR(10) NOT NULL,
    start_point VARCHAR(50) NOT NULL,
    end_point VARCHAR(50) NOT NULL,
    duration_min INT NOT NULL,
    distance_km DECIMAL(5,1) NOT NULL,
    ticket_price DECIMAL(5,2) NOT NULL,
    bus_type VARCHAR(20) NOT NULL
);

INSERT INTO routes (route_number, start_point, end_point, duration_min, distance_km, ticket_price, bus_type) VALUES
                                        ('12', 'Chorsu', 'Yunusobod', 45, 12.5, 18.00, 'Shahar'),
                                        ('21A', 'Beruniy', 'TTZ', 60, 18.2, 18.00, 'Shahar'),
                                        ('75', 'Sergeli', 'Oloy bozori', 50, 15.0, 18.00, 'Shahar'),
                                        ('E-1', 'Aeroport', 'Vokzal', 25, 8.5, 25.00, 'Elektr'),
                                        ('T-10', 'Toshkent', 'Samarqand', 240, 310.0, 99.99, 'Tezyurar'),
                                        ('55', 'Qoraqamish', 'Chilonzor', 40, 14.1, 18.00, 'Shahar'),
                                        ('E-2', 'Do''stlik', 'Qo''yliq', 30, 11.2, 25.00, 'Elektr'),
                                        ('T-12', 'Toshkent', 'Buxoro', 360, 440.5, 99.99, 'Tezyurar'),
                                        ('91', 'Mingo''rik', 'Gidromet', 20, 6.8, 18.00, 'Shahar'),
                                        ('E-3', 'Paxtakor', 'Chilonzor', 15, 5.0, 25.00, 'Elektr'),
                                        ('101', 'Qo''yliq', 'Chorsu', 55, 16.7, 18.00, 'Shahar');

select route_number,start_point,end_point,ticket_price from routes order by ticket_price;
+--------------+-------------+-------------+--------------+
| route_number | start_point | end_point   | ticket_price |
+--------------+-------------+-------------+--------------+
| 12           | Chorsu      | Yunusobod   |        18.00 |
| 21A          | Beruniy     | TTZ         |        18.00 |
| 75           | Sergeli     | Oloy bozori |        18.00 |
| 55           | Qoraqamish  | Chilonzor   |        18.00 |
| 91           | Mingo'rik   | Gidromet    |        18.00 |
| 101          | Qo'yliq     | Chorsu      |        18.00 |
| E-1          | Aeroport    | Vokzal      |        25.00 |
| E-2          | Do'stlik    | Qo'yliq     |        25.00 |
| E-3          | Paxtakor    | Chilonzor   |        25.00 |
| T-10         | Toshkent    | Samarqand   |        99.99 |
| T-12         | Toshkent    | Buxoro      |        99.99 |
+--------------+-------------+-------------+--------------+

select * from routes order by distance_km desc limit 3;
+----+--------------+-------------+-----------+--------------+-------------+--------------+----------+
| id | route_number | start_point | end_point | duration_min | distance_km | ticket_price | bus_type |
+----+--------------+-------------+-----------+--------------+-------------+--------------+----------+
|  8 | T-12         | Toshkent    | Buxoro    |          360 |       440.5 |        99.99 | Tezyurar |
|  5 | T-10         | Toshkent    | Samarqand |          240 |       310.0 |        99.99 | Tezyurar |
|  2 | 21A          | Beruniy     | TTZ       |           60 |        18.2 |        18.00 | Shahar   |
+----+--------------+-------------+-----------+--------------+-------------+--------------+----------+

select * from routes where bus_type like "shahar" and duration_min > 30;
+----+--------------+-------------+-------------+--------------+-------------+--------------+----------+
| id | route_number | start_point | end_point   | duration_min | distance_km | ticket_price | bus_type |
+----+--------------+-------------+-------------+--------------+-------------+--------------+----------+
|  1 | 12           | Chorsu      | Yunusobod   |           45 |        12.5 |        18.00 | Shahar   |
|  2 | 21A          | Beruniy     | TTZ         |           60 |        18.2 |        18.00 | Shahar   |
|  3 | 75           | Sergeli     | Oloy bozori |           50 |        15.0 |        18.00 | Shahar   |
|  6 | 55           | Qoraqamish  | Chilonzor   |           40 |        14.1 |        18.00 | Shahar   |
| 11 | 101          | Qo'yliq     | Chorsu      |           55 |        16.7 |        18.00 | Shahar   |
+----+--------------+-------------+-------------+--------------+-------------+--------------+----------+

select bus_type, avg(ticket_price) as avg from routes group by bus_type;
+----------+-----------+
| bus_type | avg       |
+----------+-----------+
| Shahar   | 18.000000 |
| Elektr   | 25.000000 |
| Tezyurar | 99.990000 |
+----------+-----------+
