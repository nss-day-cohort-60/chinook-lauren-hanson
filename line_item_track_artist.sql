SELECT 
    il.InvoiceId AS Invoice, 
    t.Name AS Track_Name, 
    ar.Name AS Artist_Name
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId