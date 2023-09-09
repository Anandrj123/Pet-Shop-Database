# Pet-Shop-Database

Designing an Entity-Relationship (ER) model for a pet shop database involves identifying the entities, their attributes, and the relationships between them. Here's a simplified ER model for a pet shop database:

Entities:

Customer:

Attributes: CustomerID (Primary Key), FirstName, LastName, Email, Phone, Address
Pet:

Attributes: PetID (Primary Key), Name, Species, Breed, Age, Gender, Price
Purchase:

Attributes: PurchaseID (Primary Key), PurchaseDate, TotalPrice
Transaction:

Attributes: TransactionID (Primary Key), CustomerID (Foreign Key), PurchaseID (Foreign Key)
Relationships:

Customer-Pet Relationship (One-to-Many):

A customer can have multiple pets, but a pet belongs to only one customer.
Relationship attributes: None
Purchase-Pet Relationship (Many-to-Many):

A purchase can involve multiple pets, and a pet can be a part of multiple purchases.
Relationship attributes: Quantity
Customer-Purchase Relationship (One-to-Many):

A customer can have multiple purchases, but each purchase belongs to only one customer.
Relationship attributes: None
In this ER model:

The Customer entity represents information about customers who buy pets.
The Pet entity contains information about the pets available for sale.
The Purchase entity records each purchase transaction, including the date and total price.
The Transaction entity links customers to their purchases, allowing you to track which customers made which purchases.
You can further refine this model by adding additional attributes or entities as needed for your specific pet shop's requirements. Additionally, you may need to consider more advanced features like inventory management, employee records, and supplier information, depending on the complexity of your pet shop operations.
