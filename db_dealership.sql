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
DealershipID INT NOT NULL,
Vin VARCHAR(30) NOT NULL
);

CREATE TABLE sales_contracts(
SaleID INT AUTO_INCREMENT PRIMARY KEY,
Vin VARCHAR(30) NOT NULL,
SalesTaxAmount FLOAT,
RecordingFee FLOAT,
ProcessingFee FLOAT NOT NULL,
FOREIGN KEY (Vin) REFERENCES vehicles(Vin)
);

CREATE TABLE lease_contracts(
LeaseID INT AUTO_INCREMENT PRIMARY KEY,
Vin VARCHAR(30) NOT NULL,
ExpectedEndingValue FLOAT,
LeaseFee FLOAT NOT NULL, 
FOREIGN KEY (Vin) REFERENCES vehicles(Vin)
);

INSERT INTO dealerships (`Name`, Address, Phone)
VALUES ('BEST_CARS_HEEERE', '4568 Bold St, Harrison, NC, 15348', '456-098-0098'),
('Premium Auto', '1234 Elm St, Springfield, IL, 62704', '217-555-1234'),
('City Cars', '9876 Oak Ave, Denver, CO, 80203', '303-555-9876'),
('Elite Motors', '5678 Maple Dr, Austin, TX, 73301', '512-555-5678'),
('Family Rides', '3456 Pine Rd, Orlando, FL, 32801', '407-555-3456'),
('Budget Wheels', '7890 Cedar Ln, Seattle, WA, 98101', '206-555-7890');

INSERT INTO vehicles (Vin, `Year`, Make, Model, VehicleType, Color, Odometer, Price, Sold)
VALUES
('1HGCM82633A123456', '2023-01-15', 'Toyota', 'Camry', 'Sedan', 'White', 15000, 24000.00, FALSE),
('1HGCM82633A654321', '2022-06-10', 'Honda', 'Civic', 'Sedan', 'Black', 12000, 20000.00, TRUE),
('1HGCM82633A112233', '2023-03-05', 'Ford', 'F-150', 'Truck', 'Blue', 25000, 45000.00, FALSE),
('1HGCM82633A223344', '2021-11-20', 'Chevrolet', 'Malibu', 'Sedan', 'Red', 30000, 19000.00, FALSE),
('1HGCM82633A334455', '2020-09-15', 'Jeep', 'Wrangler', 'SUV', 'Green', 35000, 32000.00, TRUE),
('1HGCM82633A445566', '2023-05-25', 'Tesla', 'Model 3', 'Electric', 'Silver', 5000, 35000.00, FALSE),
('1HGCM82633A556677', '2022-07-14', 'Nissan', 'Altima', 'Sedan', 'Gray', 18000, 22000.00, TRUE),
('1HGCM82633A667788', '2021-02-28', 'Hyundai', 'Tucson', 'SUV', 'Blue', 22000, 27000.00, FALSE),
('1HGCM82633A778899', '2020-03-10', 'BMW', 'X5', 'SUV', 'Black', 40000, 45000.00, TRUE),
('1HGCM82633A889900', '2023-10-05', 'Audi', 'A4', 'Sedan', 'White', 10000, 39000.00, FALSE),
('1HGCM82633A990011', '2022-12-01', 'Subaru', 'Outback', 'SUV', 'Silver', 15000, 31000.00, FALSE),
('1HGCM82633A110022', '2021-08-18', 'Chevrolet', 'Silverado', 'Truck', 'Red', 35000, 41000.00, TRUE),
('1HGCM82633A120033', '2020-04-07', 'Toyota', 'RAV4', 'SUV', 'Green', 30000, 29000.00, FALSE),
('1HGCM82633A130044', '2023-06-30', 'Mazda', 'CX-5', 'SUV', 'Blue', 12000, 31000.00, FALSE),
('1HGCM82633A140055', '2022-01-22', 'Kia', 'Soul', 'Hatchback', 'Gray', 14000, 20000.00, TRUE),
('1HGCM82633A150066', '2021-05-15', 'GMC', 'Terrain', 'SUV', 'Black', 25000, 27000.00, FALSE),
('1HGCM82633A160077', '2020-08-24', 'Mercedes-Benz', 'C-Class', 'Sedan', 'White', 45000, 38000.00, TRUE),
('1HGCM82633A170088', '2023-04-11', 'Volkswagen', 'Jetta', 'Sedan', 'Silver', 8000, 25000.00, FALSE),
('1HGCM82633A180099', '2022-02-15', 'Honda', 'Accord', 'Sedan', 'Blue', 16000, 27000.00, TRUE),
('1HGCM82633A190110', '2021-09-03', 'Ford', 'Explorer', 'SUV', 'Black', 28000, 36000.00, FALSE);

INSERT INTO inventory (DealershipID, Vin)
VALUES
(1, '1HGCM82633A123456'),
(1, '1HGCM82633A654321'),
(2, '1HGCM82633A112233'),
(2, '1HGCM82633A223344'),
(3, '1HGCM82633A334455'),
(3, '1HGCM82633A445566'),
(4, '1HGCM82633A556677'),
(4, '1HGCM82633A667788'),
(5, '1HGCM82633A778899'),
(5, '1HGCM82633A889900'),
(1, '1HGCM82633A990011'),
(2, '1HGCM82633A110022'),
(3, '1HGCM82633A120033'),
(4, '1HGCM82633A130044'),
(5, '1HGCM82633A140055'),
(1, '1HGCM82633A150066'),
(2, '1HGCM82633A160077'),
(3, '1HGCM82633A170088'),
(4, '1HGCM82633A180099'),
(5, '1HGCM82633A190110');

INSERT INTO sales_contracts (Vin, SalesTaxAmount, RecordingFee, ProcessingFee)
VALUES
('1HGCM82633A123456', 1200.00, 150.00, 300.00),
('1HGCM82633A654321', 1000.00, 130.00, 280.00),
('1HGCM82633A334455', 900.00, 125.00, 250.00),
('1HGCM82633A445566', 1500.00, 200.00, 350.00),
('1HGCM82633A556677', 1100.00, 140.00, 290.00);

INSERT INTO lease_contracts (Vin, ExpectedEndingValue, LeaseFee)
VALUES
('1HGCM82633A223344', 18000.00, 400.00),
('1HGCM82633A334455', 19000.00, 420.00),
('1HGCM82633A445566', 20000.00, 430.00),
('1HGCM82633A556677', 15000.00, 390.00);



