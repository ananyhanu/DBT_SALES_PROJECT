{{
    config(
        materialized='table'
    )
}}

select * from {{source('conn_src', 'DV_CONNECTIONS') }}

