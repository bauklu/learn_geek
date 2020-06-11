7 урок

1.
use shop;

select id, name 
 from 
 users where 
 exists (select * from orders where user_id = users.id);

 2.
use shop;

select id, name, 
 (select name from catalogs where id = products.catalog_id) as `section`  
from products order by `section`;

3.