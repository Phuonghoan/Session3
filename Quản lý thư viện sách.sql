
-- Tạo database LibraryDB
CREATE DATABASE LibraryDB;

-- Tạo database library
CREATE SCHEMA library;

-- Tạo bảng Books
CREATE TABLE library.Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    published_year INT,
    available BOOLEAN DEFAULT TRUE
);

-- Tạo bảng Members
CREATE TABLE library.Members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    join_date DATE DEFAULT CURRENT_DATE
);