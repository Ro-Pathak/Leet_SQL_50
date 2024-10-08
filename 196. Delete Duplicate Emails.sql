# Write your MySQL query statement below
delete p from Person a join Person p on a.email=p.email where a.id<p.id
