-- Insert data into the Customer table
INSERT INTO Customer (Name, Email, Phone, Address, DateOfBirth, LoyaltyPoints) VALUES
('John Doe', 'johndoe@example.com', '123-456-7890', '123 Main St', '1990-01-01', 100),
('Jane Smith', 'janesmith@example.com', '234-567-8901', '456 Elm St', '1985-05-15', 200);

-- Insert data into the Supplier table
INSERT INTO Supplier (SupplierName, ContactPerson, Phone, Email, Address) VALUES
('TechSupplier Inc.', 'Alice Johnson', '345-678-9012', 'alice@techsupplier.com', '789 Oak St'),
('Gadgets Co.', 'Bob Brown', '456-789-0123', 'bob@gadgetsco.com', '101 Pine St');

-- Insert data into the Product table
INSERT INTO Product (Name, Description, Price, Category, StockLevel, SupplierID) VALUES
('Smartphone', 'Latest model smartphone', 699.99, 'Electronics', 50, 1),
('Laptop', 'High-performance laptop', 999.99, 'Computers', 30, 2);

-- Insert data into the Orders table
INSERT INTO Orders  (OrderDate, CustomerID, TotalAmount, OrderStatus, PaymentMethod, ShippingAddress) VALUES
('2024-08-01', 1, 1699.98, 'Shipped', 'Credit Card', '123 Main St'),
('2024-08-02', 2, 999.99, 'Processing', 'PayPal', '456 Elm St');

-- Insert data into the OrderItem table
INSERT INTO OrderItem (OrderID, ProductID, Quantity, Price) VALUES
(1, 1, 1, 699.99),
(1, 2, 1, 999.99),
(2, 2, 1, 999.99);

-- Insert data into the Review table
INSERT INTO Review (CustomerID, ProductID, Rating, Comment, ReviewDate) VALUES
(1, 1, 5, 'Excellent smartphone!', '2024-08-03'),
(2, 2, 4, 'Great laptop, but could be better.', '2024-08-04');

-- Insert data into the Inventory table
INSERT INTO Inventory (ProductID, StockLevel, ReorderLevel, LastRestockedDate) VALUES
(1, 49, 10, '2024-08-01'),
(2, 28, 5, '2024-08-02');
