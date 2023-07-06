-- Exercise NO4
-- Sajjad Ranjbar Yazdi 9812223294

-- A:
-- جدول employee
CREATE TABLE employee (
  ID INT PRIMARY KEY,
  person_name VARCHAR(50),
  street VARCHAR(50),
  city VARCHAR(50)
);

-- works
CREATE TABLE works (
  ID INT,
  company_name VARCHAR(50),
  salary DECIMAL,
  PRIMARY KEY (ID, company_name),
  FOREIGN KEY (ID) REFERENCES employee(ID),
  FOREIGN KEY (company_name) REFERENCES company(company_name)
);

-- company
CREATE TABLE company (
  company_name VARCHAR(50) PRIMARY KEY,
  city VARCHAR(50)
);

-- manages
CREATE TABLE manages (
  ID INT PRIMARY KEY,
  manager_id INT,
  FOREIGN KEY (ID) REFERENCES employee(ID),
  FOREIGN KEY (manager_id) REFERENCES employee(ID)
);

-- B:
CREATE VIEW average_salary_per_city AS
SELECT employee.city, AVG(works.salary) AS average_salary
FROM employee
JOIN works ON employee.ID = works.ID
GROUP BY employee.city;

SELECT * FROM average_salary_per_city;
