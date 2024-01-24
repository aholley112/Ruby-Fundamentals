CREATE TABLE WeatherData (
    RecordID int,
    Date date,
    Temperature float,
    City text
);

INSERT INTO WeatherData (RecordID, Date, Temperature, City) VALUES (1, '2022-01-01', 35.2, 'Springfield');
INSERT INTO WeatherData (RecordID, Date, Temperature, City) VALUES (2, '2022-01-01', 28.4, 'Shelbyville');

SELECT MAX(Temperature) AS MaxTemperature, MIN(Temperature) AS MinTemperature
FROM WeatherData;
