SELECT job_description,resume,match_score
FROM resume
ORDER BY match_score DESC
LIMIT 1;