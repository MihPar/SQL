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
VALUES("Spader_man", 4034, "marvel")

-- Изменение данных в таблице
UPDATE superheroes
SET name="Batman",
    univers="dc"
WHERE id = 1
-------------------------------------------------------------
UPDATE superheroes
SET gender = "Man"
WHERE gender = "Male Characters"
---------------------------------------
1. Создание таблицы:

```sql
CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT
);
```

2. Вставка данных в таблицу:

```sql
INSERT INTO users (id, name, age)
VALUES (1, 'John', 25), (2, 'Jane', 30), (3, 'Bob', 35);
```

3. Выбор всех записей из таблицы:

```sql
SELECT * FROM users;
```

4. Выбор определенных полей и условий:

```sql
SELECT name, age FROM users 
WHERE age > 25;
```

5. Обновление данных в таблице:

```sql
UPDATE users 
SET age = 40 
WHERE id = 1;
```

6. Удаление данных из таблицы:

```sql
DELETE FROM users 
WHERE id = 2;
```


-- Удаление данных из таблицы
DELETE FROM superheroes
WHERE id = 2
-------------------------------------------------------------
DELETE FROM superheroes
WHERE gender = 'Male Characters'
-------------------------------------------------------------
DELETE FROM superheroes
-------------------------
DROP TABLE superheroes
---------------------
COPY superheroes FROM '/home/user/superheroes'
