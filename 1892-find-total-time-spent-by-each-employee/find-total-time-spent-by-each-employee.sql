/* Write your PL/SQL query statement below */

SELECT to_char(event_day,'YYYY-MM-DD') as day,emp_id,SUM(out_time-in_time) as total_time
FROM Employees
GROUP BY (event_day,emp_id);