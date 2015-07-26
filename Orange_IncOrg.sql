--1.Create the table.  Each row should minimally include the person’s name, the person’s supervisor, and the person’s job title.  Using ID columns is encouraged. 
DROP TABLE if exists OrangeInc_Employee  cascade;

CREATE TABLE OrangeInc_Employee(
	emp_ID serial PRIMARY KEY,
	emp_FirstName VARCHAR (50) NOT NULL,
	emp_LastName VARCHAR (50) NOT NULL,
	emp_Designation Varchar(5),
	emp_DepName varchar(50) NOT NULL,
	supervisor_ID integer
);


-- 2. Populate the table with a few sample rows. 


Insert into OrangeInc_Employee(emp_ID,emp_FirstName,emp_LastName,emp_Designation,emp_DepName,supervisor_ID) values 
(1,'Steve','Jobs','CEO','Orange Inc Executive Office',1),
(2,'Timothy','Cook','COO','Operations',1),
(3,'Jonathan','Ive','SVP','Industrial Design',1),
(4,'Ronald','Johnson','SVP','Retails',1),
(5,'Scott','Forestall','SVP','iOS Software',1),
(6,'Philip','Schiller','SVP','Marketing',1),
(7,'Jeffery','Williams','SVP','Operations',2),
(8,'Bob','Mansfield','SVP','Hardware Engineering',2),
(9,'Michael','Fegner','VP','iPhone Sales',2),
(10,'Steve','Zadesky','VP','iPhone& iPad Design',8),
(11,'David','Topman','VP','Hardware Engineering',8),
(12,'Kim','Forrath','VP','Program Management',5),
(13,'Isabel','Gemahe','VP','iOS Wireless Software',5),
(14,'Jerry','McDowell','VP','Retail',4),
(15,'Deiedre','O Brien','VP','Operations',7),
(16,'Sabih','Khan','VP','Operations',7),
(17,'Rita','Lane','VP','Operations',7);

-- 3. Provide a single SELECT statement that displays the information in the table, showing who reports to whom. 


SELECT  sup.emp_FirstName||','||sup.emp_LastName as EmpName,sup.emp_Designation as EmpDesignation, sup.emp_DepName as empDepartment,emp.emp_FirstName||','||emp.emp_LastName as Supervisor,emp.emp_Designation as supDesignation 
 FROM OrangeInc_Employee emp JOIN OrangeInc_Employee sup ON  sup.supervisor_ID=emp.emp_ID  ORDER BY emp, sup; 





