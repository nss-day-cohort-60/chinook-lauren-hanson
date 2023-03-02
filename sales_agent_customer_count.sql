SELECT 
    e.FirstName || ' ' || e.LastName AS EmployeeName,  
    COUNT(c.CustomerId) AS TotalCustomers
FROM Employee e
LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
GROUP BY EmployeeName