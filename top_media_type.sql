SELECT 
    mt.Name AS MediaType, 
    COUNT(i.Total) AS Total
FROM MediaType mt
LEFT JOIN Track t ON mt.MediaTypeId = t.MediaTypeId
LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
LEFT JOIN Invoice i ON il.InvoiceId = i.InvoiceId 
GROUP BY MediaType
ORDER BY Total DESC
LIMIT 1