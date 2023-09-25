-- SELECT table_name = t.name
-- FROM sys.tables t
-- INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
-- ORDER BY t.name;

-- COMMON TABLE EXPRESSIONS (CTE)

with cte as (
    SELECT * FROM customer
)

SELECT * from cte

-- Aggregate Functions
    -- COUNT
    -- SUM
    -- AVG
    -- MIN
    -- MAX

SELECT  COUNT( Distinct country)  from customer

SELECT MIN(TotalAmount) from [order]
SELECT MAX(TotalAmount) from [order]
SELECT AVG(TotalAmount) from [order]
SELECT SUM(TotalAmount) from [order]

-- display customer count by country
SELECT  country
       ,COUNT(*) AS 'Customer by Countery'
FROM customer
GROUP BY  country

-- display customer count by country at least 10 customer
SELECT  country
       ,COUNT(*) AS 'Customer by Countery'
FROM customer
GROUP BY  country
HAVING COUNT(*) >= 10

SELECT * from [order]
--  query to display the customer name and total ammount
-- order table here order ammount > 1000
-- sequence Name, country, OrderAmount

SELECT c.FirstName, c.Country, o.TotalAmount
FROM customer c
INNER JOIN [order] o ON c.Id = o.CustomerId
WHERE o.TotalAmount > 1000


SELECT  c.FirstName
       ,c.Country
       ,o.TotalAmount
FROM customer c,  [order] o
WHERE o.TotalAmount > 1000