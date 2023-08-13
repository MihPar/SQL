-- Агрегативные функции, группировка данных в SQL
SELECT align, COUNT(*), FROM superheroes
GROUP BY align
-------------------------------------------------------------
SELECT align, COUNT(*), SUM(appearance)
FROM superheroes
GROUP BY align

-- Выражения с агрегативными функциями
SELECT align, AVG(appearance),
    SUM(appearance)/COUNT(*) AS average
FROM superheroes
GROUP BY align
-------------------------------------------------------------
SELECT year, MIN(appearance), MAX(appearance)
FROM superheroes
GROUP BY year
-------------------------------------------------------------
SELECT year, MIN(appearance), MAX(appearance)
FROM superheroes
GROUP BY year
ORDER BY year
-------------------------------------------------------------
SELECT year, MIN(appearance), MAX(appearance)
FROM superheroes
GROUP BY year
ORDER BY MAX(appearance) DESC
-------------------------------------------------------------
SELECT year, MIN(appearance), 
    MAX(appearance) AS max_ap
FROM superheroes
GROUP BY year
ORDER BY max_ap DESC
-------------------------------------------------------------
SELECT year, MIN(appearance), 
    MAX(appearance) AS max_ap
FROM superheroes
GROUP BY year
ORDER BY max_ap DESC
LIMIT 5

-- Агрегативные фугкции без группировки
SELECT COUNT(*),
    MIN(appearance),
    MAX(appearance),
    AVG(appearance),
    SUM(appearance)
FROM superheroes
-----------------------
SELECT city FROM weather 
WHERE temp_lo = (SELECT max(temp_lo) FROM  weather)
-----------------------
