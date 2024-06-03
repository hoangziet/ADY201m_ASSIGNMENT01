SELECT DISTINCT i.Primary_Type, i.Description, a.Location_Description
FROM tbl_Crime c
JOIN tbl_Address a ON c.ID = a.ID
JOIN tbl_IUCR i ON c.IUCR = i.IUCR
WHERE a.Location_Description LIKE '%School%';