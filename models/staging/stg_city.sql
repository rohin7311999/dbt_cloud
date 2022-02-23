{{ config(materialized='table') }}

select * from {{source('MYSQL_RDS_SAKILA','CITY')}}
where _fivetran_deleted = FALSE