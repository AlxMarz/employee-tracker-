DROP DATABASE IF EXISTS employee_db
CREATE DATABASE employee_db

use employee_db

CREATE TABLE department(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30)
);

CREATE TABLE role (
    in INT PRIMARY KEY AUTO_INCREMENT,
    tittle VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    manager_name VARCHAR(30),
    FOREIGN key (role_id) REFERENCES role(id),
    FOREIGN key (manager_id) REFERENCES employee(id),

);
