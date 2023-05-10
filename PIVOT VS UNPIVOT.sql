CREATE DATABASE UNPIVOTT
USE UNPIVOTT
GO
CREATE TABLE STUDENTS
(
ID INT PRIMARY KEY IDENTITY,
STUDENT_NAME VARCHAR(50),
SUBJECT VARCHAR(50),
SCORES INT
)
GO
INSERT INTO STUDENTS VALUES('KEMI','MATHS',90)
INSERT INTO STUDENTS VALUES('KEMI','ENGLISH',54)
INSERT INTO STUDENTS VALUES('KEMI','HISTORY',92)
INSERT INTO STUDENTS VALUES('KEMI','SCIENCE',60)

INSERT INTO STUDENTS VALUES('LARRY','MATHS',89)
INSERT INTO STUDENTS VALUES('LARRY','ENGLISH',70)
INSERT INTO STUDENTS VALUES('LARRY','HISTORY',76)
INSERT INTO STUDENTS VALUES('LARRY','SCIENCE',80)

INSERT INTO STUDENTS VALUES('AYO','MATHS',70)
INSERT INTO STUDENTS VALUES('AYO','ENGLISH',50)
INSERT INTO STUDENTS VALUES('AYO','HISTORY',87)
INSERT INTO STUDENTS VALUES('AYO','SCIENCE',50)

SELECT * FROM STUDENTS
PIVOT
(SUM(SCORES)FOR SUBJECT IN (MATHS,ENGLISH,HISTORY,SCIENCE))
AS PIVOTTABLE

SELECT * INTO STUDENTPIVOT
FROM STUDENTS
PIVOT
(SUM(SCORES)
FOR SUBJECT IN (MATHS,ENGLISH,HISTORY,SCIENCE))
 AS PIVOTTABLE
GO
SELECT * FROM STUDENTPIVOT
UNPIVOT
(QUANTITY
FOR SUBJECT IN (MATHS,ENGLISH,HISTORY,SCIENCE))
AS UNPIVOTABLE