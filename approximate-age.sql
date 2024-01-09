SELECT FirstName, LastName, DATEDIFF(YEAR, BirthDate, HireDate) AS ApproximateAge
FROM employees
ORDER BY ApproximateAge ASC;