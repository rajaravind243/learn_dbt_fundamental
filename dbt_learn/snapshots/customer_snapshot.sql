{% snapshot customer_snapshot %}
{{
  config(
    unique_key='customer_id',
    strategy='timestamp',
    updated_at='signup_date'
  )
}}
SELECT * FROM {{ ref('stg_customers') }}
{% endsnapshot %}
