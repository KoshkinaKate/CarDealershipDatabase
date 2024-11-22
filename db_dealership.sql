DROP DATABASE IF EXISTS car_dealership;

CREATE DATABASE car_dealership;

USE car_dealership;

DROP TABLE IF EXISTS dealership;
DROP TABLE IF EXISTS vehicles;

CREATE TABLE dealerships(
DealershipID INT AUTO_INCREMENT PRIMARY KEY,
`Name` VARCHAR(50),
Address VARCHAR(50),
Phone VARCHAR(12)
);

CREATE TABLE vehicles(
Vin VARCHAR(30) PRIMARY KEY,
`Year` DATE,
Make VARCHAR(20),
Model VARCHAR(20),
VehicleType VARCHAR(20),
Color VARCHAR(20),
Odometer INT,
Price FLOAT,
Sold BOOLEAN
);

