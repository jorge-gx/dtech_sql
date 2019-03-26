------
--  ORDER BY
------


-- SELECT statement with simple order by
SELECT MAKE, MODEL_YEAR, PRICE
FROM LOT_CARS
ORDER BY MAKE
;

-- Sorting on multiple columns
SELECT MAKE, MODEL_YEAR, PRICE
FROM LOT_CARS
ORDER BY MAKE, MODEL_YEAR
;

-- Descending Order sorting
SELECT MAKE, MODEL_YEAR, PRICE
FROM LOT_CARS
ORDER BY MAKE, MODEL_YEAR DESC
;

-- ORDER BY using column position instead of column name
SELECT MAKE, MODEL_YEAR, PRICE
FROM LOT_CARS
ORDER BY 1, 2 DESC
;
