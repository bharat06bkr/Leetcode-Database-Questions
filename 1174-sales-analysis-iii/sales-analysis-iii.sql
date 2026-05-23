-- SELECT p.product_id, p.product_name
-- FROM Product p 
-- LEFT JOIN Sales s
-- ON p.product_id = s.product_id
-- GROUP BY p.product_id, p.product_name
-- HAVING NVL(SUM(
--     CASE 
--         WHEN s.sale_date NOT BETWEEN DATE '2019-01-01' AND DATE '2019-03-31' 
--         THEN 1 ELSE 0 
--     END
-- ), 0) = 0;

SELECT product_id, product_name FROM Product 

WHERE product_id IN(SELECT product_id FROM Sales 

GROUP BY product_id HAVING MIN(sale_date) >= '2019-01-01'
 
AND MAX(sale_date) <= '2019-03-31')