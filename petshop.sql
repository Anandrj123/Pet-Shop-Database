-- Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address TEXT
);

-- Pets table
CREATE TABLE Pets (
    PetID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Species VARCHAR(50),
    Breed VARCHAR(50),
    Age INT,
    Gender ENUM('Male', 'Female', 'Other'),
    Price DECIMAL(10, 2)
);

-- Purchases table
CREATE TABLE Purchases (
    PurchaseID INT PRIMARY KEY AUTO_INCREMENT,
    PurchaseDate DATE,
    TotalPrice DECIMAL(10, 2)
);

-- Transactions table (linking Customers to Purchases and Pets)
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    PurchaseID INT,
    PetID INT,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (PurchaseID) REFERENCES Purchases(PurchaseID),
    FOREIGN KEY (PetID) REFERENCES Pets(PetID)
);
