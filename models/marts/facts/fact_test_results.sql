SELECT
sc.SCHOOL_ID,
st.STUDENTIDENTIFIER,
asm.ASSESSMENTNAME,
stg.SUBMITDATETIME,
stg.SCHOOLYEAR,
stg.GRADELEVELWHENASSESSED,
stg.SCALESCOREACHIEVEMENTLEVEL,
stg.SCALESCORE
FROM {{ ref('stg_state_testing')  }} as stg
LEFT JOIN {{  ref('dim_schools')  }} as sc
ON stg.SchoolName = sc.School_Name
LEFT JOIN {{  ref('dim_students')  }} as st
ON stg.STUDENTIDENTIFIER = st.STUDENTIDENTIFIER
LEFT JOIN {{  ref('dim_assessments')  }} as asm
ON stg.ASSESSMENTNAME = asm.ASSESSMENTNAME