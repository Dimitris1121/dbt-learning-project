select
    enrollment_id,
    user_id,
    course_name,
    enrolled_date,
    completed as is_completed,
    completion_date
from {{ ref('enrollments') }}