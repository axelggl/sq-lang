SELECT DISTINCT InvoiceId
FROM invoices i
JOIN invoice_items it ON i.InvoiceId = it.InvoiceId
WHERE it.TrackId IN (
    SELECT t.TrackId
    FROM tracks t
    JOIN genres g ON t.GenreId = g.GenreId
    GROUP BY g.GenreId
    HAVING MAX(milliseconds)
    )
ORDER BY InvoiceId ASC;
