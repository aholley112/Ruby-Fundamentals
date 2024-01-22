CREATE TABLE Books (
    BookID int,
    Title text,
    Author text,
    Price float
);

INSERT INTO Books (BookID, Title, Author, Price) VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 10.99);
INSERT INTO Books (BookID, Title, Author, Price) VALUES (2, '1984', 'George Orwell', 8.99);
INSERT INTO Books (BookID, Title, Author, Price) VALUES (3, 'The Catcher in the Rye', 'J. D. Salinger', 7.99);

SELECT * FROM Books;
