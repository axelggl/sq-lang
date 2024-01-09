SELECT employees.FirstName || ' ' || UPPER(employees.LastName) FullName, COUNT(SupportRepId) AS NumberOfCustomers
FROM employees
JOIN customers ON employees.EmployeeId = customers.SupportRepId
WHERE employees.Title = 'Sales Support Agent'
GROUP BY EmployeeId, SupportRepId
ORDER BY NumberOfCustomers ASC