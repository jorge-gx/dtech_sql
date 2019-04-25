---
-- Cross Join, or Cartesian Join of two tables
---
SELECT *
FROM RENT_CARS CROSS JOIN RENTALS
;

---
-- Getting the number of rows in the table to the
-- power of 3: 30**3 = 27,000 Rows
---
SELECT *
FROM LOT_CARS CROSS JOIN LOT_CARS CROSS JOIN LOT_CARS 
;