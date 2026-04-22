CREATE TABLE dim_store AS
SELECT DISTINCT
    store_id,
    store_name
FROM stg_store;