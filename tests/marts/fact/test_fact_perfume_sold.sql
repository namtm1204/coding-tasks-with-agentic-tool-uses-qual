SELECT 'null_perfume_id' AS error_type, *
FROM fact_perfume_sold
WHERE perfume_id IS NULL

UNION ALL

SELECT 'null_store_id', *
FROM fact_perfume_sold
WHERE store_id IS NULL

UNION ALL

SELECT 'null_date', *
FROM fact_perfume_sold
WHERE sale_date IS NULL

UNION ALL

SELECT 'negative_quantity', *
FROM fact_perfume_sold
WHERE quantity_sold < 0

UNION ALL

SELECT 'negative_price', *
FROM fact_perfume_sold
WHERE sale_price < 0

UNION ALL

SELECT 'negative_revenue', *
FROM fact_perfume_sold
WHERE revenue < 0

UNION ALL

SELECT 'duplicate_id', perfume_sold_id, NULL, NULL, NULL, NULL, NULL
FROM fact_perfume_sold
GROUP BY perfume_sold_id
HAVING COUNT(*) > 1;