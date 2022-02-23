{{ config(materialized='table') }}

select
    stg_rental.RENTAL_ID,
    dim_customer.CUSTOMER_KEY,
    dim_staff.STAFF_KEY,
    1 as rental_quantity
from
    {{ref('stg_rental')}}
--join back to dim_customer
--join back to dim_staff
    left join {{ref('dim_customer')}}
        on stg_rental.CUSTOMER_ID = dim_customer.CUSTOMER_ID
    left join {{ref('dim_staff')}}
        on stg_rental.STAFF_ID = dim_staff.STAFF_ID