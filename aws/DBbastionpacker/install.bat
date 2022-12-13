REM CREATE FOLDERS
md C:\temp
REM SYNC TIME WITH AWS TIME SERVICE
w32tm /config /manualpeerlist:169.254.169.123 /syncfromflags:manual /update
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_DWORD /f
REM INSTALL AWS CLI
powershell.exe Invoke-WebRequest https://s3.amazonaws.com/aws-cli/AWSCLI64.msi -OutFile C:\temp\AWSCLI64.msi
start /wait msiexec.exe -i C:\temp\AWSCLI64.msi /quiet /l C:\temp\awscli-install-log.txt