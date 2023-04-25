SELECT * FROM cities WHERE name LIKE '%ськ';

SELECT * FROM cities WHERE name LIKE '%донец%';

SELECT CONCAT(name, ' (', region, ')') AS city FROM cities WHERE population > 100000 ORDER BY name ASC;

SELECT name,
population,
CONCAT(ROUND(population / 400000 * 100, 2), '%') AS percentage_of_population FROM cities ORDER BY population DESC LIMIT 50;

SELECT CONCAT(name, ' - ', ROUND(population / 400000 * 100, 2), '%') AS city_percentage FROM cities WHERE population >= 40000 ORDER BY population DESC;
