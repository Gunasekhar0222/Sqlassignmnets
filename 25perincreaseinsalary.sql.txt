-- create a table
CREATE TABLE Employee (
    emo_id integer,
    emp_name varchar2(15),
    job_name varchar2(15),
    manager_id integer,
    hire_date date,
    salary decimal(10,2),
    commision decimal(10,2),
    dept_id integer
);
-- insert some values
INSERT INTO Employee VALUES('68319',"KAYLING","PRESIDENT",'','1991-11-18','6000.00','','1001');
INSERT INTO Employee VALUES('66928',"BLAZE","MANAGER",'68319','1991-05-01','2750.00','','3001');
INSERT INTO Employee VALUES('67832',"CLARE","MANAGER",'68319','1991-06-09','2550.00','','1001');
INSERT INTO Employee VALUES('65646',"JONAS","MANAGER",'68319','1991-04-02','2550.00','','2001');
INSERT INTO Employee VALUES('67858',"SCARLET","ANALYST",'65646','1997-04-19','3100.00','','2001');
INSERT INTO Employee VALUES('69062',"FRANK","ANALYST",'65646','1991-12-03','3100','','2001');
INSERT INTO Employee VALUES('63679',"SANDRINE","CLERK",'69062','1990-12-18','900.00','','2001');
INSERT INTO Employee VALUES('64989',"ADELYN","SALESMAN",'66928','1991-02-20','1700.00','400.00','3001');
INSERT INTO Employee VALUES('65271',"WADE","SALESMAN",'66928','1991-02-22','1350.00','600.00','3001');
INSERT INTO Employee VALUES('66564',"MADDEN","SALESMAN",'66928','1991-09-28','1350.00','1500.00','3001');
INSERT INTO Employee VALUES('68454',"TUCKER","SALESMAN",'66928','1991-09-08','1600.00','','3001');
INSERT INTO Employee VALUES('68736',"ADNRES","CLERK",'67858','1997-05-23','1200.00','','2001');
INSERT INTO Employee VALUES('69000',"JULIUS","CLERK",'66928','1991-12-03','1050.00','','3001');
INSERT INTO Employee VALUES('69324',"MARKER","CLERK",'67832','1992-01-23','1400.00','','1001');
-- fetch some values
SELECT * FROM Employee;
SELECT * 
FROM Employee
where(1.25*salary)>3000;
SELECT salary ,count()
FROM Employee
group by salary 
having count(*)>1;