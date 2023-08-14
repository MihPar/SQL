CREATE TABLE cities(
name text,
altitude REAL,
population INT
)\g

CREATE TABLE capital(state char(2)) INHERITS(cities)
----------------------------------
SELECT name, altitude
FROM ONLY cities
WHERE altitude > 500;
-----------------------------------