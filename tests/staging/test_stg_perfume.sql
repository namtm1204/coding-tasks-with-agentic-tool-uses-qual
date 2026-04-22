-- 1. NULL perfume_id
SELECT *
FROM stg_perfume
WHERE perfume_id IS NULL;

-- 2. NULL brand_id
SELECT *
FROM stg_perfume
WHERE brand_id IS NULL;

-- 3. NULL perfume_name
SELECT *
FROM stg_perfume
WHERE perfume_name IS NULL;

-- 4. empty name
SELECT *
FROM stg_perfume
WHERE TRIM(perfume_name) = '';

-- 5. duplicate perfume_id
SELECT
    perfume_id,
    COUNT(*)
FROM stg_perfume
GROUP BY perfume_id
HAVING COUNT(*) > 1;

-- 6. id
SELECT *
FROM stg_perfume
WHERE perfume_id <= 0;