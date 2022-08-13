
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