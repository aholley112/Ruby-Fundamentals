CREATE TABLE Products (
    ProductID int,
    ProductName text,
    Price float,
    Category text
);

INSERT INTO Products (ProductID, ProductName, Price, Category) VALUES (1, 'Apple', 0.50, 'Fruit');
INSERT INTO Products (ProductID, ProductName, Price, Category) VALUES (2, 'Bread', 1.50, 'Bakery');

SELECT AVG(Price) AS AveragePrice
FROM Products;
