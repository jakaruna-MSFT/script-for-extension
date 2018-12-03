Write-Host "adding current date to a file"

Get-Date | Add-Content C:\extension_execution_test.txt

#below command is ues to generate the error during the execution of the extension.
SomeWrongCommandToGenerateError
