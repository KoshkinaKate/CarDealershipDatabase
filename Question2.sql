SELECT *
FROM vehicles v
JOIN inventory i ON v.vin = i.vin
WHERE i.dealershipID = 1 ;