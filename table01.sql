-- Создаем таблицу супергероев
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
-------------------------------------------------------------
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

-- Вставка данных в таблицу
INSERT INTO superheroes(name, appearance, univers)
VALUE("Spader_man", 4034, "marvel")

-- Изменение данных в таблице
UPDATE superheroes
SET name="Batman",
    univers="dc"
WHERE id = 1
-------------------------------------------------------------
UPDATE superheroes
SET gender = "Man"
WHERE gender = "Male Characters"

-- Удаление данных из таблицы
DELETE FROM superheroes
WHERE id = 2
-------------------------------------------------------------
DELETE FROM superheroes
WHERE gender = 'Male Characters'
-------------------------------------------------------------
DELETE FROM superheroes