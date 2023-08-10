--  Обьединение данных из нескольких табиц
SELECT products.name, product_types.type_name
FROM products JOIN product_types
ON products.type_id = product_type.id

-- Псевдонимы таблиц
SELECT p.name, t.type_name
FROM products AS p JOIN prduct_types AS t
ON p.type_id = t.id

-- Фильтрация данных из нескольких таблиц
SELECT p.name AS product_name
    t.type_name AS product_type
    p.price AS product_price
FROM products AS p JOIN product_types AS t
ON p.type_id = t.id
WHERE t.type_name = "Онлайн курс"
---------------------------------------------
SELECT p.name AS product_name
    t.type_name AS product_type
    p.price AS product_price
FROM products AS p JOIN product_types AS t
ON p.type_id = t.id
WHERE t.type_name = "Вибинар"
AND p.price = 0
---------------------------------------------
SELECT p.name AS product_name
    t.type_name AS product_type
    p.price AS product_price
FROM products AS p JOIN product_types AS t
ON p.type_id = t.id
WHERE t.type_name = "Онлайн курс"
ORDER BY p.price DESC
---------------------------------------------
SELECT products.name, product_types.type_name
FROM products INNER JOIN product_types
ON products.type_id = product_type.id
---------------------------------------------
SELECT products.name, product_types.type_name
FROM products LEFT OUTER JOIN product_types
ON products.type_id = product_type.id
---------------------------------------------
SELECT products.name, product_types.type_name
FROM products RIGHT OUTER JOIN product_types
ON products.type_id = product_type.id
---------------------------------------------
SELECT products.name, product_types.type_name
FROM products FULL OUTER JOIN product_types
ON products.type_id = product_type.id
---------------------------------------------
SELECT products.name, product_types.type_name
FROM products CROSS OUTER JOIN product_types
ON products.type_id = product_type.id