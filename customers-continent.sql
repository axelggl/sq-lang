SELECT FirstName, LastName, Country,
    CASE
        WHEN Country IN ('Brazil', 'USA', 'Canada', 'Argentina', 'Chile') THEN 'America'
        WHEN Country IN ('India') THEN 'Asia'
        WHEN Country IN ('Germany', 'Norway', 'Czech Republic', 'Austria', 'Belgium', 'Denmark', 'Portugal', 'France', 'Finland', 'Hungary', 'Ireland', 'Italy', 'Netherlands', 'Poland', 'Spain', 'Sweden', 'United Kingdom') THEN 'Europe'
        ELSE 'Oceania'
    END AS Continent
FROM customers;
