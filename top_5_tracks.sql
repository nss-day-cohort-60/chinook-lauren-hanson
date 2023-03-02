SELECT 
    t.Name AS TrackName,
    COUNT(il.Quantity) AS TimesPurchased
FROM Track t
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY TrackName
ORDER BY TimesPurchased DESC
LIMIT 5