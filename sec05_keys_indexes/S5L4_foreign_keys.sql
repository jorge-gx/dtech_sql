-- Foreign Keys


select * from condition_tbl;


/*
column condition_cd is a perfect candidate for a primary key
the name for the key needs to be unique
*/

alter table "CONDITION_TBL" add constraint
"PK_CT" primary key ("CONDITION_CD");


/* now table sql looks like this: */

CREATE TABLE  "CONDITION_TBL" 
   (	"CONDITION_CD" NUMBER(1,0), 
	"DESCRIPTION" VARCHAR2(15), 
	 CONSTRAINT "PK_CT" PRIMARY KEY ("CONDITION_CD")
  USING INDEX  ENABLE
   );


/*
now in lot_cars
we can create a constraint -- foreign key
on condition_cd
*/

alter table "LOT_CARS" add constraint
"FK_LC_CT" foreign key ("CONDITION_CD") references "CONDITION_TBL" ("CONDITION_CD");