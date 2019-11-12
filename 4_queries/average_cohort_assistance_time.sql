SELECT cohorts.name, Avg(completed_at - started_at) AS average_assistance_time
FROM assistance_requests AS assist_req INNER JOIN students
ON  assist_req.student_id = students.id INNER JOIN cohorts
ON cohorts.id = students.cohort_id
WHERE cohort_id IS NOT NULL
GROUP BY cohorts.name
ORDER BY average_assistance_time;
