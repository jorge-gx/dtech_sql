------
--  Aggregate Functions


-- Count all rows in the table
SELECT COUNT(*) FROM LOT_CARS;

-- Count all values in a table column
-- Note that this will not count
-- rows with a null in the CONDITION_CD column
SELECT COUNT(CONDITION_CD) FROM LOT_CARS;

-- Count all distinct values in the MAKE column
SELECT COUNT(DISTINCT MAKE) FROM LOT_CARS;


-- get make , model yr and how many of that year
select make, model_year,count(model_year)
from lot_cars
group by make, model_year
order by make;

-- count how many distinct years per car make
select make,  count(distinct model_year)
from lot_cars
group by make
order by make;


-- CHALLENGE -- -- -- -- -- 
-- Write a sql statement that returns the # of vehicles of each make and of each condition description (not code)
select lt.make, ct.description, count(*)
from lot_cars lt
     , condition_tbl ct
where lt.condition_cd = ct.condition_cd
group by lt.make, ct.description
order by lt.make, ct.description
;

-- alternative
select make, description, count(*)
from lot_cars inner join condition_tbl using (condition_cd)
group by make, description
order by make;


-- COUNT function, grouping by joined table columns
-- and a column alias (QUANTITY) - Non-ANSI
SELECT LT.MAKE, CT.DESCRIPTION, COUNT(*) AS QUANTITY 
FROM LOT_CARS LT, 
     CONDITION_TBL CT
WHERE LT.CONDITION_CD = CT.CONDITION_CD
GROUP BY LT.MAKE, CT.DESCRIPTION
ORDER BY LT.MAKE
;

-- COUNT function, grouping by joined table columns
-- and a column alias (QUANTITY) - ANSI Natural Join
SELECT MAKE, DESCRIPTION, COUNT(*) AS QUANTITY 
FROM LOT_CARS NATURAL JOIN CONDITION_TBL
GROUP BY MAKE, DESCRIPTION
ORDER BY MAKE
;

-- Minimum PRICE by MAKE
-- what's the lowest price for each make of car?
SELECT MAKE, MIN(PRICE)
  FROM LOT_CARS
GROUP BY MAKE
ORDER BY MAKE
;

-- Maximum PRICE by MAKE
SELECT MAKE, MAX(PRICE)
 FROM LOT_CARS
GROUP BY MAKE
ORDER BY MAKE
;

-- Average PRICE across each MAKE
-- takes the average of all non-null rows, it ignores nulls in calculation
SELECT MAKE, AVG(PRICE)
 FROM LOT_CARS
GROUP BY MAKE
ORDER BY MAKE
;

-- Total MILEAGE by MAKE
SELECT MAKE, SUM(MILEAGE)
 FROM LOT_CARS
GROUP BY MAKE
ORDER BY MAKE
;

-- Multiple functions 
SELECT MAKE, MIN(PRICE),  MAX(PRICE), AVG(PRICE), SUM(MILEAGE)
 FROM LOT_CARS
GROUP BY MAKE
ORDER BY MAKE
;

