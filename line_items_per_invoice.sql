SELECT 
    i.*,
    COUNT(il.InvoiceLineId) AS LineItemsPerInvoice
FROM Invoice i 
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId


