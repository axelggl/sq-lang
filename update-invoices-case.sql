UPDATE invoices
SET Total = Total +
    CASE
        WHEN DestinationCountry = 'France' THEN Total + 3
        WHEN DestinationCountry = 'USA' THEN Total + 5
        ELSE Total + 1
    END;
