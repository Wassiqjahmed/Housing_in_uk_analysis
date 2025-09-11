-- Let's break things down by area 
SELECT * FROM monthly_variables;

-- What's the code? 
SELECT code, area FROM monthly_variables;

-- Explore codes and area relationships
SELECT DISTINCT code, area FROM monthly_variables;


-- Let's join the tables
SELECT *
FROM monthly_variables AS mv
LEFT JOIN yearly_variables AS yv
ON mv.code = yv.code;

-- Explore borough_flag and area categories
SELECT area, SUM(houses_sold) AS no_houses_sold
FROM monthly_variables
GROUP BY area
ORDER BY no_houses_sold DESC;

-- Check if England includes all other areas
SELECT SUM(houses_sold) AS no_houses_sold
FROM monthly_variables
WHERE area != 'England';

SELECT SUM(houses_sold) AS no_houses_sold
FROM monthly_variables
WHERE borough_flag = 1;

