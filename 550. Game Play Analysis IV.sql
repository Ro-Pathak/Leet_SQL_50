# Write your MySQL query statement below
with firstlogin as (select player_id, min(event_date) as first_login_date from Activity group by player_id),
 consecutivelogins as (select distinct a.player_id from Activity a Join firstlogin f
on a.player_id=f.player_id where datediff(a.event_date,f.first_login_date)=1)

select round(count(distinct c.player_id)/count(distinct f.player_id),2) as fraction
from Activity f left join consecutivelogins c on f.player_id=c.player_id
