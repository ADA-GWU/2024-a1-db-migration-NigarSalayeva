-- Rename the STUDENTS.ST_ID to STUDENTS.STUDENT_ID
ALTER TABLE STUDENTS RENAME COLUMN ST_ID TO STUDENT_ID;
SELECT * from STUDENTS;

-- Change the length of STUDENTS.ST_NAME and STUDENTS.ST_LAST from 20 to 30
ALTER TABLE STUDENTS ALTER COLUMN ST_NAME TYPE VARCHAR(30);
ALTER TABLE STUDENTS ALTER COLUMN ST_LAST TYPE VARCHAR(30);

-- Change the name of the INTERESTS.
ALTER TABLE INTERESTS RENAME TO INTEREST;

-- INTEREST to INTERESTS and its type to array ofstrings. 
-- Migrate the data (table content) correspondingly
CREATE TABLE NEW_INTERESTS (
    STUDENT_ID INTEGER REFERENCES STUDENTS(STUDENT_ID),
    INTERESTS VARCHAR[500]
);

INSERT INTO NEW_INTERESTS (STUDENT_ID, INTERESTS)
SELECT STUDENT_ID, ARRAY_AGG(INTEREST) 
FROM INTEREST 
GROUP BY STUDENT_ID
ORDER BY STUDENT_ID;

SELECT * from NEW_INTERESTS;


DROP TABLE INTEREST;
ALTER TABLE NEW_INTERESTS RENAME TO INTEREST;

SELECT * from INTEREST;

