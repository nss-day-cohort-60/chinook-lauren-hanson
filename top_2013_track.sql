/* 
COMMON TABLE EXPRESSION
From Coach Steve
*/
WITH TopTracks AS (
    SELECT t.Name,
        COUNT(t.Name) PurchaseCount
    FROM Track t
        JOIN InvoiceLine l ON l.TrackId = t.TrackId
        JOIN Invoice i ON l.InvoiceId = i.InvoiceId
    WHERE STRFTIME('%Y', i.InvoiceDate) = "2013"
    GROUP BY t.Name
    ORDER BY PurchaseCount DESC
)

SELECT Name,
    PurchaseCount
FROM TopTracks
WHERE (
        SELECT MAX(PurchaseCount)
        FROM TopTracks
    ) = PurchaseCount

/* 
From Coach Steve
This repaces the Common Table Expression w/ subqueries 
*/

SELECT 
    TrackCounts.Name, 
    TrackCounts.PurchaseCount
FROM ( 
    SELECT 
        t.name, 
        COUNT(t.name) as PurchaseCount
    FROM Track t   
        JOIN InvoiceLine il ON il.TrackId = t.TrackId
        JOIN Invoice i ON il.InvoiceId = i.InvoiceId
    WHERE STRFTIME('%Y', i.InvoiceDate) = "2013"
    GROUP BY t.Name
    ORDER BY PurchaseCount DESC 
) TrackCounts 
JOIN
    (
    SELECT MAX(PurchaseCount) AS MaxCount
    FROM (
        SELECT t.Name, COUNT(t.Name) AS PurchaseCount
        FROM Track t
        JOIN InvoiceLine l ON l.TrackId = t.TrackId
        JOIN Invoice i ON l.InvoiceId = i.InvoiceId
        WHERE STRFTIME('%Y', i.InvoiceDate) = "2013"
        GROUP BY t.Name
        ORDER BY PurchaseCount desc
        ) TrackCounts
    ) Maxx
    ON TrackCounts.PurchaseCount = Maxx.MaxCount
