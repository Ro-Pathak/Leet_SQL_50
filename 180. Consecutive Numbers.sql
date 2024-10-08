with t as (select num, lead(num,1) over(order by id) as prev, lag(num,1) over(order by id) as next from Logs)
select distinct num as ConsecutiveNums from t where num=prev and num=next
