select
    date_date,
    count(orders_id) as transaction_amounts,
    round(sum(revenue), 0) as revenue,
    round(avg(revenue), 1) as avg_basket,
    ROUND(SUM(margin),0) AS margin,
    round(sum(operational_margin), 0) as operational_margin,
    round(sum(purchase_cost), 0) as purchase_cost,
    round(sum(shipping_fee), 0) as shipping_fee,
    round(sum(logcost), 0) as logcost,
    round(sum(ship_cost), 0) as ship_cost,
    sum(quantity) as quantity

from {{ ref("int_orders_operational") }}
 GROUP BY  date_date
 ORDER BY  date_date DESC