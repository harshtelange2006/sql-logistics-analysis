use operation;

/*1. Which shipping mode is most late?*/
SELECT
    shipping_mode,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN late_delivery_risk = 'Yes' THEN 1 ELSE 0 END) AS late_orders,
    ROUND(100 * AVG(late_delivery_risk = 'Yes'), 1) AS late_pct
FROM orders
GROUP BY shipping_mode
ORDER BY late_pct DESC;

/*2. Which regions have the biggest delay*/
SELECT
    order_region,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN late_delivery_risk = 'Yes' THEN 1 ELSE 0 END) AS late_orders,
    ROUND(100 * AVG(late_delivery_risk = 'Yes'), 1) AS late_pct
FROM orders
GROUP BY order_region
ORDER BY late_pct DESC;

/*3. Which product categories are late most?*/
SELECT
    c.category_name,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN o.late_delivery_risk = 'Yes' THEN 1 ELSE 0 END) AS late_orders,
    ROUND(100 * AVG(late_delivery_risk = 'Yes'), 1) AS late_pct
    FROM orders o
JOIN sales s ON o.order_id = s.order_id
JOIN product p ON p.product_card_id = s.product_card_id
JOIN categories c ON c.category_id = p.product_category_id
GROUP BY c.category_name
ORDER BY late_pct DESC
limit 5;

/*4. Do late orders lose profit or get cancelled more?*/

SELECT
    CASE WHEN o.late_delivery_risk = 'Yes' THEN 'Late' ELSE 'On Time' END AS delivery_status,
    COUNT(DISTINCT o.order_id) AS total_orders,
    CONCAT('₹', ROUND(AVG(s.sales), 2)) AS average_sales,
    CONCAT('₹', ROUND(AVG(s.order_profit_per_order), 2)) AS average_profit,
    SUM(CASE WHEN o.order_status = 'CANCELED' THEN 1 ELSE 0 END) AS cancelled_orders
FROM orders o
JOIN sales s ON o.order_id = s.order_id
GROUP BY CASE WHEN o.late_delivery_risk = 'Yes' THEN 'Late' ELSE 'On Time' END;

/*5. Which markets have high volume and high delay?*/
SELECT
    market,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(CASE WHEN late_delivery_risk = 'Yes' THEN 1 ELSE 0 END) AS late_orders,
    ROUND(100 * AVG(late_delivery_risk = 'Yes'), 1) AS late_pct
FROM orders
GROUP BY market
ORDER BY late_pct DESC;




