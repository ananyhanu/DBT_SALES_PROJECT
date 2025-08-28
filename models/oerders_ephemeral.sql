{{
    config(
        materialized='ephemeral'
    )
}}
select
    id as order_id,
    to_date(created_at) as order_date,
    CUSTOMER_ID,
total_amount as order_amount
from {{ ref('orders') }}
WHERE status = 'COMPLETED'