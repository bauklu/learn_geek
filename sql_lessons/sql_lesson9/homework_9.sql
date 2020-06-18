1. 

use homework;
start transaction;

insert INTO users (name, birthday_at,created_at, updated_at)
	
select name, birthday_at,created_at, updated_at 
 	
from shop.users where id = 1;


delete from shop.users where id =1;

commit;

2.

use shop;
create or replace view cat (product_name, catalog_name) 
as (select p.name, c.name from products p join catalogs c on p.catalog_id = c.id);
select * from cat;
_________________________________________________________________________________

Хранимые процедуры и функции, триггеры"


1. 

DROP FUNCTION IF EXISTS hello;
delimiter //

create function hello()
returns varchar(25) not deterministic
begin
	declare t varchar (25);
set t = '7';
	return ('Доброе утро');
end//


select hello()//