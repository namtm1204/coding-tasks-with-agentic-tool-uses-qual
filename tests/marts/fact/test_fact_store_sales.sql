SELECT 'null_store_id' AS error_type, *
FROM fact_store_sales
WHERE store_id IS NULL

UNION ALL

SELECT 'null_perfume_id', *
FROM fact_store_sales
WHERE perfume_id IS NULL

UNION ALL

SELECT 'negative_quantity', *
FROM fact_store_sales
WHERE total_quantity < 0

UNION ALL

SELECT 'negative_revenue', *
FROM fact_store_sales
WHERE total_revenue < 0

UNION ALL

SELECT 'duplicate_grain', store_id, perfume_id, NULL, NULL, NULL, NULL
FROM fact_store_sales
GROUP BY store_id, perfume_id
HAVING COUNT(*) > 1;