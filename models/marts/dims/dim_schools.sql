select distinct
    schoolname as school_name,
    right(schoolname, 3) as school_id
from {{ ref('stg_state_testing') }}