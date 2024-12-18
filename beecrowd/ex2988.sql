select t.name, count(*) as matches,
count(case when team_1 = t.id and team_1_goals > team_2_goals then t.id end) 
+ count(case when team_2 = t.id and team_2_goals > team_1_goals then t.id end) as victories,
count(case when team_1 = t.id and team_1_goals < team_2_goals then t.id end) 
+ count(case when team_2 = t.id and team_2_goals < team_1_goals then t.id end) as defeats,
count(case when (team_1 = t.id or team_2 = t.id) and team_1_goals = team_2_goals then t.id end) as draws,
(count(case when team_1 = t.id and team_1_goals > team_2_goals then t.id end) 
+ count(case when team_2 = t.id and team_2_goals > team_1_goals then t.id end)) * 3 
+ count(case when (team_1 = t.id or team_2 = t.id) and team_1_goals = team_2_goals then t.id end) * 1 as score
from teams as t
inner join matches as m
on m.team_1 = t.id or m.team_2 = t.id
group by t.id
order by score desc, t.name