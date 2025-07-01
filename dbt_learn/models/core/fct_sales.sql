{{ config(materialized='table') }}
SELECT
  s.sale_id,
  s.customer_id,
  s.product_id,
  s.quantity,
  s.quantity * p.price AS total_amount,
  s.sale_date
FROM {{ ref('stg_sales') }} AS s
JOIN {{ ref('dim_products') }} AS p
  USING (product_id)
