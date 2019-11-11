SELECT SUM(duration) AS total_duration
FROM students
JOIN assignment_submissions AS a
ON students.id = a.student_id
WHERE students.name = 'Ibrahim Schimmel';