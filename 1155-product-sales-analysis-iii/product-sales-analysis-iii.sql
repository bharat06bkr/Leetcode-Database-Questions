/* Write your PL/SQL query statement below */

SELECT product_id,year as first_year,quantity,price
FROM (
    SELECT product_id,year,quantity,price,
    DENSE_RANK() OVER(Partition BY product_id ORDER BY year) as rn
    FROM Sales
) 
WHERE rn=1;