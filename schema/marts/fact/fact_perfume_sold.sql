CREATE TABLE fact_perfume_sold AS
SELECT
    perfume_sold_id,
    perfume_id,
    perfume_title,
    perfume_type,
    perfume_price,
    store_id,
    sale_price,
    quantity_available,
    quantity_text,
    quantity_sold,
    sale_date
FROM stg_perfume_sold;