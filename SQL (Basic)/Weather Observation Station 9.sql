SELECT DISTINCT CITY FROM STATION 
WHERE UPPER(CITY) NOT LIKE 'A%'
AND UPPER(CITY) NOT LIKE 'E%'
AND UPPER(CITY) NOT LIKE 'I%'
AND UPPER(CITY) NOT LIKE 'O%'
AND UPPER(CITY) NOT LIKE 'U%';