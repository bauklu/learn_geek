
1. Пусть задан некоторый пользователь. 
Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем

use vkdb;
select from_user_id, count(*) as n from messages -- от кого приходили сообщения пользователю 1
where 
(from_user_id in
(select initiator_user_id from friend_requests    -- это должны быть друзья
where (target_user_id = 1) and status = 'approved'
union
select target_user_id from friend_requests
where (initiator_user_id = 1) and status = 'approved'))
 group by from_user_id order by n desc limit 1;  -- от кого пришло больше всех сообщений
_____________________________________________________________
2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей


-Как объединить две таблицы, если одна промежуточная (в которой вычисляется age)?-

use vkdb;
select user_id, TIMESTAMPDIFF(year, birthday, NOW()) as age --получили 10 самых молодых пользователей
from profiles order by age limit 10;

select count(*) from likes where
user_id in (84,78,45,94,57,17,93,7,85,63); --посчитали сколько они получили лайков (13)

select user_id from likes where -- user_id здесь совсем другие, чем в перыом запросе
user_id in (select user_id from profiles where user_id in 
(select TIMESTAMPDIFF(year, birthday, NOW()) as age from profiles 
 order by age)) limit 10;  -- лимит ничем не помогает, а вставить после age невозможно

select count(*) from likes where
user_id in (select user_id from profiles where user_id in 
(select TIMESTAMPDIFF(year, birthday, NOW()) as age from profiles 
 order by age)) limit 10;

_________________________________________________________________
3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

use vk_db
select 'female', count(*) as n from likes where 
from_us_id in (select id from users  where id in (
	select user_id from profiles where gender = 'f'))
	
union 

select 'male',count(*) as n from likes where 
from_us_id in (select id from users  where id in (
	select user_id from profiles where gender = 'm'));


4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

use vk_db;

select  
from_us_id, count(from_us_id) as N 
from likes group by from_us_id order by N; -- сколько лайков поставили пользователт (активность в лайках)
	
SELECT 
	from_user_id, COUNT(from_user_id) as N1 
FROM messages group by from_user_id order by N1 ; -- сколько сообщений отправили пользователт (активность в сообщениях)

select user_id, count(user_id) as N2 from media 
where media_type_id = 4 
group by user_id order by N2; -- сколько постов имееют пользователи 

А как дальше считать активность???