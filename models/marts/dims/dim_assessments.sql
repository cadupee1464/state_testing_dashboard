with discrete_tests as (
SELECT 
    DISTINCT AssessmentName,
    Subject,
    AssessmentType,
    AssessmentSubType
FROM {{ ref('stg_state_testing')  }}
)

select * from discrete_tests