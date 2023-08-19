SELECT num + 1 AS missing_number
FROM data
WHERE num + 1 NOT IN (
  SELECT num FROM data
)
LIMIT 1;

---- Substitute with your SQL
-- SELECT (n1.num + 1) AS missing_number
-- FROM  data n1
-- LEFT JOIN data n2 ON n1.num + 1 = n2.num
-- WHERE n2.num IS NULL limit 1