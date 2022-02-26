{{ config(materialized='table') }}

select * from {{source('MYSQL_RDS_SAKILA','FILM')}}
where _fivetran_deleted = FALSE