--The SQL DELETE statement is used to remove specific rows from a table while keeping the table structure intact. It is different from DROP, which deletes the entire table.
syntax:
DELETE FROM table_name 
WHERE some_condition;


CREATE TABLE GFG_Employees (
   id INT PRIMARY KEY,
   name VARCHAR (20) ,
   email VARCHAR (25),
   department VARCHAR(20)
);

INSERT INTO GFG_Employees (id, name, email, department) VALUES 
(1, 'Jessie', 'jessie23@gmail.com', 'Development'),
(2, 'Praveen', 'praveen_dagger@yahoo.com', 'HR'),
(3, 'Bisa', 'dragonBall@gmail.com', 'Sales'),
(4, 'Rithvik', 'msvv@hotmail.com', 'IT'),
(5, 'Suraj', 'srjsunny@gmail.com', 'Quality Assurance'),
(6, 'Om', 'OmShukla@yahoo.com', 'IT'),
(7, 'Naruto', 'uzumaki@konoha.com', 'Development');

Select * From GFG_Employees;

-- Deleting Single Record
DELETE FROM GFG_Employees 
WHERE NAME = 'Rithvik';   

--Deleting Multiple Records
DELETE FROM GFG_Employees 
WHERE department = 'Development'; 

--Delete All Records from a Table
DELETE  FROM GFG_Employees;

--Rolling Back DELETE Operations:The ROLLBACK command will undo the changes made by the DELETE statement, effectively restoring the records that were deleted during the transaction.

 
BEGIN TRANSACTION;
DELETE FROM GFG_Employees;
WHERE department = 'Development';

-- If needed, you can rollback the deletion
ROLLBACK;
