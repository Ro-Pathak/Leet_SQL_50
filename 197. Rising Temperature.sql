# Write your MySQL query statement below
#select id from Weather where temperature>(select temperature from Weather where recordDate=date_sub(recordDate,interval 1 day))

select b.id from Weather a join Weather b on a.recordDate=date_sub(b.recordDate,interval 1 day) where b.temperature>a.temperature
