SELECT 
    il.InvoiceLineId AS Invoice_Line_Item, 
    t.Name AS Track_Name
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
ORDER BY il.InvoiceLineId