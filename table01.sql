CREATE TABLE superheroes(
    id INT PRIMARE KEY,
    name VARCHAR(100),
    align VARCHAR(30),
    eye VARCHAR(30),
    hair VARCHAR(30),
    gender VARCHAR(30),
    appearance INT,
    year INT,
    univers VARCHAR(30)
)

DROP TABLE superheroes

-- Создаем таблицу супергероев
DROP TABLE IF EXISTS superheroes
CREATA TABLE  superheroes(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    align VARCHAR(30),
    eye VARCHAR(30),
    hair VARCHAR(30),
    gender VARCHAR(30),
    appearance INT,
    year INT,
    univers VARCHAR(30)
)