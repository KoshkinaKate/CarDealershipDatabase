DROP DATABASE IF EXISTS car_dealership;

CREATE DATABASE car_dealership;

USE car_dealership;

DROP TABLE IF EXISTS dealership;

CREATE TABLE dealerships(
DealershipID INT AUTO_INCREMENT PRIMARY KEY,
`Name` VARCHAR(50),
Address VARCHAR(50),
Phone VARCHAR(12),
);


