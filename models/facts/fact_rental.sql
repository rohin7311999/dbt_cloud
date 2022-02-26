{{ config(materialized='table') }}

SELECT 
    d.DATE_KEY as rental_date_key,
    tod.TIMEOFDAY_KEY as rental_timeofday_key,
    //HOUR(r.rental_date),
    //r.rental_date,
    r.rental_id,
    c.CUSTOMER_KEY,
    sd.staff_key,
    1 as rental_quantity
FROM {{ ref('stg_rental') }} r
     JOIN {{ ref('dim_date') }} d ON to_number(to_varchar(to_date(r.rental_date),'YYYYMMDD')) = d.DATE_KEY
     JOIN {{ ref('dim_timeofday') }} tod ON HOUR(r.rental_date) = tod.HROFDAY AND MINOFDAY =0 and SECOFDAY=1
     JOIN {{ ref('dim_customer') }} c ON r.customer_id = c.customer_id
     JOIN {{ ref('dim_staff') }} sd ON r.staff_id = sd.STAFF_ID
        WHERE to_date(r.rental_date) < '2020-01-01'