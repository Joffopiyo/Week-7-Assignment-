/* Question 1: Achieving 1NF (First Normal Form) */

/*
   Given the table structure from the image:
   OrderID | CustomerName | Products
   ---------------------------------
   101     | John Doe     | Laptop, Mouse
   102     | Jane Smith   | Tablet, Keyboard, Mouse
   103     | Emily Clark  | Phone
*/

SELECT
  OrderID,
  CustomerName,
  'Laptop' AS Product
FROM ProductDetail
WHERE OrderID = 101

UNION ALL

SELECT
  OrderID,
  CustomerName,
  'Mouse' AS Product
FROM ProductDetail
WHERE OrderID = 101

UNION ALL

SELECT
  OrderID,
  CustomerName,
  'Tablet' AS Product
FROM ProductDetail
WHERE OrderID = 102

UNION ALL

SELECT
  OrderID,
  CustomerName,
  'Keyboard' AS Product
FROM ProductDetail
WHERE OrderID = 102

UNION ALL

SELECT
  OrderID,
  CustomerName,
  'Mouse' AS Product
FROM ProductDetail
WHERE OrderID = 102

UNION ALL

SELECT
  OrderID,
  CustomerName,
  'Phone' AS Product
FROM ProductDetail
WHERE OrderID = 103;

/*
   OrderID | CustomerName | Product
   ---------------------------------
   101     | John Doe     | Laptop
   101     | John Doe     | Mouse
   102     | Jane Smith   | Tablet
   102     | Jane Smith   | Keyboard
   102     | Jane Smith   | Mouse
   103     | Emily Clark  | Phone
*/

/* Question 2: Achieving 2NF (Second Normal Form) */

/* Part 1: Create the 'Orders' table (OrderID, CustomerName) */

SELECT DISTINCT
  OrderID,
  CustomerName
FROM OrderDetails;

/* Part 2: Create the 'OrderItems' table (OrderID, Product, Quantity) */

SELECT
  OrderID,
  Product,
  Quantity
FROM OrderDetails;
