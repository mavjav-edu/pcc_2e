Get-ChildItem -Path "." -Filter "chapter*" -Directory | ForEach-Object { 
    $chStr = (Select-String -InputObject $_.BaseName -Pattern "chapter_(\d+)").Matches.Groups[1]
    if(Test-Path "$env:TEMP\pcc-chapter-$chStr" -PathType Container ) {
        Remove-Item "$env:TEMP\pcc-chapter-$chStr" -Force -Recurse -ErrorAction Ignore
    }
    Write-Host "Processing chapter $chStr"
    Push-Location $env:TEMP
    git clone "https://github.com/mavaddat-javid-education/pcc-chapter-$chStr.git"
    Push-Location -Path ".\pcc-chapter-$chStr" -ErrorAction Break
    Write-Host "Removing the chapter folder"
    git rm -r *
    if (-not $?) {
        throw "Error with git remove!"
    }
    Write-Host "Copying to the chapter folder"
    Copy-Item -Path $_ -Recurse -Destination . -ErrorAction Break
    Write-Host "Staging the chapter"
    git add *
    if (-not $?) {
        throw "Error with git add!"
    }
    Write-Host "Committing the chapter"
    git commit -a -m "update to pcc_2e"
    if (-not $?) {
        throw "Error with git commit!"
    }
    Write-Host "Pushing the chapter"
    git push --force
    if (-not $?) {
        throw "Error with git push!"
    }
    #gh repo create "mavaddat-javid-education/pcc-chapter-$chStr" -d="$title`: Assignment for Ch $chInt in Python Crash Course" --enable-issues=false --enable-wiki=false --confirm --public
    Pop-Location
}