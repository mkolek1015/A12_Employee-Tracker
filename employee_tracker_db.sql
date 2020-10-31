DROP DATABASE IF EXISTS employee_tracker_db;

CREATE DATABASE employee_tracker_db;

USE employee_tracker_db;

CREATE TABLE department(
	id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role(
	id INT AUTO_INCREMENT NOT NULL,
	title VARCHAR(30) NOT NULL,
    salary DECIMAL(7,0) NOT NULL,
    department_id INT NOT NULL,
	PRIMARY KEY (id)
  );
  
CREATE TABLE employee(
	id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (id)
  );
  
USE employee_tracker_db;

INSERT INTO department(name)
VALUES ("Sales");

INSERT INTO department(name)
VALUES ("Engineering");

INSERT INTO department(name)
VALUES ("Finance");

INSERT INTO department(name)
VALUES ("Graphics");

INSERT INTO department(name)
VALUES ("Purchasing");

INSERT INTO department(name)
VALUES ("Receiving");

INSERT INTO department(name)
VALUES ("Logistics");

INSERT INTO role (title, salary, department_id)
VALUES ('Salesperson', 80000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ('Sales Lead', 100000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ('Software Engineer', 150000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ('Accountant', 125000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ('Finance Manager', 150000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ('Legal', 200000, 5);

INSERT INTO role (title, salary, department_id)
VALUES ('Graphics', 250000, 4);


INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES ('John', 'Smith', 2, null);

INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES ('Sarah', 'Windsor', 4, null);

INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES ('Alexa', 'Rhodes', 6, null);

INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES ('Asher', 'Coldwell', 7, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Michelle', 'Bradford', 1, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Sierra', 'Carmichael', 3, 2);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Aiden', 'Sullivan', 5, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Harper', 'Astor', 7, 4);

SELECT * FROM employee;