select CONCAT(order_id, '_', product_id) AS order_item_id_y,
 order_id,
 product_id,
 1 AS column_1_y,
 seller_id,
 DATETIME(pickup_limit_date, "Europe/Paris") AS picked_up_limited_at_y,
 price AS unit_price_y,
 shipping_cost,
<<<<<<< HEAD
 --quantity as item_quantity,
 (price * quantity) + shipping_cost as total_order_item_amount
=======
 quantity AS item_quantity_y,
 (price * quantity) + shipping_cost AS total_order_item_amount_y
>>>>>>> 337a710332a74ad395ab4374bdad6ac65d0228d0
from {{ source('sales_database', 'order_item') }}
