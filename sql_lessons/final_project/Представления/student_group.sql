use registry;

create or replace view student_groups as
select CONCAT(firstname, ' ', lastname) as student, g.name as group_name from profile
join
study_group g
on profile.profile_id =  g.profile_id 
order by group_name;

select * from student_groups 
where group_name = 'B';