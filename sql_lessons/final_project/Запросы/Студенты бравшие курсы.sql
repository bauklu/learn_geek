use registry;
-- Имена и фамилии студентов, которые чаще всего брали курсы  

SELECT count(cust_id) AS n, 
(select CONCAT(firstname, ' ', lastname) from profile 
where profile_id = registered.profile_id) as who
FROM registered 
group by who order by n desc;