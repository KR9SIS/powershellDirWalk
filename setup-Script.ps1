wget raw.githubusercontent.com/KR9SIS/powershellDirWalk/main/print-Header.ps1 -OutFile ('C:\\Users\\' + $env:USERNAME + '\\Downloads\\print-Header.ps1')
wget raw.githubusercontent.com/KR9SIS/powershellDirWalk/main/traverse-Dir.ps1 -OutFile ('C:\\Users\\' + $env:USERNAME + '\\Downloads\\traverse-Dir.ps1')


$header = Join-Path -Path 'C:' -ChildPath 'Users' | Join-Path -ChildPath $env:USERNAME | Join-Path -ChildPath 'Downloads' | Join-Path -ChildPath 'print-Header.ps1' 
$traversal = Join-Path -Path 'C:' -ChildPath 'Users' | Join-Path -ChildPath $env:USERNAME | Join-Path -ChildPath 'Downloads' | Join-Path -ChildPath 'traverse-Dir.ps1' 
$userDir = Join-Path -Path 'C:' -ChildPath 'Users' 

#Start-Process wt.exe -ArgumentList "--maximized", "Powershell -NoProfile -NoExit -File `"$header`"", "split-pane", "-H", "Powershell -NoProfile -NoExit -File `"$traversal`""

start wt '--maximized $header ; sp -H -p "NoProfile" powershell -nop -noexit -command Get-ChildItem -Name -Recurse -Path $userDir'

#Remove-MpPreference -ExclusionExtension ps1
#Set-ExecutionPolicy Restricted -Force
exit
