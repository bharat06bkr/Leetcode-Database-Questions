/* Write your PL/SQL query statement below */
SELECT max(num) as num
FROM
(
    SELECT num 
    FROM MyNumbers
    GROUP BY num
    HAVING count(*)=1 ;
);