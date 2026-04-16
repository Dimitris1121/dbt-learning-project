select
    u.user_id,
    u.name,
    u.plan,
    u.country,
    u.signup_date,
    count(e.enrollment_id)                    as total_enrollments,
    count(case when e.is_completed then 1 end) as completed_courses,
    round(
        count(case when e.is_completed then 1 end) * 100.0 
        / nullif(count(e.enrollment_id), 0)
    , 1)                                       as completion_rate_pct,
    min(e.enrolled_date)                       as first_enrollment_date,
    max(e.enrolled_date)                       as last_enrollment_date
from {{ ref('stg_users') }} u
left join {{ ref('stg_enrollments') }} e
    on u.user_id = e.user_id
group by 1, 2, 3, 4, 5