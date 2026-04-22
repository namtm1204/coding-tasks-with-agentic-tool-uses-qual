-- 1. NULL id
SELECT *
FROM stg_store
WHERE id IS NULL;

-- 2. NULL store_name
SELECT *
FROM stg_store
WHERE store_name IS NULL;

-- 3. empty string
SELECT *
FROM stg_store
WHERE TRIM(store_name) = '';

-- 4. duplicate id (expect unique)
SELECT 
    id,
    COUNT(*)
FROM stg_store
GROUP BY id
HAVING COUNT(*) > 1;