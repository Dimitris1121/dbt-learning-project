select
    user_id,
    name,
    plan,
    signup_date,
    country
from {{ ref('users') }}