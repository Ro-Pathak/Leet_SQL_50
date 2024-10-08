# Write your MySQL query statement below
with user_cte as (select u.name as results, count(m.user_id) as totalrating from Users u join MovieRating m on u.user_id=m.user_id group by u.name order by totalrating desc, name limit 1),
rating_cte as (select mov.title as results, avg(rat.rating) as avgrating from Movies mov join MovieRating rat on mov.movie_id=rat.movie_id where rat.created_at between '2020-02-01' and '2020-02-29' group by mov.title order by avgrating desc, title limit 1) 
select results from user_cte union all select results from rating_cte
