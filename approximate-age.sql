SELECT FirstName, LastName, DATEDIFF(BirthDate, HireDate) AS ApproximateAge
FROM employees
ORDER BY ApproximateAge ASC;