
-- =============================================
-- Urban Transit Delay Analysis (PostgreSQL)
-- Description: Analyze delivery performance in Lagos
-- =============================================

-- 1. Create table
CREATE TABLE urban_transit (
    delivery_id       SERIAL PRIMARY KEY,
    origin            VARCHAR(100),
    destination       VARCHAR(100),
    delivery_date     DATE,
    hour              INT,
    delay_minutes     INT,
    status            VARCHAR(50)
);

-- 2. Total number of deliveries
SELECT COUNT(*) AS total_deliveries
FROM urban_transit;

-- 3. Average delay per day
SELECT 
    delivery_date,
    ROUND(AVG(delay_minutes), 2) AS avg_delay
FROM urban_transit
GROUP BY delivery_date
ORDER BY delivery_date;

-- 4. Peak delivery hours with most delays
SELECT 
    hour,
    ROUND(AVG(delay_minutes), 2) AS avg_delay
FROM urban_transit
GROUP BY hour
ORDER BY avg_delay DESC;

-- 5. On-time vs Delayed deliveries
SELECT 
    status,
    COUNT(*) AS count_deliveries
FROM urban_transit
GROUP BY status;

-- 6. Average delay by origin-destination route
SELECT 
    origin,
    destination,
    ROUND(AVG(delay_minutes), 2) AS avg_delay
FROM urban_transit
GROUP BY origin, destination
ORDER BY avg_delay DESC;

-- 7. Top 5 routes with highest delay
SELECT 
    origin,
    destination,
    ROUND(AVG(delay_minutes), 2) AS avg_delay
FROM urban_transit
GROUP BY origin, destination
ORDER BY avg_delay DESC
LIMIT 5;

-- 8. Day of week impact on delays (assuming day of week is derived)
SELECT 
    EXTRACT(DOW FROM delivery_date) AS day_of_week,
    ROUND(AVG(delay_minutes), 2) AS avg_delay
FROM urban_transit
GROUP BY day_of_week
ORDER BY avg_delay DESC;

-- 9. Monthly delivery volume
SELECT 
    DATE_TRUNC('month', delivery_date) AS month,
    COUNT(*) AS delivery_count
FROM urban_transit
GROUP BY month
ORDER BY month;

-- 10. % of delayed deliveries per day
SELECT 
    delivery_date,
    ROUND(100.0 * SUM(CASE WHEN status = 'Delayed' THEN 1 ELSE 0 END) / COUNT(*), 2) AS delay_percentage
FROM urban_transit
GROUP BY delivery_date
ORDER BY delay_percentage DESC;
