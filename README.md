📘 Department-Course Management System (SQL, 3NF)
This project showcases the design and implementation of a simple academic database system using SQL, normalized up to Third Normal Form (3NF). It involves creating and managing departments and their courses, inserting sample data, querying using subqueries, and applying access control using DCL.

🧩 Project Parts
📌 Part A: Table Creation with 3NF Normalization
Objective:
Design two normalized tables: Departments and Courses.

Features:

Each department has a unique ID and name.

Each course is associated with exactly one department using a foreign key.

Data is normalized to 3NF to avoid redundancy and ensure integrity.

Tables:

Departments(dept_id, dept_name)

Courses(course_id, course_name, dept_id)

📌 Part B: Insert Sample Data
Objective:
Insert realistic data into both tables to simulate an academic environment.

Departments Sample:

Computer Science, Electrical, Mechanical, Civil, Electronics

Courses Sample:

DBMS, Operating Systems, Circuits, Thermodynamics, Structural Engineering, etc.

Constraint:
Each department must have multiple courses.

📌 Part C: Query with Subquery
Objective:
Use a subquery to find departments offering more than two courses.

sql
Copy
Edit
SELECT dept_name
FROM Departments
WHERE dept_id IN (
    SELECT dept_id
    FROM Courses
    GROUP BY dept_id
    HAVING COUNT(*) > 2
);
📌 Part D: Grant SELECT Permission (DCL)
Objective:
Restrict data access to a user named viewer_user with only read access to the Courses table.

sql
Copy
Edit
-- Run by admin user only
GRANT SELECT ON db_43swauv3p.Courses TO 'viewer_user'@'%';
📂 Files Included
department_course_project.sql — Full SQL script to create tables, insert data, run queries, and apply DCL (commented).

🚀 How to Run
Connect to your MySQL server (Workbench, CLI, etc.)

Run the script:

bash
Copy
Edit
SOURCE path/to/department_course_project.sql;
View tables and test queries!

📌 Technologies Used
SQL (MySQL-compatible)

DDL (CREATE, DROP)

DML (INSERT)

DQL (SELECT with subquery)

DCL (GRANT)
