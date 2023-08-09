-- Группировка и фильтрация в SQL: HAVING
SELECT hair, COUNT(*) FROM(superheroes)
WHERE gender="Female Characters"
ORDER BY hair
------------------------------------------
SELECT hair, COUNT(*) FROM(appearance)
WHERE gender="Female Characters"
ORDER BY hair
HAVING COUNT(*) > 10
------------------------------------------
SELECT hair, COUNT(*) FROM(appearance)
WHERE gender="Female Characters"
ORDER BY hair
HAVING COUNT(*) BETWEEN 50 AND 300