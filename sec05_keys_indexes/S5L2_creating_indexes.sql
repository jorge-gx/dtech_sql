-- Primary Keys
-- Unique and Non-unique indexes


/* 
Creating primary key on lot_cars
vin will be pk
this is a unique index
*/

CREATE UNIQUE INDEX  "PK_LC" ON  "LOT_CARS" ("VIN");


/* 
Creating another index
now using color
this will NOT be unique
*/

CREATE INDEX  "IDX_LC_1" ON  "LOT_CARS" ("COLOR");