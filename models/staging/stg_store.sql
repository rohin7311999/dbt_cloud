{{ config(materialized='table') }}

select * from {{source('MYSQL_RDS_SAKILA','STORE')}}
where _fivetran_deleted = FALSE