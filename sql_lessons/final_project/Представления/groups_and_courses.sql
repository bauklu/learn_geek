use registry;

create or replace view groups_and_courses as
select distinct sg.name as `group`, sc.name as courses 
from study_group sg 
join 
study_course sc 
on sg.group_id = sc.study_id;

select * from groups_and_courses;