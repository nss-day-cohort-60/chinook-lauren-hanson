SELECT  
    e.FirstName, 
    e.LastName,
    i.InvoiceId 
FROM Employee e 
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
ORDER BY i.InvoiceId
