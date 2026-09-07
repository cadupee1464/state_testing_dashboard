SELECT
sc.School_ID,
st.StudentIdentifier,
st.SchoolYear,
st.AssessmentName,
st.GradeLevelWhenAssessed,
st.ScaleScoreAchievementLevel,
st.ScaleScore
FROM {{ ref('stg_state_testing')  }} as st
LEFT JOIN {{  ref('dim_schools')  }} as sc
ON st.SchoolName = sc.School_Name