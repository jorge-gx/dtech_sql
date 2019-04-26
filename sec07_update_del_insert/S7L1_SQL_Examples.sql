---
-- Simple Update
---
UPDATE RENT_CARS
SET STATE = 'UT', TAG = 'XX-0987'
WHERE VIN = 'YLWDMZU5DWMHAMUR5'
;

-- 1 row(s) updated.

/* commited */
COMMIT;


/*
when executing multiple updates BEFORE committing, 
they are looked at as a whole unit of work (a single transaction)
if rolled back, then all updates are rolled back. 
*/

---
-- Update with Correlated Subquery
---
UPDATE RENT_CARS RC
SET RC.IN_OUT = 'O'
WHERE EXISTS
(SELECT 'X'
  FROM RENTALS R
 WHERE RC.VIN = R.VIN
   AND R.DT_RETURN > TO_DATE('2017-04-15', 'YYYY-MM-DD')
 )
;

-- 1 row(s) updated.


---
-- Update with check not to update to same value
--- 
UPDATE RENT_CARS RC
SET RC.IN_OUT = 'O'
WHERE EXISTS
(SELECT 'X'
  FROM RENTALS R
 WHERE RC.VIN = R.VIN
   AND R.DT_RETURN > TO_DATE('2017-04-15', 'YYYY-MM-DD')
 )
AND RC.IN_OUT <> 'O'
;

-- 0 row(s) updated.

/* commit */
COMMIT;