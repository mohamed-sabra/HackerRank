--SELECT CO.CONTINENT, CI.NAME, CI.POPULATION FROM COUNTRY CO, CITY CI WHERE CO.CODE=CI.COUNTRYCODE ORDER BY CO.CONTINENT;

SELECT      CO.CONTINENT,
--ceil(AVG(CI.POPULATION)) --90
--round(AVG(CI.POPULATION)) --90
floor(AVG(CI.POPULATION)) --ok
FROM        COUNTRY CO, CITY CI
WHERE       CO.CODE = CI.COUNTRYCODE
--AND         CO.CONTINENT='Africa'
GROUP BY    CO.CONTINENT;    