
Get-ChildItem -Path "." -Filter "chapter*" -Directory -ErrorAction Inquire | ForEach-Object { 
    $chStr = (Select-String -InputObject $_.BaseName -Pattern "chapter_(\d+)").Matches.Groups[1]
    if (Test-Path "$env:TEMP\pcc-chapter-$chStr" -PathType Container -ErrorAction Inquire ) {
        Remove-Item "$env:TEMP\pcc-chapter-$chStr" -Force -Recurse -ErrorAction Inquire
    }
    Write-Host "Processing chapter $chStr"
    Set-Location $env:TEMP
    git clone "https://github.com/mavaddat-javid-education/pcc-chapter-$chStr.git"
    Push-Location -Path ".\pcc-chapter-$chStr" -ErrorAction Break
    if ( $null -ne ($delThis = Resolve-Path ".\chapter_*" -ErrorAction Inquire -Relative) -and ( Test-Path -Path  $delThis -PathType Container )) { 
        Write-Host  "Deleting superfluous $delThis subfolder in ch $chStr"

        git rm -r "$delThis" -f
        if (-not $?) {
            throw "Error with git remove on $delThis subfolder in ch $chStr!"
        }
        Remove-Item $delThis -Force -Recurse -ErrorAction Ignore
        git add . && git stage . -f
        if( -not $?) {
            throw "Error with git add/stage on $delThis subfolder in ch $chStr!"
        }
        git commit -m "del superfluous $delThis subdir"
        
        if (-not $?) {
            throw "Error with git commit on $delThis subfolder in ch $chStr!"
        }

        git push
        
        if (-not $?) {
            throw "Error with git push on $delThis subfolder in ch $chStr!"
        }
    }
    Write-Host "Copying to the chapter folder"
    $currPath = $_
    Get-ChildItem $currPath -Recurse | ForEach-Object { 
        Copy-Item $_ -Destination . -Recurse -Force -ErrorAction Inquire
    }
    Copy-Item -Path $_ -Recurse -Destination . -Force -ErrorAction Break
    Write-Host "Staging the chapter"
    git add *
    if (-not $?) {
        throw "Error with git add on ch $chStr!"
    }
    Write-Host "Committing the chapter"
    git commit -m "update to pcc_2e "
    if (-not $?) {
        throw "Error with git commit!"
    }
    Write-Host "Pushing the chapter"
    git push --force
    if (-not $?) {
        throw "Error with git push on ch $chStr!"
    }
    #gh repo create "mavaddat-javid-education/pcc-chapter-$chStr" -d="$title`: Assignment for Ch $chInt in Python Crash Course" --enable-issues=false --enable-wiki=false --confirm --public
    Set-Location  "~\Documents\GitHub\pcc_2e\"
}