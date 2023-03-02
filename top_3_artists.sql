SELECT 
    ar.Name AS ArtistName, 
    COUNT(i.Total) AS TotalSales
FROM Artist ar
LEFT JOIN Album al ON ar.ArtistId = al.ArtistId
LEFT JOIN Track t on al.AlbumId = t.AlbumId
LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
LEFT JOIN Invoice i ON il.InvoiceId = i.InvoiceId
GROUP BY ArtistName
ORDER BY TotalSales DESC
LIMIT 3
