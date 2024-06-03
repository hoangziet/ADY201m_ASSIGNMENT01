SELECT School_Type, AVG(Safety_Score) as avg_safety_score
FROM tbl_CHICAGO_PUBLIC_SCHOOLS cps
INNER JOIN tbl_School_Survey ss 
ON cps.School_ID = ss.School_ID
GROUP BY School_Type