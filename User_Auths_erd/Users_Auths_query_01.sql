-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);

INSERT INTO authnames (AUTH_NAME, UNIQUE_ID)
VALUES ('GUEST', 'B1');
INSERT INTO authnames (AUTH_NAME, UNIQUE_ID)
VALUES ('ADMIN', 'B2');
INSERT INTO authnames (AUTH_NAME, UNIQUE_ID)
VALUES ('MANAGER', 'B3');

-- DELETE FROM table_name WHERE condition;
DELETE FROM authnames 
WHERE UNIQUE_ID = 'B2';

DELETE FROM authnames 
WHERE AUTH_NAME = 'ADMIN';

-- UPDATE Customers
-- SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
-- WHERE CustomerID = 1;

UPDATE authnames
SET AUTH_NAME = 'GUEST'
WHERE UNIQUE_ID = 'B1';

UPDATE authnames
SET UNIQUE_ID = 'B2'
WHERE UNIQUE_ID = 'B4';

UPDATE authnames
SET AUTH_NAME = 'GUEST_01'
WHERE UNIQUE_ID = 'B3';

SELECT *
FROM authnames;