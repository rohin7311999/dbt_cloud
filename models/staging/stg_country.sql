{{ config(materialized='table') }}

select * from {{source('MYSQL_RDS_SAKILA','COUNTRY')}}
where _fivetran_deleted = FALSE