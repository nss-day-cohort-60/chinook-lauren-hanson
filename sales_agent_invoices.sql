SELECT  
    i.InvoiceId, 
    e.FirstName || ' ' || e.LastName AS Sales_Agent_Name
FROM Employee e 
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
ORDER BY i.InvoiceId
