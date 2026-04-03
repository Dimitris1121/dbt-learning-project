-- models/stg_goalscorers.sql
select
  date,
  home_team,
  away_team,
  scorer as player_name,
  minute,
  own_goal,
  penalty
from {{ source('Demo', 'Goalscorers') }}