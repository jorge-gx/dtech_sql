-- Unique Constraints


/*
Note: the vin is the same as another car already in the table
We get an error when trying to insert the row:
ORA-00001: unique constraint (DEVORAJG.PK_LC) violated
*/

Insert into LOT_CARS 
(VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) 
values ('90P22RCFGRFFNADM2','Kia','Soul',2016,22993,'Blue',18999,2);


/* 
trying again with a unique vin # 
*/

Insert into LOT_CARS 
(VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) 
values ('90PXYRCFGRFFNADM2','Kia','Soul',2016,22993,'Blue',18999,2);

/* you can commit or rollback */
ROLLBACK;

/* 
In Apex, all statements are automatically commited, 
so i have to delete the last row i inserted
*/

DELETE FROM LOT_CARS 
WHERE VIN = '90PXYRCFGRFFNADM2';

-- 1 row(s) deleted.