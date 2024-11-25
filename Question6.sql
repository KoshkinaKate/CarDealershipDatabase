SELECT *
FROM sales_contracts s
JOIN inventory i ON s.Vin = i.Vin
WHERE i.DealershipID = 1 and s.date Between '2021-05-12' and '2023-08-20';
