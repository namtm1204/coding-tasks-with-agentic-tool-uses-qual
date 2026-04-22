SELECT 'null_store_id' AS error_type, *
FROM dim_store
WHERE store_id IS NULL

UNION ALL

SELECT 'null_store_name', *
FROM dim_store
WHERE store_name IS NULL

UNION ALL

SELECT 'empty_store_name', *
FROM dim_store
WHERE TRIM(store_name) = ''

UNION ALL

SELECT 'duplicate_store_id', store_id, NULL
FROM dim_store
GROUP BY store_id
HAVING COUNT(*) > 1

UNION ALL

SELECT 'invalid_store_id', *
FROM dim_store
WHERE store_id <= 0;