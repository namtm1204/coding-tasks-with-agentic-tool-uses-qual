CREATE TABLE dim_perfume AS
SELECT DISTINCT
    perfume_id,
    perfume_name
FROM stg_perfume;