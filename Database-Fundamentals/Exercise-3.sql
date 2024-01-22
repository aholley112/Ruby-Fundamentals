CREATE TABLE Inventory (
    ItemID int,
    ItemName text,
    UnitsInStock int
);

INSERT INTO Inventory (ItemID, ItemName, UnitsInStock) VALUES (1, 'Printer Paper', 15);
INSERT INTO Inventory (ItemID, ItemName, UnitsInStock) VALUES (2, 'Staples', 30);

SELECT * FROM Inventory WHERE UnitsInStock < 20;


