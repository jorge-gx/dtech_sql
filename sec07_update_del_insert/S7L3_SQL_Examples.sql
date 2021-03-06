---
-- Basic Insert with Values
---
INSERT INTO LOT_CARS (VIN, MAKE, MODEL, MODEL_YEAR, MILEAGE, COLOR, PRICE, CONDITION_CD) 
VALUES
('XXXXX7777733333II', 'Honda', 'Accord', 2017, 876, 'Red', 22938, 3)
;

---
-- Insert from a select of another table
---
INSERT INTO LOT_CARS_COPY
(VIN, MAKE, MODEL, MODEL_YEAR, MILEAGE, COLOR, PRICE, CONDITION_CD)
SELECT VIN, MAKE, MODEL, MODEL_YEAR, MILEAGE, COLOR, PRICE, CONDITION_CD 
FROM LOT_CARS
;


---
--Insert from a select of another table (Short Form)
---
INSERT INTO LOT_CARS_COPY
SELECT * FROM LOT_CARS
;

---
-- Cross Join to insert large volume of data
--- 
INSERT INTO LOT_CARS_COPY
SELECT LC1.* FROM LOT_CARS LC1 CROSS JOIN LOT_CARS LC2 CROSS JOIN LOT_CARS LC3
;