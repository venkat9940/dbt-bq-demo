select count(*) as number_today from {{ref("stg_orders")}}
where date(Order_Date) = current_date()
having count(*)>0