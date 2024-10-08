# Write your MySQL query statement below
with same2015 as (select tiv_2016, count(*) over ( partition by tiv_2015) as tiv_count,
count(*) over (partition by lat,lon ) as location from Insurance
)
select round(sum(tiv_2016),2) as tiv_2016
from same2015 where tiv_count>1 and location=1;
