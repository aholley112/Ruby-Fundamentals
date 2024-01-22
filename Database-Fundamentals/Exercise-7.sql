CREATE TABLE Sales (
    SaleID int,
    ProductID int,
    SaleAmount float
);

INSERT INTO Sales (SaleID, ProductID, SaleAmount) VALUES (1, 1, 1200.00);
INSERT INTO Sales (SaleID, ProductID, SaleAmount) VALUES (2, 2, 250.50);

SELECT SUM(SaleAmount) AS TotalSales
FROM Sales;
