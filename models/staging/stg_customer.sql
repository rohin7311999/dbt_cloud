{{ config(materialized='table') }}

select * from {{source('MYSQL_RDS_SAKILA','CUSTOMER')}}
where _fivetran_deleted = FALSE