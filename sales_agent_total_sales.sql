SELECT  
    e.FirstName || ' ' || e.LastName AS EmployeeName, 
    COUNT(i.InvoiceId) AS TotalSales
FROM Employee e
LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId
