Get-ChildItem -Path "." -Filter "chapter*" -Directory | ForEach-Object { 
    $chStr = (Select-String -InputObject $_.BaseName -Pattern "chapter_(\d+)").Matches.Groups[1]; 
    $chInt = [Int32]::Parse($chStr)
    Copy-Item -Path $_ -Recurse -Destination ($dest = "$env:USERPROFILE\Documents\Github\pcc-chapter-$chStr")
    Push-Location $dest
    $prevCh = ($chInt-1).ToString('00')
    $nextCh = ($chInt+1).ToString('00')
    $readmeContent = Get-Content .\README.md -Raw -Encoding utf8
    $title = (
        Select-String -InputObject $readmeContent -Pattern "title: ([^\n\r\-]+)"
    ).Matches.Groups[1].Value
    $codeBlocks= Select-String -InputObject $readmeContent -Pattern '```[^`]*?[\r\n]+[^`]+```[^`]*?[\r\n]+' -AllMatches
    foreach ($codeBlock in $codeBlocks) {
        Write-Host $codeBlock
        pause
    }
    [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes( $(Get-Clipboard) ) ) | Set-Clipboard
    $readmeContent = $readmeContent -replace "<span[^>]+>[^>]+</[^>]+>", '' -replace '(?<=[a-z])\r?\n', ' ' -replace "<a href='[^']+'>(.*? Prev)</a>", '[$1]("../pcc-chapter-prevCh")' -replace "<a href='[^']+'>(Next .*?)</a>", '[$1](../pcc-chapter-nextCh)' -replace 'prevCh',"$prevCh" -replace 'nextCh',"$nextCh" -replace '---[\r\n\s]+layout:.*?[\r\n\s]+title:.*?[\r\n\s]+---[\r\n\s]*',''
    Set-Content -Value $readmeContent -Path .\README.md -Encoding utf8
    code-insiders.cmd '.\README.md'
    gh repo create "mavaddat-javid-education/pcc-chapter-$chStr" -d="$title`: Assignment for Ch $chInt in Python Crash Course" --enable-issues=false --enable-wiki=false --confirm --public
    Pop-Location
}