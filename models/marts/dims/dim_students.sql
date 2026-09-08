with ethnicity_features as (
SELECT 
    DISTINCT StudentIdentifier,
    CASE WHEN TRIM(UPPER(HispanicOrLatinoEthnicity)) = 'YES' THEN TRUE
    WHEN TRIM(UPPER(HispanicOrLatinoEthnicity)) = 'NA' THEN FALSE
    END AS IsHispanicOrLatino,
    CASE WHEN TRIM(UPPER(AmericanIndianOrAlaskaNative)) = 'YES' THEN TRUE
    WHEN TRIM(UPPER(AmericanIndianOrAlaskaNative)) = 'NA' THEN FALSE
    END AS IsAmericanIndianOrAlaskaNative,
    CASE WHEN TRIM(UPPER(Asian)) = 'YES' THEN TRUE
    WHEN TRIM(UPPER(Asian)) = 'NA' THEN FALSE
    END AS IsAsian,
    CASE WHEN TRIM(UPPER(BlackOrAfricanAmerican)) = 'YES' THEN TRUE
    WHEN TRIM(UPPER(BlackOrAfricanAmerican)) = 'NA' THEN FALSE
    END AS IsBlackOrAfricanAmerican,
    CASE WHEN TRIM(UPPER(White)) = 'YES' THEN TRUE
    WHEN TRIM(UPPER(White)) = 'NA' THEN FALSE
    END AS IsWhite,
    CASE WHEN TRIM(UPPER(NativeHawaiianOrOtherPacificIslander)) = 'YES' THEN TRUE
    WHEN TRIM(UPPER(NativeHawaiianOrOtherPacificIslander)) = 'NA' THEN FALSE
    END AS IsNativeHawaiianOrOtherPacificIslander,
    CASE WHEN TRIM(UPPER(TwoOrMoreRaces)) = 'YES' THEN TRUE
    WHEN TRIM(UPPER(TwoOrMoreRaces)) = 'NA' THEN FALSE
    END AS IsTwoOrMoreRaces,
    CASE WHEN TRIM(UPPER(Filipino)) = 'YES' THEN TRUE
    WHEN TRIM(UPPER(Filipino)) = 'NA' THEN FALSE
    END AS IsFilipino
FROM {{ ref('stg_state_testing')  }}
)

select * from ethnicity_features