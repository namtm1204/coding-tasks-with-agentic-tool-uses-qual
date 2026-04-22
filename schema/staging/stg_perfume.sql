CREATE TABLE stg_perfume AS
SELECT 
    id AS id,
    brandid AS perfume_id,
    brand AS perfume_name
FROM perfume_master;