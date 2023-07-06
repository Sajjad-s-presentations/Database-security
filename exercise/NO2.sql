-- A:
SELECT section.*, teaches.ID AS instructor_ID
FROM section
INNER JOIN teaches ON section.course_id = teaches.course_id AND section.sec_id = teaches.sec_id
WHERE (section.semester, section.year, section.time_slot_id) IN (
  SELECT semester, year, time_slot_id
  FROM teaches
  GROUP BY semester, year, time_slot_id
  HAVING COUNT(DISTINCT course_id) > 1
);


-- B:
CREATE ASSERTION instructor_section_constraint
CHECK (
  NOT EXISTS (
    SELECT teaches1.ID, teaches1.course_id, teaches1.sec_id, teaches1.semester, teaches1.year
    FROM teaches AS teaches1, teaches AS teaches2
    WHERE teaches1.ID = teaches2.ID
      AND teaches1.semester = teaches2.semester
      AND teaches1.year = teaches2.year
      AND teaches1.time_slot_id = teaches2.time_slot_id
      AND teaches1.course_id <> teaches2.course_id
      AND teaches1.sec_id <> teaches2.sec_id
  )
);
