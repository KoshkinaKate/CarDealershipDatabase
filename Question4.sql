SELECT * 
FROM dealerships d
JOIN inventory i ON d.DealershipID = i.DealershipID
WHERE i.Vin = '1HGCM82633A123456';
