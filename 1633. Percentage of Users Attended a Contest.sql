# Write your MySQL query statement below
select contest_id, round(count(r.user_id)/(select count(distinct user_id) from Users)*100,2) as percentage from Register r group by contest_id order by percentage desc, contest_id
