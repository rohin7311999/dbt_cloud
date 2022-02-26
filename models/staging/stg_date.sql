{{ config(materialized='table') }}

select * from {{source('PUBLIC','DIM_DATE')}}