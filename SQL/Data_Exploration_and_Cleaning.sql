-- Let's learn more about the tables

-- Preview data
SELECT * FROM yearly_variables;
SELECT * FROM monthly_variables;

-- Schema inspection
DESCRIBE monthly_variables;
DESCRIBE yearly_variables;


-- Seems the missing values are not being recognised as missing
-- Missing value check
SELECT COUNT(*) AS Total_rows, COUNT(no_of_crimes) AS no_of_crimes
FROM monthly_variables;

-- Let's change no_of_crimes from Text to Int
-- Attempted data type fix
SELECT CAST(no_of_crimes AS UNSIGNED) AS no_of_crimes
FROM monthly_variables;

-- We need to change a lot of the data types from strings (text) to integers for both monthly and yearly variables
-- We then need to create new tables for monthly and yearly variables where the data types have been fixed
