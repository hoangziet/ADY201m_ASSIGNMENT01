import pyodbc
import pandas as pd

assgmt1_s = 'Driver={ODBC Driver 18 for SQL Server};Server=tcp:serverz.database.windows.net,1433;Database=ASSIGNMENT_01;Uid=tendangnhap;Pwd=Matkhau@123;Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;'

conn_assgmt1 = pyodbc.connect(assgmt1_s)
cursor_assgmt1 = conn_assgmt1.cursor()


# Read crime_by_year.sql
with open('./SQL/crime_by_year.sql') as f:
    query = f.read()

df = pd.read_sql(query, conn_assgmt1)
df.to_csv('./assets/data/Output/crime_by_year.csv', index=False)
print(df)