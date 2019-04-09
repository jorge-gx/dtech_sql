---
-- Uncorrelated Subquery
---
SELECT COLOR, COUNT(*) 
  FROM LOT_CARS
 GROUP BY COLOR
HAVING COUNT(*) = (
          SELECT MAX(COUNT(*)) 
           FROM LOT_CARS
          GROUP BY COLOR
        )
;