{{ config(materialized='table') }}
SELECT
  customer_id,
  CONCAT(first_name, ' ', last_name) AS full_name,
  signup_date,
  email
FROM {{ ref('stg_customers') }}
