SELECT
sc.SchoolID,
st.StudentIdentifier,
st.SchoolYear,
st.AssessmentName,
st.GradeLevelWhenAssessed,
st.ScaleScoreAchievementLevel,
st.ScaleScore
FROM stg st
LEFT JOIN school sc
ON st.SchoolName = sc.SchoolName