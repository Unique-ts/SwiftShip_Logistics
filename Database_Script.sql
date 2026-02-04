-- SwiftShip Logistics Database Script

-- 1. Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);

-- 2. Create Couriers Table
CREATE TABLE Couriers (
    CourierID INT PRIMARY KEY,
    CourierName VARCHAR(100) NOT NULL
);

-- 3. Create Packages Table (The Child Table)
CREATE TABLE Packages (
    PackageID INT PRIMARY KEY,
    Weight DECIMAL(5,2),
    Status VARCHAR(20) NOT NULL, -- tracks 'Pending', 'In Transit', or 'Delivered'
    CustomerID INT,
    CourierID INT,
    -- Defining Foreign Keys for referential integrity
    CONSTRAINT FK_Customer FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    CONSTRAINT FK_Courier FOREIGN KEY (CourierID) REFERENCES Couriers(CourierID)
);