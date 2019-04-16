---
-- Individual SQL statements for each table
---
SELECT VIN, MAKE, MODEL FROM LOT_CARS;

SELECT VIN, MAKE, MODEL FROM RENT_CARS;

---
-- Union both queries to form a single result set
---
SELECT VIN, MAKE, MODEL FROM LOT_CARS
UNION 
SELECT VIN, MAKE, MODEL FROM RENT_CARS;

---
-- Error resulting from unmatched columns (4 in top, 3 in bottom)
---
SELECT VIN, MAKE, MODEL, MODEL_YEAR FROM LOT_CARS
UNION 
SELECT VIN, MAKE, MODEL FROM RENT_CARS;


---
-- Valid Union with different columns, but the same 
-- column type (MODEL_YEAR, MILEAGE)
---
SELECT VIN, MAKE, MODEL, MODEL_YEAR FROM LOT_CARS
UNION 
SELECT VIN, MAKE, MODEL, MILEAGE FROM RENT_CARS;


---
-- Error resulting from mismatched column types, 
-- MODEL_YEAR (Numeric) on top, STATE (String) on bottom
---
SELECT VIN, MAKE, MODEL, MODEL_YEAR FROM LOT_CARS
UNION 
SELECT VIN, MAKE, MODEL, STATE FROM RENT_CARS;


---
-- Union will remove duplicate result rows
---
SELECT MAKE, MODEL FROM LOT_CARS
UNION 
SELECT MAKE, MODEL FROM RENT_CARS;

---
-- Union All will retain duplicate result rows
---
SELECT MAKE, MODEL FROM LOT_CARS
UNION ALL
SELECT MAKE, MODEL FROM RENT_CARS;

