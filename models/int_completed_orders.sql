select
    id as order_id,
    to_date(created_at) as order_date,
    CUSTOMER_ID,
total_amount as order_amount
from DBT_PROJECT_DB.DBT_AVAISHNAV.ORDERS
WHERE status = 'COMPLETED'