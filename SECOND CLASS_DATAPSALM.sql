CREATE TABLE ProductTable(
    product_ID INT PRIMARY KEY NOT NULL,
    produt_Name VARCHAR(20) NOT NULL,
    product_Category VARCHAR(20) NOT NULL,
    product_Price DECIMAL(10,2) NOT NULL CHECK(product_Price > 0 )
);
INSERT INTO ProductTable VALUES
(101, 'Gadgets',12.24, 'MusicBOX'),
(102,'Snacks',50.00,'Biscuits'),
(103, 'Fruits' , 49.50,'Apple'),
(104, 'Automobile' , 90.00,'Lamgborghini')

ALTER TABLE ProductTable
ADD product_Name VARCHAR(20) NOT NULL;

ALTER TABLE ProductTable
DROP COLUMN produt_Name;

CREATE TABLE CustomerTable(
    Customer_ID INT PRIMARY KEY NOT NULL,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Email VARCHAR(20) NOT NULL,
    Customer_Address VARCHAR(40) NOT NULL ,  
     )
INSERT INTO CustomerTable VALUES
(1, 'Esther','esther@gmail.com', 'Korea'),
(2,'Victoria','vickky@gmail.com','Canada'),
(3, 'Azeezat' , 'osoala@gmail.com','Dubia'),
(4, 'Fatima' , 'fatty@gmail.com','Columbia'),
(5, 'Maikel' , 'maikel@gmail.com','Finland')

---CREATE TABLE OrderTable(
    ---Order_ID INT PRIMARY KEY NOT NULL,
    ---Order_Quantity INT NOT NULL,
    ---Order_Date DATE NOT NULL,
    ---Customer_ID INT NOT NULL,
    ---);
CREATE TABLE OrdersTable(
    Orders_ID INT PRIMARY KEY NOT NULL,
    Orders_Quantity INT NOT NULL,
    Orders_Date DATE NOT NULL,
    Customer_ID INT NOT NULL,
    product_ID INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES CustomerTable(Customer_ID),
    FOREIGN KEY (product_ID) REFERENCES ProductTable(product_ID)
    
);
INSERT INTO OrdersTable VALUES
(1001,3,'2024-08-30',4,104),
(1002,3,'2024-08-16',3,103),
(1003,3,'2024-08-07',1,101),
(1004,3,'2024-08-19',3,102),
(1005,3,'2024-08-18',2,103),
(1006,3,'2024-08-06',4,101),
(1007,3,'2024-08-30',2,104)

SELECT * FROM ProductTable
SELECT * FROM CustomerTable
---SELECT * FROM OrderTable
SELECT * FROM OrdersTable
SELECT product_ID, product_Name FROM ProductTable  ---to retrieve only two ...in a table

---Maths Operations--- 
SELECT SUM(product_Price) AS Total_Productprice FROM ProductTable
SELECT MIN(product_Price) AS Cheapest_price FROM ProductTable
SELECT MAX(product_Price) AS Highest_price FROM ProductTable
SELECT AVG(product_Price) AS Average_price FROM ProductTable
SELECT COUNT(product_Price) AS Number_Of_Items FROM ProductTable

---where clause---
SELECT * FROM CustomerTable WHERE Customer_Address = 'columbia'

---ORDER BY CLAUSE---
---to retrieve information of customers  alphabetically---
SELECT * FROM CustomerTable ORDER BY Customer_Address 
SELECT * FROM CustomerTable ORDER BY Customer_Name

---retrieve the product price in descending order---
SELECT * FROM ProductTable ORDER BY product_Price DESC;

---TOP_CLAUSE---
SELECT TOP 2 * FROM ProductTable ORDER BY product_Price DESC;

