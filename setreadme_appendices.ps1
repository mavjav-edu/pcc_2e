#Requires -PSEdition Core
$TESTING = $true

$book = [System.IO.File]::ReadAllBytes("C:\Users\MAVADD~1\CALIBR~1\CALIBR~1\ERICMA~2\PY98C8~1\Python Crash Course_ A Hands-On - Eric Matthes.epub")
[System.Reflection.Assembly]::LoadWithPartialName('System.IO.Compression')
$zipStream = New-Object System.IO.Memorystream
$zipStream.Write($book, 0, $book.Count) | Out-Null
$zipFile = [System.IO.Compression.ZipArchive]::new($zipStream)
$htmlFiles = $zipFile.Entries | Where-Object -Property FullName -Match "app\d+\.html"
foreach ($htmlFile in $htmlFiles) {
    $appendix = $zipFile.GetEntry($htmlFile)
    $appendix.Open().Read(($appContentBytes = [byte[]]::new($appendix.Length)), 0, $($appendix.Length)) | Out-Null
    $appContentStr = [System.Text.Encoding]::Default.GetString($appContentBytes)
    $HTML = New-Object -Com "HTMLFile"
    $HTML.write([ref]$appContentStr) | Out-Null
    $numToLetter = @{0='';1="a";2="b";3="c";4="d"}
    $appNum = (Select-String -InputObject $htmlFile.Name -Pattern "(\d+)").Matches.Value
    $appLetter = $numToLetter[[Int32]::Parse($appNum)]
    $README_md = "appendix_$appLetter\README.md"
    # $appTitle has XPath //*[@id="app$appNum"]/strong[2]
    if(-not (Test-Path -Path $README_md -ErrorAction Continue) -and ($HTML.getElementById("app$appNum").getElementsByTagName('strong').Count -lt 2)){
        continue
    }
    $appTitle = (Get-Culture).TextInfo.ToTitleCase($HTML.getElementById("app$appNum").getElementsByTagName('strong')[1].innerHTML.ToLowerInvariant())
    $outStr = Out-String -InputObject ("<H1>" + $appTitle + "</H1>`n" | pandoc @("--from=HTML", "--to=markdown_mmd+backtick_code_blocks+fenced_code_blocks+autolink_bare_uris"))
    $outStr = @"


$outStr

"@;

    if ($TESTING) {
        $tempFile = New-TemporaryFile
        Out-File -InputObject $outStr -FilePath  $tempFile -Encoding utf8
        Out-File -FilePath $tempFile -Encoding utf8 -Append -InputObject ($HTML.ie9_body | pandoc @("--from=HTML", "--to=markdown_mmd+backtick_code_blocks+fenced_code_blocks+autolink_bare_uris"))
        #Get-Content $README_md | Out-File -FilePath $tempFile -Append

        Move-Item -Path $tempFile -Destination $README_md -Force

    }
    else {
        Out-File -InputObject $outStr -FilePath  $README_md -Append -Encoding utf8
    }
}