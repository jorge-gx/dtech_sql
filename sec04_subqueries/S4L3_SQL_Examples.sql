--- 
-- Correlated SubQuery
---

-- list the cars of each make whose price is above the avg of that *make*

SELECT *
FROM LOT_CARS LC
WHERE PRICE > (
    SELECT AVG(PRICE) FROM LOT_CARS LC2
     WHERE LC2.MAKE = LC.MAKE
)
;