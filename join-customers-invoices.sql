SELECT customers.FirstName, customers.LastName, customers.Company, invoices.Total InvoicesTotalPrice
FROM customers
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE customers.Company IS NOT NULL