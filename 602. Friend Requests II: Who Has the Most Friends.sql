with allfriends as ( select requester_id as id,
accepter_id as friend from RequestAccepted
union
select accepter_id as id, requester_id as friend from RequestAccepted),
friendcount as (
    select id, count(distinct friend) as num
    from allfriends group by id
)
select id, num from friendcount order by num desc limit 1
