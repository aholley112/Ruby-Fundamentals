CREATE TABLE RestaurantReviews (
    ReviewID int,
    RestaurantName text,
    Rating text,
    Reviewer text,
    ReviewDate date
);

INSERT INTO RestaurantReviews (ReviewID, RestaurantName, Rating, Reviewer, ReviewDate) VALUES (1, 'Cafe Mocha', 'Excellent', 'John Doe', '2022-01-15');
INSERT INTO RestaurantReviews (ReviewID, RestaurantName, Rating, Reviewer, ReviewDate) VALUES (2, 'Burger Corner', 'Good', 'Jane Smith', '2022-02-20');
INSERT INTO RestaurantReviews (ReviewID, RestaurantName, Rating, Reviewer, ReviewDate) VALUES (3, 'Pasta Place', 'Excellent', 'Alice Jones', '2022-02-22');

SELECT RestaurantName FROM RestaurantReviews WHERE Rating = 'Excellent';
