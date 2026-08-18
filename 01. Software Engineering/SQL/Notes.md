## DAY 010:


-- DDL (Data Definition Language) : CREATE, ALTER, DROP, TRUNCATE, RENAME
-- DML (Data Manipulation Language) : INSERT, UPDATE, DELETE
-- DQL (Data Query Language) : SELECT
-- Note: Some classifications include SELECT under DML.
-- DCL (Data Control Language) : GRANT, REVOKE
-- TCL (Transaction Control Language) : COMMIT, ROLLBACK, SAVEPOINT

-- SQL ORDER OF EXECUTION
-- 1. FROM
-- 2. JOIN
-- 3. WHERE
-- 4. GROUP BY
-- 5. HAVING
-- 6. SELECT
-- 7. DISTINCT
-- 8. ORDER BY
-- 9. LIMIT

## Day 011:

-- ROW_NUMBER() → unique sequential number for every row
-- RANK() → same rank for ties, gaps after ties
-- DENSE_RANK() → same rank for ties, no gaps
-- PARTITION BY → ranking restarts for each partition
-- ORDER BY → determines ranking order
-- ROW_NUMBER() is useful when every row needs a unique position
-- RANK() is useful for competition-style ranking
-- DENSE_RANK() is useful when ranking distinct values
-- Add a tie-breaker to ROW_NUMBER() when deterministic ordering is required
-- "Rank X within each Y" → PARTITION BY Y ORDER BY X

## Day 012:

-- LAG() → accesses a previous row
-- LEAD() → accesses a following row
-- LAG() → looks backward
-- LEAD() → looks forward
-- ORDER BY → determines what previous/next means
-- PARTITION BY → creates an independent sequence for each group
-- LAG(value, 2) → looks 2 rows backward
-- LEAD(value, 2) → looks 2 rows forward
-- LAG() is useful for comparing current vs previous values
-- LEAD() is useful for finding the next event/value
-- LAG/LEAD are commonly used for period-over-period analysis
-- Common uses → sales changes, growth %, customer activity, status changes
-- Window frame → defines which rows participate in the calculation
-- ROWS BETWEEN → defines the frame using physical row positions
-- PRECEDING → rows before the current row
-- CURRENT ROW → the current row
-- FOLLOWING → rows after the current row
-- UNBOUNDED PRECEDING → starts from the first row
-- UNBOUNDED FOLLOWING → continues until the last row
-- Running total → UNBOUNDED PRECEDING to CURRENT ROW
-- Moving 3-row calculation → 2 PRECEDING to CURRENT ROW
-- Moving average → commonly uses AVG() with ROWS BETWEEN
-- PARTITION BY → creates a separate frame sequence for each group
-- ROWS → based on physical rows
-- RANGE → based on ORDER BY values

## Day 013:

-- Stored Procedure → reusable set of SQL statements stored in the database
-- Procedure is executed using CALL
-- Procedure can contain multiple SQL statements
-- IN → input parameter
-- OUT → output parameter
-- INOUT → input + output parameter
-- DECLARE → creates a local variable inside a procedure/function
-- SELECT ... INTO → stores query result into a variable
-- IF / ELSEIF / ELSE → conditional logic
-- Procedure is best for database operations and workflows
-- UDF → User-Defined Function
-- Function is a reusable calculation/ transformation
-- Function must specify RETURNS datatype
-- RETURN → returns the function's value
-- Function can be used inside SELECT expressions
-- Function returns a single value
-- DETERMINISTIC → same input produces the same output
-- Procedure → "perform a task"
-- Function → "calculate/return a value"

## Day 014:

-- CTE = Common Table Expression

-- CTE creates a temporary named result set
-- CTE exists only for the current SQL statement
-- CTE starts with the WITH keyword

-- Basic syntax:
WITH cte_name AS (
    SELECT ...
)
SELECT *
FROM cte_name;

-- CTE improves query readability
-- CTE helps break complex queries into logical steps
-- CTE can be used with SELECT, JOIN, GROUP BY, HAVING and window functions

-- Multiple CTEs are separated by commas

WITH cte1 AS (
    SELECT ...
),
cte2 AS (
    SELECT ...
    FROM cte1
)
SELECT *
FROM cte2;

-- CTE vs Temporary Table:
-- CTE → exists for one SQL statement
-- TEMP TABLE → can be reused across multiple statements

-- CTE vs VIEW:
-- CTE → temporary query-level result
-- VIEW → permanently stored database object

-- Recursive CTE uses:
-- WITH RECURSIVE
-- Useful for hierarchies, trees and sequences

WITH RECURSIVE numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM numbers
    WHERE n < 5
)
SELECT *
FROM numbers;

-- SET OPERATORS
-- Combine results from multiple SELECT statements.

-- Main operators:
-- UNION
-- Combines results and removes duplicates
-- UNION ALL
-- Combines results and keeps duplicates
-- INTERSECT
-- Returns rows common to both queries
-- EXCEPT
-- Returns rows from first query
-- that don't exist in second query
-- KEY DIFFERENCE:
-- JOIN      → combines columns horizontally
-- UNION     → combines rows vertically