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
