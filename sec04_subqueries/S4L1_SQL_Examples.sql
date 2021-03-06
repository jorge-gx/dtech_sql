------
--  IN CONDITION Subqueries
------

-- In Subquery
SELECT *
FROM LOT_CARS
WHERE CONDITION_CD IN 
(
   SELECT CONDITION_CD
      FROM CONDITION_TBL
  WHERE UPPER(DESCRIPTION) LIKE '%O%'
)
;

-- Not In Subquery
SELECT *
FROM LOT_CARS
WHERE CONDITION_CD NOT IN 
(
   SELECT CONDITION_CD
      FROM CONDITION_TBL
  WHERE UPPER(DESCRIPTION) LIKE '%O%'
)
;

-- In List
SELECT *
FROM LOT_CARS
WHERE UPPER(COLOR) IN ('RED', 'BLUE')
;

 -- Not In List
SELECT *
FROM LOT_CARS
WHERE UPPER(COLOR) NOT IN ('RED', 'BLUE')
;