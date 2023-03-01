SELECT 
    c.FirstName, 
    c.LastName, 
    i.InvoiceId, 
    i.InvoiceDate,
    i.BillingCountry
FROM Customer c
    INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE Country LIKE "Brazil"