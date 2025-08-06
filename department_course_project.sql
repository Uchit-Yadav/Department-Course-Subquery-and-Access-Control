
-- PART A: Create normalized tables

CREATE TABLE IF NOT EXISTS Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE
);

CREATE TABLE IF NOT EXISTS Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- PART B: Insert sample department and course data

INSERT INTO Departments (dept_id, dept_name) VALUES
(1, 'Computer Science'),
(2, 'Electrical'),
(3, 'Mechanical'),
(4, 'Civil'),
(5, 'Electronics');

INSERT INTO Courses (course_id, course_name, dept_id) VALUES
(101, 'DBMS', 1),
(102, 'Operating Systems', 1),
(103, 'Power Systems', 2),
(104, 'Digital Circuits', 2),
(105, 'Thermodynamics', 3),
(106, 'Fluid Mechanics', 3),
(107, 'Structural Engineering', 4),
(108, 'Surveying', 4),
(109, 'Embedded Systems', 5),
(110, 'VLSI Design', 5);

-- PART C: Retrieve departments offering more than two courses

SELECT dept_name
FROM Departments
WHERE dept_id IN (
    SELECT dept_id
    FROM Courses
    GROUP BY dept_id
    HAVING COUNT(*) > 2
);

-- PART D: GRANT - Commented out as permission is denied for this user
-- If you are admin or have access via root, you can run this:

-- GRANT SELECT ON db_43swauv3p.Courses TO 'viewer_user'@'%';
