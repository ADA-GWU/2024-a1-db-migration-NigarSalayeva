CREATE DATABASE my_db;



CREATE TABLE STUDENTS (
    ST_ID INTEGER PRIMARY KEY,
    ST_NAME VARCHAR(20),
    ST_LAST VARCHAR(20)
);

CREATE TABLE INTERESTS (
    STUDENT_ID INTEGER REFERENCES STUDENTS(ST_ID),
    INTEREST VARCHAR(20)
);

INSERT INTO STUDENTS (ST_ID, ST_NAME, ST_LAST) VALUES
(1, 'Konul', 'Gurbanova'),
(2, 'Shahnur', 'Isgandarli'),
(3, 'Natavan', 'Mammadova');

-- Insert data into the INTERESTS table
INSERT INTO INTERESTS (STUDENT_ID, INTEREST) VALUES
(1, 'Tennis'),
(1, 'Literature'),
(2, 'Math'),
(2, 'Tennis'),
(3, 'Math'),
(3, 'Music'),
(2, 'Football'),
(1, 'Chemistry'),
(3, 'Chess');

select * from STUDENTS;
SELECT* from INTERESTS;