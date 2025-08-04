SELECT match_score,COUNT(*) AS num_of_desc
FROM resume
GROUP BY match_score
ORDER BY match_score;