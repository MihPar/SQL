-- Выполнение транзакции
START TRANSACTION 
UPDATE accounts SET balanc = balanc - 1500
WHERE account_number = 1234567

UPDATE accounts SET balanc = balanc + 1500
WHERE account_number = 9876543

COMMIT -- ROLLBACK
---------------------------------
-- Создание индексов
CREATE INDEX superheroes_name_idx
ON superheroes(name DESC)
---------------------------------
CREATE INDEX persone_name_idx
ON persone(last_name, first_name) 
-- Удалени индекса
DROP INDEX persome_name_idx