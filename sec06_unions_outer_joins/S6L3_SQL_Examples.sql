/* OUTER JOINS */


select * from rent_cars;
-- i have four cars that can be rented
select * from rentals;
-- i have three occurences of actual rentals

-- we can join by vin to get a combined look


---
-- Inner join of RENT_CARS and RENTALS where VINs match
---
SELECT RC.VIN, 
       RC.MAKE, 
       RC.MODEL, 
       RC.MODEL_YEAR, 
       RC.MILEAGE, 
       RC.STATE, 
       RC.TAG, 
       RC.IN_OUT, 
       R.RENTAL_ID, 
       R.DT_OUT, 
       R.DT_RETURN
FROM RENT_CARS RC, 
     RENTALS R
WHERE RC.VIN = R.VIN
;
 
---
-- Left Outer Join 
---
SELECT RC.VIN, 
       RC.MAKE, 
       RC.MODEL, 
       RC.MODEL_YEAR, 
       RC.MILEAGE, 
       RC.STATE, 
       RC.TAG, 
       RC.IN_OUT, 
       R.RENTAL_ID, 
       R.DT_OUT, 
       R.DT_RETURN
FROM RENT_CARS RC LEFT OUTER JOIN  RENTALS R ON RC.VIN = R.VIN
;


---
-- Correlated Subquery returns max DT_OUT for each VIN
---
SELECT R.VIN, R.RENTAL_ID, R.DT_OUT, R.DT_RETURN
FROM RENTALS R 
WHERE R.DT_OUT = (
                 SELECT MAX(R_DT.DT_OUT)
                  FROM RENTALS R_DT
                 WHERE R.VIN = R_DT.VIN
                )
;



---
-- Using a query as a table with a table alias
---
SELECT RQ.VIN, RQ.RENTAL_ID, RQ.DT_OUT, RQ.DT_RETURN FROM 
(
  SELECT R.VIN, R.RENTAL_ID, R.DT_OUT, R.DT_RETURN
  FROM RENTALS R 
  WHERE R.DT_OUT = (
                   SELECT MAX(R_DT.DT_OUT)
                    FROM RENTALS R_DT
                   WHERE R.VIN = R_DT.VIN
                  )
) RQ
;

---
-- Left Outer Join using query as Right "table"
---
SELECT RC.VIN, 
       RC.MAKE, 
       RC.MODEL, 
       RC.MODEL_YEAR, 
       RC.MILEAGE, 
       RC.STATE, 
       RC.TAG, 
       RC.IN_OUT, 
       RQ.RENTAL_ID, 
       RQ.DT_OUT, 
       RQ.DT_RETURN
FROM RENT_CARS RC LEFT OUTER JOIN 
    (
      SELECT R.VIN, R.RENTAL_ID, R.DT_OUT, R.DT_RETURN
      FROM RENTALS R 
      WHERE R.DT_OUT = (
                       SELECT MAX(R_DT.DT_OUT)
                        FROM RENTALS R_DT
                       WHERE R.VIN = R_DT.VIN
                      )
    ) RQ ON RC.VIN = RQ.VIN
;