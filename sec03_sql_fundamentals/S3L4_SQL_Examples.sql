------
--  JOINS
------


-- Common structure of a non-ANSI join
-- of two tables with table aliases
SELECT 
  LT.MAKE, 
  LT.MODEL, 
  LT.CONDITION_CD,
  CT.DESCRIPTION
FROM LOT_CARS LT,
     CONDITION_TBL CT
WHERE LT.CONDITION_CD = CT.CONDITION_CD
;

-- Structure of an ANSI join of two tables
-- using INNER JOIN keyword. Note that without
-- the word INNER, the INNER is implied.
SELECT
  LT.MAKE, 
  LT.MODEL, 
  LT.MODEL_YEAR,
  LT.COLOR,
  LT.CONDITION_CD,
  CT.DESCRIPTION
FROM LOT_CARS LT INNER JOIN CONDITION_TBL CT ON LT.CONDITION_CD = CT.CONDITION_CD
WHERE LT.MAKE = 'Ford'
ORDER BY LT.MAKE, LT.MODEL_YEAR DESC
;

-- Natural Join when the joined columns in each table
-- have the same column name
SELECT
  MAKE, 
  MODEL, 
  MODEL_YEAR,
  COLOR,
  CONDITION_CD,
  DESCRIPTION
FROM LOT_CARS NATURAL JOIN CONDITION_TBL
WHERE MAKE = 'Ford'
ORDER BY MAKE, MODEL_YEAR DESC
;







