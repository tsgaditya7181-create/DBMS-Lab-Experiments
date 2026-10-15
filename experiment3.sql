```sql
-- =====================================================
-- 1. CREATE DEPARTMENT TABLE
-- =====================================================

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);


-- =====================================================
-- 2. CREATE EMPLOYEE TABLE
-- =====================================================

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    age INT,
    dept_id INT,

    FOREIGN KEY (dept_id)
        REFERENCES Department(dept_id)
);


-- =====================================================
-- 3. CREATE PROJECT TABLE
-- =====================================================

CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    budget DECIMAL(12,2),
    dept_id INT,

    FOREIGN KEY (dept_id)
        REFERENCES Department(dept_id)
);


-- =====================================================
-- 4. INSERT 5 DEPARTMENTS
-- =====================================================

INSERT INTO Department
    (dept_id, dept_name, location)
VALUES
    (1, 'CSE', 'Delhi'),
    (2, 'AIML', 'Noida'),
    (3, 'HR', 'Lucknow'),
    (4, 'Finance', 'Mumbai'),
    (5, 'Marketing', 'Bangalore');


-- =====================================================
-- 5. INSERT 30 EMPLOYEES
-- =====================================================

INSERT INTO Employee
    (emp_id, emp_name, salary, age, dept_id)
VALUES
    (101, 'Rahul Sharma', 55000, 24, 1),
    (102, 'Aman Verma', 62000, 26, 1),
    (103, 'Neha Gupta', 58000, 25, 1),
    (104, 'Rohit Singh', 72000, 29, 1),
    (105, 'Priya Mishra', 68000, 27, 1),
    (106, 'Arjun Yadav', 49000, 23, 1),

    (107, 'Ananya Kapoor', 75000, 28, 2),
    (108, 'Vivek Patel', 82000, 30, 2),
    (109, 'Sneha Jain', 65000, 26, 2),
    (110, 'Karan Mehta', 91000, 32, 2),
    (111, 'Simran Kaur', 70000, 27, 2),
    (112, 'Aditya Rao', 60000, 25, 2),

    (113, 'Pooja Singh', 45000, 24, 3),
    (114, 'Nitin Kumar', 52000, 28, 3),
    (115, 'Riya Sharma', 58000, 29, 3),
    (116, 'Mohit Verma', 63000, 31, 3),
    (117, 'Kavita Gupta', 55000, 26, 3),
    (118, 'Sahil Khan', 48000, 25, 3),

    (119, 'Deepak Agarwal', 78000, 30, 4),
    (120, 'Megha Joshi', 85000, 29, 4),
    (121, 'Varun Malhotra', 95000, 34, 4),
    (122, 'Isha Sinha', 67000, 27, 4),
    (123, 'Manish Tiwari', 73000, 31, 4),
    (124, 'Shreya Roy', 88000, 32, 4),

    (125, 'Akash Gupta', 52000, 24, 5),
    (126, 'Nisha Patel', 61000, 26, 5),
    (127, 'Yash Sharma', 69000, 28, 5),
    (128, 'Tanya Verma', 74000, 29, 5),
    (129, 'Harsh Singh', 57000, 25, 5),
    (130, 'Aditi Mehra', 80000, 30, 5);


-- =====================================================
-- 6. INSERT 8 PROJECTS
-- =====================================================

INSERT INTO Project
    (project_id, project_name, budget, dept_id)
VALUES
    (201, 'E-Commerce Platform', 500000, 1),
    (202, 'Cyber Security System', 750000, 1),
    (203, 'AI Chatbot', 900000, 2),
    (204, 'Machine Learning Model', 850000, 2),
    (205, 'Employee Management System', 400000, 3),
    (206, 'Financial Analysis Tool', 650000, 4),
    (207, 'Marketing Automation', 550000, 5),
    (208, 'Customer Analytics', 700000, 5);


-- =====================================================
-- 7. DISPLAY ALL RECORDS
-- =====================================================

SELECT * FROM Department;

SELECT * FROM Employee;

SELECT * FROM Project;
```
