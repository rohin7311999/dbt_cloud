{{ config(materialized='table') }}

select * from {{source('MYSQL_RDS_SAKILA','STAFF')}}
where _fivetran_deleted = FALSE