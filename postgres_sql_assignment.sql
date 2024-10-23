-- Active: 1729694190015@@127.0.0.1@5432@university_db@public

--Creating database ("univesity_db")
CREATE DATABASE university_db;

--Creating a "students" table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,          
    student_name VARCHAR(100) NOT NULL,              
    age INT,                              
    email VARCHAR(100) UNIQUE,              
    frontend_mark INT,                      
    backend_mark INT,                       
    status VARCHAR(50)                      
);

-- DROP TABLE students; (for testing purpose)

-- creating courses table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,          
    course_name VARCHAR(100) NOT NULL,               
    credits INT                            
);

-- DROP TABLE courses; (for testing purpose)

-- creating enrollment table
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,       
    student_id INT REFERENCES students(student_id),  
    course_id INT REFERENCES courses(course_id)  
);

-- DROP TABLE enrollment; (for testing purpose)

-- Insert data into the students table (sample data)
INSERT INTO 
students ( student_name,
           age,
           email, 
           frontend_mark, 
           backend_mark, 
           status)
VALUES
('Sameer', 21, 'sameer@example.com', 48, 60, NULL),
('Zoya', 23, 'zoya@example.com', 52, 58, NULL),
('Nabil', 22, 'nabil@example.com', 37, 46, NULL),
('Rafi', 24, 'rafi@example.com', 41, 40, NULL),
('Sophia', 22, 'sophia@example.com', 50, 52, NULL),
('Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);

--insert data into the courses table (sample data)
INSERT INTO courses (course_name, credits) VALUES
('Next.js', 3),
('React.js', 4),
('Databases', 3),
('Prisma', 3);

-- insert data into the enrollment table (sample data)
INSERT INTO enrollment (student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 2);

-- cheking students, courses, enrollment (after inserting data)
-- SELECT * FROM students;
-- SELECT * FROM courses;
-- SELECT * FROM enrollment;


-- query: 1
-- Insert a new student record with the following details:

-- Name: YourName
-- Age: YourAge
-- Email: YourEmail
-- Frontend-Mark: YourMark
-- Backend-Mark: YourMark
-- Status: NULL

INSERT INTO 
students (student_name, age, email, frontend_mark, backend_mark, status) VALUES
('Md Shah Jalal', 25, 'shah.jalal.ju.bd@gmail.com', 98, 99, NULL);

-- SELECT * FROM students;

-- Query 2:
-- Retrieve the names of all students who are enrolled in the course titled 'Next.js'.

SELECT s.student_name
FROM students s
JOIN enrollment e USING (student_id)
JOIN courses c USING (course_id)
WHERE
    c.course_name = 'Next.js';


-- Query 3:
-- Update the status of the student with the highest total (frontend_mark + backend_mark) to 'Awarded'.

UPDATE students 
 SET status ='Awarded'
 WHERE student_id =(
    SELECT student_id
    FROM students ORDER BY (frontend_mark + backend_mark) DESC LIMIT 1
 );

-- SELECT * FROM students;

