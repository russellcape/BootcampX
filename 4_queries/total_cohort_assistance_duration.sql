SELECT cohorts.name, SUM(completed_at - started_at) AS total_duration
FROM cohorts INNER JOIN students
ON cohorts.id = students.cohort_id INNER JOIN assistance_requests
ON assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY total_duration;