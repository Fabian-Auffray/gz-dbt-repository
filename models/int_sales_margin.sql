SELECT 
  date_date,
  orders_id,
  products_id,
  revenue,
  quantity,
  p.purchase_price,
  ROUND((quantity*p.purchase_price),2) AS purchase_cost,
  ROUND((revenue-(quantity*p.purchase_price)),2) AS margin
FROM {{ ref('stg_raw__sales') }} as s 
 INNER JOIN {{ ref('stg_raw__product') }} as p
    USING (products_id)