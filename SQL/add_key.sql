-- Add FK
ALTER TABLE dbo.tbl_Crime 
ADD CONSTRAINT FK_tbl_Crime_tbl_IUCR
FOREIGN KEY (IUCR) REFERENCES dbo.tbl_IUCR (IUCR);

ALTER TABLE dbo.tbl_Geometry
ADD CONSTRAINT FK_tbl_Geometry_tbl_Crime
FOREIGN KEY (ID) REFERENCES dbo.tbl_Crime (ID);

ALTER TABLE dbo.tbl_Address
ADD CONSTRAINT FK_tbl_Address_tbl_Crime
FOREIGN KEY (ID) REFERENCES dbo.tbl_Crime (ID);

ALTER TABLE dbo.tbl_Address
ADD CONSTRAINT FK_tbl_Address_tbl_Census
FOREIGN KEY (Community_Area) REFERENCES dbo.tbl_Census (Community_Area_Number);
