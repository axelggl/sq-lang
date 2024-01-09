SELECT Name
FROM tracks
WHERE TrackId ID = (
    SELECT TrackId
    FROM invoice_items
    WHERE invoiceId = (
        SELECT MAX(InvoiceId)
        FROM invoices
    )
);