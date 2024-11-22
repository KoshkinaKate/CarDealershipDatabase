DROP DATABASE IF EXISTS car_dealership;

CREATE DATABASE car_dealership;

USE car_dealership;

DROP TABLE IF EXISTS dealership;
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS sales_contracts;
DROP TABLE IF EXISTS lease_contracts;

CREATE TABLE dealerships(
DealershipID INT AUTO_INCREMENT PRIMARY KEY,
`Name` VARCHAR(50) NOT NULL,
Address VARCHAR(50),
Phone VARCHAR(12)
);

CREATE TABLE vehicles(
Vin VARCHAR(30) PRIMARY KEY,
`Year` DATE NOT NULL,
Make VARCHAR(20) NOT NULL,
Model VARCHAR(20) NOT NULL,
VehicleType VARCHAR(20),
Color VARCHAR(20),
Odometer INT NOT NULL,
Price FLOAT NOT NULL,
Sold BOOLEAN 
);

CREATE TABLE inventory(
DealershipID INT,
Vin VARCHAR(30)
);

CREATE TABLE sales_contracts(
SaleID INT AUTO_INCREMENT PRIMARY KEY,
SalesTaxAmount FLOAT,
RecordingFee FLOAT,
ProcessingFee FLOAT,
FOREIGN KEY (Vin) REFERENCES vehicles(Vin)
);



