select
  player_name,
  count(*) as total_goals,
  countif(penalty = true) as penalties,
  countif(own_goal = true) as own_goals
from {{ ref('stg_goalscorers') }}   -- ref() links models together!
group by player_name
order by total_goals desc