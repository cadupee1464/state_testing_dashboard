SELECT
sc.SCHOOL_ID,
st.STUDENTIDENTIFIER,
asm.ASSESSMENTNAME,
stg.SUBMITDATETIME,
stg.SCHOOLYEAR,
stg.GRADELEVELWHENASSESSED,
stg.SCALESCOREACHIEVEMENTLEVEL,
stg.SCALESCORE,
stg.EnglishLanguageAcquisitionStatus,
stg.LanguageCode,
stg.LanguageAltCode,
CASE WHEN TRIM(UPPER(stg.MigrantStatus)) = 'YES' THEN TRUE
    WHEN TRIM(UPPER(stg.MigrantStatus)) = 'NO' THEN FALSE
    END AS IsMigrant
FROM {{ ref('stg_state_testing')  }} as stg
LEFT JOIN {{  ref('dim_schools')  }} as sc
ON stg.SchoolName = sc.School_Name
LEFT JOIN {{  ref('dim_students')  }} as st
ON stg.STUDENTIDENTIFIER = st.STUDENTIDENTIFIER
LEFT JOIN {{  ref('dim_assessments')  }} as asm
ON stg.ASSESSMENTNAME = asm.ASSESSMENTNAME