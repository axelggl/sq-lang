SELECT Name
FROM tracks
WHERE TrackId = (
    SELECT TrackId
    FROM invoice_items
    WHERE invoiceId = (
        SELECT MAX(InvoiceId)
        FROM invoices
    )
);