# Pet Shop Database Model

## Overview

This is the database model for a pet shop, designed to manage information about customers, pets, purchases, and transactions. The structure is intended to provide a foundation for organizing data related to customer details, pet information, purchase history, and transaction records linking customers to their purchases and associated pets.

## Tables

### 1. Customers

- **CustomerID**: Unique identifier for each customer (Primary Key).
- **FirstName**: First name of the customer.
- **LastName**: Last name of the customer.
- **Email**: Customer's email address.
- **Phone**: Customer's phone number.
- **Address**: Customer's address.

```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address TEXT
);
```

### 2. Pets
PetID: Unique identifier for each pet (Primary Key).
Name: Name of the pet.
Species: Species or type of the pet.
Breed: Breed of the pet.
Age: Age of the pet.
Gender: Gender of the pet (Male, Female, Other).
Price: Price of the pet.

```sql
CREATE TABLE Pets (
    PetID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Species VARCHAR(50),
    Breed VARCHAR(50),
    Age INT,
    Gender ENUM('Male', 'Female', 'Other'),
    Price DECIMAL(10, 2)
);
```

### 3. Purchases
PurchaseID: Unique identifier for each purchase (Primary Key).
PurchaseDate: Date of the purchase.
TotalPrice: Total price of the purchase.

```sql
CREATE TABLE Purchases (
    PurchaseID INT PRIMARY KEY AUTO_INCREMENT,
    PurchaseDate DATE,
    TotalPrice DECIMAL(10, 2)
);
```

### 4. Transactions
TransactionID: Unique identifier for each transaction (Primary Key).
CustomerID: Foreign key referencing the CustomerID in the Customers table.
PurchaseID: Foreign key referencing the PurchaseID in the Purchases table.
PetID: Foreign key referencing the PetID in the Pets table.
Quantity: Quantity of pets involved in the transaction.

```sql
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
```

### Relationship
The Transactions table establishes relationships between customers, purchases, and pets. This allows for tracking which customer made a specific purchase and which pets were involved in each transaction.


```lua
  +-------------------+        +-------------------+
  |    Customers     |        |     Purchases     |
  +-------------------+        +-------------------+
  | CustomerID (PK)  |        | PurchaseID (PK)  |
  | FirstName        |        | PurchaseDate      |
  | LastName         |        | TotalPrice        |
  | Email            |        +-------------------+
  | Phone            |
  | Address          |
  +-------------------+
          |
          |
          v
  +-------------------+
  |  Transactions    |
  +-------------------+
  | TransactionID (PK)|
  | CustomerID (FK)   |
  | PurchaseID (FK)   |
  | PetID (FK)        |
  | Quantity          |
  +-------------------+
          |
          |
          v
  +-------------------+
  |       Pets        |
  +-------------------+
  | PetID (PK)        |
  | Name              |
  | Species           |
  | Breed             |
  | Age               |
  | Gender            |
  | Price             |
  +-------------------+
```
PK denotes the Primary Key.
FK denotes the Foreign Key.
Arrows indicate the direction of the relationship.
This diagram illustrates the relationships between the Customers, Purchases, Transactions, and Pets tables in the pet shop database model. Customers are linked to transactions, purchases are linked to transactions, and pets are also linked to transactions. These relationships allow for the tracking of various aspects of the pet shop's operations.


