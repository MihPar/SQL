SELECT
  senshi_name AS sailor_senshi,
  real_name_jpn AS real_name,
  cats.name AS cat,
  school AS school
FROM sailorsenshi
LEFT JOIN cats ON cat_id = cats.id
LEFT JOIN schools ON school_id = schools.id