SELECT c.name, round((s.math*2+s.specific*3+s.project_plan*5)/10, 2) as pontuacao
FROM candidate as c
INNER JOIN score as s
ON c.id = s.candidate_id
ORDER BY pontuacao DESC