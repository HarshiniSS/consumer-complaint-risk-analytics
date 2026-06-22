-- Query 1: Complaints by Product
SELECT product, COUNT(*) AS total_complaints
FROM consumer_complaints
GROUP BY product
ORDER BY total_complaints DESC;


-- Query 2: Top 20 Companies by Complaint Volume
SELECT company, COUNT(*) AS total_complaints
FROM consumer_complaints
GROUP BY company
ORDER BY total_complaints DESC
LIMIT 20;


-- Query 3: Complaints by State
SELECT state, COUNT(*) AS total_complaints
FROM consumer_complaints
WHERE state IS NOT NULL
GROUP BY state
ORDER BY total_complaints DESC;


-- Query 4: Timely vs Delayed Responses
SELECT timely_response, COUNT(*) AS total
FROM consumer_complaints
GROUP BY timely_response;


-- Query 5: Monthly Complaint Trend
SELECT year_month, COUNT(*) AS total_complaints
FROM consumer_complaints
GROUP BY year_month
ORDER BY year_month;


-- Query 6: Average Response Delay by Product
SELECT product,
       AVG(response_delay_days) AS avg_response_delay
FROM consumer_complaints
WHERE response_delay_days IS NOT NULL
GROUP BY product
ORDER BY avg_response_delay DESC;
