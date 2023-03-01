SELECT 
    COUNT(CASE WHEN InvoiceId = 37 THEN 1 END) AS "Invoice_ID_37_Count"
FROM InvoiceLine 