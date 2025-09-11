-- Let's examine how each area has changed over time.
-- How has each variable changed across England over time
SELECT Year(DATE) AS year, area, mean_salary AS avg_salary, population_size, number_of_jobs, no_of_houses, area_size
FROM yearly_variables
WHERE area = 'england';

SELECT YEAR(DATE) AS year, area, SUM(houses_sold) AS total_houses_sold , ROUND(AVG(average_price),2) AS avg_house_price
FROM monthly_variables
WHERE area = 'england'
GROUP BY YEAR(DATE);


-- UK-wide yearly trends
SELECT YEAR(date) AS year, area, mean_salary AS avg_salary, population_size,
       number_of_jobs, no_of_houses, area_size
FROM yearly_variables
WHERE area = 'england';

SELECT YEAR(date) AS year, area,
       SUM(houses_sold) AS total_houses_sold,
       ROUND(AVG(average_price), 2) AS avg_house_price
FROM monthly_variables
WHERE area = 'england'
GROUP BY YEAR(date);