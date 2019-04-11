DROP TABLE LOT_CARS
;

CREATE TABLE LOT_CARS 
   (VIN VARCHAR2(20 BYTE),
    MAKE VARCHAR2(10 BYTE), 
	MODEL VARCHAR2(20 BYTE), 
	MODEL_YEAR NUMBER(4,0), 
	MILEAGE NUMBER(10,0), 
	COLOR VARCHAR2(10 BYTE),
	PRICE NUMBER(10,2), 
	CONDITION_CD NUMBER(1,0)
   ) 
;


Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('90P22RCFGRFFNADM2','Honda','Accord',2015,35234,'Blue',14999,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('WCD9C2PD7KTJFSNTK','Nissan','Altima',2012,72434,'Black',7999,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('6278NI2TLE480J3NU','Ford','Focus',2016,9873,'Red',12005,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('RGBPM7AWM7539BMHU','Chevrolet','Impala',2014,134384,'Red',3029,1);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('J044PYREL38GUFK0R','Ford','F-150',2000,187234,'Silver',4099,2);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('IA1U3PEEQSEG39O95','Mazda','CX-3',2017,6,'Red',19960,4);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('OTLM51EY32PHNYOEB','Toyota','Camry',2007,23434,'White',31998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('6P79XRWJ5112U8XAF','Toyota','Corolla',2013,48123,'Beige',12559,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('1Q25GE3KKCD243L5A','Toyota','Prius',2015,50893,'Blue',15599,4);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('JL028YMN7VNVDIR7P','Toyota','Sienna',2015,48338,'Grey',20998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('45SFRAJNZW05BBKNU','Toyota','Tacoma',2007,37634,'Red',23998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('A582OXYSCSMBR1H7X','Toyota','Tundra',2013,33987,'Black',26998,2);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('ICGT6LX2DAY7VQX0M','Toyota','Yaris',2015,44023,'Black',10998,4);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('LF5NWHK122K57UJIR','Honda','Odyssey',2015,50938,'Grey',26998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('5Q9SDIJ1VTOQDE7RX','Honda','Pilot',2008,64958,'White',16559,4);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('OEPIJFIECSRMV23Y4','Honda','Civic',2015,99833,'Silver',9998,1);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('IBJ5MBYCMUZ8UZ9KW','Honda','Accord',2014,16093,'Black',20998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('C3YAJ31J0EL4UX72X','Acura','ILX',2014,27483,'Black',17998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('KT2W01KISAHNWP3PU','Chrysler','Town and Country',2016,29887,'Black',22559,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('CN162BYRR5WKOSK1W','Dodge','Challenger',2014,19873,'White',28998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('VALGUV8R6ZRNP8YSV','Dodge','Challenger',2014,19883,'Orange',33998,4);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('4ADVCK8SKQC2U6DXI','Kia','Forte',2015,29887,'Silver',11998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('6YL24T1XP16QJ10U2','Kia','Optima',2016,7234,'Blue',17998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('NWM5OVCSWPF54IXLB','Kia','Sedona',2016,24324,'Brown',18599,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('A2MW1ZF2239TFTZZG','Kia','Soul',2015,34834,'White',12599,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('C1SUZVBH9YJVACHT5','Lexus','ES 350',2007,24243,'Maroon',16998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('X2TIPZPEHA5SW6R6W','Lexus','GX 460',2013,14243,'White',39998,4);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('CXGMSCKGXASKV87W9','Nissan','Maxima',2016,18373,'Red',30998,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('BPZ6QI20RRH9FVWSR','Nissan','Murano',2014,31834,'Silver',22599,3);
Insert into LOT_CARS (VIN,MAKE,MODEL,MODEL_YEAR,MILEAGE,COLOR,PRICE,CONDITION_CD) values ('ZA5PD04AAVYMDJHIV','Nissan','Rogue',2015,25214,'Blue',24998,null);


COMMIT;
