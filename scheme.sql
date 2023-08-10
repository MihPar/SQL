-- Схемы базы данных
-- Продукты в заказе
SELECT p.id,
        p.name,
        p.price,
        s.quantituy,
        p.price * s.quantity AS total
FROM products AS p JOIN sales AS s
    ON p.id = s.product.id
WHERE s.order.id = 2
----------------------------------------
SELECT p.id,
        p.name,
        p.price,
        s.quantituy,
        p.price * s.quantity AS total
FROM products AS p JOIN sales AS s
    ON p.id = s.product.id
    JOIN order AS O 
    ON o.id = s.order_id
WHERE o.costumer_id = 1
-----------------------------------------
