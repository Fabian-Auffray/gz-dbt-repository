SELECT 
  orders_id,
  date_date,
  ROUND(SUM(margin+o.shipping_fee)-logcost-ship_cost) as operational_margin 
  quantity,
  shipping_fee,
  ship_cost,
  revenue,
  log_cost,
  FROM {{ ref('int_sales_margin') }} as s 
  INNER JOIN {{ ref('int_orders_margin') }} as o 
  USING (orders_id)
  GROUP BY orders_id
