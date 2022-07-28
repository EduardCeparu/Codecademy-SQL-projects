SELECT *
FROM startups;

SELECT COUNT(name)
FROM startups;

SELECT SUM(valuation)
FROM startups;

SELECT MAX(raised), name
FROM startups;

SELECT MAX(raised), name
FROM startups
WHERE stage = 'Seed';

SELECT name, MIN(founded)
FROM startups;

SELECT AVG(valuation)
FROM startups;

SELECT AVG(valuation), category
FROM startups
GROUP BY category;

SELECT ROUND(AVG(valuation), 2), category
FROM startups
GROUP BY category;

SELECT ROUND(AVG(valuation), 2), category
FROM startups
GROUP BY 2
ORDER BY 1 DESC;

SELECT category, COUNT(name) AS companies
FROM startups
GROUP BY category;

SELECT category, COUNT(name) AS companies
FROM startups
GROUP BY category
HAVING COUNT(name) > 3
ORDER BY 2 DESC;

SELECT location, ROUND(AVG(employees))
FROM startups
GROUP BY location;

SELECT location, ROUND(AVG(employees)) AS employees
FROM startups
GROUP BY location
HAVING employees > 500;