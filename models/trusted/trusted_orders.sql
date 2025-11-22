{{ config(
    schema='trusted',
    materialized='table'
) }}

select
  order_id,
  customer_id,
  order_date,
  cast(order_value as float64) as order_value
from `raw.orders`
