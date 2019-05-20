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

 

C.  	Apply scripting standards throughout your script, including the addition of 
	comments that describe the behavior of each of parts B1–B5.

 

D.  	Apply exception handling using try-catch for System.OutOfMemoryException.

 

E.  	Run your script and take a screenshot of the user results when each prompt (parts B3–B4) 
	is chosen. Save each screenshot within the “Requirements1” folder. Compress all files 
	(original and new) within the folder to a ZIP archive.

 

F.  	When you are ready to submit your final script, run the Get-FileHash cmdlet 
	against the “Requirements1” ZIP archive. Note that hash value and place it into 
	the comment section when you submit your task.

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

## EXECUTION

