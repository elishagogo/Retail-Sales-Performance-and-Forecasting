-- =====================================================================
-- SUPERSTORE TRANSACTIONAL DATA ANALYSIS
-- Purpose: Evaluate regional performance metrics, AOV, and volumes.
-- =====================================================================

-- 1. Regional Performance & Average Order Value Breakdown
SELECT 
    region,
    ROUND(SUM(sales)::NUMERIC, 2) AS total_revenue,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(sales)::NUMERIC, 2) AS average_order_value,
    ROUND((SUM(sales) / 2260000.0 * 100)::NUMERIC, 1) AS revenue_contribution_pct
FROM superstore_transactions
GROUP BY region
ORDER BY total_revenue DESC;

-- 2. Customer Segment Distribution
SELECT 
    segment,
    ROUND(SUM(sales)::NUMERIC, 2) AS total_sales,
    ROUND((SUM(sales) / SELECT SUM(sales) FROM superstore_transactions) * 100, 1) AS segment_percentage
FROM superstore_transactions
GROUP BY segment
ORDER BY total_sales DESC;

-- 3. Shipping Fulfillment Delays by Mode
SELECT 
    ship_mode,
    COUNT(order_id) AS total_shipments,
    ROUND(AVG(ship_date - order_date), 1) AS avg_shipping_days
FROM superstore_transactions
GROUP BY ship_mode
ORDER BY total_shipments DESC;
