CREATE TABLE Salaries
(
emp_name VARCHAR(50),
department VARCHAR(50),
salary INT,
PRIMARY KEY(emp_name,department)
);

INSERT INTO Salaries(emp_name,department,salary)VALUES
('kathy','Engineering',50000),
('Roy','Marketing',30000),
('Charles','Engineering',45000),
('Jack','Engineering','85000'),
('Benjamin','Marketing',34000),
('Anthony','Marketing',42000),
('Edward','Engineering',102000),
('Terry','Engineering',44000),
('Evelyn','Marketing',53000),
('Arthur','Engineering',32000);


SELECT * FROM SALARIES


--SQL Query to calculate the difference--
--between highest_salaries in the marketing and eng department--
--output the abs difference in salaries--

SELECT 

	ABS(MAX
		(CASE WHEN department='Marketing' THEN salary END)-
    	MAX
		(CASE WHEN department='Engineering' THEN salary END))
	as salary_diff
	
FROM Salaries;
   
  


