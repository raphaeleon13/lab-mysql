
CREATE TABLE Cars (ID VARCHAR(20),	VIN VARCHAR(20),	Manufacturer VARCHAR(20),	Model VARCHAR(20),	Year VARCHAR(20),	Color VARCHAR(20) );
CREATE TABLE Customer (ID VARCHAR(20),	CustomerID VARCHAR(20),	Name VARCHAR(20),	Phone VARCHAR(20),	Email VARCHAR(20),	Address VARCHAR(200), City VARCHAR(20), State_Province VARCHAR(20), Country VARCHAR(20), Postal VARCHAR(20) );
CREATE TABLE Salespersons (ID VARCHAR(20),	StaffID VARCHAR(20),	Name VARCHAR(20),	Store VARCHAR(20) );
CREATE TABLE Invoices (ID VARCHAR(20),	Invoice VARCHAR(20),	Number VARCHAR(20),	Date DATE, Car VARCHAR(20),	Customer VARCHAR(20), Salesperson VARCHAR(20) );
INSERT INTO Cars (ID, VIN, Manufacturer, Model,	Year, Color) VALUES ("0","3K096I98581DHSNUP","Volkswagen","Tiguan","2019","Blue"),  ("1","ZM8G7BEUQZ97IH46V","Peugeot","Rifter","2019","Red") ;
SELECT * FROM lab_mysql.cars;
INSERT INTO Customer (ID,CustomerID,Name,Phone,Email,Address,City,State_Province,Country,Postal) VALUES ("0","10001","Pablo Picasso","+34 636 17 63 82","-","Paseo de la Chopera","Madrid","Madrid", "Spain", "28045");
SELECT * FROM lab_mysql.Customer;
INSERT INTO salespersons (ID,StaffID,Name,Store) VALUES ("0","00001","Petey Cruiser","Madrid");
SELECT * FROM lab_mysql.salespersons;
INSERT INTO invoices (ID,Invoice,Number,Date,Car,Customer,Salesperson) VALUES ("0","852399038","2","2018-08-22","0","1","3");
SELECT * FROM lab_mysql.invoices;
ALTER TABLE Cars 
MODIFY COLUMN ID int NOT NULL;

DELETE FROM Cars
WHERE VIN="3K096I98581DHSNUP" LIMIT 1;
DELETE FROM Cars
WHERE VIN="ZM8G7BEUQZ97IH46V" LIMIT 2;
ALTER TABLE Cars
ADD PRIMARY KEY(VIN);
DESC Cars;

UPDATE Cars
SET VIN = "zm8GRTRTGRTGRT"
WHERE VIN = "3K096I98581DHSNUP"
LIMIT 1;
SELECT * FROM lab_mysql.cars;
