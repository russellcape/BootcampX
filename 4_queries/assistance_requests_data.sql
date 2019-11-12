SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, assist_req.completed_at - assist_req.started_at AS duration
FROM assistance_requests AS assist_req INNER JOIN teachers
ON teachers.id = assist_req.teacher_id INNER JOIN students
ON students.id = assist_req.student_id FULL OUTER JOIN assignments
ON assignments.id = assist_req.assignment_id
ORDER BY duration;