------
--  GROUP BY
------


-- Return the number of vehicles within each make and model year
-- sorted by Make and Model Year
SELECT MAKE, MODEL_YEAR, COUNT(*) 
FROM LOT_CARS
GROUP BY MAKE, MODEL_YEAR
ORDER BY MAKE, MODEL_YEAR
;

-- Count vehicles by MAKE, but only show those 
-- makes that have more than 2 vehicles
SELECT MAKE, COUNT(*) AS QUANTITY
FROM LOT_CARS
GROUP BY MAKE
HAVING COUNT(*) > 2
ORDER BY MAKE
;

-- List the make of vehicles that only
-- have one vehicle of that make on the lot
-- and label the column QUANTITY
SELECT MAKE, COUNT(*) AS QUANTITY 
FROM LOT_CARS
GROUP BY MAKE
HAVING COUNT(*) = 1
ORDER BY MAKE
;

-- Same query, but removing the redundant
-- COUNT(*) column from the SELECT columns
SELECT MAKE
FROM LOT_CARS
GROUP BY MAKE
HAVING COUNT(*) = 1
ORDER BY MAKE
;