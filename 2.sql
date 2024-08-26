SELECT c.Name, c.Email
FROM Customer c
JOIN Orders o ON c.CustomerID = o.CustomerID;
