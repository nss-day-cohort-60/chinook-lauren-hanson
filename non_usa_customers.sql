SELECT 
    c.FirstName || ' ' || c.LastName AS Customer_Name, 
    c.CustomerId,
    c.Country
FROM Customer c
WHERE Country NOT LIKE "USA"