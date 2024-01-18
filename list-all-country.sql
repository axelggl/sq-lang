SELECT Country, COUNT(*) AS TotalRows
FROM (
    SELECT Country FROM employees
    UNION ALL
    SELECT Country FROM customers
    UNION ALL
    SELECT BillingCountry FROM invoices
)
GROUP BY Country;
