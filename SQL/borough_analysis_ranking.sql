-- Let's rank the boroughs by how many houses were sold and average house prices

-- Let's rank the areas in London by houses sold in the period. 
SELECT area, SUM(houses_sold) AS total_houses_sold
FROM monthly_variables
WHERE borough_flag = 1
GROUP BY area
ORDER BY total_houses_sold DESC
LIMIT 10;

-- This gives the ranking of total houses sold in each area by London across this period

-- Let's factor in the average price into this

-- NOW LET'S WORK OUT THE OVERALL TOTAL AVERAGE per house to realise top 10 most expensive houses


-- Top 10 boroughs by houses sold
SELECT area, SUM(houses_sold) AS total_houses_sold
FROM monthly_variables
WHERE borough_flag = 1
GROUP BY area
ORDER BY total_houses_sold DESC
LIMIT 10;

-- Top 10 by total avg price
SELECT area, SUM(houses_sold) AS total_houses_sold,
       SUM(average_price) AS TOTAL_AVG_PRICE
FROM monthly_variables
WHERE borough_flag = 1
GROUP BY area
ORDER BY TOTAL_AVG_PRICE DESC
LIMIT 10;

-- Top 10 by average price per house
SELECT area,
       ROUND(AVG(average_price), 2) AS Avg_price_per_house
FROM monthly_variables
WHERE borough_flag = 1
GROUP BY area
ORDER BY Avg_price_per_house DESC
LIMIT 10;

-- Bottom 10 by average price per house
SELECT area,
       ROUND(AVG(average_price), 2) AS Avg_price_per_house
FROM monthly_variables
WHERE borough_flag = 1
GROUP BY area
ORDER BY Avg_price_per_house ASC
LIMIT 10;