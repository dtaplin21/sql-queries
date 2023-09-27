----------
-- Step 0 - Create a Query
----------
-- Query: Select all cats that have a toy with an id of 5

EXPLAIN QUERY PLAN
SELECT * FROM cats
INNER JOIN cat_toys ON cats.id = cat_toys.cat_id
INNER JOIN toys ON toys.id = cat_toys.toy_id
WHERE toys.id = 5;

-- Paste your results below (as a comment):




----------
-- Step 1 - Analyze the Query
----------
-- Query:

    -- Your code here

-- Paste your results below (as a comment):


-- What do your results mean?

    -- Was this a SEARCH or SCAN?


    -- What does that mean?




----------
-- Step 2 - Time the Query to get a baseline
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here

-- Paste your results below (as a comment):




----------
-- Step 3 - Add an index and analyze how the query is executing
----------

-- Create index:

    CREATE INDEX cat_toys_index_toy_id ON cat_toys(toy_id);-- Your code here

-- Analyze Query:
    -- Your code here

-- Paste your results below (as a comment):


-- Analyze Results:

    -- Is the new index being applied in this query?




----------
-- Step 4 - Re-time the query using the new index
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here

-- Paste your results below (as a comment):


-- Analyze Results:
    -- Are you still getting the correct query results?


    -- Did the execution time improve (decrease)?


    -- Do you see any other opportunities for making this query more efficient?


---------------------------------
-- Notes From Further Exploration
---------------------------------
