SELECT 
    i.BillingCountry AS Country, 
    COUNT(i.InvoiceId) AS TotalSales
FROM Invoice i
GROUP BY Country