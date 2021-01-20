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

 corey@/tmp:CompanyDatabase> CREATE TABLE "Employees" (
........................... "FullName" TEXT NOT NULL,
........................... "JobPosition" TEXT NOT NULL
........................... "Salary" MONEY,
........................... "PhoneExtension" VARCHAR(10),
........................... "IsPartTime" BOOL,
I would add this by: ALTER TABLE "Employees" ADD "Id" SERIAL PRIMARY KEY;
........................... "Id" SERIAL PRIMARY KEY
........................... );