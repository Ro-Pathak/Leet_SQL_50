# Write your MySQL query statement below
with t as (select distinct product_id from Products),
s as (select product_id, new_price as price from Products
where (product_id,change_date) in (select product_id,max(change_date)as change_date
from products where change_date<='2019-08-16' group by product_id
)
)
select t.product_id, ifnull(s.price,10) as price from t left join s on t.product_id=s.product_id
