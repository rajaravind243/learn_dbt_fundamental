SELECT
  date_trunc('month', sale_date) AS month,
  sum(total_amount)       AS monthly_sales
FROM {{ ref('fct_sales') }}
GROUP BY 1
ORDER BY 1;
