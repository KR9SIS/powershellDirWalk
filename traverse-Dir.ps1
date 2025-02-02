Write-Host ("`n`nYour files:")

Get-ChildItem -Path C:\Users\$env:USERNAME\* -Exclude *AppData* -Name -Recurse -Force | ForEach-Object {
    Write-Host -NoNewline "$($_)`r"
    Start-Sleep -Milliseconds 25  # Optional delay to visualize the overwrite
}


