SELECT 
    i.InvoiceId,
    c.FirstName || ' ' || c.LastName AS Customer_Name,
    i.InvoiceDate,
    i.BillingCountry
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId 
WHERE Country LIKE "Brazil"
ORDER BY i.InvoiceId