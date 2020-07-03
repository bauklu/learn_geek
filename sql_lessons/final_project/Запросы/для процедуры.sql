use registry;
-- сколько студентов зарегистрировал каждый работник учебной части (user)
--параметр будет месяц
select u.name as name, p.profile_id as profiles, r.created_at   
	from users u 
join 
	profile p 
on u.user_id = p.user_id 
join
	registered r
where 
 r.created_at BETWEEN '2020-03-01' AND '2020-03-31' 