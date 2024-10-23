-- Active: 1729694190015@@127.0.0.1@5432@university_db@public

--Creating database ("univesity_db")
CREATE DATABASE university_db;

--Creating a "students" table
CREATE Table students(
    student_id INTEGER PRIMARY KEY UNIQUE,
    student_name VARCHAR(100),
    age INTEGER,
    email VARCHAR(100),
    frontend_mark INTEGER,
    backend_mark INTEGER,
    status VARCHAR(50)
);

-- creating courses table
CREATE Table courses(
course_id INTEGER PRIMARY KEY UNIQUE,
course_name VARCHAR(100),
credits INTEGER
);


-- creating enrollment table
CREATE Table enrollment(
    enrollment_id INTEGER PRIMARY KEY UNIQUE,
    student_id INTEGER REFERENCES students(student_id),
    course_id  INTEGER REFERENCES courses(course_id)
);

