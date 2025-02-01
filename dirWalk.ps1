Write-Host (" /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\ ")
Write-Host ("( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )")
Write-Host (" > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ < ")
Write-Host (" /\_/\                                                                               /\_/\ ")
Write-Host ("( o.o )     _    _ _  __   __                 _____ _ _                             ( o.o )")
Write-Host (" > ^ <     / \  | | | \ \ / /__  _   _ _ __  |  ___(_) | ___  ___    __ _ _ __ ___   > ^ < ")
Write-Host (" /\_/\    / _ \ | | |  \ V / _ \| | | | '__| | |_  | | |/ _ \/ __|  / _' | '__/ _ \  /\_/\ ")
Write-Host ("( o.o )  / ___ \| | |   | | (_) | |_| | |    |  _| | | |  __/\__ \ | (_| | | |  __/ ( o.o )")
Write-Host (" > ^ <  /_/__ \_\_|_|   |_|\___/ \__,_|_| _  |_|   |_|_|\___||___/  \__,_|_|  \___|  > ^ < ")
Write-Host (" /\_/\  | __ )  ___| | ___  _ __   __ _  | |_ ___   | | | |___| |                    /\_/\ ")
Write-Host ("( o.o ) |  _ \ / _ \ |/ _ \| '_ \ / _' | | __/ _ \  | | | / __| |                   ( o.o )")
Write-Host (" > ^ <  | |_) |  __/ | (_) | | | | (_| | | || (_) | | |_| \__ \_|                    > ^ < ")
Write-Host (" /\_/\  |____/ \___|_|\___/|_| |_|\__, |  \__\___/   \___/|___(_)                    /\_/\ ")
Write-Host ("( o.o )                           |___/                                             ( o.o )")
Write-Host (" > ^ <                                                                               > ^ < ")
Write-Host (" /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\ ")
Write-Host ("( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )")
Write-Host (" > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ < ")

Write-Host ("`n`nYour files:")

Get-ChildItem -Path C:\Users\$env:USERNAME -Name -Recurse -Force | ForEach-Object {
    Write-Host -NoNewline "$($_)`r"
    Start-Sleep -Milliseconds 25  # Optional delay to visualize the overwrite
}


