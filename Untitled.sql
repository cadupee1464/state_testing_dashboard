SELECT
    StudentIdentifier,
    COUNT(*) AS rows_per_student
FROM dim_students
GROUP BY StudentIdentifier
HAVING COUNT(*) > 1
ORDER BY rows_per_student DESC;

SELECT *
FROM stg_state_testing
WHERE StudentIdentifier = '8164841e9681b5f392fa918e55444bf6';