const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers INNER JOIN assistance_requests 
ON teacher_id = teachers.id
INNER JOIN students on student_id = students.id 
INNER JOIN cohorts on cohort_id = cohorts.id
WHERE cohorts.name = '${process.argv[2] || 'JUL02'}' 
ORDER BY teacher; 
`)
.then(res => {
    res.rows.forEach(user => {
        console.log(`${user.cohort}: ${user.teacher}`);
    })
})
.catch(err => console.error('query error', err.stack));