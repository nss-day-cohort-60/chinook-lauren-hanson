SELECT EmployeeName AS EmployeeName,
    MAX(TotalSales) AS TopTotalSales
FROM (
        SELECT ROUND(SUM(i.Total), 2) AS TotalSales,
            e.FirstName || ' ' || e.LastName AS EmployeeName
        FROM Employee e
            JOIN Customer c ON e.EmployeeId = c.SupportRepId
            JOIN Invoice i ON c.CustomerId = i.CustomerId
        GROUP BY EmployeeName
    ) subquery