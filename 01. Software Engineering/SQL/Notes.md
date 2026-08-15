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
