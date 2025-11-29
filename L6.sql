-- Creating the nomnom table
CREATE TABLE IF NOT EXISTS nomnom (
    NAME TEXT,
    NEIGHBOURHOOD TEXT,
    CUISINE TEXT,
    REVIEW INTEGER,
    PRICE TEXT,
    HEALTH TEXT
);

INSERT INTO nomnom (NAME, NEIGHBOURHOOD, CUISINE, REVIEW, PRICE, HEALTH) VALUES
 ('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
 ('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
 ('Pocha', 'Midtown', 'Pizza', 4.0, '$$$', 'B'),
 ('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
 ('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
 ('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
 ('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
 ('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$$', 'A'),
 ('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

SELECT * FROM nomnom;


-- Selecting distinct neighbourhoods from nomnom table
SELECT DISTINCT NEIGHBOURHOOD FROM nomnom;

-- Selecting distinct cuisines from nomnom table
SELECT DISTINCT CUISINE FROM nomnom;

-- Selecting all records with chinese cuisine
SELECT * FROM nomnom
WHERE CUISINE = 'Chinese';

-- Selecting all records with a review rating of 4 or higher
SELECT * FROM nomnom
WHERE REVIEW >= 4;

-- Selecting all records with Italian cuisine and '$$$' price
SELECT * FROM nomnom
WHERE CUISINE = 'Italian' AND PRICE = '$$$';

-- Selecting all records where name contains 'candy'
SELECT * FROM nomnom
WHERE NAME LIKE '%Candy&';

-- Selecting all records where neighbourhood is 'downtown', 'midtown, or 'uptown'
SELECT * FROM nomnom
WHERE NEIGHBOURHOOD IN ('Midtown', 'Downtown', 'Uptown');

-- Selecting the top 4 records ordered by review rating in descending order
SELECT * FROM nomnom
ORDER BY REVIEW DESC LIMIT 4;