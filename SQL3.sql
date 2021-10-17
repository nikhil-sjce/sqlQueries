CREATE TABLE employee(
	id INT NOT NULL,
    first_name VARCHAR (20),
    last_name VARCHAR (20),
    salary INT ,
    dept_id INT,
    PRIMARY KEY (id)
);
CREATE TABLE department(
	dept_id INT NOT NULL,
    dept_name VARCHAR (20),
    manager_id INT,
    location VARCHAR (20),
    PRIMARY KEY (dept_id)
);
INSERT INTO employee VALUES (1,'Nikhil','Vyas',1000,111);
INSERT INTO employee VALUES (2,'Nikhil','sharma',1000,111);
INSERT INTO employee VALUES (3,'Rahul','Vyas',1000,111);
INSERT INTO employee VALUES (4,'Rahul','Sharma',1000,111);
INSERT INTO employee VALUES (5,'Rohit','Sharma',1000,111);
INSERT INTO department VALUES (1,'IT',11,'Mysore');
INSERT INTO department VALUES (2,'TEST',22,'Mysore');
INSERT INTO department VALUES (3,'SALES',33,'Mysore');
INSERT INTO department VALUES (4,'SUPPORT',44,'Mysore');
INSERT INTO department VALUES (5,'CONSULTING',55,'Mysore');
SELECT * FROM employee;
SELECT * FROM department;
-- SELECT e.id,e.first_name,e.last_name,d.dept_name,d.manager_id,d.location FROM employee e INNER JOIN department d ON e.dept_id=d.dept_id;
-- SELECT e.id,e.first_name,e.last_name,e.salary,d.dept_name,d.manager_id,d.location FROM employee e RIGHT JOIN department d ON e.dept_id=d.dept_id;
SELECT e.id,e.first_name,e.last_name,e.salary,d.dept_name,d.manager_id,d.location FROM employee e LEFT JOIN department d ON e.dept_id=d.dept_id
UNION
SELECT e.id,e.first_name,e.last_name,e.salary,d.dept_name,d.manager_id,d.location FROM employee e RIGHT JOIN department d ON e.dept_id=d.dept_id;
