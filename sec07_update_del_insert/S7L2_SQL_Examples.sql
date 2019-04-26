---
-- Simple Delete
---
DELETE FROM RENT_CARS
WHERE VIN = 'YLWDMZU5DWMHAMUR5'
;

---
-- Delete with correlated subquery
---
DELETE FROM RENT_CARS RC
WHERE NOT EXISTS (
  SELECT 'X'
    FROM RENTALS R
  WHERE RC.VIN = R.VIN
  )
;


/*
-- Referential Integrity
-- Cascading Deletes
*/