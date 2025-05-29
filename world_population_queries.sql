
-- 1. Find the top 10 most populous countries in 2022
SELECT country, pop_2022 FROM world_population ORDER BY pop_2022 DESC LIMIT 10;

-- 2. Find the average growth rate by continent
SELECT continent, AVG(growth_rate) AS avg_growthrate 
FROM world_population 
GROUP BY continent 
ORDER BY avg_growthrate DESC;

-- 3. Get all countries in Europe and their capitals
SELECT country, capital FROM world_population WHERE continent = 'Europe';

-- 4. Find the total number of countries per continent
SELECT continent, COUNT(country) 
FROM world_population 
GROUP BY continent;

-- 5. List countries with a population density above 500
SELECT country, density_km2 
FROM world_population 
WHERE density_km2 > 500;

-- 6. Show the population growth (2022 - 2010) for each country
SELECT country, pop_2022 - pop_2010 AS growth_rate_2022_10 
FROM world_population;

-- 7. List countries where population has decreased since 2000
SELECT country, pop_2000, pop_2022 
FROM world_population 
WHERE pop_2022 < pop_2000;

-- 8. List the top 3 countries by area within Asia
SELECT country, area_km2 
FROM world_population 
WHERE continent = 'Asia' 
ORDER BY area_km2 DESC 
LIMIT 3;

-- 9. Find the country with the highest growth rate in each continent
SELECT continent, country, density_km2 
FROM world_population wp 
WHERE density_km2 = (
    SELECT MAX(density_km2) 
    FROM world_population 
    WHERE continent = wp.continent
);

-- 10. Find countries where the population more than doubled since 1990
SELECT country, pop_1990, pop_2022 
FROM world_population 
WHERE pop_2022 >= 2 * pop_1990;

-- 11. Show the total population for each continent in 2022
SELECT continent, SUM(pop_2022) AS total_population_2022 
FROM world_population 
GROUP BY continent;

-- 12. Identify countries where population decreased in 3 consecutive periods
SELECT country 
FROM world_population 
WHERE pop_2000 < pop_2010 
  AND pop_2010 < pop_2020 
  AND pop_2020 < pop_2022;

-- 13. Find countries whose population has continuously grown every decade since 1970
SELECT country 
FROM world_population 
WHERE pop_2022 > pop_2020 
  AND pop_2020 > pop_2015 
  AND pop_2015 > pop_2010 
  AND pop_2010 > pop_2000 
  AND pop_2000 > pop_1990 
  AND pop_1990 > pop_1980 
  AND pop_1980 > pop_1970;

-- 14. Get the percentage share of each continent in the 2022 world population
SELECT continent, 
       SUM(pop_2022) * 100.0 / (SELECT SUM(pop_2022) FROM world_population) AS percent_share 
FROM world_population 
GROUP BY continent;
