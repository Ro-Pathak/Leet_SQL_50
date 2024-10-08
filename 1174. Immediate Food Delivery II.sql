with t as (
    select *, rank() over ( partition by customer_id order by order_date) as rnk from Delivery
)
select round(avg(customer_pref_delivery_date=order_date)*100,2) as immediate_percentage from t where rnk=1
