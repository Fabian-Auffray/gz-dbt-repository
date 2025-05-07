SELECT
  orders_id,
  date_date,
  SUM(revenue) as revenue,
  SUM(quantity) as quantity,
  ROUND(SUM(purchase_cost),2) as purchase_cost,
  ROUND(SUM(margin),2) AS margin,
FROM `key-line-456920-i5.dbt_fauffray.int_sales_margin`
GROUP by orders_id, date_date
ORDER by orders_id


