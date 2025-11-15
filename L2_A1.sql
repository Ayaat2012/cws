-- NOT NULL is used to ensure every student has a name

CREATE TABLE IF NOT EXISTS STUDENT (
 ROOL_NO TEXT PRIMARY KEY,
 NAME TEXT NOT NULL,
 ADDRESS TEXT,
 PHONE TEXT,
 AGE INTEGER
);

-- Insert sample data into the STUDENT table
INSERT INTO STUDENT (ROLL_NO, NAME, ADDRESS, PHONE, AGE) VALUES
 ('1', 'RAM', 'DELHI', '*****', 18),
 ('2', 'RAMESH', 'GURGAON', '*****', 18),
 ('3', 'SUJIT', 'ROHTAK', '*****', 20),
 ('4', 'SURESH', 'DELHI', '*****', 18),
 ('5', 'AMAN', 'ROHTAK', '*****', 20),
 ('6', 'HARSH', 'GURGAON', '*****', 18);


-- Select all records from the STUDENT table to varify insertion
SELECT * FROM STUDENT;

-- Query students who are 18 y/o and live in Delhi
SELECT * FROM STUDENT WHERE AGE = 18 AND ADDRESS = 'Delhi';

-- Query students who are named RAM or SUJIT
SELECT * FROM STUDENT WHERE NAME = 'SUJIT' OR NAME = 'RAM';

-- Query students who are 18 y/o and are named RAM
SELECT * FROM STUDENT WHERE AGE = 18 AND NAME = 'RAM';

-- Query students who named RAM or aged 20
SELECT * FROM STUDENT WHERE AGE = 20 OR NAME = 'RAM';

-- Query students who named RAM or RAMESH
SELECT * FROM STUDENT WHERE NAME = 'RAMESH' OR NAME = 'RAM';