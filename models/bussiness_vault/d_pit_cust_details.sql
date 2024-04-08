select 
scd.CUSTOMER_PK,
scd.first_name,
scd.last_name,
scd.email,
scd.EFFECTIVE_FROM,
vpac.as_of_date
from {{ref("v_pit_actual_customers")}} vpac 
left join {{ref("sat_customer_details")}} scd on scd.CUSTOMER_PK = vpac.sat_customer_details_pk and vpac.sat_customer_details_ldts = scd.EFFECTIVE_FROM