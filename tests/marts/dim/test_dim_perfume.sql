-- 1. NULL key 
SELECT *
FROM dim_perfume
WHERE perfume_id IS NULL;

-- 2. NULL name
SELECT *
FROM dim_perfume
WHERE perfume_name IS NULL;

-- 3. empty string
SELECT *
FROM dim_perfume
WHERE TRIM(perfume_name) = '';

-- 4. duplicate key
SELECT
    perfume_id,
    COUNT(*)
FROM dim_perfume
GROUP BY perfume_id
HAVING COUNT(*) > 1;

-- 5. id
SELECT *
FROM dim_perfume
WHERE perfume_id <= 0;