SELECT 
    i.InvoiceId, 
    COUNT(il.InvoiceLineId) AS InvoiceLineCount
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId