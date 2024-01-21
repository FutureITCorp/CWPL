

########################## EVERY SCRIPT TEMPLATE ####################################

############## REQUIREMENT 14 ##################
param ($Mode)



############## REQUIREMENT 12 ##################

<#
   'MODE' PARARMETER.
   0 = Manual mode. Default.
   1 = Semi-Automatic.
#>

<#DESCRIPTION.
  Provide a description of what program does.
#>

############## REQUIREMENT 0 ##################
Write-Host -Object "
      _        _____     _______    _____    __    __
     / \      |  _  |   |__   __|  |  ___|  |  \  /  |
    / _ \     | |_| |      | |     |  |__   |   \/   |
   / /_\ \    | ___ |      | |     |  ___|  | |\__/| |
  /  ___  \   | |  \ \     | |     |  |__   | |    | | 
 /_/     \_\  |_|   \_\    |_|     |_____|  |_|    |_|
  _______      _     _    ______    _____  __        __ 
 |  _____|    | |   | |  | _____|  |  ___| \ \      / /
 | | _____    | |   | |  | |____   |  |__   \ \    / /
 | | |_  |    | |   | |  |____  |  |  ___|   \ \  / /
 | |___| |    | |___| |   ____| |  |  |__     \ \/ /
 |_______|    |_______|  |______|  |_____|     \__/
"





############## REQUIREMENT 8 ##################

If ($Mode -eq 1)
{

}
Else
{
    do
    {

        $ContinueExecute = Read-Host -Prompt "Do you really want this program to be executed?[n/y]"
            If (($ContinueExecute -eq 'n') -or ($ContinueExecute -eq 'no'))
                {
                   Read-Host -Prompt "Press any key to close the program"
                   Exit
                }

    } while (($ContinueExecute -ne 'y') -and ($ContinueExecute -ne 'yes'))
}

do 
{ 


        ############## REQUIREMENT 13 PART 1 ##################
        Write-Host -Object "Creating StopWatch object ..."
        $StopWatch = New-Object -TypeName System.Diagnostics.Stopwatch
        #$StopWatch.Restart()
        Write-Host -Object "Stop StopWatch and set elapsed time back to its original starting point ..."
        $StopWatch.Reset()
        Write-Host -Object "Starting StopWatch ..."
        $StopWatch.Start()


        ################# PROGRAM BODY ##########################
        Write-Host "Code is executing ..."

                ############## FUNCTIONS DEFINITIONS ###################







                ############## REQUIREMENT 7 ##################
                #REQUIREMENTS CHECK.
                #Testing existing of destination path to Windows folder.
                $TestPathDestination = Test-path -path "C:\Windows"
                If (!$TestPathDestination) 
                {
                    Write-Host "Path `"C:\Windows`" does not exist!" -ForegroundColor Green

                    If ($Mode -eq 1)
                    {

                    }
                    Else
                    {
                    Read-Host "Press any key to close the program:"
                    }
                    Exit
                }


                ############### MAIN ############################


Write-host "Exporing data from Active Directory in Non-Unicode encoding."
ldifde -f C:\users\user1\desktop\LDAP\NonUnicode\FullNonUnicode.txt -d "dc=luxoft,dc=com" -s oro-dc1.luxoft.com -p subtree | out-file C:\users\user1\desktop\LDAP\NonUnicode\FULL4NonUnicodelog.txt

Write-host "Exporing data from Active Directory in Unicode encoding."
ldifde -f C:\users\user1\desktop\LDAP\Unicode\FullUnicode.txt -d "dc=luxoft,dc=com" -s oro-dc1.luxoft.com -p subtree | out-file C:\users\user1\desktop\LDAP\Unicode\FULL4Unicodelog.txt

            


        
        ################# END OF PROGRAM BODY ##########################



############## REQUIREMENT 13 PART 2 ##################
Write-Host -Object "Stopping StopWatch ..."
$StopWatch.Stop()
#Write-Host -Object ""
Write-Host -Object "The program has been executing for the following amount of time in 'HH:MM:SS.milliseconds' format: $($StopWatch.Elapsed.ToString())"





############## REQUIREMENT 10 and 11 ##################

If ($Mode -eq 1)
{

}
Else
{
  do {
      $answer = Read-Host -Prompt "
Do you want to run the program from the beginning?[n/y]"

     }
     while (($answer -cne "y") -and ($answer -cne "yes") -and ($answer -cne "n"))
}    

}
while 
(($answer -ceq "y") -or ($answer -ceq "yes"))



