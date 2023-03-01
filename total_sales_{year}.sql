
SELECT

  SUM(CASE
    WHEN InvoiceDate LIKE "%2009%" THEN Total
    ELSE 0
  END) AS "Invoice_Total_2009",

  SUM(CASE
    WHEN InvoiceDate LIKE "%2011%" THEN Total
    ELSE 0
  END) AS "Invoice_Total_2011"

FROM Invoice;