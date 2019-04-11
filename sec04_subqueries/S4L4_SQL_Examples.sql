---
-- Exists Condition Subqueries
---

/*-- Notes:
find all of the cars where the car's condition exists in the condition table
this is a correlated query on condition code column
note: not selecting column in inner query
it's just used to establish the correlation between queries
it's common to use subqueries in insert, delete, and update statements
*/


-- Exists
SELECT *
FROM LOT_CARS LC
WHERE  EXISTS
(
  SELECT 'X'
  FROM CONDITION_TBL CT
  WHERE CT.CONDITION_CD = LC.CONDITION_CD
)
;


-- Not Exists
SELECT *
FROM LOT_CARS LC
WHERE NOT EXISTS
(
  SELECT 'X'
  FROM CONDITION_TBL CT
  WHERE CT.CONDITION_CD = LC.CONDITION_CD
)
;