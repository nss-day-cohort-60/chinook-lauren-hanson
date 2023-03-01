SELECT 
    COUNT(CASE WHEN InvoiceDate LIKE "%2009%" THEN 1 END) AS "Invoice_Count_2009", 
    COUNT(CASE WHEN InvoiceDate LIKE "%2011%" THEN 1 END) AS "Invoice_Count_2011"
FROM Invoice
