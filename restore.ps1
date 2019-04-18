# Requires -version 2
<#
.SYNOPSIS
  This script restores active directory OU's and reconfigures SQL server.

.DESCRIPTION
  Write a single script within the “restore.ps1” file that performs all of the following functions without user interaction:

  1.  Create an Active Directory organizational unit (OU) named “finance.”

  2.  Import the financePersonnel.csv file (found in the “Requirements2” directory) into your Active Directory domain and directly into the finance OU. Be sure to include the following properties:

  •  First Name

  •  Last Name

  •  Display Name (First Name + Last Name, including a space between)

  •  Zip Code

  •  Phone1

  •  Phone2

  3.  Create a new database on the SQL server called “ClientDB.”

  4.  Create a new table and name it “Client_A_Contacts.” Add this table to your new database.

  5.  Insert the data from the attached “NewClientData.csv” file (found in the “Requirements2” folder) into the table created in part B5.


  C.  Apply exception handling using try-catch for System.OutOfMemoryException.


  D.  Run the script within the uCertify environment. After the script executes successfully, run the following cmdlets individually:

  1.  Get-ADUser -Filter * -SearchBase “ou=finance,dc=ucertify,dc=com” -Properties DisplayName,PostalCode,Phone1,Phone2 > .\AdResults.txt

  2.  Invoke-Sqlcmd -Database ClientDB -Query ‘SELECT * FROM dbo.Client_A_Contacts’ > .\SqlResults.txt


  Note: Ensure you have all of the following files intact within the “Requirements2” folder, including the original files:

  •  “restore.ps1”

  •  “AdResults.txt”

  •  “SqlResults.txt”


  E.  Compress the “Requirements2” folder as a ZIP archive. When you are ready to submit your final task, run the Get-FileHash cmdlet against the “Requirements2” ZIP archive. Note the hash value and place it into the comment section when you submit your task to Taskstream.

.NOTES
  Version:        1.0
  Author:         Sean Anderson
  Creation Date:  17 April, 2019
  Purpose/Change: Initial script development
#>

## PARAMETERS

Param (
  # Parameters go here
)

## VARIABLES

## FUNCTIONS

Function Add-ADOU {
  New-ADOrganizationalUnit
}

Function Import-ADUsers {

}

Function Add-SQLDB {

}

Function Import-SQLData {

}

## EXECUTION
