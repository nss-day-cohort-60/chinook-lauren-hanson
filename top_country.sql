SELECT 
    Country AS Country,
    MAX(TotalSales) AS MostSales
FROM(
    SELECT 
        i.BillingCountry AS Country,
        SUM(i.Total) AS TotalSales
    FROM Invoice i
    GROUP BY Country
        ) subquery

