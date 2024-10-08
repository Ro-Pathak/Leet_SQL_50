# Write your MySQL query statement below
with t as (select person_name, sum(weight)over (order by Turn) as cumul from Queue)

select person_name from t where cumul<=1000 order by cumul desc limit 1
