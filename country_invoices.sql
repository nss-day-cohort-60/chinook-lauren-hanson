SELECT 
    i.BillingCountry AS Country,
    COUNT(i.BillingCountry) AS Invoice_Per_Country
FROM Invoice i 
GROUP BY i.BillingCountry

