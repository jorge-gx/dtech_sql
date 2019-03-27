------
--  Numeric Functions
------



-- Square Root
SELECT SQRT(3600) FROM DUAL;

-- 3 to the 2nd power (3 squared)
SELECT POWER(3, 2) FROM DUAL;

-- Standard math expressions
SELECT 5 * ( 4 + 2) FROM DUAL;

-- Absolute Value
SELECT ABS(-23) FROM DUAL;

-- Round to 2 decimal places
SELECT ROUND(125.1286,2) FROM DUAL;

-- Round to the nearest thousand
SELECT ROUND(12545, -3) FROM DUAL;

-- Integer portion of a number (No rounding)
SELECT TRUNC(12345.999) FROM DUAL;

-- Convert number to string
SELECT 12345, TO_CHAR(12345) FROM DUAL;

-- Combined Functions
SELECT TO_CHAR(SQRT(ROUND(ABS(ROUND(-643498.348373,2)),-4) / 10000)) FROM DUAL;

-- 10% Discounted Price
SELECT MAKE, MODEL, PRICE, PRICE - (PRICE * .1) AS DISCOUNT
FROM LOT_CARS;

-- Display price as nnK (ie, 11984 -> 12K)
SELECT MAKE, MODEL, PRICE, TO_CHAR(ROUND(PRICE,-3) / 1000) || 'K' AS PRICE_IN_K
FROM LOT_CARS;