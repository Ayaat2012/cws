CREATE TABLE IF NOT EXISTS salesman(
 Salesman_id TEXT PRIMARY KEY,
 Name TEXT,
 City TEXT,
 Commision REAL);

INSERT INTO salesman (Salesman_id, Name, City, Commision) VALUES
 ('5201', 'James Hoog', 'New York', 0.15),
 ('5402', 'Nail Knite', 'Paris', 0.13),
 ('5605', 'Pit Alex', 'London', 0.11),
 ('5806', 'Mc Lyon', 'Paris', 0.14),
 ('5107', 'Paul Adam', 'Rome', 0.13),
 ('5123', 'Lawson Hen', 'San Jose', 0.12);

 SELECT * FROM salesman;

 SELECT * FROM salesman
 WHERE City = 'Paris';


CREATE TABLE IF NOT EXISTS orders(
 Ord_no TEXT PRIMARY KEY,
 Purch_amt REAL,
 Ord_date TEXT,
 Customer_id TEXT,
 Salesman_id TEXT;

INSERT INTO orders( Ord_no, Purch_amt,  Ord_date,  Customer_id, Salesman_id) VALUES
 ('70001', 150.5, '05-11-2012', '3405', '5402'),
 ('70009', 270.65, '10-09-2012', '3001', '5201'),
 ('70002', 65.26, '05-10-2012', '3102', '5123'),
 ('70004', 110.5, '17-08-2012', '3809', '5107'),
 ('70007', 948.5, '10-09-2012', '3605', '5605'),
 ('70005', 2400.6, '27-07-2012', '3607', '5806');

SELECT * FROM orders;

SELECT Name, Commision
FROM salesman;