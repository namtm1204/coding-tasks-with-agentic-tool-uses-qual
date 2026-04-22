SELECT 'null_id' AS error_type, *
FROM stg_perfume_sold
WHERE perfume_sold_id IS NULL

UNION ALL

SELECT 'null_perfume_id', *
FROM stg_perfume_sold
WHERE perfume_id IS NULL

UNION ALL

SELECT 'null_store_id', *
FROM stg_perfume_sold
WHERE store_id IS NULL

UNION ALL

SELECT 'negative_price', *
FROM stg_perfume_sold
WHERE sale_price < 0 OR list_price < 0

UNION ALL

SELECT 'negative_quantity', *
FROM stg_perfume_sold
WHERE quantity_sold < 0 OR quantity_available < 0

UNION ALL

SELECT 'null_date', *
FROM stg_perfume_sold
WHERE sale_date IS NULL

UNION ALL

SELECT 'duplicate_id', perfume_sold_id, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
FROM stg_perfume_sold
GROUP BY perfume_sold_id
HAVING COUNT(*) > 1;