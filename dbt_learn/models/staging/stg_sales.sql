{{ config(materialized='table') }}
SELECT
  sale_id,
  customer_id,
  product_id,
  quantity,
  sale_date
FROM {{ ref('sales') }}
