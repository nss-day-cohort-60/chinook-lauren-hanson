SELECT 
    i.Total,
    c.FirstName || ' ' || c.LastName AS Customer_Name,
    e.FirstName || ' ' || e.LastName AS Sales_Agent_Name
FROM Invoice i 
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId