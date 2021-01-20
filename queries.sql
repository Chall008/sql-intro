corey@/tmp:CompanyDatabase> CREATE TABLE "Employees" (
........................... "FullName" TEXT NOT NULL,
........................... "Salary" MONEY,
........................... "PhoneExtension" VARCHAR(10),
........................... "IsPartTime" BOOL
........................... );
CREATE TABLE
Time: 0.018s
corey@/tmp:CompanyDatabase> ALTER TABLE "Employees"
........................... ADD "JobPosition" TEXT;
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
ALTER TABLE
Time: 0.008s
corey@/tmp:CompanyDatabase> SELECT * FROM "Employees";
+------------+----------+------------------+--------------+---------------+
| FullName   | Salary   | PhoneExtension   | IsPartTime   | JobPosition   |
|------------+----------+------------------+--------------+---------------|
+------------+----------+------------------+--------------+---------------+
SELECT 0
Time: 0.017s
corey@/tmp:CompanyDatabase>


INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Corey Hall', 500, 111, True, 'Accountant');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('George Riley', 1000, 300, True, 'Junior Web Developer');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Logan Riley', 2000, 200, False, 'Media Buyer');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Courtney Fox', 2000, 210, False, 'Media Buyer');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Christian Mink', 500, 122, True, 'Accountant');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Taylor Smith', 3000, 310, False, 'Senior Web Developer');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Dale Buxton', 3000, 320, False, 'Senior Web Developer');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Mike Boyd', 1000, 133, True, 'Accountant');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Cody Johnson', 4000, 400, False, 'Internal Auditor');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Lazy Larry', 100, 100, True, 'Cook');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Krazy Karl', 100, 100, True, 'Cook');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Alfie Fox', 100, 100, True, 'Cook');

INSERT INTO "Employees"
("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPosition")
VALUES ('Bud Hosler', 450, 100, True, 'Cook');

--  Select all columns for all employees.

corey@/tmp:CompanyDatabase> SELECT * FROM "Employees";
+----------------+-----------+------------------+--------------+----------------------+
| FullName       | Salary    | PhoneExtension   | IsPartTime   | JobPosition          |
|----------------+-----------+------------------+--------------+----------------------|
| Corey Hall     | $500.00   | 111              | True         | Accountant           |
| George Riley   | $1,000.00 | 300              | True         | Junior Web Developer |
| Logan Riley    | $2,000.00 | 200              | False        | Media Buyer          |
| Courtney Fox   | $2,000.00 | 210              | False        | Media Buyer          |
| Christian Mink | $500.00   | 122              | True         | Accountant           |
| Taylor Smith   | $3,000.00 | 310              | False        | Senior Web Developer |
| Dale Buxton    | $3,000.00 | 320              | False        | Senior Web Developer |
| Mike Boyd      | $1,000.00 | 133              | True         | Accountant           |
| Cody Johnson   | $4,000.00 | 400              | False        | Internal Auditor     |
| Lazy Larry     | $100.00   | 100              | True         | Cook                 |
| Krazy Karl     | $100.00   | 100              | True         | Cook                 |
| Alfie Fox      | $100.00   | 100              | True         | Cook                 |
+----------------+-----------+------------------+--------------+----------------------+
SELECT 12
Time: 0.013s
--  Select only the full names and phone extensions for only full-time employees.

corey@/tmp:CompanyDatabase> SELECT "FullName","PhoneExtension" FROM "Employees" WHERE "Is
........................... PartTime" = False;
+--------------+------------------+
| FullName     | PhoneExtension   |
|--------------+------------------|
| Logan Riley  | 200              |
| Courtney Fox | 210              |
| Taylor Smith | 310              |
| Dale Buxton  | 320              |
| Cody Johnson | 400              |
+--------------+------------------+
SELECT 5
Time: 0.012s




--  Insert a new part-time employee, as a software developer, with a salary of 450. Make up values for the other columns.

corey@/tmp:CompanyDatabase> INSERT INTO "Employees"
........................... ("FullName", "Salary", "PhoneExtension", "IsPartTime", "JobPo
........................... sition")
........................... VALUES ('Bud Hosler', 450, 100, True, 'Cook');
INSERT 0 1
Time: 0.004s




--  Update all employees that are cooks to have a salary of 500.

corey@/tmp:CompanyDatabase> UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Cook';
UPDATE 4
Time: 0.002s
corey@/tmp:CompanyDatabase> SELECT * FROM "Employees";
+----------------+-----------+------------------+--------------+----------------------+
| FullName       | Salary    | PhoneExtension   | IsPartTime   | JobPosition          |
|----------------+-----------+------------------+--------------+----------------------|
| Corey Hall     | $500.00   | 111              | True         | Accountant           |
| George Riley   | $1,000.00 | 300              | True         | Junior Web Developer |
| Logan Riley    | $2,000.00 | 200              | False        | Media Buyer          |
| Courtney Fox   | $2,000.00 | 210              | False        | Media Buyer          |
| Christian Mink | $500.00   | 122              | True         | Accountant           |
| Taylor Smith   | $3,000.00 | 310              | False        | Senior Web Developer |
| Dale Buxton    | $3,000.00 | 320              | False        | Senior Web Developer |
| Mike Boyd      | $1,000.00 | 133              | True         | Accountant           |
| Cody Johnson   | $4,000.00 | 400              | False        | Internal Auditor     |
| Lazy Larry     | $500.00   | 100              | True         | Cook                 |
| Krazy Karl     | $500.00   | 100              | True         | Cook                 |
| Alfie Fox      | $500.00   | 100              | True         | Cook                 |
| Bud Hosler     | $500.00   | 100              | True         | Cook                 |
+----------------+-----------+------------------+--------------+----------------------+
SELECT 13
Time: 0.013s

--  Delete all employees that have the full name of "Lazy Larry".

corey@/tmp:CompanyDatabase> DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
DELETE 1
Time: 0.006s

corey@/tmp:CompanyDatabase> SELECT * FROM "Employees";
+----------------+-----------+------------------+--------------+----------------------+
| FullName       | Salary    | PhoneExtension   | IsPartTime   | JobPosition          |
|----------------+-----------+------------------+--------------+----------------------|
| Corey Hall     | $500.00   | 111              | True         | Accountant           |
| George Riley   | $1,000.00 | 300              | True         | Junior Web Developer |
| Logan Riley    | $2,000.00 | 200              | False        | Media Buyer          |
| Courtney Fox   | $2,000.00 | 210              | False        | Media Buyer          |
| Christian Mink | $500.00   | 122              | True         | Accountant           |
| Taylor Smith   | $3,000.00 | 310              | False        | Senior Web Developer |
| Dale Buxton    | $3,000.00 | 320              | False        | Senior Web Developer |
| Mike Boyd      | $1,000.00 | 133              | True         | Accountant           |
| Cody Johnson   | $4,000.00 | 400              | False        | Internal Auditor     |
| Krazy Karl     | $500.00   | 100              | True         | Cook                 |
| Alfie Fox      | $500.00   | 100              | True         | Cook                 |
| Bud Hosler     | $500.00   | 100              | True         | Cook                 |
+----------------+-----------+------------------+--------------+----------------------+
SELECT 12
Time: 0.012s

--  Add a column to the table: ParkingSpot as textual information that can store up to 10 characters.

corey@/tmp:CompanyDatabase> ALTER TABLE "Employees" ADD "ParkingSpot" VARCHAR(10);
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
ALTER TABLE
Time: 0.008s
corey@/tmp:CompanyDatabase> SELECT * FROM "Employees";
+----------------+-----------+------------------+--------------+----------------------+---------------+
| FullName       | Salary    | PhoneExtension   | IsPartTime   | JobPosition          | ParkingSpot   |
|----------------+-----------+------------------+--------------+----------------------+---------------|
| Corey Hall     | $500.00   | 111              | True         | Accountant           | <null>        |
| George Riley   | $1,000.00 | 300              | True         | Junior Web Developer | <null>        |
| Logan Riley    | $2,000.00 | 200              | False        | Media Buyer          | <null>        |
| Courtney Fox   | $2,000.00 | 210              | False        | Media Buyer          | <null>        |
| Christian Mink | $500.00   | 122              | True         | Accountant           | <null>        |
| Taylor Smith   | $3,000.00 | 310              | False        | Senior Web Developer | <null>        |
| Dale Buxton    | $3,000.00 | 320              | False        | Senior Web Developer | <null>        |
| Mike Boyd      | $1,000.00 | 133              | True         | Accountant           | <null>        |
| Cody Johnson   | $4,000.00 | 400              | False        | Internal Auditor     | <null>        |
| Krazy Karl     | $500.00   | 100              | True         | Cook                 | <null>        |
| Alfie Fox      | $500.00   | 100              | True         | Cook                 | <null>        |
| Bud Hosler     | $500.00   | 100              | True         | Cook                 | <null>        |
+----------------+-----------+------------------+--------------+----------------------+---------------+
SELECT 12
Time: 0.013s


ADVENTURE MODE:::

 Add queries to queries.sql that show how to:
 Recreate your database and tables and use NOT NULL for columns you feel are required.
 Add a primary key named Id to your table.

 WED HOMEWORK!!!!!

 corey@/tmp:CompanyDatabase> CREATE TABLE "Employees" (
........................... "FullName" TEXT NOT NULL,
........................... "JobPosition" TEXT NOT NULL
........................... "Salary" MONEY,
........................... "PhoneExtension" VARCHAR(10),
........................... "IsPartTime" BOOL,
........................... "Id" SERIAL PRIMARY KEY
........................... );
corey@/tmp:CompanyDatabase> SELECT * FROM "Employees";
+----------------+---------------+------------+------------------+--------------+----------------+
| FullName       | JobPosition   | Salary     | PhoneExtension   | IsPartTime   | DepartmentId   |
|----------------+---------------+------------+------------------+--------------+----------------|
| Tim SMith      | Programer     | $40,000.00 | 123              | False        | 1              |
| Barbara Ramsey | Manager       | $80,000.00 | 234              | False        | 1              |
| Tom Jones      | Admin         | $32,000.00 | 456              | True         | 2              |
+----------------+---------------+------------+------------------+--------------+----------------+
SELECT 3

--  In your CompanyDatabase, add a table named Departments with the following columns:
-- Id as a primary key
-- DepartmentName as text
-- Building as text
corey@/tmp:CompanyDatabase> CREATE TABLE "Departments" (
........................... "Id" SERIAL PRIMARY KEY,
........................... "DepartmentNames" TEXT,
........................... "Building" TEXT
........................... );
CREATE TABLE
Time: 0.032s
corey@/tmp:CompanyDatabase> SELECT * FROM "Departments";
+------+-------------------+------------+
| Id   | DepartmentNames   | Building   |
|------+-------------------+------------|
| 1    | Development       | Main       |
| 2    | Marketing         | North      |
+------+-------------------+------------+
SELECT 2

--  Add a Foreign key DepartmentId to your Employees Table. If you have trouble, remove the existing employees by running truncate table "Employees".
corey@/tmp:CompanyDatabase> ALTER TABLE "Employees" ADD "DepartmentID" SERIAL PRIMARY KEY;

-- Add tables named Products and Orders.
-- Products should have the columns
-- Id as a primary key
-- Price as a data type that can store a number with decimal places (e.g. 45.12)
-- Name as textual data
-- Description as textual data
-- QuantityInStock as a data type that can store a number WITHOUT decimal places (e.g. 42)



corey@/tmp:CompanyDatabase> CREATE TABLE "Products" (
........................... "Id" SERIAL PRIMARY KEY,
........................... "Price" DECIMAL,
........................... "Name" TEXT,
........................... "Description" TEXT,
........................... "QauntityInStock" INT
........................... );
CREATE TABLE
Time: 0.010s

-- Orders should have the columns
-- Id as a primary key
-- OrderNumber as textual data
-- DatePlaced as a data type that can store a date (with Year, Month, and Day) -- or one with hours, minutes, and seconds. Student's choice.
-- Email as textual data
corey@/tmp:CompanyDatabase> CREATE TABLE "Orders" (
........................... "Id" SERIAL PRIMARY KEY,
........................... "OrderNumber" TEXT,
........................... "DatePlaced" DATE,
........................... "Email" TEXT
........................... );
CREATE TABLE
Time: 0.007s




--  In our company, one Order can have many Products and one Product can have many Orders. This will be a Many-to-Many relationship. Create the necessary table ProductOrders, foreign keys, and the OrderQuantity field needed for this to happen.
corey@/tmp:CompanyDatabase> CREATE TABLE "ProductOrders" (
........................... "Id" SERIAL PRIMARY KEY,
........................... "ProductId" INT,
........................... "OrderID" INT,
........................... "OrderQuantity" INT
........................... );
CREATE TABLE
Time: 0.012s



--  Create queries that can do the following:
-- Insert the following Departments
-- Department Name	Building
-- Development	Main
-- Marketing	North
INSERT INTO "Departments"
("DepartmentNames", "Building")
VALUES ('Development', 'Main');
INSERT INTO "Departments"
("DepartmentNames", "Building")
VALUES ('Marketing', 'North');
corey@/tmp:CompanyDatabase> INSERT INTO "Departments"
........................... ("DepartmentNames", "Building")
........................... VALUES ('Development', 'Main');
........................... INSERT INTO "Departments"
........................... ("DepartmentNames", "Building")
........................... VALUES ('Marketing', 'North');
INSERT 0 1
INSERT 0 1
Time: 0.006s
corey@/tmp:CompanyDatabase> SELECT * FROM "Departments";
+------+-------------------+------------+
| Id   | DepartmentNames   | Building   |
|------+-------------------+------------|
| 1    | Development       | Main       |
| 2    | Marketing         | North      |
+------+-------------------+------------+
SELECT 2
Time: 0.010s


--  Insert the following Employees
CREATE TABLE "Employees" (
"Id" SERIAL PRIMARY KEY,
"FullName" TEXT NOT NULL,
"Salary" MONEY,
"JobPosition" TEXT,
"PhoneExtension" VARCHAR(10),
"IsPartTime" BOOL
 );
ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments"("Id"); 
-- FullName	Salary	JobPosition	PhoneExtension	IsPartTime	Department Id
-- Tim Smith	40000	Programmer	123	false	1
-- Barbara Ramsey	80000	Manager	234	false	1
-- Tom Jones	32000	Admin	456	true	2
INSERT INTO "Employees"
("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES ('Tim SMith', 40000, 'Programer', 123, False, 1);

INSERT INTO "Employees"
("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES ('Barbara Ramsey', 80000, 'Manager', 234, False, 1);

INSERT INTO "Employees"
("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES ('Tom Jones', 32000, 'Admin', 456, True, 2);

corey@/tmp:CompanyDatabase> SELECT * FROM "Employees";
+----------------+---------------+------------+------------------+--------------+----------------+
| FullName       | JobPosition   | Salary     | PhoneExtension   | IsPartTime   | DepartmentId   |
|----------------+---------------+------------+------------------+--------------+----------------|
| Tim SMith      | Programer     | $40,000.00 | 123              | False        | 1              |
| Barbara Ramsey | Manager       | $80,000.00 | 234              | False        | 1              |
| Tom Jones      | Admin         | $32,000.00 | 456              | True         | 2              |
+----------------+---------------+------------+------------------+--------------+----------------+
SELECT 3
Time: 0.005s


-- Insert the following Products
corey@/tmp:CompanyDatabase> CREATE TABLE "Products" (
........................... "Id" SERIAL PRIMARY KEY,
........................... "Price" DECIMAL,
........................... "Name" TEXT,
........................... "Description" TEXT,
........................... "QuantityInStock" INT
........................... );
-- Price	Name	Description	QuantityInStock
-- 12.45	Widget	The Original Widget	100
-- 99.99	Flowbee	Perfect for haircuts	3

INSERT INTO "Products"
("Price", "Name", "Description", "QuantityInStock")
VALUES (12.45, 'Widget', 'The Original Widget', 100);

INSERT INTO "Products"
("Price", "Name", "Description", "QuantityInStock")
VALUES (99.99, 'Flowbee', 'Perfect For Haircuts', 3);

corey@/tmp:CompanyDatabase> SELECT * FROM "Products";
+------+---------+---------+----------------------+-------------------+
| Id   | Price   | Name    | Description          | QuantityInStock   |
|------+---------+---------+----------------------+-------------------|
| 1    | 12.45   | Widget  | The Original Widget  | 100               |
| 2    | 99.99   | Flowbee | Perfect For Haircuts | 3                 |
+------+---------+---------+----------------------+-------------------+
SELECT 2
Time: 0.012s

--  Insert a new order with order number X529, placed on Jan 1st, 2020 at 4:55PM, by someone with the email address "person@example.com"

corey@/tmp:CompanyDatabase> CREATE TABLE "Orders" (
........................... "Id" SERIAL PRIMARY KEY,
........................... "OrderNumber" TEXT,
........................... "DatePlaced" TIMESTAMP,
........................... "Email" TEXT
........................... );
INSERT INTO "Orders"
("OrderNumber", "DatePlaced", "Email")
VALUES ('x529', '2020-Jan-01 04:55 PM', 'TimSMith@gmail.com');


corey@/tmp:CompanyDatabase> INSERT INTO "Orders"
........................... ("OrderNumber", "DatePlaced", "Email")
........................... VALUES ('x529', '2020-Jan-01 04:55 PM', 'TimSMith@gmail.com');
INSERT 0 1
Time: 0.007s
corey@/tmp:CompanyDatabase> SELECT * FROM "Orders";
+------+---------------+---------------------+--------------------+
| Id   | OrderNumber   | DatePlaced          | Email              |
|------+---------------+---------------------+--------------------|
| 1    | x529          | 2020-01-01 16:55:00 | TimSMith@gmail.com |
+------+---------------+---------------------+--------------------+
SELECT 1




--  Add an order quantity of 3 for the product named Widget to the order X529
corey@/tmp:CompanyDatabase> CREATE TABLE "ProductOrders" (
........................... "Id" SERIAL PRIMARY KEY,
........................... "ProductId" INTEGER REFERENCES "Products"("Id"),
........................... "OrderID" INTEGER REFERENCES "Orders"("Id"),
........................... "OrderQuantity" INT
........................... );
CREATE TABLE

corey@/tmp:CompanyDatabase> INSERT INTO "ProductOrders"("OrderId", "ProductId", "OrderQuantity")
........................... VALUES (1, 1, 3);
INSERT 0 1
orey@/tmp:CompanyDatabase> SELECT * FROM "ProductOrders";
+------+-----------+-------------+-----------------+
| Id   | OrderId   | ProductId   | OrderQuantity   |
|------+-----------+-------------+-----------------|
| 1    | 1         | 1           | 3               |
| 2    | 1         | 2           | 2               |
+------+-----------+-------------+-----------------+
SELECT 2




--  Add an order quantity of 2 for the product named Flowbee to the order X529
corey@/tmp:CompanyDatabase> INSERT INTO "ProductOrders"("OrderId", "ProductId", "OrderQuantity")
........................... VALUES (1, 2, 2);
INSERT 0 1
orey@/tmp:CompanyDatabase> SELECT * FROM "ProductOrders";
+------+-----------+-------------+-----------------+
| Id   | OrderId   | ProductId   | OrderQuantity   |
|------+-----------+-------------+-----------------|
| 1    | 1         | 1           | 3               |
| 2    | 1         | 2           | 2               |
+------+-----------+-------------+-----------------+
SELECT 2





--  Given a building, return all employees that work in that building. Show this query for buildings named North Side, East Side, and finally a building that you actually have in your data -- even if your data doesn't have any departments in those buildings. NOTE this means you can't manually look up Ids and use them, you have to let SQL do that work. (Hint: JOIN)
corey@/tmp:CompanyDatabase> SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id" WHERE "Employees"."DepartmentId" = 2;
...........................
+------+------------+------------+---------------+------------------+--------------+----------------+------+-------------------+------------+
| Id   | FullName   | Salary     | JobPosition   | PhoneExtension   | IsPartTime   | DepartmentId   | Id   | DepartmentNames   | Building   |
|------+------------+------------+---------------+------------------+--------------+----------------+------+-------------------+------------|
| 3    | Tom Jones  | $32,000.00 | Admin         | 456              | True         | 2              | 2    | Marketing         | North      |
+------+------------+------------+---------------+------------------+--------------+----------------+------+-------------------+------------+
SELECT 1

corey@/tmp:CompanyDatabase> SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id" WHERE "Employees"."DepartmentId" = 1;
+------+----------------+------------+---------------+------------------+--------------+----------------+------+-------------------+------------+
| Id   | FullName       | Salary     | JobPosition   | PhoneExtension   | IsPartTime   | DepartmentId   | Id   | DepartmentNames   | Building   |
|------+----------------+------------+---------------+------------------+--------------+----------------+------+-------------------+------------|
| 1    | Tim SMith      | $40,000.00 | Programer     | 123              | False        | 1              | 1    | Development       | Main       |
| 2    | Barbara Ramsey | $80,000.00 | Manager       | 234              | False        | 1              | 1    | Development       | Main       |
+------+---


--  Find all orders that contain the product id of 2.

orey@/tmp:CompanyDatabase> 
corey@/tmp:CompanyDatabase> SELECT "Orders"."OrderNumber"
........................... FROM "Orders"
........................... JOIN "ProductOrders" ON "ProductOrders"."OrderId"  = "Orders"."Id"
........................... WHERE "ProductOrders"."ProductId" = 2;
+---------------+
| OrderNumber   |
|---------------|
| x529          |
+---------------+
SELECT 1


--  Find the quantity of the Flowbee product from order with order number X529. You may not write the value of an Id in your query, let SQL do the work (HINT: JOIN)
corey@/tmp:CompanyDatabase> SELECT "ProductOrders"."OrderQuantity"
........................... FROM "ProductOrders"
........................... JOIN "Orders" ON "ProductOrders"."OrderId" = "Orders"."Id"
........................... JOIN "Products" ON "ProductOrders"."ProductId" = "Products"."Id"
........................... WHERE "Products"."Name" = 'Flowbee';
+-----------------+
| OrderQuantity   |
|-----------------|
| 2               |
+-----------------+
SELECT 1
