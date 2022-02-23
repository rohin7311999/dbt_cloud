{{ config(materialized='table') }}

select * from {{source('MYSQL_RDS_SAKILA','RENTAL')}}
where _fivetran_deleted = FALSE