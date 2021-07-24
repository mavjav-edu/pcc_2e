Get-ChildItem -Path "." -Filter "chapter*" -Directory | ForEach-Object { 
    $chStr = (Select-String -InputObject $_.BaseName -Pattern "chapter_(\d+)").Matches.Groups[1]
    New-Item -Path $env:TEMP -ItemType Directory -Name "pcc-chapter-$chStr"
    Push-Location -Path "$env:TEMP\pcc-chapter-$chStr"
    gh repo clone "mavaddat-javid-education/pcc-chapter-$chStr"
    git rm -r *
    Copy-Item -Path $_ -Recurse -Destination .
    git add *
    git commit -a -m "update to pcc_2e"
    git push origin master
    #gh repo create "mavaddat-javid-education/pcc-chapter-$chStr" -d="$title`: Assignment for Ch $chInt in Python Crash Course" --enable-issues=false --enable-wiki=false --confirm --public
    Pop-Location
}