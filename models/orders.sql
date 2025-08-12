{{
    config(
        materialized='view'
    )
}}
select * from {{ source('RAW_SRC', 'RAW_ORDERS') }}