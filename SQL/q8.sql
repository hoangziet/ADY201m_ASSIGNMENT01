SELECT TOP 1 a.Community_Area as 'THE_MOST_CRIME_PRONE_AREA_NUMBER'
FROM tbl_Address a
GROUP BY a.Community_Area
ORDER BY COUNT(*) DESC