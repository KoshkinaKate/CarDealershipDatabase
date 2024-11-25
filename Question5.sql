SELECT * 
FROM dealerships d
JOIN inventory i ON d.dealershipID = i.DealershipID
JOIN vehicles v ON i.Vin = v.Vin
WHERE v.make = 'toyota' and v.model = 'rav4' and v.color = 'green';