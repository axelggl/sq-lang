SELECT e.LastName || ' ' || e.FirstName AS '3rd best seller'
FROM customers c
JOIN employees e ON c.SupportRepId = e.EmployeeId
WHERE c.CustomerId IN (
    SELECT c.SupportRepId
    FROM invoices
    JOIN customers c ON invoices.CustomerId = c.CustomerId
    GROUP BY c.SupportRepId
    LIMIT 2, 1
)
GROUP BY '3rd best seller';