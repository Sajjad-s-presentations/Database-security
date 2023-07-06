-- Exercise NO1
-- Sajjad Ranjbar Yazdi 9812223294

-- A:
SELECT instructor.ID, COUNT(teaches.sec_id) AS section_count
FROM instructor
LEFT JOIN teaches ON instructor.ID = teaches.ID
GROUP BY instructor.ID;

-- B:
SELECT section.*, instructor.name AS instructor_name
FROM section
INNER JOIN teaches ON section.course_id = teaches.course_id AND section.sec_id = teaches.sec_id
INNER JOIN instructor ON teaches.ID = instructor.ID
WHERE section.semester = 'Spring' AND section.year = 2018;

-- C:
SELECT department.dept_name, COUNT(instructor.ID) AS instructor_count
FROM department
LEFT JOIN instructor ON department.dept_name = instructor.dept_name
GROUP BY department.dept_name;

