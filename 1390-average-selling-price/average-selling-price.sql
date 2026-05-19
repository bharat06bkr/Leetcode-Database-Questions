/* Write your PL/SQL query statement below */
SELECT p.product_id,
    ROUND(
        NVL(SUM(p.price*u.units)/NULLIF(SUM(u.units),0),0)
       ,2) 
    as average_price
FROM prices p LEFT OUTER JOIN unitssold u
ON p.product_id=u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
