-- Create Table
CREATE TABLE Students (
    id INT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT
);

-- Insert Data
INSERT INTO Students VALUES
(1, 'Aman', 21, 'MCA', 85),
(2, 'Riya', 22, 'MCA', 90),
(3, 'Rahul', 20, 'BCA', 75),
(4, 'Sneha', 21, 'MCA', 88),
(5, 'Karan', 23, 'BCA', 70);

--------------------------------------------------

-- SELECT Query
SELECT * FROM Students;

-- WHERE Condition
SELECT * FROM Students
WHERE marks > 80;

--------------------------------------------------

-- GROUP BY
SELECT course, COUNT(*) AS total_students
FROM Students
GROUP BY course;

--------------------------------------------------

-- HAVING
SELECT course, AVG(marks) AS average_marks
FROM Students
GROUP BY course
HAVING AVG(marks) > 80;

--------------------------------------------------

-- SUBQUERY
SELECT name
FROM Students
WHERE marks > (
    SELECT AVG(marks) FROM Students
);
