SELECT first_name, last_name, dept_no
FROM employee
ORDER BY first_name
-----------------------------------
SELECT first_name, last_name, dept_no
FROM employee
ORDER BY last_name DESC
-----------------------------------
SELECT first_name, last_name, dept_no
FROM employee
ORDER BY salary
-------------------------------------
SELECT first_name, last_name, dept_no, job_code, salary * 1.1
FROM employee
ORDER BY 5
---------------------------------------
SELECT first_name, last_name, dept_no, job_code, salary * 1.1
FROM employee
ORDER BY dept_no, 5 DESC, last_name
-----------------------------------
SELECT DISTINCT first_name, last_name
FROM employee
WHERE first_name = "Roger"
-----------------------------------
SELECT first_name, last_name, department
FROM employee, department
WHERE job_code = "VP"
-----------------------
SELECT first_name, last_name, department
FROM employee, department
WHERE job_code = "VP" AND employee.dept_no = department.dept_no
--------------------
SELECT first_name, last_name, department
FROM employee e, department d
WHERE job_code = "VP" AND e.dept_no = d.dept_no
-----------------------
SELECT first_name, last_name, job_title,
       department
FROM employee e, department d, job j
WHERE d.mngr_no = e.emp_no
  AND e.job_code = j.job_code
  AND e.job_grade = j.job_grade
  AND e.job_country = j.job_country
-------------------------
SELECT first_name, last_name, department
FROM employee e JOIN department d
ON e.dept_no = d.dept_no
AND department = "Costumer Support"
WHERE last_name starting with "P"
-----------------------------