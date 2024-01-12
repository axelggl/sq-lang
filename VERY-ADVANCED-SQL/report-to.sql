SELECT 
    e.EmployeeId,
    e.FirstName || ' ' || e.LastName AS EmployeeName, 
    r.FirstName || ' ' || r.LastName AS ReportsTo
FROM employees e
LEFT JOIN employees r ON e.ReportsTo = r.EmployeeId;
