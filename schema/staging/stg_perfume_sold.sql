CREATE TABLE stg_perfume_sold AS
SELECT 
    id AS perfume_sold_id,
    brandid AS perfume_id,
    title AS perfume_title,
    typel AS perfume_type,
    CAST(price AS NUMERIC) AS perfume_price,
    storeid AS store_id,
    CAST(priceindollars AS NUMERIC) AS sale_price,
    available AS quantity_available,
    availableText AS quantity_text,
    CAST(sold AS NUMERIC) AS quantity_sold,
    lastUpdated AS sale_date,
    itemLocation AS item_location
FROM ebay_mens_perfume;