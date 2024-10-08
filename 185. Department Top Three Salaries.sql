# Write your MySQL query statement below
with t as (select departmentId, name as Employee, salary as Salary, dense_rank() over (partition by departmentId order by salary desc) as rk from Employee)select d.name as Department, t.Employee, t.Salary from t join Department d on t.departmentId=d.id where rk<=3 

