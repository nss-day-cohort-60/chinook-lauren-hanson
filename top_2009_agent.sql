SELECT EmployeeName AS EmployeeName,
    MAX(TotalSales2009) AS TopTotalSales2009
FROM (
        SELECT SUM(
                CASE
                    WHEN i.InvoiceDate LIKE "%2009%" THEN i.Total
                    ELSE 0
                END
            ) AS TotalSales2009,
            e.FirstName || ' ' || e.LastName AS EmployeeName
        FROM Employee e
            JOIN Customer c ON e.EmployeeId = c.SupportRepId
            JOIN Invoice i ON c.CustomerId = i.CustomerId
        GROUP BY EmployeeName
    ) subquery