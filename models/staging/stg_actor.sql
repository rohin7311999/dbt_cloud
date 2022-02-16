
{{ config(materialized='table') }}

select * from {{source('MYSQL_RDS_SAKILA','ACTOR')}}
where _fivetran_deleted = FALSE

