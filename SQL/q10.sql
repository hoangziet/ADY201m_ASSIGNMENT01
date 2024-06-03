WITH crime_count AS
(
    SELECT Community_Area, COUNT(*) AS crime_count
    FROM tbl_Address
    GROUP BY Community_Area
)
SELECT TOP 1 COMMUNITY_AREA_NAME
FROM tbl_Census
JOIN crime_count
ON tbl_Census.Community_Area_Number = crime_count.Community_Area
ORDER BY crime_count DESC
