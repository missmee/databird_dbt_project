select CONCAT(order_id, '_', product_id) AS order_item_id_x,
 order_id,
 product_id,
 1 AS column_1_x,
 seller_id,
 DATETIME(pickup_limit_date, "Europe/Paris") AS picked_up_limited_at_x,
 price AS unit_price_x,
 shipping_cost,
 quantity AS item_quantity_x,
 (price * quantity) + shipping_cost AS total_order_item_amount_x
from {{ source('sales_database', 'order_item') }}
