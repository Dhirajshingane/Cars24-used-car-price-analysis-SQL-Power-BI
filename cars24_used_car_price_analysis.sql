
-- CARS24 USED CAR PRICE ANALYSIS
-- MySQL Data Analyst Portfolio Project

-- Project Objective:
-- Analyze used-car data to identify pricing trends and understand
-- how factors such as manufacturing year, mileage, fuel type,
-- transmission, ownership, and car model influence selling prices.

-- SECTION 1: DATABASE SETUP

create database car24;
use car24;


-- SECTION 2: DATA INSPECTION

-- 1. view the data

SELECT 
    *
FROM
    cars24data;

-- 2. Check the data structure

describe cars24data;

-- 3. check the number of rows

SELECT 
    COUNT(*) AS total_rows
FROM
    cars24data;


-- SECTION 3: COLUMN STANDARDIZATION

-- 4. Rename columns to SQL-friendly names


alter table cars24data
rename column `Model Name` to  model_name;

alter table cars24data
rename column Price to price;

alter table cars24data
rename column Manufacturing_year to manufacturing_year;

alter table cars24data
rename column `Engine capacity` to engine_capacity;

alter table cars24data
rename column `Spare key` to spare_key;

alter table cars24data
rename column Transmission to transmission;

alter table cars24data
rename column `KM driven` to km_driven;

alter table cars24data
rename column Ownweship to ownership;

alter table cars24data
rename column `Fuel type` to fuel_type;

alter table cars24data
rename column Imperfections to imperfections;

alter table cars24data
rename column `Repainted Parts` to repainted_parts;


-- SECTION 4: DATA QUALITY CHECKS

-- 5. check the duplicate records

SELECT 
    model_name, price, km_driven, COUNT(*) AS duplicate_count
FROM
    cars24data
GROUP BY model_name , price , km_driven
HAVING COUNT(*) > 1;

-- 6. Check available fuel types

SELECT DISTINCT fuel_type
FROM cars24data;


-- 7. Check available transmission types

SELECT DISTINCT transmission
FROM cars24data;


-- 8. Check available ownership types

SELECT DISTINCT ownership
FROM cars24data;


-- 9. Check manufacturing year range

SELECT 
    MIN(manufacturing_year) AS earliest_year,
    MAX(manufacturing_year) AS latest_year
FROM cars24data;


-- 10. Check price statistics

SELECT 
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price,
    ROUND(AVG(price), 2) AS average_price
FROM cars24data;

-- SECTION 5: EXPLORATORY DATA ANALYSIS

-- 11.  calculate the average price for each car model for each manufacturing year.

SELECT 
    manufacturing_year, model_name, AVG(price) AS avg_price
FROM
    cars24data
GROUP BY model_name , manufacturing_year
ORDER BY manufacturing_year;

-- 12. Calculate the number of cars by transmission and manufacturing year

SELECT 
    manufacturing_year,
    transmission,
    COUNT(model_name) AS count_of_cars
FROM
    cars24data
GROUP BY transmission , manufacturing_year
ORDER BY manufacturing_year;

-- 13. Top 10 CNG cars with fewer than 2 repainted parts and less than 50,000 km driven

SELECT 
    model_name, fuel_type, repainted_parts, price, km_driven
FROM
    cars24data
WHERE
    fuel_type = 'CNG'
        AND repainted_parts < 2
        AND km_driven < 50000
ORDER BY price
LIMIT 10;


-- 14. Average price by fuel type

SELECT 
    fuel_type, AVG(price) AS avg_price
FROM
    cars24data
GROUP BY fuel_type;

-- SECTION 6: BUSINESS QUESTIONS

-- 15. What is the average used-car price?

SELECT 
    ROUND(AVG(price)) AS average_used_car_price
FROM
    cars24data;

-- 16. Which model has the highest average selling price?

SELECT 
    model_name, AVG(price) AS average_selling_price
FROM
    cars24data
GROUP BY model_name
ORDER BY average_selling_price DESC
LIMIT 1;


-- 17. Which model has the most listings?

SELECT 
    model_name, COUNT(*) AS count_of_listings
FROM
    cars24data
GROUP BY model_name
ORDER BY count_of_listings DESC
LIMIT 1;


-- 18. Which fuel type has the highest average price?

SELECT 
    fuel_type, AVG(price) AS highest_average_price
FROM
    cars24data
GROUP BY fuel_type
ORDER BY highest_average_price DESC
LIMIT 1;

-- 19. Manual vs Automatic — which has the higher average price?

SELECT 
    transmission, AVG(price) AS highest_average_price
FROM
    cars24data
GROUP BY transmission
ORDER BY highest_average_price DESC;

-- 20. What are the top 10 most expensive car models?

SELECT 
    model_name, ROUND(AVG(price)) AS avg_price
FROM
    cars24data
GROUP BY model_name
ORDER BY avg_price DESC
LIMIT 10;

-- 21. How does the average car price vary by manufacturing year?

SELECT 
    manufacturing_year, ROUND(AVG(price), 2) AS avg_price
FROM
    cars24data
GROUP BY manufacturing_year
ORDER BY manufacturing_year;

-- 22. Car Age vs Price Analysis

SELECT 
    year(curdate()) - manufacturing_year AS car_age,
    ROUND(AVG(price), 2) AS avg_price
FROM
    cars24data
GROUP BY car_age
ORDER BY car_age;

-- 23. Kilometres Driven vs Price Analysis

SELECT 
    CASE
        WHEN km_driven < 25000 THEN 'Below 25K'
        WHEN km_driven BETWEEN 25000 AND 50000 THEN '25K - 50K'
        WHEN km_driven BETWEEN 50001 AND 75000 THEN '50K - 75K'
        WHEN km_driven BETWEEN 75001 AND 100000 THEN '75K - 100K'
        ELSE 'Above 100K'
    END AS km_category,
    COUNT(*) AS total_cars,
    ROUND(AVG(price), 2) AS avg_price
FROM
    cars24data
GROUP BY km_category
ORDER BY avg_price DESC;

-- 24. Owner Type Analysis

SELECT 
    ownership,
    COUNT(*) AS total_cars,
    ROUND(AVG(price), 2) AS avg_price
FROM
    cars24data
GROUP BY ownership
ORDER BY avg_price DESC;

-- 25. Model-wise Listings and Average Price

SELECT 
    model_name,
    COUNT(*) AS number_of_cars,
    ROUND(AVG(price), 2) AS avg_price
FROM
    cars24data
GROUP BY model_name
ORDER BY number_of_cars desc;

-- 26. Price Range Analysis using CASE

SELECT 
    CASE
        WHEN price < 300000 THEN 'Budget'
        WHEN price BETWEEN 300000 AND 600000 THEN 'Mid Range'
        WHEN price BETWEEN 600001 AND 1000000 THEN 'Premium'
        ELSE 'Luxury'
    END AS price_category,
    COUNT(*) AS total_cars,
    ROUND(AVG(price), 2) AS avg_price
FROM
    cars24data
GROUP BY price_category
ORDER BY avg_price;

-- 27. Most Expensive model

SELECT 
    model_name, ROUND(AVG(price), 2) AS avg_price
FROM
    cars24data
GROUP BY model_name
ORDER BY avg_price DESC
LIMIT 1;

-- 28. Cheapest model

SELECT 
    model_name, ROUND(AVG(price), 2) AS avg_price
FROM
    cars24data
GROUP BY model_name
ORDER BY avg_price
LIMIT 1;
