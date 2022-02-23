{{ config(materialized='table') }}

select * from {{source('MYSQL_RDS_SAKILA','ADDRESS')}}
where _fivetran_deleted = FALSE