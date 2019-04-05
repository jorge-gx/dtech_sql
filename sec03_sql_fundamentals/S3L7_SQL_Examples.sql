------
--  String Functions
------


-- Concatenate two fields (Oracle Specific)
SELECT MAKE || MODEL
FROM LOT_CARS
;

-- Concatenate with separation (Oracle Specific) 
SELECT MAKE || ' ' || MODEL
FROM LOT_CARS
;

-- Concatenate using standard CONCAT function
-- in Oracle, have to use concat twice -- see below
select concat(concat(make, ' '), model) as car
from lot_cars;

-- Change column values to all UPPER CASE
SELECT UPPER(MAKE)
FROM LOT_CARS
;

-- Comparison with UPPER 
SELECT *
FROM LOT_CARS
WHERE UPPER(MAKE) = 'NISSAN'
;


-- Change column values to all LOWER CASE
SELECT LOWER(MAKE)
FROM LOT_CARS
;

-- Replace characters within a string
SELECT MODEL, REPLACE(MODEL, 'c', 'x')
FROM LOT_CARS
;

-- Length of a string
SELECT MODEL, LENGTH(MODEL)
FROM LOT_CARS
;

-- Substring first three characters
SELECT MODEL, SUBSTR(MODEL, 1, 3)
FROM LOT_CARS
;


-- Omitting third parameter assumes end of string
SELECT MODEL, SUBSTR(MODEL, 2)
FROM LOT_CARS
;

-- Start from end of string (right-most character)
SELECT MODEL, SUBSTR(MODEL, -1)
FROM LOT_CARS
;

-- Left-most character
SELECT MODEL, SUBSTR(MODEL, 1, 1)
FROM LOT_CARS
;

-- Combined functions (Full string less first and last character)
SELECT MODEL, SUBSTR(MODEL, 2, LENGTH(MODEL) - 2)
FROM LOT_CARS
;

-- Reverse a string
SELECT MODEL, REVERSE(MODEL)
FROM LOT_CARS
;

-- Default value when null
SELECT MAKE, MODEL, NVL(CONDITION_CD, 2)
FROM LOT_CARS
;

-- Joining tables with an NVL column
SELECT 
  LC.MAKE, 
  LC.MODEL, 
  CT.DESCRIPTION
FROM LOT_CARS LC,
     CONDITION_TBL CT
WHERE NVL(LC.CONDITION_CD, 2) = CT.CONDITION_CD
;




