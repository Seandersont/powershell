<#
.SYNOPSIS
  Problem 1 script to demonstrate prompt mechanics

.DESCRIPTION
A.  	Create a PowerShell script named “prompts.ps1” within the “Requirements1” folder. 
	For the first line, create a comment and include your first and last name along 
	with your student ID.

	Note: The remainder of this task should be completed within the same script file,
	prompts.ps1.

B.  	Create a “switch” statement that continues to prompt a user by doing each of the 
	following activities, until a user presses key 5:

	1.   	Using a regular expression, list files within the Requirements1 folder, with the 
		.log file extension and redirect the results to a new file called “DailyLog.txt”
		within the same directory without overwriting existing data. Each time the user 
		selects this prompt, the current date should precede the listing. (User presses key 1.)

	2.  	List the files inside the “Requirements1” folder in tabular format, sorted in 
		ascending alphabetical order. Direct the output into a new file called 
		“C916contents.txt” found in your “Requirements1” folder. (User presses key 2.)

	3. 	Use counters to list the current CPU % Processor Time and physical memory usage. 
		Collect 4 samples with each sample being 5 seconds intervals. (User presses key 3.) 

	4.  	List all the different running processes inside your system. Sort the output by 
		processor time in seconds greatest to least, and display it in grid format. 
		(User presses key 4.) 

	5.  	Exit the script execution. (User presses key 5.)

C.  	Apply exception handling using try-catch for System.OutOfMemoryException.

.NOTES
  Version:	  1.0
  Author:	  Sean Anderson
  Creation Date:  20 May, 2019
#>

# Requires -version 2

## PARAMETERS

## VARIABLES

$n = 0

## FUNCTIONS

Function Out-LogFiles {
	Param(
		[string]$requiredFilesPath = ".\Requirements1"
	)
	
	$logFiles = Get-ChildItem $requiredFilesPath | Where-Object name -like *.log
	"Log file created " + (Get-Date) | Out-File -Append -FilePath .\Requirements1\DailyLog.txt
	$logFiles | Out-File -Append .\Requirements1\DailyLog.txt
	
}

Function List-AllFiles {
	Param(
		[string]$requiredFilesPath = ".\Requirements1"
	)
	
	$logFiles = Get-ChildItem $requiredFilesPath | Sort-Object Name -descending | Format-Table
	$logFiles | Out-File .\Requirements1\C916contents.txt	
	
}

## EXECUTION
Try 
{
	while ( $n -ne 5)
	{
		write-host -ForegroundColor DarkCyan '1. List log files within the Requirements1 folder.

2. List the files inside the Requirements1 folder.

3. List the current CPU %, Processor Time, and physical memory usage. 
	
4. Display running processes.
		
5. Exit the script execution.
'
		$n = Read-Host -Prompt '>> Select a Number'
		switch -Exact ($n)
		{
			1 {Out-LogFiles(".\Requirements1")}
			2 {List-AllFiles(".\Requirements1")}
			3 {Get-Counter -SampleInterval 5 -MaxSamples 4}
			4 {Get-Process | Select-Object Name, ID, TotalProcessorTime | Sort-Object TotalProcessorTime -Descending | Format-Table}
			5 {}
		}
	}
}
Catch [System.OutOfMemoryException] 
{
	Write-Host -ForegroundColor $_.Exception.Message
}
