CREATE TABLE fact_store_sales AS
SELECT
    s.store_id,
    ds.store_name,
    s.perfume_id,
    dp.perfume_name,
    SUM(s.quantity_sold) AS total_quantity,
    SUM(s.quantity_sold * s.perfume_price) AS total_revenue

FROM fact_perfume_sold s
JOIN dim_store ds ON s.store_id = ds.store_id
JOIN dim_perfume dp ON s.perfume_id = dp.perfume_id

GROUP BY
    s.store_id,
    s.perfume_id,
    ds.store_name,
    dp.perfume_name