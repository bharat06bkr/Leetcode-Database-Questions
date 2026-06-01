/* Write your PL/SQL query statement below */

SELECT to_char(transaction_date,'YYYY-MM-DD') as transaction_date,
    SUM(CASE WHEN MOD(amount,2)=1 THEN amount ELSE 0 END) as odd_sum,
    SUM(CASE WHEN MOD(amount,2)=0 THEN amount ELSE 0 END) as even_sum
FROM transactions
GROUP BY transaction_date
ORDER BY 1;