SELECT
CASE
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN A = B AND A <> C AND ((A+B)>C AND (B+C)> A AND (A+C)>B) THEN 'Isosceles'
    WHEN A = B AND A <> C AND NOT((A+B)>C AND (B+C)> A AND (A+C)>B) THEN 'Not A Triangle'
    WHEN B = C AND B <> A AND ((A+B)>C AND (B+C)> A AND (A+C)>B) THEN 'Isosceles'
    WHEN B = C AND B <> A AND NOT((A+B)>C AND (B+C)> A AND (A+C)>B) THEN 'Not A Triangle'
    WHEN A = C AND A <> B AND ((A+B)>C AND (B+C)> A AND (A+C)>B) THEN 'Isosceles'
    WHEN A = C AND A <> B AND NOT((A+B)>C AND (B+C)> A AND (A+C)>B) THEN 'Not A Triangle'
    WHEN A <> B AND A <> C AND B <> C AND ((A+B)>C AND (B+C)> A AND (A+C)>B) THEN 'Scalene'
    WHEN A <> B AND A <> C AND B <> C AND NOT((A+B)>C AND (B+C)> A AND (A+C)>B) THEN 'Not A Triangle'
END
FROM TRIANGLES;