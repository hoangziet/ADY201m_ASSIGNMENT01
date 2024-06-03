SELECT c.Case_Number, i.Description, i.Primary_Type
FROM tbl_Crime c
JOIN tbl_IUCR i ON c.IUCR = i.IUCR
WHERE i.Primary_Type LIKE '%kidnapping%' AND i.Description LIKE '%child%';
