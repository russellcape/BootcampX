SELECT assist_req.assignment_id, name, day, chapter, COUNT(assist_req.*) AS total_requests 
FROM assistance_requests AS assist_req INNER JOIN assignments
ON assignments.id = assist_req.assignment_id
GROUP BY assist_req.assignment_id, name, day, chapter
ORDER BY total_requests DESC;