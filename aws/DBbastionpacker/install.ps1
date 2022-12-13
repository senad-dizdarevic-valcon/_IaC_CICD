######## DOWNLOAD SQL Server Management Studio
$folderpath="c:\temp"
$filepath="$folderpath\SSMS-Setup-ENU.exe"
$URL = "https://aka.ms/ssmsfullsetup"
$clnt = New-Object System.Net.WebClient
$clnt.DownloadFile($url,$filepath)
Write-Host "SSMS installer download complete" -ForegroundColor Green
######## INSTALL WINDOWS FEATURES
write-host "Beginning SSMS 2018 install..." -nonewline
$Parms = " /Install /Quiet /Norestart /Logs log.txt"
$Prms = $Parms.Split(" ")
& "$filepath" $Prms | Out-Null
Write-Host "SSMS installation complete" -ForegroundColor Green


