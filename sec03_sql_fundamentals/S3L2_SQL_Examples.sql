------
--  WHERE clauses
------


-- WHERE clause returning only Ford vehicles
SELECT * FROM LOT_CARS
 WHERE MAKE = 'Ford'
;

-- WHERE clause returning only Red Ford vehicles
SELECT * FROM LOT_CARS
 WHERE MAKE = 'Ford'
    OR COLOR = 'Red'
;

-- All Ford vehicles and all Red Toyota vehicles
SELECT * FROM LOT_CARS
 WHERE MAKE = 'Ford'
   OR (COLOR = 'Red'
         AND MAKE = 'Toyota'
      )
;

-- All cars except Fords:
SELECT * FROM LOT_CARS
 WHERE MAKE <> 'Ford'
;

-- All cars whose price is greater or equal to 10,000 dollars
SELECT * FROM LOT_CARS
 WHERE PRICE >= 10000
;
