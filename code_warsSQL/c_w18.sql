SELECT num + 1 AS missing_number
FROM data
WHERE num + 1 NOT IN (
  SELECT num FROM data
)
LIMIT 1;