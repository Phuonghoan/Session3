
-- Tạo database SchoolDB
CREATE DATABASE SchoolDB;


-- Tạo bảng Students
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE
);

-- Tạo bảng Courses
CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT
);

-- Tạo bảng Projects
CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE
);

-- Tạo bảng Enrollments
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id),
    course_id INT REFERENCES Courses(course_id),
    grade CHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'F'))
);