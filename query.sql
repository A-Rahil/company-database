DELETE FROM EMPLOYEE
WHERE Ssn='123456789';

SELECT Fname, Lname
FROM EMPLOYEE AS E, DEPENDENT AS D
WHERE E.Ssn=D.Essn AND E.Fname=D.Dependent_name AND E.Sex=D.Sex;

SELECT Fname, Lname
FROM EMPLOYEE AS E
WHERE E.Ssn IN (
	SELECT Essn
    FROM DEPENDENT AS D
    WHERE E.Fname=D.Dependent_name AND D.Sex=E.Sex
);

SELECT Fname, Lname
FROM EMPLOYEE
WHERE Salary > ALL (
	SELECT Salary
    FROM EMPLOYEE
    WHERE Dno=5
);

SELECT Fname, Minit, Lname, Address
FROM EMPLOYEE
WHERE Dno IN (
	SELECT Dnumber
    FROM DEPARTMENT
    WHERE Dname='Research'
);

(SELECT Pname
FROM PROJECT, DEPARTMENT, EMPLOYEE
WHERE Lname='Smith' AND Dnum=Dnumber AND Mgr_ssn=Ssn)
UNION 
(SELECT Pname
FROM PROJECT, EMPLOYEE, WORKS_ON
WHERE Lname='Smith' AND Essn=Ssn AND Pnumber=Pno);

SELECT DISTINCT Salary
FROM EMPLOYEE;

SELECT Salary
FROM EMPLOYEE;

SELECT * 
FROM EMPLOYEE, DEPARTMENT
WHERE Dno=Dnumber AND Dname='Research';

SELECT *
FROM EMPLOYEE
WHERE Dno=5;

SELECT E.Fname, E.Lname, S.Fname, S.Lname
FROM EMPLOYEE AS E, EMPLOYEE AS S
WHERE E.Super_ssn=S.Ssn;

SELECT Pnumber, Dnum, Lname, Address, Bdate
FROM PROJECT, DEPARTMENT, EMPLOYEE
WHERE Plocation='Sharjah' AND Dnum=Dnumber AND Mgr_ssn=Ssn;

SELECT Fname, Minit, Address 
FROM EMPLOYEE, DEPARTMENT
WHERE Dno=Dnumber AND Dname='Research';

SELECT Fname, Minit, Address
FROM EMPLOYEE
WHERE Dno IN (
	SELECT Dnumber 
    FROM DEPARTMENT
    WHERE Dname='Research'
);

SELECT Bdate, Address
FROM EMPLOYEE
WHERE Fname='John' AND Minit='B' AND Lname='Smith';

DELETE FROM EMPLOYEE
WHERE DNO IN (
	SELECT Dnumber 
    FROM DEPARTMENT
    WHERE Dname='Research'
);

UPDATE PROJECT
SET Pname='Khadar', Dnum=2
WHERE Pnumber=5;

UPDATE EMPLOYEE
SET Salary=1.1*Salary
WHERE Dno IN (
	SELECT Dnumber
    FROM DEPARTMENT
    WHERE Dname='Research'
);