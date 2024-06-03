SELECT a.Community_Area , COUNT(*) as Count
FROM tbl_Address a
GROUP BY a.Community_Area
ORDER BY COUNT(*) DESC