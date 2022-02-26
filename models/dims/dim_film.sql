{{ config(materialized='table') }}

SELECT  
    {{dbt_utils.surrogate_key(['f.FILM_ID'])}} as FILM_KEY,
    f.FILM_ID,
    f.TITLE,
    f.LANGUAGE_ID,
    f.REPLACEMENT_COST,
    f.RENTAL_RATE
FROM {{ref('stg_film')}} f