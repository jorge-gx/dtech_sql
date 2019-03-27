------
--  Date Functions
------



-- Get Current Date
SELECT SYSDATE FROM DUAL;

-- Get Current Date / Time
SELECT SYSTIMESTAMP FROM DUAL;

-- Get Day (Full Text)
SELECT SYSDATE, TO_CHAR(SYSDATE, 'DAY') FROM DUAL;

-- Get Day (Full text - Mixed Case)
SELECT SYSDATE, TO_CHAR(SYSDATE, 'Day') FROM DUAL;

-- Get Day (Abbreviation)
SELECT SYSDATE, TO_CHAR(SYSDATE, 'DY') FROM DUAL;

-- Get Day (Abbreviation - Mixed Case)
SELECT SYSDATE, TO_CHAR(SYSDATE, 'Dy') FROM DUAL;

-- Day of the Month
SELECT TO_CHAR(SYSDATE, 'DD') FROM DUAL;

-- Day of the Year
SELECT TO_CHAR(SYSDATE, 'DDD') FROM DUAL;

-- Get Month (Full Text)
SELECT TO_CHAR(SYSDATE, 'MONTH') FROM DUAL;

-- Get Month (Full Text - Mixed Case)
SELECT TO_CHAR(SYSDATE, 'Month') FROM DUAL;

 -- Get Month (Abbreviation)
SELECT TO_CHAR(SYSDATE, 'MON') FROM DUAL;

-- Get Month (Full Text - Mixed Case)
SELECT TO_CHAR(SYSDATE, 'Mon') FROM DUAL;

-- 2 Digit Month
SELECT TO_CHAR(SYSDATE, 'MM') FROM DUAL;

-- Get 4 Digit Year
SELECT TO_CHAR(SYSDATE, 'YYYY') FROM DUAL;

-- Get 3 Digit Year
SELECT TO_CHAR(SYSDATE, 'YYY') FROM DUAL;

-- Get 2 Digit Year
SELECT TO_CHAR(SYSDATE, 'YY') FROM DUAL;

-- Get 1 Digit Year
SELECT TO_CHAR(SYSDATE, 'Y') FROM DUAL;

-- Full Text Year
SELECT TO_CHAR(SYSDATE, 'Year') FROM DUAL;

-- Formatted Full Date (Long Form)
SELECT TO_CHAR(SYSDATE, 'DL') FROM DUAL;

-- Formatted Full Date (Short Form)
SELECT TO_CHAR(SYSDATE, 'DS') FROM DUAL;

-- TO_CHAR with various Format Models
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'Dy, Mon DD, YYYY') FROM DUAL;
SELECT TO_CHAR(SYSTIMESTAMP, 'Dy, Mon DD, YYYY') FROM DUAL;

-- Time Stamps
-- Hours from Timestamp (12 hour clock)
SELECT TO_CHAR(SYSTIMESTAMP, 'HH') FROM DUAL;
SELECT TO_CHAR(SYSTIMESTAMP, 'HH12') FROM DUAL;

-- Hours from Timestamp (24 hour clock)
SELECT TO_CHAR(SYSTIMESTAMP, 'HH24') FROM DUAL;

-- Minutes from a Timestamp
SELECT TO_CHAR(SYSTIMESTAMP, 'MI') FROM DUAL;

-- Seconds from a Timestamp
SELECT TO_CHAR(SYSTIMESTAMP, 'SS') FROM DUAL;

-- AM/PM (Both return identical results)
SELECT TO_CHAR(SYSTIMESTAMP, 'AM') FROM DUAL;
SELECT TO_CHAR(SYSTIMESTAMP, 'PM') FROM DUAL;

-- Fractional Seconds from a Timestamp
SELECT TO_CHAR(SYSTIMESTAMP, 'FF') FROM DUAL;

-- Fractional Seconds from a Timestamp - 2 positions
SELECT TO_CHAR(SYSTIMESTAMP, 'FF2') FROM DUAL;

-- Formatted time
SELECT TO_CHAR(SYSTIMESTAMP, 'HH:MI:SS.FF1 AM') FROM DUAL;

-- Formatted Date and Time 
SELECT TO_CHAR(SYSTIMESTAMP, 'Dy, Mon DD, YYYY HH:MI:SS.FF1 AM') FROM DUAL;

--- Date Arithmetic
-- Add one day (Tomorrow)
SELECT TO_CHAR(SYSDATE + 1, 'Dy, Mon DD, YYYY') FROM DUAL;

-- Subtract 1 Day (Yesterday)
SELECT TO_CHAR(SYSDATE - 1, 'Dy, Mon DD, YYYY') FROM DUAL;

-- Add 7 Days (Next Week)_
SELECT TO_CHAR(SYSDATE + 7, 'Dy, Mon DD, YYYY') FROM DUAL;

-- Add a Month to Today
SELECT TO_CHAR(ADD_MONTHS(SYSDATE, 1), 'Dy, Mon DD, YYYY') FROM DUAL;

-- Add a Year to Today
SELECT TO_CHAR(ADD_MONTHS(SYSDATE, 12), 'Dy, Mon DD, YYYY') FROM DUAL;

-- String to Date
SELECT TO_DATE('Dec 14, 2015', 'Mon DD, YYYY') FROM DUAL;
SELECT TO_DATE('2015-12-14', 'YYYY-MM-DD') FROM DUAL;




