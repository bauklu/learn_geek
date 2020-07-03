use registry;
-- Рейтинг учебных заведений, которые ранее закончили студенты, взявшие курсы  
SELECT i.name, count(e.profile_id) AS how_many
FROM institution i 
JOIN education e
ON i.inst_id = e.inst_id 
GROUP BY name ORDER BY how_many DESC LIMIT 5;