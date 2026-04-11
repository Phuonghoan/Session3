
-- Tạo database CompanyDB
CREATE DATABASE CompanyDB;


-- Tạo bảng Departments
CREATE TABLE Departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Tạo bảng Employees
CREATE TABLE Employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    department_id INT REFERENCES Departments(department_id)
);

-- Tạo bảng Projects
CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE
);

-- Tạo bảng EmployeeProjects
CREATE TABLE EmployeeProjects (
    emp_id INT,
    project_id INT,
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);