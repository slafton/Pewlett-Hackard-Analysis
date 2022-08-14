SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;


SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title 
ORDER BY count DESC;

SELECT * FROM retiring_titles;


--Mentorship Eligibility Table
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.to_date, de.dept_no, t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no=de.emp_no)
INNER JOIN titles AS t
on (e.emp_no=t.emp_no)
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31');

SELECT * FROM mentorship_eligibility;

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO one_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd001';

SELECT * FROM one_dept;

SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO one_dept_ret
FROM one_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM one_dept_ret;



SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO two_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd002';

SELECT * FROM two_dept;

SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO two_dept_ret
FROM two_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM two_dept_ret;

SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO three_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd003';

SELECT * FROM two_dept;

SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO three_dept_ret
FROM three_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM three_dept_ret;
SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO four_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd003';


SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO three_dept_ret
FROM three_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');


SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO four_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd004';



SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO four_dept_ret
FROM four_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM four_dept_ret;


SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO five_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd005';



SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO five_dept_ret
FROM five_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM five_dept_ret;

SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO six_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd006';



SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO six_dept_ret
FROM six_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM six_dept_ret;

SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO seven_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd007';



SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO seven_dept_ret
FROM seven_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM seven_dept_ret;

SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO eight_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd008';



SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO eight_dept_ret
FROM eight_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');


SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO nine_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd009';



SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO nine_dept_ret
FROM nine_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM nine_dept_ret;
SELECT d.emp_no, d.dept_no, d.from_date, d.to_date, r.first_name, r.last_name
INTO eight_dept
FROM dept_emp as d 
FULL OUTER JOIN retirement_info as r
ON (r.emp_no = d.emp_no)
WHERE d.dept_no = 'd008';



SELECT od.emp_no, od.dept_no, od.from_date, od.to_date, od.first_name, od.last_name, e.birth_date
INTO eight_dept_ret
FROM eight_dept AS od
LEFT OUTER JOIN employees AS e
ON (od.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM eight_dept_ret;