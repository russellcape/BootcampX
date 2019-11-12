SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM cohorts INNER JOIN students 
ON cohorts.id = students.cohort_id INNER JOIN assistance_requests AS assist_req
ON students.id = assist_req.student_id INNER JOIN teachers 
ON teachers.id = assist_req.teacher_id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;