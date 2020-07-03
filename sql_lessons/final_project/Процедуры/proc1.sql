use registry;
--кто из работников учебной части зарегистрировал студента с определенным идентификатором
delimiter //
drop procedure if exists proc1 //
create procedure proc1 (in prof_id INT, out name varchar (25))
	begin 
		select u.name as name, p.profile_id as profiles    
			from users u 
		join  profile p 
		on u.user_id = p.user_id
		where p.profile_id = prof_id;
	end//

SET @prof_id = 20;

call proc1(@prof_id, @name);