--Challenge 1

SELECT emps.emp_no,
	emps.first_name,
	emps.last_name,
	tit.title,
	tit.from_date,
	tit.to_date
INTO retirement_titles
FROM employees as emps
INNER JOIN titles as tit
ON (emps.emp_no = tit.emp_no)
WHERE (emps.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY (emps.emp_no = tit.emp_no)

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (employees.emp_no)employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title
INTO unique_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no ASC, titles.to_date DESC;

DROP TABLE retiring_titles;
SELECT COUNT(emp_no) as "count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC

SELECT * FROM unique_titles