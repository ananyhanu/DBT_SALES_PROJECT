SELECT
    c.id,
    SUM(e.order_amount) AS lifetime_value,
    COUNT(e.order_id) AS total_orders
FROM {{ ref('customers') }} c
JOIN {{ ref('oerders_ephemeral') }} e 
    ON c.id = e.customer_id
GROUP BY c.id