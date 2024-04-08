with od  as (
    select
    ho.ORDER_PK as ORDER_PK,
    date_trunc('week',sod.order_date) order_week,
    sod.status
    from {{ref("hub_order")}} ho
    left join {{ref("sat_order_details")}} sod on ho.ORDER_PK = sod.ORDER_PK
)

select order_week,status,count(order_pk) from od 
group by 1,2