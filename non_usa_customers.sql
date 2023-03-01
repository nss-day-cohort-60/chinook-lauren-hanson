SELECT 
    c.FirstName, 
    c.LastName, 
    c.Country
FROM Customer c
WHERE Country NOT LIKE "USA"