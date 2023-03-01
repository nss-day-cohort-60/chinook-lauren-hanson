SELECT 
    i.InvoiceId,
    COUNT(il.InvoiceLineId) AS Line_Items_Per_Invoice
FROM Invoice i 
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId


