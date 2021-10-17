CREATE TABLE bank_details(
	product VARCHAR(30),
    quantity INT,
    price REAL,
    purchase_cost DECIMAL(6,2),
    estimated_sales_price FLOAT
);
SELECT * FROM bank_details;
DESCRIBE bank_details;
INSERT INTO bank_details VALUES ('payCard',3,330,8008,9009);
INSERT INTO bank_details VALUES ('payPoints',4,200,8000,6800);
ALTER TABLE bank_details ADD COLUMN geo_location VARCHAR(20);
SELECT geo_location FROM bank_details WHERE product='payCard';
SELECT product,LENGTH(product) FROM bank_details WHERE product='payCard';
ALTER TABLE bank_details MODIFY product CHAR(10);
ALTER TABLE bank_details MODIFY product VARCHAR(20);
-- REDUCING SIZE TO LESS THAN 9 IS NOT POSSIBLE IT WILL PRODUCE AN ERROR.
ALTER TABLE bank_details MODIFY product VARCHAR(6);

CREATE TABLE bank_holidays(
	holiday DATE,
    start_time DATETIME,
    end_time TIMESTAMP
);
DESCRIBE bank_holidays;
SELECT * FROM bank_holidays;
INSERT INTO bank_holidays VALUES (CURRENT_DATE(),CURRENT_DATE(),CURRENT_DATE());
UPDATE bank_holidays SET holiday = DATE_ADD(holiday,INTERVAL 1 DAY);
UPDATE bank_holidays SET end_time = UTC_TIMESTAMP();
-- DISPLAYING EXISTING COLUMN BY NEW NAME 
SELECT product AS new_product FROM bank_details;
-- DISPLAY ONLY ONE RECORD
SELECT * FROM bank_details LIMIT 1;
-- PRINTING A SUBSTRING IN SQL 
SELECT SUBSTR(geo_location,1,5) FROM bank_details;