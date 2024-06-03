# Database variables
$sqlserver = "tcp:serverz.database.windows.net,1433"
$database = "TEST"
$table = "tbl_A"

# Connect to SQL Server
$connectionString = "Server=$sqlserver;Database=$database;User ID=tendangnhap;Password=Matkhau@123;Trusted_Connection=False;Encrypt=True;"
$sqlConnection = New-Object System.Data.SqlClient.SqlConnection($connectionString)

try {
    $sqlConnection.Open()
    $sqlCommand = $sqlConnection.CreateCommand()
    $sqlCommand.CommandText = "sp_columns @table_name = '$table'"

    $dataAdapter = New-Object System.Data.SqlClient.SqlDataAdapter($sqlCommand)
    $dataSet = New-Object System.Data.DataSet
    $dataAdapter.Fill($dataSet) | Out-Null

    Write-Host "Columns in the $table table:"
    $dataSet.Tables[0] | Select-Object -Property COLUMN_NAME | ForEach-Object {
        Write-Host $_.COLUMN_NAME
    }
}
catch {
    Write-Host "Error: $_"
}
finally {
    $sqlConnection.Close()
    $sqlConnection.Dispose()
}