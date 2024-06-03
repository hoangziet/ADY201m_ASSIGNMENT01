SELECT COMMUNITY_AREA_NAME
FROM tbl_Census
WHERE Hardship_Index = (SELECT MAX(Hardship_Index)
FROM tbl_Census);
