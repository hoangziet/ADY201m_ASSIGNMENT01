SELECT YEAR(Date) as YEAR, COUNT(*) AS Total_Crimes
FROM tbl_Crime 
GROUP BY YEAR(Date)
