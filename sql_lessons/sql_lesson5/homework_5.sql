CREATE DATABASE HOMEWORK;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  birthday_at DATE,
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
);

/*Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение”*/


INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Gennadiy', '1990-10-05', '', ''),
  ('Natalia', '1984-11-12', '20.10.2017 8:10', '02.06.2020 21:18 '),
  ('Sergey', '1985-05-20', '20.10.2017 8:10', '02.06.2020 21:18'),
  ('Alexandr', '1988-02-14', '20.10.2017 8:10', '02.06.2020 21:18'),
  ('Ivan', '1998-01-12','20.10.2017 8:10', '02.06.2020 21:18'),
  ('Maria', '1992-08-29', '20.10.2017 8:10', '02.06.2020 21:18');



INSERT INTO USERS (`id`, `name`, `birthday_at`)
VALUES (NULL, 'Petr', '1982-12-10');

UPDATE `users` SET
created_at = NOW(),
updated_at = NOW()
WHERE name = 'Petr';

SELECT STR_TO_DATE(created_at,'%d.%m.%Y %H:%i') AS created_at FROM users
WHERE id = 3;

SELECT STR_TO_DATE(updated_at,'%d.%m.%Y %H:%i') AS updated_at FROM users
WHERE id = 3;

UPDATE users SET created_at = STR_TO_DATE(created_at,'%d.%m.%Y %H:%i')
WHERE id = 3;

UPDATE users SET updated_at = STR_TO_DATE(updated_at,'%d.%m.%Y %H:%i')
WHERE id in (2,3,4);


SELECT STR_TO_DATE('20.10.2017 8:10','%d.%m.%Y %H:%i');



INSERT INTO storehouses VALUES (
    NULL, 'ST1', '2020-02-14', '2020-05-25'),
   (NULL, 'ST2', '2020-01-23', '2020-04-17'),
   (NULL, 'ST3', '2019-11-05', '2020-05-12');

INSERT INTO storehouses_products VALUES (
    NULL, '1', '3', '15', '2020-02-20', NOW()),
   (NULL, '2', '5', '10', '2020-01-30', NOW()),
   (NULL, '3', '6', '17', '2019-11-08', NOW()),
   (NULL, '1', '7', '26', '2020-03-18', NOW()),
   (NULL, '2', '8', '9', '2020-04-05', NOW()),
   (NULL, '3', '14', '8', '2020-01-09', NOW()),
   (NULL, '1', '11', '23', '2020-04-18', NOW());


UPDATE storehouses_products SET `value` = 0
WHERE id = 3;
UPDATE storehouses_products SET `value` = 0
WHERE id = 6;

select id, `value`
from storehouses_products
order by case when `value` = 0 then 1 else 0 end, `value`;

/*Практическое задание по теме “Агрегация данных”

1. Подсчитайте средний возраст пользователей в таблице users*/


SELECT 
	FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday_at))/365.25) AS age
FROM users;

/************************************/
SELECT 
	AVG(FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday_at))/365.25) AS age) /* Не работает почему-то??*/
FROM users;
/************************************/

SELECT COUNT(*), ROUND((SUM(TO_DAYS(NOW()) - TO_DAYS(birthday_at))/365.25)/COUNT(*)) as average FROM users; /* Это работает*/

/*
2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.

Даже не представляю, с какого бока заходить :-(


