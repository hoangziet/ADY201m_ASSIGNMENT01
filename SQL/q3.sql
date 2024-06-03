SELECT c.Case_Number, i.Description
FROM tbl_Crime c
JOIN tbl_IUCR i ON c.IUCR = i.IUCR
WHERE i.Description LIKE '%MINOR%';